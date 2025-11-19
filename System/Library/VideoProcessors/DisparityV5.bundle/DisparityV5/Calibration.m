@interface Calibration
- (BOOL)_computeAdcDistortionModels;
- (CGRect)referenceFinalCropRect;
- (CalModel)correctedCalibration;
- (CalModel)initialCalibration;
- (Calibration)init;
- (DistortionModel)distModelFor:(SEL)a3;
- (DistortionModel)undistModelFor:(SEL)a3;
- (__n128)auxiliaryPaddingHInv;
- (__n128)rectReferenceToAuxiliary;
- (__n128)rectReferenceToReference;
- (__n128)referenceToRectReference;
- (float)_computeCanonicalDisparityScaleFactor;
- (float)referenceMagnification;
- (int)_allocateResourcesForMaxNumOfTransposedPoints:(unsigned int)a3;
- (int)_checkADCStatus:(AdaptiveCorrectionStatus *)a3;
- (int)_computeCalibrationWithoutDistortion;
- (int)_computeCenteredRectificationHomographies;
- (int)_computePaddedAuxiliaryRectificationHomography;
- (int)applyCurrentTemporalState;
- (int)computeAuxiliaryImageShiftForKeypoints:(Calibration *)self;
- (int)computeCalibration;
- (int)computeInitialCalibration;
- (int)extractParametersFromReferenceMetadata:(id)a3 auxiliaryMetadata:(id)a4 options:(id)a5 adaptiveCorrectionConfig:(AdaptiveCorrectionConfig *)a6 useReferenceFrame:(BOOL)a7;
- (void)_releaseResourcesForTransformedPoints;
- (void)dealloc;
- (void)releaseResources;
- (void)setKeypointsForReference:(double *)a3 auxiliary:(double *)a4 keypointCount:(unsigned int)a5;
- (void)setReferenceBufferDimensions:(id)a3 auxillaryBufferDimensions:(id)a4 normalizedReferenceFinalCropRect:(CGRect)a5;
@end

@implementation Calibration

- (Calibration)init
{
  v3.receiver = self;
  v3.super_class = Calibration;
  result = [(Calibration *)&v3 init];
  if (result)
  {
    result->_distortionCorrectionEnabled = 1;
    result->_rectificationFocalLengthFactor = 1.0;
    result->_referenceCalibrationScalingFactor = 1.0;
    result->_aspectRatioErrorHardThreshold = 0.0045;
  }

  return result;
}

- (void)releaseResources
{
  if (self->_distortionCorrectionEnabled)
  {
    sub_29575F968(self->_adc);
    self->_adc = 0;
  }

  else
  {

    (MEMORY[0x2A1C70FE8])(self, sel__releaseResourcesForTransformedPoints);
  }
}

- (void)dealloc
{
  objc_msgSend_releaseResources(self, a2, v2, v3, v4, v5, v6, v7, v8);
  v10.receiver = self;
  v10.super_class = Calibration;
  [(Calibration *)&v10 dealloc];
}

- (int)extractParametersFromReferenceMetadata:(id)a3 auxiliaryMetadata:(id)a4 options:(id)a5 adaptiveCorrectionConfig:(AdaptiveCorrectionConfig *)a6 useReferenceFrame:(BOOL)a7
{
  v7 = a7;
  v13 = a3;
  v14 = a4;
  v21 = a5;
  v429 = self;
  self->_rectificationFocalLengthFactor = 1.0;
  if (!v13)
  {
    sub_295768D34(__dst);
LABEL_76:
    v395 = __dst[0];
    goto LABEL_71;
  }

  if (!v14)
  {
    sub_295768C88(__dst);
    goto LABEL_76;
  }

  v398 = a6;
  v23 = objc_msgSend_objectForKeyedSubscript_(v13, v15, @"PortType", v16, v17, v18, v19, v20, v22);
  v24 = self->_portTypeName[0];
  self->_portTypeName[0] = v23;

  v32 = objc_msgSend_objectForKeyedSubscript_(v14, v25, @"PortType", v26, v27, v28, v29, v30, v31);
  v33 = self->_portTypeName[1];
  self->_portTypeName[1] = v32;

  metadata = self->_metadata;
  objc_storeStrong(self->_metadata, a3);
  objc_storeStrong(&self->_metadata[1], a4);
  if (v7)
  {
    v42 = 0;
    v43 = 1;
    do
    {
      v44 = v43;
      v45 = objc_msgSend_objectForKeyedSubscript_(metadata[v42], v35, @"ReferenceFrameMetadata", v36, v37, v38, v39, v40, v41);

      if (v45)
      {
        v46 = objc_msgSend_objectForKeyedSubscript_(metadata[v42], v35, @"ReferenceFrameMetadata", v36, v37, v38, v39, v40, v41);
        v47 = metadata[v42];
        metadata[v42] = v46;
      }

      v43 = 0;
      v42 = 1;
    }

    while ((v44 & 1) != 0);
  }

  if (!v21)
  {
    sub_295768BDC(__dst);
    goto LABEL_76;
  }

  v422 = objc_msgSend_objectForKeyedSubscript_(v21, v35, *MEMORY[0x29EDC0288], v36, v37, v38, v39, v40, v41);
  if (!v422)
  {
    sub_295768B30(__dst);
    goto LABEL_76;
  }

  v399 = v21;
  v400 = v14;
  v401 = v13;
  p_adaptiveCorrectionConfig = &self->_adaptiveCorrectionConfig;
  portTypeName = self->_portTypeName;
  v421 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], v48, v49, v50, v51, v52, v53, v54, v55);
  v56 = 0;
  v57 = 0;
  v402 = 0;
  v418 = *MEMORY[0x29EDC0658];
  v417 = *MEMORY[0x29EDBFF38];
  v428 = *MEMORY[0x29EDBFEF8];
  v416 = *MEMORY[0x29EDBFEC8];
  v432 = *MEMORY[0x29EDBFEC0];
  v426 = *MEMORY[0x29EDC04C0];
  v427 = *MEMORY[0x29EDC0628];
  v424 = *MEMORY[0x29EDC04B0];
  v425 = *MEMORY[0x29EDC0620];
  pixelBufferDimensions = self->_pixelBufferDimensions;
  v415 = *MEMORY[0x29EDBFED8];
  v413 = *MEMORY[0x29EDC05D0];
  opticalCenter = self->_opticalCenter;
  focalLength = self->_focalLength;
  rawSensorSize = self->_rawSensorSize;
  v405 = *MEMORY[0x29EDC06F0];
  pixelBufferScalingFactor = self->_pixelBufferScalingFactor;
  v404 = *MEMORY[0x29EDBFED0];
  distortionOpticalCenter = self->_distortionOpticalCenter;
  ddf = self->_ddf;
  v58 = 1;
  v403 = *MEMORY[0x29EDC05C8];
  v409 = *MEMORY[0x29EDC0670];
  v408 = *MEMORY[0x29EDC0668];
  do
  {
    v434 = v58;
    v59 = portTypeName[v57];
    v433 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], v60, v61, v62, v63, v64, v65, v66, v67);
    v75 = objc_msgSend_objectForKeyedSubscript_(metadata[v57], v68, v418, v69, v70, v71, v72, v73, v74);
    v84 = objc_msgSend_intValue(v75, v76, v77, v78, v79, v80, v81, v82, v83);
    if (v84 <= 1)
    {
      v85 = 1;
    }

    else
    {
      v85 = v84;
    }

    v86 = MEMORY[0x29EDBA070];
    v94 = objc_msgSend_objectForKeyedSubscript_(v422, v87, v59, v88, v89, v90, v91, v92, v93);
    v102 = objc_msgSend_objectForKeyedSubscript_(v94, v95, v417, v96, v97, v98, v99, v100, v101);
    objc_msgSend_floatValue(v102, v103, v104, v105, v106, v107, v108, v109, v110);
    v111 = v85;
    v443 = objc_msgSend_numberWithFloat_(v86, v113, v114, v115, v116, v117, v118, v119, v112 * v85);

    v120 = v59;
    v128 = objc_msgSend_objectForKeyedSubscript_(v422, v121, v59, v122, v123, v124, v125, v126, v127);
    v438 = objc_msgSend_objectForKeyedSubscript_(v128, v129, v428, v130, v131, v132, v133, v134, v135);

    v143 = objc_msgSend_objectForKeyedSubscript_(v422, v136, v59, v137, v138, v139, v140, v141, v142);
    v151 = objc_msgSend_objectForKeyedSubscript_(v143, v144, v416, v145, v146, v147, v148, v149, v150);

    v159 = objc_msgSend_objectForKeyedSubscript_(v422, v152, v120, v153, v154, v155, v156, v157, v158);
    v445 = objc_msgSend_objectForKeyedSubscript_(v159, v160, v432, v161, v162, v163, v164, v165, v166);

    v436 = objc_msgSend_objectForKeyedSubscript_(metadata[v57], v167, v427, v168, v169, v170, v171, v172, v173);
    v181 = objc_msgSend_objectForKeyedSubscript_(metadata[v57], v174, v426, v175, v176, v177, v178, v179, v180);
    v189 = objc_msgSend_objectForKeyedSubscript_(metadata[v57], v182, v425, v183, v184, v185, v186, v187, v188);
    dict = objc_msgSend_objectForKeyedSubscript_(metadata[v57], v190, v424, v191, v192, v193, v194, v195, v196);
    v204 = objc_msgSend_objectForKeyedSubscript_(v422, v197, v120, v198, v199, v200, v201, v202, v203);
    v212 = objc_msgSend_objectForKeyedSubscript_(v204, v205, v415, v206, v207, v208, v209, v210, v211);

    v437 = objc_msgSend_objectForKeyedSubscript_(metadata[v57], v213, v413, v214, v215, v216, v217, v218, v219);
    v228 = &pixelBufferDimensions[v57];
    v441 = v181;
    v430 = v228;
    if (v429->_pixelBufferScalingEnabled)
    {
      v229 = v212;
      v230 = v151;
      v231 = *(MEMORY[0x29EDB90D8] + 16);
      rect.origin = *MEMORY[0x29EDB90D8];
      rect.size = v231;
      v232 = objc_msgSend_objectForKeyedSubscript_(metadata[v57], v220, v405, v222, v223, v224, v225, v226, *&rect.origin.x);
      CGRectMakeWithDictionaryRepresentation(v232, &rect);

      width = rect.size.width;
      if (rect.size.width <= 0.0 || (height = rect.size.height, rect.size.height <= 0.0))
      {
        sub_295768524(&rect, __dst);
        v386 = 0;
        v402 = __dst[0];
        v235 = v433;
        v151 = v230;
        v385 = dict;
        v236 = v436;
        goto LABEL_49;
      }

      v235 = v433;
      v151 = v230;
      v212 = v229;
    }

    else
    {
      width = *v228;
      height = v228[1];
      v235 = v433;
    }

    v236 = v436;
    v431 = v151;
    if (!v212)
    {
      v270 = objc_msgSend_objectForKeyedSubscript_(v422, v220, v120, v222, v223, v224, v225, v226, v227);
      v268 = objc_msgSend_objectForKeyedSubscript_(v270, v271, v404, v272, v273, v274, v275, v276, v277);

      v285 = objc_msgSend_objectForKeyedSubscript_(metadata[v57], v278, v403, v279, v280, v281, v282, v283, v284);

      if (v268)
      {
        v267 = v438;
        if (!v285)
        {
          v229 = v268;
          sub_2957687D4(__dst);
          v386 = 0;
          v437 = 0;
          goto LABEL_64;
        }

        v437 = v285;
LABEL_28:
        v439 = objc_msgSend_objectForKeyedSubscript_(v268, v259, v428, v260, v261, v262, v263, v264, v265);

        v420 = objc_msgSend_objectForKeyedSubscript_(v268, v286, v432, v287, v288, v289, v290, v291, v292);

        objc_msgSend_objectForKeyedSubscript_(v437, v293, v427, v294, v295, v296, v297, v298, v299);
        v301 = v300 = v189;

        objc_msgSend_objectForKeyedSubscript_(v437, v302, v426, v303, v304, v305, v306, v307, v308);
        v309 = metadata;
        v311 = v310 = v120;

        v319 = objc_msgSend_objectForKeyedSubscript_(v437, v312, v425, v313, v314, v315, v316, v317, v318);

        v327 = objc_msgSend_objectForKeyedSubscript_(v437, v320, v424, v321, v322, v323, v324, v325, v326);

        v445 = v420;
        dict = v327;
        v436 = v301;
        v441 = v311;
        v120 = v310;
        metadata = v309;
        v189 = v319;
        v235 = v433;
        v267 = v439;
      }

      else
      {
        v437 = v285;
        v267 = v438;
      }

      v151 = v431;
      v269 = v445;
      if (!v443)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    if (!v443)
    {
      v229 = v212;
      sub_295768728(__dst);
      goto LABEL_57;
    }

    if (!v437)
    {
      v229 = v212;
      sub_29576867C(__dst);
      v386 = 0;
      v437 = 0;
      goto LABEL_58;
    }

    objc_msgSend_floatValue(v443, v220, v221, v222, v223, v224, v225, v226, v227);
    v238 = v237;
    v229 = v212;
    v245 = objc_msgSend_objectForKeyedSubscript_(v212, v239, v432, v240, v241, v242, v243, v244, v237);
    if (!v245)
    {
      sub_2957685D0(__dst);
      v386 = 0;
LABEL_64:
      v402 = __dst[0];
      v151 = v431;
      goto LABEL_59;
    }

    v253 = v245;
    v254.f32[0] = width * 0.5;
    v255 = height * 0.5;
    v254.f32[1] = v255;
    v254.f32[0] = sqrtf(vaddv_f32(vmul_f32(v254, v254))) * v238;
    v256 = v254.f32[0] / 1000.0;
    objc_msgSend_floatValue(v245, v246, v247, v248, v249, v250, v251, v252, v254.f32[0]);
    v258 = v256 > v257;

    v266 = v258 & ~v56;
    v267 = v438;
    v268 = v229;
    if ((v266 & 1) == 0)
    {
      goto LABEL_28;
    }

    v151 = v431;
    v269 = v445;
LABEL_31:
    objc_msgSend_setObject_forKeyedSubscript_(v235, v259, v443, @"pixelSizeMicrometers", v261, v262, v263, v264, v265);
LABEL_32:
    if (v267)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v235, v259, v267, @"gdcCoefficients", v261, v262, v263, v264, v265);
    }

    if (v151)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v235, v259, v151, @"CameraViewMatrix", v261, v262, v263, v264, v265);
    }

    if (v269)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v235, v259, v269, @"CalibrationValidRadius", v261, v262, v263, v264, v265);
    }

    v445 = v269;
    objc_msgSend_setObject_forKeyedSubscript_(v421, v259, v235, v120, v261, v262, v263, v264, v265);
    v236 = v436;
    v438 = v267;
    if (!v436)
    {
      v229 = v268;
      sub_295768A84(__dst);
LABEL_57:
      v386 = 0;
LABEL_58:
      v402 = __dst[0];
LABEL_59:
      v385 = dict;
      goto LABEL_49;
    }

    v229 = v268;
    objc_msgSend_floatValue(v436, v328, v329, v330, v331, v332, v333, v334, v335);
    focalLength[v57] = v336;
    if (!CGPointMakeWithDictionaryRepresentation(v189, &opticalCenter[v57]))
    {
      sub_295768880(__dst);
      goto LABEL_57;
    }

    v344 = objc_msgSend_objectForKeyedSubscript_(metadata[v57], v337, v409, v338, v339, v340, v341, v342, v343);
    objc_msgSend_floatValue(v344, v345, v346, v347, v348, v349, v350, v351, v352);
    p_width = &rawSensorSize[v57].width;
    *p_width = v353;

    v362 = objc_msgSend_objectForKeyedSubscript_(metadata[v57], v355, v408, v356, v357, v358, v359, v360, v361);
    objc_msgSend_floatValue(v362, v363, v364, v365, v366, v367, v368, v369, v370);
    p_width[1] = v371;

    v379 = width;
    v380 = *v430 / v379;
    v381 = height;
    v382 = v430[1] / v381;
    v383 = __PAIR64__(LODWORD(v382), LODWORD(v380));
    *&pixelBufferScalingFactor[8 * v57] = __PAIR64__(LODWORD(v382), LODWORD(v380));
    if (v434)
    {
      v429->_referenceCalibrationScalingFactor = (((v380 + v382) * 0.5) + ((v380 + v382) * 0.5)) / v111;
      v383 = *&pixelBufferScalingFactor[8 * v57];
    }

    if (*&v383 > 10.0 || *&v383 <= 0.1)
    {
      sub_2957689D8(__dst);
      goto LABEL_57;
    }

    if (v441)
    {
      objc_msgSend_floatValue(v441, v372, v373, v374, v375, v376, v377, v378, *&v383);
    }

    else
    {
      v384 = 0.0;
    }

    ddf[v57] = v384;
    v385 = dict;
    if (CGPointMakeWithDictionaryRepresentation(dict, &distortionOpticalCenter[v57]))
    {
      v386 = 1;
    }

    else
    {
      sub_29576892C(__dst);
      v386 = 0;
      v402 = __dst[0];
    }

