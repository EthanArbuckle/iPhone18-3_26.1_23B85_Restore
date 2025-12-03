@interface FigMatting
- ($55C9923F75B8441B2F861846195B697A)config;
- (CGRect)syntheticFocusRectangle;
- (FigMatting)initWithCommandQueue:(id)queue;
- (id)_createTextureOfSize:(CGSize)size withFormat:(unint64_t)format;
- (id)enabledOutputArray;
- (int)_allocateResources;
- (int)_compileShaders;
- (int)_prewarmMPSKernels;
- (int)prewarmWithTuningParameters:(id)parameters;
- (int)process;
- (int)purgeResources;
- (int)resetState;
- (int)validateAndBindInputsAndOutputs;
- (void)dealloc;
- (void)encodeAddTexturesToCommandBuffer:(id)buffer sourceTextureA:(id)a sourceTextureB:(id)b destinationTexture:(id)texture thresholdBeginValue:(float)value thresholdEndValue:(float)endValue;
- (void)encodeComposeRGBAGuideToCommandBuffer:(id)buffer rgbTexture:(id)texture alphaTexture:(id)alphaTexture destinationTexture:(id)destinationTexture rgbWeight:(float)weight;
- (void)encodePreprocessSkinToCommandBuffer:(id)buffer inputSkinTexture:(id)texture faceNonSkinTextures:(id)textures outputSkinTexture:(id)skinTexture;
- (void)setConfig:(id *)config;
- (void)setOptions:(id)options;
@end

@implementation FigMatting

- (FigMatting)initWithCommandQueue:(id)queue
{
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = FigMatting;
  v5 = [(FigMatting *)&v18 init];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (v5)
  {
    v6 = MEMORY[0x29EDB9F48];
    v7 = objc_opt_class();
    v9 = objc_msgSend_bundleForClass_(v6, v8, v7);
    v10 = objc_alloc(MEMORY[0x29EDC0A40]);
    inited = objc_msgSend_initWithbundle_andOptionalCommandQueue_(v10, v11, v9, queueCopy);
    metalContext = v5->_metalContext;
    v5->_metalContext = inited;

    if (!v5->_metalContext)
    {
      sub_2957E1A04(v9);
      v16 = 0;
      goto LABEL_5;
    }

    objc_msgSend_resetState(v5, v14, v15);
  }

  v16 = v5;
LABEL_5:

  return v16;
}

- (int)prewarmWithTuningParameters:(id)parameters
{
  parametersCopy = parameters;
  v6 = parametersCopy;
  if (parametersCopy)
  {
    v26 = *MEMORY[0x29EDC0298];
    v27 = parametersCopy;
    v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v5, &v27, &v26, 1);
    objc_msgSend_setOptions_(self, v8, v7);
  }

  v9 = [ConstraintsGenerator alloc];
  v11 = objc_msgSend_initWithMetalContext_(v9, v10, self->_metalContext);
  constraintsGenerator = self->_constraintsGenerator;
  self->_constraintsGenerator = v11;

  v13 = [FocalPlaneV2 alloc];
  v15 = objc_msgSend_initWithMetalContext_(v13, v14, self->_metalContext);
  focalPlane = self->_focalPlane;
  self->_focalPlane = v15;

  v19 = objc_msgSend_compileShaders(self->_focalPlane, v17, v18);
  v24 = objc_msgSend__compileShaders(self, v20, v21) | v19;
  if (!self->_isShaderHarvesting)
  {
    v24 |= objc_msgSend__prewarmMPSKernels(self, v22, v23);
  }

  return v24 != 0;
}

- (int)_prewarmMPSKernels
{
  LODWORD(v2) = 953267991;
  v4 = objc_msgSend_filterDescriptorWithWidth_height_arrayLength_kernelSpatialDiameter_kernelTemporalDiameter_epsilon_sourceChannels_guideChannels_(MEMORY[0x29EDBB800], a2, 16, 16, 1, 3, 1, 3, v2, 3);
  v5 = objc_alloc(MEMORY[0x29EDBB7F8]);
  v8 = objc_msgSend_device(self->_metalContext, v6, v7);
  v10 = objc_msgSend_initWithDevice_filterDescriptor_(v5, v9, v8, v4);

  objc_msgSend_compileKernels(v10, v11, v12);
  v15 = objc_msgSend__createTextureOfSize_withFormat_(self, v13, 25, 2.0, 2.0);
  if (!v15)
  {
    sub_2957E1E40();
    v60 = 0;
    v78 = 0;
    v79 = 0;
    v39 = 0;
    v30 = 0;
    v80 = 0;
    v81 = 0;
    v17 = 0;
LABEL_23:
    v24 = 0;
LABEL_24:
    v73 = -12786;
    goto LABEL_16;
  }

  v17 = objc_msgSend__createTextureOfSize_withFormat_(self, v14, 25, 2.0, 2.0);
  if (!v17)
  {
    sub_2957E1DDC();
LABEL_21:
    v60 = 0;
    v78 = 0;
    v79 = 0;
    v39 = 0;
    v30 = 0;
    v80 = 0;
    v81 = 0;
    goto LABEL_23;
  }

  v81 = objc_msgSend__createTextureOfSize_withFormat_(self, v16, 115, 2.0, 2.0);
  if (!v81)
  {
    sub_2957E1D78();
    goto LABEL_21;
  }

  v80 = objc_msgSend__createTextureOfSize_withFormat_(self, v18, 115, 2.0, 2.0);
  if (!v80)
  {
    sub_2957E1D14();
    v60 = 0;
    v78 = 0;
    v79 = 0;
    v39 = 0;
    v30 = 0;
    v80 = 0;
    goto LABEL_23;
  }

  v21 = objc_msgSend_commandQueue(self->_metalContext, v19, v20);
  v24 = objc_msgSend_commandBuffer(v21, v22, v23);

  if (!v24)
  {
    sub_2957E1C6C(&v82);
    v60 = 0;
    v78 = 0;
    v79 = 0;
    v39 = 0;
    v30 = 0;
    v73 = v82;
    goto LABEL_16;
  }

  MEMORY[0x29C252360](v24, 0.0);
  v25 = objc_alloc(MEMORY[0x29EDBB7D8]);
  v28 = objc_msgSend_device(self->_metalContext, v26, v27);
  v30 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_(v25, v29, v28, 1, 1);

  if (!v30)
  {
    sub_2957E1C08();
    v60 = 0;
    v78 = 0;
    v79 = 0;
    v39 = 0;
    goto LABEL_24;
  }

  objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(v30, v31, v24, v15, v17);
  v32 = objc_alloc(MEMORY[0x29EDBB808]);
  v35 = objc_msgSend_device(self->_metalContext, v33, v34);
  LODWORD(v36) = 1063675494;
  LODWORD(v37) = 1.0;
  v39 = objc_msgSend_initWithDevice_thresholdValue_maximumValue_linearGrayColorTransform_(v32, v38, v35, 0, v36, v37);

  if (!v39)
  {
    sub_2957E1BA4();
    v60 = 0;
    v78 = 0;
    v79 = 0;
    goto LABEL_24;
  }

  v77 = v39;
  objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(v39, v40, v24, v15, v17);
  v41 = objc_alloc(MEMORY[0x29EDBB810]);
  v44 = objc_msgSend_device(self->_metalContext, v42, v43);
  LODWORD(v45) = 1036831949;
  LODWORD(v46) = 1.0;
  v48 = objc_msgSend_initWithDevice_thresholdValue_maximumValue_linearGrayColorTransform_(v41, v47, v44, 0, v45, v46);

  if (v48)
  {
    v79 = v48;
    objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(v48, v49, v24, v15, v17);
    v50 = objc_alloc(MEMORY[0x29EDBB7E0]);
    v53 = objc_msgSend_device(self->_metalContext, v51, v52);
    v55 = objc_msgSend_initWithDevice_(v50, v54, v53);

    if (v55)
    {
      selfCopy = self;
      v75 = v30;
      v76 = v4;
      v78 = v55;
      v58 = v24;
      objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(v55, v56, v24, v15, v17);
      v59 = 0;
      v60 = 0;
      while (1)
      {
        v61 = v17;
        v62 = v60;
        v63 = dword_2957E76B8[v59];
        v64 = objc_alloc(MEMORY[0x29EDBB7E8]);
        v67 = objc_msgSend_device(selfCopy->_metalContext, v65, v66);
        v60 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_kernelDepth_(v64, v68, v67, (2 * v63) | 1u, (2 * v63) | 1u, 1);

        if (!v60)
        {
          break;
        }

        ++v59;
        v17 = v61;
        objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(v60, v69, v58, v15, v61);
        objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(v60, v70, v58, v81, v80);
        if (v59 == 3)
        {
          v73 = 0;
          v4 = v76;
          goto LABEL_14;
        }
      }

      sub_2957E1A78();
      v73 = -12786;
      v4 = v76;
      v17 = v61;
LABEL_14:
      v24 = v58;
      v30 = v75;
      goto LABEL_15;
    }

    sub_2957E1ADC();
    v60 = 0;
    v78 = 0;
  }

  else
  {
    sub_2957E1B40();
    v60 = 0;
    v78 = 0;
    v79 = 0;
  }

  v73 = -12786;
LABEL_15:
  v39 = v77;
LABEL_16:
  objc_msgSend_commit(v24, v71, v72);

  return v73;
}

