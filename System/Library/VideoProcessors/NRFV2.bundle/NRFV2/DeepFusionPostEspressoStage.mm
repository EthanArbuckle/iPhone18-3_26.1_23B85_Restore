@interface DeepFusionPostEspressoStage
- (int)_applyEspressoOutputLumaOnlyToLevel:(id)level uniforms:(DFApplyEspressoOutputUniforms *)uniforms inRefGaussian:(id)gaussian slFusionMap:(id)map longFusionMap:(id)fusionMap prefusionWeightsTexture:(id)texture inTexArray:(id)array inTexArrayUp:(id)self0 skinMaskTexture:(id)self1 skyMaskTexture:(id)self2 deghostedAndDenoisedAndTextureness:(id)self3 outTex:(id)self4 tile:(TileBounds *)self5;
- (int)_applyEspressoOutputToLevel:(id)level uniforms:(DFApplyEspressoOutputUniforms *)uniforms inRefGaussian:(id)gaussian slFusionMap:(id)map longFusionMap:(id)fusionMap prefusionWeightsTexture:(id)texture inTexArray:(id)array inTexArrayUp:(id)self0 skinMaskTexture:(id)self1 skyMaskTexture:(id)self2 deghostedAndDenoisedAndTextureness:(id)self3 outTex:(id)self4 tile:(TileBounds *)self5;
- (int)_collapseWeightsOnTile:(id)tile inoutTexNSArray:(id)array;
- (int)_computeTextureness:(id)textureness applyUniforms:(DFApplyEspressoOutputUniforms *)uniforms inputTexture:(id)texture outputTexture:(id)outputTexture lscGainsTex:(id)tex;
- (int)_createUpsampledWithGaussianFilter:(id)filter inTexPrevLevel:(id *)level;
- (int)_deghostAndDenoise:(id)denoise uniforms:(DFApplyEspressoOutputUniforms *)uniforms inTexEspressoWeights:(id)weights inTexEspressoWeightsUp:(id)up inRefLaplacian:(id)laplacian inSynthLongLaplacian:(id)longLaplacian inRefGaussian:(id)gaussian inSynthLongGaussian:(id)self0 inRefNoisePyramidLevel3:(id)self1 inSynthLongNoisePyramidLevel3:(id)self2 refNoisePretuning:(id)self3 LSCGains:(id)self4 inTexPrevLevel:(id)self5 outDeghostedDenoised:(id)self6 lowLightMode:(BOOL)self7;
- (int)_validateInputsForTile:(TileBounds *)tile espressoOutputTextureArray:(id)array inRefGaussianArray:(id)gaussianArray inSLGaussianArray:(id)lGaussianArray inRefLaplacianArray:(id)laplacianArray inSLLaplacianArray:(id)lLaplacianArray inRefNoisePyramidLevel3:(id)level3 inSLNoisePyramidLevel3:(id)self0 slFusionMap:(id)self1 longFusionMap:(id)self2 prefusionWeightsTexture:(id)self3 skinMaskTexture:(id)self4 skyMaskTexture:(id)self5 finalOutputTexture:(id)self6 lscGains:(id)self7 refNoisePretuning:(id)self8;
- (int)allocateTextures;
- (int)applyWeightsOnTile:(id)tile uniforms:(DFApplyEspressoOutputUniforms *)uniforms espressoOutputTextureArray:(id)array inRefGaussianArray:(id)gaussianArray inSLGaussianArray:(id)lGaussianArray inRefLaplacianArray:(id)laplacianArray inSLLaplacianArray:(id)lLaplacianArray inRefNoisePyramidLevel3:(id)self0 inSLNoisePyramidLevel3:(id)self1 slFusionMap:(id)self2 longFusionMap:(id)self3 prefusionWeightsTexture:(id)self4 skinMaskTexture:(id)self5 skyMaskTexture:(id)self6 lscGains:(id)self7 refNoisePretuning:(id)self8 tile:(TileBounds *)self9 finalOutputTexture:(id)outputTexture lowLightMode:(BOOL)mode;
- (int)computeAMBNRDenoiseBoostMap:(id)map boostMap:(id)boostMap longFusionMap:(id)fusionMap ev0FusionMap:(id)ev0FusionMap ev0Metadata:(frameMetadata *)metadata longMetadata:(frameMetadata *)longMetadata numEV0:(int)v0 ev0FusionTarget:(float)self0 longFusionTarget:(float)self1;
- (int)convert444to420:(id)convert444to420 input444:(id)input444 outputLuma:(id)luma outputChroma:(id)chroma outputOffset:(TileBounds *)offset;
- (int)setWidth:(unint64_t)width andHeight:(unint64_t)height andPixelFormat:(unint64_t)format;
- (uint64_t)createShaderUniforms:(float)uniforms totalGain:(float)gain EVM_EV0_motionScore:(float)score lscGainGreenMax:(int64x2_t)max slQuantBounds:(float)bounds espressoModel:(uint64_t)model fullSize:(uint64_t)size uniforms:(void *)self0 hasLong:(uint64_t)self1 hasSIFR:(uint64_t)self2 isStationary:(int)self3 isSyntheticLongWithRealLong:(int)self4 aeShutterTimeRatio:(uint64_t)self5 colorCorrection:(BOOL)self6 inverseColorCorrection:(uint64_t)self7;
- (void)makeTextureAliasable;
- (void)purgeResources;
@end

@implementation DeepFusionPostEspressoStage

- (void)purgeResources
{
  objc_msgSend_removeAllObjects(self->_yinfTextures[0], a2, v2, v3);
  v8 = self->_yinfTextures[1];

  objc_msgSend_removeAllObjects(v8, v5, v6, v7);
}

- (int)setWidth:(unint64_t)width andHeight:(unint64_t)height andPixelFormat:(unint64_t)format
{
  self->_width = width;
  self->_height = height;
  self->_pixelFormat = format;
  return 0;
}

- (int)allocateTextures
{
  v5 = objc_msgSend_allocator(self->_metal, a2, v2, v3);
  v9 = objc_msgSend_newTextureDescriptor(v5, v6, v7, v8);

  if (v9)
  {
    v13 = objc_msgSend_desc(v9, v10, v11, v12);
    objc_msgSend_setCompressionMode_(v13, v14, 2, v15);

    v19 = objc_msgSend_desc(v9, v16, v17, v18);
    objc_msgSend_setCompressionFootprint_(v19, v20, 0, v21);

    v25 = objc_msgSend_desc(v9, v22, v23, v24);
    objc_msgSend_setUsage_(v25, v26, 7, v27);

    v31 = objc_msgSend_desc(v9, v28, v29, v30);
    objc_msgSend_setPixelFormat_(v31, v32, 115, v33);

    v37 = 0;
    v38 = 1;
    while (2)
    {
      v39 = v38;
      for (i = 1; i != 4; ++i)
      {
        v41 = self->_width >> i;
        v42 = objc_msgSend_desc(v9, v34, v35, v36);
        objc_msgSend_setWidth_(v42, v43, v41, v44);

        v45 = self->_height >> i;
        v49 = objc_msgSend_desc(v9, v46, v47, v48);
        objc_msgSend_setHeight_(v49, v50, v45, v51);

        objc_msgSend_setLabel_(v9, v52, 0, v53);
        v57 = objc_msgSend_allocator(self->_metal, v54, v55, v56);
        v60 = objc_msgSend_newTextureWithDescriptor_(v57, v58, v9, v59);

        if (!v60)
        {
          sub_2958865D8(&v65);
          v63 = v65;
          goto LABEL_9;
        }

        objc_msgSend_addObject_(self->_yinfTextures[v37], v61, v60, v62);
      }

      v38 = 0;
      v37 = 1;
      if (v39)
      {
        continue;
      }

      break;
    }

    v63 = 0;
  }

  else
  {
    sub_295886674(&v66);
    v63 = v66;
  }

LABEL_9:

  return v63;
}

