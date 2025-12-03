@interface DeepFusionPreEspressoStage
- (DFSynthLongHighlightParameters)_createHighlightParameters:(SEL)parameters highlightTuning:(const DeepFusionFrameMeta *)tuning totalGain:(id)gain;
- (DeepFusionRawNoiseModelParameters)_createRawNoiseModelParameters:(SEL)parameters;
- (int)estimateNoiseRefNoise:(DeepFusionPreEspressoStage *)self synthLongNoise:(SEL)noise synthRefNoisePretuning:(id)pretuning synthLongNoisePretuning:(id)noisePretuning synthRefLuma:(id)luma synthRefChroma:(id)chroma synthLongLuma:(id)longLuma synthLongChroma:(id)longChroma lscGains:(id)gains slFusionMap:(id)self0 longFusionMap:(id)self1 outRefNoisePyramid:(id)self2 outSLNoisePyramid:(id)self3 noiseEstimationParams:(id)self4 offset:(id)self5 tileDimension:(NoiseEstimationParameters *)self6;
- (int)filterChroma:(id)chroma outChroma:(id)outChroma alpha:(float)alpha;
- (int)setEstimateNoiseParams:(NoiseEstimationParameters *)params fullDimension:(const IntermediateEncodingParameters *)dimension intermediateEncodingParams:;
- (int)yuvCopyAndBias:(id)bias chromaInput:(id)input lumaOutput:(id)output chromaOutput:(id)chromaOutput;
- (int)yuvPlanarRGBToRGBA:(id)a outRGBA:(id)bA;
- (void)computeGlobalNoiseFactor:(id)factor totalGain:(float)gain synthRefFactor:(float *)refFactor synthLongFactor:(float *)longFactor;
- (void)getLumaMaskTuning:(const NoiseEstimationParameters *)tuning outTuning:(LumaMaskTuningParam *)outTuning;
- (void)getNoiseTuningParams:(const NoiseEstimationParameters *)params fullDimension:(NoiseTuningParams *)dimension outTuning:;
@end

@implementation DeepFusionPreEspressoStage

- (DFSynthLongHighlightParameters)_createHighlightParameters:(SEL)parameters highlightTuning:(const DeepFusionFrameMeta *)tuning totalGain:(id)gain
{
  v7 = sqrtf(a6 / tuning->syntheticLongExposure.analog_gain);
  LODWORD(v6) = *(gain + 2);
  DWORD1(v6) = *(gain + 4);
  *&v6 = vmul_n_f32(*&v6, v7);
  *(&v6 + 2) = v7 * *(gain + 3);
  *&retstr[1].var3 = 0;
  *&retstr[2].var0 = 0;
  v8 = *(gain + 5);
  *&retstr->var0 = v6;
  v9 = *(gain + 6);
  v10 = *(gain + 7);
  retstr->var4 = v8;
  retstr[1].var0 = v9;
  v11 = *(gain + 8);
  retstr[1].var1 = v10;
  retstr[1].var2 = v11;
  retstr[1].var3 = *(gain + 9);
  return self;
}

- (DeepFusionRawNoiseModelParameters)_createRawNoiseModelParameters:(SEL)parameters
{
  v5.i32[0] = 1.0;
  if (a4->hr_enabled)
  {
    v5.i32[0] = LODWORD(a4->hr_gain_down_ratio);
  }

  __asm { FMOV            V3.2S, #1.0 }

  _D3.i32[0] = LODWORD(a4->red_combo_gain);
  *&v6 = vdiv_f32(_D3, vdup_lane_s32(v5, 0));
  *(&v6 + 2) = a4->blue_combo_gain / *v5.i32;
  *&retstr[1].var2 = 0;
  *&retstr[1].var4 = 0;
  *&retstr->var0 = v6;
  *&retstr->var4 = a4->analog_gain;
  result = objc_msgSend_calculateReadNoise_(DeepFusionCommon, parameters, a4, v4);
  retstr->var5 = v16;
  *&retstr[1].var0 = *&a4->conversion_gain;
  LOBYTE(retstr[1].var2) = self->_networkVersion == 1;
  retstr[1].var3 = a4->lsModulationWeight;
  return result;
}

- (void)computeGlobalNoiseFactor:(id)factor totalGain:(float)gain synthRefFactor:(float *)refFactor synthLongFactor:(float *)longFactor
{
  v9 = *(*(factor + 5) + 8);
  factorCopy = factor;
  *refFactor = sub_29584472C(v9, gain);
  v11 = factorCopy[6];

  *longFactor = sub_29584472C(*(v11 + 8), gain);
}

- (void)getLumaMaskTuning:(const NoiseEstimationParameters *)tuning outTuning:(LumaMaskTuningParam *)outTuning
{
  v6 = sub_29584472C(*(tuning->var4 + 4), tuning->var1);
  if (v6 == 0.0)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 1.0 / v6;
  }

  outTuning->var0 = v7;
  outTuning->var1 = sub_29584472C(*(*(tuning->var4 + 5) + 16), tuning->var1);
  outTuning->var2 = sub_29584472C(*(*(tuning->var4 + 6) + 16), tuning->var1);
}

