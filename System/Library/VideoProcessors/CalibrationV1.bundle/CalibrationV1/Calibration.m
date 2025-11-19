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
    sub_2956FAA20(self->_adc);
    self->_adc = 0;
  }

  else
  {

    (MEMORY[0x2A1C70FE8])(self, sel__releaseResourcesForTransformedPoints);
  }
}

- (void)dealloc
{
  objc_msgSend_releaseResources(self, a2, v2, v3, v4, v5);
  v7.receiver = self;
  v7.super_class = Calibration;
  [(Calibration *)&v7 dealloc];
}

- (int)extractParametersFromReferenceMetadata:(id)a3 auxiliaryMetadata:(id)a4 options:(id)a5 adaptiveCorrectionConfig:(AdaptiveCorrectionConfig *)a6 useReferenceFrame:(BOOL)a7
{
  v7 = a7;
  v13 = a3;
  v14 = a4;
  v19 = a5;
  v311 = self;
  self->_rectificationFocalLengthFactor = 1.0;
  if (!v13)
  {
    sub_2957049B4(__dst);
LABEL_76:
    v277 = __dst[0];
    goto LABEL_71;
  }

  if (!v14)
  {
    sub_295704908(__dst);
    goto LABEL_76;
  }

  v280 = a6;
  v20 = objc_msgSend_objectForKeyedSubscript_(v13, v15, @"PortType", v16, v17, v18);
  v21 = self->_portTypeName[0];
  self->_portTypeName[0] = v20;

  v26 = objc_msgSend_objectForKeyedSubscript_(v14, v22, @"PortType", v23, v24, v25);
  v27 = self->_portTypeName[1];
  self->_portTypeName[1] = v26;

  metadata = self->_metadata;
  objc_storeStrong(self->_metadata, a3);
  objc_storeStrong(&self->_metadata[1], a4);
  if (v7)
  {
    v33 = 0;
    v34 = 1;
    do
    {
      v35 = v34;
      v36 = objc_msgSend_objectForKeyedSubscript_(metadata[v33], v29, @"ReferenceFrameMetadata", v30, v31, v32);

      if (v36)
      {
        v37 = objc_msgSend_objectForKeyedSubscript_(metadata[v33], v29, @"ReferenceFrameMetadata", v30, v31, v32);
        v38 = metadata[v33];
        metadata[v33] = v37;
      }

      v34 = 0;
      v33 = 1;
    }

    while ((v35 & 1) != 0);
  }

  if (!v19)
  {
    sub_29570485C(__dst);
    goto LABEL_76;
  }

  v304 = objc_msgSend_objectForKeyedSubscript_(v19, v29, *MEMORY[0x29EDC0288], v30, v31, v32);
  if (!v304)
  {
    sub_2957047B0(__dst);
    goto LABEL_76;
  }

  v281 = v19;
  v282 = v14;
  v283 = v13;
  p_adaptiveCorrectionConfig = &self->_adaptiveCorrectionConfig;
  portTypeName = self->_portTypeName;
  v303 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], v39, v40, v41, v42, v43);
  v44 = 0;
  v45 = 0;
  v284 = 0;
  v300 = *MEMORY[0x29EDC0658];
  v299 = *MEMORY[0x29EDBFF38];
  v310 = *MEMORY[0x29EDBFEF8];
  v298 = *MEMORY[0x29EDBFEC8];
  v314 = *MEMORY[0x29EDBFEC0];
  v308 = *MEMORY[0x29EDC04C0];
  v309 = *MEMORY[0x29EDC0628];
  v306 = *MEMORY[0x29EDC04B0];
  v307 = *MEMORY[0x29EDC0620];
  pixelBufferDimensions = self->_pixelBufferDimensions;
  v297 = *MEMORY[0x29EDBFED8];
  v295 = *MEMORY[0x29EDC05D0];
  opticalCenter = self->_opticalCenter;
  focalLength = self->_focalLength;
  rawSensorSize = self->_rawSensorSize;
  v287 = *MEMORY[0x29EDC06F0];
  pixelBufferScalingFactor = self->_pixelBufferScalingFactor;
  v286 = *MEMORY[0x29EDBFED0];
  distortionOpticalCenter = self->_distortionOpticalCenter;
  ddf = self->_ddf;
  v46 = 1;
  v285 = *MEMORY[0x29EDC05C8];
  v291 = *MEMORY[0x29EDC0670];
  v290 = *MEMORY[0x29EDC0668];
  do
  {
    v316 = v46;
    v47 = portTypeName[v45];
    v315 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], v48, v49, v50, v51, v52);
    v57 = objc_msgSend_objectForKeyedSubscript_(metadata[v45], v53, v300, v54, v55, v56);
    v63 = objc_msgSend_intValue(v57, v58, v59, v60, v61, v62);
    if (v63 <= 1)
    {
      v64 = 1;
    }

    else
    {
      v64 = v63;
    }

    v65 = MEMORY[0x29EDBA070];
    v70 = objc_msgSend_objectForKeyedSubscript_(v304, v66, v47, v67, v68, v69);
    v75 = objc_msgSend_objectForKeyedSubscript_(v70, v71, v299, v72, v73, v74);
    objc_msgSend_floatValue(v75, v76, v77, v78, v79, v80);
    v81 = v64;
    *&v83 = v82 * v64;
    v325 = objc_msgSend_numberWithFloat_(v65, v84, v85, v86, v87, v88, v83);

    v89 = v47;
    v94 = objc_msgSend_objectForKeyedSubscript_(v304, v90, v47, v91, v92, v93);
    v320 = objc_msgSend_objectForKeyedSubscript_(v94, v95, v310, v96, v97, v98);

    v103 = objc_msgSend_objectForKeyedSubscript_(v304, v99, v47, v100, v101, v102);
    v108 = objc_msgSend_objectForKeyedSubscript_(v103, v104, v298, v105, v106, v107);

    v113 = objc_msgSend_objectForKeyedSubscript_(v304, v109, v89, v110, v111, v112);
    v327 = objc_msgSend_objectForKeyedSubscript_(v113, v114, v314, v115, v116, v117);

    v318 = objc_msgSend_objectForKeyedSubscript_(metadata[v45], v118, v309, v119, v120, v121);
    v126 = objc_msgSend_objectForKeyedSubscript_(metadata[v45], v122, v308, v123, v124, v125);
    v131 = objc_msgSend_objectForKeyedSubscript_(metadata[v45], v127, v307, v128, v129, v130);
    dict = objc_msgSend_objectForKeyedSubscript_(metadata[v45], v132, v306, v133, v134, v135);
    v140 = objc_msgSend_objectForKeyedSubscript_(v304, v136, v89, v137, v138, v139);
    v145 = objc_msgSend_objectForKeyedSubscript_(v140, v141, v297, v142, v143, v144);

    v319 = objc_msgSend_objectForKeyedSubscript_(metadata[v45], v146, v295, v147, v148, v149);
    v155 = &pixelBufferDimensions[v45];
    v323 = v126;
    v312 = v155;
    if (v311->_pixelBufferScalingEnabled)
    {
      v156 = v145;
      v157 = v108;
      v158 = *(MEMORY[0x29EDB90D8] + 16);
      rect.origin = *MEMORY[0x29EDB90D8];
      rect.size = v158;
      v159 = objc_msgSend_objectForKeyedSubscript_(metadata[v45], v150, v287, v152, v153, v154);
      CGRectMakeWithDictionaryRepresentation(v159, &rect);

      width = rect.size.width;
      if (rect.size.width <= 0.0 || (height = rect.size.height, rect.size.height <= 0.0))
      {
        sub_2957041A4(&rect, __dst);
        v268 = 0;
        v284 = __dst[0];
        v162 = v315;
        v108 = v157;
        v267 = dict;
        v163 = v318;
        goto LABEL_49;
      }

      v162 = v315;
      v108 = v157;
      v145 = v156;
    }

    else
    {
      width = *v155;
      height = v155[1];
      v162 = v315;
    }

    v163 = v318;
    v313 = v108;
    if (!v145)
    {
      v190 = objc_msgSend_objectForKeyedSubscript_(v304, v150, v89, v152, v153, v154);
      v188 = objc_msgSend_objectForKeyedSubscript_(v190, v191, v286, v192, v193, v194);

      v199 = objc_msgSend_objectForKeyedSubscript_(metadata[v45], v195, v285, v196, v197, v198);

      if (v188)
      {
        v187 = v320;
        if (!v199)
        {
          v156 = v188;
          sub_295704454(__dst);
          v268 = 0;
          v319 = 0;
          goto LABEL_64;
        }

        v319 = v199;
LABEL_28:
        v321 = objc_msgSend_objectForKeyedSubscript_(v188, v182, v310, v183, v184, v185);

        v302 = objc_msgSend_objectForKeyedSubscript_(v188, v200, v314, v201, v202, v203);

        objc_msgSend_objectForKeyedSubscript_(v319, v204, v309, v205, v206, v207);
        v209 = v208 = v131;

        objc_msgSend_objectForKeyedSubscript_(v319, v210, v308, v211, v212, v213);
        v214 = metadata;
        v216 = v215 = v89;

        v221 = objc_msgSend_objectForKeyedSubscript_(v319, v217, v307, v218, v219, v220);

        v226 = objc_msgSend_objectForKeyedSubscript_(v319, v222, v306, v223, v224, v225);

        v327 = v302;
        dict = v226;
        v318 = v209;
        v323 = v216;
        v89 = v215;
        metadata = v214;
        v131 = v221;
        v162 = v315;
        v187 = v321;
      }

      else
      {
        v319 = v199;
        v187 = v320;
      }

      v108 = v313;
      v189 = v327;
      if (!v325)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    if (!v325)
    {
      v156 = v145;
      sub_2957043A8(__dst);
      goto LABEL_57;
    }

    if (!v319)
    {
      v156 = v145;
      sub_2957042FC(__dst);
      v268 = 0;
      v319 = 0;
      goto LABEL_58;
    }

    objc_msgSend_floatValue(v325, v150, v151, v152, v153, v154);
    v165 = v164;
    v156 = v145;
    v170 = objc_msgSend_objectForKeyedSubscript_(v145, v166, v314, v167, v168, v169);
    if (!v170)
    {
      sub_295704250(__dst);
      v268 = 0;
LABEL_64:
      v284 = __dst[0];
      v108 = v313;
      goto LABEL_59;
    }

    v176 = v170;
    v177.f32[0] = width * 0.5;
    v178 = height * 0.5;
    v177.f32[1] = v178;
    v179 = (sqrtf(vaddv_f32(vmul_f32(v177, v177))) * v165) / 1000.0;
    objc_msgSend_floatValue(v170, v171, v172, v173, v174, v175);
    v181 = v179 > v180;

    v186 = v181 & ~v44;
    v187 = v320;
    v188 = v156;
    if ((v186 & 1) == 0)
    {
      goto LABEL_28;
    }

    v108 = v313;
    v189 = v327;
LABEL_31:
    objc_msgSend_setObject_forKeyedSubscript_(v162, v182, v325, @"pixelSizeMicrometers", v184, v185);
LABEL_32:
    if (v187)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v162, v182, v187, @"gdcCoefficients", v184, v185);
    }

    if (v108)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v162, v182, v108, @"CameraViewMatrix", v184, v185);
    }

    if (v189)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v162, v182, v189, @"CalibrationValidRadius", v184, v185);
    }

    v327 = v189;
    objc_msgSend_setObject_forKeyedSubscript_(v303, v182, v162, v89, v184, v185);
    v163 = v318;
    v320 = v187;
    if (!v318)
    {
      v156 = v188;
      sub_295704704(__dst);
LABEL_57:
      v268 = 0;
LABEL_58:
      v284 = __dst[0];
LABEL_59:
      v267 = dict;
      goto LABEL_49;
    }

    v156 = v188;
    objc_msgSend_floatValue(v318, v227, v228, v229, v230, v231);
    focalLength[v45] = v232;
    if (!CGPointMakeWithDictionaryRepresentation(v131, &opticalCenter[v45]))
    {
      sub_295704500(__dst);
      goto LABEL_57;
    }

    v237 = objc_msgSend_objectForKeyedSubscript_(metadata[v45], v233, v291, v234, v235, v236);
    objc_msgSend_floatValue(v237, v238, v239, v240, v241, v242);
    p_width = &rawSensorSize[v45].width;
    *p_width = v243;

    v249 = objc_msgSend_objectForKeyedSubscript_(metadata[v45], v245, v290, v246, v247, v248);
    objc_msgSend_floatValue(v249, v250, v251, v252, v253, v254);
    p_width[1] = v255;

    v261 = width;
    v262 = *v312 / v261;
    v263 = height;
    v264 = v312[1] / v263;
    v265 = __PAIR64__(LODWORD(v264), LODWORD(v262));
    *&pixelBufferScalingFactor[8 * v45] = __PAIR64__(LODWORD(v264), LODWORD(v262));
    if (v316)
    {
      v311->_referenceCalibrationScalingFactor = (((v262 + v264) * 0.5) + ((v262 + v264) * 0.5)) / v81;
      v265 = *&pixelBufferScalingFactor[8 * v45];
    }

    if (*&v265 > 10.0 || *&v265 <= 0.1)
    {
      sub_295704658(__dst);
      goto LABEL_57;
    }

    if (v323)
    {
      objc_msgSend_floatValue(v323, v256, v257, v258, v259, v260);
    }

    else
    {
      v266 = 0.0;
    }

    ddf[v45] = v266;
    v267 = dict;
    if (CGPointMakeWithDictionaryRepresentation(dict, &distortionOpticalCenter[v45]))
    {
      v268 = 1;
    }

    else
    {
      sub_2957045AC(__dst);
      v268 = 0;
      v284 = __dst[0];
    }