LABEL_49:

    if ((v386 & 1) == 0)
    {

      v14 = v400;
      v13 = v401;
      v21 = v399;
      goto LABEL_70;
    }

    v58 = 0;
    v56 = 1;
    v57 = 1;
  }

  while ((v434 & 1) != 0);
  staticParametersByPortType = v429->_staticParametersByPortType;
  v429->_staticParametersByPortType = v421;
  v388 = v421;

  scaleTuningWithDigitalZoomByFactor = v398->scaleTuningWithDigitalZoomByFactor;
  if (scaleTuningWithDigitalZoomByFactor <= 0.0)
  {
    v14 = v400;
    v13 = v401;
    v21 = v399;
    v440 = *&v398->epErrorLimitWidePix_FirstPass;
    v442 = *&v398->rangePFL_T;
    v444 = *&v398->rangeOCxT;
    v446 = *&v398->rangeOCyT;
  }

  else
  {
    v390 = ((scaleTuningWithDigitalZoomByFactor * (v429->_referenceCalibrationScalingFactor + -1.0)) + 1.0);
    v442 = vmulq_n_f64(*&v398->rangePFL_T, v390);
    v444 = vmulq_n_f64(*&v398->rangeOCxT, v390);
    v446 = vmulq_n_f64(*&v398->rangeOCyT, v390);
    v440 = vmulq_n_f64(*&v398->epErrorLimitWidePix_FirstPass, v390);
    v14 = v400;
    v13 = v401;
    v21 = v399;
  }

  v391 = *&v398->runAnalyticalPreconditioning;
  v450 = *&v398->errorVal_LessThanExtremeMacro;
  v451 = v391;
  v452 = *&v398->keypointOutliersPercentile;
  temporalInitializationFactor = v398->temporalInitializationFactor;
  v392 = *&v398->minPointsForAdjustment;
  v448 = *&v398->intermediateMacroDistMM;
  v449 = v392;
  memcpy(__dst, &v398->overrideConfigPass1, sizeof(__dst));
  *&p_adaptiveCorrectionConfig->epErrorLimitWidePix_FirstPass = v440;
  *&p_adaptiveCorrectionConfig->rangePFL_T = v442;
  *&p_adaptiveCorrectionConfig->rangeOCxT = v444;
  *&p_adaptiveCorrectionConfig->rangeOCyT = v446;
  v393 = v451;
  *&v429->_adaptiveCorrectionConfig.errorVal_LessThanExtremeMacro = v450;
  *&v429->_adaptiveCorrectionConfig.runAnalyticalPreconditioning = v393;
  *&v429->_adaptiveCorrectionConfig.keypointOutliersPercentile = v452;
  v429->_adaptiveCorrectionConfig.temporalInitializationFactor = temporalInitializationFactor;
  v394 = v449;
  *&v429->_adaptiveCorrectionConfig.intermediateMacroDistMM = v448;
  *&v429->_adaptiveCorrectionConfig.minPointsForAdjustment = v394;
  v429->_adaptiveCorrectionConfig.scaleTuningWithDigitalZoomByFactor = scaleTuningWithDigitalZoomByFactor;
  memcpy(&v429->_adaptiveCorrectionConfig.overrideConfigPass1, __dst, 0x168uLL);

LABEL_70:
  v395 = v402;
LABEL_71:

  return v395;
}

