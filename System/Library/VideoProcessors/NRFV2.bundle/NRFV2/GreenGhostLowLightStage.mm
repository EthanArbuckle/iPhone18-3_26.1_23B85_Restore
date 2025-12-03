@interface GreenGhostLowLightStage
+ (int)prewarmShaders:(id)shaders;
- (GreenGhostLowLightStage)initWithMetalContext:(id)context;
- (SidecarWriter)sidecarWriter;
- (id)functionNameForProgram:(int)program;
- (int)allocateFusionWeightTexturesWithWidth:(unint64_t)width height:(unint64_t)height;
- (int)applyInpaintWithDownscaledLuma:(id)luma propagatedLuma:(id)propagatedLuma downscaledChroma:(id)chroma propagatedChroma:(id)propagatedChroma propagatedGradient:(id)gradient maskPreInpainting:(id)inpainting outputLuma:(id)outputLuma outputChroma:(id)self0 params:(LowLightInpaintTuning *)self1;
- (int)canMitigationProceedWithMaxMaskAverage:(float)average;
- (int)compileShaders;
- (int)detectionWithRefPyramid:(id)pyramid otherPyramid:(id)otherPyramid refDetection:(BOOL)detection refProperties:(frameProperties_t *)properties otherProperties:(frameProperties_t *)otherProperties maskMBBinary:(id)binary params:(LowLightTuning *)params;
- (int)fuseRefPyramid:(id)pyramid withOtherPyramid:(id)otherPyramid refProperties:(frameProperties_t *)properties otherProperties:(frameProperties_t *)otherProperties currentFusionWeights:(id)weights relativeBrightness:(float)brightness;
- (int)fuseRefPyramid:(id)pyramid withOtherPyramid:(id)otherPyramid refProperties:(frameProperties_t *)properties otherProperties:(frameProperties_t *)otherProperties maskMBBinary:(id)binary params:(LowLightFusionTuning *)params;
- (int)guidedFilter:(id)filter withGuideLuma:(id)luma guideChroma:(id)chroma params:(LowLightRefinementTuning *)params output:(id)output;
- (int)inpaintLuma:(id)luma andChroma:(id)chroma tuningParams:(id)params;
- (int)mixFusedTexturesWithRefLuma:(id)luma refChroma:(id)chroma refProperties:(frameProperties_t *)properties tuningParams:(id)params;
- (int)prepareInpaintingWithLuma:(id)luma andChroma:(id)chroma outputLuma:(id)outputLuma outputChroma:(id)outputChroma outputGradient:(id)gradient params:(LowLightInpaintTuning *)params;
- (int)propagateLuma:(id)luma chroma:(id)chroma gradient:(id)gradient outputLuma:(id)outputLuma outputChroma:(id)outputChroma outputGradient:(id)outputGradient params:(LowLightInpaintTuning *)params;
- (int)refineDetectionWithGuideLuma:(id)luma guideChroma:(id)chroma params:(LowLightRefinementTuning *)params output:(id)output;
- (int)singleBracketDetectionWithLuma:(id)luma chroma:(id)chroma params:(DetectionTuning *)params;
- (int)updateFusionWeights:(id)weights;
- (int)updateMaskAndComputeGradientForLuma:(id)luma output:(id)output params:(LowLightInpaintTuning *)params;
- (uint64_t)computeFusionWeightsRefLuma:(__n128)luma refChroma:(__n128)chroma otherLuma:(__n128)otherLuma otherChroma:(uint64_t)otherChroma maskMBBinary:(void *)binary innerMask:(void *)mask relativeBrightness:(void *)brightness homography:(void *)self0 output:(void *)self1 params:(void *)self2;
- (uint64_t)computeTemporalVariationsRefImg:(uint64_t)img OtherImg:(void *)otherImg refProperties:(void *)properties otherProperties:(uint64_t)otherProperties params:(_OWORD *)params;
- (uint64_t)prepareFusionRefLuma:(double)luma refChroma:(double)chroma otherLuma:(double)otherLuma otherChroma:(uint64_t)otherChroma maskMBBinary:(void *)binary relativeBrightness:(void *)brightness homography:(void *)homography output:(void *)self0 params:(void *)self1;
- (void)dealloc;
- (void)releaseTextures;
- (void)reset;
- (void)scaleFaceBodyBoundariesWithSizeRatio:(float)ratio;
@end

@implementation GreenGhostLowLightStage

- (id)functionNameForProgram:(int)program
{
  if (program < 0xD)
  {
    return *(&off_29EDDC060 + program);
  }

  FigDebugAssert3();
  return 0;
}

- (int)compileShaders
{
  metal = self->_metal;
  v5 = objc_msgSend_functionNameForProgram_(self, a2, 0, v2);
  v7 = objc_msgSend_computePipelineStateFor_constants_(metal, v6, v5, 0);
  v8 = self->_pipelineStates[0];
  self->_pipelineStates[0] = v7;

  if (!self->_pipelineStates[0])
  {
    sub_2958A08FC(&v94);
    return v94;
  }

  v11 = self->_metal;
  v12 = objc_msgSend_functionNameForProgram_(self, v9, 1, v10);
  v14 = objc_msgSend_computePipelineStateFor_constants_(v11, v13, v12, 0);
  v15 = self->_pipelineStates[1];
  self->_pipelineStates[1] = v14;

  if (!self->_pipelineStates[1])
  {
    sub_2958A0860(&v94);
    return v94;
  }

  v18 = self->_metal;
  v19 = objc_msgSend_functionNameForProgram_(self, v16, 2, v17);
  v21 = objc_msgSend_computePipelineStateFor_constants_(v18, v20, v19, 0);
  v22 = self->_pipelineStates[2];
  self->_pipelineStates[2] = v21;

  if (!self->_pipelineStates[2])
  {
    sub_2958A07C4(&v94);
    return v94;
  }

  v25 = self->_metal;
  v26 = objc_msgSend_functionNameForProgram_(self, v23, 3, v24);
  v28 = objc_msgSend_computePipelineStateFor_constants_(v25, v27, v26, 0);
  v29 = self->_pipelineStates[3];
  self->_pipelineStates[3] = v28;

  if (!self->_pipelineStates[3])
  {
    sub_2958A0728(&v94);
    return v94;
  }

  v32 = self->_metal;
  v33 = objc_msgSend_functionNameForProgram_(self, v30, 4, v31);
  v35 = objc_msgSend_computePipelineStateFor_constants_(v32, v34, v33, 0);
  v36 = self->_pipelineStates[4];
  self->_pipelineStates[4] = v35;

  if (!self->_pipelineStates[4])
  {
    sub_2958A068C(&v94);
    return v94;
  }

  v39 = self->_metal;
  v40 = objc_msgSend_functionNameForProgram_(self, v37, 5, v38);
  v42 = objc_msgSend_computePipelineStateFor_constants_(v39, v41, v40, 0);
  v43 = self->_pipelineStates[5];
  self->_pipelineStates[5] = v42;

  if (!self->_pipelineStates[5])
  {
    sub_2958A05F0(&v94);
    return v94;
  }

  v46 = self->_metal;
  v47 = objc_msgSend_functionNameForProgram_(self, v44, 6, v45);
  v49 = objc_msgSend_computePipelineStateFor_constants_(v46, v48, v47, 0);
  v50 = self->_pipelineStates[6];
  self->_pipelineStates[6] = v49;

  if (!self->_pipelineStates[6])
  {
    sub_2958A0554(&v94);
    return v94;
  }

  v53 = self->_metal;
  v54 = objc_msgSend_functionNameForProgram_(self, v51, 7, v52);
  v56 = objc_msgSend_computePipelineStateFor_constants_(v53, v55, v54, 0);
  v57 = self->_pipelineStates[7];
  self->_pipelineStates[7] = v56;

  if (!self->_pipelineStates[7])
  {
    sub_2958A04B8(&v94);
    return v94;
  }

  v60 = self->_metal;
  v61 = objc_msgSend_functionNameForProgram_(self, v58, 8, v59);
  v63 = objc_msgSend_computePipelineStateFor_constants_(v60, v62, v61, 0);
  v64 = self->_pipelineStates[8];
  self->_pipelineStates[8] = v63;

  if (!self->_pipelineStates[8])
  {
    sub_2958A041C(&v94);
    return v94;
  }

  v67 = self->_metal;
  v68 = objc_msgSend_functionNameForProgram_(self, v65, 9, v66);
  v70 = objc_msgSend_computePipelineStateFor_constants_(v67, v69, v68, 0);
  v71 = self->_pipelineStates[9];
  self->_pipelineStates[9] = v70;

  if (!self->_pipelineStates[9])
  {
    sub_2958A0380(&v94);
    return v94;
  }

  v74 = self->_metal;
  v75 = objc_msgSend_functionNameForProgram_(self, v72, 10, v73);
  v77 = objc_msgSend_computePipelineStateFor_constants_(v74, v76, v75, 0);
  v78 = self->_pipelineStates[10];
  self->_pipelineStates[10] = v77;

  if (!self->_pipelineStates[10])
  {
    sub_2958A02E4(&v94);
    return v94;
  }

  v81 = self->_metal;
  v82 = objc_msgSend_functionNameForProgram_(self, v79, 11, v80);
  v84 = objc_msgSend_computePipelineStateFor_constants_(v81, v83, v82, 0);
  v85 = self->_pipelineStates[11];
  self->_pipelineStates[11] = v84;

  if (!self->_pipelineStates[11])
  {
    sub_2958A0248(&v94);
    return v94;
  }

  v88 = self->_metal;
  v89 = objc_msgSend_functionNameForProgram_(self, v86, 12, v87);
  v91 = objc_msgSend_computePipelineStateFor_constants_(v88, v90, v89, 0);
  v92 = self->_pipelineStates[12];
  self->_pipelineStates[12] = v91;

  if (!self->_pipelineStates[12])
  {
    sub_2958A01AC(&v94);
    return v94;
  }

  return 0;
}

- (GreenGhostLowLightStage)initWithMetalContext:(id)context
{
  contextCopy = context;
  v31.receiver = self;
  v31.super_class = GreenGhostLowLightStage;
  v6 = [(GreenGhostLowLightStage *)&v31 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metal, context);
    *&v7->_detectionLvl = 2;
    v7->_nonRefFramesCount = 0;
    v7->_isFirstNonRefFrame = 1;
    v7->_canMitigationProceed = 1;
    v11 = objc_msgSend_device(v7->_metal, v8, v9, v10);
    v13 = objc_msgSend_newBufferWithLength_options_(v11, v12, 4, 0);
    sumMaskBuffer = v7->_sumMaskBuffer;
    v7->_sumMaskBuffer = v13;

    if (v7->_sumMaskBuffer)
    {
      if (!objc_msgSend_compileShaders(v7, v15, v16, v17))
      {
        v18 = [GreenGhostCommon alloc];
        v21 = objc_msgSend_initWithMetalContext_(v18, v19, contextCopy, v20);
        greenGhostCommon = v7->_greenGhostCommon;
        v7->_greenGhostCommon = v21;

        if (v7->_greenGhostCommon)
        {
          v23 = [TextureUtils alloc];
          v26 = objc_msgSend_initWithMetalContext_(v23, v24, contextCopy, v25);
          textureUtils = v7->_textureUtils;
          v7->_textureUtils = v26;

          if (!v7->_textureUtils)
          {
            sub_2958A09FC();
          }
        }

        else
        {
          sub_2958A0A60();
        }

        goto LABEL_7;
      }

      sub_2958A0998();
LABEL_14:
      v28 = 0;
      goto LABEL_8;
    }

    sub_2958A0AC4(&v32);
  }

  else
  {
    sub_2958A0B60(&v32);
  }

  if (v32)
  {
    goto LABEL_14;
  }

LABEL_7:
  v28 = v7;
LABEL_8:
  v29 = v28;

  return v29;
}

