@interface RegDense
+ (int)prewarmShaders:(id)shaders;
- (RegDense)initWithMetalContext:(id)context bicubicWarping:(BOOL)warping;
- (int)blendingWeightLowLightUsing:(id)using and:(id)and shadowDenseBlendStrength:(float)strength nonShadowDenseBlendStrength:(float)blendStrength relativeBrightness:(float)brightness lensShadingFactor:(float)factor noiseModel:(const NoiseModel *)model homography:(id *)self0;
- (int)blendingWeightUsing:(id)using and:(id)and homography:(id *)homography relativeBrightness:(float)brightness;
- (int)generateSparseBlendingMapUsing:(id)using nonReference:(id)reference sparseBlendingMap:(id)map homography:(id *)homography relativeBrightness:(float)brightness;
- (int)pyramidConfidence:(id)confidence input:(id)input;
- (int)runWithReferenceImage:(id)image nonReferenceImage:(id)referenceImage warpedImage:(id)warpedImage relativeBrightness:(float)brightness homography:(id *)homography regDenseParams:(RegDenseParameters *)params alwaysDense:(BOOL)dense refWeightsLevel:(id)self0 nonRefWeightsLevel:(id)self1;
- (int)warpAdditionalImage:(id)image warpedImage:(id)warpedImage homography:(id *)homography hybridReg:(BOOL)reg alwaysDense:(BOOL)dense;
- (int)warpFrameWithInputY:(id)y inputUV:(id)v outputY:(id)outputY outputUV:(id)uV homography:(id *)homography hybridReg:(BOOL)reg alwaysDense:(BOOL)dense;
- (int)warpFrameWithInputYAndConfidence:(id)confidence inputUV:(id)v outputY:(id)y outputUV:(id)uV homography:(id *)homography;
- (void)dealloc;
- (void)resetIncludingConfidence:(BOOL)confidence;
@end

@implementation RegDense