- (void)makeTextureAliasable
{
  v4 = 0;
  yinfTextures = self->_yinfTextures;
  v6 = 1;
  do
  {
    v7 = v6;
    if (objc_msgSend_count(yinfTextures[v4], a2, v2, v3))
    {
      v11 = 0;
      do
      {
        v15 = objc_msgSend_objectAtIndexedSubscript_(yinfTextures[v4], v8, v11, v10);
        FigMetalDecRef();

        ++v11;
      }

      while (v11 < objc_msgSend_count(yinfTextures[v4], v12, v13, v14));
    }

    objc_msgSend_removeAllObjects(yinfTextures[v4], v8, v9, v10);
    v6 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
}

- (int)_deghostAndDenoise:(id)denoise uniforms:(DFApplyEspressoOutputUniforms *)uniforms inTexEspressoWeights:(id)weights inTexEspressoWeightsUp:(id)up inRefLaplacian:(id)laplacian inSynthLongLaplacian:(id)longLaplacian inRefGaussian:(id)gaussian inSynthLongGaussian:(id)self0 inRefNoisePyramidLevel3:(id)self1 inSynthLongNoisePyramidLevel3:(id)self2 refNoisePretuning:(id)self3 LSCGains:(id)self4 inTexPrevLevel:(id)self5 outDeghostedDenoised:(id)self6 lowLightMode:(BOOL)self7
{
  denoiseCopy = denoise;
  weightsCopy = weights;
  upCopy = up;
  laplacianCopy = laplacian;
  longLaplacianCopy = longLaplacian;
  gaussianCopy = gaussian;
  longGaussianCopy = longGaussian;
  level3Copy = level3;
  pyramidLevel3Copy = pyramidLevel3;
  pretuningCopy = pretuning;
  gainsCopy = gains;
  levelCopy = level;
  denoisedCopy = denoised;
  v29 = weightsCopy;
  v99 = v29;
  v100 = @"inTexEspressoWeights";
  v101 = 0;
  v30 = upCopy;
  v102 = v30;
  v103 = @"inTexEspressoWeightsUp";
  v104 = 1;
  v87 = laplacianCopy;
  v105 = v87;
  v106 = @"outDeghostedAndDenoised";
  v107 = 2;
  v31 = longLaplacianCopy;
  v108 = v31;
  v109 = @"inSynthLongLaplacian";
  v110 = 3;
  v32 = gaussianCopy;
  v111 = v32;
  v112 = @"inRefGaussian";
  v113 = 4;
  v33 = longGaussianCopy;
  v114 = v33;
  v115 = @"inSynthLongGaussian";
  v116 = 5;
  v117 = pretuningCopy;
  v118 = @"refNoisePretuning";
  v119 = 6;
  v120 = gainsCopy;
  v121 = @"LSCGains";
  v122 = 7;
  v79 = levelCopy;
  v123 = v79;
  v124 = @"inTexPrevLevel";
  v125 = 8;
  v83 = level3Copy;
  v126 = v83;
  v127 = @"inRefNoisePyramidLevel3";
  v128 = 9;
  v73 = pyramidLevel3Copy;
  v129 = v73;
  v130 = @"inSynthLongNoisePyramidLevel3";
  v131 = 10;
  v132 = denoisedCopy;
  v133 = @"outDeghostedDenoised";
  v134 = 11;
  v75 = v117;
  v77 = v120;
  v81 = v132;
  if (!uniforms)
  {
    goto LABEL_13;
  }

  v37 = 0;
  memset(v94, 0, sizeof(v94));
  *&v38 = *&uniforms->var29;
  *(&v38 + 1) = uniforms[1].var2;
  HIDWORD(v38) = LODWORD(uniforms->var31);
  v91 = v38;
  v92 = *&uniforms->var32;
  var1 = uniforms[1].var1;
  v94[0] = uniforms[1].var3.var0;
  *&v94[4] = uniforms->var21;
  *&v94[8] = uniforms[1].var3.var1;
  *&v94[12] = *&uniforms->var12;
  *&v94[28] = *&uniforms->var16;
  *&v94[44] = *&uniforms->var19;
  v94[52] = LOBYTE(uniforms->var26);
  var11 = uniforms->var11;
  if (LODWORD(var11) == 3 && mode)
  {
    v37 = self->_networkVersion == 2;
  }

  v94[53] = v37;
  v95 = var11;
  LODWORD(v40) = uniforms[1].var3.var8;
  DWORD1(v40) = LODWORD(uniforms[1].var31);
  *(&v40 + 1) = *&uniforms[1].var32;
  v96 = *&uniforms[1].var3.var4;
  v97 = v40;
  v98 = uniforms[2].var1;
  *&v94[32] = 0;
  v41 = objc_msgSend_commandBuffer(denoiseCopy, v34, v35, v36);
  v45 = v41;
  if (!v41)
  {
LABEL_13:
    FigDebugAssert3();
    v86 = FigSignalErrorAtGM();
    v70 = v29;
    v45 = 0;
LABEL_15:
    v49 = 0;
    goto LABEL_10;
  }

  v46 = objc_msgSend_computeCommandEncoder(v41, v42, v43, v44);
  v49 = v46;
  if (!v46)
  {
    FigDebugAssert3();
    v86 = FigSignalErrorAtGM();
    v70 = v29;
    goto LABEL_15;
  }

  v50 = uniforms->var11;
  networkVersion = self->_networkVersion;
  objc_msgSend_setLabel_(v46, v47, @"_shaders->_kernelDeghostAndDenoise[configFlags]", v48);
  objc_msgSend_setComputePipelineState_(v49, v52, *(self->_shaders->_kernelDeghostAndDenoise + ((8 * (LODWORD(v50) == 0)) | (16 * (networkVersion == 2)))), v53);
  objc_msgSend_setBytes_length_atIndex_(v49, v54, &v91, 124, 0);
  v56 = &v101;
  v57 = 12;
  do
  {
    objc_msgSend_setTexture_atIndex_(v49, v55, *(v56 - 2), *v56);
    v56 += 6;
    --v57;
  }

  while (v57);
  v90[0] = objc_msgSend_width(v87, v55, v58, v59);
  v90[1] = objc_msgSend_height(v87, v60, v61, v62);
  v90[2] = 1;
  v88 = vdupq_n_s64(8uLL);
  v89 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v49, v63, v90, &v88);
  objc_msgSend_endEncoding(v49, v64, v65, v66);
  objc_msgSend_commit(v45, v67, v68, v69);
  v70 = v29;
  v86 = 0;
LABEL_10:
  v71 = 288;
  do
  {

    v71 -= 24;
  }

  while (v71);

  return v86;
}

- (int)_applyEspressoOutputToLevel:(id)level uniforms:(DFApplyEspressoOutputUniforms *)uniforms inRefGaussian:(id)gaussian slFusionMap:(id)map longFusionMap:(id)fusionMap prefusionWeightsTexture:(id)texture inTexArray:(id)array inTexArrayUp:(id)self0 skinMaskTexture:(id)self1 skyMaskTexture:(id)self2 deghostedAndDenoisedAndTextureness:(id)self3 outTex:(id)self4 tile:(TileBounds *)self5
{
  levelCopy = level;
  gaussianCopy = gaussian;
  mapCopy = map;
  fusionMapCopy = fusionMap;
  textureCopy = texture;
  arrayCopy = array;
  upCopy = up;
  maskTextureCopy = maskTexture;
  skyMaskTextureCopy = skyMaskTexture;
  texturenessCopy = textureness;
  texCopy = tex;
  var11 = uniforms->var11;
  v73 = gaussianCopy;
  v84 = v73;
  v85 = @"RefGaussian";
  v86 = 0;
  v72 = mapCopy;
  v87 = v72;
  v88 = @"SLFusionMap";
  v89 = 1;
  v71 = fusionMapCopy;
  v90 = v71;
  v91 = @"longFusionMap";
  v92 = 2;
  v70 = textureCopy;
  v93 = v70;
  v94 = @"prefusionWeights";
  v95 = 3;
  v69 = arrayCopy;
  v96 = v69;
  v97 = @"inTexArray";
  v98 = 4;
  v68 = upCopy;
  v99 = v68;
  v100 = @"inTexArrayUp";
  v101 = 5;
  v29 = maskTextureCopy;
  v102 = v29;
  v103 = @"skinMaskTexture";
  v104 = 6;
  v30 = skyMaskTextureCopy;
  v105 = v30;
  v106 = @"skyMaskTexture";
  v107 = 7;
  v31 = texturenessCopy;
  v108 = v31;
  v109 = @"deghostedAndDenoisedAndTextureness";
  v110 = 8;
  v32 = texCopy;
  v111 = v32;
  v112 = @"outTex";
  v113 = 9;
  memcpy(__dst, uniforms, 0x150uLL);
  v36 = *&tile->var4;
  *&__dst[10].u8[4] = *&tile->var0;
  *&__dst[12].u8[4] = v36;
  *(&__dst[14] + 4) = *&tile->var8;
  if (var11 != 0.0)
  {
    __dst[13] = 0;
  }

  v37 = objc_msgSend_commandBuffer(levelCopy, v33, v34, v35);
  v41 = v37;
  if (v37 && (objc_msgSend_computeCommandEncoder(v37, v38, v39, v40), v42 = objc_claimAutoreleasedReturnValue(), (v45 = v42) != 0))
  {
    v46 = uniforms->var11;
    networkVersion = self->_networkVersion;
    objc_msgSend_setLabel_(v42, v43, @"_shaders->_kernelApplyEspressoOutput[configFlags]", v44);
    objc_msgSend_setComputePipelineState_(v45, v48, *(self->_shaders->_kernelApplyEspressoOutput + ((8 * (LODWORD(v46) == 0)) | (16 * (networkVersion == 2)))), v49);
    objc_msgSend_setBytes_length_atIndex_(v45, v50, __dst, 336, 0);
    v52 = &v86;
    v53 = 10;
    do
    {
      objc_msgSend_setTexture_atIndex_(v45, v51, *(v52 - 2), *v52);
      v52 += 6;
      --v53;
    }

    while (v53);
    if (var11 == 0.0)
    {
      v54 = vdup_n_s32(LOWORD(tile->var9));
    }

    else
    {
      v54 = 0;
    }

    v83[1] = v54.i16[2];
    v83[0] = v54.i16[0];
    v55 = vshl_s32(*&tile->var3, vdup_lane_s32(vneg_s32(__dst[10]), 0));
    v56.i64[0] = v55.i32[0];
    v56.i64[1] = v55.i32[1];
    v57 = v56;
    if (var11 == 0.0)
    {
      v57 = vsubq_s64(v57, vdupq_n_s64(2 * tile->var9));
    }

    v77 = v57;
    objc_msgSend_setBytes_length_atIndex_(v45, v51, v83, 4, 1);
    v81 = v77;
    v82 = 1;
    v79 = vdupq_n_s64(8uLL);
    v80 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v45, v58, &v81, &v79);
    objc_msgSend_endEncoding(v45, v59, v60, v61);
    objc_msgSend_commit(v41, v62, v63, v64);
    v65 = 0;
  }

  else
  {
    FigDebugAssert3();
    v65 = FigSignalErrorAtGM();
    v45 = 0;
  }

  for (i = 0; i != -240; i -= 24)
  {
  }

  return v65;
}