LABEL_49:

    if ((v268 & 1) == 0)
    {

      v14 = v282;
      v13 = v283;
      v19 = v281;
      goto LABEL_70;
    }

    v46 = 0;
    v44 = 1;
    v45 = 1;
  }

  while ((v316 & 1) != 0);
  staticParametersByPortType = v311->_staticParametersByPortType;
  v311->_staticParametersByPortType = v303;
  v270 = v303;

  scaleTuningWithDigitalZoomByFactor = v280->scaleTuningWithDigitalZoomByFactor;
  if (scaleTuningWithDigitalZoomByFactor <= 0.0)
  {
    v14 = v282;
    v13 = v283;
    v19 = v281;
    v322 = *&v280->epErrorLimitWidePix_FirstPass;
    v324 = *&v280->rangePFL_T;
    v326 = *&v280->rangeOCxT;
    v328 = *&v280->rangeOCyT;
  }

  else
  {
    v272 = ((scaleTuningWithDigitalZoomByFactor * (v311->_referenceCalibrationScalingFactor + -1.0)) + 1.0);
    v324 = vmulq_n_f64(*&v280->rangePFL_T, v272);
    v326 = vmulq_n_f64(*&v280->rangeOCxT, v272);
    v328 = vmulq_n_f64(*&v280->rangeOCyT, v272);
    v322 = vmulq_n_f64(*&v280->epErrorLimitWidePix_FirstPass, v272);
    v14 = v282;
    v13 = v283;
    v19 = v281;
  }

  v273 = *&v280->runAnalyticalPreconditioning;
  v332 = *&v280->errorVal_LessThanExtremeMacro;
  v333 = v273;
  v334 = *&v280->keypointOutliersPercentile;
  temporalInitializationFactor = v280->temporalInitializationFactor;
  v274 = *&v280->minPointsForAdjustment;
  v330 = *&v280->intermediateMacroDistMM;
  v331 = v274;
  memcpy(__dst, &v280->overrideConfigPass1, sizeof(__dst));
  *&p_adaptiveCorrectionConfig->epErrorLimitWidePix_FirstPass = v322;
  *&p_adaptiveCorrectionConfig->rangePFL_T = v324;
  *&p_adaptiveCorrectionConfig->rangeOCxT = v326;
  *&p_adaptiveCorrectionConfig->rangeOCyT = v328;
  v275 = v333;
  *&v311->_adaptiveCorrectionConfig.errorVal_LessThanExtremeMacro = v332;
  *&v311->_adaptiveCorrectionConfig.runAnalyticalPreconditioning = v275;
  *&v311->_adaptiveCorrectionConfig.keypointOutliersPercentile = v334;
  v311->_adaptiveCorrectionConfig.temporalInitializationFactor = temporalInitializationFactor;
  v276 = v331;
  *&v311->_adaptiveCorrectionConfig.intermediateMacroDistMM = v330;
  *&v311->_adaptiveCorrectionConfig.minPointsForAdjustment = v276;
  v311->_adaptiveCorrectionConfig.scaleTuningWithDigitalZoomByFactor = scaleTuningWithDigitalZoomByFactor;
  memcpy(&v311->_adaptiveCorrectionConfig.overrideConfigPass1, __dst, 0x168uLL);