- (void)dealloc
{
  copyTextureKernel = self->_copyTextureKernel;
  self->_copyTextureKernel = 0;

  bilinearScaleKernel = self->_bilinearScaleKernel;
  self->_bilinearScaleKernel = 0;

  composeRGBAGuideKernel = self->_composeRGBAGuideKernel;
  self->_composeRGBAGuideKernel = 0;

  addTexturesKernel = self->_addTexturesKernel;
  self->_addTexturesKernel = 0;

  excludeNonSkinKernel = self->_excludeNonSkinKernel;
  self->_excludeNonSkinKernel = 0;

  focalPlane = self->_focalPlane;
  self->_focalPlane = 0;

  objc_msgSend_purgeResources(self, v9, v10);
  v11.receiver = self;
  v11.super_class = FigMatting;
  [(FigMatting *)&v11 dealloc];
}

- (int)purgeResources
{
  image = self->_image;
  self->_image = 0;

  inputDepth = self->_inputDepth;
  self->_inputDepth = 0;

  preprocessedDisparity = self->_preprocessedDisparity;
  self->_preprocessedDisparity = 0;

  preprocessedSkin = self->_preprocessedSkin;
  self->_preprocessedSkin = 0;

  refinedDisparityGuide = self->_refinedDisparityGuide;
  self->_refinedDisparityGuide = 0;

  rgbdGuide = self->_rgbdGuide;
  self->_rgbdGuide = 0;

  sourceTextures = self->_sourceTextures;
  self->_sourceTextures = 0;

  destinationTextures = self->_destinationTextures;
  self->_destinationTextures = 0;

  constraintsTextures = self->_constraintsTextures;
  self->_constraintsTextures = 0;

  preallocatedFaceNonSkinTextures = self->_preallocatedFaceNonSkinTextures;
  self->_preallocatedFaceNonSkinTextures = 0;

  faceNonSkinTextures = self->_faceNonSkinTextures;
  self->_faceNonSkinTextures = 0;

  semanticOutputCollections = self->_semanticOutputCollections;
  self->_semanticOutputCollections = 0;

  semanticConfigurations = self->_semanticConfigurations;
  self->_semanticConfigurations = 0;

  refinedDisparityFilter = self->_refinedDisparityFilter;
  self->_refinedDisparityFilter = 0;

  return 0;
}

- (int)resetState
{
  v3 = *(MEMORY[0x29EDB90D8] + 16);
  self->_syntheticFocusRectangle.origin = *MEMORY[0x29EDB90D8];
  self->_syntheticFocusRectangle.size = v3;
  faceLandmarks = self->_faceLandmarks;
  self->_faceLandmarks = 0;

  v5 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  sourceTextures = self->_sourceTextures;
  self->_sourceTextures = v5;

  v7 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  destinationTextures = self->_destinationTextures;
  self->_destinationTextures = v7;

  v9 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  constraintsTextures = self->_constraintsTextures;
  self->_constraintsTextures = v9;

  v11 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  faceNonSkinTextures = self->_faceNonSkinTextures;
  self->_faceNonSkinTextures = v11;

  return 0;
}

- (id)enabledOutputArray
{
  v4 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  for (i = 0; i != 32; ++i)
  {
    v6 = (1 << i);
    if ((self->_config.enabledOutputs & v6) != 0)
    {
      v7 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v3, v6);
      objc_msgSend_addObject_(v4, v8, v7);
    }
  }

  v9 = objc_alloc(MEMORY[0x29EDB8D80]);
  v11 = objc_msgSend_initWithArray_(v9, v10, v4);

  return v11;
}