+ (int)prewarmShaders:(id)shaders
{
  shadersCopy = shaders;
  v4 = [GreenGhostLowLightStage alloc];
  v7 = objc_msgSend_initWithMetalContext_(v4, v5, shadersCopy, v6);

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

- (void)reset
{
  self->_isFirstNonRefFrame = 1;
  self->_nonRefFramesCount = 0;
  self->_canMitigationProceed = 1;
  objc_msgSend_releaseTextures(self, a2, v2, v3);
}

- (void)releaseTextures
{
  fusedLuma = self->_fusedLuma;
  self->_fusedLuma = 0;

  fusedChroma = self->_fusedChroma;
  self->_fusedChroma = 0;

  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();

  FigMetalDecRef();
}

- (void)dealloc
{
  sumMaskBuffer = self->_sumMaskBuffer;
  self->_sumMaskBuffer = 0;

  v4.receiver = self;
  v4.super_class = GreenGhostLowLightStage;
  [(GreenGhostLowLightStage *)&v4 dealloc];
}

- (int)singleBracketDetectionWithLuma:(id)luma chroma:(id)chroma params:(DetectionTuning *)params
{
  v29 = 0;
  chromaCopy = chroma;
  lumaCopy = luma;
  v13 = objc_msgSend_width(lumaCopy, v10, v11, v12);
  v17 = objc_msgSend_height(lumaCopy, v14, v15, v16);
  *&v18 = 0;
  *(&v18 + 1) = __PAIR64__(v17, v13);
  v27 = v18;
  v28 = 1065353216;
  greenGhostCommon = self->_greenGhostCommon;
  maskSB = self->_maskSB;
  v21 = *&params[1].var2.var1;
  v26[2] = *&params[1].var0.var1;
  v26[3] = v21;
  v26[4] = *&params[2].var0.var2;
  v22 = *&params->var2.var0;
  v26[0] = *&params->var0.var0;
  v26[1] = v22;
  v24 = objc_msgSend_detectionWithLuma_croppedLuma_chroma_outputMask_params_processingROIInfo_(greenGhostCommon, v23, lumaCopy, lumaCopy, chromaCopy, maskSB, v26, &v27);

  if (v24)
  {
    sub_2958A0BFC();
  }

  return v24;
}

- (uint64_t)computeTemporalVariationsRefImg:(uint64_t)img OtherImg:(void *)otherImg refProperties:(void *)properties otherProperties:(uint64_t)otherProperties params:(_OWORD *)params
{
  v130 = a2;
  otherImgCopy = otherImg;
  propertiesCopy = properties;
  v129 = sub_295820728(otherProperties + 16, (params + 1), otherProperties);
  v16 = params[13994];
  v128[0] = params[13993];
  v128[1] = v16;
  v128[2] = params[13995];
  v17 = *(self + 144);
  v127 = (v17 & 1) == 0;
  if (v17)
  {
    v18 = objc_msgSend_allocator(*(self + 8), v13, v14, v15);
    v22 = objc_msgSend_newTextureDescriptor(v18, v19, v20, v21);

    if (v22)
    {
      v26 = objc_msgSend_desc(v22, v23, v24, v25);
      objc_msgSend_setUsage_(v26, v27, 7, v28);

      v32 = objc_msgSend_desc(v22, v29, v30, v31);
      objc_msgSend_setPixelFormat_(v32, v33, 25, v34);

      v38 = objc_msgSend_width(otherImgCopy, v35, v36, v37);
      v42 = objc_msgSend_desc(v22, v39, v40, v41);
      objc_msgSend_setWidth_(v42, v43, v38, v44);

      v48 = objc_msgSend_height(otherImgCopy, v45, v46, v47);
      v52 = objc_msgSend_desc(v22, v49, v50, v51);
      objc_msgSend_setHeight_(v52, v53, v48, v54);

      objc_msgSend_setLabel_(v22, v55, 0, v56);
      v60 = objc_msgSend_allocator(*(self + 8), v57, v58, v59);
      v63 = objc_msgSend_newTextureWithDescriptor_(v60, v61, v22, v62);
      v64 = *(self + 168);
      *(self + 168) = v63;

      if (*(self + 168))
      {
        v68 = objc_msgSend_desc(v22, v65, v66, v67);
        objc_msgSend_setCompressionMode_(v68, v69, 2, v70);

        v74 = objc_msgSend_desc(v22, v71, v72, v73);
        objc_msgSend_setCompressionFootprint_(v74, v75, 0, v76);

        objc_msgSend_setLabel_(v22, v77, 0, v78);
        v82 = objc_msgSend_allocator(*(self + 8), v79, v80, v81);
        v85 = objc_msgSend_newTextureWithDescriptor_(v82, v83, v22, v84);
        v86 = *(self + 176);
        *(self + 176) = v85;

        if (*(self + 176))
        {

          goto LABEL_8;
        }

        sub_2958A0E40(v126);
      }

      else
      {
        sub_2958A0EDC(v126);
      }
    }

    else
    {
      sub_2958A0F78(v126);
    }

    v122 = LODWORD(v126[0]);

    goto LABEL_11;
  }

  if (!*(self + 176) || !*(self + 168))
  {
    sub_2958A0C5C(v126);
LABEL_15:
    v122 = LODWORD(v126[0]);
    goto LABEL_11;
  }

LABEL_8:
  v87 = objc_msgSend_commandQueue(*(self + 8), v13, v14, v15);
  v91 = objc_msgSend_commandBuffer(v87, v88, v89, v90);

  if (!v91)
  {
    sub_2958A0DA4(v126);
    goto LABEL_15;
  }

  v95 = objc_msgSend_computeCommandEncoder(v91, v92, v93, v94);
  if (!v95)
  {
    sub_2958A0CF8();
    goto LABEL_15;
  }

  v98 = v95;
  objc_msgSend_setComputePipelineState_(v95, v96, *(self + 24), v97);
  objc_msgSend_setImageblockWidth_height_(v98, v99, 16, 16);
  objc_msgSend_setTexture_atIndex_(v98, v100, otherImgCopy, 0);
  objc_msgSend_setTexture_atIndex_(v98, v101, propertiesCopy, 1);
  objc_msgSend_setTexture_atIndex_(v98, v102, *(self + 160), 2);
  objc_msgSend_setTexture_atIndex_(v98, v103, *(self + 168), 3);
  objc_msgSend_setTexture_atIndex_(v98, v104, *(self + 176), 4);
  objc_msgSend_setBytes_length_atIndex_(v98, v105, &v129, 4, 0);
  objc_msgSend_setBytes_length_atIndex_(v98, v106, v128, 48, 1);
  objc_msgSend_setBytes_length_atIndex_(v98, v107, &v130, 8, 2);
  objc_msgSend_setBytes_length_atIndex_(v98, v108, &v127, 1, 3);
  v126[0] = objc_msgSend_width(otherImgCopy, v109, v110, v111);
  v126[1] = objc_msgSend_height(otherImgCopy, v112, v113, v114);
  v126[2] = 1;
  v124 = vdupq_n_s64(0x10uLL);
  v125 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v98, v115, v126, &v124);
  objc_msgSend_endEncoding(v98, v116, v117, v118);
  objc_msgSend_commit(v91, v119, v120, v121);

  v122 = 0;
LABEL_11:

  return v122;
}

- (int)guidedFilter:(id)filter withGuideLuma:(id)luma guideChroma:(id)chroma params:(LowLightRefinementTuning *)params output:(id)output
{
  filterCopy = filter;
  lumaCopy = luma;
  chromaCopy = chroma;
  outputCopy = output;
  v171 = 0;
  var0 = params->var0;
  var1 = params->var1;
  var2 = params->var2;
  v169 = var1;
  if (objc_msgSend_width(outputCopy, v17, v18, v19) & 1) != 0 || (objc_msgSend_height(outputCopy, v20, v21, v22))
  {
    sub_2958A1014(&v165);
LABEL_13:
    v157 = v165;
    goto LABEL_8;
  }

  v26 = objc_msgSend_commandQueue(self->_metal, v23, v24, v25);
  v30 = objc_msgSend_commandBuffer(v26, v27, v28, v29);

  if (!v30)
  {
    sub_2958A12E4(&v165);
    goto LABEL_13;
  }

  v34 = objc_msgSend_computeCommandEncoder(v30, v31, v32, v33);
  if (!v34)
  {
    sub_2958A1238();
    goto LABEL_13;
  }

  v38 = v34;
  v39 = objc_msgSend_allocator(self->_metal, v35, v36, v37);
  v43 = objc_msgSend_newTextureDescriptor(v39, v40, v41, v42);

  if (!v43)
  {
    sub_2958A117C(v38, v30, &v165);
    goto LABEL_13;
  }

  v161 = outputCopy;
  v47 = objc_msgSend_desc(v43, v44, v45, v46);
  objc_msgSend_setCompressionMode_(v47, v48, 2, v49);

  v53 = objc_msgSend_desc(v43, v50, v51, v52);
  objc_msgSend_setCompressionFootprint_(v53, v54, 0, v55);

  v59 = objc_msgSend_desc(v43, v56, v57, v58);
  objc_msgSend_setUsage_(v59, v60, 7, v61);

  v65 = objc_msgSend_pixelFormat(filterCopy, v62, v63, v64);
  v69 = objc_msgSend_desc(v43, v66, v67, v68);
  objc_msgSend_setPixelFormat_(v69, v70, v65, v71);

  v75 = objc_msgSend_width(filterCopy, v72, v73, v74);
  v79 = objc_msgSend_desc(v43, v76, v77, v78);
  objc_msgSend_setWidth_(v79, v80, v75, v81);

  v85 = objc_msgSend_height(filterCopy, v82, v83, v84);
  v89 = objc_msgSend_desc(v43, v86, v87, v88);
  objc_msgSend_setHeight_(v89, v90, v85, v91);

  objc_msgSend_setLabel_(v43, v92, 0, v93);
  v97 = objc_msgSend_allocator(self->_metal, v94, v95, v96);
  v100 = objc_msgSend_newTextureWithDescriptor_(v97, v98, v43, v99);
  v171 = v100;

  if (v100)
  {
    objc_msgSend_setComputePipelineState_(v38, v101, self->_pipelineStates[2], v102);
    objc_msgSend_setTexture_atIndex_(v38, v103, filterCopy, 0);
    objc_msgSend_setTexture_atIndex_(v38, v104, lumaCopy, 1);
    objc_msgSend_setTexture_atIndex_(v38, v105, chromaCopy, 2);
    objc_msgSend_setTexture_atIndex_(v38, v106, v100, 3);
    objc_msgSend_setBytes_length_atIndex_(v38, v107, &var0, 4, 0);
    objc_msgSend_setBytes_length_atIndex_(v38, v108, &v169, 4, 1);
    v112 = objc_msgSend_threadExecutionWidth(self->_pipelineStates[2], v109, v110, v111);
    v159 = v30;
    v116 = chromaCopy;
    v117 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_pipelineStates[2], v113, v114, v115) / v112;
    outputCopy = v161;
    v160 = filterCopy;
    v165 = objc_msgSend_width(v161, v118, v119, v120) >> 1;
    v166 = objc_msgSend_height(v161, v121, v122, v123) >> 1;
    v167 = 1;
    v162 = v112;
    v163 = v117;
    v164 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v38, v124, &v165, &v162);
    objc_msgSend_setComputePipelineState_(v38, v125, self->_pipelineStates[3], v126);
    objc_msgSend_setTexture_atIndex_(v38, v127, v100, 0);
    objc_msgSend_setTexture_atIndex_(v38, v128, lumaCopy, 1);
    objc_msgSend_setTexture_atIndex_(v38, v129, v116, 2);
    objc_msgSend_setTexture_atIndex_(v38, v130, v161, 3);
    objc_msgSend_setBytes_length_atIndex_(v38, v131, &var0, 4, 0);
    objc_msgSend_setBytes_length_atIndex_(v38, v132, &v169, 4, 1);
    objc_msgSend_setBytes_length_atIndex_(v38, v133, &var2, 4, 2);
    v137 = objc_msgSend_threadExecutionWidth(self->_pipelineStates[3], v134, v135, v136);
    v141 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_pipelineStates[3], v138, v139, v140) / v137;
    v145 = objc_msgSend_width(v161, v142, v143, v144) >> 1;
    v149 = objc_msgSend_height(v161, v146, v147, v148);
    v165 = v145;
    v166 = v149 >> 1;
    chromaCopy = v116;
    v167 = 1;
    v162 = v137;
    v163 = v141;
    filterCopy = v160;
    v164 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v38, v150, &v165, &v162);
    objc_msgSend_endEncoding(v38, v151, v152, v153);
    objc_msgSend_commit(v159, v154, v155, v156);
    FigMetalDecRef();

    v157 = 0;
  }

  else
  {
    sub_2958A10B0(v43, v38, v30, &v165);
    v157 = v165;
    outputCopy = v161;
  }