- (int)computeInitialCalibration
{
  v9 = objc_msgSend_objectForKeyedSubscript_(self->_staticParametersByPortType, a2, self->_portTypeName[1], v2, v3, v4, v5, v6, v7);
  v17 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"CameraViewMatrix", v11, v12, v13, v14, v15, v16);
  v18 = v17;
  v27 = objc_msgSend_bytes(v18, v19, v20, v21, v22, v23, v24, v25, v26);

  v178 = self;
  v35 = objc_msgSend_objectForKeyedSubscript_(self->_staticParametersByPortType, v28, self->_portTypeName[0], v29, v30, v31, v32, v33, v34);
  v43 = objc_msgSend_objectForKeyedSubscript_(v35, v36, @"CameraViewMatrix", v37, v38, v39, v40, v41, v42);
  v44 = v43;
  v53 = objc_msgSend_bytes(v44, v45, v46, v47, v48, v49, v50, v51, v52);

  if (v27)
  {
    if (v53)
    {
      portTypeName = self->_portTypeName;
      *v59.i64 = sub_295750D8C(v27, v54, v55, v56, v57, v58);
      v171 = v59;
      v173 = v60;
      v169 = v61;
      v175 = v62;
      *v70.i64 = sub_295750D8C(v53, *v59.i64, *v60.i64, *v61.i64, *v62.i64, v63);
      v72 = 0;
      v180 = 0u;
      v181 = 0u;
      v74 = vzip1q_s32(v70, v73);
      v182 = 0u;
      v183 = 0u;
      v184[0] = vzip1q_s32(v74, v75);
      v184[1] = vzip2q_s32(v74, vdupq_lane_s32(*v75.i8, 1));
      v184[2] = vzip1q_s32(vzip2q_s32(v70, v73), vdupq_laneq_s32(v75, 2));
      time = 0u;
      time_16 = 0u;
      v187 = 0u;
      do
      {
        *(&time + v72 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v171, COERCE_FLOAT(v184[v72])), v173, *&v184[v72], 1), v169, v184[v72], 2);
        ++v72;
      }

      while (v72 != 3);
      v76 = 0;
      DWORD2(v180) = time.i32[2];
      DWORD2(v181) = time_16.i32[2];
      v77 = vsubq_f32(v175, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(time, v71.f32[0]), time_16, *v71.f32, 1), v187, v71, 2));
      *&v180 = time.i64[0];
      *&v181 = time_16.i64[0];
      DWORD2(v182) = v187.i32[2];
      DWORD2(v183) = v77.i32[2];
      *&v182 = v187.i64[0];
      *&v183 = v77.i64[0];
      v78 = self->_pixelBufferDimensions[0];
      *self->_initialCalibration.focalLengthPix = 0u;
      p_initialCalibration = &self->_initialCalibration;
      *&self->_initialCalibration.canonicalDisparityScale = 0u;
      *&self->_initialCalibration.calibrationDimensions[1] = 0u;
      *self->_initialCalibration.opticalCenterX = 0u;
      *self->_initialCalibration.opticalCenterY = 0u;
      *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[2] = 0u;
      *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[4] = 0u;
      *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[6] = 0u;
      *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[8] = 0u;
      *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[10] = 0u;
      self->_initialCalibration.pixelSize_um[1] = 0.0;
      *self->_initialCalibration.extrinRotRefefenceToAuxiliary = 0u;
      extrinRotRefefenceToAuxiliary = self->_initialCalibration.extrinRotRefefenceToAuxiliary;
      v80.i64[0] = v78.width;
      v80.i64[1] = v78.height;
      pixelBufferDimensions = self->_pixelBufferDimensions;
      *self->_initialCalibration.calibrationDimensions = vcvtq_f64_s64(v80);
      do
      {
        for (i = 0; i != 4; ++i)
        {
          extrinRotRefefenceToAuxiliary[i] = *((&v180 + i) & 0xFFFFFFFFFFFFFFF3 | (4 * (v76 & 3)));
        }

        ++v76;
        extrinRotRefefenceToAuxiliary += 4;
      }

      while (v76 != 3);
      v82 = 0;
      rawSensorSize = self->_rawSensorSize;
      pixelBufferScalingFactor = self->_pixelBufferScalingFactor;
      opticalCenter = self->_opticalCenter;
      opticalCenterX = self->_initialCalibration.opticalCenterX;
      opticalCenterY = self->_initialCalibration.opticalCenterY;
      pixelSize_um = self->_initialCalibration.pixelSize_um;
      focalLength = self->_focalLength;
      metadata = self->_metadata;
      v166 = *MEMORY[0x29EDC0560];
      v165 = *MEMORY[0x29EDBFFA0];
      v164 = *(MEMORY[0x29EDB9398] + 12);
      v163 = *(MEMORY[0x29EDB9398] + 16);
      v161 = self->_initialCalibration.opticalCenterY;
      v162 = *MEMORY[0x29EDC04A8];
      for (j = 1; ; j = 0)
      {
        v88 = j;
        p_width = &rawSensorSize[v82].width;
        v90 = (*p_width + -1.0) * 0.5;
        v91 = (p_width[1] + -1.0) * 0.5;
        v92 = &pixelBufferDimensions[v82];
        p_x = &opticalCenter[v82].x;
        v94 = *&pixelBufferScalingFactor[8 * v82];
        v95 = p_x[1];
        v96 = (v92[1] + -1.0) * 0.5;
        opticalCenterX[v82] = (*v92 + -1.0) * 0.5 + (*p_x - v90) * *&v94;
        v97 = v96 + (v95 - v91) * *(&v94 + 1);
        opticalCenterY[v82] = v97;
        v98 = objc_msgSend_objectForKeyedSubscript_(v178->_staticParametersByPortType, v64, portTypeName[v82], v65, v66, v67, v68, v69, *&v97);
        v106 = objc_msgSend_objectForKeyedSubscript_(v98, v99, @"pixelSizeMicrometers", v100, v101, v102, v103, v104, v105);
        objc_msgSend_floatValue(v106, v107, v108, v109, v110, v111, v112, v113, v114);
        v116 = v115;

        v117 = (v116 / (vaddv_f32(*&pixelBufferScalingFactor[8 * v82]) * 0.5));
        pixelSize_um[v82] = v117;
        v118 = focalLength[v82] / v117;
        p_initialCalibration->focalLengthPix[v82] = v118;
        v125 = objc_msgSend_objectForKeyedSubscript_(metadata[v82], v119, v166, v120, v121, v122, v123, v124, *&v118);

        if (v125)
        {
          v127 = opticalCenterX;
          v128 = objc_msgSend_objectForKeyedSubscript_(metadata[v82], v64, v165, v65, v66, v67, v68, v69, v126);
          v136 = v128;
          v179 = 0;
          *&v184[0] = *MEMORY[0x29EDB9398];
          DWORD2(v184[0]) = *(MEMORY[0x29EDB9398] + 8);
          v137 = v164;
          v138 = v163;
          if (v128)
          {
            CMTimeMakeFromDictionary(&time, v128);
            *&v184[0] = time.i64[0];
            v137 = time.i32[3];
            DWORD2(v184[0]) = time.i32[2];
            v138 = time_16.i64[0];
          }

          if ((v137 & 1) == 0)
          {
            sub_295768DE0(v184, &v179, v136, &time);
            return time.i32[0];
          }

          v139 = objc_msgSend_objectForKeyedSubscript_(metadata[v82], v129, v162, v130, v131, v132, v133, v134, v135);
          v148 = v139;
          if (v139)
          {
            objc_msgSend_floatValue(v139, v140, v141, v142, v143, v144, v145, v146, v147);
            v150 = v149;
          }

          else
          {
            v150 = 1.0;
          }

          v151 = pixelSize_um;
          v152 = pixelSize_um[v82];
          v153 = metadata[v82];
          time.i64[0] = *&v184[0];
          time.i64[1] = __PAIR64__(v137, DWORD2(v184[0]));
          time_16.i64[0] = v138;
          CMTimeGetSeconds(&time);
          v154 = FigMotionComputeAverageSpherePosition();
          if (v154)
          {
            v159 = v154;
            fig_log_get_emitter();
            FigDebugAssert3();

            return v159;
          }

          v155 = v152;
          v156 = v150 / v155;
          v157 = *(&v179 + 1);
          opticalCenterX = v127;
          v127[v82] = v127[v82] + (v156 * *&v179);
          opticalCenterY = v161;
          v161[v82] = v161[v82] + (v156 * v157);
          v158 = metadata[v82];
          metadata[v82] = 0;

          pixelSize_um = v151;
        }

        v82 = 1;
        if ((v88 & 1) == 0)
        {
          return 0;
        }
      }
    }

    sub_295768EB8(&time);
  }

  else
  {
    sub_295768F64(&time);
  }

  return time.i32[0];
}