- (int)validateAndBindInputsAndOutputs
{
  imagePixelBuffer = self->_imagePixelBuffer;
  if (!imagePixelBuffer)
  {
    sub_2957E325C();
    return 1;
  }

  if (CVPixelBufferGetPixelFormatType(imagePixelBuffer) != 1111970369 && CVPixelBufferGetPixelFormatType(self->_imagePixelBuffer) != 875704422 && CVPixelBufferGetPixelFormatType(self->_imagePixelBuffer) != 641230384 && CVPixelBufferGetPixelFormatType(self->_imagePixelBuffer) != 2084070960 && CVPixelBufferGetPixelFormatType(self->_imagePixelBuffer) != 792225328 && CVPixelBufferGetPixelFormatType(self->_imagePixelBuffer) != 758670896)
  {
    sub_2957E1F0C();
    return 1;
  }

  v4 = [Texture2DWrapper alloc];
  v6 = objc_msgSend_initWithFigMetalContext_pixelBuffer_usage_(v4, v5, self->_metalContext, self->_imagePixelBuffer, 17);
  image = self->_image;
  self->_image = v6;

  if (!self->_image)
  {
    sub_2957E31F8();
    return 2;
  }

  inputDepthPixelBuffer = self->_inputDepthPixelBuffer;
  if (!inputDepthPixelBuffer)
  {
    goto LABEL_12;
  }

  if (CVPixelBufferGetPixelFormatType(inputDepthPixelBuffer) != 1751410032)
  {
    sub_2957E1F70();
    return 1;
  }

  v10 = [Texture2DWrapper alloc];
  v12 = objc_msgSend_initWithFigMetalContext_pixelBuffer_usage_(v10, v11, self->_metalContext, self->_inputDepthPixelBuffer, 17);
  inputDepth = self->_inputDepth;
  self->_inputDepth = v12;

  if (!self->_inputDepth)
  {
    sub_2957E1FD4();
    return 2;
  }

LABEL_12:
  if (!objc_msgSend_outputEnabled_(self, v8, 1))
  {
    goto LABEL_22;
  }

  if (self->_disparityRefinementVersion <= 0)
  {
    sub_2957E3194();
    return 1;
  }

  if ((objc_msgSend_outputEnabled_(self, v14, 2) & 1) == 0)
  {
    sub_2957E2038();
    return 1;
  }

  inputDisparityPixelBuffer = self->_inputDisparityPixelBuffer;
  if (!inputDisparityPixelBuffer)
  {
    sub_2957E3130();
    return 1;
  }

  if (CVPixelBufferGetPixelFormatType(inputDisparityPixelBuffer) != 1751411059)
  {
    sub_2957E209C();
    return 1;
  }

  v16 = [Texture2DWrapper alloc];
  v18 = objc_msgSend_initWithFigMetalContext_pixelBuffer_usage_(v16, v17, self->_metalContext, self->_inputDisparityPixelBuffer, 17);
  if (!v18)
  {
    sub_2957E30CC();
LABEL_118:

    return 1;
  }

  outputRefinedDisparityPixelBuffer = self->_outputRefinedDisparityPixelBuffer;
  if (!outputRefinedDisparityPixelBuffer)
  {
    sub_2957E3068();
    goto LABEL_118;
  }

  if (CVPixelBufferGetPixelFormatType(outputRefinedDisparityPixelBuffer) != 1751411059)
  {
    sub_2957E2100();
    goto LABEL_118;
  }

  v20 = [Texture2DWrapper alloc];
  v22 = objc_msgSend_initWithFigMetalContext_pixelBuffer_usage_(v20, v21, self->_metalContext, self->_outputRefinedDisparityPixelBuffer, 23);
  if (!v22)
  {
    sub_2957E2FEC(v18);
    return 1;
  }

  v24 = v22;
  objc_msgSend_setObject_forKeyedSubscript_(self->_sourceTextures, v23, v18, &unk_2A1CA7F28);
  objc_msgSend_setObject_forKeyedSubscript_(self->_destinationTextures, v25, v24, &unk_2A1CA7F28);

LABEL_22:
  if (!objc_msgSend_outputEnabled_(self, v14, 2))
  {
    goto LABEL_31;
  }

  inputSegmentationPixelBuffer = self->_inputSegmentationPixelBuffer;
  if (!inputSegmentationPixelBuffer)
  {
    sub_2957E2F88();
    return 1;
  }

  if (CVPixelBufferGetPixelFormatType(inputSegmentationPixelBuffer) != 1278226536 && CVPixelBufferGetPixelFormatType(self->_inputSegmentationPixelBuffer) != 1278226534)
  {
    sub_2957E2164();
    return 1;
  }

  v28 = [Texture2DWrapper alloc];
  v18 = objc_msgSend_initWithFigMetalContext_pixelBuffer_usage_(v28, v29, self->_metalContext, self->_inputSegmentationPixelBuffer, 17);
  if (!v18)
  {
    sub_2957E2F24();
    goto LABEL_118;
  }

  outputMattePixelBuffer = self->_outputMattePixelBuffer;
  if (!outputMattePixelBuffer)
  {
    sub_2957E2EC0();
    goto LABEL_118;
  }

  if (CVPixelBufferGetPixelFormatType(outputMattePixelBuffer) != 1278226488)
  {
    sub_2957E21C8();
    goto LABEL_118;
  }

  v31 = [Texture2DWrapper alloc];
  v33 = objc_msgSend_initWithFigMetalContext_pixelBuffer_usage_(v31, v32, self->_metalContext, self->_outputMattePixelBuffer, 23);
  if (!v33)
  {
    sub_2957E2E44(v18);
    return 1;
  }

  v35 = v33;
  objc_msgSend_setObject_forKeyedSubscript_(self->_sourceTextures, v34, v18, &unk_2A1CA7F40);
  objc_msgSend_setObject_forKeyedSubscript_(self->_destinationTextures, v36, v35, &unk_2A1CA7F40);

LABEL_31:
  if (!objc_msgSend_outputEnabled_(self, v26, 4))
  {
    goto LABEL_39;
  }

  inputSemanticsHairPixelBuffer = self->_inputSemanticsHairPixelBuffer;
  if (!inputSemanticsHairPixelBuffer)
  {
    sub_2957E2DE0();
    return 1;
  }

  if (CVPixelBufferGetPixelFormatType(inputSemanticsHairPixelBuffer) != 1278226536)
  {
    sub_2957E222C();
    return 1;
  }

  v39 = [Texture2DWrapper alloc];
  v18 = objc_msgSend_initWithFigMetalContext_pixelBuffer_usage_(v39, v40, self->_metalContext, self->_inputSemanticsHairPixelBuffer, 17);
  if (!v18)
  {
    sub_2957E2D7C();
    goto LABEL_118;
  }

  outputSemanticsHairPixelBuffer = self->_outputSemanticsHairPixelBuffer;
  if (!outputSemanticsHairPixelBuffer)
  {
    sub_2957E2D18();
    goto LABEL_118;
  }

  if (CVPixelBufferGetPixelFormatType(outputSemanticsHairPixelBuffer) != 1278226488)
  {
    sub_2957E2290();
    goto LABEL_118;
  }

  v42 = [Texture2DWrapper alloc];
  v44 = objc_msgSend_initWithFigMetalContext_pixelBuffer_usage_(v42, v43, self->_metalContext, self->_outputSemanticsHairPixelBuffer, 23);
  if (!v44)
  {
    sub_2957E2C9C(v18);
    return 1;
  }

  v46 = v44;
  objc_msgSend_setObject_forKeyedSubscript_(self->_sourceTextures, v45, v18, &unk_2A1CA7F58);
  objc_msgSend_setObject_forKeyedSubscript_(self->_destinationTextures, v47, v46, &unk_2A1CA7F58);

LABEL_39:
  if (!objc_msgSend_outputEnabled_(self, v37, 8))
  {
    goto LABEL_47;
  }

  inputSemanticsSkinPixelBuffer = self->_inputSemanticsSkinPixelBuffer;
  if (!inputSemanticsSkinPixelBuffer)
  {
    sub_2957E2C38();
    return 1;
  }

  if (CVPixelBufferGetPixelFormatType(inputSemanticsSkinPixelBuffer) != 1278226536)
  {
    sub_2957E22F4();
    return 1;
  }

  v50 = [Texture2DWrapper alloc];
  v18 = objc_msgSend_initWithFigMetalContext_pixelBuffer_usage_(v50, v51, self->_metalContext, self->_inputSemanticsSkinPixelBuffer, 17);
  if (!v18)
  {
    sub_2957E2BD4();
    goto LABEL_118;
  }

  outputSemanticsSkinPixelBuffer = self->_outputSemanticsSkinPixelBuffer;
  if (!outputSemanticsSkinPixelBuffer)
  {
    sub_2957E2B70();
    goto LABEL_118;
  }

  if (CVPixelBufferGetPixelFormatType(outputSemanticsSkinPixelBuffer) != 1278226488)
  {
    sub_2957E2358();
    goto LABEL_118;
  }

  v53 = [Texture2DWrapper alloc];
  v55 = objc_msgSend_initWithFigMetalContext_pixelBuffer_usage_(v53, v54, self->_metalContext, self->_outputSemanticsSkinPixelBuffer, 23);
  if (!v55)
  {
    sub_2957E2AF4(v18);
    return 1;
  }

  v57 = v55;
  objc_msgSend_setObject_forKeyedSubscript_(self->_sourceTextures, v56, v18, &unk_2A1CA7F70);
  objc_msgSend_setObject_forKeyedSubscript_(self->_destinationTextures, v58, v57, &unk_2A1CA7F70);

LABEL_47:
  if (!objc_msgSend_outputEnabled_(self, v48, 16))
  {
    goto LABEL_55;
  }

  inputSemanticsTeethPixelBuffer = self->_inputSemanticsTeethPixelBuffer;
  if (!inputSemanticsTeethPixelBuffer)
  {
    sub_2957E2A90();
    return 1;
  }

  if (CVPixelBufferGetPixelFormatType(inputSemanticsTeethPixelBuffer) != 1278226536)
  {
    sub_2957E23BC();
    return 1;
  }

  v61 = [Texture2DWrapper alloc];
  v18 = objc_msgSend_initWithFigMetalContext_pixelBuffer_usage_(v61, v62, self->_metalContext, self->_inputSemanticsTeethPixelBuffer, 17);
  if (!v18)
  {
    sub_2957E2A2C();
    goto LABEL_118;
  }

  outputSemanticsTeethPixelBuffer = self->_outputSemanticsTeethPixelBuffer;
  if (!outputSemanticsTeethPixelBuffer)
  {
    sub_2957E29C8();
    goto LABEL_118;
  }

  if (CVPixelBufferGetPixelFormatType(outputSemanticsTeethPixelBuffer) != 1278226488)
  {
    sub_2957E2420();
    goto LABEL_118;
  }

  v64 = [Texture2DWrapper alloc];
  v66 = objc_msgSend_initWithFigMetalContext_pixelBuffer_usage_(v64, v65, self->_metalContext, self->_outputSemanticsTeethPixelBuffer, 23);
  if (!v66)
  {
    sub_2957E294C(v18);
    return 1;
  }

  v68 = v66;
  objc_msgSend_setObject_forKeyedSubscript_(self->_sourceTextures, v67, v18, &unk_2A1CA7F88);
  objc_msgSend_setObject_forKeyedSubscript_(self->_destinationTextures, v69, v68, &unk_2A1CA7F88);

LABEL_55:
  if (!objc_msgSend_outputEnabled_(self, v59, 32))
  {
    goto LABEL_63;
  }

  inputSemanticsGlassesPixelBuffer = self->_inputSemanticsGlassesPixelBuffer;
  if (!inputSemanticsGlassesPixelBuffer)
  {
    sub_2957E28E8();
    return 1;
  }

  if (CVPixelBufferGetPixelFormatType(inputSemanticsGlassesPixelBuffer) != 1278226536)
  {
    sub_2957E2484();
    return 1;
  }

  v72 = [Texture2DWrapper alloc];
  v18 = objc_msgSend_initWithFigMetalContext_pixelBuffer_usage_(v72, v73, self->_metalContext, self->_inputSemanticsGlassesPixelBuffer, 17);
  if (!v18)
  {
    sub_2957E2884();
    goto LABEL_118;
  }

  outputSemanticsGlassesPixelBuffer = self->_outputSemanticsGlassesPixelBuffer;
  if (!outputSemanticsGlassesPixelBuffer)
  {
    sub_2957E2820();
    goto LABEL_118;
  }

  if (CVPixelBufferGetPixelFormatType(outputSemanticsGlassesPixelBuffer) != 1278226488)
  {
    sub_2957E24E8();
    goto LABEL_118;
  }

  v75 = [Texture2DWrapper alloc];
  v77 = objc_msgSend_initWithFigMetalContext_pixelBuffer_usage_(v75, v76, self->_metalContext, self->_outputSemanticsGlassesPixelBuffer, 23);
  if (!v77)
  {
    sub_2957E27A4(v18);
    return 1;
  }

  v79 = v77;
  objc_msgSend_setObject_forKeyedSubscript_(self->_sourceTextures, v78, v18, &unk_2A1CA7FA0);
  objc_msgSend_setObject_forKeyedSubscript_(self->_destinationTextures, v80, v79, &unk_2A1CA7FA0);

LABEL_63:
  if (!objc_msgSend_outputEnabled_(self, v70, 64))
  {
    return 0;
  }

  inputSemanticsSkyPixelBuffer = self->_inputSemanticsSkyPixelBuffer;
  if (!inputSemanticsSkyPixelBuffer)
  {
    sub_2957E2740();
    return 1;
  }

  if (CVPixelBufferGetPixelFormatType(inputSemanticsSkyPixelBuffer) != 1278226536)
  {
    sub_2957E254C();
    return 1;
  }

  v82 = [Texture2DWrapper alloc];
  v84 = objc_msgSend_initWithFigMetalContext_pixelBuffer_usage_(v82, v83, self->_metalContext, self->_inputSemanticsSkyPixelBuffer, 17);
  if (v84)
  {
    outputSemanticsSkyPixelBuffer = self->_outputSemanticsSkyPixelBuffer;
    if (outputSemanticsSkyPixelBuffer)
    {
      if (CVPixelBufferGetPixelFormatType(outputSemanticsSkyPixelBuffer) == 1278226488)
      {
        v86 = [Texture2DWrapper alloc];
        v89 = objc_msgSend_initWithFigMetalContext_pixelBuffer_usage_(v86, v87, self->_metalContext, self->_outputSemanticsSkyPixelBuffer, 23);
        if (v89)
        {
          objc_msgSend_setObject_forKeyedSubscript_(self->_sourceTextures, v88, v84, &unk_2A1CA7FB8);
          objc_msgSend_setObject_forKeyedSubscript_(self->_destinationTextures, v90, v89, &unk_2A1CA7FB8);
          v91 = 0;
        }

        else
        {
          sub_2957E2614();
          v91 = 1;
        }

        goto LABEL_72;
      }

      sub_2957E25B0();
    }

    else
    {
      sub_2957E2678();
    }
  }

  else
  {
    sub_2957E26DC();
  }

  v91 = 1;
LABEL_72:

  return v91;
}