LABEL_8:

  return v157;
}

- (int)refineDetectionWithGuideLuma:(id)luma guideChroma:(id)chroma params:(LowLightRefinementTuning *)params output:(id)output
{
  lumaCopy = luma;
  chromaCopy = chroma;
  outputCopy = output;
  v145 = 0;
  v146 = 0;
  if (objc_msgSend_width(self->_maskMB, v13, v14, v15) & 1) != 0 || (objc_msgSend_height(self->_maskMB, v16, v17, v18))
  {
    sub_2958A1380(v144);
LABEL_20:
    LODWORD(v97) = v144[0];
    goto LABEL_11;
  }

  v22 = objc_msgSend_allocator(self->_metal, v19, v20, v21);
  v26 = objc_msgSend_newTextureDescriptor(v22, v23, v24, v25);

  if (!v26)
  {
    sub_2958A17B0(v144);
    goto LABEL_20;
  }

  v30 = objc_msgSend_desc(v26, v27, v28, v29);
  objc_msgSend_setCompressionMode_(v30, v31, 2, v32);

  v36 = objc_msgSend_desc(v26, v33, v34, v35);
  objc_msgSend_setCompressionFootprint_(v36, v37, 0, v38);

  v42 = objc_msgSend_desc(v26, v39, v40, v41);
  objc_msgSend_setUsage_(v42, v43, 7, v44);

  v48 = objc_msgSend_pixelFormat(self->_maskMB, v45, v46, v47);
  v52 = objc_msgSend_desc(v26, v49, v50, v51);
  objc_msgSend_setPixelFormat_(v52, v53, v48, v54);

  v58 = objc_msgSend_width(self->_maskMB, v55, v56, v57);
  v62 = objc_msgSend_desc(v26, v59, v60, v61);
  objc_msgSend_setWidth_(v62, v63, v58, v64);

  v68 = objc_msgSend_height(self->_maskMB, v65, v66, v67);
  v72 = objc_msgSend_desc(v26, v69, v70, v71);
  objc_msgSend_setHeight_(v72, v73, v68, v74);

  objc_msgSend_setLabel_(v26, v75, 0, v76);
  v80 = objc_msgSend_allocator(self->_metal, v77, v78, v79);
  v83 = objc_msgSend_newTextureWithDescriptor_(v80, v81, v26, v82);
  v146 = v83;

  if (!v83)
  {
    sub_2958A1704();
    goto LABEL_20;
  }

  v85 = objc_msgSend_guidedFilter_withGuideLuma_guideChroma_params_output_(self, v84, self->_maskMB, lumaCopy, chromaCopy, params, v83);
  if (v85)
  {
    LODWORD(v97) = v85;
    sub_2958A141C(v85, v26);
    goto LABEL_11;
  }

  objc_msgSend_setLabel_(v26, v86, 0, v87);
  v91 = objc_msgSend_allocator(self->_metal, v88, v89, v90);
  v94 = objc_msgSend_newTextureWithDescriptor_(v91, v92, v26, v93);
  v145 = v94;

  if (!v94)
  {
    sub_2958A1658();
    goto LABEL_20;
  }

  *&v96 = params->var3;
  v97 = objc_msgSend_dilateTexture_withNormalizedRadius_output_(self->_greenGhostCommon, v95, v83, v94, v96);
  FigMetalDecRef();
  if (v97)
  {
    sub_2958A1494(v97, v26);
    goto LABEL_11;
  }

  v101 = objc_msgSend_commandQueue(self->_metal, v98, v99, v100);
  v97 = objc_msgSend_commandBuffer(v101, v102, v103, v104);

  if (!v97)
  {
    sub_2958A15B8();
    goto LABEL_20;
  }

  v108 = objc_msgSend_computeCommandEncoder(v97, v105, v106, v107);
  if (!v108)
  {
    sub_2958A1504(v26, v97, v144);
    goto LABEL_20;
  }

  v111 = v108;
  objc_msgSend_setComputePipelineState_(v108, v109, self->_pipelineStates[4], v110);
  objc_msgSend_setTexture_atIndex_(v111, v112, v94, 0);
  objc_msgSend_setTexture_atIndex_(v111, v113, v94, 1);
  objc_msgSend_setTexture_atIndex_(v111, v114, self->_maskMB, 2);
  objc_msgSend_setTexture_atIndex_(v111, v115, outputCopy, 3);
  objc_msgSend_setBytes_length_atIndex_(v111, v116, &params->var4, 4, 0);
  v120 = objc_msgSend_threadExecutionWidth(self->_pipelineStates[4], v117, v118, v119);
  v124 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_pipelineStates[4], v121, v122, v123) / v120;
  v128 = chromaCopy;
  v129 = lumaCopy;
  v130 = objc_msgSend_width(self->_maskMB, v125, v126, v127) >> 1;
  v134 = objc_msgSend_height(self->_maskMB, v131, v132, v133);
  v144[0] = v130;
  v144[1] = v134 >> 1;
  lumaCopy = v129;
  chromaCopy = v128;
  v144[2] = 1;
  v143[0] = v120;
  v143[1] = v124;
  v143[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v111, v135, v144, v143);
  objc_msgSend_endEncoding(v111, v136, v137, v138);
  objc_msgSend_commit(v97, v139, v140, v141);
  FigMetalDecRef();

  LODWORD(v97) = 0;
LABEL_11:

  return v97;
}

- (int)detectionWithRefPyramid:(id)pyramid otherPyramid:(id)otherPyramid refDetection:(BOOL)detection refProperties:(frameProperties_t *)properties otherProperties:(frameProperties_t *)otherProperties maskMBBinary:(id)binary params:(LowLightTuning *)params
{
  detectionCopy = detection;
  pyramidCopy = pyramid;
  otherPyramidCopy = otherPyramid;
  binaryCopy = binary;
  if (detectionCopy)
  {
    v21 = objc_msgSend_allocator(self->_metal, v17, v18, v19);
    v25 = objc_msgSend_newTextureDescriptor(v21, v22, v23, v24);

    if (v25)
    {
      v29 = objc_msgSend_desc(v25, v26, v27, v28);
      objc_msgSend_setUsage_(v29, v30, 7, v31);

      v35 = objc_msgSend_desc(v25, v32, v33, v34);
      objc_msgSend_setPixelFormat_(v35, v36, 65, v37);

      v41 = objc_msgSend_width(pyramidCopy[self->_detectionLvl + 61], v38, v39, v40);
      v45 = objc_msgSend_desc(v25, v42, v43, v44);
      objc_msgSend_setWidth_(v45, v46, v41, v47);

      v51 = objc_msgSend_height(pyramidCopy[self->_detectionLvl + 61], v48, v49, v50);
      v55 = objc_msgSend_desc(v25, v52, v53, v54);
      objc_msgSend_setHeight_(v55, v56, v51, v57);

      objc_msgSend_setLabel_(v25, v58, 0, v59);
      v63 = objc_msgSend_allocator(self->_metal, v60, v61, v62);
      v66 = objc_msgSend_newTextureWithDescriptor_(v63, v64, v25, v65);
      refChroma = self->_refChroma;
      self->_refChroma = v66;

      v69 = self->_refChroma;
      if (v69)
      {
        v70 = objc_msgSend_downscaleInput_output_(self->_greenGhostCommon, v68, pyramidCopy[self->_detectionLvl + 60], v69);
        if (v70)
        {
          v104 = v70;
          sub_2958A190C();
LABEL_8:

          goto LABEL_12;
        }

        v74 = objc_msgSend_desc(v25, v71, v72, v73);
        objc_msgSend_setCompressionMode_(v74, v75, 2, v76);

        v80 = objc_msgSend_desc(v25, v77, v78, v79);
        objc_msgSend_setCompressionFootprint_(v80, v81, 0, v82);

        v86 = objc_msgSend_desc(v25, v83, v84, v85);
        objc_msgSend_setPixelFormat_(v86, v87, 25, v88);

        objc_msgSend_setLabel_(v25, v89, 0, v90);
        v94 = objc_msgSend_allocator(self->_metal, v91, v92, v93);
        v97 = objc_msgSend_newTextureWithDescriptor_(v94, v95, v25, v96);
        maskSB = self->_maskSB;
        self->_maskSB = v97;

        if (self->_maskSB)
        {
          v100 = pyramidCopy[self->_detectionLvl + 42];
          v101 = self->_refChroma;
          v102 = *&params[2].maxMaskAverage;
          v103 = *&params[4].maxMaskAverage;
          v108[2] = *(params + 56);
          v108[3] = v103;
          v108[4] = *(params + 88);
          v108[0] = *(params + 24);
          v108[1] = v102;
          v104 = objc_msgSend_singleBracketDetectionWithLuma_chroma_params_(self, v99, v100, v101, v108);
          if (v104)
          {
            sub_2958A196C();
          }

          goto LABEL_8;
        }

        sub_2958A19CC(v108);
      }

      else
      {
        sub_2958A1A68(v108);
      }
    }

    else
    {
      sub_2958A1B04(v108);
    }

    v104 = v108[0];
    goto LABEL_8;
  }

  v105 = objc_msgSend_computeTemporalVariationsRefImg_OtherImg_refProperties_otherProperties_params_(self, v17, pyramidCopy[self->_detectionLvl + 42], otherPyramidCopy[self->_detectionLvl + 42], properties, otherProperties, *&params[6].maxMaskAverage);
  if (v105)
  {
    v104 = v105;
    sub_2958A184C();
  }

  else
  {
    v104 = objc_msgSend_refineDetectionWithGuideLuma_guideChroma_params_output_(self, v106, pyramidCopy[self->_detectionLvl + 42], self->_refChroma, &params[7], binaryCopy);
    if (v104)
    {
      sub_2958A18AC();
    }
  }

LABEL_12:

  return v104;
}

- (int)canMitigationProceedWithMaxMaskAverage:(float)average
{
  v5 = objc_opt_new();
  *objc_msgSend_contents(self->_sumMaskBuffer, v6, v7, v8) = 0;
  v12 = objc_msgSend_commandQueue(self->_metal, v9, v10, v11);
  v16 = objc_msgSend_commandBuffer(v12, v13, v14, v15);

  v20 = objc_msgSend_computeCommandEncoder(v16, v17, v18, v19);
  v23 = v20;
  if (v20)
  {
    objc_msgSend_setComputePipelineState_(v20, v21, self->_pipelineStates[0], v22);
    objc_msgSend_setTexture_atIndex_(v23, v24, self->_maskSB, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v23, v25, self->_sumMaskBuffer, 0, 0);
    v29 = objc_msgSend_threadExecutionWidth(self->_pipelineStates[0], v26, v27, v28);
    v33 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_pipelineStates[0], v30, v31, v32) / v29;
    v37 = objc_msgSend_width(self->_maskSB, v34, v35, v36);
    v41 = objc_msgSend_height(self->_maskSB, v38, v39, v40);
    v74[0] = v37;
    v74[1] = v41;
    v74[2] = 1;
    v73[0] = v29;
    v73[1] = v33;
    v73[2] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v23, v42, v74, v73);
    objc_msgSend_endEncoding(v23, v43, v44, v45);
    objc_msgSend_commit(v16, v46, v47, v48);
    objc_msgSend_waitForIdle(self->_metal, v49, v50, v51);
    v55 = *objc_msgSend_contents(self->_sumMaskBuffer, v52, v53, v54);
    v59 = objc_msgSend_width(self->_maskSB, v56, v57, v58);
    v63 = v55 / ((objc_msgSend_height(self->_maskSB, v60, v61, v62) * v59) * 255.0);
    *&v55 = v63;
    LODWORD(v63) = LODWORD(v55);
    v67 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v64, v65, v66, v63);
    objc_msgSend_setObject_forKeyedSubscript_(v5, v68, v67, @"maskAverage");

    WeakRetained = objc_loadWeakRetained(&self->_sidecarWriter);
    objc_msgSend_addToSidecar_forKey_(WeakRetained, v70, v5, @"GreenGhostLowLight");

    v71 = 0;
    self->_canMitigationProceed = *&v55 < average;
  }

  else
  {
    sub_2958A1BA0(v74);
    v71 = v74[0];
  }

  return v71;
}