LABEL_70:
  v277 = v284;
LABEL_71:

  return v277;
}

- (int)computeInitialCalibration
{
  v6 = objc_msgSend_objectForKeyedSubscript_(self->_staticParametersByPortType, a2, self->_portTypeName[1], v2, v3, v4);
  v11 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"CameraViewMatrix", v8, v9, v10);
  v12 = v11;
  v18 = objc_msgSend_bytes(v12, v13, v14, v15, v16, v17);

  v141 = self;
  v23 = objc_msgSend_objectForKeyedSubscript_(self->_staticParametersByPortType, v19, self->_portTypeName[0], v20, v21, v22);
  v28 = objc_msgSend_objectForKeyedSubscript_(v23, v24, @"CameraViewMatrix", v25, v26, v27);
  v29 = v28;
  v35 = objc_msgSend_bytes(v29, v30, v31, v32, v33, v34);

  if (v18)
  {
    if (v35)
    {
      portTypeName = self->_portTypeName;
      *v41.i64 = sub_2956F833C(v18, v36, v37, v38, v39, v40);
      v134 = v41;
      v136 = v42;
      v132 = v43;
      v138 = v44;
      *v50.i64 = sub_2956F833C(v35, *v41.i64, *v42.i64, *v43.i64, *v44.i64, v45);
      v52 = 0;
      v143 = 0u;
      v144 = 0u;
      v54 = vzip1q_s32(v50, v53);
      v145 = 0u;
      v146 = 0u;
      v147[0] = vzip1q_s32(v54, v55);
      v147[1] = vzip2q_s32(v54, vdupq_lane_s32(*v55.i8, 1));
      v147[2] = vzip1q_s32(vzip2q_s32(v50, v53), vdupq_laneq_s32(v55, 2));
      time = 0u;
      time_16 = 0u;
      v150 = 0u;
      do
      {
        *(&time + v52 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v134, COERCE_FLOAT(v147[v52])), v136, *&v147[v52], 1), v132, v147[v52], 2);
        ++v52;
      }

      while (v52 != 3);
      v56 = 0;
      DWORD2(v143) = time.i32[2];
      DWORD2(v144) = time_16.i32[2];
      v57 = vsubq_f32(v138, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(time, v51.f32[0]), time_16, *v51.f32, 1), v150, v51, 2));
      *&v143 = time.i64[0];
      *&v144 = time_16.i64[0];
      DWORD2(v145) = v150.i32[2];
      DWORD2(v146) = v57.i32[2];
      *&v145 = v150.i64[0];
      *&v146 = v57.i64[0];
      v58 = self->_pixelBufferDimensions[0];
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
      v60.i64[0] = v58.width;
      v60.i64[1] = v58.height;
      pixelBufferDimensions = self->_pixelBufferDimensions;
      *self->_initialCalibration.calibrationDimensions = vcvtq_f64_s64(v60);
      do
      {
        for (i = 0; i != 4; ++i)
        {
          extrinRotRefefenceToAuxiliary[i] = *((&v143 + i) & 0xFFFFFFFFFFFFFFF3 | (4 * (v56 & 3)));
        }

        ++v56;
        extrinRotRefefenceToAuxiliary += 4;
      }

      while (v56 != 3);
      v62 = 0;
      rawSensorSize = self->_rawSensorSize;
      pixelBufferScalingFactor = self->_pixelBufferScalingFactor;
      opticalCenter = self->_opticalCenter;
      opticalCenterX = self->_initialCalibration.opticalCenterX;
      opticalCenterY = self->_initialCalibration.opticalCenterY;
      pixelSize_um = self->_initialCalibration.pixelSize_um;
      focalLength = self->_focalLength;
      metadata = self->_metadata;
      v129 = *MEMORY[0x29EDC0560];
      v128 = *MEMORY[0x29EDBFFA0];
      v127 = *(MEMORY[0x29EDB9398] + 12);
      v126 = *(MEMORY[0x29EDB9398] + 16);
      v124 = self->_initialCalibration.opticalCenterY;
      v125 = *MEMORY[0x29EDC04A8];
      for (j = 1; ; j = 0)
      {
        v68 = j;
        p_width = &rawSensorSize[v62].width;
        v70 = (*p_width + -1.0) * 0.5;
        v71 = (p_width[1] + -1.0) * 0.5;
        v72 = &pixelBufferDimensions[v62];
        p_x = &opticalCenter[v62].x;
        v74 = *&pixelBufferScalingFactor[8 * v62];
        v75 = p_x[1];
        v76 = (v72[1] + -1.0) * 0.5;
        opticalCenterX[v62] = (*v72 + -1.0) * 0.5 + (*p_x - v70) * *&v74;
        opticalCenterY[v62] = v76 + (v75 - v71) * *(&v74 + 1);
        v77 = objc_msgSend_objectForKeyedSubscript_(v141->_staticParametersByPortType, v46, portTypeName[v62], v47, v48, v49);
        v82 = objc_msgSend_objectForKeyedSubscript_(v77, v78, @"pixelSizeMicrometers", v79, v80, v81);
        objc_msgSend_floatValue(v82, v83, v84, v85, v86, v87);
        v89 = v88;

        v90 = (v89 / (vaddv_f32(*&pixelBufferScalingFactor[8 * v62]) * 0.5));
        pixelSize_um[v62] = v90;
        p_initialCalibration->focalLengthPix[v62] = focalLength[v62] / v90;
        v95 = objc_msgSend_objectForKeyedSubscript_(metadata[v62], v91, v129, v92, v93, v94);

        if (v95)
        {
          v96 = opticalCenterX;
          v97 = objc_msgSend_objectForKeyedSubscript_(metadata[v62], v46, v128, v47, v48, v49);
          v102 = v97;
          v142 = 0;
          *&v147[0] = *MEMORY[0x29EDB9398];
          DWORD2(v147[0]) = *(MEMORY[0x29EDB9398] + 8);
          v103 = v127;
          v104 = v126;
          if (v97)
          {
            CMTimeMakeFromDictionary(&time, v97);
            *&v147[0] = time.i64[0];
            v103 = time.i32[3];
            DWORD2(v147[0]) = time.i32[2];
            v104 = time_16.i64[0];
          }

          if ((v103 & 1) == 0)
          {
            sub_295704A60(v147, &v142, v102, &time);
            return time.i32[0];
          }

          v105 = objc_msgSend_objectForKeyedSubscript_(metadata[v62], v98, v125, v99, v100, v101);
          v111 = v105;
          if (v105)
          {
            objc_msgSend_floatValue(v105, v106, v107, v108, v109, v110);
            v113 = v112;
          }

          else
          {
            v113 = 1.0;
          }

          v114 = pixelSize_um;
          v115 = pixelSize_um[v62];
          v116 = metadata[v62];
          time.i64[0] = *&v147[0];
          time.i64[1] = __PAIR64__(v103, DWORD2(v147[0]));
          time_16.i64[0] = v104;
          CMTimeGetSeconds(&time);
          v117 = FigMotionComputeAverageSpherePosition();
          if (v117)
          {
            v122 = v117;
            fig_log_get_emitter();
            FigDebugAssert3();

            return v122;
          }

          v118 = v115;
          v119 = v113 / v118;
          v120 = *(&v142 + 1);
          opticalCenterX = v96;
          v96[v62] = v96[v62] + (v119 * *&v142);
          opticalCenterY = v124;
          v124[v62] = v124[v62] + (v119 * v120);
          v121 = metadata[v62];
          metadata[v62] = 0;

          pixelSize_um = v114;
        }

        v62 = 1;
        if ((v68 & 1) == 0)
        {
          return 0;
        }
      }
    }

    sub_295704B38(&time);
  }

  else
  {
    sub_295704BE4(&time);
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
  if ((objc_msgSend__computeAdcDistortionModels(self, a2, v2, v3, v4, v5) & 1) == 0)
  {
    sub_295704C90();
    return 0;
  }

  v7 = *&self->_initialCalibration.canonicalDisparityScale;
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[10] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[10];
  *&self->_correctedCalibration.canonicalDisparityScale = v7;
  *&self->_correctedCalibration.calibrationDimensions[1] = *&self->_initialCalibration.calibrationDimensions[1];
  self->_correctedCalibration.pixelSize_um[1] = self->_initialCalibration.pixelSize_um[1];
  v8 = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[4];
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[2] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[2];
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[4] = v8;
  v9 = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[8];
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[6] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[6];
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[8] = v9;
  v10 = *self->_initialCalibration.opticalCenterX;
  *self->_correctedCalibration.focalLengthPix = *self->_initialCalibration.focalLengthPix;
  *self->_correctedCalibration.opticalCenterX = v10;
  v11 = *self->_initialCalibration.extrinRotRefefenceToAuxiliary;
  *self->_correctedCalibration.opticalCenterY = *self->_initialCalibration.opticalCenterY;
  *self->_correctedCalibration.extrinRotRefefenceToAuxiliary = v11;
  if (sub_2956FAA94(self->_adc, &self->_adaptiveCorrectionConfig))
  {
    sub_295704D04();
    return 0;
  }

  if (sub_2956FBA24(self->_adc, self->_undistModels, &self->_undistModels[1], self->_correctedCalibration.focalLengthPix, 1.0))
  {
    sub_295704D7C();
    return 3;
  }

  else
  {
    sub_2956FAAD4(self->_adc, &v43);
    v13 = *&self->_distModels[0].polyDynamic[2];
    v49 = *self->_distModels[0].polyDynamic;
    v12 = v49;
    v50 = v13;
    v14 = *&self->_distModels[0].polyDynamic[6];
    v51 = *&self->_distModels[0].polyDynamic[4];
    v52 = v14;
    v16 = *&self->_distModels[0].polyBase[2];
    v45 = *self->_distModels[0].polyBase;
    v15 = v45;
    v46 = v16;
    v17 = *&self->_distModels[0].polyBase[6];
    v47 = *&self->_distModels[0].polyBase[4];
    v48 = v17;
    v18 = *&self->_distModels[0].opticalCenterX;
    v43 = *&self->_distModels[0].pixelSizeMM;
    v44 = v18;
    v19 = *&self->_undistModels[0].opticalCenterX;
    *&self->_distModels[0].pixelSizeMM = *&self->_undistModels[0].pixelSizeMM;
    *&self->_distModels[0].opticalCenterX = v19;
    v20 = v46;
    v21 = v48;
    v22 = v50;
    *&self->_distModels[0].polyBase[4] = v47;
    *&self->_distModels[0].polyBase[6] = v21;
    *self->_distModels[0].polyBase = v15;
    *&self->_distModels[0].polyBase[2] = v20;
    *self->_distModels[0].polyDynamic = v12;
    *&self->_distModels[0].polyDynamic[2] = v22;
    v23 = v52;
    *&self->_distModels[0].polyDynamic[4] = v51;
    *&self->_distModels[0].polyDynamic[6] = v23;
    v25 = *&self->_distModels[1].polyDynamic[2];
    v49 = *self->_distModels[1].polyDynamic;
    v24 = v49;
    v50 = v25;
    v26 = *&self->_distModels[1].polyDynamic[6];
    v51 = *&self->_distModels[1].polyDynamic[4];
    v52 = v26;
    v28 = *&self->_distModels[1].polyBase[2];
    v45 = *self->_distModels[1].polyBase;
    v27 = v45;
    v46 = v28;
    v29 = *&self->_distModels[1].polyBase[6];
    v47 = *&self->_distModels[1].polyBase[4];
    v48 = v29;
    v30 = *&self->_distModels[1].opticalCenterX;
    v43 = *&self->_distModels[1].pixelSizeMM;
    v44 = v30;
    v31 = *&self->_undistModels[1].opticalCenterX;
    *&self->_distModels[1].pixelSizeMM = *&self->_undistModels[1].pixelSizeMM;
    *&self->_distModels[1].opticalCenterX = v31;
    v32 = v46;
    v33 = v48;
    v34 = v50;
    *&self->_distModels[1].polyBase[4] = v47;
    *&self->_distModels[1].polyBase[6] = v33;
    *self->_distModels[1].polyBase = v27;
    *&self->_distModels[1].polyBase[2] = v32;
    *self->_distModels[1].polyDynamic = v24;
    *&self->_distModels[1].polyDynamic[2] = v34;
    v35 = v52;
    *&self->_distModels[1].polyDynamic[4] = v51;
    *&self->_distModels[1].polyDynamic[6] = v35;
    objc_msgSend__computeCanonicalDisparityScaleFactor(self, v36, v37, v38, v39, v40, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    result = 0;
    self->_correctedCalibration.canonicalDisparityScale = v42;
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
    if (objc_msgSend__computeAdcDistortionModels(self, a2, v2, v3, v4, v5))
    {
      v7 = *&self->_initialCalibration.canonicalDisparityScale;
      *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[10] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[10];
      *&self->_correctedCalibration.canonicalDisparityScale = v7;
      *&self->_correctedCalibration.calibrationDimensions[1] = *&self->_initialCalibration.calibrationDimensions[1];
      self->_correctedCalibration.pixelSize_um[1] = self->_initialCalibration.pixelSize_um[1];
      v8 = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[4];
      *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[2] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[2];
      *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[4] = v8;
      v9 = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[8];
      *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[6] = *&self->_initialCalibration.extrinRotRefefenceToAuxiliary[6];
      *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[8] = v9;
      v10 = *self->_initialCalibration.opticalCenterX;
      *self->_correctedCalibration.focalLengthPix = *self->_initialCalibration.focalLengthPix;
      *self->_correctedCalibration.opticalCenterX = v10;
      v11 = *self->_initialCalibration.extrinRotRefefenceToAuxiliary;
      *self->_correctedCalibration.opticalCenterY = *self->_initialCalibration.opticalCenterY;
      *self->_correctedCalibration.extrinRotRefefenceToAuxiliary = v11;
      if (!sub_2956FAA94(self->_adc, &self->_adaptiveCorrectionConfig))
      {
        keypointsCount = self->_keypointsCount;
        if (!keypointsCount)
        {
          bzero(__dst, 0x743uLL);
          v25 = 0;
          v26 = 0;
          goto LABEL_14;
        }

        adc = self->_adc;
        v14 = self->_adaptiveCorrectionKeypointsDistorted[0];
        v15 = self->_adaptiveCorrectionKeypointsDistorted[1];
        undistModels = self->_undistModels;
        v17 = &self->_undistModels[1];
        p_correctedCalibration = &self->_correctedCalibration;
        if (self->_temporalCorrectionEnabled)
        {
          v19 = sub_2956FAB30(adc, v14, v15, keypointsCount, undistModels, v17, p_correctedCalibration);
        }

        else
        {
          v19 = sub_2956FBDC4(adc, v14, v15, keypointsCount, undistModels, v17, p_correctedCalibration);
        }

        if (!v19)
        {
          sub_2956FAAD4(self->_adc, v58);
          v25 = *v58;
          v26 = v58[4];
          memcpy(__dst, &v58[5], sizeof(__dst));
LABEL_14:
          v28 = *&self->_distModels[0].polyDynamic[2];
          *&v58[96] = *self->_distModels[0].polyDynamic;
          v27 = *&v58[96];
          *&v58[112] = v28;
          v29 = *&self->_distModels[0].polyDynamic[6];
          *&v58[128] = *&self->_distModels[0].polyDynamic[4];
          *&v58[144] = v29;
          v31 = *&self->_distModels[0].polyBase[2];
          *&v58[32] = *self->_distModels[0].polyBase;
          v30 = *&v58[32];
          *&v58[48] = v31;
          v32 = *&self->_distModels[0].polyBase[6];
          *&v58[64] = *&self->_distModels[0].polyBase[4];
          *&v58[80] = v32;
          v33 = *&self->_distModels[0].opticalCenterX;
          *v58 = *&self->_distModels[0].pixelSizeMM;
          *&v58[16] = v33;
          v34 = *&self->_undistModels[0].opticalCenterX;
          *&self->_distModels[0].pixelSizeMM = *&self->_undistModels[0].pixelSizeMM;
          *&self->_distModels[0].opticalCenterX = v34;
          v35 = *&v58[48];
          v36 = *&v58[80];
          v37 = *&v58[112];
          *&self->_distModels[0].polyBase[4] = *&v58[64];
          *&self->_distModels[0].polyBase[6] = v36;
          *self->_distModels[0].polyBase = v30;
          *&self->_distModels[0].polyBase[2] = v35;
          *self->_distModels[0].polyDynamic = v27;
          *&self->_distModels[0].polyDynamic[2] = v37;
          v38 = *&v58[144];
          *&self->_distModels[0].polyDynamic[4] = *&v58[128];
          *&self->_distModels[0].polyDynamic[6] = v38;
          v40 = *&self->_distModels[1].polyDynamic[2];
          *&v58[96] = *self->_distModels[1].polyDynamic;
          v39 = *&v58[96];
          *&v58[112] = v40;
          v41 = *&self->_distModels[1].polyDynamic[6];
          *&v58[128] = *&self->_distModels[1].polyDynamic[4];
          *&v58[144] = v41;
          v43 = *&self->_distModels[1].polyBase[2];
          *&v58[32] = *self->_distModels[1].polyBase;
          v42 = *&v58[32];
          *&v58[48] = v43;
          v44 = *&self->_distModels[1].polyBase[6];
          *&v58[64] = *&self->_distModels[1].polyBase[4];
          *&v58[80] = v44;
          v45 = *&self->_distModels[1].opticalCenterX;
          *v58 = *&self->_distModels[1].pixelSizeMM;
          *&v58[16] = v45;
          v46 = *&self->_undistModels[1].opticalCenterX;
          *&self->_distModels[1].pixelSizeMM = *&self->_undistModels[1].pixelSizeMM;
          *&self->_distModels[1].opticalCenterX = v46;
          v47 = *&v58[48];
          v48 = *&v58[80];
          v49 = *&v58[112];
          *&self->_distModels[1].polyBase[4] = *&v58[64];
          *&self->_distModels[1].polyBase[6] = v48;
          *self->_distModels[1].polyBase = v42;
          *&self->_distModels[1].polyBase[2] = v47;
          *self->_distModels[1].polyDynamic = v39;
          *&self->_distModels[1].polyDynamic[2] = v49;
          v50 = *&v58[144];
          *&self->_distModels[1].polyDynamic[4] = *&v58[128];
          *&self->_distModels[1].polyDynamic[6] = v50;
          objc_msgSend__computeCanonicalDisparityScaleFactor(self, v20, v21, v22, v23, v24, *v58, *&v58[16], *&v58[32], *&v58[48], *&v58[64], *&v58[80], *&v58[96], *&v58[112], *&v58[128], *&v58[144]);
          self->_correctedCalibration.canonicalDisparityScale = v51;
          *v58 = v25;
          v58[4] = v26;
          memcpy(&v58[5], __dst, 0x743uLL);
          v56 = objc_msgSend__checkADCStatus_(self, v52, v58, v53, v54, v55);
          if (v56)
          {
            sub_295704F60();
          }

          return v56;
        }

        sub_295704EE4();
        return 3;
      }

      sub_295704E6C();
    }

    else
    {
      sub_295704DF8();
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
  v5 = 0;
  v6 = 0;
  v7 = 0;
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
  v94 = *MEMORY[0x29EDC0328];
  v93 = *MEMORY[0x29EDC0330];
  v9 = 1;
  __asm
  {
    FMOV            V1.2D, #-1.0
    FMOV            V0.2D, #0.5
  }

  v86 = _Q0;
  v87 = _Q1;
  while (1)
  {
    v16 = v9;
    v17 = &distortionOpticalCenter[v5];
    v18.f64[0] = v17->x;
    if (v17->x == 0.0 || (y = v17->y, y == 0.0) || (v20 = &rawSensorSize[v5], v20->f64[0] <= 0.0) || v20->f64[1] <= 0.0)
    {
      v23 = opticalCenterY[v5];
      v24 = &distModels[v5];
      v24->opticalCenterX = opticalCenterX[v5];
      v24->opticalCenterY = v23;
    }

    else
    {
      v21 = pixelBufferDimensions[v5];
      v22.i64[0] = v21.width;
      v22.i64[1] = v21.height;
      v18.f64[1] = y;
      *&distModels[v5].opticalCenterX = vmlaq_f64(vmulq_f64(vaddq_f64(vcvtq_f64_s64(v22), v87), v86), vcvtq_f64_f32(*&pixelBufferScalingFactor[8 * v5]), vsubq_f64(v18, vmulq_f64(vaddq_f64(*v20, v87), v86)));
    }

    v25 = pixelSize_um[v5] / 1000.0;
    v26 = &distModels[v5];
    v27 = ddf[v5] / v25;
    v26->pixelSizeMM = v25;
    v26->focalLengthPix = v27;
    v28 = *&v26->polyDynamic[2];
    p_pixelSizeMM = &undistModels[v5].pixelSizeMM;
    p_pixelSizeMM[6] = *v26->polyDynamic;
    p_pixelSizeMM[7] = v28;
    v30 = *&v26->polyDynamic[6];
    p_pixelSizeMM[8] = *&v26->polyDynamic[4];
    p_pixelSizeMM[9] = v30;
    v31 = *&v26->polyBase[2];
    p_pixelSizeMM[2] = *v26->polyBase;
    p_pixelSizeMM[3] = v31;
    v32 = *&v26->polyBase[6];
    p_pixelSizeMM[4] = *&v26->polyBase[4];
    p_pixelSizeMM[5] = v32;
    v33 = *&v26->opticalCenterX;
    *p_pixelSizeMM = *&v26->pixelSizeMM;
    p_pixelSizeMM[1] = v33;
    v34 = objc_msgSend_objectForKeyedSubscript_(self->_staticParametersByPortType, a2, portTypeName[v5], v2, v3, v4, *&v86, *&v87, pixelBufferScalingFactor, pixelBufferDimensions);
    v39 = objc_msgSend_objectForKeyedSubscript_(v34, v35, @"gdcCoefficients", v36, v37, v38);
    v44 = objc_msgSend_objectForKeyedSubscript_(v39, v40, v94, v41, v42, v43);

    if (!v44)
    {
      sub_2957051FC(v7);
      goto LABEL_24;
    }

    v45 = v44;
    v51 = objc_msgSend_bytes(v45, v46, v47, v48, v49, v50);
    if (!v51)
    {
      sub_29570516C(v7);
      goto LABEL_24;
    }

    v56 = v51;
    v57 = distModels;
    v58 = objc_msgSend_objectForKeyedSubscript_(self->_staticParametersByPortType, v52, portTypeName[v5], v53, v54, v55);
    v63 = objc_msgSend_objectForKeyedSubscript_(v58, v59, @"gdcCoefficients", v60, v61, v62);
    v68 = objc_msgSend_objectForKeyedSubscript_(v63, v64, v93, v65, v66, v67);

    if (!v68)
    {
      sub_2957050F4();
      goto LABEL_24;
    }

    v69 = v68;
    v7 = v68;
    v75 = objc_msgSend_bytes(v69, v70, v71, v72, v73, v74);
    if (!v75)
    {
      sub_295705064(v68);
      goto LABEL_24;
    }

    v6 = v44;
    v76 = (v56 + 32);
    v77 = (v75 + 32);
    polyDynamic = v26->polyDynamic;
    v79 = 1;
    v80 = 8;
    do
    {
      polyDynamic[32] = *(v76 - 8);
      v81 = *(v77 - 8);
      polyDynamic[40] = v81;
      v79 &= v81 == 0.0;
      v82 = *v76++;
      *(polyDynamic - 8) = v82;
      v83 = *v77++;
      *polyDynamic++ = v83;
      --v80;
    }

    while (v80);
    distModels = v57;
    if ((v79 & 1) == 0 && ddf[v5] <= 0.0)
    {
      break;
    }

    v9 = 0;
    v5 = 1;
    if ((v16 & 1) == 0)
    {

      v84 = 1;
      goto LABEL_18;
    }
  }

  sub_295704FD4(v68);
LABEL_24:
  v84 = 0;
LABEL_18:

  return v84;
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
    sub_29570528C();
    return 1;
  }

  if (!a3->var4)
  {
    sub_295705304();
    return 1;
  }

  if (!a3->var9)
  {
    sub_29570537C();
    return 2;
  }

  if (!a3->var13)
  {
    sub_2957053F4();
    return 1;
  }

  if (!a3->var19)
  {
    sub_29570546C();
    return 2;
  }

  if (!a3->var25)
  {
    sub_2957054E4();
    return 1;
  }

  if (!a3->var28)
  {
    sub_29570555C();
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

    sub_2957055D4();
  }

  else
  {
    sub_295705648();
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
  memset(v41, 0, 512);
  v40 = 0;
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
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
    v27 = vzip1q_s32(v13, v10);
    v28 = vzip1q_s32(v14, v15);
    v25 = vzip2q_s32(v13, vdupq_lane_s32(*&v10.f64[0], 1));
    v26 = vzip2q_s32(v14, v15);
    if (sub_2956FC2A8(&v35, &v33, &v31))
    {
      sub_2957056BC();
      return 3;
    }

    if (sub_2956FC5C0(&self->_correctedCalibration, v39, v35, v36, v37, v38, v33, v34, v31, v32))
    {
      sub_295705738();
      return 3;
    }

    if (sub_2956FC6B8(self->_adaptiveCorrectionKeypointsDistorted[0], self->_keypointsCount, self->_transposedKeypoints.xyPointsTeleTransposed, v33, v34))
    {
      sub_2957057B4();
      return 3;
    }

    if (sub_2956FC6B8(self->_adaptiveCorrectionKeypointsDistorted[1], self->_keypointsCount, self->_transposedKeypoints.xyPointsWideTransposed, v31, v32))
    {
      sub_295705830();
      return 3;
    }

    v30 = 0;
    memset(v29, 0, sizeof(v29));
    sub_2957063F0(self->_transposedKeypoints.xyPointsTeleTransposed, self->_transposedKeypoints.xyPointsWideTransposed, self->_keypointsCount, v39, &self->_adaptiveCorrectionConfig, v41, v29);
    v43.columns[0] = v33;
    v43.columns[1] = v34;
    v16 = __invert_f2(v43);
    v44.columns[0] = v31;
    v44.columns[1] = v32;
    v17 = __invert_f2(v44);
    if (sub_2956FC5C0(v29, &self->_correctedCalibration, v27, v25, v28, v26, v16.columns[0], v16.columns[1], v17.columns[0], v17.columns[1]))
    {
      sub_2957058AC();
      return 3;
    }
  }

  else
  {
    bzero(v41, 0x748uLL);
  }

  objc_msgSend__computeCanonicalDisparityScaleFactor(self, v18, v19, v20, v21, v22, *&v25, *&v26, *&v27, *&v28);
  self->_correctedCalibration.canonicalDisparityScale = v23;
  if (BYTE4(v41[0]))
  {
    if (v42)
    {
      return 0;
    }

    else
    {
      sub_2957059A0();
      return 2;
    }
  }

  else
  {
    sub_295705928();
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
  v22[2] = xmmword_29570C8F0;
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
  v158 = *self->_undistModels[0].polyDynamic;
  v159 = v4;
  v5 = *&self->_undistModels[0].polyDynamic[6];
  v160 = *&self->_undistModels[0].polyDynamic[4];
  v161 = v5;
  v6 = *&self->_undistModels[0].polyBase[2];
  v154 = *self->_undistModels[0].polyBase;
  v155 = v6;
  v7 = *&self->_undistModels[0].polyBase[6];
  v156 = *&self->_undistModels[0].polyBase[4];
  v157 = v7;
  v8 = *&self->_undistModels[0].opticalCenterX;
  v152 = *&self->_undistModels[0].pixelSizeMM;
  v153 = v8;
  x = self->_referenceFinalCropRect.origin.x;
  *&v8 = self->_referenceFinalCropRect.origin.y;
  v10 = x + self->_referenceFinalCropRect.size.width;
  v11 = *&v8 + self->_referenceFinalCropRect.size.height;
  v137.f64[0] = x;
  *&v137.f64[1] = v8;
  v138 = v10;
  v139 = v8;
  v140 = x;
  v141 = v11;
  v142 = v10;
  v143 = v11;
  v144 = v153;
  v145 = v8;
  v146 = v153;
  v147 = v11;
  v148 = x;
  v149 = *(&v153 + 1);
  v150 = v10;
  v151 = *(&v153 + 1);
  memset(v136, 0, sizeof(v136));
  sub_2956FC848(&v137, 8, &v152, v136);
  v17 = 0;
  __asm { FMOV            V0.2S, #1.0 }

  memset(v135, 0, sizeof(v135));
  do
  {
    *&v23 = vcvt_f32_f64(v136[v17]);
    *(&v23 + 1) = _D0;
    v135[v17++] = v23;
  }

  while (v17 != 8);
  v24 = 0;
  v133 = 0u;
  v134 = 0u;
  v25 = *anon_6b0;
  v26 = *(anon_6b0 + 1);
  v27 = *(anon_6b0 + 2);
  v28.i64[0] = 0x3F0000003F000000;
  v28.i64[1] = 0x3F0000003F000000;
  do
  {
    v29 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(v135[v24])), v26, *&v135[v24], 1), v27, v135[v24], 2);
    if (v29.f32[2] <= 0.0)
    {
      sub_295705C70();
      return -12780;
    }

    *(&v133 + (v24 & 1)) = vmlaq_f32(*(&v133 + (v24 & 1)), v28, vdivq_f32(v29, vdupq_laneq_s32(v29, 2)));
    ++v24;
  }

  while (v24 != 4);
  v128 = v27;
  v129 = v26;
  v130 = v25;
  v33 = vsubq_f32(v134, v133);
  v30 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v33, v33)));
  v31 = vrsqrte_f32(v30);
  v32 = vmul_f32(v31, vrsqrts_f32(v30.u32[0], vmul_f32(v31, v31)));
  *v33.f32 = vmul_n_f32(*v33.f32, vmul_f32(v32, vrsqrts_f32(v30.u32[0], vmul_f32(v32, v32))).f32[0]);
  __asm { FMOV            V2.2S, #-1.0 }

  *v25.f32 = vminnm_f32(vmaxnm_f32(*v33.f32, _D2), _D0);
  *self->_orientationVector = v25.i64[0];
  rectificationAngleStep = self->_rectificationAngleStep;
  if (rectificationAngleStep != 0.0)
  {
    v131 = v25;
    *v36.i32 = rectificationAngleStep * roundf(acosf(v25.f32[0]) / rectificationAngleStep);
    v37 = v131;
    v37.i32[0] = v131.i32[1];
    v38.i64[0] = 0x8000000080000000;
    v38.i64[1] = 0x8000000080000000;
    LODWORD(v127) = vbslq_s8(v38, v36, v37).u32[0];
    v39.f32[0] = cosf(*v36.i32);
    v132 = v39;
    v40 = sinf(v127);
    v25 = v132;
    v25.f32[1] = v40;
    *self->_orientationVector = v25.i64[0];
  }

  v41 = 0;
  *v33.f32 = vrev64_s32(*v25.f32);
  v47.i64[0] = 0;
  v47.i32[3] = 0;
  *&v47.i32[2] = -v25.f32[1];
  v42 = vdupq_lane_s32(*v33.f32, 1);
  v43 = v25;
  v43.i32[1] = 0;
  v44 = vzip1q_s32(v43, v33);
  v33.i64[0] = v25.i64[0];
  v45 = vzip2q_s32(v47, v42);
  v27.f32[0] = self->_correctedCalibration.focalLengthPix[0];
  v42.f64[0] = self->_correctedCalibration.opticalCenterX[0];
  v42.f64[1] = self->_correctedCalibration.opticalCenterY[0];
  v46 = vcvt_f32_f64(v42);
  v47.i64[1] = 0;
  *v47.i32 = 1.0 / v27.f32[0];
  v48.i32[0] = 0;
  v48.i64[1] = 0;
  v48.f32[1] = 1.0 / v27.f32[0];
  *v49.f32 = vdiv_f32(vneg_f32(v46), vdup_lane_s32(*v27.f32, 0));
  v49.i64[1] = COERCE_UNSIGNED_INT(1.0);
  v50 = v27.u32[0];
  v162 = COERCE_UNSIGNED_INT(1.0 / v27.f32[0]);
  v163 = v48.u64[0];
  v164 = v49;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  do
  {
    *(&v165 + v41) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, COERCE_FLOAT(*(&v162 + v41))), v45, *&v162.i8[v41], 1), xmmword_29570C8F0, *(&v162 + v41), 2);
    v41 += 16;
  }

  while (v41 != 48);
  v51 = 0;
  __asm { FMOV            V6.4S, #1.0 }

  v53.i64[1] = _Q6.i64[1];
  *v53.f32 = v46;
  v54.i32[0] = 0;
  v54.i64[1] = 0;
  v54.i32[1] = v27.i32[0];
  v162 = v165;
  v163 = v166;
  v164 = v167;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  do
  {
    *(&v165 + v51) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27.u32[0], COERCE_FLOAT(*(&v162 + v51))), v54, *&v162.i8[v51], 1), v53, *(&v162 + v51), 2);
    v51 += 16;
  }

  while (v51 != 48);
  v55 = 0;
  v56 = v165;
  v57 = v166;
  v58 = v167;
  v59 = vdupq_lane_s32(*v45.f32, 1);
  v60 = vzip1q_s32(v44, v45);
  v60.i32[2] = 0;
  v61 = vzip2q_s32(vzip1q_s32(v44, 0), v59);
  v62 = vdupq_laneq_s32(v44, 2);
  v62.i32[1] = 0;
  v62.i32[2] = 1.0;
  v162 = v47;
  v163 = v48;
  v164 = v49;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  do
  {
    *(&v165 + v55) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v60, COERCE_FLOAT(*(&v162 + v55))), v61, *&v162.i8[v55], 1), v62, *(&v162 + v55), 2);
    v55 += 16;
  }

  while (v55 != 48);
  v63 = 0;
  v162 = v165;
  v163 = v166;
  v164 = v167;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  do
  {
    *(&v165 + v63) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27.u32[0], COERCE_FLOAT(*(&v162 + v63))), v54, *&v162.i8[v63], 1), v53, *(&v162 + v63), 2);
    v63 += 16;
  }

  while (v63 != 48);
  v64 = 0;
  v65 = v165;
  v66 = v166;
  v67 = v167;
  v68 = *(anon_6b0 + 7);
  v69 = *(anon_6b0 + 8);
  v162 = *(anon_6b0 + 6);
  v163 = v68;
  v164 = v69;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  do
  {
    *(&v165 + v64) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*(&v162 + v64))), v57, *&v162.i8[v64], 1), v58, *(&v162 + v64), 2);
    v64 += 16;
  }

  while (v64 != 48);
  v70 = 0;
  v65.i32[3] = 0;
  v66.i32[3] = 0;
  v67.i32[3] = 0;
  v71 = v165.i64[0];
  v72 = v166;
  v73 = v167;
  *(anon_6b0 + 26) = v165.i32[2];
  *(anon_6b0 + 12) = v71;
  *(anon_6b0 + 30) = v72.i32[2];
  *(anon_6b0 + 14) = v72.i64[0];
  *(anon_6b0 + 34) = v73.i32[2];
  *(anon_6b0 + 16) = v73.i64[0];
  v162 = v65;
  v163 = v66;
  v164 = v67;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v74.i32[1] = v128.i32[1];
  do
  {
    *(&v165 + v70) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v130, COERCE_FLOAT(*(&v162 + v70))), v129, *&v162.i8[v70], 1), v128, *(&v162 + v70), 2);
    v70 += 16;
  }

  while (v70 != 48);
  v75 = 0;
  v76 = v165.i64[0];
  v77 = v166;
  v78 = v167;
  *(anon_6b0 + 2) = v165.i32[2];
  *(anon_6b0 + 6) = v77.i32[2];
  *anon_6b0 = v76;
  *(anon_6b0 + 2) = v77.i64[0];
  *(anon_6b0 + 10) = v78.i32[2];
  *(anon_6b0 + 4) = v78.i64[0];
  v79 = *(anon_6b0 + 3);
  v80 = *(anon_6b0 + 4);
  v81 = *(anon_6b0 + 5);
  v162 = v65;
  v163 = v66;
  v164 = v67;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  do
  {
    *(&v165 + v75) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v79, COERCE_FLOAT(*(&v162 + v75))), v80, *&v162.i8[v75], 1), v81, *(&v162 + v75), 2);
    v75 += 16;
  }

  while (v75 != 48);
  v82 = 0;
  v83 = v165.i64[0];
  v84 = v166;
  v85 = v167;
  *(anon_6b0 + 14) = v165.i32[2];
  *(anon_6b0 + 18) = v84.i32[2];
  *(anon_6b0 + 6) = v83;
  *(anon_6b0 + 8) = v84.i64[0];
  *(anon_6b0 + 22) = v85.i32[2];
  *(anon_6b0 + 10) = v85.i64[0];
  v86 = *(anon_6b0 + 6);
  v87 = *(anon_6b0 + 7);
  v88 = 0x80000000800000;
  v89 = vneg_f32(0x80000000800000);
  v90 = *(anon_6b0 + 8);
  do
  {
    v91 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v86, COERCE_FLOAT(v135[v82])), v87, *&v135[v82], 1), v90, v135[v82], 2);
    if (*&v91.i32[2] <= 0.0)
    {
      sub_295705CE4();
      return -12780;
    }

    v92 = vdiv_f32(*v91.i8, *&vdupq_laneq_s32(v91, 2));
    v89 = vminnm_f32(v89, v92);
    v88 = vmaxnm_f32(v88, v92);
    ++v82;
  }

  while (v82 != 8);
  v93 = 0;
  v94 = vcvt_f32_s32(self->_pixelBufferDimensions[0]);
  v95 = vdiv_f32(v94, vsub_f32(v88, v89));
  if (v95.f32[0] >= v95.f32[1])
  {
    v95.f32[0] = v95.f32[1];
  }

  *v74.i32 = v95.f32[0] * v27.f32[0];
  v96.i64[1] = _Q6.i64[1];
  *v96.f32 = vmla_n_f32(vmul_f32(v94, 0x3F0000003F000000), vsub_f32(v46, vmul_f32(vadd_f32(v89, v88), 0x3F0000003F000000)), v95.f32[0]);
  v97.i32[0] = 0;
  v97.i64[1] = 0;
  v97.i32[1] = v74.i32[0];
  v98.i64[1] = 0;
  *_Q6.f32 = vdiv_f32(vneg_f32(*v96.f32), vdup_lane_s32(v74, 0));
  LODWORD(self->_rectificationFocalLengthFactor) = v95.i32[0];
  v162 = v47;
  v163 = v48;
  v164 = v49;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  do
  {
    *(&v165 + v93) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v74.u32[0], COERCE_FLOAT(*(&v162 + v93))), v97, *&v162.i8[v93], 1), v96, *(&v162 + v93), 2);
    v93 += 16;
  }

  while (v93 != 48);
  v99 = 0;
  LODWORD(v100) = 0;
  *(&v100 + 1) = 1.0 / *v74.i32;
  _Q6.i32[3] = 0;
  v101 = v165;
  v102 = v166;
  v103 = v167;
  v98.i64[0] = COERCE_UNSIGNED_INT(1.0 / *v74.i32);
  v162 = v98;
  v163 = v100;
  v164 = _Q6;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  do
  {
    *(&v165 + v99) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v50, COERCE_FLOAT(*(&v162 + v99))), v54, *&v162.i8[v99], 1), v53, *(&v162 + v99), 2);
    v99 += 16;
  }

  while (v99 != 48);
  v104 = 0;
  v105 = v165;
  v106 = v166;
  v107 = v167;
  v162 = v86;
  v163 = v87;
  v164 = v90;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  do
  {
    *(&v165 + v104) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v101, COERCE_FLOAT(*(&v162 + v104))), v102, *&v162.i8[v104], 1), v103, *(&v162 + v104), 2);
    v104 += 16;
  }

  while (v104 != 48);
  v108 = 0;
  v105.i32[3] = 0;
  v106.i32[3] = 0;
  v107.i32[3] = 0;
  v109 = v165.i64[0];
  v110 = v166;
  v111 = v167;
  *(anon_6b0 + 26) = v165.i32[2];
  *(anon_6b0 + 30) = v110.i32[2];
  *(anon_6b0 + 12) = v109;
  *(anon_6b0 + 14) = v110.i64[0];
  *(anon_6b0 + 34) = v111.i32[2];
  *(anon_6b0 + 16) = v111.i64[0];
  v112 = *anon_6b0;
  v113 = *(anon_6b0 + 1);
  v114 = *(anon_6b0 + 2);
  v162 = v105;
  v163 = v106;
  v164 = v107;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  do
  {
    *(&v165 + v108) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v112, COERCE_FLOAT(*(&v162 + v108))), v113, *&v162.i8[v108], 1), v114, *(&v162 + v108), 2);
    v108 += 16;
  }

  while (v108 != 48);
  v115 = 0;
  v116 = v165.i64[0];
  v117 = v166;
  v118 = v167;
  *(anon_6b0 + 2) = v165.i32[2];
  *(anon_6b0 + 6) = v117.i32[2];
  *anon_6b0 = v116;
  *(anon_6b0 + 2) = v117.i64[0];
  *(anon_6b0 + 10) = v118.i32[2];
  *(anon_6b0 + 4) = v118.i64[0];
  v119 = *(anon_6b0 + 3);
  v120 = *(anon_6b0 + 4);
  v121 = *(anon_6b0 + 5);
  v162 = v105;
  v163 = v106;
  v164 = v107;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  do
  {
    *(&v165 + v115) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v119, COERCE_FLOAT(*(&v162 + v115))), v120, *&v162.i8[v115], 1), v121, *(&v162 + v115), 2);
    v115 += 16;
  }

  while (v115 != 48);
  v122 = v165.i64[0];
  v123 = v166;
  v124 = v167;
  *(anon_6b0 + 14) = v165.i32[2];
  *(anon_6b0 + 18) = v123.i32[2];
  *(anon_6b0 + 6) = v122;
  *(anon_6b0 + 8) = v123.i64[0];
  *(anon_6b0 + 22) = v124.i32[2];
  *(anon_6b0 + 10) = v124.i64[0];
  objc_msgSend__computeCanonicalDisparityScaleFactor(self, v12, v13, v14, v15, v16);
  result = 0;
  self->_correctedCalibration.canonicalDisparityScale = v126;
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
  v5 = sub_2956FD118(&self->_initialCalibration, 0, &v22, &v19, 0, &v16, 0);
  if (v5)
  {
    v8 = v5;
    sub_295705D58();
  }

  else
  {
    v6 = vaddq_f32(v18, vmlaq_n_f32(vmulq_n_f32(v16, (self->_pixelBufferDimensions[0].width + -1.0) * 0.5), v17, (self->_pixelBufferDimensions[0].height + -1.0) * 0.5));
    v7 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, v6.f32[0]), v20, *v6.f32, 1), v21, v6, 2);
    if (v7.f32[2] <= 0.1)
    {
      sub_295705DD0();
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