- (int)_applyEspressoOutputLumaOnlyToLevel:(id)level uniforms:(DFApplyEspressoOutputUniforms *)uniforms inRefGaussian:(id)gaussian slFusionMap:(id)map longFusionMap:(id)fusionMap prefusionWeightsTexture:(id)texture inTexArray:(id)array inTexArrayUp:(id)self0 skinMaskTexture:(id)self1 skyMaskTexture:(id)self2 deghostedAndDenoisedAndTextureness:(id)self3 outTex:(id)self4 tile:(TileBounds *)self5
{
  levelCopy = level;
  gaussianCopy = gaussian;
  mapCopy = map;
  fusionMapCopy = fusionMap;
  textureCopy = texture;
  arrayCopy = array;
  upCopy = up;
  maskTextureCopy = maskTexture;
  skyMaskTextureCopy = skyMaskTexture;
  texturenessCopy = textureness;
  texCopy = tex;
  var11 = uniforms->var11;
  v71 = gaussianCopy;
  v82 = v71;
  v83 = @"RefGaussian";
  v84 = 0;
  v70 = mapCopy;
  v85 = v70;
  v86 = @"SLFusionMap";
  v87 = 1;
  v69 = fusionMapCopy;
  v88 = v69;
  v89 = @"longFusionMap";
  v90 = 2;
  v68 = textureCopy;
  v91 = v68;
  v92 = @"prefusionWeights";
  v93 = 3;
  v67 = arrayCopy;
  v94 = v67;
  v95 = @"inTexArray";
  v96 = 4;
  v66 = upCopy;
  v97 = v66;
  v98 = @"inTexArrayUp";
  v99 = 5;
  v29 = maskTextureCopy;
  v100 = v29;
  v101 = @"skinMaskTexture";
  v102 = 6;
  v30 = skyMaskTextureCopy;
  v103 = v30;
  v104 = @"skyMaskTexture";
  v105 = 7;
  v31 = texturenessCopy;
  v106 = v31;
  v107 = @"deghostedAndDenoisedAndTextureness";
  v108 = 8;
  v32 = texCopy;
  v109 = v32;
  v110 = @"outTex";
  v111 = 9;
  memcpy(__dst, uniforms, 0x150uLL);
  v36 = *&tile->var4;
  *&__dst[10].u8[4] = *&tile->var0;
  *&__dst[12].u8[4] = v36;
  *(&__dst[14] + 4) = *&tile->var8;
  if (var11 != 0.0)
  {
    __dst[13] = 0;
  }

  if (!self->_shaders->_kernelApplyEspressoOutputLumaOnly || (objc_msgSend_commandBuffer(levelCopy, v33, v34, v35), v37 = objc_claimAutoreleasedReturnValue(), (v41 = v37) == 0))
  {
    FigDebugAssert3();
    v63 = FigSignalErrorAtGM();
    v41 = 0;
LABEL_19:
    v45 = 0;
    goto LABEL_14;
  }

  v42 = objc_msgSend_computeCommandEncoder(v37, v38, v39, v40);
  v45 = v42;
  if (!v42)
  {
    FigDebugAssert3();
    v63 = FigSignalErrorAtGM();
    goto LABEL_19;
  }

  objc_msgSend_setLabel_(v42, v43, @"_shaders->_kernelApplyEspressoOutputLumaOnly", v44);
  objc_msgSend_setComputePipelineState_(v45, v46, self->_shaders->_kernelApplyEspressoOutputLumaOnly, v47);
  objc_msgSend_setBytes_length_atIndex_(v45, v48, __dst, 336, 0);
  v50 = &v84;
  v51 = 10;
  do
  {
    objc_msgSend_setTexture_atIndex_(v45, v49, *(v50 - 2), *v50);
    v50 += 6;
    --v51;
  }

  while (v51);
  if (var11 == 0.0)
  {
    v52 = vdup_n_s32(LOWORD(tile->var9));
  }

  else
  {
    v52 = 0;
  }

  v81[1] = v52.i16[2];
  v81[0] = v52.i16[0];
  v53 = vshl_s32(*&tile->var3, vdup_lane_s32(vneg_s32(__dst[10]), 0));
  v54.i64[0] = v53.i32[0];
  v54.i64[1] = v53.i32[1];
  v55 = v54;
  if (var11 == 0.0)
  {
    v55 = vsubq_s64(v55, vdupq_n_s64(2 * tile->var9));
  }

  v75 = v55;
  objc_msgSend_setBytes_length_atIndex_(v45, v49, v81, 4, 1);
  v79 = v75;
  v80 = 1;
  v77 = vdupq_n_s64(8uLL);
  v78 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v45, v56, &v79, &v77);
  objc_msgSend_endEncoding(v45, v57, v58, v59);
  objc_msgSend_commit(v41, v60, v61, v62);
  v63 = 0;
LABEL_14:
  for (i = 0; i != -240; i -= 24)
  {
  }

  return v63;
}

- (int)_collapseWeightsOnTile:(id)tile inoutTexNSArray:(id)array
{
  tileCopy = tile;
  arrayCopy = array;
  if (!arrayCopy)
  {
    sub_2958868F8(v56);
LABEL_16:
    v52 = v56[0];
    goto LABEL_11;
  }

  if (!self->_shaders->_kernelCollapseWeightsOnTileStage1)
  {
    sub_29588685C(v56);
    goto LABEL_16;
  }

  v11 = objc_msgSend_commandBuffer(tileCopy, v7, v8, v9);
  if (!v11)
  {
    sub_2958867C0(v56);
    goto LABEL_16;
  }

  v15 = v11;
  v16 = objc_msgSend_computeCommandEncoder(v11, v12, v13, v14);
  if (!v16)
  {
    sub_295886710(v15);
    goto LABEL_16;
  }

  v19 = v16;
  objc_msgSend_setLabel_(v16, v17, @"_shaders->_kernelCollapseWeightsOnTileStage1", v18);
  objc_msgSend_setComputePipelineState_(v19, v20, self->_shaders->_kernelCollapseWeightsOnTileStage1, v21);
  objc_msgSend_setImageblockWidth_height_(v19, v22, 32, 32);
  if (self->_networkVersion == 2)
  {
    v25 = 1;
    goto LABEL_8;
  }

  v25 = 2;
  objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v23, 2, v24);
  while (1)
    v26 = {;
    v30 = objc_msgSend_width(v26, v27, v28, v29);

    v33 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v31, v25, v32);
    v37 = objc_msgSend_height(v33, v34, v35, v36);

    v40 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v38, v25, v39);
    objc_msgSend_setTexture_atIndex_(v19, v41, v40, 0);

    v44 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v42, v25 + 1, v43);
    objc_msgSend_setTexture_atIndex_(v19, v45, v44, 1);

    v56[0] = v30;
    v56[1] = v37;
    v56[2] = 1;
    v54 = vdupq_n_s64(0x20uLL);
    v55 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v19, v46, v56, &v54);
    if (v25-- <= 1)
    {
      break;
    }

LABEL_8:
    objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v23, v25, v24);
  }

  objc_msgSend_endEncoding(v19, v23, v47, v24);
  objc_msgSend_commit(v15, v49, v50, v51);

  v52 = 0;
LABEL_11:

  return v52;
}