- (void)encodeAddTexturesToCommandBuffer:(id)buffer sourceTextureA:(id)a sourceTextureB:(id)b destinationTexture:(id)texture thresholdBeginValue:(float)value thresholdEndValue:(float)endValue
{
  textureCopy = texture;
  bCopy = b;
  aCopy = a;
  v17 = objc_msgSend_computeCommandEncoder(buffer, v15, v16);
  objc_msgSend_setComputePipelineState_(v17, v18, self->_addTexturesKernel);
  objc_msgSend_setTexture_atIndex_(v17, v19, aCopy, 0);

  objc_msgSend_setTexture_atIndex_(v17, v20, bCopy, 1);
  objc_msgSend_setTexture_atIndex_(v17, v21, textureCopy, 2);
  v42 = __PAIR64__(LODWORD(endValue), LODWORD(value));
  objc_msgSend_setBytes_length_atIndex_(v17, v22, &v42, 8, 0);
  v25 = objc_msgSend_threadExecutionWidth(self->_addTexturesKernel, v23, v24);
  v28 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_addTexturesKernel, v26, v27) / v25;
  v31 = objc_msgSend_width(textureCopy, v29, v30);
  v34 = objc_msgSend_height(textureCopy, v32, v33);

  v41[0] = v31;
  v41[1] = v34;
  v41[2] = 1;
  v40[0] = v25;
  v40[1] = v28;
  v40[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v17, v35, v41, v40);
  objc_msgSend_endEncoding(v17, v36, v37);
}

- (void)encodePreprocessSkinToCommandBuffer:(id)buffer inputSkinTexture:(id)texture faceNonSkinTextures:(id)textures outputSkinTexture:(id)skinTexture
{
  bufferCopy = buffer;
  textureCopy = texture;
  texturesCopy = textures;
  skinTextureCopy = skinTexture;
  v107 = bufferCopy;
  v16 = objc_msgSend_computeCommandEncoder(bufferCopy, v14, v15);
  objc_msgSend_setComputePipelineState_(v16, v17, self->_bilinearScaleKernel);
  v104 = textureCopy;
  objc_msgSend_setTexture_atIndex_(v16, v18, textureCopy, 0);
  objc_msgSend_setTexture_atIndex_(v16, v19, skinTextureCopy, 1);
  v22 = objc_msgSend_threadExecutionWidth(self->_bilinearScaleKernel, v20, v21);
  v25 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_bilinearScaleKernel, v23, v24) / v22;
  *&t2.a = objc_msgSend_width(skinTextureCopy, v26, v27);
  v30 = v16;
  *&t2.b = objc_msgSend_height(skinTextureCopy, v28, v29);
  *&t2.c = 1;
  *&t1.a = v22;
  *&t1.b = v25;
  *&t1.c = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v16, v31, &t2, &t1);
  objc_msgSend_endEncoding(v16, v32, v33);
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = objc_msgSend_allKeys(texturesCopy, v34, v35);
  v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v36, &v117, v116, 16);
  if (v112)
  {
    v111 = *v118;
    selfCopy = self;
    do
    {
      for (i = 0; i != v112; ++i)
      {
        if (*v118 != v111)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v117 + 1) + 8 * i);
        v40 = objc_msgSend_objectForKeyedSubscript_(texturesCopy, v37, v39);
        v43 = objc_msgSend_texture(v40, v41, v42);

        v46 = objc_msgSend_faceSegments(v39, v44, v45);

        if (v46)
        {
          v114 = v30;
          v49 = objc_msgSend_width(skinTextureCopy, v47, v48);
          v52 = objc_msgSend_height(skinTextureCopy, v50, v51);
          v55 = objc_msgSend_width(v43, v53, v54);
          v58 = objc_msgSend_height(v43, v56, v57);
          memset(&v115, 0, sizeof(v115));
          exifOrientation = self->_exifOrientation;
          v62 = objc_msgSend_faceSegments(v39, v60, v61);
          objc_msgSend_boundingBox(v62, v63, v64);
          v66 = v65;
          v113 = v67;
          v69 = v68;
          v71 = v70;
          v72 = *(MEMORY[0x29EDB90A0] + 16);
          *&v115.a = *MEMORY[0x29EDB90A0];
          *&v115.c = v72;
          *&v115.tx = *(MEMORY[0x29EDB90A0] + 32);
          t2.a = 1.0;
          t2.b = 0.0;
          t2.c = 0.0;
          *&t2.d = xmmword_2957E7660;
          t2.ty = v52;
          v109 = v72;
          v110 = *&v115.a;
          *&t1.a = *&v115.a;
          *&t1.c = v72;
          v108 = *&v115.tx;
          *&t1.tx = *&v115.tx;
          CGAffineTransformConcat(&v115, &t1, &t2);
          v158.origin.x = 0.0;
          v158.origin.y = 0.0;
          v158.size.width = v49;
          v158.size.height = v52;
          if (CGRectIsInfinite(v158))
          {
            *&t1.a = v110;
            *&t1.c = v109;
            *&t1.tx = v108;
          }

          else
          {
            t2.b = 0.0;
            t2.c = 0.0;
            t2.a = 1.0;
            t2.d = 1.0;
            t2.tx = 0.0;
            t2.ty = 0.0;
            v126 = 0;
            v127 = 0;
            v125 = 0xBFF0000000000000;
            v128 = 0x3FF0000000000000;
            v129 = v49;
            v130 = xmmword_2957E7670;
            v131 = 0;
            v132 = 0;
            v133 = 0xBFF0000000000000;
            v134 = v49;
            v135 = v52;
            v136 = 0x3FF0000000000000;
            v137 = 0;
            v138 = 0;
            v139 = xmmword_2957E7660;
            v140 = v52;
            v141 = xmmword_2957E7670;
            v142 = xmmword_2957E7660;
            v143 = v52;
            v144 = v49;
            v145 = xmmword_2957E7670;
            v146 = 0x3FF0000000000000;
            v147 = 0;
            v148 = 0;
            v149 = v49;
            v150 = xmmword_2957E7680;
            v152 = 0u;
            v153 = 0u;
            v151 = 0x3FF0000000000000;
            v154 = 0x3FF0000000000000;
            v155 = xmmword_2957E7660;
            v156 = v52;
            v157 = 0;
            if ((exifOrientation - 9) >= 0xFFFFFFF8)
            {
              v73 = exifOrientation - 1;
            }

            else
            {
              v73 = 0;
            }

            v74 = &t2 + v73;
            v75 = *&v74->a;
            v76 = *&v74->tx;
            *&t1.c = *&v74->c;
            *&t1.tx = v76;
            *&t1.a = v75;
          }

          v77 = v55;
          v78 = v58;
          v122 = v115;
          v121 = t1;
          CGAffineTransformConcat(&t2, &v122, &v121);
          v115 = t2;
          t2 = t1;
          v159.origin.x = 0.0;
          v159.origin.y = 0.0;
          v159.size.width = v49;
          v159.size.height = v52;
          v160 = CGRectApplyAffineTransform(v159, &t2);
          width = v160.size.width;
          height = v160.size.height;
          CGAffineTransformMakeTranslation(&v122, -(v160.size.width * (v66 + v69 * 0.5)), -(v160.size.height * (v113 + v71 * 0.5)));
          v121 = v115;
          CGAffineTransformConcat(&t2, &v121, &v122);
          v115 = t2;
          CGAffineTransformMakeScale(&v122, v77 / (v69 * width), v78 / (v71 * height));
          v121 = v115;
          CGAffineTransformConcat(&t2, &v121, &v122);
          v115 = t2;
          CGAffineTransformMakeTranslation(&v122, v77 * 0.5, v78 * 0.5);
          v121 = v115;
          CGAffineTransformConcat(&t2, &v121, &v122);
          v115 = t2;
          v122.a = 1.0;
          v122.b = 0.0;
          v122.c = 0.0;
          *&v122.d = xmmword_2957E7660;
          v122.ty = v78;
          v121 = t2;
          CGAffineTransformConcat(&t2, &v121, &v122);
          v115 = t2;

          t2.b = 0.0;
          *&t2.a = vcvt_f32_f64(*&v115.a);
          t2.d = 0.0;
          *&t2.c = vcvt_f32_f64(*&v115.c);
          *&t2.ty = 1065353216;
          *&t2.tx = vcvt_f32_f64(*&v115.tx);
          v83 = objc_msgSend_computeCommandEncoder(v107, v81, v82);

          self = selfCopy;
          objc_msgSend_setComputePipelineState_(v83, v84, selfCopy->_excludeNonSkinKernel);
          objc_msgSend_setTexture_atIndex_(v83, v85, skinTextureCopy, 0);
          objc_msgSend_setTexture_atIndex_(v83, v86, v43, 1);
          objc_msgSend_setTexture_atIndex_(v83, v87, skinTextureCopy, 2);
          objc_msgSend_setBytes_length_atIndex_(v83, v88, &t2, 48, 0);
          v91 = objc_msgSend_threadExecutionWidth(selfCopy->_excludeNonSkinKernel, v89, v90);
          v94 = objc_msgSend_maxTotalThreadsPerThreadgroup(selfCopy->_excludeNonSkinKernel, v92, v93) / v91;
          v97 = objc_msgSend_width(skinTextureCopy, v95, v96);
          v100 = objc_msgSend_height(skinTextureCopy, v98, v99);
          *&t1.a = v97;
          *&t1.b = v100;
          *&t1.c = 1;
          *&v122.a = v91;
          *&v122.b = v94;
          *&v122.c = 1;
          objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v83, v101, &t1, &v122);
          objc_msgSend_endEncoding(v83, v102, v103);
          v30 = v83;
        }
      }

      v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v37, &v117, v116, 16);
    }

    while (v112);
  }
}

