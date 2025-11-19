@interface NRFProgressiveBracketingParameters
- (NRFProgressiveBracketingParameters)initWithOptions:(id)a3 portType:(id)a4 statistics:(id)a5 mode:(int)a6 sphereOffsetEnabled:(BOOL)a7;
- (double)_computeMaxIntegrationTimeWithOptions:(id)a3 statistics:(id)a4;
- (double)_computeTotalIntegrationTimeFromFirstGroupParameters:(id)a3 nextGroupParameters:(id)a4 lastGroupParameters:(id)a5 numberOfGroups:(int)a6;
- (double)_selectBracketsAndComputeExposureTimeWithOption:(id)a3 statistics:(id)a4 getAllInfo:(BOOL)a5 updateDecision:(BOOL)a6 minTotalExposureTime:(double)a7;
- (double)computeTotalIntegrationTimeWithStatistics:(id)a3 forMode:(int)a4;
- (float)_estimateSNRatShutterScale:(float)a3 statistics:(id)a4 rawThumbnail:(float *)a5 thumbnailSorted:(BOOL)a6 clippingThreshold:(float)a7 numBrackets:(int)a8;
- (float)_getGroupExposureTime:(id)a3;
- (float)evZeroTargetGain;
- (float)evZeroTargetGainWithStatistics:(id)a3 maxNominalEVZeroIntegrationTime:(double)a4;
- (id)_lowLightFrameParametersWithStatistics:(id)a3 evRatio:(double)a4 maxEVZeroGain:(float)a5 maxNominalEVZeroIntegrationTime:(double)a6 maxIntegrationTime:(double)a7;
- (id)_truncateGroupParameters:(id)a3 maxTotalExpTime:(float)a4 minNumFrames:(unsigned int)a5;
- (id)currentBracketingParametersForGroup:(int)a3;
- (void)_createBracketGroup:(id)a3 statistics:(id)a4 evZeroRatios:(id)a5 maxEVZeroGain:(float)a6 maxNominalEVZeroIntegrationTime:(double)a7 maxIntegrationTime:(double)a8;
- (void)_preprocessThumbnailWithAEThumbnail:(unsigned int *)a3 processedThumbnail:(float *)a4 statistics:(id)a5 thumbSize:(int)a6 bitMask:(unsigned int)a7 bitShift:(int)a8;
@end

@implementation NRFProgressiveBracketingParameters

- (NRFProgressiveBracketingParameters)initWithOptions:(id)a3 portType:(id)a4 statistics:(id)a5 mode:(int)a6 sphereOffsetEnabled:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v19.receiver = self;
  v19.super_class = NRFProgressiveBracketingParameters;
  v16 = [(NRFProgressiveBracketingParameters *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_options, a3);
    objc_storeStrong(&v17->_portType, a4);
    objc_storeStrong(&v17->_statistics, a5);
    v17->_mode = a6;
    v17->_sphereOffsetEnabled = a7;
  }

  return v17;
}

- (float)evZeroTargetGain
{
  mode = self->_mode;
  options = self->_options;
  if (mode == 1)
  {
    v6 = off_29EDDC208;
  }

  else
  {
    v6 = off_29EDDC200;
  }

  v7 = objc_msgSend_objectForKeyedSubscript_(options, a2, *v6, v2);
  v10 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"MaxNominalEVZeroIntegrationTime", v9);
  objc_msgSend_doubleValue(v10, v11, v12, v13);
  v15 = v14;

  objc_msgSend_evZeroTargetGainWithStatistics_maxNominalEVZeroIntegrationTime_(self, v16, self->_statistics, v17, v15);
  LODWORD(v15) = v18;

  return *&v15;
}

- (float)evZeroTargetGainWithStatistics:(id)a3 maxNominalEVZeroIntegrationTime:(double)a4
{
  v5 = a3;
  objc_msgSend_aeAverage(v5, v6, v7, v8);
  v12 = 1.0;
  if (v13 > 0.0)
  {
    objc_msgSend_aeTarget(v5, v9, v10, v11);
    if (v14 > 0.0)
    {
      objc_msgSend_aeTarget(v5, v9, v10, v11);
      v16 = v15;
      objc_msgSend_aeAverage(v5, v17, v18, v19);
      v12 = (v16 / v20);
    }
  }

  objc_msgSend_integrationTime(v5, v9, v10, v11);
  if (v24 < a4)
  {
    objc_msgSend_integrationTime(v5, v21, v22, v23);
    a4 = v25;
  }

  objc_msgSend_integrationTime(v5, v21, v22, v23);
  v27 = v26 / a4;
  objc_msgSend_gain(v5, v28, v29, v30);
  *&v27 = v12 * (v27 * v31);

  return *&v27;
}

- (id)_lowLightFrameParametersWithStatistics:(id)a3 evRatio:(double)a4 maxEVZeroGain:(float)a5 maxNominalEVZeroIntegrationTime:(double)a6 maxIntegrationTime:(double)a7
{
  v12 = a3;
  objc_msgSend_integrationTime(v12, v13, v14, v15);
  v19 = a6;
  if (v20 < a6)
  {
    objc_msgSend_integrationTime(v12, v16, v17, v18);
    v19 = v21;
  }

  objc_msgSend_evZeroTargetGainWithStatistics_maxNominalEVZeroIntegrationTime_(self, v16, v12, v18, a6);
  if (v24 < a5)
  {
    objc_msgSend_evZeroTargetGainWithStatistics_maxNominalEVZeroIntegrationTime_(self, v22, v12, v23, a6);
    a5 = v25;
  }

  v26 = v19 * a5;
  if (a5 < 1.0)
  {
    v27 = 1.0;
  }

  else
  {
    v26 = v19;
    v27 = a5;
  }

  v28 = v26 * a4;
  if (v26 * a4 >= a7)
  {
    v28 = a7;
  }

  v29 = v26 * v27 / v28;
  if (v29 >= 1.0)
  {
    v30 = v28;
  }

  else
  {
    v30 = v28 * v29;
  }

  if (v29 >= 1.0)
  {
    v31 = v29;
  }

  else
  {
    v31 = 1.0;
  }

  v32 = [NRFProgressiveBracketingFrameParameters alloc];
  objc_msgSend_agc(v12, v33, v34, v35);
  *&v37 = v31;
  v40 = objc_msgSend_initWithIntegrationTime_gain_AGC_(v32, v38, v36, v39, v30, v37);

  return v40;
}