- (int)_computeTextureness:(id)textureness applyUniforms:(DFApplyEspressoOutputUniforms *)uniforms inputTexture:(id)texture outputTexture:(id)outputTexture lscGainsTex:(id)tex
{
  texturenessCopy = textureness;
  textureCopy = texture;
  outputTextureCopy = outputTexture;
  texCopy = tex;
  v19 = objc_msgSend_width(textureCopy, v16, v17, v18);
  v23 = objc_msgSend_height(textureCopy, v20, v21, v22);
  if (!self->_shaders->_kernelComputeTextureness)
  {
    sub_295886CC8(v55);
LABEL_9:
    v51 = v55[0];
    goto LABEL_5;
  }

  v27 = v23;
  v28 = objc_msgSend_commandBuffer(texturenessCopy, v24, v25, v26);
  if (!v28)
  {
    sub_295886C2C(v55);
    goto LABEL_9;
  }

  v32 = v28;
  v33 = objc_msgSend_computeCommandEncoder(v28, v29, v30, v31);
  if (!v33)
  {
    sub_295886B7C(v32);
    goto LABEL_9;
  }

  v36 = v33;
  v56 = *&uniforms->var23;
  var25 = uniforms->var25;
  v59 = *&uniforms->var16;
  v58 = *&uniforms->var12;
  v60 = *&uniforms->var19;
  var21 = uniforms->var21;
  var1 = uniforms[1].var3.var1;
  *(&v59 + 4) = 0;
  objc_msgSend_setLabel_(v33, v34, @"_shaders->_kernelComputeTextureness", v35);
  objc_msgSend_setComputePipelineState_(v36, v37, self->_shaders->_kernelComputeTextureness, v38);
  objc_msgSend_setImageblockWidth_height_(v36, v39, 32, 32);
  objc_msgSend_setTexture_atIndex_(v36, v40, textureCopy, 0);
  objc_msgSend_setTexture_atIndex_(v36, v41, texCopy, 1);
  objc_msgSend_setTexture_atIndex_(v36, v42, outputTextureCopy, 2);
  objc_msgSend_setBytes_length_atIndex_(v36, v43, &v56, 60, 0);
  v55[0] = v19;
  v55[1] = v27;
  v55[2] = 1;
  v53 = vdupq_n_s64(0x20uLL);
  v54 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v36, v44, v55, &v53);
  objc_msgSend_endEncoding(v36, v45, v46, v47);
  objc_msgSend_commit(v32, v48, v49, v50);

  v51 = 0;
LABEL_5:

  return v51;
}

- (int)_validateInputsForTile:(TileBounds *)tile espressoOutputTextureArray:(id)array inRefGaussianArray:(id)gaussianArray inSLGaussianArray:(id)lGaussianArray inRefLaplacianArray:(id)laplacianArray inSLLaplacianArray:(id)lLaplacianArray inRefNoisePyramidLevel3:(id)level3 inSLNoisePyramidLevel3:(id)self0 slFusionMap:(id)self1 longFusionMap:(id)self2 prefusionWeightsTexture:(id)self3 skinMaskTexture:(id)self4 skyMaskTexture:(id)self5 finalOutputTexture:(id)self6 lscGains:(id)self7 refNoisePretuning:(id)self8
{
  arrayCopy = array;
  gaussianArrayCopy = gaussianArray;
  lGaussianArrayCopy = lGaussianArray;
  laplacianArrayCopy = laplacianArray;
  lLaplacianArrayCopy = lLaplacianArray;
  level3Copy = level3;
  pyramidLevel3Copy = pyramidLevel3;
  mapCopy = map;
  fusionMapCopy = fusionMap;
  textureCopy = texture;
  maskTextureCopy = maskTexture;
  skyMaskTextureCopy = skyMaskTexture;
  outputTextureCopy = outputTexture;
  gainsCopy = gains;
  pretuningCopy = pretuning;
  v118 = pretuningCopy;
  if (!tile)
  {
    sub_295887FBC(v159);
    v74 = 0;
    v116 = v159[0];
    v32 = arrayCopy;
    goto LABEL_79;
  }

  v32 = arrayCopy;
  if (!arrayCopy)
  {
    sub_295887F20(v159);
    goto LABEL_111;
  }

  if (!mapCopy)
  {
    sub_295887E84(v159);
    goto LABEL_111;
  }

  if (!textureCopy)
  {
    sub_295887DE8(v159);
    goto LABEL_111;
  }

  if (!outputTextureCopy)
  {
    sub_295887D4C(v159);
    goto LABEL_111;
  }

  if (!gaussianArrayCopy)
  {
    sub_295887CB0(v159);
    goto LABEL_111;
  }

  if (!lGaussianArrayCopy)
  {
    sub_295887C14(v159);
    goto LABEL_111;
  }

  if (!laplacianArrayCopy)
  {
    sub_295887B78(v159);
    goto LABEL_111;
  }

  if (!lLaplacianArrayCopy)
  {
    sub_295887ADC(v159);
    goto LABEL_111;
  }

  if (!gainsCopy)
  {
    sub_295887A40(v159);
    goto LABEL_111;
  }

  if (!pretuningCopy)
  {
    sub_2958879A4(v159);
    goto LABEL_111;
  }

  v122 = maskTextureCopy;
  v123 = fusionMapCopy;
  v33 = objc_msgSend_width(mapCopy, v29, v30, v31);
  v124 = mapCopy;
  v37 = objc_msgSend_height(mapCopy, v34, v35, v36);
  if (!self->_width || !self->_height)
  {
    sub_295887908(v159);
LABEL_102:
    v74 = 0;
LABEL_103:
    v116 = v159[0];
    goto LABEL_78;
  }

  if (!self->_pixelFormat)
  {
    sub_29588786C(v159);
    goto LABEL_102;
  }

  v41 = v37;
  if (v33 != objc_msgSend_width(textureCopy, v38, v39, v40) || v41 != objc_msgSend_height(textureCopy, v42, v43, v44))
  {
    sub_295886D64(v159);
    goto LABEL_102;
  }

  fusionMapCopy = v123;
  maskTextureCopy = v122;
  if (sub_29580B938(textureCopy) != 1)
  {
    sub_295886E00(v159);
    goto LABEL_111;
  }

  if (v122 && sub_29580B938(v122) != 1)
  {
    sub_295886E9C(v159);
    goto LABEL_111;
  }

  if (skyMaskTextureCopy && sub_29580B938(skyMaskTextureCopy) != 1)
  {
    sub_295886F38(v159);
    goto LABEL_111;
  }

  if (sub_29580B938(mapCopy) != 1)
  {
    sub_295886FD4(v159);
    goto LABEL_111;
  }

  if (v123 && sub_29580B938(v123) != 1)
  {
    sub_295887070(v159);
    goto LABEL_111;
  }

  if (sub_29580B938(outputTextureCopy) != 4)
  {
    sub_29588710C(v159);
    goto LABEL_111;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(arrayCopy, v45, v46, v47) != 4)
  {
    sub_2958871A8(v159);
LABEL_111:
    v74 = 0;
    v116 = v159[0];
    goto LABEL_79;
  }

  if (sub_29580B938(gainsCopy) < 3)
  {
    sub_2958877D0(v159);
    goto LABEL_111;
  }

  v135 = skyMaskTextureCopy;
  for (i = 0; i != 4; ++i)
  {
    v51 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v48, i, v49);
    if ((objc_msgSend_conformsToProtocol_(v51, v52, &unk_2A1CD4400, v53) & 1) == 0)
    {
      sub_295887244(v159);
LABEL_83:
      v116 = v159[0];

      v74 = 0;
      fusionMapCopy = v123;
      maskTextureCopy = v122;
      goto LABEL_79;
    }

    if (sub_29580B938(v51) != 1)
    {
      sub_2958872E0(v159);
      goto LABEL_83;
    }

    pixelFormat = self->_pixelFormat;
    objc_msgSend_pixelFormat(v51, v54, v55, v56);
    v61 = objc_msgSend_device(v51, v58, v59, v60);
    v160 = 0;
    memset(v159, 0, sizeof(v159));
    MTLPixelFormatGetInfoForDevice();
    v158 = 0;
    v156 = 0u;
    v157 = 0u;
    v155 = 0u;
    MTLPixelFormatGetInfoForDevice();
  }

  v62 = 1;
  do
  {
    width = self->_width;
    height = self->_height;
    v65 = objc_msgSend_objectAtIndexedSubscript_(self->_yinfTextures[0], v48, v62 - 1, v49);
    v69 = v65;
    if (!v65)
    {
      sub_295887734(v159);
      goto LABEL_85;
    }

    v70 = v62;
    if (objc_msgSend_width(v65, v66, v67, v68) != width >> v62 || objc_msgSend_height(v69, v71, v72, v73) != height >> v62)
    {
      sub_295887418(v159);
LABEL_85:
      v116 = v159[0];
      v32 = arrayCopy;

      v74 = 0;
      goto LABEL_78;
    }

    ++v62;
  }

  while (v70 != 3);
  v154[0] = lGaussianArrayCopy;
  v154[1] = gaussianArrayCopy;
  v154[2] = laplacianArrayCopy;
  v154[3] = lLaplacianArrayCopy;
  objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v48, v154, 4);
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v74 = v153 = 0u;
  v125 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v75, &v150, v149, 16);
  if (v125)
  {
    v127 = textureCopy;
    v128 = *v151;
    v126 = v74;
    while (2)
    {
      v76 = 0;
      do
      {
        if (*v151 != v128)
        {
          objc_enumerationMutation(v74);
        }

        v77 = *(*(&v150 + 1) + 8 * v76);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v77, v78, v79, v80) != 4)
        {
          sub_2958874B4(v159);
          v116 = v159[0];
LABEL_70:

          goto LABEL_77;
        }

        v137 = v76;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v81 = v77;
        v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v82, &v145, v144, 16);
        if (v83)
        {
          v87 = v83;
          v88 = 0;
          v89 = *v146;
          while (2)
          {
            v90 = 0;
            v91 = v88;
            v88 += v87;
            do
            {
              if (*v146 != v89)
              {
                objc_enumerationMutation(v81);
              }

              v92 = *(*(&v145 + 1) + 8 * v90);
              v93 = self->_height;
              v94 = self->_width >> v91;
              if (v94 != objc_msgSend_width(v92, v84, v85, v86) || v93 >> v91 != objc_msgSend_height(v92, v95, v96, v97))
              {
                sub_295887550(v81, v159);
                v116 = v159[0];
                v74 = v126;
                textureCopy = v127;
                skyMaskTextureCopy = v135;
                goto LABEL_70;
              }

              ++v91;
              ++v90;
            }

            while (v87 != v90);
            v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v84, &v145, v144, 16);
            if (v87)
            {
              continue;
            }

            break;
          }
        }

        skyMaskTextureCopy = v135;
        v76 = v137 + 1;
        v74 = v126;
        textureCopy = v127;
      }

      while (v137 + 1 != v125);
      v125 = objc_msgSend_countByEnumeratingWithState_objects_count_(v126, v98, &v150, v149, 16);
      if (v125)
      {
        continue;
      }

      break;
    }
  }

  networkVersion = self->_networkVersion;
  if (!pyramidLevel3Copy || !level3Copy || networkVersion != 2)
  {
    v32 = arrayCopy;
    if (!pyramidLevel3Copy && !level3Copy && networkVersion == 1)
    {
      v116 = 0;
      goto LABEL_78;
    }

    sub_2958875FC(v159);
    goto LABEL_103;
  }

  v143[0] = level3Copy;
  v143[1] = pyramidLevel3Copy;
  objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v99, v143, 2);
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v101 = v142 = 0u;
  v103 = objc_msgSend_countByEnumeratingWithState_objects_count_(v101, v102, &v139, v138, 16);
  if (v103)
  {
    v107 = v103;
    v108 = *v140;
    while (2)
    {
      for (j = 0; j != v107; ++j)
      {
        if (*v140 != v108)
        {
          objc_enumerationMutation(v101);
        }

        v110 = *(*(&v139 + 1) + 8 * j);
        v111 = self->_width;
        if (objc_msgSend_width(v110, v104, v105, v106) == v111 >> 3)
        {
          v115 = self->_height;
          if (objc_msgSend_height(v110, v112, v113, v114) == v115 >> 3)
          {
            continue;
          }
        }

        sub_295887698(v159);
        v116 = v159[0];
        goto LABEL_76;
      }

      v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(v101, v104, &v139, v138, 16);
      if (v107)
      {
        continue;
      }

      break;
    }
  }

  v116 = 0;
