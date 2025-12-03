@interface VideoDefringingTuningParameters
+ ($6B6A6628744B4DF06B73A717F4EE0DD2)defaultRadialParams:(SEL)params;
+ ($B5339CD3011AE9733252D32A415F0BF1)defaultCorrectionParams:(SEL)params;
+ ($E2C29196C7A5C696474C6955C5A9CE06)defaultLUTParams:(unint64_t)params;
+ (BOOL)_validateTuning:(id)tuning mode:(unint64_t)mode parameterKey:(id)key;
+ (id)_tuningHeaderForMode:(unint64_t)mode;
+ (id)defaultTuningDictionary;
- ($6B6A6628744B4DF06B73A717F4EE0DD2)radialParams;
- ($B5339CD3011AE9733252D32A415F0BF1)correctionParams;
- ($E2C29196C7A5C696474C6955C5A9CE06)desaturationParams;
- (VideoDefringingTuningParameters)initWithTuningParameters:(id)parameters;
- (int)_parseCorrectionTuning:(id)tuning;
- (int)_parseDesaturateTuning:(id)tuning;
- (int)_parseRadialTuning:(id)tuning;
- (int)selectParametersForTuningMode:(unint64_t)mode;
- (void)setDefaults;
- (void)setMetadataGain:(float)gain exposureTime:(float)time AWBRGain:(float)rGain AWBBGain:(float)bGain;
- (void)setRadialParamsForWidth:(unint64_t)width height:(unint64_t)height;
@end

@implementation VideoDefringingTuningParameters

+ ($6B6A6628744B4DF06B73A717F4EE0DD2)defaultRadialParams:(SEL)params
{
  *retstr = *ymmword_2959D61D0;
  retstr[1] = *ymmword_2959D61F0;
  return result;
}

+ ($E2C29196C7A5C696474C6955C5A9CE06)defaultLUTParams:(unint64_t)params
{
  v3 = 0.8;
  v4 = 0.4;
  v5 = 0.5;
  result.var2 = v5;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

+ ($B5339CD3011AE9733252D32A415F0BF1)defaultCorrectionParams:(SEL)params
{
  if (!a4)
  {
    *&retstr->var54 = 0;
    v4 = "fff?";
    goto LABEL_5;
  }

  if (a4 == 2)
  {
    *&retstr->var54 = 0;
    v4 = &xmmword_2959D6210;
LABEL_5:
    v5 = v4[11];
    *&retstr->var38 = v4[10];
    *&retstr->var42 = v5;
    v6 = v4[13];
    *&retstr->var46 = v4[12];
    *&retstr->var50 = v6;
    v7 = v4[7];
    *&retstr->var22 = v4[6];
    *&retstr->var26 = v7;
    v8 = v4[9];
    *&retstr->var30 = v4[8];
    *&retstr->var34 = v8;
    v9 = v4[3];
    *&retstr->var6[2] = v4[2];
    *&retstr->var10 = v9;
    v10 = v4[5];
    *&retstr->var14 = v4[4];
    *&retstr->var18 = v10;
    v11 = v4[1];
    *&retstr->var0 = *v4;
    *&retstr->var4 = v11;
    return result;
  }

  *&retstr->var54 = 0;
  *&retstr->var46 = 0u;
  *&retstr->var50 = 0u;
  *&retstr->var38 = 0u;
  *&retstr->var42 = 0u;
  *&retstr->var30 = 0u;
  *&retstr->var34 = 0u;
  *&retstr->var22 = 0u;
  *&retstr->var26 = 0u;
  *&retstr->var14 = 0u;
  *&retstr->var18 = 0u;
  *&retstr->var6[2] = 0u;
  *&retstr->var10 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var4 = 0u;
  return result;
}

+ (id)defaultTuningDictionary
{
  if (qword_2A18C2248 != -1)
  {
    sub_2958BC5AC();
  }

  v3 = qword_2A18C2250;

  return v3;
}

- (VideoDefringingTuningParameters)initWithTuningParameters:(id)parameters
{
  parametersCopy = parameters;
  v13.receiver = self;
  v13.super_class = VideoDefringingTuningParameters;
  v8 = [(VideoDefringingTuningParameters *)&v13 init];
  if (v8 && (!parametersCopy ? (objc_msgSend_defaultTuningDictionary(VideoDefringingTuningParameters, v5, v6, v7), v9 = objc_claimAutoreleasedReturnValue()) : (v9 = parametersCopy), tuningParameters = v8->_tuningParameters, v8->_tuningParameters = v9, tuningParameters, !v8->_tuningParameters))
  {
    sub_2958BC5C0();
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  return v11;
}

+ (id)_tuningHeaderForMode:(unint64_t)mode
{
  if (mode < 3)
  {
    return *(&off_29EDDC438 + mode);
  }

  fig_log_get_emitter();
  FigDebugAssert3();
  return 0;
}

+ (BOOL)_validateTuning:(id)tuning mode:(unint64_t)mode parameterKey:(id)key
{
  tuningCopy = tuning;
  keyCopy = key;
  if (!tuningCopy)
  {
    sub_2958BC734();
    v14 = 0;
LABEL_18:
    v26 = 0;
    goto LABEL_19;
  }

  v14 = objc_msgSend__tuningHeaderForMode_(VideoDefringingTuningParameters, v8, mode, v9);
  if (!v14)
  {
    sub_2958BC6B8();
    goto LABEL_18;
  }

  v15 = objc_msgSend_defaultTuningDictionary(VideoDefringingTuningParameters, v11, v12, v13);
  v18 = objc_msgSend_objectForKeyedSubscript_(v15, v16, v14, v17);
  v21 = objc_msgSend_objectForKeyedSubscript_(v18, v19, keyCopy, v20);
  v25 = objc_msgSend_allKeys(v21, v22, v23, v24);

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v26 = v25;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v38, v37, 16);
  if (v28)
  {
    v31 = v28;
    v32 = 0;
    v33 = *v39;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v39 != v33)
        {
          objc_enumerationMutation(v26);
        }

        v35 = objc_msgSend_objectForKeyedSubscript_(tuningCopy, v29, *(*(&v38 + 1) + 8 * i), v30);

        if (!v35)
        {
          v32 = -12780;
        }
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v38, v37, 16);
    }

    while (v31);

    if (v32)
    {
      sub_2958BC63C();
LABEL_19:
      LOBYTE(v32) = 1;
    }
  }

  else
  {

    LOBYTE(v32) = 0;
  }

  return v32;
}