- (RegDense)initWithMetalContext:(id)context bicubicWarping:(BOOL)warping
{
  warpingCopy = warping;
  contextCopy = context;
  v58.receiver = self;
  v58.super_class = RegDense;
  v8 = [(RegDense *)&v58 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_12;
  }

  objc_storeStrong(&v8->_metal, context);
  v10 = objc_opt_new();
  v13 = v10;
  v14 = !warpingCopy;
  if (warpingCopy)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  if (v14)
  {
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  objc_msgSend_setMinFilter_(v10, v11, v15, v12);
  objc_msgSend_setMagFilter_(v13, v17, v15, v18);
  objc_msgSend_setSAddressMode_(v13, v19, v16, v20);
  objc_msgSend_setTAddressMode_(v13, v21, v16, v22);
  v26 = objc_msgSend_device(v9->_metal, v23, v24, v25);
  v29 = objc_msgSend_newSamplerStateWithDescriptor_(v26, v27, v13, v28);
  warpingSampler = v9->_warpingSampler;
  v9->_warpingSampler = v29;

  v31 = objc_opt_new();
  pyrConfidence = v9->_pyrConfidence;
  v9->_pyrConfidence = v31;

  if (v9->_pyrConfidence)
  {
    v33 = [RegPyrFusion alloc];
    v36 = objc_msgSend_initWithMetalContext_(v33, v34, v9->_metal, v35);
    sfRegPyr = v9->_sfRegPyr;
    v9->_sfRegPyr = v36;

    if (v9->_sfRegPyr)
    {
      v41 = objc_msgSend_sharedInstance(RegDenseShared, v38, v39, v40);
      v44 = objc_msgSend_getShaders_(v41, v42, v9->_metal, v43);
      shaders = v9->_shaders;
      v9->_shaders = v44;

      if (v9->_shaders)
      {
        objc_msgSend_prewarmInternalMetalShadersForFormatsList_(v9->_metal, v46, &unk_2A1CC4258, v47);
        v51 = objc_msgSend_device(v9->_metal, v48, v49, v50);
        v53 = objc_msgSend_newBufferWithLength_options_(v51, v52, 48, 0);
        homographyMatrixBuffer = v9->_homographyMatrixBuffer;
        v9->_homographyMatrixBuffer = v53;

        if (v9->_homographyMatrixBuffer)
        {
          goto LABEL_12;
        }

        sub_29588DD70(&v59);
      }

      else
      {
        sub_29588DE0C(&v59);
      }
    }

    else
    {
      sub_29588DEA8(&v59);
    }
  }

  else
  {
    sub_29588DF44(&v59);
  }

  if (v59)
  {
    v55 = 0;
    goto LABEL_13;
  }

LABEL_12:
  v55 = v9;
LABEL_13:
  v56 = v55;

  return v56;
}

+ (int)prewarmShaders:(id)shaders
{
  shadersCopy = shaders;
  v4 = [RegDenseShaders alloc];
  v7 = objc_msgSend_initWithMetal_(v4, v5, shadersCopy, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = -12786;
  }

  return v8;
}

- (void)dealloc
{
  objc_msgSend_reset(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = RegDense;
  [(RegDense *)&v5 dealloc];
}

- (int)pyramidConfidence:(id)confidence input:(id)input
{
  confidenceCopy = confidence;
  inputCopy = input;
  v14 = objc_msgSend_renderPassDescriptor(MEMORY[0x29EDBB5F8], v8, v9, v10);
  if (v14)
  {
    v15 = objc_msgSend_commandBuffer(self->_metal, v11, v12, v13);
    if (v15)
    {
      v19 = v15;
      v20 = objc_msgSend_colorAttachments(v14, v16, v17, v18);
      v23 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, 0, v22);
      objc_msgSend_setTexture_(v23, v24, confidenceCopy, v25);

      v28 = objc_msgSend_renderCommandEncoderWithDescriptor_(v19, v26, v14, v27);
      if (v28)
      {
        v32 = v28;
        v33 = objc_msgSend_fullRangeVertexBuf(self->_metal, v29, v30, v31);
        objc_msgSend_setVertexBuffer_offset_atIndex_(v32, v34, v33, 0, 0);

        objc_msgSend_setFragmentTexture_atIndex_(v32, v35, inputCopy, 0);
        objc_msgSend_setRenderPipelineState_(v32, v36, self->_shaders->_confPipeline, v37);
        objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v32, v38, 4, 0, 4);
        objc_msgSend_endEncoding(v32, v39, v40, v41);
        objc_msgSend_commit(self->_metal, v42, v43, v44);

        v45 = 0;
      }

      else
      {
        sub_29588DFE0(v19, &v47);
        v45 = v47;
      }
    }

    else
    {
      sub_29588E094(&v48);
      v45 = v48;
    }
  }

  else
  {
    sub_29588E130(&v49);
    v45 = v49;
  }

  return v45;
}

- (int)blendingWeightUsing:(id)using and:(id)and homography:(id *)homography relativeBrightness:(float)brightness
{
  usingCopy = using;
  andCopy = and;
  brightnessCopy = brightness;
  v15 = objc_msgSend_commandBuffer(self->_metal, v12, v13, v14);
  v19 = v15;
  if (!v15)
  {
    sub_29588E268(v56);
LABEL_7:
    v52 = v56[0];
    goto LABEL_4;
  }

  v20 = objc_msgSend_computeCommandEncoder(v15, v16, v17, v18);
  if (!v20)
  {
    sub_29588E1CC(v56);
    goto LABEL_7;
  }

  v22 = v20;
  objc_msgSend_setTexture_atIndex_(v20, v21, usingCopy, 0);
  objc_msgSend_setTexture_atIndex_(v22, v23, andCopy, 1);
  objc_msgSend_setTexture_atIndex_(v22, v24, self->_shiftMap, 2);
  objc_msgSend_setTexture_atIndex_(v22, v25, self->_confidenceMap, 3);
  objc_msgSend_setTexture_atIndex_(v22, v26, self->_blendingWeight, 4);
  v30 = objc_msgSend_contents(self->_homographyMatrixBuffer, v27, v28, v29);
  v31 = *(homography + 2);
  v32 = *homography;
  v30[1] = *(homography + 1);
  v30[2] = v31;
  *v30 = v32;
  objc_msgSend_setBuffer_offset_atIndex_(v22, v33, self->_homographyMatrixBuffer, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(v22, v34, &brightnessCopy, 4, 1);
  v38 = ((objc_msgSend_width(usingCopy, v35, v36, v37) >> 1) + 7) >> 3;
  v42 = ((objc_msgSend_height(usingCopy, v39, v40, v41) >> 1) + 7) >> 3;
  objc_msgSend_setComputePipelineState_(v22, v43, self->_shaders->_getBlendingWeightPipeline, v44);
  v56[0] = v38;
  v56[1] = v42;
  v56[2] = 1;
  v54 = vdupq_n_s64(8uLL);
  v55 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v22, v45, v56, &v54);
  objc_msgSend_endEncoding(v22, v46, v47, v48);
  objc_msgSend_commit(self->_metal, v49, v50, v51);

  v52 = 0;
LABEL_4:

  return v52;
}