LABEL_76:

LABEL_77:
  v32 = arrayCopy;
LABEL_78:
  fusionMapCopy = v123;
  mapCopy = v124;
  maskTextureCopy = v122;
LABEL_79:

  return v116;
}

- (int)_createUpsampledWithGaussianFilter:(id)filter inTexPrevLevel:(id *)level
{
  filterCopy = filter;
  v10 = objc_msgSend_allocator(self->_metal, v7, v8, v9);
  v14 = objc_msgSend_newTextureDescriptor(v10, v11, v12, v13);

  if (v14)
  {
    v18 = objc_msgSend_desc(v14, v15, v16, v17);
    objc_msgSend_setCompressionMode_(v18, v19, 2, v20);

    v24 = objc_msgSend_desc(v14, v21, v22, v23);
    objc_msgSend_setCompressionFootprint_(v24, v25, 0, v26);

    v30 = objc_msgSend_pixelFormat(*level, v27, v28, v29);
    v34 = objc_msgSend_desc(v14, v31, v32, v33);
    objc_msgSend_setPixelFormat_(v34, v35, v30, v36);

    v40 = 2 * objc_msgSend_width(*level, v37, v38, v39);
    v44 = objc_msgSend_desc(v14, v41, v42, v43);
    objc_msgSend_setWidth_(v44, v45, v40, v46);

    v50 = 2 * objc_msgSend_height(*level, v47, v48, v49);
    v54 = objc_msgSend_desc(v14, v51, v52, v53);
    objc_msgSend_setHeight_(v54, v55, v50, v56);

    v60 = objc_msgSend_desc(v14, v57, v58, v59);
    objc_msgSend_setUsage_(v60, v61, 3, v62);

    objc_msgSend_setLabel_(v14, v63, 0, v64);
    v68 = objc_msgSend_allocator(self->_metal, v65, v66, v67);
    v71 = objc_msgSend_newTextureWithDescriptor_(v68, v69, v14, v70);

    v75 = objc_msgSend_commandBuffer(filterCopy, v72, v73, v74);
    if (v75)
    {
      v77 = v75;
      v78 = objc_msgSend_upsampleUsing_inputTex_outputTexUpsampled_upsamplingFilter_(self->_laplacianPyram, v76, v75, *level, v71, 1);
      v82 = v78;
      if (v78)
      {
        sub_295888058(v78, v71, v77);
      }

      else
      {
        objc_msgSend_commit(v77, v79, v80, v81);
        v83 = v71;
        *level = v71;
      }
    }

    else
    {
      sub_2958880E0(v71);
      v82 = v85;
    }
  }

  else
  {
    sub_295888190(&v86);
    v82 = v86;
  }

  return v82;
}