- (void)scaleFaceBodyBoundariesWithSizeRatio:(float)ratio
{
  nFaces = self->_faceBodyBoundaries.nFaces;
  self->_faceBodyBoundariesDownscaled.nFaces = nFaces;
  if (nFaces)
  {
    selfCopy = self;
    do
    {
      selfCopy[38] = vmulq_n_f32(selfCopy[16], ratio);
      ++selfCopy;
      --nFaces;
    }

    while (nFaces);
  }

  v5 = *&self->_anon_f4[172];
  *&self->_anon_254[172] = v5;
  if (v5)
  {
    v6 = &self->_anon_f4[188];
    do
    {
      v6[22] = vmulq_n_f32(*v6, ratio);
      ++v6;
      --v5;
    }

    while (v5);
  }
}

- (int)allocateFusionWeightTexturesWithWidth:(unint64_t)width height:(unint64_t)height
{
  v7 = objc_msgSend_allocator(self->_metal, a2, width, height);
  v11 = objc_msgSend_newTextureDescriptor(v7, v8, v9, v10);

  if (!v11)
  {
    sub_2958A1E10(&v120);
    v42 = 0;
LABEL_11:
    v118 = v120;
    goto LABEL_6;
  }

  v15 = objc_msgSend_desc(v11, v12, v13, v14);
  objc_msgSend_setUsage_(v15, v16, 7, v17);

  v21 = objc_msgSend_desc(v11, v18, v19, v20);
  objc_msgSend_setWidth_(v21, v22, width, v23);

  v27 = objc_msgSend_desc(v11, v24, v25, v26);
  objc_msgSend_setHeight_(v27, v28, height, v29);

  v33 = objc_msgSend_desc(v11, v30, v31, v32);
  objc_msgSend_setPixelFormat_(v33, v34, 25, v35);

  v39 = objc_msgSend_allocator(self->_metal, v36, v37, v38);
  v42 = objc_msgSend_newTextureDescriptor_(v39, v40, 0, v41);

  if (!v42)
  {
    sub_2958A1D74(&v120);
    goto LABEL_11;
  }

  v46 = objc_msgSend_desc(v11, v43, v44, v45);
  v50 = objc_msgSend_usage(v46, v47, v48, v49);
  v54 = objc_msgSend_desc(v42, v51, v52, v53);
  objc_msgSend_setUsage_(v54, v55, v50, v56);

  v60 = objc_msgSend_desc(v11, v57, v58, v59);
  v64 = objc_msgSend_width(v60, v61, v62, v63);
  v68 = objc_msgSend_desc(v42, v65, v66, v67);
  objc_msgSend_setWidth_(v68, v69, v64, v70);

  v74 = objc_msgSend_desc(v11, v71, v72, v73);
  v78 = objc_msgSend_height(v74, v75, v76, v77);
  v82 = objc_msgSend_desc(v42, v79, v80, v81);
  objc_msgSend_setHeight_(v82, v83, v78, v84);

  v88 = objc_msgSend_desc(v11, v85, v86, v87);
  v92 = objc_msgSend_pixelFormat(v88, v89, v90, v91);
  v96 = objc_msgSend_desc(v42, v93, v94, v95);
  objc_msgSend_setPixelFormat_(v96, v97, v92, v98);

  objc_msgSend_setLabel_(v42, v99, 0, v100);
  v104 = objc_msgSend_allocator(self->_metal, v101, v102, v103);
  v106 = objc_msgSend_newTextureWithDescriptor_subAllocatorID_(v104, v105, v42, 0);
  ggMaxFusionWeights = self->_ggMaxFusionWeights;
  self->_ggMaxFusionWeights = v106;

  if (!self->_ggMaxFusionWeights)
  {
    sub_2958A1CD8(&v120);
    goto LABEL_11;
  }

  objc_msgSend_setLabel_(v11, v108, 0, v109);
  v113 = objc_msgSend_allocator(self->_metal, v110, v111, v112);
  v116 = objc_msgSend_newTextureWithDescriptor_(v113, v114, v11, v115);
  ggFusionWeightsAcc = self->_ggFusionWeightsAcc;
  self->_ggFusionWeightsAcc = v116;

  if (!self->_ggFusionWeightsAcc)
  {
    sub_2958A1C3C(&v120);
    goto LABEL_11;
  }

  v118 = 0;
LABEL_6:

  return v118;
}

- (uint64_t)computeFusionWeightsRefLuma:(__n128)luma refChroma:(__n128)chroma otherLuma:(__n128)otherLuma otherChroma:(uint64_t)otherChroma maskMBBinary:(void *)binary innerMask:(void *)mask relativeBrightness:(void *)brightness homography:(void *)self0 output:(void *)self1 params:(void *)self2
{
  v217[0] = luma;
  v217[1] = chroma;
  v217[2] = otherLuma;
  binaryCopy = binary;
  maskCopy = mask;
  brightnessCopy = brightness;
  homographyCopy = homography;
  outputCopy = output;
  paramsCopy = params;
  v216 = a2;
  v24 = a13;
  v214 = 0;
  v215 = 0;
  v213 = 0;
  if (objc_msgSend_isCompressed(v24, v25, v26, v27))
  {
    sub_2958A23C4(&v210);
LABEL_20:
    v198 = v210;
    goto LABEL_12;
  }

  v31 = objc_msgSend_allocator(*(self + 8), v28, v29, v30);
  v35 = objc_msgSend_newTextureDescriptor(v31, v32, v33, v34);

  if (!v35)
  {
    sub_2958A2328(&v210);
    goto LABEL_20;
  }

  v39 = objc_msgSend_desc(v35, v36, v37, v38);
  objc_msgSend_setCompressionMode_(v39, v40, 2, v41);

  v45 = objc_msgSend_desc(v35, v42, v43, v44);
  objc_msgSend_setCompressionFootprint_(v45, v46, 0, v47);

  v51 = objc_msgSend_desc(v35, v48, v49, v50);
  objc_msgSend_setUsage_(v51, v52, 7, v53);

  v57 = objc_msgSend_pixelFormat(outputCopy, v54, v55, v56);
  v61 = objc_msgSend_desc(v35, v58, v59, v60);
  objc_msgSend_setPixelFormat_(v61, v62, v57, v63);

  v67 = objc_msgSend_width(outputCopy, v64, v65, v66);
  v71 = objc_msgSend_desc(v35, v68, v69, v70);
  objc_msgSend_setWidth_(v71, v72, v67, v73);

  v77 = objc_msgSend_height(outputCopy, v74, v75, v76);
  v81 = objc_msgSend_desc(v35, v78, v79, v80);
  objc_msgSend_setHeight_(v81, v82, v77, v83);

  objc_msgSend_setLabel_(v35, v84, 0, v85);
  v89 = objc_msgSend_allocator(*(self + 8), v86, v87, v88);
  v92 = objc_msgSend_newTextureWithDescriptor_(v89, v90, v35, v91);
  v215 = v92;

  if (!v92)
  {
    sub_2958A227C();
    goto LABEL_20;
  }

  objc_msgSend_setLabel_(v35, v93, 0, v94);
  v98 = objc_msgSend_allocator(*(self + 8), v95, v96, v97);
  v101 = objc_msgSend_newTextureWithDescriptor_(v98, v99, v35, v100);
  v214 = v101;

  if (!v101)
  {
    sub_2958A21D0();
    goto LABEL_20;
  }

  objc_msgSend_setLabel_(v35, v102, 0, v103);
  v107 = objc_msgSend_allocator(*(self + 8), v104, v105, v106);
  v213 = objc_msgSend_newTextureWithDescriptor_(v107, v108, v35, v109);

  v202 = v213;
  if (!v213)
  {
    sub_2958A2124();
    goto LABEL_20;
  }

  v113 = objc_msgSend_commandQueue(*(self + 8), v110, v111, v112);
  v117 = objc_msgSend_commandBuffer(v113, v114, v115, v116);

  if (!v117)
  {
    sub_2958A2078();
    goto LABEL_20;
  }

  v121 = objc_msgSend_computeCommandEncoder(v117, v118, v119, v120);
  if (!v121)
  {
    sub_2958A1FBC(v117, v35, &v210);
    goto LABEL_20;
  }

  v124 = v121;
  v200 = v35;
  objc_msgSend_setComputePipelineState_(v121, v122, *(self + 56), v123);
  objc_msgSend_setTexture_atIndex_(v124, v125, binaryCopy, 0);
  objc_msgSend_setTexture_atIndex_(v124, v126, maskCopy, 1);
  objc_msgSend_setTexture_atIndex_(v124, v127, brightnessCopy, 2);
  objc_msgSend_setTexture_atIndex_(v124, v128, homographyCopy, 3);
  v201 = outputCopy;
  objc_msgSend_setTexture_atIndex_(v124, v129, outputCopy, 4);
  objc_msgSend_setTexture_atIndex_(v124, v130, paramsCopy, 5);
  objc_msgSend_setTexture_atIndex_(v124, v131, v101, 6);
  objc_msgSend_setTexture_atIndex_(v124, v132, v92, 7);
  objc_msgSend_setBytes_length_atIndex_(v124, v133, &v216, 4, 0);
  objc_msgSend_setBytes_length_atIndex_(v124, v134, v217, 48, 1);
  objc_msgSend_setBytes_length_atIndex_(v124, v135, a14, 40, 2);
  v139 = v92;
  v140 = maskCopy;
  v141 = objc_msgSend_threadExecutionWidth(*(self + 56), v136, v137, v138);
  v145 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(self + 56), v142, v143, v144) / v141;
  v203 = v24;
  v210 = objc_msgSend_width(v101, v146, v147, v148);
  v211 = objc_msgSend_height(v101, v149, v150, v151);
  v212 = 1;
  v207 = v141;
  v208 = v145;
  v209 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v124, v152, &v210, &v207);
  objc_msgSend_setComputePipelineState_(v124, v153, *(self + 64), v154);
  objc_msgSend_setTexture_atIndex_(v124, v155, v139, 0);
  objc_msgSend_setTexture_atIndex_(v124, v156, paramsCopy, 1);
  objc_msgSend_setTexture_atIndex_(v124, v157, v101, 2);
  objc_msgSend_setTexture_atIndex_(v124, v158, binaryCopy, 3);
  objc_msgSend_setTexture_atIndex_(v124, v159, v140, 4);
  objc_msgSend_setTexture_atIndex_(v124, v160, brightnessCopy, 5);
  v161 = homographyCopy;
  objc_msgSend_setTexture_atIndex_(v124, v162, homographyCopy, 6);
  objc_msgSend_setTexture_atIndex_(v124, v163, *(self + 176), 7);
  objc_msgSend_setTexture_atIndex_(v124, v164, v24, 8);
  objc_msgSend_setBytes_length_atIndex_(v124, v165, self + 144, 1, 0);
  objc_msgSend_setBytes_length_atIndex_(v124, v166, &v216, 4, 1);
  objc_msgSend_setBytes_length_atIndex_(v124, v167, v217, 48, 2);
  objc_msgSend_setBytes_length_atIndex_(v124, v168, a14, 40, 3);
  objc_msgSend_setBytes_length_atIndex_(v124, v169, self + 592, 352, 4);
  v173 = objc_msgSend_threadExecutionWidth(*(self + 64), v170, v171, v172);
  v177 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(self + 64), v174, v175, v176) / v173;
  v181 = objc_msgSend_width(v101, v178, v179, v180);
  v185 = objc_msgSend_height(v101, v182, v183, v184);
  v210 = v181;
  v211 = v185;
  v24 = v203;
  v212 = 1;
  v207 = v173;
  v208 = v177;
  v209 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v124, v186, &v210, &v207);
  objc_msgSend_endEncoding(v124, v187, v188, v189);
  objc_msgSend_commit(v117, v190, v191, v192);
  *&v193 = a14[1].var1;
  v195 = objc_msgSend_erodeTexture_withNormalizedRadius_output_(*(self + 120), v194, v203, v202, v193);
  if (v195)
  {
    v198 = v195;
    sub_2958A1EAC(v195, v124, v117, v200);
  }

  else
  {
    v197 = objc_msgSend_boxFilter_withRadius_output_(*(self + 120), v196, v202, a14[1].var2, v203);
    v198 = v197;
    if (v197)
    {
      sub_2958A1F34(v197, v124, v117, v200);
    }

    else
    {
      FigMetalDecRef();
      FigMetalDecRef();
      FigMetalDecRef();
    }
  }

  maskCopy = v140;
  homographyCopy = v161;
  outputCopy = v201;
