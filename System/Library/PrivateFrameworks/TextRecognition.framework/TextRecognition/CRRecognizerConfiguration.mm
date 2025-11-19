@interface CRRecognizerConfiguration
+ (id)languageSetFromInputLanguages:(id)a3 supportedLanguages:(id)a4;
+ (id)supportedLanguagesForVersion:(int64_t)a3;
- (CRRecognizerConfiguration)initWithImageReaderOptions:(id)a3 error:(id *)a4;
- (CRTextFeatureOrdering)textFeatureOrder;
- (id)createTextFeatureFilter;
- (id)initV3DefaultConfigWithOptions:(id)a3;
- (id)textFeatureFilter;
@end

@implementation CRRecognizerConfiguration

- (id)createTextFeatureFilter
{
  nullsub_1(self);
  v2 = sub_1B42A06D8();

  return v2;
}

- (CRRecognizerConfiguration)initWithImageReaderOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"CRImageReaderRevisionKey"];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"CRImageReaderRevisionKey"];
    v9 = [v8 unsignedIntegerValue];
  }

  else
  {
    v9 = +[CRImageReader defaultRevisionNumber];
  }

  if ((v9 - 1) > 2)
  {
    if (a4)
    {
      [CRImageReader errorWithErrorCode:-4];
      *a4 = v27 = 0;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v10 = [(CRRecognizerConfiguration *)self initV3DefaultConfigWithOptions:v6];
    v11 = v10;
    if (v10)
    {
      v10[4] = v9;
      v29 = 0;
      v12 = [CRComputeDeviceUtilities computeDeviceTypeForOptions:v6 mtlDevice:&v29];
      v13 = v29;
      v14 = v29;
      v11[8] = v12;
      if (v14)
      {
        objc_storeStrong(v11 + 7, v13);
      }

      v15 = [v6 objectForKeyedSubscript:@"CRImageReaderNumTopStringCandidates"];

      if (v15)
      {
        v16 = [v6 objectForKeyedSubscript:@"CRImageReaderNumTopStringCandidates"];
        v11[5] = [v16 integerValue];
      }

      v17 = [v6 objectForKeyedSubscript:@"CRImageReaderDisableFalsePositivePostFilter"];

      if (v17)
      {
        v18 = [v6 objectForKeyedSubscript:@"CRImageReaderDisableFalsePositivePostFilter"];
        *(v11 + 16) = [v18 BOOLValue];
      }

      v19 = [v6 objectForKeyedSubscript:@"CRImageReaderDisableScriptDetection"];

      if (v19)
      {
        v20 = [v6 objectForKeyedSubscript:@"CRImageReaderDisableScriptDetection"];
        *(v11 + 17) = [v20 BOOLValue];
      }

      v21 = [v6 objectForKeyedSubscript:@"CRImageReaderOptimizeGroupsForStability"];

      if (v21)
      {
        v22 = [v6 objectForKeyedSubscript:@"CRImageReaderOptimizeGroupsForStability"];
        *(v11 + 20) = [v22 BOOLValue];
      }

      v23 = [v6 objectForKeyedSubscript:@"CRImageReaderSkipRecognition"];
      v24 = [v23 BOOLValue];

      if (v24)
      {
        *(v11 + 18) = 1;
      }

      v25 = [v6 objectForKeyedSubscript:@"CRImageReaderRectifyPolygons"];
      v26 = [v25 BOOLValue];

      if (v26)
      {
        *(v11 + 19) = 1;
      }
    }

    self = v11;
    v27 = self;
  }

  return v27;
}

