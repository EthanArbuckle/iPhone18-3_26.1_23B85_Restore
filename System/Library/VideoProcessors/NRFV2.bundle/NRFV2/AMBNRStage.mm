@interface AMBNRStage
- (AMBNRStage)initWithContext:(id)a3 denoisingOptions:(const DenoiseRemixStageOptions *)a4;
- (SidecarWriter)sidecarWriter;
- (id)createAliasedPyramidFromLumaPyramid:(id)a3 chromaPyramid:(id)a4;
- (int)computeConfiguration:(const exposureParameters *)a3 staticScene:(BOOL)a4 dasPlist:(id)a5 nmPlist:(id)a6 isLowLight:(BOOL)a7;
- (int)greenGhostMitigationWithExposure:(const exposureParameters *)a3 faceLandMarks:(id)a4 ev0FrameMetadata:(const frameMetadata *)a5 evmFrameMetadata:(const frameMetadata *)a6 greenGhostBrightLightTuning:(id)a7 greenGhostIsRunning:(BOOL *)a8 gainMap:(id)a9;
- (int)runWithExposure:(const exposureParameters *)a3 staticScene:(BOOL)a4 dasPlist:(id)a5 nmPlist:(id)a6 defringingTuning:(id)a7 greenGhostBrightLightTuning:(id)a8 greenGhostEnabled:(BOOL)a9 skinMask:(id)a10 skyMask:(id)a11 maskExtent:(CGRect)a12 faceLandMarks:(id)a13 ev0FrameMetadata:(const frameMetadata *)a14 evmFrameMetadata:(const frameMetadata *)a15 defringeEnabled:(BOOL)a16 isLowLight:(BOOL)a17 gainMap:(id)a18;
- (int)setResourcesWithOutput:(id)a3 inputPyramid:(id)a4 noiseMapPyramid:(id)a5 sharpeningPyramid:(id)a6 localGainMapTex:(id)a7;
- (void)selectBlurKernelSize:(AmbnrConfiguration *)a3;
- (void)setSidecarWriter:(id)a3;
@end

@implementation AMBNRStage

- (id)createAliasedPyramidFromLumaPyramid:(id)a3 chromaPyramid:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9 = v6;
  if (!v5)
  {
    sub_2958C140C();
LABEL_14:
    v11 = 0;
    goto LABEL_8;
  }

  if (!v6)
  {
    sub_2958C13A8();
    goto LABEL_14;
  }

  if (v5[2] != *(v6 + 2))
  {
    sub_2958C12E0();
    goto LABEL_14;
  }

  v10 = objc_msgSend_createTextureAlias_(PyramidStorage_NRF, v7, v5, v8);
  v11 = v10;
  if (v10)
  {
    if (*(v10 + 8) >= 1)
    {
      v12 = 0;
      v13 = v9;
      v14 = v10;
      do
      {
        objc_storeStrong((v14 + 496), v13[62]);
        ++v12;
        v14 += 8;
        ++v13;
      }

      while (v12 < v11[2]);
    }
  }

  else
  {
    sub_2958C1344();
  }

LABEL_8:

  return v11;
}

- (AMBNRStage)initWithContext:(id)a3 denoisingOptions:(const DenoiseRemixStageOptions *)a4
{
  v7 = a3;
  v44.receiver = self;
  v44.super_class = AMBNRStage;
  v8 = [(AMBNRStage *)&v44 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_17;
  }

  objc_storeStrong(&v8->_metalContext, a3);
  v10 = [TextureUtils alloc];
  v13 = objc_msgSend_initWithMetalContext_(v10, v11, v9->_metalContext, v12);
  textureUtils = v9->_textureUtils;
  v9->_textureUtils = v13;

  if (!v9->_textureUtils)
  {
    sub_2958C1664();
LABEL_17:
    v40 = 0;
    goto LABEL_18;
  }

  v15 = [PyramidStage_NRF alloc];
  v42[0] = @"PyrGen.CompensateGpuShift";
  v42[1] = @"PyrGen.UseHW";
  v43[0] = &unk_2A1CC4120;
  v43[1] = &unk_2A1CC4138;
  v42[2] = @"PyrGen.SupportFP16";
  v43[2] = &unk_2A1CC4120;
  v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v16, v43, v42, 3);
  v19 = objc_msgSend_initWithOptions_context_(v15, v18, v17, v7);
  pyramidStage = v9->_pyramidStage;
  v9->_pyramidStage = v19;

  if (!v9->_pyramidStage)
  {
    sub_2958C1600();
    goto LABEL_17;
  }

  *&v9->_inputPyramidGenerationEnabled = 257;
  v21 = [DenoiseRemixStage alloc];
  v23 = objc_msgSend_initWithContext_options_numPyrLevels_(v21, v22, v7, a4, 4);
  denoiseRemixStage = v9->_denoiseRemixStage;
  v9->_denoiseRemixStage = v23;

  if (!v9->_denoiseRemixStage)
  {
    sub_2958C159C();
    goto LABEL_17;
  }

  enableDefringingStage = a4->enableDefringingStage;
  v9->_enableDefringingStage = enableDefringingStage;
  if (enableDefringingStage)
  {
    v26 = [DefringeStage alloc];
    v29 = objc_msgSend_initWithMetalContext_(v26, v27, v7, v28);
    defringeStage = v9->_defringeStage;
    v9->_defringeStage = v29;

    if (!v9->_defringeStage)
    {
      sub_2958C1538();
      goto LABEL_17;
    }
  }

  v31 = objc_opt_new();
  outputPyr = v9->_outputPyr;
  v9->_outputPyr = v31;

  v33 = v9->_outputPyr;
  if (!v33)
  {
    sub_2958C14D4();
    goto LABEL_17;
  }

  v33->levels = 4;
  enableGreenGhostBrightLightStage = a4->enableGreenGhostBrightLightStage;
  v9->_enableGreenGhostStage = enableGreenGhostBrightLightStage;
  if (enableGreenGhostBrightLightStage)
  {
    v35 = [GreenGhostBrightLightStage alloc];
    v38 = objc_msgSend_initWithMetalContext_(v35, v36, v7, v37);
    greenGhostStage = v9->_greenGhostStage;
    v9->_greenGhostStage = v38;

    if (!v9->_greenGhostStage)
    {
      sub_2958C1470();
      goto LABEL_17;
    }
  }

  v40 = v9;