- (int)_parseDesaturateTuning:(id)tuning
{
  v5 = objc_msgSend_objectForKeyedSubscript_(tuning, a2, @"DesaturateParameters", v3);
  if (objc_msgSend__validateTuning_mode_parameterKey_(VideoDefringingTuningParameters, v6, v5, self->_mode, @"DesaturateParameters"))
  {
    sub_2958BC7B0();
    goto LABEL_5;
  }

  if (self->_mode > 2)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
LABEL_5:
    v28 = -12780;
    goto LABEL_6;
  }

  v9 = objc_msgSend_objectForKeyedSubscript_(v5, v7, @"Amount", v8);
  objc_msgSend_floatValue(v9, v10, v11, v12);
  self->_desaturationParams.amount = v13;

  v16 = objc_msgSend_objectForKeyedSubscript_(v5, v14, @"Angle", v15);
  objc_msgSend_floatValue(v16, v17, v18, v19);
  self->_desaturationParams.angle = v20;

  v23 = objc_msgSend_objectForKeyedSubscript_(v5, v21, @"Cutoff", v22);
  objc_msgSend_floatValue(v23, v24, v25, v26);
  self->_desaturationParams.cutoff = v27;

  v28 = 0;
LABEL_6:

  return v28;
}

- (int)_parseRadialTuning:(id)tuning
{
  v5 = objc_msgSend_objectForKeyedSubscript_(tuning, a2, @"RadialParameters", v3);
  if (objc_msgSend__validateTuning_mode_parameterKey_(VideoDefringingTuningParameters, v6, v5, self->_mode, @"RadialParameters"))
  {
    sub_2958BC830();
    goto LABEL_5;
  }

  if (self->_mode > 2)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
LABEL_5:
    v42 = -12780;
    goto LABEL_6;
  }

  v9 = objc_msgSend_objectForKeyedSubscript_(v5, v7, @"a0", v8);
  objc_msgSend_floatValue(v9, v10, v11, v12);
  self->_radialParams.a0 = v13;

  v16 = objc_msgSend_objectForKeyedSubscript_(v5, v14, @"self", v15);
  objc_msgSend_floatValue(v16, v17, v18, v19);
  self->_radialParams.self = v20;

  v23 = objc_msgSend_objectForKeyedSubscript_(v5, v21, @"a2", v22);
  objc_msgSend_floatValue(v23, v24, v25, v26);
  self->_radialParams.a2 = v27;

  v30 = objc_msgSend_objectForKeyedSubscript_(v5, v28, @"tuning", v29);
  objc_msgSend_floatValue(v30, v31, v32, v33);
  self->_radialParams.tuning = v34;

  *self->_anon_40 = self->_radialParams;
  v37 = objc_msgSend_objectForKeyedSubscript_(v5, v35, @"MinCoefficient", v36);
  objc_msgSend_floatValue(v37, v38, v39, v40);
  *&self->_anon_40[36] = v41;

  v42 = 0;