- (void)getNoiseTuningParams:(const NoiseEstimationParameters *)params fullDimension:(NoiseTuningParams *)dimension outTuning:
{
  v6 = v4;
  dimensionCopy = dimension;
  *&v5 = params->var1;
  objc_msgSend_computeGlobalNoiseFactor_totalGain_synthRefFactor_synthLongFactor_(self, a2, params->var4, v4, v4 + 4, v5);
  v10 = sub_29584472C(*(params->var4 + 1), params->var1);
  var2 = params->var2;
  v6[1].f32[0] = v10;
  v6[1].f32[1] = var2;
  v12.i32[0] = dimensionCopy;
  v12.i32[1] = HIWORD(dimensionCopy);
  __asm { FMOV            V1.2S, #1.0 }

  v6[2] = vdiv_f32(_D1, vcvt_f32_u32(v12));

  MEMORY[0x2A1C70FE8](self, sel_getLumaMaskTuning_outTuning_, params, &v6[3]);
}

- (int)setEstimateNoiseParams:(NoiseEstimationParameters *)params fullDimension:(const IntermediateEncodingParameters *)dimension intermediateEncodingParams:
{
  v5 = v4;
  v9 = objc_msgSend_contents(self->_noiseParamBuffer, a2, params, dimension);
  *v9 = params->var0;
  *(v9 + 4) = params->var6;
  objc_msgSend__createRawNoiseModelParameters_(self, v10, &params->var3->syntheticLongExposure, v11);
  *(v9 + 16) = v20;
  *(v9 + 32) = v21;
  *(v9 + 48) = v22;
  objc_msgSend__createRawNoiseModelParameters_(self, v12, &params->var3->longExposure, v13);
  *(v9 + 64) = v20;
  *(v9 + 80) = v21;
  HIDWORD(v14) = DWORD1(v22);
  *(v9 + 96) = v22;
  *(v9 + 112) = params->var7;
  *&v14 = params->var1;
  objc_msgSend__createHighlightParameters_highlightTuning_totalGain_(self, v15, params->var3, params->var5, v14);
  *(v9 + 128) = v20;
  *(v9 + 144) = v21;
  *(v9 + 160) = v22;
  *(v9 + 8) = *v5;
  objc_msgSend_getNoiseTuningParams_fullDimension_outTuning_(self, v16, params, dimension, v9 + 176);
  v17 = *(v9 + 204);
  v18 = *(v9 + 208);
  return 0;
}

- (int)estimateNoiseRefNoise:(DeepFusionPreEspressoStage *)self synthLongNoise:(SEL)noise synthRefNoisePretuning:(id)pretuning synthLongNoisePretuning:(id)noisePretuning synthRefLuma:(id)luma synthRefChroma:(id)chroma synthLongLuma:(id)longLuma synthLongChroma:(id)longChroma lscGains:(id)gains slFusionMap:(id)self0 longFusionMap:(id)self1 outRefNoisePyramid:(id)self2 outSLNoisePyramid:(id)self3 noiseEstimationParams:(id)self4 offset:(id)self5 tileDimension:(NoiseEstimationParameters *)self6
{
  pretuningCopy = pretuning;
  noisePretuningCopy = noisePretuning;
  lumaCopy = luma;
  chromaCopy = chroma;
  longLumaCopy = longLuma;
  longChromaCopy = longChroma;
  gainsCopy = gains;
  mapCopy = map;
  fusionMapCopy = fusionMap;
  pyramidCopy = pyramid;
  noisePyramidCopy = noisePyramid;
  paramsCopy = params;
  offsetCopy = offset;
  v83[0] = v84;
  v28 = objc_msgSend_commandQueue(self->_metalContext, v25, v26, v27);
  v32 = objc_msgSend_commandBuffer(v28, v29, v30, v31);

  objc_msgSend_setLabel_(v32, v33, @"applyAllTuningToNoise", v34);
  v38 = objc_msgSend_computeCommandEncoder(v32, v35, v36, v37);
  v41 = v38;
  if (v38)
  {
    objc_msgSend_setLabel_(v38, v39, @"_kernels->_estimateAndTuneNoise[noiseEstimationParams->preEspressoMetaData->combo == L_EV0x3]", v40);
    objc_msgSend_setComputePipelineState_(v41, v42, self->_kernels->_estimateAndTuneNoise[dimension->var3->combo == 0], v43);
    objc_msgSend_setTexture_atIndex_(v41, v44, lumaCopy, 0);
    objc_msgSend_setTexture_atIndex_(v41, v45, chromaCopy, 1);
    objc_msgSend_setTexture_atIndex_(v41, v46, pretuningCopy, 2);
    objc_msgSend_setTexture_atIndex_(v41, v47, noisePretuningCopy, 3);
    objc_msgSend_setTexture_atIndex_(v41, v48, fusionMapCopy, 4);
    objc_msgSend_setTexture_atIndex_(v41, v49, longLumaCopy, 5);
    objc_msgSend_setTexture_atIndex_(v41, v50, longChromaCopy, 6);
    objc_msgSend_setTexture_atIndex_(v41, v51, gainsCopy, 7);
    objc_msgSend_setTexture_atIndex_(v41, v52, mapCopy, 8);
    objc_msgSend_setTexture_atIndex_(v41, v53, pyramidCopy, 9);
    objc_msgSend_setTexture_atIndex_(v41, v54, noisePyramidCopy, 10);
    objc_msgSend_setTexture_atIndex_(v41, v55, paramsCopy, 11);
    objc_msgSend_setTexture_atIndex_(v41, v56, offsetCopy, 12);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v57, self->_noiseParamBuffer, 0, 0);
    objc_msgSend_setBytes_length_atIndex_(v41, v58, v83, 4, 1);
    v82[0] = v85;
    v82[1] = HIWORD(v85);
    v82[2] = 1;
    v80 = xmmword_2959D5ED0;
    v81 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v41, v59, v82, &v80);
    objc_msgSend_endEncoding(v41, v60, v61, v62);
    objc_msgSend_commit(v32, v63, v64, v65);
    v66 = 0;
    v67 = pretuningCopy;
    v68 = noisePretuningCopy;
  }

  else
  {
    sub_2958CA320(v82);
    v66 = v82[0];
    v68 = noisePretuningCopy;
    v67 = pretuningCopy;
  }

  return v66;
}