- (int)blendingWeightLowLightUsing:(id)using and:(id)and shadowDenseBlendStrength:(float)strength nonShadowDenseBlendStrength:(float)blendStrength relativeBrightness:(float)brightness lensShadingFactor:(float)factor noiseModel:(const NoiseModel *)model homography:(id *)self0
{
  usingCopy = using;
  andCopy = and;
  v23 = objc_msgSend_commandBuffer(self->_metal, v20, v21, v22);
  v27 = v23;
  if (!v23)
  {
    sub_29588E3A0(v56);
LABEL_7:
    v52 = v56[0];
    goto LABEL_4;
  }

  v28 = objc_msgSend_computeCommandEncoder(v23, v24, v25, v26);
  if (!v28)
  {
    sub_29588E304(v56);
    goto LABEL_7;
  }

  v30 = v28;
  objc_msgSend_setTexture_atIndex_(v28, v29, usingCopy, 0);
  objc_msgSend_setTexture_atIndex_(v30, v31, andCopy, 1);
  objc_msgSend_setTexture_atIndex_(v30, v32, self->_blendingWeightLowLight, 2);
  *v57 = strength;
  *&v57[1] = blendStrength;
  *&v57[2] = brightness;
  *&v57[3] = factor;
  v58 = *&model->lumaSigmaIntercept;
  v59 = *&model[1].lumaSigmaSlope;
  v60 = 0;
  v33 = *(homography + 1);
  v61 = *homography;
  v62 = v33;
  v63 = *(homography + 2);
  objc_msgSend_setBytes_length_atIndex_(v30, v34, v57, 96, 0);
  v38 = (objc_msgSend_width(self->_blendingWeightLowLight, v35, v36, v37) + 7) >> 3;
  v42 = (objc_msgSend_height(self->_blendingWeightLowLight, v39, v40, v41) + 7) >> 3;
  objc_msgSend_setComputePipelineState_(v30, v43, self->_shaders->_getBlendingWeightLowLightPipeline, v44);
  v56[0] = v38;
  v56[1] = v42;
  v56[2] = 1;
  v54 = vdupq_n_s64(8uLL);
  v55 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v30, v45, v56, &v54);
  objc_msgSend_endEncoding(v30, v46, v47, v48);
  objc_msgSend_commit(self->_metal, v49, v50, v51);

  v52 = 0;
LABEL_4:

  return v52;
}

