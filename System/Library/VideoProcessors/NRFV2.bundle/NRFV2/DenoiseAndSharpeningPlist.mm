@interface DenoiseAndSharpeningPlist
- (DenoiseAndSharpeningPlist)init;
- (int)readBandData:(id)data;
- (int)readPlist:(id)plist;
- (void)applyOverrides;
@end

@implementation DenoiseAndSharpeningPlist

- (DenoiseAndSharpeningPlist)init
{
  v6.receiver = self;
  v6.super_class = DenoiseAndSharpeningPlist;
  v2 = [(DenoiseAndSharpeningPlist *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    tuningParameters = v2->tuningParameters;
    v2->tuningParameters = v3;
  }

  return v2;
}

- (int)readBandData:(id)data
{
  v4 = objc_msgSend_valueForKey_(data, a2, @"Bands", v3);
  v5 = v4;
  if (v4)
  {
    v256 = 0u;
    v257 = 0u;
    v254 = 0u;
    v255 = 0u;
    obj = v4;
    v243 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v254, v253, 16);
    if (!v243)
    {
      v240 = 0;
      goto LABEL_113;
    }

    v245 = *v255;
    v242 = v5;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v255 != v245)
        {
          objc_enumerationMutation(obj);
        }

        v247 = v7;
        v8 = *(*(&v254 + 1) + 8 * v7);
        v9 = objc_opt_new();
        v249 = 0u;
        v250 = 0u;
        v251 = 0u;
        v252 = 0u;
        v10 = v8;
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v249, v248, 16);
        if (!v12)
        {
          goto LABEL_106;
        }

        v15 = v12;
        v16 = *v250;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v250 != v16)
            {
              objc_enumerationMutation(v10);
            }

            v18 = *(*(&v249 + 1) + 8 * i);
            v19 = objc_msgSend_objectForKeyedSubscript_(v10, v13, v18, v14, v242);
            if (objc_msgSend_isEqualToString_(v18, v20, @"ChromaDenoiseLumaThresholdGain", v21))
            {
              v24 = [GainValueArray alloc];
              v27 = objc_msgSend_initWithArray_(v24, v25, v19, v26);
              v28 = v9[1];
              v9[1] = v27;

              if (!v27)
              {
                sub_2958AE1F0();
LABEL_112:

                v240 = -1;
                v5 = v242;
                goto LABEL_113;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v22, @"ChromaDenoiseChromaThresholdGain", v23))
            {
              v31 = [GainValueArray alloc];
              v34 = objc_msgSend_initWithArray_(v31, v32, v19, v33);
              v35 = v9[2];
              v9[2] = v34;

              if (!v34)
              {
                sub_2958AE190();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v29, @"ChromaDenoiseMixingCoeff", v30))
            {
              v38 = [GainValueArray alloc];
              v41 = objc_msgSend_initWithArray_(v38, v39, v19, v40);
              v42 = v9[3];
              v9[3] = v41;

              if (!v41)
              {
                sub_2958AE130();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v36, @"LumaDenoiseThresholdGain", v37))
            {
              v45 = [GainValueArray alloc];
              v48 = objc_msgSend_initWithArray_(v45, v46, v19, v47);
              v49 = v9[4];
              v9[4] = v48;

              if (!v48)
              {
                sub_2958AE0D0();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v43, @"LumaDenoiseMixingCoeff", v44))
            {
              v52 = [GainValueArray alloc];
              v55 = objc_msgSend_initWithArray_(v52, v53, v19, v54);
              v56 = v9[5];
              v9[5] = v55;

              if (!v55)
              {
                sub_2958AE070();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v50, @"LumaSharpeningScalingOnSkin", v51))
            {
              v59 = [GainValueArray alloc];
              v62 = objc_msgSend_initWithArray_(v59, v60, v19, v61);
              v63 = v9[6];
              v9[6] = v62;

              if (!v62)
              {
                sub_2958AE010();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v57, @"LumaDenoisingScalingOnSkin", v58))
            {
              v66 = [GainValueArray alloc];
              v69 = objc_msgSend_initWithArray_(v66, v67, v19, v68);
              v70 = v9[7];
              v9[7] = v69;

              if (!v69)
              {
                sub_2958ADFB0();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v64, @"LumaSharpeningScalingOnSky", v65))
            {
              v73 = [GainValueArray alloc];
              v76 = objc_msgSend_initWithArray_(v73, v74, v19, v75);
              v77 = v9[8];
              v9[8] = v76;

              if (!v76)
              {
                sub_2958ADF50();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v71, @"LumaDenoisingScalingOnSky", v72))
            {
              v80 = [GainValueArray alloc];
              v83 = objc_msgSend_initWithArray_(v80, v81, v19, v82);
              v84 = v9[9];
              v9[9] = v83;

              if (!v83)
              {
                sub_2958ADEF0();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v78, @"Luma3x3SharpeningStrength", v79))
            {
              v87 = [GainValueArray alloc];
              v90 = objc_msgSend_initWithArray_(v87, v88, v19, v89);
              v91 = v9[10];
              v9[10] = v90;

              if (!v90)
              {
                sub_2958ADE90();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v85, @"LumaLowVarSharpeningStrength", v86))
            {
              v94 = [GainValueArray alloc];
              v97 = objc_msgSend_initWithArray_(v94, v95, v19, v96);
              v98 = v9[11];
              v9[11] = v97;

              if (!v97)
              {
                sub_2958ADE30();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v92, @"LumaLowVarDetailsLevel", v93))
            {
              v101 = [GainValueArray alloc];
              v104 = objc_msgSend_initWithArray_(v101, v102, v19, v103);
              v105 = v9[12];
              v9[12] = v104;

              if (!v104)
              {
                sub_2958ADDD0();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v99, @"LumaDenoiseThresholdGainStaticScene", v100))
            {
              v108 = [GainValueArray alloc];
              v111 = objc_msgSend_initWithArray_(v108, v109, v19, v110);
              v112 = v9[13];
              v9[13] = v111;

              if (!v111)
              {
                sub_2958ADD70();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v106, @"LumaDenoiseMixingCoeffStaticScene", v107))
            {
              v115 = [GainValueArray alloc];
              v118 = objc_msgSend_initWithArray_(v115, v116, v19, v117);
              v119 = v9[14];
              v9[14] = v118;

              if (!v118)
              {
                sub_2958ADD10();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v113, @"LumaSharpeningScalingOnSkinStaticScene", v114))
            {
              v122 = [GainValueArray alloc];
              v125 = objc_msgSend_initWithArray_(v122, v123, v19, v124);
              v126 = v9[15];
              v9[15] = v125;

              if (!v125)
              {
                sub_2958ADCB0();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v120, @"LumaDenoisingScalingOnSkinStaticScene", v121))
            {
              v129 = [GainValueArray alloc];
              v132 = objc_msgSend_initWithArray_(v129, v130, v19, v131);
              v133 = v9[16];
              v9[16] = v132;

              if (!v132)
              {
                sub_2958ADC50();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v127, @"Luma3x3SharpeningStrengthStaticScene", v128))
            {
              v136 = [GainValueArray alloc];
              v139 = objc_msgSend_initWithArray_(v136, v137, v19, v138);
              v140 = v9[10];
              v9[10] = v139;

              if (!v139)
              {
                sub_2958ADBF0();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v134, @"LumaLowVarSharpeningStrengthStaticScene", v135))
            {
              v143 = [GainValueArray alloc];
              v146 = objc_msgSend_initWithArray_(v143, v144, v19, v145);
              v147 = v9[18];
              v9[18] = v146;

              if (!v146)
              {
                sub_2958ADB90();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v141, @"LumaLowVarDetailsLevelStaticScene", v142))
            {
              v150 = [GainValueArray alloc];
              v153 = objc_msgSend_initWithArray_(v150, v151, v19, v152);
              v154 = v9[19];
              v9[19] = v153;

              if (!v153)
              {
                sub_2958ADB30();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v148, @"FlatnessBoost", v149))
            {
              v157 = [GainValueArray alloc];
              v160 = objc_msgSend_initWithArray_(v157, v158, v19, v159);
              v161 = v9[20];
              v9[20] = v160;

              if (!v160)
              {
                sub_2958ADAD0();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v155, @"FlatnessThreshold", v156))
            {
              v164 = [GainValueArray alloc];
              v167 = objc_msgSend_initWithArray_(v164, v165, v19, v166);
              v168 = v9[21];
              v9[21] = v167;

              if (!v167)
              {
                sub_2958ADA70();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v162, @"GdFlatnessBoostMidtone", v163))
            {
              v171 = [GainValueArray alloc];
              v174 = objc_msgSend_initWithArray_(v171, v172, v19, v173);
              v175 = v9[22];
              v9[22] = v174;

              if (!v174)
              {
                sub_2958ADA10();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v169, @"GdFlatnessMidtoneValue", v170))
            {
              v178 = [GainValueArray alloc];
              v181 = objc_msgSend_initWithArray_(v178, v179, v19, v180);
              v182 = v9[23];
              v9[23] = v181;

              if (!v181)
              {
                sub_2958AD9B0();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v176, @"GdFlatnessBoostShadow", v177))
            {
              v185 = [GainValueArray alloc];
              v188 = objc_msgSend_initWithArray_(v185, v186, v19, v187);
              v189 = v9[24];
              v9[24] = v188;

              if (!v188)
              {
                sub_2958AD950();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v183, @"GdFlatnessBoostHighlight", v184))
            {
              v192 = [GainValueArray alloc];
              v195 = objc_msgSend_initWithArray_(v192, v193, v19, v194);
              v196 = v9[25];
              v9[25] = v195;

              if (!v195)
              {
                sub_2958AD8F0();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v190, @"GdTexturenessThresholdLow", v191))
            {
              v199 = [GainValueArray alloc];
              v202 = objc_msgSend_initWithArray_(v199, v200, v19, v201);
              v203 = v9[26];
              v9[26] = v202;

              if (!v202)
              {
                sub_2958AD890();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v197, @"GdTexturenessThresholdHigh", v198))
            {
              v206 = [GainValueArray alloc];
              v209 = objc_msgSend_initWithArray_(v206, v207, v19, v208);
              v210 = v9[27];
              v9[27] = v209;

              if (!v209)
              {
                sub_2958AD830();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v204, @"GdTexturenessShadingFactor", v205))
            {
              v213 = [GainValueArray alloc];
              v216 = objc_msgSend_initWithArray_(v213, v214, v19, v215);
              v217 = v9[28];
              v9[28] = v216;

              if (!v216)
              {
                sub_2958AD7D0();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v211, @"RadialFlatnessBoost", v212))
            {
              v220 = [GainValueArray alloc];
              v223 = objc_msgSend_initWithArray_(v220, v221, v19, v222);
              v224 = v9[29];
              v9[29] = v223;

              if (!v223)
              {
                sub_2958AD770();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v218, @"RadialSharpnessBoost", v219))
            {
              v227 = [GainValueArray alloc];
              v230 = objc_msgSend_initWithArray_(v227, v228, v19, v229);
              v231 = v9[30];
              v9[30] = v230;

              if (!v230)
              {
                sub_2958AD710();
                goto LABEL_112;
              }
            }

            else if (objc_msgSend_isEqualToString_(v18, v225, @"BlueBoost", v226))
            {
              v232 = [GainValueArray alloc];
              v235 = objc_msgSend_initWithArray_(v232, v233, v19, v234);
              v236 = v9[31];
              v9[31] = v235;

              if (!v235)
              {
                sub_2958AD6B0();
                goto LABEL_112;
              }
            }
          }

          v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v249, v248, 16);
          if (v15)
          {
            continue;
          }

          break;
        }