LABEL_12:

  return v198;
}

- (uint64_t)prepareFusionRefLuma:(double)luma refChroma:(double)chroma otherLuma:(double)otherLuma otherChroma:(uint64_t)otherChroma maskMBBinary:(void *)binary relativeBrightness:(void *)brightness homography:(void *)homography output:(void *)self0 params:(void *)self1
{
  binaryCopy = binary;
  brightnessCopy = brightness;
  homographyCopy = homography;
  outputCopy = output;
  paramsCopy = params;
  v25 = a12;
  v112 = 0;
  v29 = objc_msgSend_allocator(self[1], v26, v27, v28);
  v33 = objc_msgSend_newTextureDescriptor(v29, v30, v31, v32);

  if (!v33)
  {
    sub_2958A25BC(&v113);
LABEL_12:
    v107 = v113;
    goto LABEL_9;
  }

  v37 = objc_msgSend_desc(v33, v34, v35, v36);
  objc_msgSend_setCompressionMode_(v37, v38, 2, v39);

  v43 = objc_msgSend_desc(v33, v40, v41, v42);
  objc_msgSend_setCompressionFootprint_(v43, v44, 0, v45);

  v49 = objc_msgSend_desc(v33, v46, v47, v48);
  objc_msgSend_setUsage_(v49, v50, 7, v51);

  v55 = objc_msgSend_pixelFormat(paramsCopy, v52, v53, v54);
  v59 = objc_msgSend_desc(v33, v56, v57, v58);
  objc_msgSend_setPixelFormat_(v59, v60, v55, v61);

  v65 = objc_msgSend_width(paramsCopy, v62, v63, v64);
  v69 = objc_msgSend_desc(v33, v66, v67, v68);
  objc_msgSend_setWidth_(v69, v70, v65, v71);

  v75 = objc_msgSend_height(paramsCopy, v72, v73, v74);
  v79 = objc_msgSend_desc(v33, v76, v77, v78);
  objc_msgSend_setHeight_(v79, v80, v75, v81);

  objc_msgSend_setLabel_(v33, v82, 0, v83);
  v87 = objc_msgSend_allocator(self[1], v84, v85, v86);
  v90 = objc_msgSend_newTextureWithDescriptor_(v87, v88, v33, v89);
  v112 = v90;

  if (!v90)
  {
    sub_2958A2520(&v113);
    goto LABEL_12;
  }

  v94 = objc_msgSend_width(paramsCopy, v91, v92, v93);
  if (v94 <= objc_msgSend_height(paramsCopy, v95, v96, v97))
  {
    v101 = objc_msgSend_height(paramsCopy, v98, v99, v100);
  }

  else
  {
    v101 = objc_msgSend_width(paramsCopy, v98, v99, v100);
  }

  *&v103 = 1.0 / v101;
  v104 = objc_msgSend_erodeTexture_withNormalizedRadius_output_(self[15], v102, paramsCopy, v90, v103);
  if (v104)
  {
    v107 = v104;
    sub_2958A2460();
  }

  else
  {
    *&v106 = a2;
    v107 = objc_msgSend_computeFusionWeightsRefLuma_refChroma_otherLuma_otherChroma_maskMBBinary_innerMask_relativeBrightness_homography_output_params_(self, v105, binaryCopy, brightnessCopy, homographyCopy, outputCopy, paramsCopy, v90, v106, luma, chroma, otherLuma, v25, a13);
    if (v107)
    {
      sub_2958A24C0();
    }

    else
    {
      FigMetalDecRef();
    }
  }

LABEL_9:

  return v107;
}

- (int)fuseRefPyramid:(id)pyramid withOtherPyramid:(id)otherPyramid refProperties:(frameProperties_t *)properties otherProperties:(frameProperties_t *)otherProperties currentFusionWeights:(id)weights relativeBrightness:(float)brightness
{
  pyramidCopy = pyramid;
  otherPyramidCopy = otherPyramid;
  weightsCopy = weights;
  v19 = objc_msgSend_width(pyramidCopy[self->_repairLvl + 42], v16, v17, v18);
  v23 = objc_msgSend_height(pyramidCopy[self->_repairLvl + 42], v20, v21, v22);
  y_low = LODWORD(properties[1].meta.ROI.origin.y);
  v25 = *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].GG.highlights;
  v85[10] = *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].RB.shadows;
  v85[11] = v25;
  v85[12] = *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].BG.mid;
  v26 = *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GR.shadows;
  v85[6] = *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].RR.mid;
  v85[7] = v26;
  v27 = *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].BB.mid;
  v85[8] = *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GB.highlights;
  v85[9] = v27;
  v28 = *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].RG.mid;
  v85[2] = *&properties[1].meta.ltmCurves.ltmLut.ccmV1.rightPadding;
  v85[3] = v28;
  v29 = *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].BR.highlights;
  v85[4] = *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].GG.shadows;
  v85[5] = v29;
  v30 = *&properties[1].meta.ltmCurves.ltmLut.version;
  v85[0] = *&properties[1].meta.ROI.size.height;
  v85[1] = v30;
  v31 = *&otherProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].GG.highlights;
  v84[10] = *&otherProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].RB.shadows;
  v84[11] = v31;
  v84[12] = *&otherProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].BG.mid;
  v32 = *&otherProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GR.shadows;
  v84[6] = *&otherProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].RR.mid;
  v84[7] = v32;
  v33 = *&otherProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].BB.mid;
  v84[8] = *&otherProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GB.highlights;
  v84[9] = v33;
  v34 = *&otherProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].RG.mid;
  v84[2] = *&otherProperties[1].meta.ltmCurves.ltmLut.ccmV1.rightPadding;
  v84[3] = v34;
  v35 = *&otherProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].BR.highlights;
  v84[4] = *&otherProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].GG.shadows;
  v84[5] = v35;
  v36 = *&otherProperties[1].meta.ltmCurves.ltmLut.version;
  v84[0] = *&otherProperties[1].meta.ROI.size.height;
  v84[1] = v36;
  v80[0] = 0;
  v80[1] = 0;
  LOBYTE(v80[0]) = self->_isFirstNonRefFrame;
  *(v80 + 1) = y_low == 1;
  *(v80 + 2) = y_low == 2;
  *(v80 + 1) = brightness;
  v37 = *&otherProperties[1].meta.exposureParams.luxLevel;
  v81 = *&otherProperties[1].meta.exposureParams.conversion_gain;
  v82 = v37;
  v83 = *&otherProperties[1].meta.exposureParams.CCT;
  v41 = objc_msgSend_commandQueue(self->_metal, v38, v39, v40);
  v45 = objc_msgSend_commandBuffer(v41, v42, v43, v44);

  if (!v45)
  {
    sub_2958A26F4(v79);
LABEL_7:
    v74 = v79[0];
    v59 = weightsCopy;
    goto LABEL_4;
  }

  v49 = objc_msgSend_computeCommandEncoder(v45, v46, v47, v48);
  if (!v49)
  {
    sub_2958A2658(v79);
    goto LABEL_7;
  }

  v52 = v49;
  objc_msgSend_setComputePipelineState_(v49, v50, self->_pipelineStates[7], v51);
  objc_msgSend_setImageblockWidth_height_(v52, v53, 32, 32);
  objc_msgSend_setTexture_atIndex_(v52, v54, pyramidCopy[self->_repairLvl + 42], 0);
  objc_msgSend_setTexture_atIndex_(v52, v55, pyramidCopy[self->_repairLvl + 62], 1);
  objc_msgSend_setTexture_atIndex_(v52, v56, otherPyramidCopy[self->_repairLvl + 42], 2);
  objc_msgSend_setTexture_atIndex_(v52, v57, otherPyramidCopy[self->_repairLvl + 62], 3);
  objc_msgSend_setTexture_atIndex_(v52, v58, self->_maskMB, 4);
  v59 = weightsCopy;
  objc_msgSend_setTexture_atIndex_(v52, v60, weightsCopy, 5);
  objc_msgSend_setTexture_atIndex_(v52, v61, self->_ggFusionWeightsAcc, 6);
  objc_msgSend_setTexture_atIndex_(v52, v62, self->_fusedLuma, 7);
  objc_msgSend_setTexture_atIndex_(v52, v63, self->_fusedChroma, 8);
  objc_msgSend_setBytes_length_atIndex_(v52, v64, v80, 64, 0);
  objc_msgSend_setBytes_length_atIndex_(v52, v65, v85, 208, 1);
  objc_msgSend_setBytes_length_atIndex_(v52, v66, v84, 208, 2);
  v79[0] = v19 >> 1;
  v79[1] = v23 >> 1;
  v79[2] = 1;
  v77 = vdupq_n_s64(0x10uLL);
  v78 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v52, v67, v79, &v77);
  objc_msgSend_endEncoding(v52, v68, v69, v70);
  objc_msgSend_commit(v45, v71, v72, v73);

  v74 = 0;
LABEL_4:

  return v74;
}

- (int)updateFusionWeights:(id)weights
{
  weightsCopy = weights;
  v8 = objc_msgSend_commandQueue(self->_metal, v5, v6, v7);
  v12 = objc_msgSend_commandBuffer(v8, v9, v10, v11);

  if (!v12)
  {
    sub_2958A282C(v43);
LABEL_7:
    v39 = v43[0];
    goto LABEL_4;
  }

  v16 = objc_msgSend_computeCommandEncoder(v12, v13, v14, v15);
  if (!v16)
  {
    sub_2958A2790(v43);
    goto LABEL_7;
  }

  v19 = v16;
  objc_msgSend_setComputePipelineState_(v16, v17, self->_pipelineStates[8], v18);
  objc_msgSend_setImageblockWidth_height_(v19, v20, 16, 16);
  objc_msgSend_setTexture_atIndex_(v19, v21, weightsCopy, 0);
  objc_msgSend_setTexture_atIndex_(v19, v22, self->_maskMB, 1);
  objc_msgSend_setTexture_atIndex_(v19, v23, self->_ggFusionWeightsAcc, 2);
  objc_msgSend_setTexture_atIndex_(v19, v24, self->_ggMaxFusionWeights, 3);
  objc_msgSend_setBytes_length_atIndex_(v19, v25, &self->_isFirstNonRefFrame, 1, 0);
  v43[0] = objc_msgSend_width(weightsCopy, v26, v27, v28);
  v43[1] = objc_msgSend_height(weightsCopy, v29, v30, v31);
  v43[2] = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v19, v32, v43, &v41);
  objc_msgSend_endEncoding(v19, v33, v34, v35);
  objc_msgSend_commit(v12, v36, v37, v38);

  v39 = 0;