- (int)generateSparseBlendingMapUsing:(id)using nonReference:(id)reference sparseBlendingMap:(id)map homography:(id *)homography relativeBrightness:(float)brightness
{
  usingCopy = using;
  referenceCopy = reference;
  mapCopy = map;
  v18 = objc_msgSend_commandBuffer(self->_metal, v15, v16, v17);
  v22 = v18;
  if (!v18)
  {
    sub_29588E4D8(v51);
LABEL_7:
    v47 = v51[0];
    goto LABEL_4;
  }

  v23 = objc_msgSend_computeCommandEncoder(v18, v19, v20, v21);
  if (!v23)
  {
    sub_29588E43C(v51);
    goto LABEL_7;
  }

  v25 = v23;
  objc_msgSend_setTexture_atIndex_(v23, v24, usingCopy, 0);
  objc_msgSend_setTexture_atIndex_(v25, v26, referenceCopy, 1);
  objc_msgSend_setTexture_atIndex_(v25, v27, self->_shiftMap, 2);
  objc_msgSend_setTexture_atIndex_(v25, v28, mapCopy, 3);
  memset(v52, 0, 48);
  *(v52 + 2) = brightness;
  v29 = *(homography + 1);
  v52[3] = *homography;
  v30 = *(homography + 2);
  v52[4] = v29;
  v52[5] = v30;
  objc_msgSend_setBytes_length_atIndex_(v25, v31, v52, 96, 0);
  objc_msgSend_setComputePipelineState_(v25, v32, self->_shaders->_generateSparseBlendingMapPipeline, v33);
  v51[0] = objc_msgSend_width(mapCopy, v34, v35, v36);
  v51[1] = objc_msgSend_height(mapCopy, v37, v38, v39);
  v51[2] = 1;
  v49 = vdupq_n_s64(8uLL);
  v50 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v25, v40, v51, &v49);
  objc_msgSend_endEncoding(v25, v41, v42, v43);
  objc_msgSend_commit(self->_metal, v44, v45, v46);

  v47 = 0;
LABEL_4:

  return v47;
}

- (int)warpFrameWithInputYAndConfidence:(id)confidence inputUV:(id)v outputY:(id)y outputUV:(id)uV homography:(id *)homography
{
  confidenceCopy = confidence;
  vCopy = v;
  yCopy = y;
  uVCopy = uV;
  v19 = objc_msgSend_width(confidenceCopy, v16, v17, v18);
  if (v19 != objc_msgSend_width(yCopy, v20, v21, v22) || (v26 = objc_msgSend_height(confidenceCopy, v23, v24, v25), v26 != objc_msgSend_height(yCopy, v27, v28, v29)))
  {
    sub_29588E574(v86);
LABEL_15:
    v82 = v86[0];
    goto LABEL_10;
  }

  v33 = objc_msgSend_width(vCopy, v30, v31, v32);
  if (v33 != objc_msgSend_width(uVCopy, v34, v35, v36) || (v40 = objc_msgSend_height(vCopy, v37, v38, v39), v40 != objc_msgSend_height(uVCopy, v41, v42, v43)))
  {
    sub_29588E610(v86);
    goto LABEL_15;
  }

  v47 = objc_msgSend_commandBuffer(self->_metal, v44, v45, v46);
  if (!v47)
  {
    sub_29588E760(v86);
    goto LABEL_15;
  }

  v51 = v47;
  v52 = objc_msgSend_computeCommandEncoder(v47, v48, v49, v50);
  if (!v52)
  {
    sub_29588E6AC(v51, v86);
    goto LABEL_15;
  }

  v55 = v52;
  objc_msgSend_setComputePipelineState_(v52, v53, self->_shaders->_warpWithBlendingWeightAndConfidencePipeline, v54);
  objc_msgSend_setImageblockWidth_height_(v55, v56, 32, 32);
  objc_msgSend_setTexture_atIndex_(v55, v57, confidenceCopy, 0);
  objc_msgSend_setTexture_atIndex_(v55, v58, vCopy, 1);
  objc_msgSend_setTexture_atIndex_(v55, v59, self->_shiftMap, 2);
  objc_msgSend_setTexture_atIndex_(v55, v60, yCopy, 3);
  objc_msgSend_setTexture_atIndex_(v55, v61, uVCopy, 4);
  objc_msgSend_setTexture_atIndex_(v55, v62, self->_confidenceMap, 6);
  objc_msgSend_setSamplerState_atIndex_(v55, v63, self->_warpingSampler, 0);
  if (homography)
  {
    v67 = objc_msgSend_contents(self->_homographyMatrixBuffer, v64, v65, v66);
    v68 = *(homography + 2);
    v69 = *homography;
    v67[1] = *(homography + 1);
    v67[2] = v68;
    *v67 = v69;
    objc_msgSend_setBuffer_offset_atIndex_(v55, v70, self->_homographyMatrixBuffer, 0, 0);
    objc_msgSend_setTexture_atIndex_(v55, v71, self->_blendingWeightLowLight, 5);
  }

  v86[0] = objc_msgSend_width(uVCopy, v64, v65, v66);
  v86[1] = objc_msgSend_height(uVCopy, v72, v73, v74);
  v86[2] = 1;
  v84 = vdupq_n_s64(0x10uLL);
  v85 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v55, v75, v86, &v84);
  objc_msgSend_endEncoding(v55, v76, v77, v78);
  objc_msgSend_commit(self->_metal, v79, v80, v81);

  v82 = 0;