- (double)_computeTotalIntegrationTimeFromFirstGroupParameters:(id)a3 nextGroupParameters:(id)a4 lastGroupParameters:(id)a5 numberOfGroups:(int)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v57, v56, 16);
  v17 = 0.0;
  v18 = 0.0;
  if (v13)
  {
    v19 = v13;
    v20 = *v58;
    do
    {
      v21 = 0;
      do
      {
        if (*v58 != v20)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_integrationTime(*(*(&v57 + 1) + 8 * v21), v14, v15, v16);
        v18 = v18 + v22;
        ++v21;
      }

      while (v19 != v21);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v14, &v57, v56, 16);
    }

    while (v19);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v23 = v10;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v52, v51, 16);
  if (v25)
  {
    v29 = v25;
    v30 = *v53;
    v17 = 0.0;
    do
    {
      v31 = 0;
      do
      {
        if (*v53 != v30)
        {
          objc_enumerationMutation(v23);
        }

        objc_msgSend_integrationTime(*(*(&v52 + 1) + 8 * v31), v26, v27, v28);
        v17 = v17 + v32;
        ++v31;
      }

      while (v29 != v31);
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v52, v51, 16);
    }

    while (v29);
  }

  if (v11)
  {
    v33 = -2;
  }

  else
  {
    v33 = -1;
  }

  v49 = 0u;
  v50 = 0u;
  v34 = v18 + (v33 + a6) * v17;
  v47 = 0u;
  v48 = 0u;
  v35 = v11;
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v47, v46, 16);
  if (v37)
  {
    v41 = v37;
    v42 = *v48;
    do
    {
      v43 = 0;
      do
      {
        if (*v48 != v42)
        {
          objc_enumerationMutation(v35);
        }

        objc_msgSend_integrationTime(*(*(&v47 + 1) + 8 * v43), v38, v39, v40);
        v34 = v34 + v44;
        ++v43;
      }

      while (v41 != v43);
      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v47, v46, 16);
    }

    while (v41);
  }

  return v34;
}

- (double)computeTotalIntegrationTimeWithStatistics:(id)a3 forMode:(int)a4
{
  v8 = a3;
  if (a4 == 1)
  {
    v13 = objc_msgSend_objectForKeyedSubscript_(self->_options, v6, @"MinMode", v7);
    objc_msgSend__selectBracketsAndComputeExposureTimeWithOption_statistics_getAllInfo_updateDecision_minTotalExposureTime_(self, v14, v13, v8, 0, 0, 0.0);
    v16 = v15;

    v10 = objc_msgSend_objectForKeyedSubscript_(self->_options, v17, @"MaxMode", v18);
    objc_msgSend__selectBracketsAndComputeExposureTimeWithOption_statistics_getAllInfo_updateDecision_minTotalExposureTime_(self, v19, v10, v8, 0, 0, v16 + 1.0);
    goto LABEL_5;
  }

  v9 = 0.0;
  if (!a4)
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(self->_options, v6, @"MinMode", v7);
    objc_msgSend__selectBracketsAndComputeExposureTimeWithOption_statistics_getAllInfo_updateDecision_minTotalExposureTime_(self, v11, v10, v8, 0, 0, 0.0);
LABEL_5:
    v9 = v12;
  }

  return v9;
}