LABEL_4:

  return v39;
}

- (int)fuseRefPyramid:(id)pyramid withOtherPyramid:(id)otherPyramid refProperties:(frameProperties_t *)properties otherProperties:(frameProperties_t *)otherProperties maskMBBinary:(id)binary params:(LowLightFusionTuning *)params
{
  pyramidCopy = pyramid;
  otherPyramidCopy = otherPyramid;
  binaryCopy = binary;
  v17 = sub_295820728(&properties->meta.exposureParams, &otherProperties->meta.exposureParams, properties);
  v94 = 0;
  v21 = objc_msgSend_allocator(self->_metal, v18, v19, v20);
  v25 = objc_msgSend_newTextureDescriptor(v21, v22, v23, v24);

  if (v25)
  {
    v29 = objc_msgSend_desc(v25, v26, v27, v28);
    objc_msgSend_setCompressionMode_(v29, v30, 2, v31);

    v35 = objc_msgSend_desc(v25, v32, v33, v34);
    objc_msgSend_setCompressionFootprint_(v35, v36, 0, v37);

    v41 = objc_msgSend_desc(v25, v38, v39, v40);
    objc_msgSend_setUsage_(v41, v42, 7, v43);

    v47 = objc_msgSend_pixelFormat(pyramidCopy[self->_detectionLvl + 42], v44, v45, v46);
    v51 = objc_msgSend_desc(v25, v48, v49, v50);
    objc_msgSend_setPixelFormat_(v51, v52, v47, v53);

    v57 = objc_msgSend_width(pyramidCopy[self->_detectionLvl + 42], v54, v55, v56);
    v61 = objc_msgSend_desc(v25, v58, v59, v60);
    objc_msgSend_setWidth_(v61, v62, v57, v63);

    v67 = objc_msgSend_height(pyramidCopy[self->_detectionLvl + 42], v64, v65, v66);
    v71 = objc_msgSend_desc(v25, v68, v69, v70);
    objc_msgSend_setHeight_(v71, v72, v67, v73);

    objc_msgSend_setLabel_(v25, v74, 0, v75);
    v79 = objc_msgSend_allocator(self->_metal, v76, v77, v78);
    v82 = objc_msgSend_newTextureWithDescriptor_(v79, v80, v25, v81);
    v94 = v82;

    if (v82)
    {
      v85 = 8 * self->_detectionLvl - 8;
      *&v84 = v17;
      v86 = objc_msgSend_prepareFusionRefLuma_refChroma_otherLuma_otherChroma_maskMBBinary_relativeBrightness_homography_output_params_(self, v83, *(pyramidCopy + v85 + 336), *(pyramidCopy + v85 + 496), *&otherPyramidCopy[v85 + 336], *&otherPyramidCopy[v85 + 496], binaryCopy, v82, v84, *&otherProperties[1].meta.exposureParams.conversion_gain, *&otherProperties[1].meta.exposureParams.luxLevel, *&otherProperties[1].meta.exposureParams.CCT, params);
      if (v86)
      {
        updated = v86;
        sub_2958A28C8();
      }

      else
      {
        *&v88 = v17;
        v89 = objc_msgSend_fuseRefPyramid_withOtherPyramid_refProperties_otherProperties_currentFusionWeights_relativeBrightness_(self, v87, pyramidCopy, otherPyramidCopy, properties, otherProperties, v82, v88);
        if (v89)
        {
          updated = v89;
          sub_2958A2928();
        }

        else
        {
          updated = objc_msgSend_updateFusionWeights_(self, v90, v82, v91);
          if (updated)
          {
            sub_2958A2988();
          }

          else
          {
            FigMetalDecRef();
          }
        }
      }
    }

    else
    {
      sub_2958A29E8(&v95);
      updated = v95;
    }
  }

  else
  {
    sub_2958A2A84(&v95);
    updated = v95;
  }

  return updated;
}

- (int)mixFusedTexturesWithRefLuma:(id)luma refChroma:(id)chroma refProperties:(frameProperties_t *)properties tuningParams:(id)params
{
  lumaCopy = luma;
  chromaCopy = chroma;
  paramsCopy = params;
  v16 = paramsCopy;
  v175 = 0;
  if (paramsCopy)
  {
    objc_msgSend_tuningParams(paramsCopy, v13, v14, v15);
    v17 = DWORD2(v168);
    objc_msgSend_tuningParams(v16, v18, v19, v20);
    v21 = HIDWORD(v150);
  }

  else
  {
    v174 = 0;
    v172 = 0u;
    v173 = 0u;
    v170 = 0u;
    v171 = 0u;
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v21 = 0;
    v17 = 0;
    v156 = 0;
  }

  v157 = v21;
  v22 = objc_msgSend_width(self->_fusedLuma, v13, v14, v15);
  v26 = objc_msgSend_height(self->_fusedLuma, v23, v24, v25);
  y_low = LODWORD(properties[1].meta.ROI.origin.y);
  v139 = y_low == 1;
  v138 = y_low == 2;
  v31 = *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].GG.highlights;
  v137[10] = *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].RB.shadows;
  v137[11] = v31;
  v137[12] = *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].BG.mid;
  v32 = *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GR.shadows;
  v137[6] = *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].RR.mid;
  v137[7] = v32;
  v33 = *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].BB.mid;
  v137[8] = *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GB.highlights;
  v137[9] = v33;
  v34 = *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].RG.mid;
  v137[2] = *&properties[1].meta.ltmCurves.ltmLut.ccmV1.rightPadding;
  v137[3] = v34;
  v35 = *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].BR.highlights;
  v137[4] = *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].GG.shadows;
  v137[5] = v35;
  v36 = *&properties[1].meta.ltmCurves.ltmLut.version;
  v137[0] = *&properties[1].meta.ROI.size.height;
  v137[1] = v36;
  if (!self->_canMitigationProceed || !self->_maskMB || !self->_ggFusionWeightsAcc)
  {
    goto LABEL_13;
  }

  v37 = v26;
  v38 = objc_msgSend_allocator(self->_metal, v27, v28, v29);
  v42 = objc_msgSend_newTextureDescriptor(v38, v39, v40, v41);

  if (!v42)
  {
    sub_2958A2FDC(v136);
LABEL_20:
    v132 = v136[0];
    goto LABEL_14;
  }

  v46 = objc_msgSend_desc(v42, v43, v44, v45);
  objc_msgSend_setCompressionMode_(v46, v47, 2, v48);

  v52 = objc_msgSend_desc(v42, v49, v50, v51);
  objc_msgSend_setCompressionFootprint_(v52, v53, 0, v54);

  v58 = objc_msgSend_desc(v42, v55, v56, v57);
  objc_msgSend_setUsage_(v58, v59, 7, v60);

  v64 = objc_msgSend_desc(v42, v61, v62, v63);
  objc_msgSend_setPixelFormat_(v64, v65, 25, v66);

  v70 = objc_msgSend_width(self->_maskMB, v67, v68, v69);
  v74 = objc_msgSend_desc(v42, v71, v72, v73);
  objc_msgSend_setWidth_(v74, v75, v70, v76);

  v80 = objc_msgSend_height(self->_maskMB, v77, v78, v79);
  v84 = objc_msgSend_desc(v42, v81, v82, v83);
  objc_msgSend_setHeight_(v84, v85, v80, v86);

  objc_msgSend_setLabel_(v42, v87, 0, v88);
  v92 = objc_msgSend_allocator(self->_metal, v89, v90, v91);
  v95 = objc_msgSend_newTextureWithDescriptor_(v92, v93, v42, v94);
  v175 = v95;

  if (!v95)
  {
    sub_2958A2F3C();
    goto LABEL_20;
  }

  LODWORD(v97) = v17;
  v98 = objc_msgSend_erodeTexture_withNormalizedRadius_output_(self->_greenGhostCommon, v96, self->_maskMB, v95, v97);
  if (v98)
  {
    v132 = v98;
    sub_2958A2D78(v98, v42);
    goto LABEL_14;
  }

  v102 = objc_msgSend_commandQueue(self->_metal, v99, v100, v101);
  v106 = objc_msgSend_commandBuffer(v102, v103, v104, v105);

  if (!v106)
  {
    sub_2958A2E9C();
    goto LABEL_20;
  }

  v110 = objc_msgSend_computeCommandEncoder(v106, v107, v108, v109);
  if (!v110)
  {
    sub_2958A2DE8(v106, v42, v136);
    goto LABEL_20;
  }

  v113 = v110;
  objc_msgSend_setComputePipelineState_(v110, v111, self->_pipelineStates[9], v112);
  objc_msgSend_setImageblockWidth_height_(v113, v114, 32, 32);
  objc_msgSend_setTexture_atIndex_(v113, v115, lumaCopy, 0);
  objc_msgSend_setTexture_atIndex_(v113, v116, chromaCopy, 1);
  objc_msgSend_setTexture_atIndex_(v113, v117, v95, 2);
  objc_msgSend_setTexture_atIndex_(v113, v118, self->_ggFusionWeightsAcc, 3);
  objc_msgSend_setTexture_atIndex_(v113, v119, self->_fusedLuma, 4);
  objc_msgSend_setTexture_atIndex_(v113, v120, self->_fusedChroma, 5);
  objc_msgSend_setBytes_length_atIndex_(v113, v121, &v139, 1, 0);
  objc_msgSend_setBytes_length_atIndex_(v113, v122, &v138, 1, 1);
  objc_msgSend_setBytes_length_atIndex_(v113, v123, v137, 208, 2);
  objc_msgSend_setBytes_length_atIndex_(v113, v124, &v157, 4, 3);
  v136[0] = v22 >> 1;
  v136[1] = v37 >> 1;
  v136[2] = 1;
  v134 = vdupq_n_s64(0x10uLL);
  v135 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v113, v125, v136, &v134);
  objc_msgSend_endEncoding(v113, v126, v127, v128);
  objc_msgSend_commit(v106, v129, v130, v131);
  FigMetalDecRef();

LABEL_13:
  v132 = 0;
LABEL_14:

  return v132;
}