LABEL_18:

  return v40;
}

- (void)setSidecarWriter:(id)a3
{
  greenGhostStage = self->_greenGhostStage;
  obj = a3;
  objc_msgSend_setSidecarWriter_(greenGhostStage, v5, obj, v6);
  objc_storeWeak(&self->_sidecarWriter, obj);
}

- (int)setResourcesWithOutput:(id)a3 inputPyramid:(id)a4 noiseMapPyramid:(id)a5 sharpeningPyramid:(id)a6 localGainMapTex:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  objc_storeStrong(&self->_outputImg, a3);
  objc_storeStrong(&self->_pyramid, a4);
  objc_storeStrong(&self->_noiseMapPyramid, a5);
  objc_storeStrong(&self->_sharpeningPyramid, a6);
  lumaTex = self->_outputImg->lumaTex;
  if (lumaTex)
  {
    objc_storeStrong(self->_outputPyr->textureY, lumaTex);
    objc_storeStrong(self->_outputPyr->textureUV, self->_outputImg->chromaTex);
    self->_outputPyr->isFP16[0] = objc_msgSend_pixelFormat(self->_outputImg->lumaTex, v19, v20, v21) == 25;
    v23 = objc_msgSend_setResourcesWithOutputPyramid_noiseMapPyramid_sharpeningPyramid_localGainMapTex_(self->_denoiseRemixStage, v22, self->_outputPyr, self->_noiseMapPyramid, self->_sharpeningPyramid, v17);
    if (v23)
    {
      sub_2958C16C8(v23, &v29);
      v27 = v29;
    }

    else if (self->_enableDefringingStage && (objc_msgSend_createAliasedPyramidFromLumaPyramid_chromaPyramid_(self, v24, self->_pyramid, self->_sharpeningPyramid), v25 = objc_claimAutoreleasedReturnValue(), defringePyramid = self->_defringePyramid, self->_defringePyramid = v25, defringePyramid, !self->_defringePyramid))
    {
      sub_2958C176C(&v30);
      v27 = v30;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    sub_2958C1808(&v31);
    v27 = v31;
  }

  return v27;
}