- (int)yuvCopyAndBias:(id)bias chromaInput:(id)input lumaOutput:(id)output chromaOutput:(id)chromaOutput
{
  biasCopy = bias;
  inputCopy = input;
  outputCopy = output;
  chromaOutputCopy = chromaOutput;
  v17 = chromaOutputCopy;
  if (!biasCopy)
  {
    sub_2958CA898(v79);
    goto LABEL_21;
  }

  if (!inputCopy)
  {
    sub_2958CA7EC(v79);
    goto LABEL_21;
  }

  if (!outputCopy)
  {
    sub_2958CA740(v79);
    goto LABEL_21;
  }

  if (!chromaOutputCopy)
  {
    sub_2958CA694(v79);
    goto LABEL_21;
  }

  v18 = objc_msgSend_width(biasCopy, v14, v15, v16);
  if (v18 != objc_msgSend_width(outputCopy, v19, v20, v21) || (v25 = objc_msgSend_height(biasCopy, v22, v23, v24), v25 != objc_msgSend_height(outputCopy, v26, v27, v28)))
  {
    sub_2958CA3CC(v79);
LABEL_21:
    v75 = v79[0];
    goto LABEL_12;
  }

  v32 = objc_msgSend_width(inputCopy, v29, v30, v31);
  if (v32 != objc_msgSend_width(v17, v33, v34, v35) || (v39 = objc_msgSend_height(inputCopy, v36, v37, v38), v39 != objc_msgSend_height(v17, v40, v41, v42)))
  {
    sub_2958CA478(v79);
    goto LABEL_21;
  }

  v46 = objc_msgSend_commandQueue(self->_metalContext, v43, v44, v45);
  v50 = objc_msgSend_commandBuffer(v46, v47, v48, v49);

  if (!v50)
  {
    sub_2958CA5E8(v79);
    goto LABEL_21;
  }

  v54 = objc_msgSend_computeCommandEncoder(v50, v51, v52, v53);
  if (!v54)
  {
    sub_2958CA524(v50, v79);
    goto LABEL_21;
  }

  v57 = v54;
  objc_msgSend_setComputePipelineState_(v54, v55, self->_kernels->_yuvCopyAndBias, v56);
  objc_msgSend_setTexture_atIndex_(v57, v58, biasCopy, 0);
  objc_msgSend_setTexture_atIndex_(v57, v59, inputCopy, 1);
  objc_msgSend_setTexture_atIndex_(v57, v60, outputCopy, 2);
  objc_msgSend_setTexture_atIndex_(v57, v61, v17, 3);
  v79[0] = objc_msgSend_width(biasCopy, v62, v63, v64);
  v79[1] = objc_msgSend_height(biasCopy, v65, v66, v67);
  v79[2] = 1;
  v77 = xmmword_2959D5ED0;
  v78 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v57, v68, v79, &v77);
  objc_msgSend_endEncoding(v57, v69, v70, v71);
  objc_msgSend_commit(v50, v72, v73, v74);

  v75 = 0;