- (void)encodeComposeRGBAGuideToCommandBuffer:(id)buffer rgbTexture:(id)texture alphaTexture:(id)alphaTexture destinationTexture:(id)destinationTexture rgbWeight:(float)weight
{
  weightCopy = weight;
  destinationTextureCopy = destinationTexture;
  alphaTextureCopy = alphaTexture;
  textureCopy = texture;
  v16 = objc_msgSend_computeCommandEncoder(buffer, v14, v15);
  objc_msgSend_setComputePipelineState_(v16, v17, self->_composeRGBAGuideKernel);
  objc_msgSend_setTexture_atIndex_(v16, v18, textureCopy, 0);

  objc_msgSend_setTexture_atIndex_(v16, v19, alphaTextureCopy, 1);
  objc_msgSend_setTexture_atIndex_(v16, v20, destinationTextureCopy, 2);
  objc_msgSend_setBytes_length_atIndex_(v16, v21, &weightCopy, 4, 0);
  v24 = objc_msgSend_threadExecutionWidth(self->_composeRGBAGuideKernel, v22, v23);
  v27 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_composeRGBAGuideKernel, v25, v26) / v24;
  v30 = objc_msgSend_width(destinationTextureCopy, v28, v29);
  v33 = objc_msgSend_height(destinationTextureCopy, v31, v32);

  v38[0] = v30;
  v38[1] = v33;
  v38[2] = 1;
  v37[0] = v24;
  v37[1] = v27;
  v37[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v16, v34, v38, v37);
  objc_msgSend_endEncoding(v16, v35, v36);
}

