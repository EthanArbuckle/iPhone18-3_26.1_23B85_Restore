@interface APOdmlAnalyticsModelTraining
+ (id)_versionAndIdentifiersFromRecordInfo:(id)info isCounterfactual:(BOOL)counterfactual;
@end

@implementation APOdmlAnalyticsModelTraining

+ (id)_versionAndIdentifiersFromRecordInfo:(id)info isCounterfactual:(BOOL)counterfactual
{
  counterfactualCopy = counterfactual;
  infoCopy = info;
  v8 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7);
  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%d", 4);
  objc_msgSend_setValue_forKey_(v8, v11, v10, @"ODMLVersion");

  if (infoCopy)
  {
    v13 = objc_msgSend_objectForKey_(infoCopy, v12, @"PlacementType");
    v14 = counterfactualCopy;
    v17 = objc_msgSend_unsignedIntegerValue(v13, v15, v16);
    v19 = objc_msgSend_keyForTypes_placementType_assetManagerType_(APOdmlPFLUtilities, v18, @"TuriTrialTreatmentID", v17, counterfactualCopy);
    v21 = objc_msgSend_objectForKey_(infoCopy, v20, v19);

    objc_msgSend_setValue_forKey_(v8, v22, v21, @"trialTreatmentID");
    v25 = objc_msgSend_unsignedIntegerValue(v13, v23, v24);
    v27 = objc_msgSend_keyForTypes_placementType_assetManagerType_(APOdmlPFLUtilities, v26, @"TuriTrialExperimentID", v25, v14);
    v29 = objc_msgSend_objectForKey_(infoCopy, v28, v27);

    objc_msgSend_setValue_forKey_(v8, v30, v29, @"trialExperimentID");
    v33 = objc_msgSend_unsignedIntegerValue(v13, v31, v32);
    v35 = objc_msgSend_keyForTypes_placementType_assetManagerType_(APOdmlPFLUtilities, v34, @"TuriTrialDeploymentID", v33, v14);
    v37 = objc_msgSend_objectForKey_(infoCopy, v36, v35);

    v40 = objc_msgSend_stringValue(v37, v38, v39);
    objc_msgSend_setValue_forKey_(v8, v41, v40, @"trialDeploymentID");
  }

  return v8;
}

@end