- (void)selectBlurKernelSize:(AmbnrConfiguration *)a3
{
  __asm { FMOV            V0.2S, #5.0 }

  *&a3[1].nm.lumaSigmaSlope = _D0;
}

- (int)computeConfiguration:(const exposureParameters *)a3 staticScene:(BOOL)a4 dasPlist:(id)a5 nmPlist:(id)a6 isLowLight:(BOOL)a7
{
  v7 = a7;
  v86 = a4;
  v11 = a5;
  v87 = a6;
  v12 = 96;
  if (!v7)
  {
    v12 = 0;
  }

  levels = self->_pyramid->levels;
  if (levels > 4)
  {
    sub_2958C1C4C(&v88);
    v84 = v88;
    goto LABEL_55;
  }

  if (levels < 1)
  {
    goto LABEL_54;
  }

  v14 = 0;
  v15 = 0;
  v16 = *(&a3->gain + v12);
  do
  {
    v17 = self + v14;
    sub_2958133B0((self->_ambnrConf + v14), v87, a3, v15);
    v19 = *&a3->blue_combo_gain;
    v18 = *&a3->ispGainRangeExpansionFactor;
    *(v17 + 228) = *&a3->gain;
    *(v17 + 244) = v19;
    *(v17 + 260) = v18;
    v21 = *&a3->read_noise_1x;
    v20 = *&a3->lsModulationWeight;
    v22 = *&a3->exposure_time;
    *(v17 + 20) = *&a3->ltm_locked;
    *(v17 + 292) = v21;
    *(v17 + 308) = v20;
    *(v17 + 276) = v22;
    v25 = objc_msgSend_objectAtIndexedSubscript_(*(*(v11 + 1) + 8), v23, v15, v24);
    *(v17 + 8) = sub_29584472C(v25[1], v16);
    *(v17 + 9) = sub_29584472C(v25[2], v16);
    *(v17 + 10) = sub_29584472C(v25[3], v16);
    if (v86)
    {
      v26 = v25[13];
      if (!v26)
      {
        sub_2958C1BB0(&v88);
        goto LABEL_62;
      }

      *(&self->_ambnrConf[0].das.lumaDenoisingScalingOnSkin + v14) = sub_29584472C(v26, v16);
      v27 = v25[14];
      if (!v27)
      {
        sub_2958C1B14(&v88);
        goto LABEL_62;
      }

      *(&self->_ambnrConf[0].das.lumaSharpeningScalingOnSky + v14) = sub_29584472C(v27, v16);
      v28 = v25[15];
      v29 = 1.0;
      v30 = 1.0;
      if (v28)
      {
        v30 = sub_29584472C(v28, v16);
      }

      *(&self->_ambnrConf[0].das.lumaDenoisingScalingOnSky + v14) = v30;
      v31 = v25[16];
      if (v31)
      {
        v29 = sub_29584472C(v31, v16);
      }

      *(&self->_ambnrConf[0].das.luma3x3SharpeningStrength + v14) = v29;
      v32 = v25[17];
      if (v32)
      {
        v33 = sub_29584472C(v32, v16);
      }

      else
      {
        v33 = 0.0;
      }

      *(&self->_ambnrConf[0].das.flatnessBoost + v14) = v33;
      v41 = v25[18];
      if (!v41)
      {
        sub_2958C1A78(&v88);
        goto LABEL_62;
      }

      *(&self->_ambnrConf[0].das.flatnessThreshold + v14) = sub_29584472C(v41, v16);
      v40 = v25[19];
      if (!v40)
      {
        sub_2958C19DC(&v88);
        goto LABEL_62;
      }
    }

    else
    {
      *(v17 + 11) = sub_29584472C(v25[4], v16);
      *(v17 + 12) = sub_29584472C(v25[5], v16);
      v34 = v25[6];
      v35 = 1.0;
      v36 = 1.0;
      if (v34)
      {
        v36 = sub_29584472C(v34, v16);
      }

      *(&self->_ambnrConf[0].das.lumaDenoisingScalingOnSky + v14) = v36;
      v37 = v25[7];
      if (v37)
      {
        v35 = sub_29584472C(v37, v16);
      }

      *(&self->_ambnrConf[0].das.luma3x3SharpeningStrength + v14) = v35;
      v38 = v25[10];
      if (v38)
      {
        v39 = sub_29584472C(v38, v16);
      }

      else
      {
        v39 = 0.0;
      }

      *(&self->_ambnrConf[0].das.flatnessBoost + v14) = v39;
      *(&self->_ambnrConf[0].das.flatnessThreshold + v14) = sub_29584472C(v25[11], v16);
      v40 = v25[12];
    }

    *(&self->_ambnrConf[0].das.gdFlatnessBoostMidtone + v14) = sub_29584472C(v40, v16);
    if (*(&self->_ambnrConf[0].das.lumaSharpeningScalingOnSky + v14) < 1.0)
    {
      sub_2958C1940(&v88);
LABEL_62:
      v84 = v88;

      goto LABEL_55;
    }

    if (*(v17 + 10) < 1.0)
    {
      sub_2958C18A4(&v88);
      goto LABEL_62;
    }

    v42 = (self + v14);
    *(&self->_ambnrConf[0].das.gdFlatnessMidtoneValue + v14) = sub_29584472C(v25[20], v16);
    v42[21] = sub_29584472C(v25[21], v16);
    v42[29] = sub_29584472C(v25[29], v16);
    v42[30] = sub_29584472C(v25[30], v16);
    v42[31] = sub_29584472C(v25[31], v16);
    v43 = v25[26];
    v44 = 0.0;
    v45 = 0.0;
    if (v43)
    {
      v45 = sub_29584472C(v43, v16);
    }

    v42[26] = v45;
    v46 = v25[27];
    if (v46)
    {
      v44 = sub_29584472C(v46, v16);
    }

    *(&self->_ambnrConf[0].das.radialSharpnessBoost + v14) = v44;
    v47 = v25[28];
    v48 = 0.0;
    v49 = 0.0;
    if (v47)
    {
      v49 = sub_29584472C(v47, v16);
    }

    *(&self->_ambnrConf[0].das.blueBoost + v14) = v49;
    v50 = v25[22];
    if (v50)
    {
      v48 = sub_29584472C(v50, v16);
    }

    *(&self->_ambnrConf[0].das.gdFlatnessBoostHighlight + v14) = v48;
    v51 = v25[23];
    if (v51)
    {
      v52 = sub_29584472C(v51, v16);
    }

    else
    {
      v52 = 0.25;
    }

    *(&self->_ambnrConf[0].das.gdTexturenessThresholdLow + v14) = v52;
    v53 = v25[24];
    v54 = 0.0;
    v55 = 0.0;
    if (v53)
    {
      v55 = sub_29584472C(v53, v16);
    }

    *(&self->_ambnrConf[0].das.gdTexturenessThresholdHigh + v14) = v55;
    v56 = v25[25];
    if (v56)
    {
      v54 = sub_29584472C(v56, v16);
    }

    *(&self->_ambnrConf[0].das.gdTexturenessShadingFactor + v14) = v54;
    v57 = v25[9];
    v58 = 1.0;
    v59 = 1.0;
    if (v57)
    {
      v59 = sub_29584472C(v57, v16);
    }

    v60 = (self + v14);
    *(&self->_ambnrConf[0].das.lumaLowVarDetailsLevel + v14) = v59;
    v61 = v25[8];
    if (v61)
    {
      v58 = sub_29584472C(v61, v16);
    }

    v60[15] = v58;
    v60[51] = v11[12];
    v60[52] = v11[13];
    v60[53] = v11[14];
    v60[54] = v11[15];
    v60[55] = v11[16];
    v60[56] = v11[17];
    v60[32] = sub_29584472C(*(*(v11 + 1) + 16), v16);
    v60[33] = sub_29584472C(*(*(v11 + 1) + 24), v16);
    v60[34] = sub_29584472C(*(*(v11 + 1) + 48), v16);
    v60[35] = sub_29584472C(*(*(v11 + 1) + 56), v16);
    v60[36] = sub_29584472C(*(*(v11 + 1) + 64), v16);
    *(v60 + 148) = *(v11 + 16);
    *(v60 + 149) = *(v11 + 17);
    *(v60 + 150) = *(v11 + 18);
    *(v60 + 151) = *(v11 + 19);
    *(v60 + 152) = *(v11 + 20);
    v60[39] = v11[6];
    v60[40] = v11[7];
    v60[41] = v11[8];
    v60[42] = v11[9];
    *(v60 + 172) = *(v11 + 40);
    *(v60 + 173) = *(v11 + 41);
    v60[44] = v11[11];
    v60[45] = *(*(v11 + 1) + 72);
    v60[46] = *(*(v11 + 1) + 76);
    v60[47] = *(*(v11 + 1) + 80);
    v60[48] = *(*(v11 + 1) + 84);
    v60[49] = *(*(v11 + 1) + 88);
    v60[50] = *(*(v11 + 1) + 92);

    ++v15;
    v64 = self->_pyramid->levels;
    v14 += 352;
  }

  while (v15 < v64);
  if (v64 >= 2)
  {
    v65 = 0;
    do
    {
      v66 = (&self->_ambnrConf[0].nm.lumaSigmaIntercept + 88 * v65);
      objc_msgSend_selectBlurKernelSize_(self, v62, v66, v63);
      v68 = &self->_pyrFilters[v65];
      v68->filterType = 1;
      *&v68->luma_param = v66[41];
      if (self->_upsampleOffsetEnabled)
      {
        v69 = objc_msgSend_width(self->_pyramid->textureY[++v65], v62, v67, v63);
        v73 = objc_msgSend_height(self->_pyramid->textureY[v65], v70, v71, v72);
        *&v74 = -0.25 / v69;
        *(&v74 + 1) = -0.25 / v73;
        v66[42] = v74;
        v78 = objc_msgSend_width(self->_pyramid->textureUV[v65], v75, v76, v77);
        v82 = objc_msgSend_height(self->_pyramid->textureUV[v65], v79, v80, v81);
        *&v83 = -0.25 / v78;
        *(&v83 + 1) = -0.25 / v82;
      }

      else
      {
        v83 = 0;
        v66[42] = 0;
        ++v65;
      }

      v66[43] = v83;
    }

    while (v65 < self->_pyramid->levels - 1);
  }

LABEL_54:
  v84 = 0;
LABEL_55:

  return v84;
}

- (int)greenGhostMitigationWithExposure:(const exposureParameters *)a3 faceLandMarks:(id)a4 ev0FrameMetadata:(const frameMetadata *)a5 evmFrameMetadata:(const frameMetadata *)a6 greenGhostBrightLightTuning:(id)a7 greenGhostIsRunning:(BOOL *)a8 gainMap:(id)a9
{
  v15 = a4;
  v16 = a7;
  v174 = a9;
  v20 = a3->gain * a3->exposure_time;
  if (v16)
  {
    objc_msgSend_tuningParams(v16, v17, v18, v19);
    v21 = *(&v198 + 1);
  }

  else
  {
    v208 = 0;
    v206 = 0u;
    v207 = 0u;
    v204 = 0u;
    v205 = 0u;
    v202 = 0u;
    v203 = 0u;
    v200 = 0u;
    v201 = 0u;
    v21 = 0.0;
    v198 = 0u;
    v199 = 0u;
  }

  v22 = objc_msgSend_width(self->_outputImg->lumaTex, v17, v18, v19);
  v26 = objc_msgSend_height(self->_outputImg->lumaTex, v23, v24, v25);
  *&v30 = 0;
  *(&v30 + 1) = __PAIR64__(v26, v22);
  v197 = v30;
  if (v20 >= v21)
  {
    if (dword_2A18C2398)
    {
      v184 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    if (!v16)
    {
      v42 = 0;
      v196 = 0;
      v194 = 0u;
      v195 = 0u;
      v192 = 0u;
      v193 = 0u;
      v190 = 0u;
      v191 = 0u;
      v188 = 0u;
      v189 = 0u;
      v186 = 0u;
      v187 = 0u;
      goto LABEL_17;
    }

    objc_msgSend_tuningParams(v16, v27, v28, v29);
    if ((BYTE1(v186) & 1) == 0)
    {
      v42 = 0;
      goto LABEL_17;
    }

    if (a6 && (LOBYTE(a6[1].exposureParams.blue_combo_gain) & 1) != 0 || a5 && (a6 = a5, (LOBYTE(a5[1].exposureParams.blue_combo_gain) & 1) != 0))
    {
      v182[0] = *&a6[1].exposureParams.isp_digital_gain;
      objc_msgSend_tuningParams(v16, v31, v32, v33);
      *v175 = v185;
      v37 = objc_msgSend_width(self->_outputImg->lumaTex, v34, v35, v36);
      v41 = objc_msgSend_height(self->_outputImg->lumaTex, v38, v39, v40);
      if (!sub_295823048(v182, &v197, v37, v41, v175))
      {
        sub_2958C1CE8();
        v42 = 0;
        v51 = 0;
        v50 = 1;
        goto LABEL_34;
      }

      v42 = 1;
LABEL_17:
      if (dword_2A18C2398)
      {
        v44 = v42;
        v45 = a5;
        v46 = v15;
        v184 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v48 = v184;
        if (os_log_type_enabled(v47, type))
        {
          v49 = v48;
        }

        else
        {
          v49 = v48 & 0xFFFFFFFE;
        }

        if (v49)
        {
          *v175 = 136316162;
          *&v175[4] = "[AMBNRStage greenGhostMitigationWithExposure:faceLandMarks:ev0FrameMetadata:evmFrameMetadata:greenGhostBrightLightTuning:greenGhostIsRunning:gainMap:]";
          *&v175[12] = 1026;
          *&v175[14] = v197;
          v176 = 1026;
          v177 = DWORD1(v197);
          v178 = 1026;
          v179 = DWORD2(v197);
          v180 = 1026;
          v181 = HIDWORD(v197);
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();

        v15 = v46;
        a5 = v45;
        v42 = v44;
      }

      *a8 = 1;
      v55 = objc_opt_new();
      if (v55)
      {
        v56 = objc_msgSend_allocator(self->_metalContext, v52, v53, v54);
        v60 = objc_msgSend_newTextureDescriptor(v56, v57, v58, v59);

        if (v60)
        {
          v173 = v15;
          v64 = objc_msgSend_desc(v60, v61, v62, v63);
          objc_msgSend_setUsage_(v64, v65, 7, v66);

          v70 = objc_msgSend_desc(v60, v67, v68, v69);
          objc_msgSend_setCompressionMode_(v70, v71, 2, v72);

          v76 = objc_msgSend_desc(v60, v73, v74, v75);
          objc_msgSend_setCompressionFootprint_(v76, v77, 0, v78);

          v82 = objc_msgSend_width(self->_outputImg->lumaTex, v79, v80, v81);
          v86 = objc_msgSend_desc(v60, v83, v84, v85);
          objc_msgSend_setWidth_(v86, v87, v82, v88);

          v92 = objc_msgSend_height(self->_outputImg->lumaTex, v89, v90, v91);
          v96 = objc_msgSend_desc(v60, v93, v94, v95);
          objc_msgSend_setHeight_(v96, v97, v92, v98);

          v102 = objc_msgSend_desc(v60, v99, v100, v101);
          objc_msgSend_setPixelFormat_(v102, v103, 10, v104);

          objc_msgSend_setLabel_(v60, v105, 0, v106);
          v110 = objc_msgSend_allocator(self->_metalContext, v107, v108, v109);
          v113 = objc_msgSend_newTextureWithDescriptor_(v110, v111, v60, v112);
          v114 = v55[2];
          v55[2] = v113;

          if (v55[2])
          {
            v118 = objc_msgSend_width(self->_outputImg->chromaTex, v115, v116, v117);
            v122 = objc_msgSend_desc(v60, v119, v120, v121);
            objc_msgSend_setWidth_(v122, v123, v118, v124);

            v128 = objc_msgSend_height(self->_outputImg->chromaTex, v125, v126, v127);
            v132 = objc_msgSend_desc(v60, v129, v130, v131);
            objc_msgSend_setHeight_(v132, v133, v128, v134);

            v138 = objc_msgSend_desc(v60, v135, v136, v137);
            objc_msgSend_setPixelFormat_(v138, v139, 30, v140);

            objc_msgSend_setLabel_(v60, v141, 0, v142);
            v146 = objc_msgSend_allocator(self->_metalContext, v143, v144, v145);
            v149 = objc_msgSend_newTextureWithDescriptor_(v146, v147, v60, v148);
            v150 = v55[3];
            v55[3] = v149;

            if (v55[3])
            {
              v15 = v173;
              v152 = objc_msgSend_GhostMitigationWithPyr_outputImage_tuning_faceLandMarks_ev0FrameMetadata_roi_gainMap_(self->_greenGhostStage, v151, self->_outputPyr, v55, v16, v173, a5, v174, *&v197);
              if (v152)
              {
                v51 = v152;
                sub_2958C1DB0(v152, v60);
              }

              else
              {
                v154 = objc_msgSend_copyTexture_outTex_(self->_textureUtils, v153, v55[2], self->_outputImg->lumaTex);
                if (v154)
                {
                  v51 = v154;
                  sub_2958C1E20(v154, v60);
                }

                else
                {
                  v156 = objc_msgSend_copyTexture_outTex_(self->_textureUtils, v155, v55[3], self->_outputImg->chromaTex);
                  v51 = v156;
                  if (v156)
                  {
                    sub_2958C1E90(v156, v60);
                  }

                  else
                  {
                    FigMetalDecRef();
                    FigMetalDecRef();
                  }
                }
              }

              goto LABEL_33;
            }

            sub_2958C1F00(v60, v182);
          }

          else
          {
            sub_2958C1FAC(v60, v182);
          }

          v51 = v182[0];
          v15 = v173;
LABEL_33:

          v50 = v42;
          goto LABEL_34;
        }

        sub_2958C2058(v182);
      }

      else
      {
        sub_2958C20F4(v182);
      }

      v51 = v182[0];
      goto LABEL_33;
    }

    sub_2958C1D4C();
  }

  v42 = 0;
  v50 = 0;
  v51 = 0;
LABEL_34:
  v157 = objc_opt_new();
  v160 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v158, v20 < v21, v159);
  objc_msgSend_setObject_forKeyedSubscript_(v157, v161, v160, @"isBrightScene");

  v164 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v162, v42, v163);
  objc_msgSend_setObject_forKeyedSubscript_(v157, v165, v164, @"roiIsComputed");

  v168 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v166, v50, v167);
  objc_msgSend_setObject_forKeyedSubscript_(v157, v169, v168, @"hasValidClippingData");

  WeakRetained = objc_loadWeakRetained(&self->_sidecarWriter);
  objc_msgSend_addToSidecar_forKey_(WeakRetained, v171, v157, @"GreenGhostBrightLight");

  return v51;
}