- (int)process
{
  selfCopy = self;
  v307 = objc_msgSend_FigMattingOutputToShortString_(FigMatting, a2, self->_config.enabledOutputs);
  v5 = objc_msgSend_validateAndBindInputsAndOutputs(selfCopy, v3, v4);
  if (v5)
  {
    v223 = v5;
    sub_2957E32C0();
LABEL_94:
    v224 = 0;
    goto LABEL_95;
  }

  v8 = objc_msgSend_commandQueue(selfCopy->_metalContext, v6, v7);
  v11 = objc_msgSend_commandBuffer(v8, v9, v10);

  if (v11)
  {
    p_rgbdGuide = &selfCopy->_rgbdGuide;
    if (selfCopy->_rgbdGuide)
    {
      v14 = objc_msgSend_texture(selfCopy->_image, v12, v13);
      v17 = objc_msgSend_texture(selfCopy->_inputDepth, v15, v16);
      v20 = objc_msgSend_texture(selfCopy->_rgbdGuide, v18, v19);
      objc_msgSend_encodeComposeRGBAGuideToCommandBuffer_rgbTexture_alphaTexture_destinationTexture_(selfCopy, v21, v11, v14, v17, v20);
    }

    objc_msgSend_removeAllObjects(selfCopy->_faceNonSkinTextures, v12, v13);
    v335 = selfCopy;
    if (objc_msgSend_outputEnabled_(selfCopy, v22, 8))
    {
      faceSegments = selfCopy->_faceSegments;
      if (faceSegments)
      {
        if (objc_msgSend_count(faceSegments, v23, v24) && objc_msgSend_count(selfCopy->_faceSegments, v26, v27) <= selfCopy->_maximumNumberOfFacesToConsider)
        {
          v28 = selfCopy->_faceSegments;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = selfCopy->_faceSegments;
          }

          else
          {
            v29 = 0;
          }

          v329 = v11;
          v360 = 0u;
          v361 = 0u;
          v362 = 0u;
          v363 = 0u;
          obj = v29;
          v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v360, v359, 16);
          if (v31)
          {
            v34 = v31;
            v35 = 0;
            v36 = *v361;
            v309 = *v361;
            do
            {
              v37 = 0;
              v311 = v34;
              do
              {
                if (*v361 != v36)
                {
                  objc_enumerationMutation(obj);
                }

                v327 = *(*(&v360 + 1) + 8 * v37);
                v38 = objc_msgSend_faceSegments(v327, v32, v33);

                if (!v38)
                {
                  goto LABEL_50;
                }

                v357 = 0u;
                v358 = 0u;
                v355 = 0u;
                v356 = 0u;
                v331 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_2A1CA8120, v32, &v355, v354, 16);
                if (!v331)
                {
                  v43 = 0;
                  goto LABEL_49;
                }

                v315 = v37;
                v41 = 0;
                inited = 0;
                v43 = 0;
                v325 = *v356;
                v317 = v35;
                v320 = v35;
                do
                {
                  v44 = 0;
                  v333 = -v41;
                  v45 = v43;
                  do
                  {
                    if (*v356 != v325)
                    {
                      objc_enumerationMutation(&unk_2A1CA8120);
                    }

                    v46 = *(*(&v355 + 1) + 8 * v44);
                    v47 = objc_msgSend_faceSegments(v327, v39, v40);
                    v50 = objc_msgSend_unsignedIntegerValue(v46, v48, v49);
                    v53 = objc_msgSend_faceSegments(v327, v51, v52);
                    objc_msgSend_boundingBox(v53, v54, v55);
                    v353 = v45;
                    v57 = objc_msgSend_createProbabilityImageOfFaceSegment_region_normalize_error_(v47, v56, v50, 1, &v353);
                    v43 = v353;

                    if (v57)
                    {
                      if (inited)
                      {
                        goto LABEL_33;
                      }

                      Width = CVPixelBufferGetWidth(v57);
                      Height = CVPixelBufferGetHeight(v57);
                      if (objc_msgSend_count(selfCopy->_preallocatedFaceNonSkinTextures, v60, v61) <= v320)
                      {
                        goto LABEL_32;
                      }

                      inited = objc_msgSend_objectAtIndexedSubscript_(selfCopy->_preallocatedFaceNonSkinTextures, v62, v320);
                      v65 = objc_msgSend_texture(inited, v63, v64);
                      if (objc_msgSend_width(v65, v66, v67) == Width)
                      {
                        v70 = objc_msgSend_texture(inited, v68, v69);
                        v73 = objc_msgSend_height(v70, v71, v72);

                        selfCopy = v335;
                        if (v73 == Height)
                        {
                          if (!inited)
                          {
LABEL_32:
                            v74 = [Texture2DWrapper alloc];
                            inited = objc_msgSend_initNewTextureWithFigMetalContext_size_withFormat_usage_(v74, v75, selfCopy->_metalContext, 25, 23, Width, Height);
                          }

LABEL_33:
                          v76 = [Texture2DWrapper alloc];
                          v80 = objc_msgSend_initWithFigMetalContext_pixelBuffer_usage_textureArray_(v76, v77, selfCopy->_metalContext, v57, 23, 0);
                          v81 = v80;
                          if (!v80)
                          {
                            v82 = [Texture2DWrapper alloc];
                            v81 = objc_msgSend_initWithFigMetalContext_copyingPixelBuffer_usage_(v82, v83, selfCopy->_metalContext, v57, 23);
                            CFRelease(v57);
                          }

                          v86 = objc_msgSend_texture(v81, v78, v79);
                          if (v333 == v44)
                          {
                            v87 = 0;
                          }

                          else
                          {
                            v87 = objc_msgSend_texture(inited, v84, v85);
                            v323 = v87;
                          }

                          v88 = objc_msgSend_texture(inited, v84, v85);
                          FigGetCFPreferenceDoubleWithDefault();
                          v90 = v89;
                          FigGetCFPreferenceDoubleWithDefault();
                          *&v92 = v91;
                          *&v91 = v90;
                          objc_msgSend_encodeAddTexturesToCommandBuffer_sourceTextureA_sourceTextureB_destinationTexture_thresholdBeginValue_thresholdEndValue_(v335, v93, v329, v86, v87, v88, v91, v92);

                          if (v333 != v44)
                          {
                          }

                          if (v80)
                          {
                            v352[0] = MEMORY[0x29EDCA5F8];
                            v352[1] = 3221225472;
                            v352[2] = sub_2957D9C40;
                            v352[3] = &unk_29EDDA9F0;
                            v352[4] = v57;
                            objc_msgSend_addCompletedHandler_(v329, v94, v352);
                          }

                          selfCopy = v335;
                          goto LABEL_43;
                        }
                      }

                      else
                      {
                      }

                      goto LABEL_32;
                    }

LABEL_43:
                    ++v44;
                    v45 = v43;
                  }

                  while (v331 != v44);
                  v41 += v331;
                  v331 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_2A1CA8120, v39, &v355, v354, 16);
                }

                while (v331);
                if (inited)
                {
                  objc_msgSend_setObject_forKeyedSubscript_(selfCopy->_faceNonSkinTextures, v39, inited, v327);
                }

                v35 = v317;
                v36 = v309;
                v34 = v311;
                v37 = v315;
LABEL_49:

LABEL_50:
                ++v35;
                ++v37;
              }

              while (v37 != v34);
              v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v360, v359, 16);
            }

            while (v34);
          }

          v95 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_sourceTextures, v32, &unk_2A1CA7F70);
          v98 = objc_msgSend_texture(v95, v96, v97);
          faceNonSkinTextures = selfCopy->_faceNonSkinTextures;
          v102 = objc_msgSend_texture(selfCopy->_preprocessedSkin, v100, v101);
          objc_msgSend_encodePreprocessSkinToCommandBuffer_inputSkinTexture_faceNonSkinTextures_outputSkinTexture_(selfCopy, v103, v329, v98, faceNonSkinTextures, v102);

          v11 = v329;
          objc_msgSend_setObject_forKeyedSubscript_(selfCopy->_sourceTextures, v104, selfCopy->_preprocessedSkin, &unk_2A1CA7F70);
        }
      }
    }

    v105 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v106 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v107 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v348 = 0u;
    v349 = 0u;
    v350 = 0u;
    v351 = 0u;
    v318 = selfCopy->_semanticOutputCollections;
    v316 = objc_msgSend_countByEnumeratingWithState_objects_count_(v318, v108, &v348, v347, 16);
    if (v316)
    {
      v319 = *v349;
      p_image = &selfCopy->_image;
      v330 = v11;
      v324 = v106;
      v312 = &selfCopy->_image;
      while (2)
      {
        v112 = v11;
        v113 = 0;
        do
        {
          if (*v349 != v319)
          {
            objc_enumerationMutation(v318);
          }

          v114 = *(*(&v348 + 1) + 8 * v113);
          v115 = objc_msgSend_useDepthFilter(v114, v109, v110);
          v118 = p_rgbdGuide;
          if (!v115)
          {
            v118 = p_image;
          }

          v119 = objc_msgSend_texture(*v118, v116, v117);
          v122 = v119;
          v11 = v112;
          if (!v119)
          {
            sub_2957E339C();
LABEL_85:

            v223 = 0;
            v224 = 1;
            goto LABEL_95;
          }

          v321 = v113;
          v322 = v119;
          objc_msgSend_removeAllObjects(v105, v120, v121);
          objc_msgSend_removeAllObjects(v106, v123, v124);
          objc_msgSend_removeAllObjects(v107, v125, v126);
          v345 = 0u;
          v346 = 0u;
          v343 = 0u;
          v344 = 0u;
          v328 = objc_msgSend_semanticOutputs(v114, v127, v128);
          v334 = objc_msgSend_countByEnumeratingWithState_objects_count_(v328, v129, &v343, v342, 16);
          if (v334)
          {
            obja = v114;
            v131 = 0;
            v132 = *v344;
            v326 = *v344;
            while (2)
            {
              for (i = 0; i != v334; ++i)
              {
                if (*v344 != v132)
                {
                  objc_enumerationMutation(v328);
                }

                v134 = *(*(&v343 + 1) + 8 * i);
                v135 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_sourceTextures, v130, v134);
                v138 = objc_msgSend_texture(v135, v136, v137);
                objc_msgSend_addObject_(v105, v139, v138);

                v141 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_semanticConfigurations, v140, v134);
                LODWORD(v138) = objc_msgSend_constraintsEnabled(v141, v142, v143);

                if (v138)
                {
                  v146 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_constraintsTextures, v144, v134);
                  v149 = objc_msgSend_texture(v146, v147, v148);

                  v332 = objc_msgSend_width(v149, v150, v151);
                  v154 = objc_msgSend_height(v149, v152, v153);
                  v156 = objc_msgSend_objectForKeyedSubscript_(v335->_semanticConfigurations, v155, v134);
                  objc_msgSend_fgThresholdValue(v156, v157, v158);
                  v160 = v159;
                  v162 = objc_msgSend_objectForKeyedSubscript_(v335->_semanticConfigurations, v161, v134);
                  objc_msgSend_bgThresholdValue(v162, v163, v164);
                  v166 = v165;
                  objc_msgSend_objectForKeyedSubscript_(v335->_semanticConfigurations, v167, v134);
                  v169 = v168 = v105;
                  v172 = v107;
                  v173 = objc_msgSend_erosionKernelSize(v169, v170, v171);

                  constraintsGenerator = v335->_constraintsGenerator;
                  v176 = objc_msgSend_objectForKeyedSubscript_(v335->_sourceTextures, v175, v134);
                  v179 = objc_msgSend_texture(v176, v177, v178);
                  v339.i64[0] = __PAIR64__(v154, v332);
                  selfCopy = v335;
                  v339.i64[1] = __PAIR64__(v166, v160);
                  LODWORD(v340) = v173;
                  v107 = v172;
                  objc_msgSend_encodeToCommandBuffer_segmentationTexture_constraintsTexture_config_(constraintsGenerator, v180, v330, v179, v149, &v339);

                  v105 = v168;
                  v106 = v324;

                  v183 = objc_msgSend_unsignedIntValue(v134, v181, v182);
                  v185 = objc_msgSend_FigMattingOutputToShortString_(FigMatting, v184, v183);
                  v187 = objc_msgSend_objectForKeyedSubscript_(v335->_constraintsTextures, v186, v134);
                  v190 = objc_msgSend_texture(v187, v188, v189);
                  objc_msgSend_addObject_(v324, v191, v190);

                  v132 = v326;
                  v131 = 1;
                }

                else
                {
                  v149 = objc_msgSend_null(MEMORY[0x29EDB8E28], v144, v145);
                  objc_msgSend_addObject_(v106, v192, v149);
                }

                v194 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_destinationTextures, v193, v134);
                v197 = objc_msgSend_texture(v194, v195, v196);

                if (!v197)
                {
                  sub_2957E3328(v328);
                  v11 = v330;
                  v122 = v322;
                  goto LABEL_85;
                }

                v199 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_destinationTextures, v198, v134);
                v202 = objc_msgSend_texture(v199, v200, v201);
                objc_msgSend_addObject_(v107, v203, v202);
              }

              v334 = objc_msgSend_countByEnumeratingWithState_objects_count_(v328, v130, &v343, v342, 16);
              if (v334)
              {
                continue;
              }

              break;
            }

            if (v131)
            {
              v204 = v106;
            }

            else
            {
              v204 = 0;
            }

            v11 = v330;
            p_image = v312;
            v114 = obja;
          }

          else
          {
            v204 = 0;
          }

          v207 = objc_msgSend_spatioTemporalFilter(v114, v205, v206);
          v210 = objc_msgSend_iterations(v114, v208, v209);
          v213 = objc_msgSend_unsignedIntegerValue(v210, v211, v212);
          v112 = v11;
          objc_msgSend_encodeToCommandBuffer_sourceTextureArray_guidanceTexture_constraintsTextureArray_numberOfIterations_destinationTextureArray_(v207, v214, v11, v105, v322, v204, v213, v107);

          v113 = v321 + 1;
        }

        while (v321 + 1 != v316);
        v316 = objc_msgSend_countByEnumeratingWithState_objects_count_(v318, v109, &v348, v347, 16);
        if (v316)
        {
          continue;
        }

        break;
      }
    }

    if (!objc_msgSend_outputEnabled_(selfCopy, v215, 1) || !selfCopy->_refinedDisparityFilter || !selfCopy->_preprocessedDisparity)
    {
      goto LABEL_91;
    }

    v336 = v107;
    IsNull = CGRectIsNull(selfCopy->_syntheticFocusRectangle);
    focalPlane = selfCopy->_focalPlane;
    v310 = v105;
    v221 = v106;
    v222 = v11;
    if (IsNull)
    {
      LODWORD(v340) = 0;
      v339 = xmmword_2957E76C4;
    }

    else
    {
      v339 = vcvt_hight_f32_f64(vcvt_f32_f64(selfCopy->_syntheticFocusRectangle.origin), selfCopy->_syntheticFocusRectangle.size);
      LODWORD(v340) = 0;
    }

    objc_msgSend_setConfig_(focalPlane, v218, &v339);
    v225 = selfCopy->_focalPlane;
    v227 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_destinationTextures, v226, &unk_2A1CA7F40);
    v230 = objc_msgSend_texture(v227, v228, v229);
    v232 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_sourceTextures, v231, &unk_2A1CA7F28);
    v235 = objc_msgSend_texture(v232, v233, v234);
    v238 = objc_msgSend_texture(selfCopy->_preprocessedDisparity, v236, v237);
    v239 = *&selfCopy->_disparityRefinementConfig.preprocessingGamma;
    v339 = *&selfCopy->_disparityRefinementConfig.zeroShiftPercentile;
    v340 = v239;
    v341 = *&selfCopy->_disparityRefinementConfig.subsampling;
    LODWORD(v225) = objc_msgSend_encodeDisparityRefinementPreprocessingOn_alphaTexture_inputDisparityTexture_outputDisparityTexture_configuration_(v225, v240, v222, v230, v235, v238, &v339);

    if (!v225)
    {
      if (!selfCopy->_refinedDisparityGuide)
      {
        v243 = [Texture2DWrapper alloc];
        metalContext = selfCopy->_metalContext;
        v246 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_destinationTextures, v245, &unk_2A1CA7F28);
        v249 = objc_msgSend_texture(v246, v247, v248);
        v252 = objc_msgSend_width(v249, v250, v251);
        v254 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_destinationTextures, v253, &unk_2A1CA7F28);
        v257 = objc_msgSend_texture(v254, v255, v256);
        v260 = objc_msgSend_height(v257, v258, v259);
        v262 = objc_msgSend_initNewTextureWithFigMetalContext_size_withFormat_usage_(v243, v261, metalContext, 115, 23, v252, v260);
        refinedDisparityGuide = selfCopy->_refinedDisparityGuide;
        selfCopy->_refinedDisparityGuide = v262;
      }

      v264 = objc_msgSend_texture(selfCopy->_image, v241, v242);
      v266 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_destinationTextures, v265, &unk_2A1CA7F40);
      v269 = objc_msgSend_texture(v266, v267, v268);
      v272 = objc_msgSend_texture(selfCopy->_refinedDisparityGuide, v270, v271);
      *&v273 = selfCopy->_disparityRefinementConfig.rgbWeight;
      v274 = selfCopy;
      v275 = selfCopy;
      v276 = v222;
      objc_msgSend_encodeComposeRGBAGuideToCommandBuffer_rgbTexture_alphaTexture_destinationTexture_rgbWeight_(v274, v277, v222, v264, v269, v272, v273);

      refinedDisparityFilter = v275->_refinedDisparityFilter;
      v281 = objc_msgSend_texture(v275->_preprocessedDisparity, v279, v280);
      v338 = v281;
      v283 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v282, &v338, 1);
      v286 = objc_msgSend_texture(v275->_refinedDisparityGuide, v284, v285);
      iterations = v275->_disparityRefinementConfig.iterations;
      v289 = objc_msgSend_objectForKeyedSubscript_(v275->_destinationTextures, v288, &unk_2A1CA7F28);
      v292 = objc_msgSend_texture(v289, v290, v291);
      v337 = v292;
      v294 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v293, &v337, 1);
      v295 = iterations;
      v11 = v276;
      objc_msgSend_encodeToCommandBuffer_sourceTextureArray_guidanceTexture_constraintsTextureArray_numberOfIterations_destinationTextureArray_(refinedDisparityFilter, v296, v276, v283, v286, 0, v295, v294);

      v105 = v310;
      v106 = v221;
      v107 = v336;
