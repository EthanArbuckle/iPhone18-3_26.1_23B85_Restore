@interface ToneMapSmoothingPlist
- (ToneMapSmoothingPlist)init;
- (int)readPlist:(id)a3;
@end

@implementation ToneMapSmoothingPlist

- (ToneMapSmoothingPlist)init
{
  v6.receiver = self;
  v6.super_class = ToneMapSmoothingPlist;
  v2 = [(ToneMapSmoothingPlist *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    bands = v2->bands;
    v2->bands = v3;
  }

  return v2;
}

- (int)readPlist:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"Bands", v6);
  if (v10)
  {
    if (objc_msgSend_count(self->bands, v7, v8, v9))
    {
      sub_2958ACE1C();
      v39 = -12782;
    }

    else
    {
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v11 = v10;
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v81, v80, 16);
      if (v13)
      {
        v14 = v13;
        v15 = *v82;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v82 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v81 + 1) + 8 * i);
            v18 = objc_alloc_init(ToneMapSmoothingBandData);
            Plist = objc_msgSend_readPlist_(v18, v19, v17, v20);
            if (Plist)
            {
              v39 = Plist;
              sub_2958ACE80(Plist, v18, v11);
              goto LABEL_29;
            }

            objc_msgSend_addObject_(self->bands, v22, v18, v23);
          }

          v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v24, &v81, v80, 16);
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      LOBYTE(v85[0]) = 0;
      v26 = objc_msgSend_cmi_intValueForKey_defaultValue_found_(v4, v25, @"BaseIterations", 0, v85);
      v27 = v85[0];
      self->baseIterations = v26;
      LOBYTE(v85[0]) = 0;
      objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v28, @"MaskedAlpha", v85, 0.0);
      v29 = v85[0];
      self->maskedAlpha = v30;
      LOBYTE(v85[0]) = 0;
      objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v31, @"UnmaskedAlpha", v85, 0.0);
      if ((v85[0] & v29) & v27)
      {
        v35 = 0;
      }

      else
      {
        v35 = 25;
      }

      self->unmaskedAlpha = v34;
      v36 = objc_msgSend_objectForKeyedSubscript_(v4, v32, @"Feature1MaskedAlpha", v33);

      LOBYTE(v85[0]) = 0;
      if (v36)
      {
        objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v37, @"Feature1MaskedAlpha", v85, 0.0);
      }

      else
      {
        objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v37, @"SkyMaskedAlpha", v85, 0.0);
      }

      if (LOBYTE(v85[0]))
      {
        v39 = v35;
      }

      else
      {
        v39 = 25;
      }

      self->skyMaskedAlpha = v38;
      v40 = [GainValueArray alloc];
      v43 = objc_msgSend_objectForKeyedSubscript_(v4, v41, @"MinGainRatio", v42);
      v46 = objc_msgSend_initWithArray_(v40, v44, v43, v45);
      minGainRatio = self->minGainRatio;
      self->minGainRatio = v46;

      v48 = [GainValueArray alloc];
      v51 = objc_msgSend_objectForKeyedSubscript_(v4, v49, @"MaskedLambda", v50);
      v54 = objc_msgSend_initWithArray_(v48, v52, v51, v53);
      maskedLambda = self->maskedLambda;
      self->maskedLambda = v54;

      v56 = [GainValueArray alloc];
      v59 = objc_msgSend_objectForKeyedSubscript_(v4, v57, @"UnmaskedLambda", v58);
      v62 = objc_msgSend_initWithArray_(v56, v60, v59, v61);
      unmaskedLambda = self->unmaskedLambda;
      self->unmaskedLambda = v62;

      v64 = @"SkyMaskedLambda";
      v67 = objc_msgSend_objectForKeyedSubscript_(v4, v65, @"SkyMaskedLambda", v66);

      if (v67 || (v64 = @"Feature1MaskedLambda", objc_msgSend_objectForKeyedSubscript_(v4, v68, @"Feature1MaskedLambda", v69), v70 = objc_claimAutoreleasedReturnValue(), v70, v70))
      {
        v71 = [GainValueArray alloc];
        v74 = objc_msgSend_objectForKeyedSubscript_(v4, v72, v64, v73);
        v77 = objc_msgSend_initWithArray_(v71, v75, v74, v76);
        skyMaskedLambda = self->skyMaskedLambda;
        self->skyMaskedLambda = v77;
      }

      if (!self->minGainRatio)
      {
        sub_2958AD0D0(v85);
        goto LABEL_35;
      }

      if (!self->maskedLambda)
      {
        sub_2958AD034(v85);
        goto LABEL_35;
      }

      if (!self->unmaskedLambda)
      {
        sub_2958ACF98(v85);
        goto LABEL_35;
      }

      if (!self->skyMaskedLambda)
      {
        sub_2958ACEFC(v85);
LABEL_35:
        v39 = v85[0];
      }
    }
  }

  else
  {
    sub_2958AD16C();
    v39 = 25;
  }

LABEL_29:

  return v39;
}

@end