- (int)updateMaskAndComputeGradientForLuma:(id)luma output:(id)output params:(LowLightInpaintTuning *)params
{
  lumaCopy = luma;
  outputCopy = output;
  v139 = 0;
  v138 = *&params->var0;
  v13 = objc_msgSend_allocator(self->_metal, v10, v11, v12);
  v17 = objc_msgSend_newTextureDescriptor(v13, v14, v15, v16);

  if (!v17)
  {
    sub_2958A32D4(v137);
LABEL_15:
    v133 = v137[0];
    goto LABEL_10;
  }

  v21 = objc_msgSend_desc(v17, v18, v19, v20);
  objc_msgSend_setCompressionMode_(v21, v22, 2, v23);

  v27 = objc_msgSend_desc(v17, v24, v25, v26);
  objc_msgSend_setCompressionFootprint_(v27, v28, 0, v29);

  v33 = objc_msgSend_desc(v17, v30, v31, v32);
  objc_msgSend_setUsage_(v33, v34, 7, v35);

  v39 = objc_msgSend_pixelFormat(self->_maskMB, v36, v37, v38);
  v43 = objc_msgSend_desc(v17, v40, v41, v42);
  objc_msgSend_setPixelFormat_(v43, v44, v39, v45);

  v49 = objc_msgSend_width(self->_maskMB, v46, v47, v48);
  v53 = objc_msgSend_desc(v17, v50, v51, v52);
  objc_msgSend_setWidth_(v53, v54, v49, v55);

  v59 = objc_msgSend_height(self->_maskMB, v56, v57, v58);
  v63 = objc_msgSend_desc(v17, v60, v61, v62);
  objc_msgSend_setHeight_(v63, v64, v59, v65);

  objc_msgSend_setLabel_(v17, v66, 0, v67);
  v71 = objc_msgSend_allocator(self->_metal, v68, v69, v70);
  v74 = objc_msgSend_newTextureWithDescriptor_(v71, v72, v17, v73);
  v139 = v74;

  if (!v74)
  {
    sub_2958A3238(v137);
    goto LABEL_15;
  }

  v78 = objc_msgSend_commandQueue(self->_metal, v75, v76, v77);
  v82 = objc_msgSend_commandBuffer(v78, v79, v80, v81);

  if (!v82)
  {
    sub_2958A319C(v137);
    goto LABEL_15;
  }

  v86 = objc_msgSend_computeCommandEncoder(v82, v83, v84, v85);
  if (!v86)
  {
    sub_2958A30F0();
    goto LABEL_15;
  }

  v89 = v86;
  objc_msgSend_setComputePipelineState_(v86, v87, self->_pipelineStates[10], v88);
  objc_msgSend_setTexture_atIndex_(v89, v90, lumaCopy, 0);
  objc_msgSend_setTexture_atIndex_(v89, v91, self->_ggMaxFusionWeights, 1);
  objc_msgSend_setTexture_atIndex_(v89, v92, self->_maskMB, 2);
  v135 = outputCopy;
  objc_msgSend_setTexture_atIndex_(v89, v93, outputCopy, 3);
  objc_msgSend_setTexture_atIndex_(v89, v94, v74, 4);
  objc_msgSend_setBytes_length_atIndex_(v89, v95, &v138, 8, 0);
  paramsCopy = params;
  v100 = objc_msgSend_threadExecutionWidth(self->_pipelineStates[10], v96, v97, v98);
  v104 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_pipelineStates[10], v101, v102, v103) / v100;
  v137[0] = objc_msgSend_width(lumaCopy, v105, v106, v107);
  v137[1] = objc_msgSend_height(lumaCopy, v108, v109, v110);
  v137[2] = 1;
  v136[0] = v100;
  v136[1] = v104;
  v136[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v89, v111, v137, v136);
  objc_msgSend_endEncoding(v89, v112, v113, v114);
  objc_msgSend_commit(v82, v115, v116, v117);
  var2 = paramsCopy->var2;
  v122 = objc_msgSend_width(v74, v119, v120, v121);
  if (v122 <= objc_msgSend_height(v74, v123, v124, v125))
  {
    v129 = objc_msgSend_height(v74, v126, v127, v128);
  }

  else
  {
    v129 = objc_msgSend_width(v74, v126, v127, v128);
  }

  *&v131 = var2 / v129;
  v132 = objc_msgSend_dilateTexture_withNormalizedRadius_output_(self->_greenGhostCommon, v130, v74, self->_maskMB, v131);
  v133 = v132;
  outputCopy = v135;
  if (v132)
  {
    sub_2958A3078(v132, v89, v82);
  }

  else
  {
    FigMetalDecRef();
  }

LABEL_10:

  return v133;
}

- (int)propagateLuma:(id)luma chroma:(id)chroma gradient:(id)gradient outputLuma:(id)outputLuma outputChroma:(id)outputChroma outputGradient:(id)outputGradient params:(LowLightInpaintTuning *)params
{
  lumaCopy = luma;
  chromaCopy = chroma;
  gradientCopy = gradient;
  outputLumaCopy = outputLuma;
  outputChromaCopy = outputChroma;
  outputGradientCopy = outputGradient;
  var0 = 0.0;
  v157 = 0;
  v24 = objc_msgSend_allocator(self->_metal, v21, v22, v23);
  v28 = objc_msgSend_newTextureDescriptor(v24, v25, v26, v27);

  v154 = v28;
  if (!v28)
  {
    sub_2958A35B4(v156);
    v151 = v156[0];
    goto LABEL_10;
  }

  v32 = objc_msgSend_desc(v28, v29, v30, v31);
  objc_msgSend_setCompressionMode_(v32, v33, 2, v34);

  v38 = objc_msgSend_desc(v28, v35, v36, v37);
  objc_msgSend_setCompressionFootprint_(v38, v39, 0, v40);

  v44 = objc_msgSend_desc(v28, v41, v42, v43);
  objc_msgSend_setUsage_(v44, v45, 7, v46);

  v50 = objc_msgSend_pixelFormat(self->_maskMB, v47, v48, v49);
  v54 = objc_msgSend_desc(v28, v51, v52, v53);
  objc_msgSend_setPixelFormat_(v54, v55, v50, v56);

  v60 = objc_msgSend_width(self->_maskMB, v57, v58, v59);
  v64 = objc_msgSend_desc(v28, v61, v62, v63);
  objc_msgSend_setWidth_(v64, v65, v60, v66);

  v70 = objc_msgSend_height(self->_maskMB, v67, v68, v69);
  v74 = objc_msgSend_desc(v28, v71, v72, v73);
  objc_msgSend_setHeight_(v74, v75, v70, v76);

  v80 = objc_msgSend_width(self->_maskMB, v77, v78, v79);
  v87 = objc_msgSend_height(self->_maskMB, v81, v82, v83);
  maskMB = self->_maskMB;
  v89 = chromaCopy;
  if (v80 <= v87)
  {
    v90 = objc_msgSend_height(maskMB, v84, v85, v86);
  }

  else
  {
    v90 = objc_msgSend_width(maskMB, v84, v85, v86);
  }

  v93 = v90;
  objc_msgSend_setLabel_(v154, v91, 0, v92);
  v97 = objc_msgSend_allocator(self->_metal, v94, v95, v96);
  v100 = objc_msgSend_newTextureWithDescriptor_(v97, v98, v154, v99);
  v157 = v100;

  if (!v100)
  {
    sub_2958A3518(v156);
LABEL_16:
    v151 = v156[0];
    goto LABEL_17;
  }

  *&v102 = 1.0 / v93;
  v103 = objc_msgSend_dilateTexture_withNormalizedRadius_output_(self->_greenGhostCommon, v101, self->_maskMB, v100, v102);
  if (v103)
  {
    v151 = v103;
    sub_2958A3370();
LABEL_17:
    chromaCopy = v89;
    goto LABEL_10;
  }

  var0 = params->var5.var0;
  v107 = objc_msgSend_commandQueue(self->_metal, v104, v105, v106);
  v111 = objc_msgSend_commandBuffer(v107, v108, v109, v110);

  if (!v111)
  {
    sub_2958A347C(v156);
    goto LABEL_16;
  }

  v115 = objc_msgSend_computeCommandEncoder(v111, v112, v113, v114);
  if (!v115)
  {
    sub_2958A33D0();
    goto LABEL_16;
  }

  v118 = v115;
  objc_msgSend_setComputePipelineState_(v115, v116, self->_pipelineStates[11], v117);
  objc_msgSend_setTexture_atIndex_(v118, v119, lumaCopy, 0);
  v153 = v89;
  objc_msgSend_setTexture_atIndex_(v118, v120, v89, 1);
  objc_msgSend_setTexture_atIndex_(v118, v121, gradientCopy, 2);
  objc_msgSend_setTexture_atIndex_(v118, v122, self->_maskMB, 3);
  objc_msgSend_setTexture_atIndex_(v118, v123, v100, 4);
  objc_msgSend_setTexture_atIndex_(v118, v124, outputLumaCopy, 5);
  objc_msgSend_setTexture_atIndex_(v118, v125, outputChromaCopy, 6);
  objc_msgSend_setTexture_atIndex_(v118, v126, outputGradientCopy, 7);
  objc_msgSend_setBytes_length_atIndex_(v118, v127, &var0, 4, 0);
  v131 = objc_msgSend_threadExecutionWidth(self->_pipelineStates[11], v128, v129, v130);
  v135 = outputChromaCopy;
  v136 = outputLumaCopy;
  v137 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_pipelineStates[11], v132, v133, v134) / v131;
  v156[0] = objc_msgSend_width(lumaCopy, v138, v139, v140);
  v156[1] = objc_msgSend_height(lumaCopy, v141, v142, v143);
  v156[2] = 1;
  v155[0] = v131;
  v155[1] = v137;
  outputLumaCopy = v136;
  outputChromaCopy = v135;
  v155[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v118, v144, v156, v155);
  objc_msgSend_endEncoding(v118, v145, v146, v147);
  objc_msgSend_commit(v111, v148, v149, v150);
  FigMetalDecRef();

  chromaCopy = v153;
  v151 = 0;
LABEL_10:

  return v151;
}

- (int)prepareInpaintingWithLuma:(id)luma andChroma:(id)chroma outputLuma:(id)outputLuma outputChroma:(id)outputChroma outputGradient:(id)gradient params:(LowLightInpaintTuning *)params
{
  lumaCopy = luma;
  chromaCopy = chroma;
  outputLumaCopy = outputLuma;
  outputChromaCopy = outputChroma;
  gradientCopy = gradient;
  v115 = 0;
  v116 = 0;
  v114 = 0;
  v20 = objc_msgSend_allocator(self->_metal, v17, v18, v19);
  v24 = objc_msgSend_newTextureDescriptor(v20, v21, v22, v23);

  if (!v24)
  {
    sub_2958A3A04(&v117);
LABEL_16:
    v110 = v117;
LABEL_17:
    v105 = outputLumaCopy;
    goto LABEL_11;
  }

  v28 = objc_msgSend_desc(v24, v25, v26, v27);
  objc_msgSend_setCompressionMode_(v28, v29, 2, v30);

  v34 = objc_msgSend_desc(v24, v31, v32, v33);
  objc_msgSend_setCompressionFootprint_(v34, v35, 0, v36);

  v40 = objc_msgSend_desc(v24, v37, v38, v39);
  objc_msgSend_setUsage_(v40, v41, 7, v42);

  v46 = objc_msgSend_pixelFormat(gradientCopy, v43, v44, v45);
  v50 = objc_msgSend_desc(v24, v47, v48, v49);
  objc_msgSend_setPixelFormat_(v50, v51, v46, v52);

  v56 = objc_msgSend_width(gradientCopy, v53, v54, v55);
  v60 = objc_msgSend_desc(v24, v57, v58, v59);
  objc_msgSend_setWidth_(v60, v61, v56, v62);

  v66 = objc_msgSend_height(gradientCopy, v63, v64, v65);
  v70 = objc_msgSend_desc(v24, v67, v68, v69);
  objc_msgSend_setHeight_(v70, v71, v66, v72);

  objc_msgSend_setLabel_(v24, v73, 0, v74);
  v78 = objc_msgSend_allocator(self->_metal, v75, v76, v77);
  v81 = objc_msgSend_newTextureWithDescriptor_(v78, v79, v24, v80);
  v116 = v81;

  if (!v81)
  {
    sub_2958A3968(&v117);
    goto LABEL_16;
  }

  objc_msgSend_setLabel_(v24, v82, 0, v83);
  v87 = objc_msgSend_allocator(self->_metal, v84, v85, v86);
  v90 = objc_msgSend_newTextureWithDescriptor_(v87, v88, v24, v89);
  v115 = v90;

  if (!v90)
  {
    sub_2958A38CC(&v117);
    goto LABEL_16;
  }

  objc_msgSend_setLabel_(v24, v91, 0, v92);
  v96 = objc_msgSend_allocator(self->_metal, v93, v94, v95);
  v99 = objc_msgSend_newTextureWithDescriptor_(v96, v97, v24, v98);
  v114 = v99;

  if (!v99)
  {
    sub_2958A3830(&v117);
    goto LABEL_16;
  }

  updated = objc_msgSend_updateMaskAndComputeGradientForLuma_output_params_(self, v100, lumaCopy, v81, params);
  if (updated)
  {
    v110 = updated;
    sub_2958A3650();
    goto LABEL_17;
  }

  v103 = objc_msgSend_propagateLuma_chroma_gradient_outputLuma_outputChroma_outputGradient_params_(self, v102, lumaCopy, chromaCopy, v81, v99, outputChromaCopy, gradientCopy, params);
  if (v103)
  {
    v110 = v103;
    sub_2958A36B0();
    goto LABEL_17;
  }

  v105 = outputLumaCopy;
  v106 = objc_msgSend_boxFilter_withRadius_output_(self->_greenGhostCommon, v104, v99, LODWORD(params->var3), outputLumaCopy);
  if (v106)
  {
    v110 = v106;
    sub_2958A3710();
  }

  else
  {
    v108 = objc_msgSend_boxFilter_withRadius_output_(self->_greenGhostCommon, v107, self->_maskMB, LODWORD(params->var4), v90);
    if (v108)
    {
      v110 = v108;
      sub_2958A3770();
    }

    else
    {
      v110 = objc_msgSend_boxFilter_withRadius_output_(self->_greenGhostCommon, v109, v90, LODWORD(params->var4), self->_maskMB);
      if (v110)
      {
        sub_2958A37D0();
      }

      else
      {
        FigMetalDecRef();
        FigMetalDecRef();
        FigMetalDecRef();
      }
    }
  }

LABEL_11:

  return v110;
}