LABEL_91:
      if (*MEMORY[0x29EDB9270])
      {
        v297 = objc_msgSend_commandQueue(v11, v216, v217);
        v300 = objc_msgSend_commandBuffer(v297, v298, v299);

        objc_msgSend_setLabel_(v300, v301, @"KTRACE_MTLCMDBUF");
        objc_msgSend_addCompletedHandler_(v300, v302, &unk_2A1CA6070);
        objc_msgSend_commit(v300, v303, v304);
        objc_msgSend_addCompletedHandler_(v11, v305, &unk_2A1CA6090);
      }

      objc_msgSend_commit(v11, v216, v217);

      v223 = 0;
      goto LABEL_94;
    }

    FigDebugAssert3();

    v224 = 1;
    v223 = 5;
  }

  else
  {
    sub_2957E3400(&v339);
    v223 = 0;
    v224 = v339.i8[0];
  }

LABEL_95:
  if (((v223 == 0) & v224) != 0)
  {
    v223 = 4;
  }

  return v223;
}

- (int)_allocateResources
{
  selfCopy = self;
  v4 = objc_msgSend_enabledOutputArray(self, a2, v2);
  v6 = objc_msgSend_FigMattingOutputToShortString_(FigMatting, v5, selfCopy->_config.enabledOutputs);
  v8 = v6;
  if (!selfCopy->_config.enabledOutputs)
  {
    sub_2957E35F4();
LABEL_62:
    objc_msgSend_purgeResources(selfCopy, v178, v179);
    v177 = -12786;
    goto LABEL_63;
  }

  v181 = v6;
  disparityTuningParameters = selfCopy->_disparityTuningParameters;
  v10 = *&selfCopy->_config.segmentationWidth;
  v205 = *&selfCopy->_config.inputImageWidth;
  v206 = v10;
  v11 = objc_msgSend_getSemanticConfigurationsFor_mattingConfiguration_(disparityTuningParameters, v7, v4, &v205);
  semanticConfigurations = selfCopy->_semanticConfigurations;
  selfCopy->_semanticConfigurations = v11;

  v13 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  semanticOutputCollections = selfCopy->_semanticOutputCollections;
  selfCopy->_semanticOutputCollections = v13;

  v203 = 0u;
  v204 = 0u;
  v201 = 0u;
  v202 = 0u;
  v182 = v4;
  obj = v4;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v201, v200, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v202;
    do
    {
      v20 = 0;
      v183 = v18;
      do
      {
        if (*v202 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v201 + 1) + 8 * v20);
        if ((objc_msgSend_isEqualToNumber_(v21, v17, &unk_2A1CA7F28) & 1) == 0)
        {
          v22 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_semanticConfigurations, v17, v21);
          v196 = 0u;
          v197 = 0u;
          v198 = 0u;
          v199 = 0u;
          v23 = selfCopy;
          v24 = selfCopy->_semanticOutputCollections;
          v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v196, v195, 16);
          if (v26)
          {
            v28 = v26;
            v29 = *v197;
            while (2)
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v197 != v29)
                {
                  objc_enumerationMutation(v24);
                }

                if (objc_msgSend_add_with_(*(*(&v196 + 1) + 8 * i), v27, v21, v22))
                {
                  selfCopy = v23;
                  goto LABEL_18;
                }
              }

              v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v196, v195, 16);
              if (v28)
              {
                continue;
              }

              break;
            }
          }

          v24 = objc_alloc_init(SemanticOutputCollection);
          objc_msgSend_add_with_(v24, v31, v21, v22);
          selfCopy = v23;
          objc_msgSend_addObject_(v23->_semanticOutputCollections, v32, v24);