- (int)runWithExposure:(const exposureParameters *)a3 staticScene:(BOOL)a4 dasPlist:(id)a5 nmPlist:(id)a6 defringingTuning:(id)a7 greenGhostBrightLightTuning:(id)a8 greenGhostEnabled:(BOOL)a9 skinMask:(id)a10 skyMask:(id)a11 maskExtent:(CGRect)a12 faceLandMarks:(id)a13 ev0FrameMetadata:(const frameMetadata *)a14 evmFrameMetadata:(const frameMetadata *)a15 defringeEnabled:(BOOL)a16 isLowLight:(BOOL)a17 gainMap:(id)a18
{
  v189 = a4;
  height = a12.size.height;
  width = a12.size.width;
  y = a12.origin.y;
  x = a12.origin.x;
  v27 = a5;
  v28 = a6;
  v194 = a7;
  v193 = a8;
  v196 = a10;
  v195 = a11;
  v192 = a13;
  v191 = a18;
  v217 = 0;
  v32 = objc_msgSend_allocator(self->_metalContext, v29, v30, v31);
  v36 = objc_msgSend_newTextureDescriptor(v32, v33, v34, v35);

  if (!v36)
  {
    sub_2958C2804(v199);
    v73 = 0;
    v146 = v199[0];
    v51 = v27;
LABEL_41:
    v52 = v194;
    goto LABEL_35;
  }

  v40 = objc_msgSend_desc(v36, v37, v38, v39);
  objc_msgSend_setUsage_(v40, v41, 7, v42);

  v51 = v27;
  if (objc_msgSend_computeConfiguration_staticScene_dasPlist_nmPlist_isLowLight_(self, v43, a3, v189, v27, v28, a17))
  {
    sub_2958C2190(v199);
    v73 = 0;
    v146 = v199[0];
    goto LABEL_41;
  }

  v52 = v194;
  if (!self->_inputPyramidGenerationEnabled)
  {
    goto LABEL_6;
  }

  if (objc_msgSend_setResourcesWithPyramid_(self->_pyramidStage, v44, self->_pyramid, v46))
  {
    sub_2958C222C(v199);
LABEL_48:
    v73 = 0;
    v146 = v199[0];
    goto LABEL_35;
  }

  if (objc_msgSend_runWithFilters_(self->_pyramidStage, v53, self->_pyrFilters, v54))
  {
    sub_2958C22C8(v199);
    goto LABEL_48;
  }

LABEL_6:
  v190 = v28;
  v188 = a3;
  if (!a16)
  {
LABEL_16:
    sharpeningPyramid = self->_sharpeningPyramid;
    FigMetalDecRef();
    textureUV = self->_sharpeningPyramid->textureUV;
    FigMetalDecRef();
    v68 = self->_sharpeningPyramid->textureUV;
    FigMetalDecRef();
    v69 = self->_sharpeningPyramid->textureUV;
    FigMetalDecRef();
    v73 = self->_pyramid;
    goto LABEL_17;
  }

  *&v48 = a3->exposure_time;
  *&v47 = a3->gain;
  *&v49 = a3->red_gain;
  *&v50 = a3->blue_gain;
  objc_msgSend_setMetadataGain_exposureTime_AWBRGain_AWBBGain_(v194, v44, v45, v46, v47, v48, v49, v50);
  if (!v194)
  {
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    v208 = 0u;
    v209 = 0u;
    v206 = 0u;
    v207 = 0u;
    v204 = 0u;
    v205 = 0u;
    v202 = 0u;
    v203 = 0u;
    v216 = 0;
LABEL_14:
    if (dword_2A18C2398)
    {
      v201 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v65 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_16;
  }

  objc_msgSend_correctionParams(v194, v55, v56, v57);
  if (*(&v214 + 1) <= 0.1)
  {
    goto LABEL_14;
  }

  if (!self->_defringeStage || (objc_msgSend_defringingEnabled(v194, v58, v59, v60) & 1) == 0)
  {
    sub_2958C2460(v199);
    v73 = 0;
    goto LABEL_53;
  }

  if (dword_2A18C2398)
  {
    v201 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v64 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v148 = objc_msgSend_width(self->_pyramid->textureY[1], v61, v62, v63);
  v152 = objc_msgSend_desc(v36, v149, v150, v151);
  objc_msgSend_setWidth_(v152, v153, v148, v154);

  v158 = objc_msgSend_height(self->_pyramid->textureY[1], v155, v156, v157);
  v162 = objc_msgSend_desc(v36, v159, v160, v161);
  objc_msgSend_setHeight_(v162, v163, v158, v164);

  v168 = objc_msgSend_desc(v36, v165, v166, v167);
  objc_msgSend_setPixelFormat_(v168, v169, 65, v170);

  objc_msgSend_setLabel_(v36, v171, 0, v172);
  v176 = objc_msgSend_allocator(self->_metalContext, v173, v174, v175);
  v179 = objc_msgSend_newTextureWithDescriptor_(v176, v177, v36, v178);
  v217 = v179;

  if (!v179)
  {
    sub_2958C23C4(v199);
    v73 = 0;
    v146 = v199[0];
    goto LABEL_35;
  }

  v181 = objc_msgSend_defringePyramid_outputPyramid_chromaScratch_tuningParameters_(self->_defringeStage, v180, self->_pyramid, self->_defringePyramid, v179, v194);
  if (v181)
  {
    v146 = v181;
    sub_2958C2364();
    v73 = 0;
    goto LABEL_35;
  }

  v73 = self->_defringePyramid;
  pyramid = self->_pyramid;
  FigMetalDecRef();
  v183 = self->_pyramid->textureUV;
  FigMetalDecRef();
  v184 = self->_pyramid->textureUV;
  FigMetalDecRef();
  v185 = self->_pyramid->textureUV;
  FigMetalDecRef();
  FigMetalDecRef();
LABEL_17:
  if (self->_noiseMapPyramid)
  {
    metalContext = self->_metalContext;
    v75 = objc_msgSend_width(v73->textureY[0], v70, v71, v72);
    v79 = objc_msgSend_height(v73->textureY[0], v76, v77, v78);
    isFP16_pyramid = objc_msgSend_allocatePyramidWithMetalContext_label_width_height_isFP16_pyramid_(PyramidStorage_NRF, v80, metalContext, @"_noiseMapPyramid", v75, v79, 1, self->_noiseMapPyramid);
    if (isFP16_pyramid)
    {
      v146 = isFP16_pyramid;
      sub_2958C24B0();
      goto LABEL_35;
    }

    noiseMapPyramid = self->_noiseMapPyramid;
    if (noiseMapPyramid)
    {
      if (objc_msgSend_setResourcesWithPyramid_(self->_pyramidStage, v70, noiseMapPyramid, v72))
      {
        sub_2958C2510(v199);
        goto LABEL_53;
      }

      if (objc_msgSend_runWithFilters_(self->_pyramidStage, v83, self->_pyrFilters, v84))
      {
        sub_2958C25AC(v199);
        goto LABEL_53;
      }
    }
  }

  if (objc_msgSend_setUniforms_(self->_denoiseRemixStage, v70, self->_ambnrConf, v72, v186, v187))
  {
    sub_2958C2648(v199);
LABEL_53:
    v146 = v199[0];
    goto LABEL_35;
  }

  v88 = self->_metalContext;
  v89 = objc_msgSend_width(self->_pyramid->textureY[0], v85, v86, v87);
  v93 = objc_msgSend_height(self->_pyramid->textureY[0], v90, v91, v92);
  v95 = objc_msgSend_allocatePyramidWithMetalContext_label_width_height_isFP16_pyramid_(PyramidStorage_NRF, v94, v88, @"_outputPyr", v89, v93, 1, self->_outputPyr);
  if (v95)
  {
    v146 = v95;
    sub_2958C26E4();
    goto LABEL_35;
  }

  v97 = objc_msgSend_run_skinMask_skyMask_maskExtent_(self->_denoiseRemixStage, v96, v73, v196, v195, x, y, width, height);
  if (v97)
  {
    v146 = v97;
    sub_2958C2744();
    goto LABEL_35;
  }

  objc_storeStrong(&self->_outputImg->lumaTex, self->_outputPyr->textureY[0]);
  objc_storeStrong(&self->_outputImg->chromaTex, self->_outputPyr->textureUV[0]);
  v198 = 0;
  if (!a9)
  {
    goto LABEL_31;
  }

  v101 = v51;
  v102 = MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270])
  {
    v103 = objc_msgSend_commandQueue(self->_metalContext, v98, v99, v100);
    v107 = objc_msgSend_commandBuffer(v103, v104, v105, v106);

    v28 = v190;
    objc_msgSend_setLabel_(v107, v108, @"KTRACE_START_MTL", v109);
    objc_msgSend_addCompletedHandler_(v107, v110, &unk_2A1CA9860, v111);
    objc_msgSend_commit(v107, v112, v113, v114);
  }

  IsRunning_gainMap = objc_msgSend_greenGhostMitigationWithExposure_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_greenGhostBrightLightTuning_greenGhostIsRunning_gainMap_(self, v98, v188, v192, a14, a15, v193, &v198, v191);
  if (!IsRunning_gainMap)
  {
    v119 = *v102;
    v51 = v101;
    if (v119)
    {
      v120 = objc_msgSend_commandQueue(self->_metalContext, v116, v117, v118);
      v124 = objc_msgSend_commandBuffer(v120, v121, v122, v123);

      objc_msgSend_setLabel_(v124, v125, @"KTRACE_END_MTL", v126);
      v197[0] = MEMORY[0x29EDCA5F8];
      v197[1] = 3221225472;
      v197[2] = sub_2958644D4;
      v197[3] = &unk_29EDDBE78;
      memset(&v197[4], 0, 24);
      objc_msgSend_addCompletedHandler_(v124, v127, v197, v128);
      objc_msgSend_commit(v124, v129, v130, v131);
    }

LABEL_31:
    v132 = objc_opt_new();
    v135 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v133, a9, v134);
    objc_msgSend_setObject_forKeyedSubscript_(v132, v136, v135, @"isEnabled");

    v139 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v137, v198, v138);
    objc_msgSend_setObject_forKeyedSubscript_(v132, v140, v139, @"isRunning");

    WeakRetained = objc_loadWeakRetained(&self->_sidecarWriter);
    objc_msgSend_addToSidecar_forKey_(WeakRetained, v142, v132, @"GreenGhostBrightLight");

    objc_msgSend_makePyramidAliasable_metal_(PyramidStorage_NRF, v143, self->_outputPyr, self->_metalContext);
    v145 = self->_noiseMapPyramid;
    if (v145)
    {
      objc_msgSend_makePyramidAliasable_metal_(PyramidStorage_NRF, v144, v145, self->_metalContext);
    }

    v146 = 0;
    goto LABEL_34;
  }

  v146 = IsRunning_gainMap;
  sub_2958C27A4();
  v51 = v101;
LABEL_34:
  v52 = v194;
LABEL_35:

  return v146;
}

- (SidecarWriter)sidecarWriter
{
  WeakRetained = objc_loadWeakRetained(&self->_sidecarWriter);

  return WeakRetained;
}

@end