- (int)applyInpaintWithDownscaledLuma:(id)luma propagatedLuma:(id)propagatedLuma downscaledChroma:(id)chroma propagatedChroma:(id)propagatedChroma propagatedGradient:(id)gradient maskPreInpainting:(id)inpainting outputLuma:(id)outputLuma outputChroma:(id)self0 params:(LowLightInpaintTuning *)self1
{
  lumaCopy = luma;
  propagatedLumaCopy = propagatedLuma;
  chromaCopy = chroma;
  propagatedChromaCopy = propagatedChroma;
  gradientCopy = gradient;
  inpaintingCopy = inpainting;
  outputLumaCopy = outputLuma;
  outputChromaCopy = outputChroma;
  v26 = objc_msgSend_width(outputLumaCopy, v23, v24, v25);
  v73 = objc_msgSend_height(outputLumaCopy, v27, v28, v29);
  v33 = objc_msgSend_commandQueue(self->_metal, v30, v31, v32);
  v37 = objc_msgSend_commandBuffer(v33, v34, v35, v36);

  if (!v37)
  {
    sub_2958A3B3C(v78);
    v41 = outputLumaCopy;
LABEL_7:
    v70 = v78[0];
    v69 = propagatedChromaCopy;
    v60 = gradientCopy;
    goto LABEL_4;
  }

  v72 = v26;
  v41 = outputLumaCopy;
  v42 = objc_msgSend_computeCommandEncoder(v37, v38, v39, v40);
  if (!v42)
  {
    sub_2958A3AA0(v78);
    goto LABEL_7;
  }

  v45 = v42;
  objc_msgSend_setComputePipelineState_(v42, v43, self->_pipelineStates[12], v44);
  objc_msgSend_setImageblockWidth_height_(v45, v46, 32, 32);
  objc_msgSend_setTexture_atIndex_(v45, v47, lumaCopy, 0);
  objc_msgSend_setTexture_atIndex_(v45, v48, propagatedLumaCopy, 1);
  objc_msgSend_setTexture_atIndex_(v45, v49, chromaCopy, 2);
  objc_msgSend_setTexture_atIndex_(v45, v50, propagatedChromaCopy, 3);
  objc_msgSend_setTexture_atIndex_(v45, v51, self->_maskMB, 4);
  objc_msgSend_setTexture_atIndex_(v45, v52, gradientCopy, 5);
  objc_msgSend_setTexture_atIndex_(v45, v53, outputLumaCopy, 6);
  objc_msgSend_setTexture_atIndex_(v45, v54, outputChromaCopy, 7);
  objc_msgSend_setTexture_atIndex_(v45, v55, inpaintingCopy, 8);
  objc_msgSend_setTexture_atIndex_(v45, v56, self->_ggFusionWeightsAcc, 9);
  objc_msgSend_setBytes_length_atIndex_(v45, v57, params, 88, 0);
  objc_msgSend_setBytes_length_atIndex_(v45, v58, &self->_faceBodyBoundaries, 352, 1);
  p_nonRefFramesCount = &self->_nonRefFramesCount;
  v60 = gradientCopy;
  objc_msgSend_setBytes_length_atIndex_(v45, v61, p_nonRefFramesCount, 4, 2);
  v78[0] = v72 >> 1;
  v78[1] = v73 >> 1;
  v78[2] = 1;
  v76 = vdupq_n_s64(0x10uLL);
  v77 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v45, v62, v78, &v76);
  objc_msgSend_endEncoding(v45, v63, v64, v65);
  objc_msgSend_commit(v37, v66, v67, v68);

  v69 = propagatedChromaCopy;
  v70 = 0;
LABEL_4:

  return v70;
}

- (int)inpaintLuma:(id)luma andChroma:(id)chroma tuningParams:(id)params
{
  lumaCopy = luma;
  chromaCopy = chroma;
  paramsCopy = params;
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  if (paramsCopy)
  {
    objc_msgSend_tuningParams(paramsCopy, v11, v12, v13);
  }

  else
  {
    v155 = 0;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v150 = 0u;
  }

  v156[2] = v152;
  v156[3] = v153;
  v156[4] = v154;
  v157 = v155;
  v156[0] = v150;
  v156[1] = v151;
  v148 = 0;
  v149 = 0;
  v146 = 0;
  v147 = 0;
  v144 = 0;
  v145 = 0;
  v14 = objc_msgSend_width(lumaCopy, v11, v12, v13);
  v18 = objc_msgSend_height(lumaCopy, v15, v16, v17);
  if (!self->_canMitigationProceed)
  {
    goto LABEL_22;
  }

  if (!self->_maskMB)
  {
    v137 = objc_opt_new();
    objc_msgSend_setObject_forKeyedSubscript_(v137, v138, MEMORY[0x29EDB8EB0], @"skipRepair");
    WeakRetained = objc_loadWeakRetained(&self->_sidecarWriter);
    objc_msgSend_addToSidecar_forKey_(WeakRetained, v140, v137, @"GreenGhostLowLight");

LABEL_22:
    v136 = 0;
    goto LABEL_23;
  }

  v22 = v18;
  v23 = objc_msgSend_allocator(self->_metal, v19, v20, v21);
  v27 = objc_msgSend_newTextureDescriptor(v23, v24, v25, v26);

  if (!v27)
  {
    sub_2958A41C8(v158);
LABEL_27:
    v136 = v158[0];
    goto LABEL_23;
  }

  v31 = v14 >> 2;
  v32 = v22 >> 2;
  v33 = objc_msgSend_desc(v27, v28, v29, v30);
  objc_msgSend_setCompressionMode_(v33, v34, 2, v35);

  v39 = objc_msgSend_desc(v27, v36, v37, v38);
  objc_msgSend_setCompressionFootprint_(v39, v40, 0, v41);

  v45 = objc_msgSend_desc(v27, v42, v43, v44);
  objc_msgSend_setUsage_(v45, v46, 7, v47);

  v51 = objc_msgSend_desc(v27, v48, v49, v50);
  objc_msgSend_setWidth_(v51, v52, v31, v53);

  v57 = objc_msgSend_desc(v27, v54, v55, v56);
  objc_msgSend_setHeight_(v57, v58, v32, v59);

  v63 = objc_msgSend_desc(v27, v60, v61, v62);
  objc_msgSend_setPixelFormat_(v63, v64, 25, v65);

  objc_msgSend_setLabel_(v27, v66, 0, v67);
  v71 = objc_msgSend_allocator(self->_metal, v68, v69, v70);
  v74 = objc_msgSend_newTextureWithDescriptor_(v71, v72, v27, v73);
  v149 = v74;

  if (!v74)
  {
    sub_2958A4128();
    goto LABEL_27;
  }

  objc_msgSend_setLabel_(v27, v75, 0, v76);
  v80 = objc_msgSend_allocator(self->_metal, v77, v78, v79);
  v83 = objc_msgSend_newTextureWithDescriptor_(v80, v81, v27, v82);
  v148 = v83;

  if (!v83)
  {
    sub_2958A4088();
    goto LABEL_27;
  }

  v142 = paramsCopy;
  objc_msgSend_setLabel_(v27, v84, 0, v85);
  v89 = objc_msgSend_allocator(self->_metal, v86, v87, v88);
  v92 = objc_msgSend_newTextureWithDescriptor_(v89, v90, v27, v91);
  v145 = v92;

  if (!v92)
  {
    sub_2958A3FE8();
    v136 = v158[0];
    goto LABEL_20;
  }

  v143 = chromaCopy;
  objc_msgSend_setLabel_(v27, v93, 0, v94);
  v98 = objc_msgSend_allocator(self->_metal, v95, v96, v97);
  v101 = objc_msgSend_newTextureWithDescriptor_(v98, v99, v27, v100);
  v146 = v101;

  if (v101)
  {
    v105 = objc_msgSend_desc(v27, v102, v103, v104);
    objc_msgSend_setPixelFormat_(v105, v106, 65, v107);

    objc_msgSend_setLabel_(v27, v108, 0, v109);
    v113 = objc_msgSend_allocator(self->_metal, v110, v111, v112);
    v116 = objc_msgSend_newTextureWithDescriptor_(v113, v114, v27, v115);
    v147 = v116;

    if (v116)
    {
      objc_msgSend_setLabel_(v27, v117, 0, v118);
      v122 = objc_msgSend_allocator(self->_metal, v119, v120, v121);
      v125 = objc_msgSend_newTextureWithDescriptor_(v122, v123, v27, v124);
      v144 = v125;

      if (v125)
      {
        v127 = objc_msgSend_copyTexture_outTex_(self->_textureUtils, v126, self->_maskMB, v74);
        if (v127)
        {
          v136 = v127;
          sub_2958A3BD8(v127, v27);
        }

        else
        {
          v129 = objc_msgSend_downscaleInput_output_(self->_greenGhostCommon, v128, lumaCopy, v83);
          if (v129)
          {
            v136 = v129;
            sub_2958A3C48(v129, v27);
          }

          else
          {
            v131 = objc_msgSend_downscaleInput_output_(self->_greenGhostCommon, v130, v143, v116);
            if (v131)
            {
              v136 = v131;
              sub_2958A3CB8(v131, v27);
            }

            else
            {
              v133 = objc_msgSend_prepareInpaintingWithLuma_andChroma_outputLuma_outputChroma_outputGradient_params_(self, v132, v83, v116, v92, v125, v101, v156);
              if (v133)
              {
                v136 = v133;
                sub_2958A3D28(v133, v27);
              }

              else
              {
                v135 = objc_msgSend_applyInpaintWithDownscaledLuma_propagatedLuma_downscaledChroma_propagatedChroma_propagatedGradient_maskPreInpainting_outputLuma_outputChroma_params_(self, v134, v83, v92, v116, v125, v101, v74, lumaCopy, v143, v156);
                v136 = v135;
                if (v135)
                {
                  sub_2958A3D98(v135, v27);
                }

                else
                {
                  FigMetalDecRef();
                  FigMetalDecRef();
                  FigMetalDecRef();
                  FigMetalDecRef();
                  FigMetalDecRef();
                  FigMetalDecRef();
                }
              }
            }
          }
        }

        goto LABEL_19;
      }

      sub_2958A3E08();
    }

    else
    {
      sub_2958A3EA8();
    }
  }

  else
  {
    sub_2958A3F48();
  }

  v136 = v158[0];
LABEL_19:
  chromaCopy = v143;
LABEL_20:
  paramsCopy = v142;
LABEL_23:
  objc_msgSend_releaseTextures(self, v19, v20, v21);

  return v136;
}

- (SidecarWriter)sidecarWriter
{
  WeakRetained = objc_loadWeakRetained(&self->_sidecarWriter);

  return WeakRetained;
}

@end