- (double)_computeMaxIntegrationTimeWithOptions:(id)a3 statistics:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9 = objc_msgSend_objectForKeyedSubscript_(v5, v7, @"MaxIntegrationTime", v8);
  objc_msgSend_doubleValue(v9, v10, v11, v12);
  v14 = v13;

  if ((objc_msgSend_stationary(v6, v15, v16, v17) & 1) == 0)
  {
    v20 = objc_msgSend_objectForKeyedSubscript_(v5, v18, @"MotionDataBiasErrorThresholdToCapIntegrationTime", v19);
    v23 = objc_msgSend_objectForKeyedSubscript_(v5, v21, @"MotionDataBiasErrorBasedIntegrationTimeCap", v22);
    objc_msgSend_motionDataBiasErrorEstimate(v6, v24, v25, v26);
    v28 = v27;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = v20;
      v29 = v20;
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v98, v97, 16);
      if (v31)
      {
        v35 = v31;
        LODWORD(v36) = 0;
        v37 = *v99;
        v38 = 0.0;
        v39 = v14;
        do
        {
          v40 = 0;
          v36 = v36;
          do
          {
            if (*v99 != v37)
            {
              objc_enumerationMutation(v29);
            }

            objc_msgSend_floatValue(*(*(&v98 + 1) + 8 * v40), v32, v33, v34);
            if (v28 > v41 && v41 > v38)
            {
              v43 = v41;
              v44 = objc_msgSend_objectAtIndexedSubscript_(v23, v32, v36, v34);
              objc_msgSend_doubleValue(v44, v45, v46, v47);
              v39 = v14;
              if (v50 < v14)
              {
                v51 = objc_msgSend_objectAtIndexedSubscript_(v23, v48, v36, v49);
                objc_msgSend_doubleValue(v51, v52, v53, v54);
                v39 = v55;
              }

              v38 = v43;
            }

            ++v36;
            ++v40;
          }

          while (v35 != v40);
          v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v32, &v98, v97, 16);
        }

        while (v35);
      }

      else
      {
        v39 = v14;
      }

      v14 = v39;
      v20 = v96;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_floatValue(v20, v56, v58, v57);
          if (v28 > v60)
          {
            objc_msgSend_doubleValue(v23, v56, v59, v57);
            if (v62 < v14)
            {
              objc_msgSend_doubleValue(v23, v56, v61, v57);
              v14 = v63;
            }
          }
        }
      }
    }

    v64 = objc_msgSend_objectForKeyedSubscript_(v5, v56, @"Handheld", v57);
    v67 = objc_msgSend_objectForKeyedSubscript_(v64, v65, @"MaxIntegrationTimeForHuman", v66);
    if (v67)
    {
      v71 = v67;
      if (objc_msgSend_numberOfHumanBodies(v6, v68, v69, v70) <= 0)
      {
        v77 = objc_msgSend_numberOfHumanFaces(v6, v72, v73, v74);

        if (v77 <= 0)
        {
LABEL_34:

          goto LABEL_35;
        }
      }

      else
      {
      }

      v64 = objc_msgSend_objectForKeyedSubscript_(v5, v75, @"Handheld", v76);
      v80 = objc_msgSend_objectForKeyedSubscript_(v64, v78, @"MaxIntegrationTimeForHuman", v79);
      objc_msgSend_doubleValue(v80, v81, v82, v83);
      if (v14 >= v86)
      {
        v87 = objc_msgSend_objectForKeyedSubscript_(v5, v84, @"Handheld", v85);
        v90 = objc_msgSend_objectForKeyedSubscript_(v87, v88, @"MaxIntegrationTimeForHuman", v89);
        objc_msgSend_doubleValue(v90, v91, v92, v93);
        v14 = v94;
      }
    }

    goto LABEL_34;
  }

LABEL_35:

  return v14;
}