- (int)applyCurrentTemporalState
{
  self->_correctedCalibration.pixelSize_um[1] = 0.0;
  *&self->_correctedCalibration.calibrationDimensions[1] = 0u;
  *&self->_correctedCalibration.canonicalDisparityScale = 0u;
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[10] = 0u;
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[8] = 0u;
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[6] = 0u;
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[4] = 0u;
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[2] = 0u;
  *self->_correctedCalibration.extrinRotRefefenceToAuxiliary = 0u;
  *self->_correctedCalibration.opticalCenterY = 0u;
  *self->_correctedCalibration.opticalCenterX = 0u;
  *self->_correctedCalibration.focalLengthPix = 0u;
  *&self->_distModels[0].pixelSizeMM = 0u;
  *&self->_distModels[0].opticalCenterX = 0u;
  *self->_distModels[0].polyBase = 0u;
  *&self->_distModels[0].polyBase[2] = 0u;
  *&self->_distModels[0].polyBase[4] = 0u;
  *&self->_distModels[0].polyBase[6] = 0u;
  *self->_distModels[0].polyDynamic = 0u;
  *&self->_distModels[0].polyDynamic[2] = 0u;
  *&self->_distModels[0].polyDynamic[4] = 0u;
  *&self->_distModels[0].polyDynamic[6] = 0u;
  *&self->_distModels[1].polyDynamic[4] = 0u;
  *&self->_distModels[1].polyDynamic[6] = 0u;
  *self->_distModels[1].polyDynamic = 0u;
  *&self->_distModels[1].polyDynamic[2] = 0u;
  *&self->_distModels[1].polyBase[4] = 0u;
  *&self->_distModels[1].polyBase[6] = 0u;
  *self->_distModels[1].polyBase = 0u;
  *&self->_distModels[1].polyBase[2] = 0u;
  *&self->_distModels[1].pixelSizeMM = 0u;
  *&self->_distModels[1].opticalCenterX = 0u;
  *&self->_undistModels[0].pixelSizeMM = 0u;
  *&self->_undistModels[0].opticalCenterX = 0u;
  *self->_undistModels[0].polyBase = 0u;
  *&self->_undistModels[0].polyBase[2] = 0u;
  *&self->_undistModels[0].polyBase[4] = 0u;
  *&self->_undistModels[0].polyBase[6] = 0u;
  *self->_undistModels[0].polyDynamic = 0u;
  *&self->_undistModels[0].polyDynamic[2] = 0u;
  *&self->_undistModels[0].polyDynamic[4] = 0u;
  *&self->_undistModels[0].polyDynamic[6] = 0u;
  *&self->_undistModels[1].polyDynamic[4] = 0u;
  *&self->_undistModels[1].polyDynamic[6] = 0u;
  *self->_undistModels[1].polyDynamic = 0u;
  *&self->_undistModels[1].polyDynamic[2] = 0u;
  *&self->_undistModels[1].polyBase[4] = 0u;
  *&self->_undistModels[1].polyBase[6] = 0u;
  *self->_undistModels[1].polyBase = 0u;
  *&self->_undistModels[1].polyBase[2] = 0u;
  *&self->_undistModels[1].pixelSizeMM = 0u;
  *&self->_undistModels[1].opticalCenterX = 0u;
  if ((objc_msgSend__computeAdcDistortionModels(self, a2, v2, v3, v4, v5, v6, v7, 0.0) & 1) == 0)
  {
    sub_295769010();
    return 0;
  }

  v9 = *&self->_initialCalibration.canonicalDisparityScale;
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[10] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[10];
  *&self->_correctedCalibration.canonicalDisparityScale = v9;
  *&self->_correctedCalibration.calibrationDimensions[1] = *&self->_initialCalibration.calibrationDimensions[1];
  self->_correctedCalibration.pixelSize_um[1] = self->_initialCalibration.pixelSize_um[1];
  v10 = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[4];
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[2] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[2];
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[4] = v10;
  v11 = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[8];
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[6] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[6];
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[8] = v11;
  v12 = *self->_initialCalibration.opticalCenterX;
  *self->_correctedCalibration.focalLengthPix = *self->_initialCalibration.focalLengthPix;
  *self->_correctedCalibration.opticalCenterX = v12;
  v13 = *self->_initialCalibration.extrinRotRefefenceToAuxiliary;
  *self->_correctedCalibration.opticalCenterY = *self->_initialCalibration.opticalCenterY;
  *self->_correctedCalibration.extrinRotRefefenceToAuxiliary = v13;
  if (sub_29575F9DC(self->_adc, &self->_adaptiveCorrectionConfig))
  {
    sub_295769084();
    return 0;
  }

  if (sub_29576096C(self->_adc, self->_undistModels, &self->_undistModels[1], self->_correctedCalibration.focalLengthPix, 1.0))
  {
    sub_2957690FC();
    return 3;
  }

  else
  {
    sub_29575FA1C(self->_adc, &v47);
    v15 = *&self->_distModels[0].polyDynamic[2];
    v53 = *self->_distModels[0].polyDynamic;
    v14 = v53;
    v54 = v15;
    v16 = *&self->_distModels[0].polyDynamic[6];
    v55 = *&self->_distModels[0].polyDynamic[4];
    v56 = v16;
    v18 = *&self->_distModels[0].polyBase[2];
    v49 = *self->_distModels[0].polyBase;
    v17 = v49;
    v50 = v18;
    v19 = *&self->_distModels[0].polyBase[6];
    v51 = *&self->_distModels[0].polyBase[4];
    v52 = v19;
    v20 = *&self->_distModels[0].opticalCenterX;
    v47 = *&self->_distModels[0].pixelSizeMM;
    v48 = v20;
    v21 = *&self->_undistModels[0].opticalCenterX;
    *&self->_distModels[0].pixelSizeMM = *&self->_undistModels[0].pixelSizeMM;
    *&self->_distModels[0].opticalCenterX = v21;
    v22 = v50;
    v23 = v52;
    v24 = v54;
    *&self->_distModels[0].polyBase[4] = v51;
    *&self->_distModels[0].polyBase[6] = v23;
    *self->_distModels[0].polyBase = v17;
    *&self->_distModels[0].polyBase[2] = v22;
    *self->_distModels[0].polyDynamic = v14;
    *&self->_distModels[0].polyDynamic[2] = v24;
    v25 = v56;
    *&self->_distModels[0].polyDynamic[4] = v55;
    *&self->_distModels[0].polyDynamic[6] = v25;
    v27 = *&self->_distModels[1].polyDynamic[2];
    v53 = *self->_distModels[1].polyDynamic;
    v26 = v53;
    v54 = v27;
    v28 = *&self->_distModels[1].polyDynamic[6];
    v55 = *&self->_distModels[1].polyDynamic[4];
    v56 = v28;
    v30 = *&self->_distModels[1].polyBase[2];
    v49 = *self->_distModels[1].polyBase;
    v29 = v49;
    v50 = v30;
    v31 = *&self->_distModels[1].polyBase[6];
    v51 = *&self->_distModels[1].polyBase[4];
    v52 = v31;
    v32 = *&self->_distModels[1].opticalCenterX;
    v47 = *&self->_distModels[1].pixelSizeMM;
    v48 = v32;
    v33 = *&self->_undistModels[1].opticalCenterX;
    *&self->_distModels[1].pixelSizeMM = *&self->_undistModels[1].pixelSizeMM;
    *&self->_distModels[1].opticalCenterX = v33;
    v34 = v50;
    v35 = v52;
    v36 = v54;
    *&self->_distModels[1].polyBase[4] = v51;
    *&self->_distModels[1].polyBase[6] = v35;
    *self->_distModels[1].polyBase = v29;
    *&self->_distModels[1].polyBase[2] = v34;
    *self->_distModels[1].polyDynamic = v26;
    *&self->_distModels[1].polyDynamic[2] = v36;
    v37 = v56;
    *&self->_distModels[1].polyDynamic[4] = v55;
    *&self->_distModels[1].polyDynamic[6] = v37;
    objc_msgSend__computeCanonicalDisparityScaleFactor(self, v38, v39, v40, v41, v42, v43, v44, *&v37, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
    result = 0;
    self->_correctedCalibration.canonicalDisparityScale = v46;
  }

  return result;
}

- (int)computeCalibration
{
  if (self->_distortionCorrectionEnabled)
  {
    self->_correctedCalibration.pixelSize_um[1] = 0.0;
    *&self->_correctedCalibration.calibrationDimensions[1] = 0u;
    *&self->_correctedCalibration.canonicalDisparityScale = 0u;
    *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[10] = 0u;
    *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[8] = 0u;
    *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[6] = 0u;
    *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[4] = 0u;
    *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[2] = 0u;
    *self->_correctedCalibration.extrinRotRefefenceToAuxiliary = 0u;
    *self->_correctedCalibration.opticalCenterY = 0u;
    *self->_correctedCalibration.opticalCenterX = 0u;
    *self->_correctedCalibration.focalLengthPix = 0u;
    *&self->_distModels[0].pixelSizeMM = 0u;
    *&self->_distModels[0].opticalCenterX = 0u;
    *self->_distModels[0].polyBase = 0u;
    *&self->_distModels[0].polyBase[2] = 0u;
    *&self->_distModels[0].polyBase[4] = 0u;
    *&self->_distModels[0].polyBase[6] = 0u;
    *self->_distModels[0].polyDynamic = 0u;
    *&self->_distModels[0].polyDynamic[2] = 0u;
    *&self->_distModels[0].polyDynamic[4] = 0u;
    *&self->_distModels[0].polyDynamic[6] = 0u;
    *&self->_distModels[1].polyDynamic[4] = 0u;
    *&self->_distModels[1].polyDynamic[6] = 0u;
    *self->_distModels[1].polyDynamic = 0u;
    *&self->_distModels[1].polyDynamic[2] = 0u;
    *&self->_distModels[1].polyBase[4] = 0u;
    *&self->_distModels[1].polyBase[6] = 0u;
    *self->_distModels[1].polyBase = 0u;
    *&self->_distModels[1].polyBase[2] = 0u;
    *&self->_distModels[1].pixelSizeMM = 0u;
    *&self->_distModels[1].opticalCenterX = 0u;
    *&self->_undistModels[0].pixelSizeMM = 0u;
    *&self->_undistModels[0].opticalCenterX = 0u;
    *self->_undistModels[0].polyBase = 0u;
    *&self->_undistModels[0].polyBase[2] = 0u;
    *&self->_undistModels[0].polyBase[4] = 0u;
    *&self->_undistModels[0].polyBase[6] = 0u;
    *self->_undistModels[0].polyDynamic = 0u;
    *&self->_undistModels[0].polyDynamic[2] = 0u;
    *&self->_undistModels[0].polyDynamic[4] = 0u;
    *&self->_undistModels[0].polyDynamic[6] = 0u;
    *&self->_undistModels[1].polyDynamic[4] = 0u;
    *&self->_undistModels[1].polyDynamic[6] = 0u;
    *self->_undistModels[1].polyDynamic = 0u;
    *&self->_undistModels[1].polyDynamic[2] = 0u;
    *&self->_undistModels[1].polyBase[4] = 0u;
    *&self->_undistModels[1].polyBase[6] = 0u;
    *self->_undistModels[1].polyBase = 0u;
    *&self->_undistModels[1].polyBase[2] = 0u;
    *&self->_undistModels[1].pixelSizeMM = 0u;
    *&self->_undistModels[1].opticalCenterX = 0u;
    if (objc_msgSend__computeAdcDistortionModels(self, a2, v2, v3, v4, v5, v6, v7, 0.0))
    {
      v9 = *&self->_initialCalibration.canonicalDisparityScale;
      *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[10] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[10];
      *&self->_correctedCalibration.canonicalDisparityScale = v9;
      *&self->_correctedCalibration.calibrationDimensions[1] = *&self->_initialCalibration.calibrationDimensions[1];
      self->_correctedCalibration.pixelSize_um[1] = self->_initialCalibration.pixelSize_um[1];
      v10 = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[4];
      *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[2] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[2];
      *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[4] = v10;
      v11 = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[8];
      *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[6] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[6];
      *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[8] = v11;
      v12 = *self->_initialCalibration.opticalCenterX;
      *self->_correctedCalibration.focalLengthPix = *self->_initialCalibration.focalLengthPix;
      *self->_correctedCalibration.opticalCenterX = v12;
      v13 = *self->_initialCalibration.extrinRotRefefenceToAuxiliary;
      *self->_correctedCalibration.opticalCenterY = *self->_initialCalibration.opticalCenterY;
      *self->_correctedCalibration.extrinRotRefefenceToAuxiliary = v13;
      if (!sub_29575F9DC(self->_adc, &self->_adaptiveCorrectionConfig))
      {
        keypointsCount = self->_keypointsCount;
        if (!keypointsCount)
        {
          bzero(__dst, 0x743uLL);
          v29 = 0;
          v30 = 0;
          goto LABEL_14;
        }

        adc = self->_adc;
        v16 = self->_adaptiveCorrectionKeypointsDistorted[0];
        v17 = self->_adaptiveCorrectionKeypointsDistorted[1];
        undistModels = self->_undistModels;
        v19 = &self->_undistModels[1];
        p_correctedCalibration = &self->_correctedCalibration;
        if (self->_temporalCorrectionEnabled)
        {
          v21 = sub_29575FA78(adc, v16, v17, keypointsCount, undistModels, v19, p_correctedCalibration);
        }

        else
        {
          v21 = sub_295760D0C(adc, v16, v17, keypointsCount, undistModels, v19, p_correctedCalibration);
        }

        if (!v21)
        {
          sub_29575FA1C(self->_adc, v65);
          v29 = *v65;
          v30 = v65[4];
          memcpy(__dst, &v65[5], sizeof(__dst));
LABEL_14:
          v32 = *&self->_distModels[0].polyDynamic[2];
          *&v65[96] = *self->_distModels[0].polyDynamic;
          v31 = *&v65[96];
          *&v65[112] = v32;
          v33 = *&self->_distModels[0].polyDynamic[6];
          *&v65[128] = *&self->_distModels[0].polyDynamic[4];
          *&v65[144] = v33;
          v35 = *&self->_distModels[0].polyBase[2];
          *&v65[32] = *self->_distModels[0].polyBase;
          v34 = *&v65[32];
          *&v65[48] = v35;
          v36 = *&self->_distModels[0].polyBase[6];
          *&v65[64] = *&self->_distModels[0].polyBase[4];
          *&v65[80] = v36;
          v37 = *&self->_distModels[0].opticalCenterX;
          *v65 = *&self->_distModels[0].pixelSizeMM;
          *&v65[16] = v37;
          v38 = *&self->_undistModels[0].opticalCenterX;
          *&self->_distModels[0].pixelSizeMM = *&self->_undistModels[0].pixelSizeMM;
          *&self->_distModels[0].opticalCenterX = v38;
          v39 = *&v65[48];
          v40 = *&v65[80];
          v41 = *&v65[112];
          *&self->_distModels[0].polyBase[4] = *&v65[64];
          *&self->_distModels[0].polyBase[6] = v40;
          *self->_distModels[0].polyBase = v34;
          *&self->_distModels[0].polyBase[2] = v39;
          *self->_distModels[0].polyDynamic = v31;
          *&self->_distModels[0].polyDynamic[2] = v41;
          v42 = *&v65[144];
          *&self->_distModels[0].polyDynamic[4] = *&v65[128];
          *&self->_distModels[0].polyDynamic[6] = v42;
          v44 = *&self->_distModels[1].polyDynamic[2];
          *&v65[96] = *self->_distModels[1].polyDynamic;
          v43 = *&v65[96];
          *&v65[112] = v44;
          v45 = *&self->_distModels[1].polyDynamic[6];
          *&v65[128] = *&self->_distModels[1].polyDynamic[4];
          *&v65[144] = v45;
          v47 = *&self->_distModels[1].polyBase[2];
          *&v65[32] = *self->_distModels[1].polyBase;
          v46 = *&v65[32];
          *&v65[48] = v47;
          v48 = *&self->_distModels[1].polyBase[6];
          *&v65[64] = *&self->_distModels[1].polyBase[4];
          *&v65[80] = v48;
          v49 = *&self->_distModels[1].opticalCenterX;
          *v65 = *&self->_distModels[1].pixelSizeMM;
          *&v65[16] = v49;
          v50 = *&self->_undistModels[1].opticalCenterX;
          *&self->_distModels[1].pixelSizeMM = *&self->_undistModels[1].pixelSizeMM;
          *&self->_distModels[1].opticalCenterX = v50;
          v51 = *&v65[48];
          v52 = *&v65[80];
          v53 = *&v65[112];
          *&self->_distModels[1].polyBase[4] = *&v65[64];
          *&self->_distModels[1].polyBase[6] = v52;
          *self->_distModels[1].polyBase = v46;
          *&self->_distModels[1].polyBase[2] = v51;
          *self->_distModels[1].polyDynamic = v43;
          *&self->_distModels[1].polyDynamic[2] = v53;
          v54 = *&v65[144];
          *&self->_distModels[1].polyDynamic[4] = *&v65[128];
          *&self->_distModels[1].polyDynamic[6] = v54;
          objc_msgSend__computeCanonicalDisparityScaleFactor(self, v22, v23, v24, v25, v26, v27, v28, *&v54, *v65, *&v65[16], *&v65[32], *&v65[48], *&v65[64], *&v65[80], *&v65[96], *&v65[112], *&v65[128], *&v65[144]);
          self->_correctedCalibration.canonicalDisparityScale = v55;
          *v65 = v29;
          v65[4] = v30;
          memcpy(&v65[5], __dst, 0x743uLL);
          v63 = objc_msgSend__checkADCStatus_(self, v56, v65, v57, v58, v59, v60, v61, v62);
          if (v63)
          {
            sub_2957692E0();
          }

          return v63;
        }

        sub_295769264();
        return 3;
      }

      sub_2957691EC();
    }

    else
    {
      sub_295769178();
    }

    return 0;
  }

  return (MEMORY[0x2A1C70FE8])(self, sel__computeCalibrationWithoutDistortion);
}

- (float)referenceMagnification
{
  v2 = self->_initialCalibration.focalLengthPix[1];
  result = 0.0;
  if (v2 != 0.0)
  {
    return self->_initialCalibration.focalLengthPix[0] / v2;
  }

  return result;
}

- (void)setKeypointsForReference:(double *)a3 auxiliary:(double *)a4 keypointCount:(unsigned int)a5
{
  self->_adaptiveCorrectionKeypointsDistorted[0] = a3;
  self->_adaptiveCorrectionKeypointsDistorted[1] = a4;
  self->_keypointsCount = a5;
}

- (DistortionModel)distModelFor:(SEL)a3
{
  v4 = &self[a4];
  v5 = *&v4[2].polyBase[6];
  *retstr->polyDynamic = *&v4[2].polyBase[4];
  *&retstr->polyDynamic[2] = v5;
  v6 = *&v4[2].polyDynamic[2];
  *&retstr->polyDynamic[4] = *v4[2].polyDynamic;
  *&retstr->polyDynamic[6] = v6;
  v7 = *&v4[2].opticalCenterX;
  *retstr->polyBase = *&v4[2].pixelSizeMM;
  *&retstr->polyBase[2] = v7;
  v8 = *&v4[2].polyBase[2];
  *&retstr->polyBase[4] = *v4[2].polyBase;
  *&retstr->polyBase[6] = v8;
  v9 = *&v4[1].polyDynamic[6];
  *&retstr->pixelSizeMM = *&v4[1].polyDynamic[4];
  *&retstr->opticalCenterX = v9;
  return self;
}

- (DistortionModel)undistModelFor:(SEL)a3
{
  v4 = &self[a4];
  v5 = *&v4[4].polyBase[6];
  *retstr->polyDynamic = *&v4[4].polyBase[4];
  *&retstr->polyDynamic[2] = v5;
  v6 = *&v4[4].polyDynamic[2];
  *&retstr->polyDynamic[4] = *v4[4].polyDynamic;
  *&retstr->polyDynamic[6] = v6;
  v7 = *&v4[4].opticalCenterX;
  *retstr->polyBase = *&v4[4].pixelSizeMM;
  *&retstr->polyBase[2] = v7;
  v8 = *&v4[4].polyBase[2];
  *&retstr->polyBase[4] = *v4[4].polyBase;
  *&retstr->polyBase[6] = v8;
  v9 = *&v4[3].polyDynamic[6];
  *&retstr->pixelSizeMM = *&v4[3].polyDynamic[4];
  *&retstr->opticalCenterX = v9;
  return self;
}

- (BOOL)_computeAdcDistortionModels
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  pixelSize_um = self->_initialCalibration.pixelSize_um;
  distortionOpticalCenter = self->_distortionOpticalCenter;
  distModels = self->_distModels;
  ddf = self->_ddf;
  undistModels = self->_undistModels;
  portTypeName = self->_portTypeName;
  opticalCenterX = self->_initialCalibration.opticalCenterX;
  rawSensorSize = self->_rawSensorSize;
  opticalCenterY = self->_initialCalibration.opticalCenterY;
  pixelBufferScalingFactor = self->_pixelBufferScalingFactor;
  pixelBufferDimensions = self->_pixelBufferDimensions;
  v117 = *MEMORY[0x29EDC0328];
  v116 = *MEMORY[0x29EDC0330];
  v11 = 1;
  __asm
  {
    FMOV            V1.2D, #-1.0
    FMOV            V0.2D, #0.5
  }

  v109 = _Q0;
  v110 = _Q1;
  while (1)
  {
    v18 = v11;
    v19 = &distortionOpticalCenter[v7];
    v20.f64[0] = v19->x;
    if (v19->x == 0.0 || (y = v19->y, y == 0.0) || (v22 = &rawSensorSize[v7], v22->f64[0] <= 0.0) || v22->f64[1] <= 0.0)
    {
      v25 = opticalCenterY[v7];
      v26 = &distModels[v7];
      v26->opticalCenterX = opticalCenterX[v7];
      v26->opticalCenterY = v25;
    }

    else
    {
      v23 = pixelBufferDimensions[v7];
      v24.i64[0] = v23.width;
      v24.i64[1] = v23.height;
      v20.f64[1] = y;
      *&distModels[v7].opticalCenterX = vmlaq_f64(vmulq_f64(vaddq_f64(vcvtq_f64_s64(v24), v110), v109), vcvtq_f64_f32(*&pixelBufferScalingFactor[8 * v7]), vsubq_f64(v20, vmulq_f64(vaddq_f64(*v22, v110), v109)));
    }

    v27 = pixelSize_um[v7] / 1000.0;
    v28 = &distModels[v7];
    v29 = ddf[v7] / v27;
    v28->pixelSizeMM = v27;
    v28->focalLengthPix = v29;
    v30 = *&v28->polyDynamic[2];
    p_pixelSizeMM = &undistModels[v7].pixelSizeMM;
    p_pixelSizeMM[6] = *v28->polyDynamic;
    p_pixelSizeMM[7] = v30;
    v32 = *&v28->polyDynamic[6];
    p_pixelSizeMM[8] = *&v28->polyDynamic[4];
    p_pixelSizeMM[9] = v32;
    v33 = *&v28->polyBase[2];
    p_pixelSizeMM[2] = *v28->polyBase;
    p_pixelSizeMM[3] = v33;
    v34 = *&v28->polyBase[6];
    p_pixelSizeMM[4] = *&v28->polyBase[4];
    p_pixelSizeMM[5] = v34;
    v35 = *&v28->opticalCenterX;
    *p_pixelSizeMM = *&v28->pixelSizeMM;
    p_pixelSizeMM[1] = v35;
    v36 = objc_msgSend_objectForKeyedSubscript_(self->_staticParametersByPortType, a2, portTypeName[v7], v2, v3, v4, v5, v6, *&v35, *&v109, *&v110, pixelBufferScalingFactor, pixelBufferDimensions);
    v44 = objc_msgSend_objectForKeyedSubscript_(v36, v37, @"gdcCoefficients", v38, v39, v40, v41, v42, v43);
    v52 = objc_msgSend_objectForKeyedSubscript_(v44, v45, v117, v46, v47, v48, v49, v50, v51);

    if (!v52)
    {
      sub_29576957C(v9);
      goto LABEL_24;
    }

    v53 = v52;
    v62 = objc_msgSend_bytes(v53, v54, v55, v56, v57, v58, v59, v60, v61);
    if (!v62)
    {
      sub_2957694EC(v9);
      goto LABEL_24;
    }

    v70 = v62;
    v71 = distModels;
    v72 = objc_msgSend_objectForKeyedSubscript_(self->_staticParametersByPortType, v63, portTypeName[v7], v64, v65, v66, v67, v68, v69);
    v80 = objc_msgSend_objectForKeyedSubscript_(v72, v73, @"gdcCoefficients", v74, v75, v76, v77, v78, v79);
    v88 = objc_msgSend_objectForKeyedSubscript_(v80, v81, v116, v82, v83, v84, v85, v86, v87);

    if (!v88)
    {
      sub_295769474();
      goto LABEL_24;
    }

    v89 = v88;
    v9 = v88;
    v98 = objc_msgSend_bytes(v89, v90, v91, v92, v93, v94, v95, v96, v97);
    if (!v98)
    {
      sub_2957693E4(v88);
      goto LABEL_24;
    }

    v8 = v52;
    v99 = (v70 + 32);
    v100 = (v98 + 32);
    polyDynamic = v28->polyDynamic;
    v102 = 1;
    v103 = 8;
    do
    {
      polyDynamic[32] = *(v99 - 8);
      v104 = *(v100 - 8);
      polyDynamic[40] = v104;
      v102 &= v104 == 0.0;
      v105 = *v99++;
      *(polyDynamic - 8) = v105;
      v106 = *v100++;
      *polyDynamic++ = v106;
      --v103;
    }

    while (v103);
    distModels = v71;
    if ((v102 & 1) == 0 && ddf[v7] <= 0.0)
    {
      break;
    }

    v11 = 0;
    v7 = 1;
    if ((v18 & 1) == 0)
    {

      v107 = 1;
      goto LABEL_18;
    }
  }

  sub_295769354(v88);
LABEL_24:
  v107 = 0;
LABEL_18:

  return v107;
}