- (int)applyWeightsOnTile:(id)tile uniforms:(DFApplyEspressoOutputUniforms *)uniforms espressoOutputTextureArray:(id)array inRefGaussianArray:(id)gaussianArray inSLGaussianArray:(id)lGaussianArray inRefLaplacianArray:(id)laplacianArray inSLLaplacianArray:(id)lLaplacianArray inRefNoisePyramidLevel3:(id)self0 inSLNoisePyramidLevel3:(id)self1 slFusionMap:(id)self2 longFusionMap:(id)self3 prefusionWeightsTexture:(id)self4 skinMaskTexture:(id)self5 skyMaskTexture:(id)self6 lscGains:(id)self7 refNoisePretuning:(id)self8 tile:(TileBounds *)self9 finalOutputTexture:(id)outputTexture lowLightMode:(BOOL)mode
{
  tileCopy = tile;
  arrayCopy = array;
  gaussianArrayCopy = gaussianArray;
  lGaussianArrayCopy = lGaussianArray;
  laplacianArrayCopy = laplacianArray;
  lLaplacianArrayCopy = lLaplacianArray;
  level3Copy = level3;
  v27 = laplacianArrayCopy;
  pyramidLevel3Copy = pyramidLevel3;
  mapCopy = map;
  selfCopy = self;
  fusionMapCopy = fusionMap;
  textureCopy = texture;
  maskTextureCopy = maskTexture;
  skyMaskTextureCopy = skyMaskTexture;
  gainsCopy = gains;
  pretuningCopy = pretuning;
  outputTextureCopy = outputTexture;
  if (a19->var0 >= 0)
  {
    v38 = a19->var0 & 1;
  }

  else
  {
    v38 = -(a19->var0 & 1);
  }

  v114 = v38;
  v106 = pretuningCopy;
  v112 = gainsCopy;
  v99 = outputTextureCopy;
  v100 = skyMaskTextureCopy;
  v101 = maskTextureCopy;
  v102 = textureCopy;
  v103 = fusionMapCopy;
  v104 = mapCopy;
  v39 = objc_msgSend__validateInputsForTile_espressoOutputTextureArray_inRefGaussianArray_inSLGaussianArray_inRefLaplacianArray_inSLLaplacianArray_inRefNoisePyramidLevel3_inSLNoisePyramidLevel3_slFusionMap_longFusionMap_prefusionWeightsTexture_skinMaskTexture_skyMaskTexture_finalOutputTexture_lscGains_refNoisePretuning_(self, v37, a19, arrayCopy, gaussianArrayCopy, lGaussianArrayCopy, v27, lLaplacianArrayCopy, level3Copy, pyramidLevel3Copy, mapCopy, fusionMapCopy, textureCopy, maskTextureCopy, skyMaskTextureCopy, outputTextureCopy, gainsCopy, pretuningCopy);
  if (v39)
  {
    Level_outDeghostedDenoised_lowLightMode = v39;
    sub_29588822C();
    v41 = tileCopy;
  }

  else
  {
    v41 = tileCopy;
    v42 = objc_msgSend__collapseWeightsOnTile_inoutTexNSArray_(self, v40, tileCopy, arrayCopy);
    if (!v42)
    {
      yinfTextures = self->_yinfTextures;
      p_var3 = &uniforms[6].var3.var3;
      v46 = 4;
      v105 = arrayCopy;
      while (1)
      {
        v47 = v46 - 1;
        v124 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v43, v46 - 1, v44);
        if ((v46 - 1) > 2)
        {
          v123 = 0;
        }

        else
        {
          v123 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v48, v46, v49);
          if (v46 == 1)
          {
            v52 = v99;
            v116 = 1;
            goto LABEL_13;
          }
        }

        v53 = objc_msgSend_objectAtIndexedSubscript_(yinfTextures[v114], v48, v46 - 2, v49);
        v52 = v53;
        if (v46 == 4)
        {
          v121 = v53;
          v116 = 0;
          v56 = 0;
          location = 0;
          goto LABEL_18;
        }

        v116 = 0;
LABEL_13:
        v54 = objc_msgSend_objectAtIndexedSubscript_(yinfTextures[v114], v50, v46 - 1, v51);
        location = v54;
        v121 = v52;
        if (selfCopy->_networkVersion != 2)
        {
          v56 = 0;
LABEL_18:
          v119 = v46;
          v57 = *&a19->var0;
          v58 = *&a19->var4;
          *(p_var3 + 116) = *&a19->var8;
          *(p_var3 + 100) = v58;
          *(p_var3 + 84) = v57;
          v59 = selfCopy;
          v60 = v46 == 4 && selfCopy->_networkVersion == 2;
          v61 = !v60;
          v111 = v56;
          if (v60)
          {
            v62 = v121;
          }

          else
          {
            v62 = objc_msgSend_objectAtIndexedSubscript_(v27, v50, v46 - 1, v51);
          }

          v65 = v62;
          v66 = v27;
          v67 = objc_msgSend_objectAtIndexedSubscript_(v27, v63, v47, v64);
          v70 = objc_msgSend_objectAtIndexedSubscript_(lLaplacianArrayCopy, v68, v47, v69);
          v73 = objc_msgSend_objectAtIndexedSubscript_(gaussianArrayCopy, v71, v47, v72);
          v76 = objc_msgSend_objectAtIndexedSubscript_(lGaussianArrayCopy, v74, v47, v75);
          v78 = v76;
          v80 = pyramidLevel3Copy;
          v79 = level3Copy;
          if (v61 | mode)
          {
            v79 = 0;
            v80 = 0;
          }

          LOBYTE(v98) = mode;
          v122 = v65;
          Level_outDeghostedDenoised_lowLightMode = objc_msgSend__deghostAndDenoise_uniforms_inTexEspressoWeights_inTexEspressoWeightsUp_inRefLaplacian_inSynthLongLaplacian_inRefGaussian_inSynthLongGaussian_inRefNoisePyramidLevel3_inSynthLongNoisePyramidLevel3_refNoisePretuning_LSCGains_inTexPrevLevel_outDeghostedDenoised_lowLightMode_(v59, v77, tileCopy, p_var3, v124, v123, v67, v70, v73, v76, v79, v80, v106, v112, location, v65, v98);

          if (Level_outDeghostedDenoised_lowLightMode)
          {
            sub_29588834C();
            v94 = 1;
            v41 = tileCopy;
            arrayCopy = v105;
            v27 = v66;
          }

          else
          {
            arrayCopy = v105;
            v27 = v66;
            if (v61)
            {
              v83 = *(p_var3 + 32);
              v41 = tileCopy;
              selfCopy = v59;
              if (!v83)
              {
                goto LABEL_36;
              }

              if (v83 == 1)
              {
                objc_msgSend_objectAtIndexedSubscript_(gaussianArrayCopy, v81, v47, v82);
              }

              else
              {
                objc_msgSend_objectAtIndexedSubscript_(lGaussianArrayCopy, v81, v47, v82);
              }
              v84 = ;
              Level_outDeghostedDenoised_lowLightMode = objc_msgSend__computeTextureness_applyUniforms_inputTexture_outputTexture_lscGainsTex_(v59, v85, tileCopy, p_var3, v84, v122, v112);

              if (!Level_outDeghostedDenoised_lowLightMode)
              {
LABEL_36:
                v86 = v116 ^ 1;
                if (v59->_networkVersion != 2)
                {
                  v86 = 1;
                }

                v46 = v119;
                v52 = v121;
                if (v86)
                {
                  v95 = objc_msgSend_objectAtIndexedSubscript_(gaussianArrayCopy, v81, v47, v82);
                  Level_outDeghostedDenoised_lowLightMode = objc_msgSend__applyEspressoOutputToLevel_uniforms_inRefGaussian_slFusionMap_longFusionMap_prefusionWeightsTexture_inTexArray_inTexArrayUp_skinMaskTexture_skyMaskTexture_deghostedAndDenoisedAndTextureness_outTex_tile_(selfCopy, v96, tileCopy, p_var3, v95, v104, v103, v102, v124, v123, v101, v100, v122, v121, a19);

                  if (Level_outDeghostedDenoised_lowLightMode)
                  {
                    sub_29588840C();
                    goto LABEL_66;
                  }

                  if (v119 != 4)
                  {
                    v90 = location;
                    if (v116)
                    {
LABEL_41:
                      v91 = v111;
                      HIWORD(v125) = WORD2(*&a19->var5);
                      LOWORD(v125) = *&a19->var5;
                      v92 = objc_msgSend__addPreviousLevel_inoutTex_inTexPrevLevel_writeOffset_applyUniforms_useUpsampledImage_(selfCopy, v89, tileCopy, v121, v90, v125, p_var3, v111);
                    }

                    else
                    {
                      v91 = v111;
                      v92 = objc_msgSend__addPreviousLevel_inoutTex_inTexPrevLevel_writeOffset_applyUniforms_useUpsampledImage_(selfCopy, v89, tileCopy, v121, location, 0, p_var3, v111);
                    }

                    if (v92)
                    {
                      Level_outDeghostedDenoised_lowLightMode = v92;
                      sub_2958884CC();
                      goto LABEL_66;
                    }

                    v93 = v91 ^ 1;
                    if (v119 == 4)
                    {
                      v93 = 1;
                    }

                    if ((v93 & 1) == 0)
                    {
                      FigMetalDecRef();
                    }
                  }

                  v94 = 0;
                  Level_outDeghostedDenoised_lowLightMode = 0;
                }

                else
                {
                  v87 = objc_msgSend_objectAtIndexedSubscript_(gaussianArrayCopy, v81, 0, v82);
                  Level_outDeghostedDenoised_lowLightMode = objc_msgSend__applyEspressoOutputLumaOnlyToLevel_uniforms_inRefGaussian_slFusionMap_longFusionMap_prefusionWeightsTexture_inTexArray_inTexArrayUp_skinMaskTexture_skyMaskTexture_deghostedAndDenoisedAndTextureness_outTex_tile_(selfCopy, v88, tileCopy, p_var3, v87, v104, v103, v102, v124, v123, v101, v100, v122, v121, a19);

                  if (!Level_outDeghostedDenoised_lowLightMode)
                  {
                    v90 = location;
                    goto LABEL_41;
                  }

                  sub_29588846C();
LABEL_66:
                  v94 = 1;
                }

LABEL_53:

                goto LABEL_54;
              }

              sub_2958883AC();
              v94 = 1;
LABEL_49:
              v46 = v119;
              v52 = v121;
              goto LABEL_53;
            }

            v94 = 0;
            Level_outDeghostedDenoised_lowLightMode = 0;
            v41 = tileCopy;
          }

          selfCopy = v59;
          goto LABEL_49;
        }

        v126 = v54;
        Level_outDeghostedDenoised_lowLightMode = objc_msgSend__createUpsampledWithGaussianFilter_inTexPrevLevel_(selfCopy, v50, v41, &v126);
        objc_storeStrong(&location, v126);
        if (!Level_outDeghostedDenoised_lowLightMode)
        {
          v56 = 1;
          goto LABEL_18;
        }

        sub_2958882EC();
        v94 = 1;
LABEL_54:

        if ((v94 & 1) == 0)
        {
          p_var3 -= 336;
          v60 = v46 == 1;
          v46 = v47;
          if (!v60)
          {
            continue;
          }
        }

        goto LABEL_69;
      }
    }

    Level_outDeghostedDenoised_lowLightMode = v42;
    sub_29588828C();
  }

LABEL_69:

  return Level_outDeghostedDenoised_lowLightMode;
}