- (double)_selectBracketsAndComputeExposureTimeWithOption:(id)a3 statistics:(id)a4 getAllInfo:(BOOL)a5 updateDecision:(BOOL)a6 minTotalExposureTime:(double)a7
{
  v349 = a6;
  v345 = a5;
  v9 = a3;
  v10 = a4;
  v13 = objc_msgSend_objectForKeyedSubscript_(v9, v11, @"SNRClippingThreshold", v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v353 = v17;

  v20 = objc_msgSend_objectForKeyedSubscript_(v9, v18, @"MotionAEThreshold", v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);
  v25 = v24;

  v28 = objc_msgSend_objectForKeyedSubscript_(v9, v26, @"UseShorterBracketsForHuman", v27);
  v344 = objc_msgSend_BOOLValue(v28, v29, v30, v31);

  v32 = [GainValueArray alloc];
  v35 = objc_msgSend_objectForKeyedSubscript_(v9, v33, @"MinAGC", v34);
  v38 = objc_msgSend_initWithArray_(v32, v36, v35, v37);

  objc_msgSend_gain(v10, v39, v40, v41);
  v43 = sub_29584472C(v38, v42);
  v46 = objc_msgSend_objectForKeyedSubscript_(v9, v44, @"PreviewIntegrationTimeThresholdToCapNumOfFrames", v45);
  objc_msgSend_doubleValue(v46, v47, v48, v49);
  v51 = v50;

  v54 = objc_msgSend_objectForKeyedSubscript_(v9, v52, @"PreviewIntegrationTimeBasedNumberOfFramesCap", v53);
  v342 = objc_msgSend_intValue(v54, v55, v56, v57);

  v60 = objc_msgSend_objectForKeyedSubscript_(v9, v58, @"MaxNominalEVZeroIntegrationTime", v59);
  objc_msgSend_doubleValue(v60, v61, v62, v63);
  v65 = v64;

  objc_msgSend__computeMaxIntegrationTimeWithOptions_statistics_(self, v66, v9, v10);
  v68 = v67;
  v72 = objc_msgSend_stationary(v10, v69, v70, v71);
  v75 = off_29EDDC218;
  if (!v72)
  {
    v75 = off_29EDDC210;
  }

  v76 = *v75;
  v77 = objc_msgSend_objectForKeyedSubscript_(v9, v73, *v75, v74);
  v80 = objc_msgSend_objectForKeyedSubscript_(v77, v78, @"BracketGroupTable", v79);

  v83 = objc_msgSend_objectForKeyedSubscript_(v9, v81, v76, v82);
  v86 = objc_msgSend_objectForKeyedSubscript_(v83, v84, @"MaxTotalExposureTime", v85);
  objc_msgSend_floatValue(v86, v87, v88, v89);
  v91 = v90;

  v92 = [GainValueArray alloc];
  v95 = objc_msgSend_objectForKeyedSubscript_(v9, v93, v76, v94);
  v98 = objc_msgSend_objectForKeyedSubscript_(v95, v96, @"MinTotalSNRBound", v97);
  v101 = objc_msgSend_initWithArray_(v92, v99, v98, v100);

  objc_msgSend_gain(v10, v102, v103, v104);
  v106 = sub_29584472C(v101, v105);
  v107 = __exp10f(v106 / 10.0);
  v354 = v9;
  v110 = objc_msgSend_objectForKeyedSubscript_(v9, v108, v76, v109);
  v113 = objc_msgSend_objectForKeyedSubscript_(v110, v111, @"MaxEVZeroGain", v112);
  objc_msgSend_floatValue(v113, v114, v115, v116);
  v118 = v117;

  v365 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v119, v120, v121);
  v364 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v122, v123, v124);
  v128 = objc_msgSend_count(v80, v125, v126, v127);
  v129 = malloc_type_calloc(v128, 4uLL, 0x100004052888210uLL);
  v133 = v129;
  v352 = v80;
  if (!v129)
  {
    sub_2958B3478();
    v234 = 0;
    v340 = 0;
    v187 = 0;
    v235 = -1.0;
    goto LABEL_107;
  }

  v361 = self;
  v362 = v129;
  v350 = v101;
  v351 = v38;
  v363 = v10;
  size = objc_msgSend_count(v80, v130, v131, v132);
  v382 = 0u;
  v383 = 0u;
  v384 = 0u;
  v385 = 0u;
  obj = v80;
  v135 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v134, &v382, v381, 16);
  if (v135)
  {
    v138 = v135;
    LODWORD(v139) = 0;
    v359 = *v383;
    do
    {
      v140 = 0;
      v141 = v139;
      do
      {
        if (*v383 != v359)
        {
          objc_enumerationMutation(obj);
        }

        v142 = *(*(&v382 + 1) + 8 * v140);
        v143 = objc_msgSend_objectForKeyedSubscript_(v142, v136, @"SNRBound", v137);
        objc_msgSend_floatValue(v143, v144, v145, v146);
        v139 = v141 + 1;
        v362[v141] = v147;

        v151 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v148, v149, v150);
        v154 = objc_msgSend_objectForKeyedSubscript_(v142, v152, @"FirstGroupEV0Ratios", v153);
        LODWORD(v155) = v118;
        objc_msgSend__createBracketGroup_statistics_evZeroRatios_maxEVZeroGain_maxNominalEVZeroIntegrationTime_maxIntegrationTime_(v361, v156, v151, v10, v154, v155, v65, v68);

        objc_msgSend_addObject_(v365, v157, v151, v158);
        v162 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v159, v160, v161);
        v165 = objc_msgSend_objectForKeyedSubscript_(v142, v163, @"NextGroupEV0Ratios", v164);
        LODWORD(v166) = v118;
        objc_msgSend__createBracketGroup_statistics_evZeroRatios_maxEVZeroGain_maxNominalEVZeroIntegrationTime_maxIntegrationTime_(v361, v167, v162, v10, v165, v166, v65, v68);

        objc_msgSend_addObject_(v364, v168, v162, v169);
        ++v140;
        v141 = v139;
      }

      while (v138 != v140);
      v138 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v136, &v382, v381, 16);
    }

    while (v138);
  }

  v358 = v43;

  v173 = objc_msgSend_aeThumbnail(v10, v170, v171, v172);
  v174 = v173;
  v178 = objc_msgSend_bytes(v174, v175, v176, v177);

  v182 = objc_msgSend_aeThumbnailWidth(v10, v179, v180, v181);
  v186 = objc_msgSend_aeThumbnailHeight(v10, v183, v184, v185);
  if (v178)
  {
    v187 = size;
    if (!size)
    {
      sub_2958B3414();
      v234 = 0;
      v340 = 0;
      v235 = -1.0;
      v101 = v350;
      v38 = v351;
      v133 = v362;
      goto LABEL_107;
    }

    v188 = v186;
    v189 = malloc_type_malloc(4 * size, 0x100004052888210uLL);
    v133 = v362;
    if (!v189)
    {
      sub_2958B33B0();
      v234 = 0;
      v340 = 0;
      v187 = 0;
      v235 = -1.0;
      goto LABEL_105;
    }

    v190 = v189;
    v191 = (v188 * v182);
    v192 = malloc_type_malloc(8 * size, 0x100004000313F17uLL);
    v193 = v192;
    v194 = 0;
    v195 = v192 + 1;
    do
    {
      *(v195 - 1) = v362[v194];
      *v195 = v194;
      v195 += 2;
      ++v194;
    }

    while (size != v194);
    qsort(v192, size, 8uLL, sub_295856960);
    v196 = 0;
    v197 = v193 + 1;
    v198 = v361;
    do
    {
      v362[v196] = *(v197 - 1);
      v199 = *v197;
      v197 += 2;
      *&v190[v196 * 4] = v199;
      ++v196;
    }

    while (size != v196);
    free(v193);
    sizea = 4 * v191;
    v200 = malloc_type_malloc(sizea, 0x100004052888210uLL);
    objc_msgSend__preprocessThumbnailWithAEThumbnail_processedThumbnail_statistics_thumbSize_bitMask_bitShift_(v361, v201, v178, v200, v10, v191, 1047552, 10);
    objc_msgSend_integrationTime(v10, v202, v203, v204);
    v210 = 1.0;
    if (v208 > v65)
    {
      objc_msgSend_integrationTime(v10, v205, v206, v207);
      v208 = v65 / v211;
      v210 = v208;
    }

    *&v208 = v210;
    v357 = v200;
    LODWORD(v209) = v353;
    objc_msgSend__estimateSNRatShutterScale_statistics_rawThumbnail_thumbnailSorted_clippingThreshold_numBrackets_(v361, v205, v10, v200, 0, 1, v208, v209);
    v213 = 0;
    v216 = logf(fmaxf(v212, 1.0e-20)) * 4.34;
    obja = v191;
    while (*&v362[v213] >= v216)
    {
      if (v187 == ++v213)
      {
        LODWORD(v213) = 0;
        break;
      }
    }

    v187 = objc_msgSend_objectAtIndexedSubscript_(v365, v214, *&v190[4 * v213], v215);
    v219 = objc_msgSend_objectAtIndexedSubscript_(v364, v217, *&v190[4 * v213], v218);
    v226 = v25 < objc_msgSend_motionFromAEMatrix(v10, v220, v221, v222);
    if (v344 && (objc_msgSend_numberOfHumanBodies(v10, v223, v224, v225) > 0 || objc_msgSend_numberOfHumanFaces(v10, v223, v224, v225) >= 1))
    {
      v226 = 1;
    }

    if (v213 && v226)
    {
      v227 = v213 - 1;
      v228 = objc_msgSend_objectAtIndexedSubscript_(v365, v223, *&v190[4 * (v213 - 1)], v225);

      v231 = objc_msgSend_objectAtIndexedSubscript_(v364, v229, *&v190[4 * v227], v230);

      v187 = v228;
    }

    else
    {
      v231 = v219;
    }

    objc_msgSend_integrationTime(v10, v223, v224, v225);
    if (v239 < v51)
    {
      v240 = objc_msgSend_count(v187, v236, v237, v238);
      if (v342 <= 4)
      {
        v243 = 4;
      }

      else
      {
        v243 = v342;
      }

      if (v240 < v243)
      {
        v243 = objc_msgSend_count(v187, v241, v242, v243);
      }

      v244 = objc_msgSend_subarrayWithRange_(v187, v241, 0, v243);

      v234 = 0;
      v233 = 1;
      v187 = v244;
      v246 = v345;
LABEL_62:
      v360 = v231;
      objc_msgSend__computeTotalIntegrationTimeFromFirstGroupParameters_nextGroupParameters_lastGroupParameters_numberOfGroups_(v361, v245, v187, v231, v234, v233);
      v235 = v274;
      if (v246)
      {
        v346 = v178;
        v379 = 0u;
        v380 = 0u;
        if (v358 >= 8)
        {
          v275 = 8;
        }

        else
        {
          v275 = v358;
        }

        v377 = 0uLL;
        v378 = 0uLL;
        v276 = v187;
        v278 = objc_msgSend_countByEnumeratingWithState_objects_count_(v276, v277, &v377, v376, 16);
        if (v278)
        {
          v282 = v278;
          v283 = *v378;
          do
          {
            for (i = 0; i != v282; ++i)
            {
              if (*v378 != v283)
              {
                objc_enumerationMutation(v276);
              }

              v285 = *(*(&v377 + 1) + 8 * i);
              objc_msgSend_gain(v285, v279, v280, v281);
              v289 = *&v290 <= v275;
              *&v290 = v275;
              if (v289)
              {
                objc_msgSend_gain(v285, v286, v287, v288, v290);
              }

              objc_msgSend_setAGC_(v285, v286, *&v290, v288);
            }

            v282 = objc_msgSend_countByEnumeratingWithState_objects_count_(v276, v279, &v377, v376, 16);
          }

          while (v282);
        }

        v374 = 0u;
        v375 = 0u;
        v372 = 0u;
        v373 = 0u;
        v291 = v360;
        v293 = objc_msgSend_countByEnumeratingWithState_objects_count_(v291, v292, &v372, v371, 16);
        if (v293)
        {
          v297 = v293;
          v298 = *v373;
          do
          {
            for (j = 0; j != v297; ++j)
            {
              if (*v373 != v298)
              {
                objc_enumerationMutation(v291);
              }

              v300 = *(*(&v372 + 1) + 8 * j);
              objc_msgSend_gain(v300, v294, v295, v296);
              v289 = *&v304 <= v275;
              *&v304 = v275;
              if (v289)
              {
                objc_msgSend_gain(v300, v301, v302, v303, v304);
              }

              objc_msgSend_setAGC_(v300, v301, *&v304, v303);
            }

            v297 = objc_msgSend_countByEnumeratingWithState_objects_count_(v291, v294, &v372, v371, 16);
          }

          while (v297);
        }

        v369 = 0u;
        v370 = 0u;
        v367 = 0u;
        v368 = 0u;
        v305 = v234;
        v307 = objc_msgSend_countByEnumeratingWithState_objects_count_(v305, v306, &v367, v366, 16);
        if (v307)
        {
          v311 = v307;
          v312 = *v368;
          do
          {
            for (k = 0; k != v311; ++k)
            {
              if (*v368 != v312)
              {
                objc_enumerationMutation(v305);
              }

              v314 = *(*(&v367 + 1) + 8 * k);
              objc_msgSend_gain(v314, v308, v309, v310);
              v289 = *&v318 <= v275;
              *&v318 = v275;
              if (v289)
              {
                objc_msgSend_gain(v314, v315, v316, v317, v318);
              }

              objc_msgSend_setAGC_(v314, v315, *&v318, v317);
            }

            v311 = objc_msgSend_countByEnumeratingWithState_objects_count_(v305, v308, &v367, v366, 16);
          }

          while (v311);
        }

        v321 = objc_msgSend_objectForKeyedSubscript_(v354, v319, @"SNRThresholdToRecomputeAWBCCM", v320);
        objc_msgSend_floatValue(v321, v322, v323, v324);
        v326 = __exp10f(v325 / 10.0);

        v327 = malloc_type_malloc(sizea, 0x100004052888210uLL);
        v198 = v361;
        v10 = v363;
        objc_msgSend__preprocessThumbnailWithAEThumbnail_processedThumbnail_statistics_thumbSize_bitMask_bitShift_(v361, v328, v346, v327, v363, obja, 1023, 0);
        v329 = malloc_type_malloc(sizea, 0x100004052888210uLL);
        objc_msgSend__preprocessThumbnailWithAEThumbnail_processedThumbnail_statistics_thumbSize_bitMask_bitShift_(v361, v330, v346, v329, v363, obja, 1072693248, 20);
        *&v331 = v210;
        LODWORD(v332) = v353;
        objc_msgSend__estimateSNRatShutterScale_statistics_rawThumbnail_thumbnailSorted_clippingThreshold_numBrackets_(v361, v333, v363, v327, 0, 1, v331, v332);
        v335 = v334;
        *&v336 = v210;
        LODWORD(v337) = v353;
        objc_msgSend__estimateSNRatShutterScale_statistics_rawThumbnail_thumbnailSorted_clippingThreshold_numBrackets_(v361, v338, v363, v329, 0, 1, v336, v337);
        if (v335 < v339)
        {
          v339 = v335;
        }

        if (v339 >= v216)
        {
          v339 = v216;
        }

        v232 = v339 < v326;
        free(v327);
        free(v329);
        v133 = v362;
      }

      else
      {
        v232 = 0;
      }

      free(v357);
      free(v190);
      goto LABEL_103;
    }

    objc_msgSend__getGroupExposureTime_(v361, v236, v187, v238);
    v248 = v247;
    objc_msgSend__getGroupExposureTime_(v361, v249, v231, v250);
    v253 = *&v252;
    if (v248 <= v91)
    {
      LODWORD(v252) = v353;
      objc_msgSend__getGroupSNR_statistics_rawThumbnail_thumbnailSorted_snrClippingThreshold_(v361, v251, v187, v10, v357, 1, v252);
      v256 = v255;
      LODWORD(v257) = v353;
      objc_msgSend__getGroupSNR_statistics_rawThumbnail_thumbnailSorted_snrClippingThreshold_(v361, v258, v231, v10, v357, 1, v257);
      v261 = floorf((v91 - v248) / v253);
      if (v261 <= 0.0)
      {
        v261 = 0.0;
      }

      v262 = v261;
      if (v260 < 0.0001)
      {
        v260 = 0.0001;
      }

      v263 = llroundf((v107 - v256) / v260);
      if (v262 >= v263)
      {
        v264 = v263;
      }

      else
      {
        v264 = v261;
      }

      if (v263 >= 0)
      {
        v233 = (v264 + 1);
      }

      else
      {
        v233 = 1;
      }

      if (v262 >= v263)
      {
        v234 = 0;
        v270 = a7;
        objc_msgSend__computeTotalIntegrationTimeFromFirstGroupParameters_nextGroupParameters_lastGroupParameters_numberOfGroups_(v361, v259, v187, v231, 0, v233);
        goto LABEL_58;
      }

      objc_msgSend__computeTotalIntegrationTimeFromFirstGroupParameters_nextGroupParameters_lastGroupParameters_numberOfGroups_(v361, v259, v187, v231, 0, v233);
      *&v265 = v265;
      *&v265 = ((floorf(v91) + 0.5) + -0.0001) - *&v265;
      v254 = objc_msgSend__truncateGroupParameters_maxTotalExpTime_minNumFrames_(v361, v266, v231, 0, v265);
      if (objc_msgSend_count(v254, v267, v268, v269))
      {
        v233 = (v233 + 1);
        v254 = v254;
        v234 = v254;
      }

      else
      {
        v234 = 0;
      }
    }

    else
    {
      *&v252 = floorf(v91) + 0.5;
      objc_msgSend__truncateGroupParameters_maxTotalExpTime_minNumFrames_(v361, v251, v187, 3, v252);
      v234 = 0;
      v254 = v187;
      v187 = v233 = 1;
    }

    v270 = a7;

    objc_msgSend__computeTotalIntegrationTimeFromFirstGroupParameters_nextGroupParameters_lastGroupParameters_numberOfGroups_(v361, v272, v187, v231, v234, v233);
LABEL_58:
    v246 = v345;
    if (v271 < v270)
    {
      v273 = ceil((v270 - v271) / v253);
      if (v273 <= 1.0)
      {
        v273 = 1.0;
      }

      v233 = (v233 + v273);
    }

    goto LABEL_62;
  }

  v232 = 0;
  LODWORD(v233) = 0;
  v234 = 0;
  v360 = 0;
  v187 = 0;
  v216 = 0.0;
  v235 = 0.0;
  v198 = v361;
  v133 = v362;
