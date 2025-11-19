@interface DeepFusionFusionData
- (int)readPlist:(id)a3;
@end

@implementation DeepFusionFusionData

- (int)readPlist:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"EVM_EV0_motionThreshold", v6);
  objc_msgSend_floatValue(v7, v8, v9, v10);
  v51 = self;
  self->EVM_EV0_motionThreshold = v11;

  v14 = objc_msgSend_objectForKeyedSubscript_(v4, v12, @"SIFRBands", v13);
  v50 = v4;
  v52 = objc_msgSend_objectForKeyedSubscript_(v4, v15, @"NoSIFRBands", v16);
  v17 = objc_opt_new();
  v18 = objc_opt_new();
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v19 = v14;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v59, v58, 16);
  if (v21)
  {
    v22 = v21;
    v23 = *v60;
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v60 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v59 + 1) + 8 * i);
        v26 = objc_opt_new();
        Plist = objc_msgSend_readPlist_(v26, v27, v25, v28);
        if (Plist)
        {
          v48 = Plist;
          sub_2958AB28C(Plist, v26);
          noSifrBands = v19;
          goto LABEL_20;
        }

        objc_msgSend_addObject_(v17, v30, v26, v31);
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v32, &v59, v58, 16);
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  objc_storeStrong(&v51->sifrBands, v17);
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  noSifrBands = v52;
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(noSifrBands, v34, &v54, v53, 16);
  if (v35)
  {
    v36 = v35;
    v37 = *v55;
    while (2)
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v55 != v37)
        {
          objc_enumerationMutation(noSifrBands);
        }

        v39 = *(*(&v54 + 1) + 8 * j);
        v40 = objc_opt_new();
        v43 = objc_msgSend_readPlist_(v40, v41, v39, v42);
        if (v43)
        {
          v48 = v43;
          sub_2958AB2F4(v43, v40);
          goto LABEL_20;
        }

        objc_msgSend_addObject_(v18, v44, v40, v45);
      }

      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(noSifrBands, v46, &v54, v53, 16);
      if (v36)
      {
        continue;
      }

      break;
    }
  }

  v47 = v18;
  v48 = 0;
  noSifrBands = v51->noSifrBands;
  v51->noSifrBands = v47;
LABEL_20:

  return v48;
}

@end