LABEL_18:

          v18 = v183;
        }

        ++v20;
      }

      while (v20 != v18);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v201, v200, 16);
    }

    while (v18);
  }

  v193 = 0u;
  v194 = 0u;
  v191 = 0u;
  v192 = 0u;
  v33 = selfCopy->_semanticOutputCollections;
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v191, v190, 16);
  if (v35)
  {
    v38 = v35;
    v39 = 0;
    v40 = *v192;
    while (2)
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v192 != v40)
        {
          objc_enumerationMutation(v33);
        }

        v42 = *(*(&v191 + 1) + 8 * j);
        v43 = objc_msgSend_useDepthFilter(v42, v36, v37);
        Resources = objc_msgSend_allocateResources_(v42, v44, selfCopy->_metalContext);
        if (Resources)
        {
          sub_2957E34B0(Resources, v33);
          v4 = v182;
          goto LABEL_61;
        }

        v39 |= v43;
        v48 = objc_msgSend_spatioTemporalFilter(v42, v46, v47);
        objc_msgSend_preallocatedSize(v48, v49, v50);
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v191, v190, 16);
      if (v38)
      {
        continue;
      }

      break;
    }

    if (v39)
    {
      v52 = [Texture2DWrapper alloc];
      LODWORD(v53) = selfCopy->_config.inputImageWidth;
      LODWORD(v54) = selfCopy->_config.inputImageHeight;
      inited = objc_msgSend_initNewTextureWithFigMetalContext_size_withFormat_usage_(v52, v55, selfCopy->_metalContext, 115, 23, v53, v54);
      rgbdGuide = selfCopy->_rgbdGuide;
      selfCopy->_rgbdGuide = inited;

      v33 = objc_msgSend_texture(selfCopy->_rgbdGuide, v58, v59);
      objc_msgSend_allocatedSize(v33, v60, v61);
      goto LABEL_31;
    }
  }

  else
  {
LABEL_31:
  }

  if (objc_msgSend_outputEnabled_(selfCopy, v51, 1))
  {
    disparityRefinementVersion = selfCopy->_disparityRefinementVersion;
    if (disparityRefinementVersion >= 5)
    {
      disparityRefinementVersion = 0;
      selfCopy->_disparityRefinementVersion = 0;
    }

    v63 = (&unk_2957E76D8 + 48 * disparityRefinementVersion);
    *&selfCopy->_disparityRefinementConfig.zeroShiftPercentile = *v63;
    *&selfCopy->_disparityRefinementConfig.preprocessingGamma = v63[1];
    *&selfCopy->_disparityRefinementConfig.subsampling = v63[2];
    v64 = [FocalPlaneV2 alloc];
    v66 = objc_msgSend_initWithMetalContext_(v64, v65, selfCopy->_metalContext);
    focalPlane = selfCopy->_focalPlane;
    selfCopy->_focalPlane = v66;

    v70 = selfCopy->_focalPlane;
    if (!v70)
    {
      sub_2957E3590();
      v177 = 0;
      v8 = v181;
      v4 = v182;
      goto LABEL_63;
    }

    objc_msgSend_allocateResources(v70, v68, v69);
    v71 = [Texture2DWrapper alloc];
    LODWORD(v72) = selfCopy->_config.inputDisparityWidth;
    LODWORD(v73) = selfCopy->_config.inputDisparityHeight;
    v75 = objc_msgSend_initNewTextureWithFigMetalContext_size_withFormat_usage_(v71, v74, selfCopy->_metalContext, 25, 23, v72, v73);
    preprocessedDisparity = selfCopy->_preprocessedDisparity;
    selfCopy->_preprocessedDisparity = v75;

    v79 = objc_msgSend_texture(selfCopy->_preprocessedDisparity, v77, v78);
    objc_msgSend_allocatedSize(v79, v80, v81);

    subsampling = selfCopy->_disparityRefinementConfig.subsampling;
    v85 = selfCopy->_config.inputDisparityWidth / subsampling;
    if (v85 <= 1)
    {
      v86 = 1;
    }

    else
    {
      v86 = v85;
    }

    v87 = selfCopy->_config.inputDisparityHeight / subsampling;
    if (v87 <= 1)
    {
      v88 = 1;
    }

    else
    {
      v88 = v87;
    }

    *&v83 = selfCopy->_disparityRefinementConfig.epsilon;
    v89 = objc_msgSend_filterDescriptorWithWidth_height_arrayLength_kernelSpatialDiameter_kernelTemporalDiameter_epsilon_sourceChannels_guideChannels_preallocateIntermediates_(MEMORY[0x29EDBB800], v82, v86, v88, 1, (2 * selfCopy->_disparityRefinementConfig.radius) | 1, 1, 1, v83, 4, 1);
    v90 = objc_alloc(MEMORY[0x29EDBB7F8]);
    v93 = objc_msgSend_device(selfCopy->_metalContext, v91, v92);
    v95 = objc_msgSend_initWithDevice_filterDescriptor_(v90, v94, v93, v89);
    refinedDisparityFilter = selfCopy->_refinedDisparityFilter;
    selfCopy->_refinedDisparityFilter = v95;

    v97 = selfCopy->_refinedDisparityFilter;
    v100 = objc_msgSend_options(v97, v98, v99);
    objc_msgSend_setOptions_(v97, v101, v100 | 1);
    objc_msgSend_preallocatedSize(selfCopy->_refinedDisparityFilter, v102, v103);
  }

  v104 = [ConstraintsGenerator alloc];
  v106 = objc_msgSend_initWithMetalContext_(v104, v105, selfCopy->_metalContext);
  constraintsGenerator = selfCopy->_constraintsGenerator;
  selfCopy->_constraintsGenerator = v106;

  v108 = selfCopy->_constraintsGenerator;
  *&v205 = *&selfCopy->_config.segmentationWidth;
  *(&v205 + 1) = 0x3DCCCCCD3F666666;
  LODWORD(v206) = 1;
  objc_msgSend_prepareForConfiguration_(v108, v109, &v205);
  objc_msgSend_preallocatedSize(selfCopy->_constraintsGenerator, v110, v111);
  segmentationWidth = selfCopy->_config.segmentationWidth;
  segmentationHeight = selfCopy->_config.segmentationHeight;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v114 = obj;
  v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v114, v115, &v186, v185, 16);
  if (v116)
  {
    v118 = v116;
    v119 = segmentationWidth;
    v120 = *v187;
    do
    {
      for (k = 0; k != v118; ++k)
      {
        if (*v187 != v120)
        {
          objc_enumerationMutation(v114);
        }

        v122 = *(*(&v186 + 1) + 8 * k);
        v123 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_semanticConfigurations, v117, v122);
        v126 = objc_msgSend_constraintsEnabled(v123, v124, v125);

        if (v126)
        {
          v128 = objc_msgSend_unsignedIntegerValue(v122, v117, v127);
          v130 = objc_msgSend_FigMattingOutputToShortString_(FigMatting, v129, v128);
          v131 = [Texture2DWrapper alloc];
          v133 = objc_msgSend_initNewTextureWithFigMetalContext_size_withFormat_usage_(v131, v132, selfCopy->_metalContext, 10, 23, v119, segmentationHeight);
          objc_msgSend_setObject_forKeyedSubscript_(selfCopy->_constraintsTextures, v134, v133, v122);

          v136 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_constraintsTextures, v135, v122);
          v139 = objc_msgSend_texture(v136, v137, v138);
          objc_msgSend_allocatedSize(v139, v140, v141);
        }
      }

      v118 = objc_msgSend_countByEnumeratingWithState_objects_count_(v114, v117, &v186, v185, 16);
    }

    while (v118);
  }

  if (objc_msgSend_outputEnabled_(selfCopy, v142, 8))
  {
    v145 = 3;
    selfCopy->_maximumNumberOfFacesToConsider = 3;
    v146 = objc_alloc(MEMORY[0x29EDB8DE8]);
    v148 = objc_msgSend_initWithCapacity_(v146, v147, 3);
    preallocatedFaceNonSkinTextures = selfCopy->_preallocatedFaceNonSkinTextures;
    selfCopy->_preallocatedFaceNonSkinTextures = v148;

    do
    {
      v150 = [Texture2DWrapper alloc];
      v153 = objc_msgSend_initNewTextureWithFigMetalContext_size_withFormat_usage_textureArray_(v150, v151, selfCopy->_metalContext, 25, 23, 0, 256.0, 256.0);
      if (v153)
      {
        objc_msgSend_addObject_(selfCopy->_preallocatedFaceNonSkinTextures, v152, v153);
        v156 = objc_msgSend_texture(v153, v154, v155);
        objc_msgSend_allocatedSize(v156, v157, v158);
      }

      --v145;
    }

    while (v145);
    v160 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_semanticConfigurations, v159, &unk_2A1CA7F70);
    v163 = objc_msgSend_width(v160, v161, v162);

    v165 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_semanticConfigurations, v164, &unk_2A1CA7F70);
    LODWORD(v160) = objc_msgSend_height(v165, v166, v167);

    v168 = [Texture2DWrapper alloc];
    v170 = objc_msgSend_initNewTextureWithFigMetalContext_size_withFormat_usage_(v168, v169, selfCopy->_metalContext, 25, 23, v163, v160);
    preprocessedSkin = selfCopy->_preprocessedSkin;
    selfCopy->_preprocessedSkin = v170;

    v174 = objc_msgSend_texture(selfCopy->_preprocessedSkin, v172, v173);
    objc_msgSend_allocatedSize(v174, v175, v176);
  }

  v4 = v182;
  if (objc_msgSend__compileShaders(selfCopy, v143, v144))
  {
    sub_2957E3528();
LABEL_61:
    v8 = v181;
    goto LABEL_62;
  }

  v177 = 0;
  v8 = v181;
LABEL_63:

  return v177;
}

- (void)setOptions:(id)options
{
  v4 = *MEMORY[0x29EDC0298];
  optionsCopy = options;
  v20 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v6, v4);
  v7 = [MattingV2TuningParameters alloc];
  if (v20)
  {
    v9 = objc_msgSend_initWithTuningDictionary_(v7, v8, v20);
  }

  else
  {
    v9 = objc_msgSend_initWithDefaults(v7, v8, 0);
  }

  disparityTuningParameters = self->_disparityTuningParameters;
  self->_disparityTuningParameters = v9;

  v12 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v11, @"SDOFRenderingParameters");

  if (v12)
  {
    v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, @"DisparityRefinement");
    v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, @"version");

    if (v16)
    {
      v19 = objc_msgSend_intValue(v16, v17, v18);
    }

    else
    {
      v19 = 0;
    }

    self->_disparityRefinementVersion = v19;
  }

  else
  {
    self->_disparityRefinementVersion = 0;
  }
}

- (int)_compileShaders
{
  v3 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, a2, @"copyTexture", 0);
  copyTextureKernel = self->_copyTextureKernel;
  self->_copyTextureKernel = v3;

  if (self->_copyTextureKernel)
  {
    v6 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v5, @"bilinearScale", 0);
    bilinearScaleKernel = self->_bilinearScaleKernel;
    self->_bilinearScaleKernel = v6;

    if (self->_bilinearScaleKernel)
    {
      v9 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v8, @"composeRGBAGuide", 0);
      composeRGBAGuideKernel = self->_composeRGBAGuideKernel;
      self->_composeRGBAGuideKernel = v9;

      if (self->_composeRGBAGuideKernel)
      {
        v12 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v11, @"addTextures", 0);
        addTexturesKernel = self->_addTexturesKernel;
        self->_addTexturesKernel = v12;

        if (self->_addTexturesKernel)
        {
          v15 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v14, @"excludeNonSkin", 0);
          excludeNonSkinKernel = self->_excludeNonSkinKernel;
          self->_excludeNonSkinKernel = v15;

          if (self->_excludeNonSkinKernel)
          {
            return 0;
          }

          sub_2957E3658();
        }

        else
        {
          sub_2957E36BC();
        }
      }

      else
      {
        sub_2957E3720();
      }
    }

    else
    {
      sub_2957E3784();
    }
  }

  else
  {
    sub_2957E37E8();
  }

  return -12786;
}

- (id)_createTextureOfSize:(CGSize)size withFormat:(unint64_t)format
{
  v5 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], a2, format, size.width, size.height, 0);
  objc_msgSend_setUsage_(v5, v6, 3);
  v9 = objc_msgSend_device(self->_metalContext, v7, v8);
  v11 = objc_msgSend_newTextureWithDescriptor_(v9, v10, v5);

  return v11;
}

- ($55C9923F75B8441B2F861846195B697A)config
{
  v3 = *&self[15].var0;
  *&retstr->var0 = *&self[14].var4;
  *&retstr->var4 = v3;
  return self;
}

- (void)setConfig:(id *)config
{
  v3 = *&config->var4;
  *&self->_config.inputImageWidth = *&config->var0;
  *&self->_config.segmentationWidth = v3;
}

- (CGRect)syntheticFocusRectangle
{
  x = self->_syntheticFocusRectangle.origin.x;
  y = self->_syntheticFocusRectangle.origin.y;
  width = self->_syntheticFocusRectangle.size.width;
  height = self->_syntheticFocusRectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end