LABEL_103:
  if (!v349)
  {
    v101 = v350;
    v38 = v351;
    v340 = v360;
    goto LABEL_107;
  }

  objc_storeStrong(&v198->_firstGroupParameters, v187);
  v340 = v360;
  objc_storeStrong(&v198->_nextGroupParameters, v360);
  objc_storeStrong(&v198->_lastGroupParameters, v234);
  v198->_numberOfGroups = v233;
  v198->_minAGC = v358;
  v198->_previewSNR = v216;
  v198->_recomputeAWBCCM = v232;
LABEL_105:
  v101 = v350;
  v38 = v351;
LABEL_107:
  free(v133);

  return v235;
}

- (id)currentBracketingParametersForGroup:(int)a3
{
  if (a3 == 1)
  {
    mode = self->_mode;
    if (mode == 1)
    {
      v13 = objc_msgSend_objectForKeyedSubscript_(self->_options, a2, @"MinMode", v3);
      objc_msgSend__selectBracketsAndComputeExposureTimeWithOption_statistics_getAllInfo_updateDecision_minTotalExposureTime_(self, v14, v13, self->_statistics, 0, 0, 0.0);
      self->_totalIntegrationTime = v15;

      v6 = objc_msgSend_objectForKeyedSubscript_(self->_options, v16, @"MaxMode", v17);
      objc_msgSend__selectBracketsAndComputeExposureTimeWithOption_statistics_getAllInfo_updateDecision_minTotalExposureTime_(self, v18, v6, self->_statistics, 1, 1, self->_totalIntegrationTime + 1.0);
    }

    else
    {
      if (mode)
      {
LABEL_12:
        v12 = 8;
        goto LABEL_13;
      }

      v6 = objc_msgSend_objectForKeyedSubscript_(self->_options, a2, @"MinMode", v3);
      objc_msgSend__selectBracketsAndComputeExposureTimeWithOption_statistics_getAllInfo_updateDecision_minTotalExposureTime_(self, v7, v6, self->_statistics, 1, 1, 0.0);
    }

    self->_totalIntegrationTime = v8;

    goto LABEL_12;
  }

  numberOfGroups = self->_numberOfGroups;
  if (numberOfGroups == a3)
  {
    lastGroupParameters = self->_lastGroupParameters;
    if (lastGroupParameters)
    {
      goto LABEL_14;
    }
  }

  if (numberOfGroups < a3)
  {
    v11 = MEMORY[0x29EDB8E90];
    goto LABEL_15;
  }

  v12 = 16;
LABEL_13:
  lastGroupParameters = *(&self->super.isa + v12);
LABEL_14:
  v11 = lastGroupParameters;
LABEL_15:

  return v11;
}

