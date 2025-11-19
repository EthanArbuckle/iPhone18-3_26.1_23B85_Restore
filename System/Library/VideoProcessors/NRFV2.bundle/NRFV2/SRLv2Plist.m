@interface SRLv2Plist
- (int)readPlist:(id)a3;
@end

@implementation SRLv2Plist

- (int)readPlist:(id)a3
{
  v70 = 0;
  v4 = a3;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v5, @"MaskThreshold", &v70, 0.0);
  v69 = v70;
  self->maskThreshold = v6;
  v70 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v7, @"MinFaceSize", &v70, 0.0);
  v68 = v70;
  self->minFaceSize = v8;
  v70 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v9, @"MaxCurveBoost", &v70, 0.0);
  v67 = v70;
  self->maxCurveBoost = v10;
  v70 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v11, @"MinCurveBoost", &v70, 0.0);
  v66 = v70;
  self->minCurveBoost = v12;
  v70 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v13, @"MaxTargetRatioDarkening", &v70, 0.0);
  v65 = v70;
  self->maxTargetRatioDarkening = v14;
  v70 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v15, @"MaxTargetRatioLimit", &v70, 0.0);
  v64 = v70;
  self->maxTargetRatioLimit = v16;
  v70 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v17, @"BiasFactorSRLv2", &v70, 0.0);
  v63 = v70;
  self->biasFactorSRLv2 = v18;
  v70 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v19, @"ToneSimilaritySigma", &v70, 0.0);
  v62 = v70;
  self->toneSimilaritySigma = v20;
  v70 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v21, @"FaceExpDifThreshold", &v70, 0.0);
  v61 = v70;
  self->faceExpDifThreshold = v22;
  self->relightOnlyPersonMask = objc_msgSend_cmi_BOOLValueForKey_defaultValue_found_(v4, v23, @"RelightOnlyPersonMask", 0, 0);
  v70 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v24, @"TargetMedian_I", &v70, 0.0);
  v60 = v70;
  self->targetMedian_I = v25;
  v70 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v26, @"TargetMedian_II", &v70, 0.0);
  v59 = v70;
  self->targetMedian_II = v27;
  v70 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v28, @"TargetMedian_III", &v70, 0.0);
  v58 = v70;
  self->targetMedian_III = v29;
  v70 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v30, @"TargetMedian_IV", &v70, 0.0);
  v31 = v70;
  self->targetMedian_IV = v32;
  v70 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v33, @"TargetMedian_V", &v70, 0.0);
  v34 = v70;
  self->targetMedian_V = v35;
  v70 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v36, @"TargetMedian_VI", &v70, 0.0);
  v37 = v70;
  self->targetMedian_VI = v38;
  v70 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v39, @"MaxBoost_I", &v70, 0.0);
  v40 = v70;
  self->maxBoost_I = v41;
  v70 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v42, @"MaxBoost_II", &v70, 0.0);
  v43 = v70;
  self->maxBoost_II = v44;
  v70 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v45, @"MaxBoost_III", &v70, 0.0);
  v46 = v70;
  self->maxBoost_III = v47;
  v70 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v48, @"MaxBoost_IV", &v70, 0.0);
  v49 = v70;
  self->maxBoost_IV = v50;
  v70 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v51, @"MaxBoost_V", &v70, 0.0);
  v52 = v70;
  self->maxBoost_V = v53;
  v70 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v54, @"MaxBoost_VI", &v70, 0.0);
  v56 = v55;

  if ((v70 & v52 & v49 & v46 & v43 & v40 & v37 & v34 & v31 & v58 & v59 & v60 & v61 & v62 & v63 & v64) & (v65 & v66 & v67 & v68 & v69))
  {
    result = 0;
  }

  else
  {
    result = 25;
  }

  self->maxBoost_VI = v56;
  return result;
}

@end