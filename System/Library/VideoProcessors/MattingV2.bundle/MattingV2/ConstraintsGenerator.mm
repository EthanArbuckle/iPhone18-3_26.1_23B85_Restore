@interface ConstraintsGenerator
- (ConstraintsGenerator)initWithMetalContext:(id)context;
- (int)encodeToCommandBuffer:(id)buffer segmentationTexture:(id)texture constraintsTexture:(id)constraintsTexture config:(id *)config;
- (int)prepareForConfiguration:(id *)configuration;
@end

@implementation ConstraintsGenerator

- (ConstraintsGenerator)initWithMetalContext:(id)context
{
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = ConstraintsGenerator;
  v6 = [(ConstraintsGenerator *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metalContext, context);
    v10 = objc_msgSend_device(contextCopy, v8, v9);
    device = v7->_device;
    v7->_device = v10;

    v13 = objc_msgSend_computePipelineStateFor_constants_(v7->_metalContext, v12, @"assembleConstraints", 0);
    assembleConstraintsKernel = v7->_assembleConstraintsKernel;
    v7->_assembleConstraintsKernel = v13;

    v15 = v7;
    if (!v7->_assembleConstraintsKernel)
    {
      sub_2957E0B8C();
      v15 = 0;
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (int)encodeToCommandBuffer:(id)buffer segmentationTexture:(id)texture constraintsTexture:(id)constraintsTexture config:(id *)config
{
  bufferCopy = buffer;
  textureCopy = texture;
  constraintsTextureCopy = constraintsTexture;
  v54 = *&config->var0;
  LODWORD(v55) = config->var4;
  v14 = objc_msgSend_prepareForConfiguration_(self, v13, &v54);
  if (v14)
  {
    v51 = v14;
    sub_2957E0BEC();
    goto LABEL_5;
  }

  v17 = objc_msgSend_width(constraintsTextureCopy, v15, v16);
  if (v17 != objc_msgSend_width(textureCopy, v18, v19))
  {
    sub_2957E0C50();
LABEL_9:
    v51 = -12780;
    goto LABEL_5;
  }

  v22 = objc_msgSend_height(constraintsTextureCopy, v20, v21);
  if (v22 != objc_msgSend_height(textureCopy, v23, v24))
  {
    sub_2957E0CB0();
    goto LABEL_9;
  }

  objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(self->_fgThresholdFilter, v25, bufferCopy, textureCopy, self->_tmpSegmentation);
  objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(self->_erosionFilter, v26, bufferCopy, self->_tmpSegmentation, self->_fgErodedSegmentation);
  objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(self->_bgThresholdFilter, v27, bufferCopy, textureCopy, self->_tmpSegmentation);
  objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(self->_erosionFilter, v28, bufferCopy, self->_tmpSegmentation, self->_bgErodedSegmentation);
  v31 = objc_msgSend_computeCommandEncoder(bufferCopy, v29, v30);
  objc_msgSend_setComputePipelineState_(v31, v32, self->_assembleConstraintsKernel);
  objc_msgSend_setTexture_atIndex_(v31, v33, self->_fgErodedSegmentation, 0);
  objc_msgSend_setTexture_atIndex_(v31, v34, self->_bgErodedSegmentation, 1);
  objc_msgSend_setTexture_atIndex_(v31, v35, constraintsTextureCopy, 2);
  v38 = objc_msgSend_threadExecutionWidth(self->_assembleConstraintsKernel, v36, v37);
  v41 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_assembleConstraintsKernel, v39, v40) / v38;
  v44 = objc_msgSend_width(constraintsTextureCopy, v42, v43);
  v47 = objc_msgSend_height(constraintsTextureCopy, v45, v46);
  *&v54 = v44;
  *(&v54 + 1) = v47;
  v55 = 1;
  v53[0] = v38;
  v53[1] = v41;
  v53[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v31, v48, &v54, v53);
  objc_msgSend_endEncoding(v31, v49, v50);

  v51 = 0;
LABEL_5:

  return v51;
}

- (int)prepareForConfiguration:(id *)configuration
{
  v5 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], a2, 10, configuration->var0, configuration->var1, 0);
  objc_msgSend_setUsage_(v5, v6, 3);
  fgErodedSegmentation = self->_fgErodedSegmentation;
  if (!fgErodedSegmentation || objc_msgSend_width(fgErodedSegmentation, v7, v8) != configuration->var0 || objc_msgSend_height(self->_fgErodedSegmentation, v7, v10) != configuration->var1)
  {
    v12 = objc_msgSend_newTextureWithDescriptor_(self->_device, v7, v5);
    v13 = self->_fgErodedSegmentation;
    self->_fgErodedSegmentation = v12;
  }

  if (!self->_fgErodedSegmentation)
  {
    sub_2957E0EF0();
LABEL_37:
    v60 = -12786;
    goto LABEL_30;
  }

  bgErodedSegmentation = self->_bgErodedSegmentation;
  if (!bgErodedSegmentation || objc_msgSend_width(bgErodedSegmentation, v7, v11) != configuration->var0 || objc_msgSend_height(self->_bgErodedSegmentation, v7, v15) != configuration->var1)
  {
    v17 = objc_msgSend_newTextureWithDescriptor_(self->_device, v7, v5);
    v18 = self->_bgErodedSegmentation;
    self->_bgErodedSegmentation = v17;
  }

  if (!self->_bgErodedSegmentation)
  {
    sub_2957E0E90();
    goto LABEL_37;
  }

  tmpSegmentation = self->_tmpSegmentation;
  if (!tmpSegmentation || objc_msgSend_width(tmpSegmentation, v7, v16) != configuration->var0 || objc_msgSend_height(self->_tmpSegmentation, v7, v20) != configuration->var1)
  {
    v22 = objc_msgSend_newTextureWithDescriptor_(self->_device, v7, v5);
    v23 = self->_tmpSegmentation;
    self->_tmpSegmentation = v22;
  }

  if (!self->_tmpSegmentation)
  {
    sub_2957E0E30();
    goto LABEL_37;
  }

  fgThresholdFilter = self->_fgThresholdFilter;
  if (!fgThresholdFilter || (objc_msgSend_thresholdValue(fgThresholdFilter, v7, v21), v27 != configuration->var2))
  {
    v28 = objc_alloc(MEMORY[0x29EDBB808]);
    *&v29 = configuration->var2;
    LODWORD(v30) = 1.0;
    v32 = objc_msgSend_initWithDevice_thresholdValue_maximumValue_linearGrayColorTransform_(v28, v31, self->_device, 0, v29, v30);
    v33 = self->_fgThresholdFilter;
    self->_fgThresholdFilter = v32;
  }

  if (!self->_fgThresholdFilter)
  {
    sub_2957E0DD0();
    goto LABEL_37;
  }

  bgThresholdFilter = self->_bgThresholdFilter;
  if (!bgThresholdFilter || (objc_msgSend_thresholdValue(bgThresholdFilter, v25, v26), v37 != configuration->var3))
  {
    v38 = objc_alloc(MEMORY[0x29EDBB810]);
    *&v39 = configuration->var3;
    LODWORD(v40) = 1.0;
    v42 = objc_msgSend_initWithDevice_thresholdValue_maximumValue_linearGrayColorTransform_(v38, v41, self->_device, 0, v39, v40);
    v43 = self->_bgThresholdFilter;
    self->_bgThresholdFilter = v42;
  }

  if (!self->_bgThresholdFilter)
  {
    sub_2957E0D70();
    goto LABEL_37;
  }

  erosionFilter = self->_erosionFilter;
  if (!erosionFilter || objc_msgSend_kernelWidth(erosionFilter, v35, v36) != configuration->var4 || objc_msgSend_kernelHeight(self->_erosionFilter, v45, v46) != configuration->var4)
  {
    v49 = objc_alloc(MEMORY[0x29EDBB7D8]);
    v51 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_(v49, v50, self->_device, configuration->var4, configuration->var4);
    v52 = self->_erosionFilter;
    self->_erosionFilter = v51;

    objc_msgSend_setEdgeMode_(self->_erosionFilter, v53, 0);
  }

  if (!self->_erosionFilter)
  {
    sub_2957E0D10();
    goto LABEL_37;
  }

  v54 = objc_msgSend_allocatedSize(self->_fgErodedSegmentation, v47, v48);
  v57 = objc_msgSend_allocatedSize(self->_bgErodedSegmentation, v55, v56) + v54;
  v60 = 0;
  self->_preallocatedSize = v57 + objc_msgSend_allocatedSize(self->_tmpSegmentation, v58, v59);
LABEL_30:

  return v60;
}

@end