- (float)_estimateSNRatShutterScale:(float)a3 statistics:(id)a4 rawThumbnail:(float *)a5 thumbnailSorted:(BOOL)a6 clippingThreshold:(float)a7 numBrackets:(int)a8
{
  v12 = a4;
  objc_msgSend_readNoise_1x(v12, v13, v14, v15);
  v103 = v16;
  objc_msgSend_readNoise_1x(v12, v17, v18, v19);
  v102 = v20;
  objc_msgSend_readNoise_8x(v12, v21, v22, v23);
  v101 = v24;
  objc_msgSend_readNoise_8x(v12, v25, v26, v27);
  v99 = v28;
  objc_msgSend_readNoise_1x(v12, v29, v30, v31);
  v100 = v32;
  objc_msgSend_readNoise_1x(v12, v33, v34, v35);
  v98 = v36;
  objc_msgSend_readNoise_8x(v12, v37, v38, v39);
  v41 = v40;
  objc_msgSend_readNoise_8x(v12, v42, v43, v44);
  v46 = v45;
  objc_msgSend_conversionGain(v12, v47, v48, v49);
  v51 = v50;
  objc_msgSend_agc(v12, v52, v53, v54);
  v56 = v55;
  objc_msgSend_agc(v12, v57, v58, v59);
  v61 = v60;
  objc_msgSend_agc(v12, v62, v63, v64);
  v66 = v65;
  objc_msgSend_ispDGain(v12, v67, v68, v69);
  v71 = v70;
  v75 = objc_msgSend_aeThumbnailWidth(v12, v72, v73, v74);
  v82 = objc_msgSend_aeThumbnailHeight(v12, v76, v77, v78) * v75;
  if (!a6)
  {
    qsort(a5, v82, 4uLL, sub_29585697C);
  }

  v83 = (v82 / 2);
  if (v82 < 1)
  {
    v85 = 0;
    v90 = 0.0;
    v89 = 0.0;
  }

  else
  {
    v84 = 0;
    v85 = 0;
    v86 = (v51 / 1023.0) * v66;
    v87 = a3 * a3;
    v88 = ((v51 / 1023.0) * ((v51 / 1023.0) * ((((v41 * v46) * -1.0159) + ((v100 * v98) * 1.0159)) + ((((v101 * v99) * 1.0159) + ((v103 * v102) * -0.0159)) * (v56 * v61))))) * a8;
    v89 = 0.0;
    v90 = 0.0;
    do
    {
      v91 = a5[v84];
      v92 = v91 * v91;
      if (v91 <= (a7 / v71))
      {
        v90 = v90 + ((v87 * v92) / (v88 + ((v91 * a3) * v86)));
        ++v85;
      }

      if (v84 < v83)
      {
        v89 = v89 + ((v87 * v92) / (v88 + ((v91 * a3) * v86)));
      }

      ++v84;
    }

    while (v82 != v84);
  }

  v93 = v85 < v83;
  if (v85 > v83)
  {
    LODWORD(v83) = v85;
  }

  if (v93)
  {
    v94 = v89;
  }

  else
  {
    v94 = v90;
  }

  v95 = (v94 / v83);
  objc_msgSend_bias(v12, v79, v80, v81);
  *&v95 = v95 / exp2(v96);

  return *&v95;
}