LABEL_6:

  return v42;
}

- (int)_parseCorrectionTuning:(id)tuning
{
  v5 = objc_msgSend_objectForKeyedSubscript_(tuning, a2, @"CorrectionParameters", v3);
  v9 = objc_msgSend__validateTuning_mode_parameterKey_(VideoDefringingTuningParameters, v6, v5, self->_mode, @"CorrectionParameters");
  if (v9)
  {
    sub_2958BC8B0();
    goto LABEL_10;
  }

  mode = self->_mode;
  if (mode)
  {
    if (mode == 1)
    {
      v9 = 0;
      goto LABEL_16;
    }

    if (mode == 2)
    {
      v11 = objc_msgSend_objectForKeyedSubscript_(v5, v7, @"MaxChroma", v8);
      objc_msgSend_floatValue(v11, v12, v13, v14);
      self->_correctionParams.max_chroma = v15;

      v18 = objc_msgSend_objectForKeyedSubscript_(v5, v16, @"BlueTh0", v17);
      objc_msgSend_floatValue(v18, v19, v20, v21);
      self->_correctionParams.blueTh0 = v22;

      v25 = objc_msgSend_objectForKeyedSubscript_(v5, v23, @"BlueTh1", v24);
      objc_msgSend_floatValue(v25, v26, v27, v28);
      self->_correctionParams.blueTh1 = v29;

      v32 = objc_msgSend_objectForKeyedSubscript_(v5, v30, @"BlueCrTh0", v31);
      objc_msgSend_floatValue(v32, v33, v34, v35);
      self->_correctionParams.blueCrTh0 = v36;

      v39 = objc_msgSend_objectForKeyedSubscript_(v5, v37, @"ContrastTh0", v38);
      objc_msgSend_floatValue(v39, v40, v41, v42);
      self->_correctionParams.contrastTh0 = v43;

      v46 = objc_msgSend_objectForKeyedSubscript_(v5, v44, @"ContrastTh1", v45);
      objc_msgSend_floatValue(v46, v47, v48, v49);
      self->_correctionParams.contrastTh1 = v50;

      v53 = objc_msgSend_objectForKeyedSubscript_(v5, v51, @"DarknessTh0", v52);
      objc_msgSend_floatValue(v53, v54, v55, v56);
      self->_correctionParams.darknessTh0 = v57;

      v60 = objc_msgSend_objectForKeyedSubscript_(v5, v58, @"DarknessTh1", v59);
      objc_msgSend_floatValue(v60, v61, v62, v63);
      self->_correctionParams.darknessTh1 = v64;

      v67 = objc_msgSend_objectForKeyedSubscript_(v5, v65, @"PbrightnessTh0", v66);
      objc_msgSend_floatValue(v67, v68, v69, v70);
      self->_correctionParams.pbrightnessTh0 = v71;

      v74 = objc_msgSend_objectForKeyedSubscript_(v5, v72, @"PbrightnessTh1", v73);
      objc_msgSend_floatValue(v74, v75, v76, v77);
      self->_correctionParams.pbrightnessTh1 = v78;

      v81 = objc_msgSend_objectForKeyedSubscript_(v5, v79, @"BlueBrightThr0", v80);
      objc_msgSend_floatValue(v81, v82, v83, v84);
      self->_correctionParams.blueBrightThr0 = v85;

      v88 = objc_msgSend_objectForKeyedSubscript_(v5, v86, @"BlueBrightThr1", v87);
      objc_msgSend_floatValue(v88, v89, v90, v91);
      self->_correctionParams.blueBrightThr1 = v92;

      v95 = objc_msgSend_objectForKeyedSubscript_(v5, v93, @"ColorfullThr0", v94);
      objc_msgSend_floatValue(v95, v96, v97, v98);
      self->_correctionParams.colorfullThr0 = v99;

      v102 = objc_msgSend_objectForKeyedSubscript_(v5, v100, @"ColorfullThr1", v101);
      objc_msgSend_floatValue(v102, v103, v104, v105);
      self->_correctionParams.colorfullThr1 = v106;

      v109 = objc_msgSend_objectForKeyedSubscript_(v5, v107, @"ColorfullPThr0", v108);
      objc_msgSend_floatValue(v109, v110, v111, v112);
      self->_correctionParams.colorfull_PThr0 = v113;

      v116 = objc_msgSend_objectForKeyedSubscript_(v5, v114, @"ColorfullPThr1", v115);
      objc_msgSend_floatValue(v116, v117, v118, v119);
      self->_correctionParams.colorfull_PThr1 = v120;

      v123 = objc_msgSend_objectForKeyedSubscript_(v5, v121, @"BlueCrThr0", v122);
      objc_msgSend_floatValue(v123, v124, v125, v126);
      self->_correctionParams.blueCrThr0 = v127;

      v130 = objc_msgSend_objectForKeyedSubscript_(v5, v128, @"BlueCrThr1", v129);
      objc_msgSend_floatValue(v130, v131, v132, v133);
      self->_correctionParams.blueCrThr1 = v134;

      v137 = objc_msgSend_objectForKeyedSubscript_(v5, v135, @"DarkBlueCbThr0", v136);
      objc_msgSend_floatValue(v137, v138, v139, v140);
      self->_correctionParams.darkBlue_CbThr0 = v141;

      v144 = objc_msgSend_objectForKeyedSubscript_(v5, v142, @"DarkBlueCbThr1", v143);
      objc_msgSend_floatValue(v144, v145, v146, v147);
      self->_correctionParams.darkBlue_CbThr1 = v148;

      v151 = objc_msgSend_objectForKeyedSubscript_(v5, v149, @"SkyBlueYThr0", v150);
      objc_msgSend_floatValue(v151, v152, v153, v154);
      self->_correctionParams.skyBlue_YThr0 = v155;

      v158 = objc_msgSend_objectForKeyedSubscript_(v5, v156, @"SkyBlueYThr1", v157);
      objc_msgSend_floatValue(v158, v159, v160, v161);
      self->_correctionParams.skyBlue_YThr1 = v162;

      v165 = objc_msgSend_objectForKeyedSubscript_(v5, v163, @"SkyBlueCbThr0", v164);
      objc_msgSend_floatValue(v165, v166, v167, v168);
      self->_correctionParams.skyBlue_CbThr0 = v169;

      v172 = objc_msgSend_objectForKeyedSubscript_(v5, v170, @"SkyBlueCbThr1", v171);
      objc_msgSend_floatValue(v172, v173, v174, v175);
      self->_correctionParams.skyBlue_CbThr1 = v176;

      v179 = objc_msgSend_objectForKeyedSubscript_(v5, v177, @"SkyBluePThr0", v178);
      objc_msgSend_floatValue(v179, v180, v181, v182);
      self->_correctionParams.skyBlue_PThr0 = v183;

      v186 = objc_msgSend_objectForKeyedSubscript_(v5, v184, @"SkyBluePThr1", v185);
      objc_msgSend_floatValue(v186, v187, v188, v189);
      self->_correctionParams.skyBlue_PThr1 = v190;

      v193 = objc_msgSend_objectForKeyedSubscript_(v5, v191, @"FiltThr", v192);
      objc_msgSend_floatValue(v193, v194, v195, v196);
      self->_correctionParams.filtThr = v197;

      goto LABEL_6;
    }

    fig_log_get_emitter();
    FigDebugAssert3();
LABEL_10:
    v9 = -12780;
    goto LABEL_16;
  }

LABEL_6:
  v198 = objc_msgSend_objectForKeyedSubscript_(v5, v7, @"RadialScale", v8);
  objc_msgSend_floatValue(v198, v199, v200, v201);
  self->_correctionParams.radialScale = v202;

  v205 = objc_msgSend_objectForKeyedSubscript_(v5, v203, @"RadialR0", v204);
  objc_msgSend_floatValue(v205, v206, v207, v208);
  self->_correctionParams.radialR0 = v209;

  v212 = objc_msgSend_objectForKeyedSubscript_(v5, v210, @"RadialR1", v211);
  objc_msgSend_floatValue(v212, v213, v214, v215);
  self->_correctionParams.radialR1 = v216;

  v219 = objc_msgSend_objectForKeyedSubscript_(v5, v217, @"RadialF0", v218);
  objc_msgSend_floatValue(v219, v220, v221, v222);
  self->_correctionParams.radialF0 = v223;

  v226 = objc_msgSend_objectForKeyedSubscript_(v5, v224, @"RadialF1", v225);
  objc_msgSend_floatValue(v226, v227, v228, v229);
  self->_correctionParams.radialF1 = v230;

  v233 = objc_msgSend_objectForKeyedSubscript_(v5, v231, @"RadialF2", v232);
  objc_msgSend_floatValue(v233, v234, v235, v236);
  self->_correctionParams.radialF2 = v237;

  v242 = objc_msgSend_objectForKeyedSubscript_(v5, v238, @"RadialFXScaleFactorByQuadraBinningFactor", v239);
  if (v242)
  {
    v243 = objc_msgSend_objectForKeyedSubscript_(v5, v240, @"RadialFXScaleFactorByQuadraBinningFactor", v241);
  }

  else
  {
    v243 = &unk_2A1CC4480;
  }

  if (objc_msgSend_count(v243, v244, v245, v246))
  {
    v249 = 0;
    do
    {
      v250 = objc_msgSend_objectAtIndexedSubscript_(v243, v247, v249, v248);
      objc_msgSend_floatValue(v250, v251, v252, v253);
      self->_correctionParams.radialFXScaleFactorByQuadraBinningFactor[v249] = v254;

      ++v249;
    }

    while (v249 < objc_msgSend_count(v243, v255, v256, v257));
  }

  v260 = objc_msgSend_objectForKeyedSubscript_(v5, v258, @"MaxChroma", v259);
  objc_msgSend_floatValue(v260, v261, v262, v263);
  self->_correctionParams.max_chroma = v264;

  v267 = objc_msgSend_objectForKeyedSubscript_(v5, v265, @"BlueTh0", v266);
  objc_msgSend_floatValue(v267, v268, v269, v270);
  self->_correctionParams.blueTh0 = v271;

  v274 = objc_msgSend_objectForKeyedSubscript_(v5, v272, @"BlueTh1", v273);
  objc_msgSend_floatValue(v274, v275, v276, v277);
  self->_correctionParams.blueTh1 = v278;

  v281 = objc_msgSend_objectForKeyedSubscript_(v5, v279, @"BlueCrTh0", v280);
  objc_msgSend_floatValue(v281, v282, v283, v284);
  self->_correctionParams.blueCrTh0 = v285;

  v288 = objc_msgSend_objectForKeyedSubscript_(v5, v286, @"BrightnessTh0", v287);
  objc_msgSend_floatValue(v288, v289, v290, v291);
  self->_correctionParams.brightnessTh0 = v292;

  v295 = objc_msgSend_objectForKeyedSubscript_(v5, v293, @"BrightnessTh1", v294);
  objc_msgSend_floatValue(v295, v296, v297, v298);
  self->_correctionParams.brightnessTh1 = v299;

  v302 = objc_msgSend_objectForKeyedSubscript_(v5, v300, @"ContrastTh0", v301);
  objc_msgSend_floatValue(v302, v303, v304, v305);
  self->_correctionParams.contrastTh0 = v306;

  v309 = objc_msgSend_objectForKeyedSubscript_(v5, v307, @"ContrastTh1", v308);
  objc_msgSend_floatValue(v309, v310, v311, v312);
  self->_correctionParams.contrastTh1 = v313;

  v316 = objc_msgSend_objectForKeyedSubscript_(v5, v314, @"DarknessTh0", v315);
  objc_msgSend_floatValue(v316, v317, v318, v319);
  self->_correctionParams.darknessTh0 = v320;

  v323 = objc_msgSend_objectForKeyedSubscript_(v5, v321, @"DarknessTh1", v322);
  objc_msgSend_floatValue(v323, v324, v325, v326);
  self->_correctionParams.darknessTh1 = v327;

  v330 = objc_msgSend_objectForKeyedSubscript_(v5, v328, @"LumaKnee", v329);
  objc_msgSend_floatValue(v330, v331, v332, v333);
  self->_correctionParams.luma_knee = v334;

  v337 = objc_msgSend_objectForKeyedSubscript_(v5, v335, @"LumaAmp", v336);
  objc_msgSend_floatValue(v337, v338, v339, v340);
  self->_correctionParams.luma_amp = v341;

  v344 = objc_msgSend_objectForKeyedSubscript_(v5, v342, @"PbrightnessTh0", v343);
  objc_msgSend_floatValue(v344, v345, v346, v347);
  self->_correctionParams.pbrightnessTh0 = v348;

  v351 = objc_msgSend_objectForKeyedSubscript_(v5, v349, @"PbrightnessTh1", v350);
  objc_msgSend_floatValue(v351, v352, v353, v354);
  self->_correctionParams.pbrightnessTh1 = v355;

  v358 = objc_msgSend_objectForKeyedSubscript_(v5, v356, @"BlueBrightThr0", v357);
  objc_msgSend_floatValue(v358, v359, v360, v361);
  self->_correctionParams.blueBrightThr0 = v362;

  v365 = objc_msgSend_objectForKeyedSubscript_(v5, v363, @"BlueBrightThr1", v364);
  objc_msgSend_floatValue(v365, v366, v367, v368);
  self->_correctionParams.blueBrightThr1 = v369;

  v372 = objc_msgSend_objectForKeyedSubscript_(v5, v370, @"ColorfullThr0", v371);
  objc_msgSend_floatValue(v372, v373, v374, v375);
  self->_correctionParams.colorfullThr0 = v376;

  v379 = objc_msgSend_objectForKeyedSubscript_(v5, v377, @"ColorfullThr1", v378);
  objc_msgSend_floatValue(v379, v380, v381, v382);
  self->_correctionParams.colorfullThr1 = v383;

  v386 = objc_msgSend_objectForKeyedSubscript_(v5, v384, @"ColorfullPThr0", v385);
  objc_msgSend_floatValue(v386, v387, v388, v389);
  self->_correctionParams.colorfull_PThr0 = v390;

  v393 = objc_msgSend_objectForKeyedSubscript_(v5, v391, @"ColorfullPThr1", v392);
  objc_msgSend_floatValue(v393, v394, v395, v396);
  self->_correctionParams.colorfull_PThr1 = v397;

  v400 = objc_msgSend_objectForKeyedSubscript_(v5, v398, @"BlueCrThr0", v399);
  objc_msgSend_floatValue(v400, v401, v402, v403);
  self->_correctionParams.blueCrThr0 = v404;

  v407 = objc_msgSend_objectForKeyedSubscript_(v5, v405, @"BlueCrThr1", v406);
  objc_msgSend_floatValue(v407, v408, v409, v410);
  self->_correctionParams.blueCrThr1 = v411;

  v414 = objc_msgSend_objectForKeyedSubscript_(v5, v412, @"DarkAchromThr0", v413);
  objc_msgSend_floatValue(v414, v415, v416, v417);
  self->_correctionParams.darkAchromThr0 = v418;

  v421 = objc_msgSend_objectForKeyedSubscript_(v5, v419, @"DarkAchromThr1", v420);
  objc_msgSend_floatValue(v421, v422, v423, v424);
  self->_correctionParams.darkAchromThr1 = v425;

  v428 = objc_msgSend_objectForKeyedSubscript_(v5, v426, @"DarkAchromCThr", v427);
  objc_msgSend_floatValue(v428, v429, v430, v431);
  self->_correctionParams.darkAchromCThr = v432;

  v435 = objc_msgSend_objectForKeyedSubscript_(v5, v433, @"DarkAchromYThr", v434);
  objc_msgSend_floatValue(v435, v436, v437, v438);
  self->_correctionParams.darkAchromYThr = v439;

  v442 = objc_msgSend_objectForKeyedSubscript_(v5, v440, @"DarkBlueYThr0", v441);
  objc_msgSend_floatValue(v442, v443, v444, v445);
  self->_correctionParams.darkBlue_YThr0 = v446;

  v449 = objc_msgSend_objectForKeyedSubscript_(v5, v447, @"DarkBlueYThr1", v448);
  objc_msgSend_floatValue(v449, v450, v451, v452);
  self->_correctionParams.darkBlue_YThr1 = v453;

  v456 = objc_msgSend_objectForKeyedSubscript_(v5, v454, @"DarkBlueCbThr0", v455);
  objc_msgSend_floatValue(v456, v457, v458, v459);
  self->_correctionParams.darkBlue_CbThr0 = v460;

  v463 = objc_msgSend_objectForKeyedSubscript_(v5, v461, @"DarkBlueCbThr1", v462);
  objc_msgSend_floatValue(v463, v464, v465, v466);
  self->_correctionParams.darkBlue_CbThr1 = v467;

  v470 = objc_msgSend_objectForKeyedSubscript_(v5, v468, @"SkyBlueYThr0", v469);
  objc_msgSend_floatValue(v470, v471, v472, v473);
  self->_correctionParams.skyBlue_YThr0 = v474;

  v477 = objc_msgSend_objectForKeyedSubscript_(v5, v475, @"SkyBlueYThr1", v476);
  objc_msgSend_floatValue(v477, v478, v479, v480);
  self->_correctionParams.skyBlue_YThr1 = v481;

  v484 = objc_msgSend_objectForKeyedSubscript_(v5, v482, @"SkyBlueCbThr0", v483);
  objc_msgSend_floatValue(v484, v485, v486, v487);
  self->_correctionParams.skyBlue_CbThr0 = v488;

  v491 = objc_msgSend_objectForKeyedSubscript_(v5, v489, @"SkyBlueCbThr1", v490);
  objc_msgSend_floatValue(v491, v492, v493, v494);
  self->_correctionParams.skyBlue_CbThr1 = v495;

  v498 = objc_msgSend_objectForKeyedSubscript_(v5, v496, @"SkyBluePThr0", v497);
  objc_msgSend_floatValue(v498, v499, v500, v501);
  self->_correctionParams.skyBlue_PThr0 = v502;

  v505 = objc_msgSend_objectForKeyedSubscript_(v5, v503, @"SkyBluePThr1", v504);
  objc_msgSend_floatValue(v505, v506, v507, v508);
  self->_correctionParams.skyBlue_PThr1 = v509;

  v512 = objc_msgSend_objectForKeyedSubscript_(v5, v510, @"FiltThr", v511);
  objc_msgSend_floatValue(v512, v513, v514, v515);
  self->_correctionParams.filtThr = v516;

  v519 = objc_msgSend_objectForKeyedSubscript_(v5, v517, @"MixFiltLUT", v518);
  objc_msgSend_floatValue(v519, v520, v521, v522);
  self->_correctionParams.mixFiltLUT = v523;

  v526 = objc_msgSend_objectForKeyedSubscript_(v5, v524, @"EITThr0", v525);
  objc_msgSend_floatValue(v526, v527, v528, v529);
  self->_correctionParams.eitThr0 = v530;

  v533 = objc_msgSend_objectForKeyedSubscript_(v5, v531, @"EITThr1", v532);
  objc_msgSend_floatValue(v533, v534, v535, v536);
  self->_correctionParams.eitThr1 = v537;

  v540 = objc_msgSend_objectForKeyedSubscript_(v5, v538, @"AwbRatioThr0", v539);
  objc_msgSend_floatValue(v540, v541, v542, v543);
  self->_correctionParams.awbRatioThr0 = v544;

  v547 = objc_msgSend_objectForKeyedSubscript_(v5, v545, @"AwbRatioThr1", v546);
  objc_msgSend_floatValue(v547, v548, v549, v550);
  self->_correctionParams.awbRatioThr1 = v551;

LABEL_16:
  return v9;
}