- (int)convert444to420:(id)convert444to420 input444:(id)input444 outputLuma:(id)luma outputChroma:(id)chroma outputOffset:(TileBounds *)offset
{
  convert444to420Copy = convert444to420;
  input444Copy = input444;
  lumaCopy = luma;
  chromaCopy = chroma;
  v19 = chromaCopy;
  if (!input444Copy)
  {
    sub_295888984(v63);
LABEL_19:
    v59 = v63[0];
    goto LABEL_10;
  }

  if (!lumaCopy)
  {
    sub_2958888E8(v63);
    goto LABEL_19;
  }

  if (!chromaCopy)
  {
    sub_29588884C(v63);
    goto LABEL_19;
  }

  v20 = objc_msgSend_width(lumaCopy, v16, v17, v18);
  if (v20 != 2 * objc_msgSend_width(v19, v21, v22, v23))
  {
    sub_29588852C(v63);
    goto LABEL_19;
  }

  v27 = objc_msgSend_height(lumaCopy, v24, v25, v26);
  if (v27 != 2 * objc_msgSend_height(v19, v28, v29, v30))
  {
    sub_2958885C8(v63);
    goto LABEL_19;
  }

  if (!self->_shaders->_kernelConvert444to420)
  {
    sub_2958887B0(v63);
    goto LABEL_19;
  }

  var7 = offset->var7;
  var8 = offset->var8;
  v36 = objc_msgSend_commandBuffer(convert444to420Copy, v31, v32, v33);
  if (!v36)
  {
    sub_295888714(v63);
    goto LABEL_19;
  }

  v40 = v36;
  v41 = objc_msgSend_computeCommandEncoder(v36, v37, v38, v39);
  if (!v41)
  {
    sub_295888664(v40);
    goto LABEL_19;
  }

  v44 = v41;
  objc_msgSend_setLabel_(v41, v42, @"_shaders->_kernelConvert444to420", v43);
  objc_msgSend_setComputePipelineState_(v44, v45, self->_shaders->_kernelConvert444to420, v46);
  objc_msgSend_setImageblockWidth_height_(v44, v47, 32, 32);
  objc_msgSend_setTexture_atIndex_(v44, v48, input444Copy, 0);
  objc_msgSend_setTexture_atIndex_(v44, v49, lumaCopy, 1);
  objc_msgSend_setTexture_atIndex_(v44, v50, v19, 2);
  objc_msgSend_setBytes_length_atIndex_(v44, v51, offset, 40, 0);
  v63[0] = var7 >> 1;
  v63[1] = var8 >> 1;
  v63[2] = 1;
  v61 = vdupq_n_s64(0x10uLL);
  v62 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v44, v52, v63, &v61);
  objc_msgSend_endEncoding(v44, v53, v54, v55);
  objc_msgSend_commit(v40, v56, v57, v58);

  v59 = 0;
LABEL_10:

  return v59;
}

- (uint64_t)createShaderUniforms:(float)uniforms totalGain:(float)gain EVM_EV0_motionScore:(float)score lscGainGreenMax:(int64x2_t)max slQuantBounds:(float)bounds espressoModel:(uint64_t)model fullSize:(uint64_t)size uniforms:(void *)self0 hasLong:(uint64_t)self1 hasSIFR:(uint64_t)self2 isStationary:(int)self3 isSyntheticLongWithRealLong:(int)self4 aeShutterTimeRatio:(uint64_t)self5 colorCorrection:(BOOL)self6 inverseColorCorrection:(uint64_t)self7
{
  v28 = a10;
  v31 = v28;
  if (!v28)
  {
    sub_295888C90(&v185);
LABEL_48:
    v126 = v185;
    goto LABEL_45;
  }

  if (!r)
  {
    sub_295888BF4(&v185);
    goto LABEL_48;
  }

  v32 = objc_msgSend_addBackModulationBandsForModel_(v28, v29, long, v30);
  v35 = objc_msgSend_fusionDataForModel_(v31, v33, long, v34);
  v152 = objc_msgSend_chromaBoostBandsForModel_isSyntheticLongWithRealLong_(v31, v36, long, correction);
  v39 = objc_msgSend_desaturationDataForModel_(v31, v37, long, v38);
  v151 = objc_msgSend_haloSuppressionBandsForModel_(v31, v40, long, v41);
  objc_msgSend_darkEdgeSuppressionBandsForModel_(v31, v42, long, v43);
  v150 = v149 = v32;
  if (!v32)
  {
    FigDebugAssert3();
    v126 = FigSignalErrorAtGM();

    goto LABEL_45;
  }

  if (!v35)
  {
    FigDebugAssert3();
    v126 = FigSignalErrorAtGM();

LABEL_61:
    goto LABEL_45;
  }

  if (!v152)
  {
    FigDebugAssert3();
    v126 = FigSignalErrorAtGM();

LABEL_60:
    goto LABEL_61;
  }

  if (!v39)
  {
    FigDebugAssert3();
    v126 = FigSignalErrorAtGM();

LABEL_58:
    v129 = v152;
LABEL_59:

    goto LABEL_60;
  }

  if (!v151)
  {
    FigDebugAssert3();
    v126 = FigSignalErrorAtGM();
    v128 = v150;
LABEL_57:

    goto LABEL_58;
  }

  if (!v150)
  {
    FigDebugAssert3();
    v126 = FigSignalErrorAtGM();
LABEL_56:
    v128 = v151;
    goto LABEL_57;
  }

  if (objc_msgSend_count(v32, v44, v45, v46) <= 3 || objc_msgSend_count(v152, v47, v48, v49) <= 3 || objc_msgSend_count(v151, v50, v51, v52) <= 3 || objc_msgSend_count(v150, v53, v54, v55) <= 3)
  {
    FigDebugAssert3();
    v126 = FigSignalErrorAtGM();

    goto LABEL_56;
  }

  v56 = &OBJC_IVAR___DeepFusionFusion_slEv0;
  if (stationary)
  {
    v56 = &OBJC_IVAR___DeepFusionFusion_slEv0Long;
  }

  v57 = *&v35[*v56];
  v58 = &OBJC_IVAR___DeepFusionFusionData_noSifrBands;
  if (realLong)
  {
    v58 = &OBJC_IVAR___DeepFusionFusionData_sifrBands;
  }

  v148 = v57;
  v59 = *(v57 + *v58);
  if (!v59)
  {
    FigDebugAssert3();
    v126 = FigSignalErrorAtGM();

    v129 = v148;
    goto LABEL_59;
  }

  v60 = v59;
  rCopy = r;
  v130 = v35;
  v131 = v31;
  v139 = sub_29584472C(v39[1], self);
  v61 = sub_29584472C(v39[2], self);
  v142 = sub_29584472C(v39[3], self);
  v64 = 0;
  v65 = 0;
  v132 = 0;
  v137 = *(MEMORY[0x29EDCA928] + 16);
  v138 = *MEMORY[0x29EDCA928];
  v136 = *(MEMORY[0x29EDCA928] + 32);
  if (realLong)
  {
    v66 = 1;
  }

  else
  {
    v66 = 2;
  }

  v133 = v66;
  v135 = vmovn_s64(max);
  v134 = 1.0 / (v61 * v61);
  realLongCopy = realLong;
  do
  {
    v190 = 0;
    v191 = 0;
    v187 = 0;
    v188 = 0;
    v189 = 0;
    v185 = 0u;
    v186 = 0u;
    v67 = objc_msgSend_objectAtIndexedSubscript_(v149, v62, v65, v63);
    v70 = objc_msgSend_objectAtIndexedSubscript_(v152, v68, v65, v69);
    v73 = objc_msgSend_objectAtIndexedSubscript_(v151, v71, v65, v72);
    v76 = objc_msgSend_objectAtIndexedSubscript_(v150, v74, v65, v75);
    v77 = sub_29584472C(v70[1], self);
    v78 = sub_29584472C(v70[2], self);
    v79 = sub_29584472C(v70[3], self);
    v80 = sub_29584472C(v70[4], self);
    if (v77 >= v78)
    {
      sub_295888B58(v192);
      goto LABEL_42;
    }

    v81 = v80;
    if (v79 >= v80)
    {
      sub_295888ABC(v192);
      goto LABEL_42;
    }

    v82 = 0.0;
    if (v64)
    {
      v83 = 0.0;
    }

    else
    {
      v83 = v142;
    }

    v84 = sub_29584472C(v67[7], self);
    *&v85 = sub_29584472C(v67[2], self);
    v183 = v85;
    v172 = sub_29584472C(v67[3], self);
    v170 = sub_29584472C(v67[3], self);
    *&v86 = sub_29584472C(v67[8], self);
    v180 = v86;
    v168 = sub_29584472C(v67[9], self);
    v166 = sub_29584472C(v67[9], self);
    *&v87 = sub_29584472C(v67[4], self);
    v178 = v87;
    v164 = sub_29584472C(v67[5], self);
    v162 = sub_29584472C(v67[5], self);
    v174 = sub_29584472C(v67[6], self);
    v177 = v77;
    v176 = v79;
    v175 = v81;
    if (!v64 && sub_29584472C(v67[1], self) > 0.1)
    {
      v82 = sub_29584472C(v67[10], self);
      v125 = sub_29584472C(v67[11], self);
      if (v82 < v125)
      {
        v159 = v125;
        v160 = v133;
        *v90.i32 = 1.0 / sub_29584472C(v67[12], self);
        goto LABEL_30;
      }

      sub_295888A20(v192);
LABEL_42:
      v132 = v192[0];
      v121 = 1;
      goto LABEL_34;
    }

    v160 = 0;
    v90.i32[0] = 0;
    v159 = 0.0;
LABEL_30:
    v153 = v90.i32[0];
    v161 = v83;
    v90.i64[0] = 0;
    v91.i64[0] = v64;
    v92 = vdupq_lane_s64(vceqq_s64(v91, v90).i64[0], 0);
    v158 = vbslq_s8(v92, a18, v138);
    v157 = vbslq_s8(v92, a19, v137);
    v156 = vbslq_s8(v92, a20, v136);
    v155 = vbslq_s8(v92, a21, v138);
    v154 = vbslq_s8(v92, a22, v137);
    v93 = v183;
    *(&v93 + 1) = v172;
    *(&v93 + 2) = v170;
    v184 = v93;
    v94 = v180;
    *(&v94 + 1) = v168;
    *(&v94 + 2) = v166;
    v181 = v94;
    v95 = v178;
    *(&v95 + 1) = v164;
    *(&v95 + 2) = v162;
    v179 = v95;
    v173 = vbslq_s8(v92, a23, v136);
    v96 = v148[2] >= a2;
    v97 = objc_msgSend_objectAtIndexedSubscript_(v60, v88, v65, v89);
    v171 = sub_29584472C(v97[2], self);

    v100 = objc_msgSend_objectAtIndexedSubscript_(v60, v98, v65, v99);
    v169 = sub_29584472C(v100[3], self);

    v103 = objc_msgSend_objectAtIndexedSubscript_(v60, v101, v65, v102);
    v167 = sub_29584472C(v103[5], self);

    v106 = objc_msgSend_objectAtIndexedSubscript_(v60, v104, v65, v105);
    v165 = sub_29584472C(v106[4], self);

    v109 = objc_msgSend_objectAtIndexedSubscript_(v60, v107, v65, v108);
    v163 = sub_29584472C(v109[1], self);

    v112 = objc_msgSend_objectAtIndexedSubscript_(v60, v110, v65, v111);
    LODWORD(v109) = *(v112[6] + 8);

    if (v109 < 1)
    {
      v116 = 1.0;
    }

    else
    {
      v115 = objc_msgSend_objectAtIndexedSubscript_(v60, v113, v65, v114);
      v116 = sub_29584472C(v115[6], self);
    }

    v117 = sub_29584472C(v73[1], self);
    v118 = sub_29584472C(v76[2], self);
    v119 = sub_29584472C(v76[1], self);
    v120 = sub_29584472C(v76[3], self);
    v121 = 0;
    v122 = rCopy + v64;
    *(rCopy + v64 + 8) = DWORD2(v184);
    *v122 = v184;
    *(v122 + 16) = v84;
    *(v122 + 40) = DWORD2(v179);
    *(v122 + 32) = v179;
    *(v122 + 84) = 0u;
    *(v122 + 48) = v174;
    *(v122 + 72) = DWORD2(v181);
    *(v122 + 64) = v181;
    v123 = v186;
    *(v122 + 84) = v185;
    *(v122 + 100) = 0u;
    *(v122 + 100) = v123;
    *(v122 + 124) = (1 << v65);
    *(v122 + 132) = v82;
    *(v122 + 136) = v159;
    *(v122 + 140) = v153;
    *(v122 + 148) = v171;
    *(v122 + 152) = v169;
    *(v122 + 156) = v167;
    *(v122 + 160) = v165;
    *(v122 + 164) = v163;
    *(v122 + 168) = v116;
    *(v122 + 192) = v177;
    *(v122 + 196) = v78;
    *(v122 + 200) = v176;
    *(v122 + 204) = v175;
    *(v122 + 224) = v158;
    *(v122 + 240) = v157;
    *(v122 + 256) = v156;
    *(v122 + 272) = v155;
    *(v122 + 288) = v154;
    *(v122 + 304) = v173;
    *(v122 + 320) = v117;
    *(v122 + 324) = v119;
    *(v122 + 328) = v118;
    *(v122 + 332) = v120;
    *(v122 + 216) = v134;
    *(v122 + 220) = v161;
    *(v122 + 116) = 0;
    *(v122 + 20) = v190;
    *(v122 + 28) = v191;
    *(v122 + 52) = v188;
    *(v122 + 60) = v189;
    *(v122 + 116) = v187;
    *(v122 + 12) = 0;
    *(v122 + 44) = 0;
    *(v122 + 76) = 0;
    *(v122 + 80) = v65;
    *(v122 + 128) = v160;
    *(v122 + 144) = v96;
    *(v122 + 145) = 0;
    *(v122 + 147) = 0;
    *(v122 + 172) = uniforms;
    *(v122 + 176) = realLongCopy;
    *(v122 + 177) = 0;
    *(v122 + 179) = 0;
    *(v122 + 182) = v135.i16[2];
    *(v122 + 180) = v135.i16[0];
    *(v122 + 184) = gain;
    *(v122 + 188) = score;
    *(v122 + 208) = bounds;
    *(v122 + 212) = v139;
LABEL_34:

    if (v121)
    {
      break;
    }

    ++v65;
    v124 = v64 == 1008;
    v64 += 336;
  }

  while (!v124);

  v31 = v131;
  v126 = v132;
LABEL_45:

  return v126;
}

