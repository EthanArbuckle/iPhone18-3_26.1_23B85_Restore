@interface SyntheticReferencePlist
- (int)_readDeepShadowRecoveryBandData:(id)a3;
- (int)_readHighlightRecoveryBandData:(id)a3;
- (int)readPlist:(id)a3;
@end

@implementation SyntheticReferencePlist

- (int)_readHighlightRecoveryBandData:(id)a3
{
  v5 = objc_msgSend_objectForKeyedSubscript_(a3, a2, @"HighlightRecover", v3);
  v8 = v5;
  if (!v5)
  {
    sub_2958AEC24(v42);
LABEL_15:
    v33 = v42[0];
    goto LABEL_12;
  }

  v9 = objc_msgSend_valueForKey_(v5, v6, @"Bands", v7);
  if (!v9)
  {
    sub_2958AEB88(v42);
    goto LABEL_15;
  }

  v10 = v9;
  v11 = objc_opt_new();
  highlightRecoveryBands = self->highlightRecoveryBands;
  self->highlightRecoveryBands = v11;

  if (self->highlightRecoveryBands)
  {
    v35 = v8;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v10;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v38, v37, 16);
    if (v14)
    {
      v15 = v14;
      v16 = *v39;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v39 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v38 + 1) + 8 * i);
          v19 = objc_opt_new();
          objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v18, v20, @"Ev0SifrMatchThreshold", 0, 0.0);
          v19[2] = v21;
          objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v18, v22, @"Ev0BrightnessSmoothStepStart", 0, 0.0);
          v19[3] = v23;
          objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v18, v24, @"Ev0BrightnessSmoothStepEnd", 0, 0.0);
          v19[4] = v25;
          objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v18, v26, @"SifrHighSnrSmoothStepStart", 0, 0.0);
          v19[5] = v27;
          objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v18, v28, @"SifrHighSnrSmoothStepEnd", 0, 0.0);
          v19[6] = v29;
          objc_msgSend_addObject_(self->highlightRecoveryBands, v30, v19, v31);
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v38, v37, 16);
      }

      while (v15);
    }

    v33 = 0;
    v8 = v35;
  }

  else
  {
    sub_2958AEB10(v10);
    v33 = -1;
  }

LABEL_12:

  return v33;
}

- (int)_readDeepShadowRecoveryBandData:(id)a3
{
  v5 = objc_msgSend_objectForKeyedSubscript_(a3, a2, @"DeepShadowRecover", v3);
  v8 = v5;
  if (!v5)
  {
    sub_2958AF1F4(v153);
LABEL_41:
    v144 = v153[0];
    goto LABEL_38;
  }

  v9 = objc_msgSend_valueForKey_(v5, v6, @"Bands", v7);
  if (!v9)
  {
    sub_2958AF158(v153);
    goto LABEL_41;
  }

  v10 = v9;
  v11 = objc_opt_new();
  deepShadowRecoveryBands = self->deepShadowRecoveryBands;
  self->deepShadowRecoveryBands = v11;

  if (!self->deepShadowRecoveryBands)
  {
    sub_2958AF0E0(v10);
    v144 = -1;
    goto LABEL_38;
  }

  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  obj = v10;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v149, v148, 16);
  if (!v14)
  {
    v144 = 0;
    goto LABEL_37;
  }

  v15 = v14;
  v146 = v8;
  v16 = *v150;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v150 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v149 + 1) + 8 * i);
      v19 = objc_opt_new();
      v20 = [GainValueArray alloc];
      v23 = objc_msgSend_objectForKeyedSubscript_(v18, v21, @"Ev0DeepShadowSmoothStepStart", v22);
      v26 = objc_msgSend_initWithArray_(v20, v24, v23, v25);
      v27 = v19[1];
      v19[1] = v26;

      v28 = [GainValueArray alloc];
      v31 = objc_msgSend_objectForKeyedSubscript_(v18, v29, @"Ev0DeepShadowSmoothStepEnd", v30);
      v34 = objc_msgSend_initWithArray_(v28, v32, v31, v33);
      v35 = v19[2];
      v19[2] = v34;

      v36 = [GainValueArray alloc];
      v39 = objc_msgSend_objectForKeyedSubscript_(v18, v37, @"EdgeMatchThresholdStart", v38);
      v42 = objc_msgSend_initWithArray_(v36, v40, v39, v41);
      v43 = v19[3];
      v19[3] = v42;

      v44 = [GainValueArray alloc];
      v47 = objc_msgSend_objectForKeyedSubscript_(v18, v45, @"EdgeMatchThresholdEnd", v46);
      v50 = objc_msgSend_initWithArray_(v44, v48, v47, v49);
      v51 = v19[4];
      v19[4] = v50;

      v52 = [GainValueArray alloc];
      v55 = objc_msgSend_objectForKeyedSubscript_(v18, v53, @"ClrMatchThresholdStart", v54);
      v58 = objc_msgSend_initWithArray_(v52, v56, v55, v57);
      v59 = v19[5];
      v19[5] = v58;

      v60 = [GainValueArray alloc];
      v63 = objc_msgSend_objectForKeyedSubscript_(v18, v61, @"ClrMatchThresholdEnd", v62);
      v66 = objc_msgSend_initWithArray_(v60, v64, v63, v65);
      v67 = v19[6];
      v19[6] = v66;

      v68 = [GainValueArray alloc];
      v71 = objc_msgSend_objectForKeyedSubscript_(v18, v69, @"ShadowSigmaCorrectionNode0", v70);
      v74 = objc_msgSend_initWithArray_(v68, v72, v71, v73);
      v75 = v19[7];
      v19[7] = v74;

      v76 = [GainValueArray alloc];
      v79 = objc_msgSend_objectForKeyedSubscript_(v18, v77, @"ShadowSigmaCorrectionNode1", v78);
      v82 = objc_msgSend_initWithArray_(v76, v80, v79, v81);
      v83 = v19[8];
      v19[8] = v82;

      v84 = [GainValueArray alloc];
      v87 = objc_msgSend_objectForKeyedSubscript_(v18, v85, @"EdgeThresholdStart", v86);
      v90 = objc_msgSend_initWithArray_(v84, v88, v87, v89);
      v91 = v19[9];
      v19[9] = v90;

      v92 = [GainValueArray alloc];
      v95 = objc_msgSend_objectForKeyedSubscript_(v18, v93, @"EdgeThresholdEnd", v94);
      v98 = objc_msgSend_initWithArray_(v92, v96, v95, v97);
      v99 = v19[10];
      v19[10] = v98;

      v100 = [GainValueArray alloc];
      v103 = objc_msgSend_objectForKeyedSubscript_(v18, v101, @"EdgeGhostBoost", v102);
      v106 = objc_msgSend_initWithArray_(v100, v104, v103, v105);
      v107 = v19[11];
      v19[11] = v106;

      if ((objc_msgSend_isValid(v19[1], v108, v109, v110) & 1) == 0)
      {
        sub_2958AECC0();
LABEL_35:

        v144 = -1;
        goto LABEL_36;
      }

      if ((objc_msgSend_isValid(v19[2], v111, v112, v113) & 1) == 0)
      {
        sub_2958AED20();
        goto LABEL_35;
      }

      if ((objc_msgSend_isValid(v19[3], v114, v115, v116) & 1) == 0)
      {
        sub_2958AED80();
        goto LABEL_35;
      }

      if ((objc_msgSend_isValid(v19[4], v117, v118, v119) & 1) == 0)
      {
        sub_2958AEDE0();
        goto LABEL_35;
      }

      if ((objc_msgSend_isValid(v19[5], v120, v121, v122) & 1) == 0)
      {
        sub_2958AEE40();
        goto LABEL_35;
      }

      if ((objc_msgSend_isValid(v19[6], v123, v124, v125) & 1) == 0)
      {
        sub_2958AEEA0();
        goto LABEL_35;
      }

      if ((objc_msgSend_isValid(v19[7], v126, v127, v128) & 1) == 0)
      {
        sub_2958AEF00();
        goto LABEL_35;
      }

      if ((objc_msgSend_isValid(v19[8], v129, v130, v131) & 1) == 0)
      {
        sub_2958AEF60();
        goto LABEL_35;
      }

      if ((objc_msgSend_isValid(v19[9], v132, v133, v134) & 1) == 0)
      {
        sub_2958AEFC0();
        goto LABEL_35;
      }

      if ((objc_msgSend_isValid(v19[10], v135, v136, v137) & 1) == 0)
      {
        sub_2958AF020();
        goto LABEL_35;
      }

      if ((objc_msgSend_isValid(v19[11], v138, v139, v140) & 1) == 0)
      {
        sub_2958AF080();
        goto LABEL_35;
      }

      objc_msgSend_addObject_(self->deepShadowRecoveryBands, v141, v19, v142);
    }

    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v143, &v149, v148, 16);
    if (v15)
    {
      continue;
    }

    break;
  }

  v144 = 0;