- (void)setReferenceBufferDimensions:(id)a3 auxillaryBufferDimensions:(id)a4 normalizedReferenceFinalCropRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  var0 = a3.var0;
  var1 = a3.var1;
  self->_pixelBufferDimensions[0] = a3;
  self->_pixelBufferDimensions[1] = a4;
  IsNull = CGRectIsNull(a5);
  v13 = 1.0;
  v14 = 0.0;
  if (IsNull)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = x;
  }

  if (IsNull)
  {
    v16 = 1.0;
  }

  else
  {
    v14 = y;
    v16 = width;
  }

  if (!IsNull)
  {
    v13 = height;
  }

  self->_referenceFinalCropRect.origin.x = v15 * var0;
  self->_referenceFinalCropRect.origin.y = v14 * var1;
  self->_referenceFinalCropRect.size.width = v16 * var0;
  self->_referenceFinalCropRect.size.height = v13 * var1;
}

- (int)_checkADCStatus:(AdaptiveCorrectionStatus *)a3
{
  if (!a3->var1)
  {
    sub_29576960C();
    return 1;
  }

  if (!a3->var4)
  {
    sub_295769684();
    return 1;
  }

  if (!a3->var9)
  {
    sub_2957696FC();
    return 2;
  }

  if (!a3->var13)
  {
    sub_295769774();
    return 1;
  }

  if (!a3->var19)
  {
    sub_2957697EC();
    return 2;
  }

  if (!a3->var25)
  {
    sub_295769864();
    return 1;
  }

  if (!a3->var28)
  {
    sub_2957698DC();
    return 2;
  }

  return 0;
}