- (id)initV3DefaultConfigWithOptions:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRRecognizerConfiguration;
  v3 = [(CRRecognizerConfiguration *)&v6 init];
  v4 = v3;
  if (v3)
  {
    v3->_numTopStringCandidates = 1;
    v3->_angleThresholdForRotatedCrops = 0.0;
    *&v3->_falsePositiveFilteringDisabled = 0;
    v3->_optimizeGroupsForStability = 0;
    v3->_skipRecognition = 0;
    v3->_colorSpace = 0;
    v3->_rectifyPolygons = _os_feature_enabled_impl();
    *&v4->_cachedTextFeatureOrderLock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

- (CRTextFeatureOrdering)textFeatureOrder
{
  os_unfair_lock_lock(&self->_cachedTextFeatureOrderLock);
  if (self && self->_cachedTextFeatureOrder)
  {
    goto LABEL_5;
  }

  v3 = [(CRRecognizerConfiguration *)self revision];
  [(CRRecognizerConfiguration *)self angleThresholdForRotatedCrops];
  if (self)
  {
    v4 = [CRTextFeatureOrderingUtilities textFeatureOrderWithRevision:v3 angleThresholdForRotatedCrops:self->_optimizeGroupsForStability optimizeGroupsForStability:?];
    objc_storeStrong(&self->_cachedTextFeatureOrder, v4);

LABEL_5:
    os_unfair_lock_unlock(&self->_cachedTextFeatureOrderLock);
    cachedTextFeatureOrder = self->_cachedTextFeatureOrder;
    goto LABEL_6;
  }

  [CRTextFeatureOrderingUtilities textFeatureOrderWithRevision:v3 angleThresholdForRotatedCrops:0 optimizeGroupsForStability:?];

  os_unfair_lock_unlock(8);
  cachedTextFeatureOrder = 0;
LABEL_6:

  return cachedTextFeatureOrder;
}

- (id)textFeatureFilter
{
  os_unfair_lock_lock(&self->_cachedTextFeatureFilterLock);
  if (self)
  {
    if (!self->_cachedTextFeatureFilter)
    {
      v3 = [(CRRecognizerConfiguration *)self createTextFeatureFilter];
      objc_storeStrong(&self->_cachedTextFeatureFilter, v3);
    }

    os_unfair_lock_unlock(&self->_cachedTextFeatureFilterLock);
    cachedTextFeatureFilter = self->_cachedTextFeatureFilter;
  }

  else
  {
    [0 createTextFeatureFilter];

    os_unfair_lock_unlock(0xC);
    cachedTextFeatureFilter = 0;
  }

  return cachedTextFeatureFilter;
}

+ (id)supportedLanguagesForVersion:(int64_t)a3
{
  v47 = *MEMORY[0x1E69E9840];
  switch(a3)
  {
    case 3:
      v8 = @"en-US";
      v9 = @"fr-FR";
      v10 = @"it-IT";
      v11 = @"de-DE";
      v12 = @"es-ES";
      v13 = @"pt-BR";
      v14 = @"zh-Hans";
      v15 = @"zh-Hant";
      v16 = @"yue-Hans";
      v17 = @"yue-Hant";
      v18 = @"ko-KR";
      v19 = @"ja-JP";
      v20 = @"ru-RU";
      v21 = @"uk-UA";
      v22 = @"th-TH";
      v23 = @"vi-VT";
      v24 = @"ar-SA";
      v25 = @"ars-SA";
      v26 = @"tr-TR";
      v27 = @"id-ID";
      v28 = @"cs-CZ";
      v29 = @"da-DK";
      v30 = @"nl-NL";
      v31 = @"no-NO";
      v32 = @"nn-NO";
      v33 = @"nb-NO";
      v34 = @"ms-MY";
      v35 = @"pl-PL";
      v36 = @"ro-RO";
      v37 = @"sv-SE";
      v3 = MEMORY[0x1E695DEC8];
      v4 = &v8;
      v5 = 30;
      goto LABEL_7;
    case 2:
      v38 = @"en-US";
      v39 = @"fr-FR";
      v40 = @"it-IT";
      v41 = @"de-DE";
      v42 = @"es-ES";
      v43 = @"pt-BR";
      v44 = @"zh-Hans";
      v45 = @"zh-Hant";
      v3 = MEMORY[0x1E695DEC8];
      v4 = &v38;
      v5 = 8;
      goto LABEL_7;
    case 1:
      v46 = @"en-US";
      v3 = MEMORY[0x1E695DEC8];
      v4 = &v46;
      v5 = 1;
LABEL_7:
      v6 = [v3 arrayWithObjects:v4 count:{v5, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47}];
      goto LABEL_9;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

+ (id)languageSetFromInputLanguages:(id)a3 supportedLanguages:(id)a4
{
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = v7;
  if (v5)
  {
    objc_opt_class();
    v9 = 0x1E695D000uLL;
    if (objc_opt_isKindOfClass())
    {
      v40[0] = v5;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
      v11 = v5;
      v5 = v10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v29 = v8;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v5 = v5;
      v33 = [v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v33)
      {
        v32 = *v35;
        obj = v5;
        v31 = *MEMORY[0x1E695D9B0];
        v12 = 0x1E695D000uLL;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v35 != v32)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(v12 + 3928);
            v15 = *(*(&v34 + 1) + 8 * i);
            v16 = [v14 componentsFromLocaleIdentifier:v15];
            v17 = [v16 mutableCopy];

            v18 = MEMORY[0x1E696AAE8];
            v38 = v15;
            v19 = [*(v9 + 3784) arrayWithObjects:&v38 count:1];

            v20 = [v18 preferredLocalizationsFromArray:v6 forPreferences:v19];

            if ([v20 count])
            {
              v21 = v6;
              v22 = [v20 firstObject];
              v23 = v12;
              v24 = [*(v12 + 3928) localeWithLocaleIdentifier:v22];
              v25 = [v24 languageCode];
              v26 = [v17 objectForKeyedSubscript:v31];
              v27 = [v25 isEqualToString:v26];

              if (v27)
              {
                [v29 addObject:v22];
              }

              v6 = v21;
              v9 = 0x1E695D000;
              v12 = v23;
            }
          }

          v5 = obj;
          v33 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v33);
      }

      v8 = v29;
    }
  }

  else
  {
    [v7 addObjectsFromArray:v6];
  }

  if (![v8 count])
  {
    [v8 addObjectsFromArray:v6];
  }

  return v8;
}

@end