LABEL_10:

  return v82;
}

- (int)warpFrameWithInputY:(id)y inputUV:(id)v outputY:(id)outputY outputUV:(id)uV homography:(id *)homography hybridReg:(BOOL)reg alwaysDense:(BOOL)dense
{
  regCopy = reg;
  yCopy = y;
  vCopy = v;
  outputYCopy = outputY;
  uVCopy = uV;
  v22 = objc_msgSend_commandBuffer(self->_metal, v19, v20, v21);
  v26 = v22;
  if (!v22)
  {
    sub_29588E898(v62);
LABEL_13:
    v58 = v62[0];
    goto LABEL_10;
  }

  v27 = objc_msgSend_computeCommandEncoder(v22, v23, v24, v25);
  if (!v27)
  {
    sub_29588E7FC(v62);
    goto LABEL_13;
  }

  v30 = v27;
  objc_msgSend_setComputePipelineState_(v27, v28, self->_shaders->_warpWithBlendingWeightPipeline, v29);
  objc_msgSend_setImageblockWidth_height_(v30, v31, 32, 32);
  objc_msgSend_setTexture_atIndex_(v30, v32, yCopy, 0);
  objc_msgSend_setTexture_atIndex_(v30, v33, vCopy, 1);
  objc_msgSend_setTexture_atIndex_(v30, v34, self->_shiftMap, 2);
  objc_msgSend_setTexture_atIndex_(v30, v35, outputYCopy, 3);
  objc_msgSend_setTexture_atIndex_(v30, v36, uVCopy, 4);
  objc_msgSend_setSamplerState_atIndex_(v30, v37, self->_warpingSampler, 0);
  if (homography)
  {
    v41 = objc_msgSend_contents(self->_homographyMatrixBuffer, v38, v39, v40);
    v42 = *(homography + 2);
    v43 = *homography;
    v41[1] = *(homography + 1);
    v41[2] = v42;
    *v41 = v43;
    objc_msgSend_setBuffer_offset_atIndex_(v30, v44, self->_homographyMatrixBuffer, 0, 0);
    v46 = 216;
    if (regCopy)
    {
      v46 = 224;
    }

    v47 = *(&self->super.isa + v46);
    if (dense)
    {
      objc_msgSend_setTexture_atIndex_(v30, v45, 0, 5);
    }

    else
    {
      objc_msgSend_setTexture_atIndex_(v30, v45, v47, 5);
    }
  }

  v62[0] = objc_msgSend_width(uVCopy, v38, v39, v40);
  v62[1] = objc_msgSend_height(uVCopy, v48, v49, v50);
  v62[2] = 1;
  v60 = vdupq_n_s64(0x10uLL);
  v61 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v30, v51, v62, &v60);
  objc_msgSend_endEncoding(v30, v52, v53, v54);
  objc_msgSend_commit(self->_metal, v55, v56, v57);

  v58 = 0;
LABEL_10:

  return v58;
}

- (int)warpAdditionalImage:(id)image warpedImage:(id)warpedImage homography:(id *)homography hybridReg:(BOOL)reg alwaysDense:(BOOL)dense
{
  imageCopy = image;
  warpedImageCopy = warpedImage;
  if (imageCopy == warpedImageCopy)
  {
    sub_29588EBB4(&v33);
  }

  else
  {
    v13 = objc_msgSend_width(imageCopy, v9, v10, v11);
    if (v13 == objc_msgSend_width(warpedImageCopy, v14, v15, v16) && (v20 = objc_msgSend_height(imageCopy, v17, v18, v19), v20 == objc_msgSend_height(warpedImageCopy, v21, v22, v23)))
    {
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v27 = objc_msgSend_device(imageCopy, v24, v25, v26);
      objc_msgSend_pixelFormat(imageCopy, v28, v29, v30);
      MTLPixelFormatGetInfoForDevice();

      sub_29588E9D0(&v33);
    }

    else
    {
      sub_29588E934(&v33);
    }
  }

  v32 = v33;

  return v32;
}