LABEL_106:

        objc_msgSend_addObject_(self->tuningParameters->bands, v237, v9, v238);
        v7 = v247 + 1;
      }

      while (v247 + 1 != v243);
      v240 = 0;
      v5 = v242;
      v243 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v239, &v254, v253, 16);
      if (!v243)
      {
LABEL_113:

        goto LABEL_114;
      }
    }
  }

  v240 = FigSignalErrorAtGM();
LABEL_114:

  return v240;
}

- (int)readPlist:(id)plist
{
  plistCopy = plist;
  v7 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v5, @"TuningParameters", v6);
  if (objc_msgSend_readBandData_(self, v8, v7, v9))
  {
    sub_2958AE250();
    goto LABEL_17;
  }

  v10 = [GainValueArray alloc];
  v13 = objc_msgSend_objectForKeyedSubscript_(v7, v11, @"EV0FrameDenoiseBoost", v12);
  v16 = objc_msgSend_initWithArray_(v10, v14, v13, v15);
  tuningParameters = self->tuningParameters;
  ev0FrameDenoiseBoost = tuningParameters->ev0FrameDenoiseBoost;
  tuningParameters->ev0FrameDenoiseBoost = v16;

  if (!v16)
  {
    sub_2958AE4F4();
LABEL_28:
    LODWORD(v127) = -1;
    goto LABEL_19;
  }

  v19 = [GainValueArray alloc];
  v22 = objc_msgSend_objectForKeyedSubscript_(v7, v20, @"ShortFrameDenoiseBoost", v21);
  v25 = objc_msgSend_initWithArray_(v19, v23, v22, v24);
  v26 = self->tuningParameters;
  shortFrameDenoiseBoost = v26->shortFrameDenoiseBoost;
  v26->shortFrameDenoiseBoost = v25;

  if (!v25)
  {
    sub_2958AE494();
    goto LABEL_28;
  }

  v28 = [GainValueArray alloc];
  v31 = objc_msgSend_objectForKeyedSubscript_(v7, v29, @"LowFusionNoiseBoost", v30);
  v34 = objc_msgSend_initWithArray_(v28, v32, v31, v33);
  v35 = self->tuningParameters;
  lowFusionNoiseBoost = v35->lowFusionNoiseBoost;
  v35->lowFusionNoiseBoost = v34;

  if (!v34)
  {
    sub_2958AE434();
    goto LABEL_28;
  }

  v37 = [GainValueArray alloc];
  v40 = objc_msgSend_objectForKeyedSubscript_(v7, v38, @"LowFusionNoiseBoostPerFrame", v39);
  v43 = objc_msgSend_initWithArray_(v37, v41, v40, v42);
  v44 = self->tuningParameters;
  lowFusionNoiseBoostPerFrame = v44->lowFusionNoiseBoostPerFrame;
  v44->lowFusionNoiseBoostPerFrame = v43;

  if (!v43)
  {
    sub_2958AE3D4();
    goto LABEL_28;
  }

  v46 = [GainValueArray alloc];
  v49 = objc_msgSend_objectForKeyedSubscript_(v7, v47, @"LensShadeFactor", v48);
  v52 = objc_msgSend_initWithArray_(v46, v50, v49, v51);
  v53 = self->tuningParameters;
  lensShadeFactor = v53->lensShadeFactor;
  v53->lensShadeFactor = v52;

  if (!v52)
  {
    sub_2958AE374();
    goto LABEL_28;
  }

  v55 = [GainValueArray alloc];
  v58 = objc_msgSend_objectForKeyedSubscript_(v7, v56, @"LoGOffsetRangeMax", v57);
  v61 = objc_msgSend_initWithArray_(v55, v59, v58, v60);
  v62 = self->tuningParameters;
  loGOffsetRangeMax = v62->loGOffsetRangeMax;
  v62->loGOffsetRangeMax = v61;

  if (!v61)
  {
    sub_2958AE314();
    goto LABEL_28;
  }

  v64 = [GainValueArray alloc];
  v67 = objc_msgSend_objectForKeyedSubscript_(v7, v65, @"LoGOffsetScale", v66);
  v70 = objc_msgSend_initWithArray_(v64, v68, v67, v69);
  v71 = self->tuningParameters;
  loGOffsetScale = v71->loGOffsetScale;
  v71->loGOffsetScale = v70;

  if (!v70)
  {
    sub_2958AE2B4();
    goto LABEL_28;
  }

  LODWORD(v74) = 1036831949;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v7, v73, @"RadialDenoiseKneeStart", 0, v74);
  self->tuningParameters->radialDenoiseKneeStart = v75;
  LODWORD(v76) = 1061997773;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v7, v77, @"RadialDenoiseKneeEnd", 0, v76);
  self->tuningParameters->radialDenoiseKneeEnd = v78;
  LODWORD(v79) = 1036831949;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v7, v80, @"RadialSharpnessKneeStart", 0, v79);
  self->tuningParameters->radialSharpnessKneeStart = v81;
  LODWORD(v82) = 1061997773;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v7, v83, @"RadialSharpnessKneeEnd", 0, v82);
  self->tuningParameters->radialSharpnessKneeEnd = v84;
  LODWORD(v85) = 1036831949;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v7, v86, @"RadialTexturenessKneeStart", 0, v85);
  self->tuningParameters->radialTexturenessKneeStart = v87;
  LODWORD(v88) = 1061997773;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v7, v89, @"RadialTexturenessKneeEnd", 0, v88);
  self->tuningParameters->radialTexturenessKneeEnd = v90;
  self->enableLumaDenoiseSharpening = objc_msgSend_cmi_BOOLValueForKey_defaultValue_found_(plistCopy, v91, @"EnableLumaDenoiseSharpening", 0, 0);
  self->enableChromaDenoiseSharpening = objc_msgSend_cmi_BOOLValueForKey_defaultValue_found_(plistCopy, v92, @"EnableChromaDenoiseSharpening", 0, 0);
  self->enableBilateralRegression = objc_msgSend_cmi_BOOLValueForKey_defaultValue_found_(plistCopy, v93, @"EnableBilateralRegression", 0, 0);
  self->enableLowVarSharpening = objc_msgSend_cmi_BOOLValueForKey_defaultValue_found_(plistCopy, v94, @"EnableLowVarSharpening", 0, 0);
  self->enableGdFlatness = objc_msgSend_cmi_BOOLValueForKey_defaultValue_found_(plistCopy, v95, @"EnableGdFlatness", 0, 0);
  self->gdNumDir = objc_msgSend_cmi_intValueForKey_defaultValue_found_(plistCopy, v96, @"GDNumDir", 0, 0);
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(plistCopy, v97, @"GDFlatnessThreshold", 0, 0.0);
  self->gdFlatnessThreshold = v98;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(plistCopy, v99, @"GDFilterSigma", 0, 0.0);
  self->gdFilterSigma = v100;
  self->enableLoGOffset = objc_msgSend_cmi_BOOLValueForKey_defaultValue_found_(plistCopy, v101, @"EnableLoGOffset", 0, 0);
  self->enableOPC = objc_msgSend_cmi_BOOLValueForKey_defaultValue_found_(plistCopy, v102, @"EnableOPC", 0, 0);
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(plistCopy, v103, @"OPCThresholdGain", 0, 0.0);
  self->OPCThresholdGain = v104;
  v107 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v105, @"SkinMaskDefaultValue", v106);

  if (v107)
  {
    objc_msgSend_cmi_floatValueForKey_defaultValue_found_(plistCopy, v108, @"SkinMaskDefaultValue", 0, 0.0);
  }

  else
  {
    v110 = 1.0;
  }

  self->skinMaskDefaultValue = v110;
  v111 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v108, @"BluenessCb", v109);

  if (v111)
  {
    v114 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v112, @"BluenessCb", v113);
    objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v114, v115, @"start", 0, 0.0);
    self->bluenessCb.start = v116;

    v119 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v117, @"BluenessCb", v118);
    objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v119, v120, @"end", 0, 0.0);
    self->bluenessCb.end = v121;

    v124 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v122, @"BluenessCb", v123);
    objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v124, v125, @"margin", 0, 0.0);
    self->bluenessCb.margin = v126;
  }

  else
  {
    *&self->bluenessCb.start = 0x3F8000003F266666;
    self->bluenessCb.margin = 0.05;
  }

  v127 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v112, @"BluenessCr", v113);

  if (!v127)
  {
    self->bluenessCr.start = 0.0;
    self->bluenessCr.end = 0.0;
    self->bluenessCr.margin = 0.6;
    goto LABEL_19;
  }

  v130 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v128, @"BluenessCr", v129);
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v130, v131, @"start", 0, 0.0);
  self->bluenessCr.start = v132;

  v135 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v133, @"BluenessCr", v134);
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v135, v136, @"end", 0, 0.0);
  self->bluenessCr.end = v137;

  v140 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v138, @"BluenessCr", v139);
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v140, v141, @"margin", 0, 0.0);
  self->bluenessCr.margin = v142;

LABEL_17:
  LODWORD(v127) = 0;
LABEL_19:

  return v127;
}

- (void)applyOverrides
{
  if (dword_2A18C237C <= 1)
  {
    self->enableBilateralRegression = dword_2A18C237C == 1;
  }

  if (dword_2A18C2378 <= 1)
  {
    self->enableLowVarSharpening = dword_2A18C2378 == 1;
  }
}

@end