- (void)setDefaults
{
  objc_msgSend_defaultLUTParams_(VideoDefringingTuningParameters, a2, self->_mode, v2);
  self->_desaturationParams.amount = v4;
  self->_desaturationParams.angle = v5;
  self->_desaturationParams.cutoff = v6;
  objc_msgSend_defaultCorrectionParams_(VideoDefringingTuningParameters, v7, self->_mode, v8);
  self->_correctionParams = v11;
  objc_msgSend_defaultRadialParams_(VideoDefringingTuningParameters, v9, self->_mode, v10);
  self->_radialParams = *&v11.radialScale;
  *self->_anon_40 = *&v11.radialF1;
  *&self->_anon_40[16] = *&v11.radialFXScaleFactorByQuadraBinningFactor[2];
  *&self->_anon_40[32] = *&v11.blueCrTh0;
}

- (void)setRadialParamsForWidth:(unint64_t)width height:(unint64_t)height
{
  *&self->_anon_40[32] = sqrtf((width * width + height * height)) * 0.5;
  v4.i64[0] = width;
  v4.i64[1] = height;
  *v4.i8 = vmul_f32(vcvt_f32_f64(vcvtq_f64_u64(v4)), 0x3F0000003F000000);
  *&self->_anon_40[16] = v4.i64[0];
  *&self->_anon_40[24] = v4.i64[0];
}

