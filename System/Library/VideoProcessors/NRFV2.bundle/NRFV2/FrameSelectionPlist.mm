@interface FrameSelectionPlist
- (int)_setModelWeights:(id)weights weights:(id *)a4;
- (int)readPlist:(id)plist;
- (void)applyOverrides;
@end

@implementation FrameSelectionPlist

- (int)_setModelWeights:(id)weights weights:(id *)a4
{
  weightsCopy = weights;
  a4->var0 = 0.0;
  a4->var1 = 0.0;
  a4->var3 = 0.0;
  a4->var4 = 0.0;
  v8 = objc_msgSend_objectForKeyedSubscript_(weightsCopy, v6, @"CornerWeight", v7);

  if (!v8)
  {
    sub_2958AF4F0(&v20);
LABEL_9:
    v17 = v20;
    goto LABEL_5;
  }

  v11 = objc_msgSend_objectForKeyedSubscript_(weightsCopy, v9, @"FocusWeight", v10);

  if (!v11)
  {
    sub_2958AF454(&v20);
    goto LABEL_9;
  }

  v14 = objc_msgSend_objectForKeyedSubscript_(weightsCopy, v12, @"GyroWeight", v13);

  if (!v14)
  {
    sub_2958AF3B8(&v20);
    goto LABEL_9;
  }

  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 3221225472;
  v19[2] = sub_2958425A4;
  v19[3] = &unk_29EDDC330;
  v19[4] = a4;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(weightsCopy, v15, v19, v16);
  v17 = 0;
LABEL_5:

  return v17;
}

- (int)readPlist:(id)plist
{
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  plistCopy = plist;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(plistCopy, v5, &v57, v56, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v58;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v58 != v10)
      {
        objc_enumerationMutation(plistCopy);
      }

      v12 = *(*(&v57 + 1) + 8 * v11);
      if (objc_msgSend_isEqualToString_(v12, v7, @"ReferenceFrameSelection", v8))
      {
        v15 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v13, @"ReferenceFrameSelection", v14);
        self->enableReferenceSelectionWithCombinedWeight = objc_msgSend_cmi_BOOLValueForKey_defaultValue_found_(v15, v16, @"EnableReferenceSelectionWithCombinedWeight", 0, 0);
        self->enableReferenceSelectionWithFaceFocusScore = objc_msgSend_cmi_BOOLValueForKey_defaultValue_found_(v15, v17, @"EnableReferenceSelectionWithFaceFocusScore", 0, 0);
        v20 = objc_msgSend_objectForKeyedSubscript_(v15, v18, @"ReferenceSelectionRegressionWeightShortFrame", v19);
        v22 = objc_msgSend__setModelWeights_weights_(self, v21, v20, &self->referenceSelectionRegressionWeightShortFrame);

        if (v22)
        {
          sub_2958AF76C(v22, v61);
          goto LABEL_24;
        }

        v25 = objc_msgSend_objectForKeyedSubscript_(v15, v23, @"ReferenceSelectionRegressionWeightLongFrame", v24);
        v27 = objc_msgSend__setModelWeights_weights_(self, v26, v25, &self->referenceSelectionRegressionWeightLongFrame);

        if (v27)
        {
          sub_2958AF80C(v27, v61);
LABEL_24:
          v54 = v61[0];

          goto LABEL_20;
        }
      }

      else
      {
        if (!objc_msgSend_isEqualToString_(v12, v13, @"BlurryFrameRejection", v14))
        {
          if (!objc_msgSend_isEqualToString_(v12, v28, @"BlinkDetection", v29))
          {
            break;
          }

          v45 = objc_opt_new();
          blinkDetectionPlist = self->blinkDetectionPlist;
          self->blinkDetectionPlist = v45;

          v47 = self->blinkDetectionPlist;
          v50 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v48, @"BlinkDetection", v49);
          Plist = objc_msgSend_readPlist_(v47, v51, v50, v52);

          if (Plist)
          {
            sub_2958AF58C(Plist, v61);
            v54 = v61[0];
            goto LABEL_20;
          }

          goto LABEL_17;
        }

        v15 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v28, @"BlurryFrameRejection", v29);
        self->enableBlurFrameDetection = objc_msgSend_cmi_BOOLValueForKey_defaultValue_found_(v15, v30, @"EnableBlurFrameDetection", 0, 0);
        v33 = objc_msgSend_objectForKeyedSubscript_(v15, v31, @"BlurFrameRejectionRegressionWeightShortFrame", v32);
        v35 = objc_msgSend__setModelWeights_weights_(self, v34, v33, &self->blurFrameRejectionRegressionWeightShortFrame);

        if (v35)
        {
          sub_2958AF62C(v35, v61);
          goto LABEL_24;
        }

        v38 = objc_msgSend_objectForKeyedSubscript_(v15, v36, @"BlurFrameRejectionRegressionWeightLongFrame", v37);
        v40 = objc_msgSend__setModelWeights_weights_(self, v39, v38, &self->blurFrameRejectionRegressionWeightLongFrame);

        if (v40)
        {
          sub_2958AF6CC(v40, v61);
          goto LABEL_24;
        }

        objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v15, v41, @"BlurFrameWeightAdjustmentLeftLimit", 0, 0.0);
        self->blurFrameWeightAdjustementLeftLimit = v42;
        objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v15, v43, @"BlurFrameWeightAdjustmentRightLimit", 0, 0.0);
        self->blurFrameWeightAdjustementRightLimit = v44;
      }

LABEL_17:
      if (v9 == ++v11)
      {
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(plistCopy, v7, &v57, v56, 16);
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v54 = 0;
LABEL_20:

  return v54;
}

- (void)applyOverrides
{
  blinkDetectionPlist = self->blinkDetectionPlist;
  if (blinkDetectionPlist)
  {
    objc_msgSend_applyOverrides(blinkDetectionPlist, a2, v2, v3);
  }
}

@end