- (int)_allocateResourcesForMaxNumOfTransposedPoints:(unsigned int)a3
{
  v4 = 16 * a3;
  v5 = malloc_type_malloc(v4, 0x100004000313F17uLL);
  self->_transposedKeypoints.xyPointsTeleTransposed = v5;
  if (v5)
  {
    v6 = malloc_type_malloc(v4, 0x100004000313F17uLL);
    self->_transposedKeypoints.xyPointsWideTransposed = v6;
    if (v6)
    {
      return 0;
    }

    sub_295769954();
  }

  else
  {
    sub_2957699C8();
  }

  return -12786;
}

- (void)_releaseResourcesForTransformedPoints
{
  xyPointsTeleTransposed = self->_transposedKeypoints.xyPointsTeleTransposed;
  if (xyPointsTeleTransposed)
  {
    self->_transposedKeypoints.xyPointsTeleTransposed = 0;
    free(xyPointsTeleTransposed);
  }

  xyPointsWideTransposed = self->_transposedKeypoints.xyPointsWideTransposed;
  if (xyPointsWideTransposed)
  {
    self->_transposedKeypoints.xyPointsWideTransposed = 0;

    free(xyPointsWideTransposed);
  }
}

- (int)_computeCalibrationWithoutDistortion
{
  v3 = *&self->_initialCalibration.canonicalDisparityScale;
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[10] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[10];
  *&self->_correctedCalibration.canonicalDisparityScale = v3;
  *&self->_correctedCalibration.calibrationDimensions[1] = *&self->_initialCalibration.calibrationDimensions[1];
  v4 = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[4];
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[2] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[2];
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[4] = v4;
  v5 = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[8];
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[6] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[6];
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[8] = v5;
  v6 = *self->_initialCalibration.opticalCenterX;
  *self->_correctedCalibration.focalLengthPix = *self->_initialCalibration.focalLengthPix;
  *self->_correctedCalibration.opticalCenterX = v6;
  v7 = *self->_initialCalibration.extrinRotRefefenceToAuxiliary;
  *self->_correctedCalibration.opticalCenterY = *self->_initialCalibration.opticalCenterY;
  memset(v44, 0, 512);
  v43 = 0;
  v41 = 0u;
  memset(v42, 0, sizeof(v42));
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  self->_correctedCalibration.pixelSize_um[1] = self->_initialCalibration.pixelSize_um[1];
  *self->_correctedCalibration.extrinRotRefefenceToAuxiliary = v7;
  if (self->_keypointsCount)
  {
    v8 = *self->_correctedCalibration.extrinRotRefefenceToAuxiliary;
    *&v8.f64[0] = vcvt_f32_f64(v8);
    v9 = *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[2];
    *&v9.f64[0] = vcvt_f32_f64(v9);
    v10 = *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[4];
    *&v10.f64[0] = vcvt_f32_f64(v10);
    v11 = *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[8];
    *&v11.f64[0] = vcvt_f32_f64(v11);
    v12 = *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[10];
    *&v12.f64[0] = vcvt_f32_f64(v12);
    v13 = vzip1q_s32(v8, v11);
    v14 = vzip1q_s32(v9, v12);
    v15 = vzip2q_s32(vcvt_hight_f32_f64(*&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[6], *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[6]), 0);
    v30 = vzip1q_s32(v13, v10);
    v31 = vzip1q_s32(v14, v15);
    v28 = vzip2q_s32(v13, vdupq_lane_s32(*&v10.f64[0], 1));
    v29 = vzip2q_s32(v14, v15);
    if (AdaptiveCorrection_computeVerticalBaselineTransform(&v38, &v36, &v34))
    {
      sub_295769A3C();
      return 3;
    }

    if (AdaptiveCorrection_rotateCalModel(&self->_correctedCalibration, v42, v38, v39, v40, v41, v36, v37, v34, v35))
    {
      sub_295769AB8();
      return 3;
    }

    if (AdaptiveCorrection_transformPointsWithMatrix(self->_adaptiveCorrectionKeypointsDistorted[0], self->_keypointsCount, self->_transposedKeypoints.xyPointsTeleTransposed, v36, v37))
    {
      sub_295769B34();
      return 3;
    }

    if (AdaptiveCorrection_transformPointsWithMatrix(self->_adaptiveCorrectionKeypointsDistorted[1], self->_keypointsCount, self->_transposedKeypoints.xyPointsWideTransposed, v34, v35))
    {
      sub_295769BB0();
      return 3;
    }

    v33 = 0;
    memset(v32, 0, sizeof(v32));
    AdaptiveCorrection_fullCorrection(self->_transposedKeypoints.xyPointsTeleTransposed, self->_transposedKeypoints.xyPointsWideTransposed, self->_keypointsCount, v42, &self->_adaptiveCorrectionConfig, v44, v32);
    v46.columns[0] = v36;
    v46.columns[1] = v37;
    v16 = __invert_f2(v46);
    v47.columns[0] = v34;
    v47.columns[1] = v35;
    v17 = __invert_f2(v47);
    if (AdaptiveCorrection_rotateCalModel(v32, &self->_correctedCalibration, v30, v28, v31, v29, v16.columns[0], v16.columns[1], v17.columns[0], v17.columns[1]))
    {
      sub_295769C2C();
      return 3;
    }
  }

  else
  {
    bzero(v44, 0x748uLL);
  }

  objc_msgSend__computeCanonicalDisparityScaleFactor(self, v18, v19, v20, v21, v22, v23, v24, v25, *&v28, *&v29, *&v30, *&v31);
  self->_correctedCalibration.canonicalDisparityScale = v26;
  if (BYTE4(v44[0]))
  {
    if (v45)
    {
      return 0;
    }

    else
    {
      sub_295769D20();
      return 2;
    }
  }

  else
  {
    sub_295769CA8();
    return 1;
  }
}

- (int)_computePaddedAuxiliaryRectificationHomography
{
  v2 = 0;
  v3 = self->_correctedCalibration.focalLengthPix[0];
  v4.f64[0] = self->_correctedCalibration.extrinRotRefefenceToAuxiliary[3];
  v4.f64[1] = self->_correctedCalibration.extrinRotRefefenceToAuxiliary[7];
  *&v4.f64[0] = vcvt_f32_f64(v4);
  v5 = self->_correctedCalibration.extrinRotRefefenceToAuxiliary[11];
  *&v4.f64[1] = v5;
  v6 = vmulq_f32(v4, v4);
  v7 = sqrtf(v6.f32[2] + vaddv_f32(*v6.f32)) * v3;
  v8 = *self->_limitDistances_mm;
  v9 = v7 / *&v8;
  v10 = *self->_orientationVector;
  v11 = -*&v10;
  if (*&v10 >= 0.0)
  {
    LODWORD(v11) = *self->_orientationVector;
  }

  v12 = (self->_pixelBufferDimensions[0].width + (v11 * v9)) / self->_pixelBufferDimensions[0].width;
  LODWORD(v10) = HIDWORD(*self->_orientationVector);
  if (*(&v10 + 1) < 0.0)
  {
    *&v10 = -*(&v10 + 1);
  }

  *&v13 = 1.0 / v12;
  LODWORD(v14) = 0;
  *(&v14 + 1) = 1.0 / ((self->_pixelBufferDimensions[0].height + (*&v10 * v9)) / self->_pixelBufferDimensions[0].height);
  *&self->_anon_680[8] = 0;
  *self->_anon_680 = v13;
  *&self->_anon_680[24] = 0;
  *&self->_anon_680[16] = v14;
  *&self->_anon_680[40] = 1065353216;
  *&self->_anon_680[32] = 0;
  v15 = *self->_anon_6e0;
  v16 = *&self->_anon_6e0[16];
  v17 = *&self->_anon_6e0[32];
  v22[2] = xmmword_29577A870;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  do
  {
    *(&v23 + v2 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(v22[v2])), v16, *&v22[v2], 1), v17, v22[v2], 2);
    ++v2;
  }

  while (v2 != 3);
  v18 = v23;
  v19 = v24;
  *&self->_anon_6e0[8] = DWORD2(v23);
  *self->_anon_6e0 = v18;
  v20 = v25;
  *&self->_anon_6e0[24] = DWORD2(v19);
  *&self->_anon_6e0[40] = DWORD2(v20);
  *&self->_anon_6e0[16] = v19;
  *&self->_anon_6e0[32] = v20;
  self->_nearLimitDisparity = v9;
  self->_midLimitDisparity = v7 / *(&v8 + 1);
  return 0;
}