- (float)_getGroupExposureTime:(id)a3
{
  v3 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v16, v15, 16);
  if (v5)
  {
    v9 = v5;
    v10 = *v17;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_integrationTime(*(*(&v16 + 1) + 8 * i), v6, v7, v8);
        *&v13 = v13;
        v11 = v11 + *&v13;
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v16, v15, 16);
    }

    while (v9);
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

- (id)_truncateGroupParameters:(id)a3 maxTotalExpTime:(float)a4 minNumFrames:(unsigned int)a5
{
  v7 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v26, v25, 16);
  if (v9)
  {
    v13 = v9;
    v14 = 0;
    v15 = *v27;
    v16 = 0.0;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_integrationTime(*(*(&v26 + 1) + 8 * i), v10, v11, v12);
        *&v18 = v18;
        v16 = v16 + *&v18;
        if (v16 < a4)
        {
          ++v14;
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v26, v25, 16);
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v19 = objc_msgSend_count(v7, v10, v11, v12);
  if (v14 <= a5)
  {
    v22 = a5;
  }

  else
  {
    v22 = v14;
  }

  if (v19 < v22)
  {
    v22 = objc_msgSend_count(v7, v20, v21, v22);
  }

  v23 = objc_msgSend_subarrayWithRange_(v7, v20, 0, v22);

  return v23;
}

