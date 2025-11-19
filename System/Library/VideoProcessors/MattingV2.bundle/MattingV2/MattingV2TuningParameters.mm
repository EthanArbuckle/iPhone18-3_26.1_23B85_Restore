@interface MattingV2TuningParameters
- (MattingV2TuningParameters)initWithDefaults;
- (MattingV2TuningParameters)initWithTuningDictionary:(id)a3;
- (id)getSemanticConfigurationsFor:(id)a3 mattingConfiguration:(id *)a4;
- (id)parseSemanticConfiguration:(id)a3 semanticKey:(id)a4 mattingConfiguration:(id *)a5;
@end

@implementation MattingV2TuningParameters

- (id)parseSemanticConfiguration:(id)a3 semanticKey:(id)a4 mattingConfiguration:(id *)a5
{
  v6 = a3;
  v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, a4);
  v10 = objc_msgSend_objectForKeyedSubscript_(v6, v9, @"Default");

  v11 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v13 = v11;
  if (v8)
  {
    objc_msgSend_addObject_(v11, v12, v8);
  }

  if (v10)
  {
    objc_msgSend_addObject_(v13, v12, v10);
  }

  v14 = objc_msgSend_objectForKeyedSubscript_(v8, v12, @"trimap");
  v16 = objc_msgSend_objectForKeyedSubscript_(v10, v15, @"trimap");
  v17 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v19 = v17;
  if (v14)
  {
    objc_msgSend_addObject_(v17, v18, v14);
  }

  v60 = v14;
  if (v16)
  {
    objc_msgSend_addObject_(v19, v18, v16);
  }

  v59 = v16;
  v58 = sub_2957E04A0(v13, @"radius", 1);
  v20 = sub_2957E04A0(v13, @"subsampling", 1);
  v21 = sub_2957E0530(v13, @"epsilon", 0.0001);
  v57 = sub_2957E04A0(v13, @"iterations", 1);
  v22 = MEMORY[0x29EDBA070];
  v23 = v13;
  v25 = objc_msgSend_numberWithBool_(v22, v24, 0);
  v26 = sub_2957E0A68(v23, @"useDepthFilter", v25);

  v56 = objc_msgSend_BOOLValue(v26, v27, v28);
  v29 = sub_2957E04A0(v23, @"resolutionMode", 1);
  v30 = sub_2957E04A0(v19, @"type", 0);
  if (v30)
  {
    v31 = sub_2957E0530(v19, @"fgThresholdValue", 0.9);
    v32 = sub_2957E0530(v19, @"bgThresholdValue", 0.1);
    v33 = sub_2957E04A0(v19, @"erosionKernelSize", 0);
  }

  else
  {
    v33 = 0;
    v31 = 0.9;
    v32 = 0.1;
  }

  v34 = objc_alloc_init(MattingV2SemanticConfig);
  v36 = v34;
  if (v29 == 2)
  {
    var4 = a5->var4;
    if (a5->var5 * var4 >= a5->var3 * a5->var2)
    {
      var5 = a5->var5;
    }

    else
    {
      var4 = a5->var2;
      var5 = a5->var3;
    }
  }

  else if (v29 == 1)
  {
    var4 = a5->var4;
    var5 = a5->var5;
  }

  else if (v29)
  {
    var5 = 384;
    var4 = 512;
  }

  else
  {
    var4 = a5->var2;
    var5 = a5->var3;
  }

  objc_msgSend_setWidth_(v34, v35, var4 / v20);
  objc_msgSend_setHeight_(v36, v39, var5 / v20);
  objc_msgSend_setKernelSpatialDiameter_(v36, v40, (2 * v58) | 1u);
  *&v41 = v21;
  objc_msgSend_setEpsilon_(v36, v42, v43, v41);
  objc_msgSend_setIterations_(v36, v44, v57);
  objc_msgSend_setUseDepthFilter_(v36, v45, v56);
  objc_msgSend_setConstraintsEnabled_(v36, v46, v30 != 0);
  *&v47 = v31;
  objc_msgSend_setFgThresholdValue_(v36, v48, v49, v47);
  *&v50 = v32;
  objc_msgSend_setBgThresholdValue_(v36, v51, v52, v50);
  objc_msgSend_setErosionKernelSize_(v36, v53, v33);

  return v36;
}

- (MattingV2TuningParameters)initWithDefaults
{
  v5.receiver = self;
  v5.super_class = MattingV2TuningParameters;
  v2 = [(MattingV2TuningParameters *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_portType, *MEMORY[0x29EDBFF48]);
  }

  return v3;
}