- (int)_computeCenteredRectificationHomographies
{
  anon_6b0 = self->_anon_6b0;
  v4 = *&self->_undistModels[0].polyDynamic[2];
  v160 = *self->_undistModels[0].polyDynamic;
  v161 = v4;
  v5 = *&self->_undistModels[0].polyDynamic[6];
  v162 = *&self->_undistModels[0].polyDynamic[4];
  v163 = v5;
  v6 = *&self->_undistModels[0].polyBase[2];
  v156 = *self->_undistModels[0].polyBase;
  v157 = v6;
  v7 = *&self->_undistModels[0].polyBase[6];
  v158 = *&self->_undistModels[0].polyBase[4];
  v159 = v7;
  v8 = *&self->_undistModels[0].opticalCenterX;
  v154 = *&self->_undistModels[0].pixelSizeMM;
  v155 = v8;
  x = self->_referenceFinalCropRect.origin.x;
  *&v8 = self->_referenceFinalCropRect.origin.y;
  v10 = x + self->_referenceFinalCropRect.size.width;
  v11 = *&v8 + self->_referenceFinalCropRect.size.height;
  v139.f64[0] = x;
  *&v139.f64[1] = v8;
  v140 = v10;
  v141 = v8;
  v142 = x;
  v143 = v11;
  v144 = v10;
  v145 = v11;
  v146 = v155;
  v147 = v8;
  v148 = v155;
  v149 = v11;
  v150 = x;
  v151 = *(&v155 + 1);
  v152 = v10;
  v153 = *(&v155 + 1);
  memset(v138, 0, sizeof(v138));
  sub_295761800(&v139, 8, &v154, v138);
  v19 = 0;
  __asm { FMOV            V0.2S, #1.0 }

  memset(v137, 0, sizeof(v137));
  do
  {
    *&v25 = vcvt_f32_f64(v138[v19]);
    *(&v25 + 1) = _D0;
    v137[v19++] = v25;
  }

  while (v19 != 8);
  v26 = 0;
  v135 = 0u;
  v136 = 0u;
  v27 = *anon_6b0;
  v28 = *(anon_6b0 + 1);
  v29 = *(anon_6b0 + 2);
  v30.i64[0] = 0x3F0000003F000000;
  v30.i64[1] = 0x3F0000003F000000;
  do
  {
    v31 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(v137[v26])), v28, *&v137[v26], 1), v29, v137[v26], 2);
    if (v31.f32[2] <= 0.0)
    {
      sub_295769FF0();
      return -12780;
    }

    *(&v135 + (v26 & 1)) = vmlaq_f32(*(&v135 + (v26 & 1)), v30, vdivq_f32(v31, vdupq_laneq_s32(v31, 2)));
    ++v26;
  }

  while (v26 != 4);
  v130 = v29;
  v131 = v28;
  v132 = v27;
  v35 = vsubq_f32(v136, v135);
  v32 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v35, v35)));
  v33 = vrsqrte_f32(v32);
  v34 = vmul_f32(v33, vrsqrts_f32(v32.u32[0], vmul_f32(v33, v33)));
  *v35.f32 = vmul_n_f32(*v35.f32, vmul_f32(v34, vrsqrts_f32(v32.u32[0], vmul_f32(v34, v34))).f32[0]);
  __asm { FMOV            V2.2S, #-1.0 }

  *v27.f32 = vminnm_f32(vmaxnm_f32(*v35.f32, _D2), _D0);
  *self->_orientationVector = v27.i64[0];
  rectificationAngleStep = self->_rectificationAngleStep;
  if (rectificationAngleStep != 0.0)
  {
    v133 = v27;
    *v38.i32 = rectificationAngleStep * roundf(acosf(v27.f32[0]) / rectificationAngleStep);
    v39 = v133;
    v39.i32[0] = v133.i32[1];
    v40.i64[0] = 0x8000000080000000;
    v40.i64[1] = 0x8000000080000000;
    LODWORD(v129) = vbslq_s8(v40, v38, v39).u32[0];
    v41.f32[0] = cosf(*v38.i32);
    v134 = v41;
    v42 = sinf(v129);
    v27 = v134;
    v27.f32[1] = v42;
    *self->_orientationVector = v27.i64[0];
  }

  v43 = 0;
  *v35.f32 = vrev64_s32(*v27.f32);
  v49.i64[0] = 0;
  v49.i32[3] = 0;
  *&v49.i32[2] = -v27.f32[1];
  v44 = vdupq_lane_s32(*v35.f32, 1);
  v45 = v27;
  v45.i32[1] = 0;
  v46 = vzip1q_s32(v45, v35);
  v35.i64[0] = v27.i64[0];
  v47 = vzip2q_s32(v49, v44);
  v29.f32[0] = self->_correctedCalibration.focalLengthPix[0];
  v44.f64[0] = self->_correctedCalibration.opticalCenterX[0];
  v44.f64[1] = self->_correctedCalibration.opticalCenterY[0];
  v48 = vcvt_f32_f64(v44);
  v49.i64[1] = 0;
  *v49.i32 = 1.0 / v29.f32[0];
  v50.i32[0] = 0;
  v50.i64[1] = 0;
  v50.f32[1] = 1.0 / v29.f32[0];
  *v51.f32 = vdiv_f32(vneg_f32(v48), vdup_lane_s32(*v29.f32, 0));
  v51.i64[1] = COERCE_UNSIGNED_INT(1.0);
  v52 = v29.u32[0];
  v164 = COERCE_UNSIGNED_INT(1.0 / v29.f32[0]);
  v165 = v50.u64[0];
  v166 = v51;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  do
  {
    *(&v167 + v43) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(*(&v164 + v43))), v47, *&v164.i8[v43], 1), xmmword_29577A870, *(&v164 + v43), 2);
    v43 += 16;
  }

  while (v43 != 48);
  v53 = 0;
  __asm { FMOV            V6.4S, #1.0 }

  v55.i64[1] = _Q6.i64[1];
  *v55.f32 = v48;
  v56.i32[0] = 0;
  v56.i64[1] = 0;
  v56.i32[1] = v29.i32[0];
  v164 = v167;
  v165 = v168;
  v166 = v169;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  do
  {
    *(&v167 + v53) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29.u32[0], COERCE_FLOAT(*(&v164 + v53))), v56, *&v164.i8[v53], 1), v55, *(&v164 + v53), 2);
    v53 += 16;
  }

  while (v53 != 48);
  v57 = 0;
  v58 = v167;
  v59 = v168;
  v60 = v169;
  v61 = vdupq_lane_s32(*v47.f32, 1);
  v62 = vzip1q_s32(v46, v47);
  v62.i32[2] = 0;
  v63 = vzip2q_s32(vzip1q_s32(v46, 0), v61);
  v64 = vdupq_laneq_s32(v46, 2);
  v64.i32[1] = 0;
  v64.i32[2] = 1.0;
  v164 = v49;
  v165 = v50;
  v166 = v51;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  do
  {
    *(&v167 + v57) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v62, COERCE_FLOAT(*(&v164 + v57))), v63, *&v164.i8[v57], 1), v64, *(&v164 + v57), 2);
    v57 += 16;
  }

  while (v57 != 48);
  v65 = 0;
  v164 = v167;
  v165 = v168;
  v166 = v169;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  do
  {
    *(&v167 + v65) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29.u32[0], COERCE_FLOAT(*(&v164 + v65))), v56, *&v164.i8[v65], 1), v55, *(&v164 + v65), 2);
    v65 += 16;
  }

  while (v65 != 48);
  v66 = 0;
  v67 = v167;
  v68 = v168;
  v69 = v169;
  v70 = *(anon_6b0 + 7);
  v71 = *(anon_6b0 + 8);
  v164 = *(anon_6b0 + 6);
  v165 = v70;
  v166 = v71;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  do
  {
    *(&v167 + v66) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, COERCE_FLOAT(*(&v164 + v66))), v59, *&v164.i8[v66], 1), v60, *(&v164 + v66), 2);
    v66 += 16;
  }

  while (v66 != 48);
  v72 = 0;
  v67.i32[3] = 0;
  v68.i32[3] = 0;
  v69.i32[3] = 0;
  v73 = v167.i64[0];
  v74 = v168;
  v75 = v169;
  *(anon_6b0 + 26) = v167.i32[2];
  *(anon_6b0 + 12) = v73;
  *(anon_6b0 + 30) = v74.i32[2];
  *(anon_6b0 + 14) = v74.i64[0];
  *(anon_6b0 + 34) = v75.i32[2];
  *(anon_6b0 + 16) = v75.i64[0];
  v164 = v67;
  v165 = v68;
  v166 = v69;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v76.i32[1] = v130.i32[1];
  do
  {
    *(&v167 + v72) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v132, COERCE_FLOAT(*(&v164 + v72))), v131, *&v164.i8[v72], 1), v130, *(&v164 + v72), 2);
    v72 += 16;
  }

  while (v72 != 48);
  v77 = 0;
  v78 = v167.i64[0];
  v79 = v168;
  v80 = v169;
  *(anon_6b0 + 2) = v167.i32[2];
  *(anon_6b0 + 6) = v79.i32[2];
  *anon_6b0 = v78;
  *(anon_6b0 + 2) = v79.i64[0];
  *(anon_6b0 + 10) = v80.i32[2];
  *(anon_6b0 + 4) = v80.i64[0];
  v81 = *(anon_6b0 + 3);
  v82 = *(anon_6b0 + 4);
  v83 = *(anon_6b0 + 5);
  v164 = v67;
  v165 = v68;
  v166 = v69;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  do
  {
    *(&v167 + v77) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v81, COERCE_FLOAT(*(&v164 + v77))), v82, *&v164.i8[v77], 1), v83, *(&v164 + v77), 2);
    v77 += 16;
  }

  while (v77 != 48);
  v84 = 0;
  v85 = v167.i64[0];
  v86 = v168;
  v87 = v169;
  *(anon_6b0 + 14) = v167.i32[2];
  *(anon_6b0 + 18) = v86.i32[2];
  *(anon_6b0 + 6) = v85;
  *(anon_6b0 + 8) = v86.i64[0];
  *(anon_6b0 + 22) = v87.i32[2];
  *(anon_6b0 + 10) = v87.i64[0];
  v88 = *(anon_6b0 + 6);
  v89 = *(anon_6b0 + 7);
  v90 = 0x80000000800000;
  v91 = vneg_f32(0x80000000800000);
  v92 = *(anon_6b0 + 8);
  do
  {
    v93 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v88, COERCE_FLOAT(v137[v84])), v89, *&v137[v84], 1), v92, v137[v84], 2);
    if (*&v93.i32[2] <= 0.0)
    {
      sub_29576A064();
      return -12780;
    }

    v94 = vdiv_f32(*v93.i8, *&vdupq_laneq_s32(v93, 2));
    v91 = vminnm_f32(v91, v94);
    v90 = vmaxnm_f32(v90, v94);
    ++v84;
  }

  while (v84 != 8);
  v95 = 0;
  v96 = vcvt_f32_s32(self->_pixelBufferDimensions[0]);
  v97 = vdiv_f32(v96, vsub_f32(v90, v91));
  if (v97.f32[0] >= v97.f32[1])
  {
    v97.f32[0] = v97.f32[1];
  }

  *v76.i32 = v97.f32[0] * v29.f32[0];
  v98.i64[1] = _Q6.i64[1];
  *v98.f32 = vmla_n_f32(vmul_f32(v96, 0x3F0000003F000000), vsub_f32(v48, vmul_f32(vadd_f32(v91, v90), 0x3F0000003F000000)), v97.f32[0]);
  v99.i32[0] = 0;
  v99.i64[1] = 0;
  v99.i32[1] = v76.i32[0];
  v100.i64[1] = 0;
  *_Q6.f32 = vdiv_f32(vneg_f32(*v98.f32), vdup_lane_s32(v76, 0));
  LODWORD(self->_rectificationFocalLengthFactor) = v97.i32[0];
  v164 = v49;
  v165 = v50;
  v166 = v51;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  do
  {
    *(&v167 + v95) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v76.u32[0], COERCE_FLOAT(*(&v164 + v95))), v99, *&v164.i8[v95], 1), v98, *(&v164 + v95), 2);
    v95 += 16;
  }

  while (v95 != 48);
  v101 = 0;
  LODWORD(v102) = 0;
  *(&v102 + 1) = 1.0 / *v76.i32;
  _Q6.i32[3] = 0;
  v103 = v167;
  v104 = v168;
  v105 = v169;
  v100.i64[0] = COERCE_UNSIGNED_INT(1.0 / *v76.i32);
  v164 = v100;
  v165 = v102;
  v166 = _Q6;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  do
  {
    *(&v167 + v101) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v52, COERCE_FLOAT(*(&v164 + v101))), v56, *&v164.i8[v101], 1), v55, *(&v164 + v101), 2);
    v101 += 16;
  }

  while (v101 != 48);
  v106 = 0;
  v107 = v167;
  v108 = v168;
  v109 = v169;
  v164 = v88;
  v165 = v89;
  v166 = v92;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  do
  {
    *(&v167 + v106) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103, COERCE_FLOAT(*(&v164 + v106))), v104, *&v164.i8[v106], 1), v105, *(&v164 + v106), 2);
    v106 += 16;
  }

  while (v106 != 48);
  v110 = 0;
  v107.i32[3] = 0;
  v108.i32[3] = 0;
  v109.i32[3] = 0;
  v111 = v167.i64[0];
  v112 = v168;
  v113 = v169;
  *(anon_6b0 + 26) = v167.i32[2];
  *(anon_6b0 + 30) = v112.i32[2];
  *(anon_6b0 + 12) = v111;
  *(anon_6b0 + 14) = v112.i64[0];
  *(anon_6b0 + 34) = v113.i32[2];
  *(anon_6b0 + 16) = v113.i64[0];
  v114 = *anon_6b0;
  v115 = *(anon_6b0 + 1);
  v116 = *(anon_6b0 + 2);
  v164 = v107;
  v165 = v108;
  v166 = v109;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  do
  {
    *(&v167 + v110) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v114, COERCE_FLOAT(*(&v164 + v110))), v115, *&v164.i8[v110], 1), v116, *(&v164 + v110), 2);
    v110 += 16;
  }

  while (v110 != 48);
  v117 = 0;
  v118 = v167.i64[0];
  v119 = v168;
  v120 = v169;
  *(anon_6b0 + 2) = v167.i32[2];
  *(anon_6b0 + 6) = v119.i32[2];
  *anon_6b0 = v118;
  *(anon_6b0 + 2) = v119.i64[0];
  *(anon_6b0 + 10) = v120.i32[2];
  *(anon_6b0 + 4) = v120.i64[0];
  v121 = *(anon_6b0 + 3);
  v122 = *(anon_6b0 + 4);
  v123 = *(anon_6b0 + 5);
  v164 = v107;
  v165 = v108;
  v166 = v109;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  do
  {
    *(&v167 + v117) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v121, COERCE_FLOAT(*(&v164 + v117))), v122, *&v164.i8[v117], 1), v123, *(&v164 + v117), 2);
    v117 += 16;
  }

  while (v117 != 48);
  v124 = v167.i64[0];
  v125 = v168;
  v126 = v169;
  *(anon_6b0 + 14) = v167.i32[2];
  *(anon_6b0 + 18) = v125.i32[2];
  *(anon_6b0 + 6) = v124;
  *(anon_6b0 + 8) = v125.i64[0];
  *(anon_6b0 + 22) = v126.i32[2];
  *(anon_6b0 + 10) = v126.i64[0];
  objc_msgSend__computeCanonicalDisparityScaleFactor(self, v12, v13, v14, v15, v16, v17, v18, *&v124);
  result = 0;
  self->_correctedCalibration.canonicalDisparityScale = v128;
  return result;
}