- (int)computeAMBNRDenoiseBoostMap:(id)map boostMap:(id)boostMap longFusionMap:(id)fusionMap ev0FusionMap:(id)ev0FusionMap ev0Metadata:(frameMetadata *)metadata longMetadata:(frameMetadata *)longMetadata numEV0:(int)v0 ev0FusionTarget:(float)self0 longFusionTarget:(float)self1
{
  boostMapCopy = boostMap;
  fusionMapCopy = fusionMap;
  ev0FusionMapCopy = ev0FusionMap;
  fusionTargetCopy = fusionTarget;
  targetCopy = target;
  v74 = longMetadata->exposureParams.exposure_time / metadata->exposureParams.exposure_time;
  v22 = self->_shaders->_kernelComputeDenoiseBoostMap;
  mapCopy = map;
  v27 = objc_msgSend_threadExecutionWidth(v22, v24, v25, v26);
  v31 = objc_msgSend_maxTotalThreadsPerThreadgroup(v22, v28, v29, v30);
  v35 = objc_msgSend_threadExecutionWidth(v22, v32, v33, v34);

  v39 = objc_msgSend_commandBuffer(mapCopy, v36, v37, v38);

  if (!v39)
  {
    sub_295888DC8(v73);
LABEL_7:
    v70 = v73[0];
    goto LABEL_4;
  }

  v43 = objc_msgSend_computeCommandEncoder(v39, v40, v41, v42);
  if (!v43)
  {
    sub_295888D2C(v73);
    goto LABEL_7;
  }

  v46 = v43;
  objc_msgSend_setLabel_(v43, v44, @"_shaders->_kernelComputeDenoiseBoostMap", v45);
  objc_msgSend_setComputePipelineState_(v46, v47, self->_shaders->_kernelComputeDenoiseBoostMap, v48);
  objc_msgSend_setTexture_atIndex_(v46, v49, fusionMapCopy, 0);
  objc_msgSend_setTexture_atIndex_(v46, v50, ev0FusionMapCopy, 1);
  objc_msgSend_setTexture_atIndex_(v46, v51, boostMapCopy, 2);
  objc_msgSend_setBytes_length_atIndex_(v46, v52, &v74, 4, 0);
  objc_msgSend_setBytes_length_atIndex_(v46, v53, &v0, 4, 1);
  objc_msgSend_setBytes_length_atIndex_(v46, v54, &targetCopy, 4, 2);
  objc_msgSend_setBytes_length_atIndex_(v46, v55, &fusionTargetCopy, 4, 3);
  objc_msgSend_setBytes_length_atIndex_(v46, v56, &self->_networkVersion, 4, 4);
  v73[0] = objc_msgSend_width(boostMapCopy, v57, v58, v59);
  v73[1] = objc_msgSend_height(boostMapCopy, v60, v61, v62);
  v73[2] = 1;
  v72[0] = v27;
  v72[1] = v31 / v35;
  v72[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v46, v63, v73, v72);
  objc_msgSend_endEncoding(v46, v64, v65, v66);
  objc_msgSend_commit(v39, v67, v68, v69);

  v70 = 0;
LABEL_4:

  return v70;
}

@end