- (int)runWithReferenceImage:(id)image nonReferenceImage:(id)referenceImage warpedImage:(id)warpedImage relativeBrightness:(float)brightness homography:(id *)homography regDenseParams:(RegDenseParameters *)params alwaysDense:(BOOL)dense refWeightsLevel:(id)self0 nonRefWeightsLevel:(id)self1
{
  imageCopy = image;
  referenceImageCopy = referenceImage;
  warpedImageCopy = warpedImage;
  levelCopy = level;
  weightsLevelCopy = weightsLevel;
  if (*MEMORY[0x29EDB9270])
  {
    v22 = objc_msgSend_commandQueue(self->_metal, v19, v20, v21);
    v26 = objc_msgSend_commandBuffer(v22, v23, v24, v25);

    objc_msgSend_setLabel_(v26, v27, @"KTRACE_START_MTL", v28);
    objc_msgSend_addCompletedHandler_(v26, v29, &unk_2A1CA9400, v30);
    objc_msgSend_commit(v26, v31, v32, v33);
  }

  v245 = 0;
  v246 = 0;
  v244 = 0;
  sfRegPyr = self->_sfRegPyr;
  v35 = sfRegPyr->_pyrWidths[1];
  v36 = sfRegPyr->_pyrHeights[1];
  v37 = objc_msgSend_allocator(self->_metal, v19, v20, v21);
  v41 = objc_msgSend_newTextureDescriptor(v37, v38, v39, v40);

  if (!v41)
  {
    sub_29588F6E0(v247);
    goto LABEL_47;
  }

  v45 = objc_msgSend_desc(v41, v42, v43, v44);
  objc_msgSend_setWidth_(v45, v46, v35, v47);

  v51 = objc_msgSend_desc(v41, v48, v49, v50);
  objc_msgSend_setHeight_(v51, v52, v36, v53);

  v57 = objc_msgSend_desc(v41, v54, v55, v56);
  objc_msgSend_setPixelFormat_(v57, v58, 25, v59);

  v63 = objc_msgSend_desc(v41, v60, v61, v62);
  objc_msgSend_setUsage_(v63, v64, 7, v65);

  objc_msgSend_setLabel_(v41, v66, 0, v67);
  v71 = objc_msgSend_allocator(self->_metal, v68, v69, v70);
  v74 = objc_msgSend_newTextureWithDescriptor_(v71, v72, v41, v73);
  v246 = v74;

  if (!v74)
  {
    sub_29588F644(v247);
    goto LABEL_47;
  }

  objc_msgSend_setLabel_(v41, v75, 0, v76);
  v80 = objc_msgSend_allocator(self->_metal, v77, v78, v79);
  v83 = objc_msgSend_newTextureWithDescriptor_(v80, v81, v41, v82);
  v245 = v83;

  if (!v83)
  {
    sub_29588F5A8(v247);
    goto LABEL_47;
  }

  v239 = levelCopy;
  v85 = 0;
  if (params)
  {
    var4 = params->var4;
    if ((LOBYTE(params[1].var2) & 1) == 0 && var4 == 2)
    {
      var4 = 3;
      v85 = 1;
      dense = 1;
    }
  }

  else
  {
    var4 = 0;
  }

  if (objc_msgSend_registerImagesWithReferenceImg_nonRefImage_refTexlvl1_nonRefTexlvl1_shiftMap_confidenceMap_(self->_sfRegPyr, v84, imageCopy, referenceImageCopy, v74, v83, self->_shiftMap, self->_confidenceMap))
  {
    sub_29588EFF8(v247);
    goto LABEL_56;
  }

  if (var4 > 1)
  {
    if (var4 != 2)
    {
      if (var4 == 3)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    v101 = objc_msgSend_width(imageCopy[2], v87, v88, v89) >> 3;
    v105 = objc_msgSend_desc(v41, v102, v103, v104);
    objc_msgSend_setWidth_(v105, v106, v101, v107);

    v111 = objc_msgSend_height(imageCopy[2], v108, v109, v110) >> 3;
    v115 = objc_msgSend_desc(v41, v112, v113, v114);
    objc_msgSend_setHeight_(v115, v116, v111, v117);

    v121 = objc_msgSend_desc(v41, v118, v119, v120);
    objc_msgSend_setPixelFormat_(v121, v122, 25, v123);

    objc_msgSend_setLabel_(v41, v124, 0, v125);
    v129 = objc_msgSend_allocator(self->_metal, v126, v127, v128);
    v132 = objc_msgSend_newTextureWithDescriptor_(v129, v130, v41, v131);
    v244 = v132;

    if (!v132)
    {
      sub_29588F130(v247);
      goto LABEL_56;
    }

    levelCopy = v239;
    *&v134 = brightness;
    SparseBlendingMapUsing_nonReference_sparseBlendingMap_homography_relativeBrightness = objc_msgSend_generateSparseBlendingMapUsing_nonReference_sparseBlendingMap_homography_relativeBrightness_(self, v133, v239, weightsLevelCopy, v132, homography, v134);
    if (!SparseBlendingMapUsing_nonReference_sparseBlendingMap_homography_relativeBrightness)
    {
      objc_msgSend_solverfilterWithGuide_target_confidence_ltc_tex_gtcRatio_tex_gtcFinal_tex_ltmROI_output_(params->var6, v136, v239, v132, 0, *(*(params->var7 + 16) + 8), *(*(params->var7 + 16) + 16), *(*(params->var7 + 16) + 24), *&params->var8, self->_blendingWeightLowLight);
      FigMetalDecRef();
      v85 = 1;
      goto LABEL_27;
    }

    sub_29588F094(SparseBlendingMapUsing_nonReference_sparseBlendingMap_homography_relativeBrightness, v247);
LABEL_47:
    v98 = v247[0];
    goto LABEL_21;
  }

  if (var4)
  {
    if (var4 == 1)
    {
      *&v90 = params->var0;
      *&v91 = params->var1;
      *&v93 = params->var2;
      *&v92 = brightness;
      v94 = objc_msgSend_blendingWeightLowLightUsing_and_shadowDenseBlendStrength_nonShadowDenseBlendStrength_relativeBrightness_lensShadingFactor_noiseModel_homography_(self, v87, v239, weightsLevelCopy, params->var3, homography, v90, v91, v92, v93);
      if (v94)
      {
        sub_29588F1CC(v94, v247);
LABEL_56:
        v98 = v247[0];
        goto LABEL_20;
      }

      goto LABEL_27;
    }

LABEL_19:
    FigSignalErrorAtGM();
    v98 = 0;
    goto LABEL_20;
  }

  *&v90 = brightness;
  v100 = objc_msgSend_blendingWeightUsing_and_homography_relativeBrightness_(self, v87, v74, v83, homography, v90);
  if (v100)
  {
    sub_29588F268(v100, v247);
    goto LABEL_56;
  }

LABEL_27:
  FigMetalDecRef();
  FigMetalDecRef();
  v137 = warpedImageCopy[3];
  if ((FigMetalIsValid() & 1) == 0)
  {
    v141 = objc_msgSend_allocator(self->_metal, v138, v139, v140);
    v144 = objc_msgSend_newTextureDescriptor_(v141, v142, 0, v143);

    if (v144)
    {
      v148 = objc_msgSend_width(imageCopy[3], v145, v146, v147);
      v152 = objc_msgSend_desc(v144, v149, v150, v151);
      objc_msgSend_setWidth_(v152, v153, v148, v154);

      v158 = objc_msgSend_height(imageCopy[3], v155, v156, v157);
      v162 = objc_msgSend_desc(v144, v159, v160, v161);
      objc_msgSend_setHeight_(v162, v163, v158, v164);

      v168 = objc_msgSend_desc(v144, v165, v166, v167);
      objc_msgSend_setPixelFormat_(v168, v169, 65, v170);

      objc_msgSend_setLabel_(v144, v171, 0, v172);
      v176 = objc_msgSend_allocator(self->_metal, v173, v174, v175);
      v178 = objc_msgSend_newTextureWithDescriptor_subAllocatorID_(v176, v177, v144, 0);
      v179 = warpedImageCopy[3];
      warpedImageCopy[3] = v178;

      if (warpedImageCopy[3])
      {

        goto LABEL_31;
      }

      sub_29588F304(v247);
    }

    else
    {
      sub_29588F3A0(v247);
    }

    v98 = v247[0];

LABEL_20:
    levelCopy = v239;
LABEL_21:
    v99 = MEMORY[0x29EDB9270];
    goto LABEL_41;
  }

LABEL_31:
  v180 = warpedImageCopy[2];
  if ((FigMetalIsValid() & 1) == 0)
  {
    v184 = objc_msgSend_width(imageCopy[2], v181, v182, v183);
    v188 = objc_msgSend_desc(v41, v185, v186, v187);
    objc_msgSend_setWidth_(v188, v189, v184, v190);

    v194 = objc_msgSend_height(imageCopy[2], v191, v192, v193);
    v198 = objc_msgSend_desc(v41, v195, v196, v197);
    objc_msgSend_setHeight_(v198, v199, v194, v200);

    v204 = objc_msgSend_desc(v41, v201, v202, v203);
    objc_msgSend_setPixelFormat_(v204, v205, 25, v206);

    objc_msgSend_setLabel_(v41, v207, 0, v208);
    v212 = objc_msgSend_allocator(self->_metal, v209, v210, v211);
    v215 = objc_msgSend_newTextureWithDescriptor_(v212, v213, v41, v214);
    v216 = warpedImageCopy[2];
    warpedImageCopy[2] = v215;

    if (!warpedImageCopy[2])
    {
      sub_29588F43C(v247);
      goto LABEL_56;
    }
  }

  v217 = referenceImageCopy[2];
  v218 = referenceImageCopy[3];
  v219 = warpedImageCopy[2];
  v220 = warpedImageCopy[3];
  if (var4 != 2)
  {
    LOBYTE(v237) = dense;
    v222 = objc_msgSend_warpFrameWithInputY_inputUV_outputY_outputUV_homography_hybridReg_alwaysDense_(self, v181, v217, v218, v219, v220, homography, var4 != 0, v237);
    v99 = MEMORY[0x29EDB9270];
    if (v222)
    {
      v98 = v222;
      sub_29588F4D8();
      goto LABEL_54;
    }

LABEL_37:
    if (v85)
    {
      confidenceMap = 0;
    }

    else
    {
      confidenceMap = self->_confidenceMap;
    }

    levelCopy = v239;
    objc_storeStrong(self->_pyrConfidence->textureY, confidenceMap);
    v98 = 0;
    goto LABEL_41;
  }

  v221 = objc_msgSend_warpFrameWithInputYAndConfidence_inputUV_outputY_outputUV_homography_(self, v181, v217, v218, v219, v220, homography);
  v99 = MEMORY[0x29EDB9270];
  if (!v221)
  {
    goto LABEL_37;
  }

  v98 = v221;
  sub_29588F540();
LABEL_54:
  levelCopy = v239;
LABEL_41:
  if (*v99)
  {
    v224 = objc_msgSend_commandQueue(self->_metal, v95, v96, v97);
    v228 = objc_msgSend_commandBuffer(v224, v225, v226, v227);

    objc_msgSend_setLabel_(v228, v229, @"KTRACE_END_MTL", v230);
    v243[0] = MEMORY[0x29EDCA5F8];
    v243[1] = 3221225472;
    v243[2] = sub_295819614;
    v243[3] = &unk_29EDDBE78;
    memset(&v243[4], 0, 24);
    objc_msgSend_addCompletedHandler_(v228, v231, v243, v232);
    objc_msgSend_commit(v228, v233, v234, v235);
  }

  return v98;
}

- (void)resetIncludingConfidence:(BOOL)confidence
{
  if (confidence && self->_confidenceMap)
  {
    FigMetalDecRef();
  }

  if (self->_shiftMap)
  {
    FigMetalDecRef();
  }

  if (self->_blendingWeight)
  {
    FigMetalDecRef();
  }

  if (self->_blendingWeightLowLight)
  {

    FigMetalDecRef();
  }
}

@end