- (void)_createBracketGroup:(id)a3 statistics:(id)a4 evZeroRatios:(id)a5 maxEVZeroGain:(float)a6 maxNominalEVZeroIntegrationTime:(double)a7 maxIntegrationTime:(double)a8
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v28, v27, 16);
  if (v15)
  {
    v19 = v15;
    v20 = *v29;
    do
    {
      v21 = 0;
      do
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v13);
        }

        objc_msgSend_doubleValue(*(*(&v28 + 1) + 8 * v21), v16, v17, v18);
        v24 = objc_msgSend__lowLightFrameParametersWithStatistics_evRatio_maxEVZeroGain_maxNominalEVZeroIntegrationTime_maxIntegrationTime_(self, v22, v12, v23);
        objc_msgSend_addObject_(v11, v25, v24, v26);

        ++v21;
      }

      while (v19 != v21);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v28, v27, 16);
    }

    while (v19);
  }
}

- (void)_preprocessThumbnailWithAEThumbnail:(unsigned int *)a3 processedThumbnail:(float *)a4 statistics:(id)a5 thumbSize:(int)a6 bitMask:(unsigned int)a7 bitShift:(int)a8
{
  v8 = a8;
  v13 = a5;
  v16 = objc_msgSend_objectForKeyedSubscript_(self->_options, v14, @"MinMode", v15);
  v19 = objc_msgSend_objectForKeyedSubscript_(v16, v17, @"LensShadingCorrectionCoefficients", v18);

  v22 = objc_msgSend_objectForKeyedSubscript_(self->_options, v20, @"MinMode", v21);
  v25 = objc_msgSend_objectForKeyedSubscript_(v22, v23, @"LensShadingCorrectionCentre", v24);

  if (v19)
  {
    v26 = v25 == 0;
  }

  else
  {
    v26 = 1;
  }

  if (!v26)
  {
    v96 = v25;
    v97 = a7;
    v98 = v8;
    v110 = 0;
    v111 = 0;
    v112 = 0.0;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v27 = v19;
    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v106, v105, 16);
    if (v29)
    {
      v33 = v29;
      v34 = 0;
      v35 = *v107;
      do
      {
        v36 = 0;
        v37 = v34;
        do
        {
          if (*v107 != v35)
          {
            objc_enumerationMutation(v27);
          }

          objc_msgSend_floatValue(*(*(&v106 + 1) + 8 * v36), v30, v31, v32);
          v34 = v37 + 1;
          *(&v110 + v37) = v38;
          ++v36;
          ++v37;
        }

        while (v33 != v36);
        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v30, &v106, v105, 16);
      }

      while (v33);
    }

    v25 = v96;
    v41 = objc_msgSend_objectAtIndex_(v96, v39, 0, v40);
    objc_msgSend_floatValue(v41, v42, v43, v44);
    v46 = v45;

    v49 = objc_msgSend_objectAtIndex_(v96, v47, 1, v48);
    objc_msgSend_floatValue(v49, v50, v51, v52);
    v54 = v53;

    v103 = v54;
    v104 = v46;
    if (v46 < 0.5)
    {
      v46 = 1.0 - v46;
    }

    if (v54 < 0.5)
    {
      v54 = 1.0 - v54;
    }

    v58 = objc_msgSend_aeThumbnailWidth(v13, v55, v56, v57);
    v62 = objc_msgSend_aeThumbnailHeight(v13, v59, v60, v61);
    objc_msgSend_ispDGain(v13, v63, v64, v65);
    v67 = v66;
    objc_msgSend_sensorDGain(v13, v68, v69, v70);
    v72 = v71;
    objc_msgSend_ispDGainRangeExpansionFactor(v13, v73, v74, v75);
    if (a6 >= 1)
    {
      v80 = 0;
      v101 = *&v110;
      v102 = (v67 * v72) / v79;
      v100 = *(&v110 + 1);
      v81 = v111;
      v82 = v112;
      v83 = sqrtf((v54 * v54) + (v46 * v46));
      do
      {
        v84 = ((a3[v80] & v97) >> v98) / 1023.0;
        a4[v80] = v84;
        v85 = v80 / objc_msgSend_aeThumbnailWidth(v13, v76, v77, v78);
        v89 = objc_msgSend_aeThumbnailWidth(v13, v86, v87, v88);
        v90 = (((v85 + 0.5) * (0.9 / v62)) + 0.05) - v103;
        v91 = ((((v80 % v89) + 0.5) * (0.9 / v58)) + 0.05) - v104;
        v92 = sqrtf((v90 * v90) + (v91 * v91)) / v83;
        v93 = ((v101 * (v92 * v92)) + 1.0) + (v100 * powf(v92, 4.0));
        v94 = v93 + (*&v81 * powf(v92, 6.0));
        v95 = v94 + (*(&v81 + 1) * powf(v92, 8.0));
        a4[v80] = a4[v80] / (v102 * (v95 + (v82 * powf(v92, 10.0))));
        ++v80;
      }

      while (a6 != v80);
    }
  }
}

@end