- (float)_computeCanonicalDisparityScaleFactor
{
  v2.f32[0] = self->_correctedCalibration.focalLengthPix[0];
  v3.f64[0] = self->_correctedCalibration.extrinRotRefefenceToAuxiliary[3];
  v3.f64[1] = self->_correctedCalibration.extrinRotRefefenceToAuxiliary[7];
  v4 = self->_rectificationFocalLengthFactor * v2.f32[0];
  *v2.f32 = vcvt_f32_f64(v3);
  *v3.f64 = self->_correctedCalibration.extrinRotRefefenceToAuxiliary[11];
  v2.i32[2] = LODWORD(v3.f64[0]);
  v5 = vmulq_f32(v2, v2);
  return 1.0 / (v4 * (sqrtf(v5.f32[2] + vaddv_f32(*v5.f32)) / 1000.0));
}

- (int)computeAuxiliaryImageShiftForKeypoints:(Calibration *)self
{
  v3 = v2;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = sub_2957620D0(&self->_initialCalibration, 0, &v22, &v19, 0, &v16, 0);
  if (v5)
  {
    v8 = v5;
    sub_29576A0D8();
  }

  else
  {
    v6 = vaddq_f32(v18, vmlaq_n_f32(vmulq_n_f32(v16, (self->_pixelBufferDimensions[0].width + -1.0) * 0.5), v17, (self->_pixelBufferDimensions[0].height + -1.0) * 0.5));
    v7 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, v6.f32[0]), v20, *v6.f32, 1), v21, v6, 2);
    if (v7.f32[2] <= 0.1)
    {
      sub_29576A150();
      return -12780;
    }

    else
    {
      v8 = 0;
      v9 = vdivq_f32(v7, vdupq_laneq_s32(v7, 2));
      __asm { FMOV            V1.2S, #-1.0 }

      *v3 = vadd_f32(*&vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, v9.f32[0]), v23, *v9.f32, 1), v24, v9, 2), vmul_f32(vadd_f32(vcvt_f32_s32(self->_pixelBufferDimensions[1]), _D1), 0xBF000000BF000000));
    }
  }

  return v8;
}

- (CGRect)referenceFinalCropRect
{
  x = self->_referenceFinalCropRect.origin.x;
  y = self->_referenceFinalCropRect.origin.y;
  width = self->_referenceFinalCropRect.size.width;
  height = self->_referenceFinalCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CalModel)initialCalibration
{
  v3 = *&self->calibrationDimensions[1];
  *&retstr->extrinRotRefefenceToAuxiliary[10] = *&self->canonicalDisparityScale;
  *&retstr->canonicalDisparityScale = v3;
  *&retstr->calibrationDimensions[1] = *&self->pixelSize_um[1];
  retstr->pixelSize_um[1] = self[1].focalLengthPix[1];
  v4 = *&self->extrinRotRefefenceToAuxiliary[6];
  *&retstr->extrinRotRefefenceToAuxiliary[2] = *&self->extrinRotRefefenceToAuxiliary[4];
  *&retstr->extrinRotRefefenceToAuxiliary[4] = v4;
  v5 = *&self->extrinRotRefefenceToAuxiliary[10];
  *&retstr->extrinRotRefefenceToAuxiliary[6] = *&self->extrinRotRefefenceToAuxiliary[8];
  *&retstr->extrinRotRefefenceToAuxiliary[8] = v5;
  v6 = *self->opticalCenterY;
  *retstr->focalLengthPix = *self->opticalCenterX;
  *retstr->opticalCenterX = v6;
  v7 = *&self->extrinRotRefefenceToAuxiliary[2];
  *retstr->opticalCenterY = *self->extrinRotRefefenceToAuxiliary;
  *retstr->extrinRotRefefenceToAuxiliary = v7;
  return self;
}

- (CalModel)correctedCalibration
{
  v3 = *&self[10].calibrationDimensions[1];
  *&retstr->extrinRotRefefenceToAuxiliary[10] = *&self[10].canonicalDisparityScale;
  *&retstr->canonicalDisparityScale = v3;
  *&retstr->calibrationDimensions[1] = *&self[10].pixelSize_um[1];
  retstr->pixelSize_um[1] = self[11].focalLengthPix[1];
  v4 = *&self[10].extrinRotRefefenceToAuxiliary[6];
  *&retstr->extrinRotRefefenceToAuxiliary[2] = *&self[10].extrinRotRefefenceToAuxiliary[4];
  *&retstr->extrinRotRefefenceToAuxiliary[4] = v4;
  v5 = *&self[10].extrinRotRefefenceToAuxiliary[10];
  *&retstr->extrinRotRefefenceToAuxiliary[6] = *&self[10].extrinRotRefefenceToAuxiliary[8];
  *&retstr->extrinRotRefefenceToAuxiliary[8] = v5;
  v6 = *self[10].opticalCenterY;
  *retstr->focalLengthPix = *self[10].opticalCenterX;
  *retstr->opticalCenterX = v6;
  v7 = *&self[10].extrinRotRefefenceToAuxiliary[2];
  *retstr->opticalCenterY = *self[10].extrinRotRefefenceToAuxiliary;
  *retstr->extrinRotRefefenceToAuxiliary = v7;
  return self;
}

- (__n128)auxiliaryPaddingHInv
{
  result = *(a1 + 1664);
  v2 = *(a1 + 1680);
  v3 = *(a1 + 1696);
  return result;
}

- (__n128)rectReferenceToReference
{
  result = *(a1 + 1712);
  v2 = *(a1 + 1728);
  v3 = *(a1 + 1744);
  return result;
}

- (__n128)rectReferenceToAuxiliary
{
  result = *(a1 + 1760);
  v2 = *(a1 + 1776);
  v3 = *(a1 + 1792);
  return result;
}

- (__n128)referenceToRectReference
{
  result = *(a1 + 1808);
  v2 = *(a1 + 1824);
  v3 = *(a1 + 1840);
  return result;
}

@end