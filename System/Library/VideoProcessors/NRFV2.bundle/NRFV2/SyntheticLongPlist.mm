@interface SyntheticLongPlist
- (int)readBandData:(id)data;
- (int)readPlist:(id)plist;
@end

@implementation SyntheticLongPlist

- (int)readBandData:(id)data
{
  v5 = objc_msgSend_valueForKey_(data, a2, @"Bands", v3);
  if (!v5)
  {
    sub_2958AE794(v93);
    v84 = v93[0];
    goto LABEL_26;
  }

  v6 = objc_opt_new();
  bands = self->bands;
  self->bands = v6;

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v5;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v89, v88, 16);
  if (!v9)
  {
    v84 = 0;
    goto LABEL_25;
  }

  v10 = v9;
  v86 = v5;
  v11 = *v90;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v90 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v89 + 1) + 8 * i);
      v14 = objc_opt_new();
      v15 = [GainValueArray alloc];
      v18 = objc_msgSend_objectForKeyedSubscript_(v13, v16, @"LumaCutoff", v17);
      v21 = objc_msgSend_initWithArray_(v15, v19, v18, v20);
      v22 = v14[1];
      v14[1] = v21;

      v23 = [GainValueArray alloc];
      v26 = objc_msgSend_objectForKeyedSubscript_(v13, v24, @"ChromaCutoff", v25);
      v29 = objc_msgSend_initWithArray_(v23, v27, v26, v28);
      v30 = v14[2];
      v14[2] = v29;

      v31 = [GainValueArray alloc];
      v34 = objc_msgSend_objectForKeyedSubscript_(v13, v32, @"LumaEdgeCutoff", v33);
      v37 = objc_msgSend_initWithArray_(v31, v35, v34, v36);
      v38 = v14[3];
      v14[3] = v37;

      v39 = [GainValueArray alloc];
      v42 = objc_msgSend_objectForKeyedSubscript_(v13, v40, @"ChromaEdgeCutoff", v41);
      v45 = objc_msgSend_initWithArray_(v39, v43, v42, v44);
      v46 = v14[4];
      v14[4] = v45;

      v47 = [GainValueArray alloc];
      v50 = objc_msgSend_objectForKeyedSubscript_(v13, v48, @"AdaptiveBlackFusionBoostThreshold", v49);
      v53 = objc_msgSend_initWithArray_(v47, v51, v50, v52);
      v54 = v14[5];
      v14[5] = v53;

      v55 = [GainValueArray alloc];
      v58 = objc_msgSend_objectForKeyedSubscript_(v13, v56, @"AdaptiveFusionReductionThreshold", v57);
      v61 = objc_msgSend_initWithArray_(v55, v59, v58, v60);
      v62 = v14[6];
      v14[6] = v61;

      if ((objc_msgSend_isValid(v14[1], v63, v64, v65) & 1) == 0)
      {
        sub_2958AE554();
LABEL_23:

        v84 = -1;
        goto LABEL_24;
      }

      if ((objc_msgSend_isValid(v14[2], v66, v67, v68) & 1) == 0)
      {
        sub_2958AE5B4();
        goto LABEL_23;
      }

      if ((objc_msgSend_isValid(v14[3], v69, v70, v71) & 1) == 0)
      {
        sub_2958AE614();
        goto LABEL_23;
      }

      if ((objc_msgSend_isValid(v14[4], v72, v73, v74) & 1) == 0)
      {
        sub_2958AE674();
        goto LABEL_23;
      }

      if ((objc_msgSend_isValid(v14[5], v75, v76, v77) & 1) == 0)
      {
        sub_2958AE6D4();
        goto LABEL_23;
      }

      if ((objc_msgSend_isValid(v14[6], v78, v79, v80) & 1) == 0)
      {
        sub_2958AE734();
        goto LABEL_23;
      }

      objc_msgSend_addObject_(self->bands, v81, v14, v82);
    }

    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v83, &v89, v88, 16);
    if (v10)
    {
      continue;
    }

    break;
  }

  v84 = 0;
LABEL_24:
  v5 = v86;
LABEL_25:

LABEL_26:
  return v84;
}

- (int)readPlist:(id)plist
{
  plistCopy = plist;
  BandData = objc_msgSend_readBandData_(self, v5, plistCopy, v6);
  if (BandData)
  {
    sub_2958AE830(BandData, &v76);
    v74 = v76;
    goto LABEL_9;
  }

  v8 = [GainValueArray alloc];
  v11 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v9, @"ShadowThreshold", v10);
  v14 = objc_msgSend_initWithArray_(v8, v12, v11, v13);
  shadowThreshold = self->shadowThreshold;
  self->shadowThreshold = v14;

  v16 = [GainValueArray alloc];
  v19 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v17, @"BlackFusionBoost", v18);
  v22 = objc_msgSend_initWithArray_(v16, v20, v19, v21);
  blackFusionBoost = self->blackFusionBoost;
  self->blackFusionBoost = v22;

  v24 = [GainValueArray alloc];
  v27 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v25, @"SigmaFactorR", v26);
  v30 = objc_msgSend_initWithArray_(v24, v28, v27, v29);
  sigmaFactorR = self->sigmaFactorR;
  self->sigmaFactorR = v30;

  v32 = [GainValueArray alloc];
  v35 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v33, @"SigmaFactorG", v34);
  v38 = objc_msgSend_initWithArray_(v32, v36, v35, v37);
  sigmaFactorG = self->sigmaFactorG;
  self->sigmaFactorG = v38;

  v40 = [GainValueArray alloc];
  v43 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v41, @"SigmaFactorB", v42);
  v46 = objc_msgSend_initWithArray_(v40, v44, v43, v45);
  sigmaFactorB = self->sigmaFactorB;
  self->sigmaFactorB = v46;

  v48 = [GainValueArray alloc];
  v51 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v49, @"DecayRate", v50);
  v54 = objc_msgSend_initWithArray_(v48, v52, v51, v53);
  sharpness = self->sharpness;
  self->sharpness = v54;

  if ((objc_msgSend_isValid(self->shadowThreshold, v56, v57, v58) & 1) == 0)
  {
    sub_2958AE8D0();
LABEL_17:
    v74 = -1;
    goto LABEL_9;
  }

  if ((objc_msgSend_isValid(self->blackFusionBoost, v59, v60, v61) & 1) == 0)
  {
    sub_2958AE930();
    goto LABEL_17;
  }

  if ((objc_msgSend_isValid(self->sigmaFactorR, v62, v63, v64) & 1) == 0)
  {
    sub_2958AE990();
    goto LABEL_17;
  }

  if ((objc_msgSend_isValid(self->sigmaFactorG, v65, v66, v67) & 1) == 0)
  {
    sub_2958AE9F0();
    goto LABEL_17;
  }

  if ((objc_msgSend_isValid(self->sigmaFactorB, v68, v69, v70) & 1) == 0)
  {
    sub_2958AEA50();
    goto LABEL_17;
  }

  if ((objc_msgSend_isValid(self->sharpness, v71, v72, v73) & 1) == 0)
  {
    sub_2958AEAB0();
    goto LABEL_17;
  }

  v74 = 0;
LABEL_9:

  return v74;
}

@end