LABEL_36:
  v8 = v146;
LABEL_37:

LABEL_38:
  return v144;
}

- (int)readPlist:(id)a3
{
  v4 = a3;
  HighlightRecoveryBandData = objc_msgSend__readHighlightRecoveryBandData_(self, v5, v4, v6);
  if (HighlightRecoveryBandData)
  {
    v37 = HighlightRecoveryBandData;
    sub_2958AF290();
  }

  else
  {
    DeepShadowRecoveryBandData = objc_msgSend__readDeepShadowRecoveryBandData_(self, v8, v4, v9);
    if (DeepShadowRecoveryBandData)
    {
      v37 = DeepShadowRecoveryBandData;
      sub_2958AF2F4();
    }

    else
    {
      self->grayGhostingDetectionBand = objc_msgSend_cmi_intValueForKey_defaultValue_found_(v4, v11, @"GrayGhostingDetectionBand", 0, 0);
      objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v12, @"GrayGhostingCutoff", 0, 0.0);
      self->grayGhostingCutoff = v13;
      objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v14, @"GrayGhostingEV0EVMDifferenceThreshold", 0, 0.0);
      self->grayGhostingEV0EVMDifferenceThreshold = v15;
      objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v16, @"GrayGhostingEV0WeightThreshold", 0, 0.0);
      self->grayGhostingEV0WeightThreshold = v17;
      objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v18, @"GrayGhostingClippingThreshold", 0, 0.0);
      self->grayGhostingClippingThreshold = v19;
      objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v20, @"MotionCutoff", 0, 0.0);
      self->motionCutoff = v21;
      objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v22, @"MotionDetectionSifrEitCutoffHigh", 0, 0.0);
      self->motionDetectionSifrEitCutoffHigh = v23;
      objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v24, @"MotionDetectionSifrEitCutoffLow", 0, 0.0);
      self->motionDetectionSifrEitCutoffLow = v25;
      v26 = [GainValueArray alloc];
      v29 = objc_msgSend_objectForKeyedSubscript_(v4, v27, @"SyntheticReferencePedestal", v28);
      v32 = objc_msgSend_initWithArray_(v26, v30, v29, v31);
      syntheticReferencePedestal = self->syntheticReferencePedestal;
      self->syntheticReferencePedestal = v32;

      v37 = 0;
      if ((objc_msgSend_isValid(self->syntheticReferencePedestal, v34, v35, v36) & 1) == 0)
      {
        sub_2958AF358();
        v37 = -1;
      }
    }
  }

  return v37;
}

@end