- (void)setMetadataGain:(float)gain exposureTime:(float)time AWBRGain:(float)rGain AWBBGain:(float)bGain
{
  if (bGain < 0.000001)
  {
    bGain = 0.000001;
  }

  v6.f32[0] = rGain / bGain;
  v7.i32[0] = LODWORD(self->_correctionParams.awbRatioThr0);
  v8.i32[0] = LODWORD(self->_correctionParams.awbRatioThr1);
  v6.f32[1] = gain * time;
  v7.i32[1] = LODWORD(self->_correctionParams.eitThr0);
  v8.i32[1] = LODWORD(self->_correctionParams.eitThr1);
  v9 = vdiv_f32(vsub_f32(v6, v7), vsub_f32(v8, v7));
  v10 = vcgtz_f32(v9);
  __asm { FMOV            V3.2S, #1.0 }

  v16 = vcgt_f32(_D3, v9);
  v17 = vbsl_s8(vorn_s8(vmvn_s8(v10), v16), vbic_s8(_D3, vorn_s8(v16, v10)), v9);
  __asm { FMOV            V3.2S, #3.0 }

  v19 = vmul_f32(vmul_f32(v17, v17), vmla_f32(_D3, 0xC0000000C0000000, v17));
  LODWORD(self->_correctionParams.correctionStrength) = vmul_lane_f32(v19, v19, 1).u32[0];
}

- (int)selectParametersForTuningMode:(unint64_t)mode
{
  self->_mode = mode;
  v5 = objc_msgSend__tuningHeaderForMode_(VideoDefringingTuningParameters, a2, mode, v3);
  v8 = objc_msgSend_objectForKeyedSubscript_(self->_tuningParameters, v6, v5, v7);
  v11 = v8;
  if (!v8)
  {
    sub_2958BCD88();
    goto LABEL_18;
  }

  v12 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"CorrectionEnabled", v10);

  if (!v12)
  {
    sub_2958BCD0C();
    goto LABEL_18;
  }

  v15 = objc_msgSend_objectForKeyedSubscript_(v11, v13, @"CorrectionEnabled", v14);
  self->_defringingEnabled = objc_msgSend_BOOLValue(v15, v16, v17, v18);

  mode = self->_mode;
  if (mode)
  {
    if (mode != 2)
    {
      if (mode == 1)
      {
        v22 = objc_msgSend__parseDesaturateTuning_(self, v19, v11, v20);
        if (v22)
        {
          v25 = v22;
          sub_2958BCC14();
        }

        else
        {
          v25 = objc_msgSend__parseRadialTuning_(self, v23, v11, v24);
          if (v25)
          {
            sub_2958BCC90();
          }
        }

        goto LABEL_19;
      }

      fig_log_get_emitter();
      FigDebugAssert3();
LABEL_18:
      v25 = -12780;
      goto LABEL_19;
    }

    v26 = objc_msgSend__parseCorrectionTuning_(self, v19, v11, v20);
    if (v26)
    {
      v25 = v26;
      sub_2958BCAA0();
    }

    else
    {
      v29 = objc_msgSend__parseDesaturateTuning_(self, v27, v11, v28);
      if (v29)
      {
        v25 = v29;
        sub_2958BCB1C();
      }

      else
      {
        v25 = objc_msgSend__parseRadialTuning_(self, v30, v11, v31);
        if (v25)
        {
          sub_2958BCB98();
        }
      }
    }
  }

  else
  {
    v32 = objc_msgSend__parseCorrectionTuning_(self, v19, v11, v20);
    if (v32)
    {
      v25 = v32;
      sub_2958BC92C();
    }

    else
    {
      v35 = objc_msgSend__parseDesaturateTuning_(self, v33, v11, v34);
      if (v35)
      {
        v25 = v35;
        sub_2958BC9A8();
      }

      else
      {
        v25 = objc_msgSend__parseRadialTuning_(self, v36, v11, v37);
        if (v25)
        {
          sub_2958BCA24();
        }
      }
    }
  }

LABEL_19:

  return v25;
}

- ($B5339CD3011AE9733252D32A415F0BF1)correctionParams
{
  v3 = *&self[1].var20;
  *&retstr->var46 = *&self[1].var16;
  *&retstr->var50 = v3;
  *&retstr->var54 = *&self[1].var24;
  v4 = *self[1].var6;
  *&retstr->var30 = *&self[1].var2;
  *&retstr->var34 = v4;
  v5 = *&self[1].var12;
  *&retstr->var38 = *&self[1].var8;
  *&retstr->var42 = v5;
  v6 = *&self->var46;
  *&retstr->var14 = *&self->var42;
  *&retstr->var18 = v6;
  v7 = *&self->var54;
  *&retstr->var22 = *&self->var50;
  *&retstr->var26 = v7;
  v8 = *&self->var30;
  *&retstr->var0 = *&self->var26;
  *&retstr->var4 = v8;
  v9 = *&self->var38;
  *&retstr->var6[2] = *&self->var34;
  *&retstr->var10 = v9;
  return self;
}

- ($6B6A6628744B4DF06B73A717F4EE0DD2)radialParams
{
  v3 = *&self[2].var0;
  *&retstr->var0 = *&self[1].var4;
  *&retstr->var4 = v3;
  v4 = *&self[3].var0;
  *&retstr[1].var0 = *&self[2].var4;
  *&retstr[1].var4 = v4;
  return self;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)desaturationParams
{
  amount = self->_desaturationParams.amount;
  angle = self->_desaturationParams.angle;
  cutoff = self->_desaturationParams.cutoff;
  result.var2 = cutoff;
  result.var1 = angle;
  result.var0 = amount;
  return result;
}

@end