LABEL_12:

  return v75;
}

- (int)yuvPlanarRGBToRGBA:(id)a outRGBA:(id)bA
{
  aCopy = a;
  bACopy = bA;
  v11 = bACopy;
  if (!aCopy)
  {
    sub_2958CAC0C(v57);
    goto LABEL_14;
  }

  if (!bACopy)
  {
    sub_2958CAB60(v57);
    goto LABEL_14;
  }

  v12 = objc_msgSend_width(bACopy, v8, v9, v10);
  if (v12 != objc_msgSend_width(aCopy, v13, v14, v15) || (v19 = objc_msgSend_height(v11, v16, v17, v18), v19 != objc_msgSend_height(aCopy, v20, v21, v22) / 3uLL))
  {
    sub_2958CA944(v57);
LABEL_14:
    v53 = v57[0];
    goto LABEL_8;
  }

  v26 = objc_msgSend_commandQueue(self->_metalContext, v23, v24, v25);
  v30 = objc_msgSend_commandBuffer(v26, v27, v28, v29);

  if (!v30)
  {
    sub_2958CAAB4(v57);
    goto LABEL_14;
  }

  v34 = objc_msgSend_computeCommandEncoder(v30, v31, v32, v33);
  if (!v34)
  {
    sub_2958CA9F0(v30, v57);
    goto LABEL_14;
  }

  v37 = v34;
  objc_msgSend_setComputePipelineState_(v34, v35, self->_kernels->_yuvPlanarRGBToRGBA, v36);
  objc_msgSend_setTexture_atIndex_(v37, v38, aCopy, 0);
  objc_msgSend_setTexture_atIndex_(v37, v39, v11, 1);
  v57[0] = objc_msgSend_width(v11, v40, v41, v42);
  v57[1] = objc_msgSend_height(v11, v43, v44, v45);
  v57[2] = 1;
  v55 = xmmword_2959D5ED0;
  v56 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v37, v46, v57, &v55);
  objc_msgSend_endEncoding(v37, v47, v48, v49);
  objc_msgSend_commit(v30, v50, v51, v52);

  v53 = 0;
LABEL_8:

  return v53;
}

- (int)filterChroma:(id)chroma outChroma:(id)outChroma alpha:(float)alpha
{
  chromaCopy = chroma;
  outChromaCopy = outChroma;
  v13 = outChromaCopy;
  if (!chromaCopy)
  {
    sub_2958CAF80(v47);
LABEL_14:
    v43 = v47[0];
    goto LABEL_8;
  }

  if (!outChromaCopy)
  {
    sub_2958CAED4(v47);
    goto LABEL_14;
  }

  if (alpha <= 0.0 || alpha > 1.0)
  {
    sub_2958CAE28(v47);
    goto LABEL_14;
  }

  v14 = objc_msgSend_commandQueue(self->_metalContext, v10, v11, v12);
  v18 = objc_msgSend_commandBuffer(v14, v15, v16, v17);

  if (!v18)
  {
    sub_2958CAD7C(v47);
    goto LABEL_14;
  }

  v22 = objc_msgSend_computeCommandEncoder(v18, v19, v20, v21);
  if (!v22)
  {
    sub_2958CACB8(v18, v47);
    goto LABEL_14;
  }

  v25 = v22;
  objc_msgSend_setComputePipelineState_(v22, v23, self->_kernels->_filterChroma, v24);
  objc_msgSend_setTexture_atIndex_(v25, v26, chromaCopy, 0);
  objc_msgSend_setTexture_atIndex_(v25, v27, v13, 1);
  *&v28 = (alpha * -0.88889) + 1.0;
  *(&v28 + 1) = (1.0 - *&v28) * 0.125;
  v48 = v28;
  objc_msgSend_setBytes_length_atIndex_(v25, v29, &v48, 8, 0);
  v47[0] = objc_msgSend_width(chromaCopy, v30, v31, v32);
  v47[1] = objc_msgSend_height(chromaCopy, v33, v34, v35);
  v47[2] = 1;
  v45 = xmmword_2959D5ED0;
  v46 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v25, v36, v47, &v45);
  objc_msgSend_endEncoding(v25, v37, v38, v39);
  objc_msgSend_commit(v18, v40, v41, v42);

  v43 = 0;
LABEL_8:

  return v43;
}

@end