- (MattingV2TuningParameters)initWithTuningDictionary:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = MattingV2TuningParameters;
  v5 = [(MattingV2TuningParameters *)&v35 init];
  v8 = v5;
  if (v4 && v5)
  {
    v9 = objc_msgSend_allKeys(v4, v6, v7);
    v12 = objc_msgSend_firstObject(v9, v10, v11);
    portType = v8->_portType;
    v8->_portType = v12;

    v15 = objc_msgSend_objectForKeyedSubscript_(v4, v14, v8->_portType);
    tuningDictionaryForPortType = v8->_tuningDictionaryForPortType;
    v8->_tuningDictionaryForPortType = v15;

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v19 = objc_msgSend_allKeys(v4, v17, v18);
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v31, v30, 16);
    if (v21)
    {
      v23 = v21;
      v24 = *v32;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(v19);
          }

          v26 = *(*(&v31 + 1) + 8 * i);
          if ((objc_msgSend_isEqualToString_(v26, v22, v8->_portType) & 1) == 0)
          {
            v27 = objc_msgSend_objectForKeyedSubscript_(v4, v22, v26);
            objc_msgSend_isEqualToDictionary_(v27, v28, v8->_tuningDictionaryForPortType);
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v31, v30, 16);
      }

      while (v23);
    }
  }

  return v8;
}

- (id)getSemanticConfigurationsFor:(id)a3 mattingConfiguration:(id *)a4
{
  v6 = a3;
  v8 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  if (a4->var7 == 1)
  {
    objc_msgSend_objectForKeyedSubscript_(self->_tuningDictionaryForPortType, v7, @"Fast");
  }

  else
  {
    objc_msgSend_objectForKeyedSubscript_(self->_tuningDictionaryForPortType, v7, @"Fine");
  }
  v11 = ;
  if (!v11)
  {
    tuningDictionaryForPortType = self->_tuningDictionaryForPortType;
    v13 = objc_msgSend_allKeys(tuningDictionaryForPortType, v9, v10);
    v16 = objc_msgSend_firstObject(v13, v14, v15);
    v11 = objc_msgSend_objectForKeyedSubscript_(tuningDictionaryForPortType, v17, v16);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v6;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v40, v39, 16);
  if (v19)
  {
    v21 = v19;
    v22 = *v41;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v41 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v40 + 1) + 8 * i);
        isEqualToNumber = objc_msgSend_isEqualToNumber_(v24, v20, &unk_2A1CA8078);
        v26 = @"RefinedDisparity";
        if (isEqualToNumber)
        {
          goto LABEL_18;
        }

        v27 = objc_msgSend_isEqualToNumber_(v24, v20, &unk_2A1CA8090, @"RefinedDisparity");
        v26 = @"Matte";
        if (v27)
        {
          goto LABEL_18;
        }

        v28 = objc_msgSend_isEqualToNumber_(v24, v20, &unk_2A1CA80A8, @"Matte");
        v26 = @"Hair";
        if (v28)
        {
          goto LABEL_18;
        }

        v29 = objc_msgSend_isEqualToNumber_(v24, v20, &unk_2A1CA80C0, @"Hair");
        v26 = @"Skin";
        if ((v29 & 1) == 0)
        {
          v30 = objc_msgSend_isEqualToNumber_(v24, v20, &unk_2A1CA80D8, @"Skin");
          v26 = @"Teeth";
          if ((v30 & 1) == 0)
          {
            v31 = objc_msgSend_isEqualToNumber_(v24, v20, &unk_2A1CA80F0, @"Teeth");
            v26 = @"Glasses";
            if ((v31 & 1) == 0)
            {
              v32 = objc_msgSend_isEqualToNumber_(v24, v20, &unk_2A1CA8108, @"Glasses");
              v26 = @"Sky";
              if (!v32)
              {
                continue;
              }
            }
          }
        }

LABEL_18:
        v33 = *&a4->var4;
        v38[0] = *&a4->var0;
        v38[1] = v33;
        v34 = objc_msgSend_parseSemanticConfiguration_semanticKey_mattingConfiguration_(self, v20, v11, v26, v38);
        objc_msgSend_setObject_forKeyedSubscript_(v8, v35, v34, v24);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v40, v39, 16);
    }

    while (v21);
  }

  return v8;
}

@end