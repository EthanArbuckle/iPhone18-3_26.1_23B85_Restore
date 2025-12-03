@interface CRLineWrappingClassifier
+ (BOOL)localeIsSupported:(id)supported;
+ (id)localeToModelMap;
+ (id)modelLocaleForLocale:(id)locale;
+ (id)urlOfModelForLocale:(id)locale;
- (CRLineWrappingClassifier)initWithContentsOfURL:(id)l error:(id *)error;
- (CRLineWrappingClassifier)initWithLocale:(id)locale;
- (NSString)modelLocale;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (unint64_t)featureCount;
@end

@implementation CRLineWrappingClassifier

+ (id)localeToModelMap
{
  if (qword_1ED960130 != -1)
  {
    dispatch_once(&qword_1ED960130, &__block_literal_global_18);
  }

  v3 = _MergedGlobals_23;

  return v3;
}

void __44__CRLineWrappingClassifier_localeToModelMap__block_invoke()
{
  v3[30] = *MEMORY[0x1E69E9840];
  v2[0] = @"ar-SA";
  v2[1] = @"ars-SA";
  v3[0] = @"cr_lw_ar-SA.mlmodelc";
  v3[1] = @"cr_lw_ar-SA.mlmodelc";
  v2[2] = @"de-DE";
  v2[3] = @"en-US";
  v3[2] = @"cr_lw_de-DE.mlmodelc";
  v3[3] = @"cr_lw_en-US.mlmodelc";
  v2[4] = @"es-ES";
  v2[5] = @"fr-FR";
  v3[4] = @"cr_lw_es-ES.mlmodelc";
  v3[5] = @"cr_lw_fr-FR.mlmodelc";
  v2[6] = @"it-IT";
  v2[7] = @"ja-JP";
  v3[6] = @"cr_lw_it-IT.mlmodelc";
  v3[7] = @"cr_lw_ja-JP.mlmodelc";
  v2[8] = @"ko-KR";
  v2[9] = @"pt-BR";
  v3[8] = @"cr_lw_ko-KR.mlmodelc";
  v3[9] = @"cr_lw_pt-BR.mlmodelc";
  v2[10] = @"ru-RU";
  v2[11] = @"uk-UA";
  v3[10] = @"cr_lw_ru-RU.mlmodelc";
  v3[11] = @"cr_lw_uk-UA.mlmodelc";
  v2[12] = @"th-TH";
  v2[13] = @"vi-VT";
  v3[12] = @"cr_lw_th-TH.mlmodelc";
  v3[13] = @"cr_lw_vi-VT.mlmodelc";
  v2[14] = @"tr-TR";
  v2[15] = @"id-ID";
  v3[14] = @"cr_lw_extlatin.mlmodelc";
  v3[15] = @"cr_lw_extlatin.mlmodelc";
  v2[16] = @"cs-CZ";
  v2[17] = @"da-DK";
  v3[16] = @"cr_lw_en-US.mlmodelc";
  v3[17] = @"cr_lw_extlatin.mlmodelc";
  v2[18] = @"nl-NL";
  v2[19] = @"no-NO";
  v3[18] = @"cr_lw_extlatin.mlmodelc";
  v3[19] = @"cr_lw_extlatin.mlmodelc";
  v2[20] = @"nn-NO";
  v2[21] = @"nb-NO";
  v3[20] = @"cr_lw_extlatin.mlmodelc";
  v3[21] = @"cr_lw_en-US.mlmodelc";
  v2[22] = @"ms-MY";
  v2[23] = @"pl-PL";
  v3[22] = @"cr_lw_extlatin.mlmodelc";
  v3[23] = @"cr_lw_extlatin.mlmodelc";
  v2[24] = @"ro-RO";
  v2[25] = @"sv-SE";
  v3[24] = @"cr_lw_en-US.mlmodelc";
  v3[25] = @"cr_lw_extlatin.mlmodelc";
  v2[26] = @"yue-Hans";
  v2[27] = @"yue-Hant";
  v3[26] = @"cr_lw_zh-Hans.mlmodelc";
  v3[27] = @"cr_lw_zh-Hans.mlmodelc";
  v2[28] = @"zh-Hans";
  v2[29] = @"zh-Hant";
  v3[28] = @"cr_lw_zh-Hans.mlmodelc";
  v3[29] = @"cr_lw_zh-Hans.mlmodelc";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:30];
  v1 = _MergedGlobals_23;
  _MergedGlobals_23 = v0;
}

+ (BOOL)localeIsSupported:(id)supported
{
  supportedCopy = supported;
  localeToModelMap = [self localeToModelMap];
  v6 = [localeToModelMap objectForKey:supportedCopy];

  return v6 != 0;
}

+ (id)urlOfModelForLocale:(id)locale
{
  v16 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  localeToModelMap = [self localeToModelMap];
  v6 = [localeToModelMap objectForKey:localeCopy];

  if (v6)
  {
    stringByDeletingPathExtension = [v6 stringByDeletingPathExtension];
    pathExtension = [v6 pathExtension];
    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [v9 pathForResource:stringByDeletingPathExtension ofType:pathExtension];
    if (v10)
    {
      v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10];
    }

    else
    {
      v12 = CROSLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v14 = 138412290;
        v15 = stringByDeletingPathExtension;
        _os_log_impl(&dword_1B40D2000, v12, OS_LOG_TYPE_FAULT, "Failed to load resource: %@", &v14, 0xCu);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)modelLocaleForLocale:(id)locale
{
  localeCopy = locale;
  if (qword_1ED960140 != -1)
  {
    dispatch_once(&qword_1ED960140, &__block_literal_global_199);
  }

  if ([qword_1ED960138 containsObject:localeCopy])
  {
    modelLocaleForExtendedLatin = [self modelLocaleForExtendedLatin];
    goto LABEL_11;
  }

  if ([CRImageReader languageIsChinese:localeCopy])
  {
    v6 = CRImageReaderLanguageZh_Hans;
LABEL_9:
    modelLocaleForExtendedLatin = *v6;
    goto LABEL_11;
  }

  if ([CRImageReader languageIsArabic:localeCopy])
  {
    v6 = CRImageReaderLanguageAr_SA;
    goto LABEL_9;
  }

  modelLocaleForExtendedLatin = localeCopy;
LABEL_11:
  v7 = modelLocaleForExtendedLatin;

  return v7;
}

void __49__CRLineWrappingClassifier_modelLocaleForLocale___block_invoke()
{
  v4[9] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"da-DK";
  v4[1] = @"id-ID";
  v4[2] = @"ms-MY";
  v4[3] = @"nl-NL";
  v4[4] = @"nn-NO";
  v4[5] = @"no-NO";
  v4[6] = @"pl-PL";
  v4[7] = @"sv-SE";
  v4[8] = @"tr-TR";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:9];
  v2 = [v0 setWithArray:v1];
  v3 = qword_1ED960138;
  qword_1ED960138 = v2;
}

- (CRLineWrappingClassifier)initWithContentsOfURL:(id)l error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v14.receiver = self;
  v14.super_class = CRLineWrappingClassifier;
  v7 = [(CRLineWrappingClassifier *)&v14 init];
  if (!v7)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v8 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:lCopy error:error];
  model = v7->_model;
  v7->_model = v8;

  if (!v7->_model)
  {
    v11 = CROSLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      path = [lCopy path];
      *buf = 138412290;
      v16 = path;
      _os_log_impl(&dword_1B40D2000, v11, OS_LOG_TYPE_FAULT, "Failed to load model: %@", buf, 0xCu);
    }

    goto LABEL_7;
  }

  v10 = v7;
LABEL_8:

  return v10;
}

- (CRLineWrappingClassifier)initWithLocale:(id)locale
{
  localeCopy = locale;
  v6 = [CRLineWrappingClassifier urlOfModelForLocale:localeCopy];
  if (v6)
  {
    objc_storeStrong(&self->_locale, locale);
    self = [(CRLineWrappingClassifier *)self initWithContentsOfURL:v6 error:0];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)modelLocale
{
  v3 = objc_opt_class();
  locale = [(CRLineWrappingClassifier *)self locale];
  v5 = [v3 modelLocaleForLocale:locale];

  return v5;
}

- (unint64_t)featureCount
{
  modelDescription = [(MLModel *)self->_model modelDescription];
  inputDescriptionsByName = [modelDescription inputDescriptionsByName];
  v4 = [inputDescriptionsByName objectForKeyedSubscript:@"input"];
  multiArrayConstraint = [v4 multiArrayConstraint];
  shape = [multiArrayConstraint shape];
  v7 = [shape objectAtIndexedSubscript:0];
  unsignedLongValue = [v7 unsignedLongValue];

  return unsignedLongValue;
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  model = self->_model;
  featuresCopy = features;
  modelDescription = [(MLModel *)model modelDescription];
  inputDescriptionsByName = [modelDescription inputDescriptionsByName];
  v10 = [inputDescriptionsByName objectForKeyedSubscript:@"input"];
  multiArrayConstraint = [v10 multiArrayConstraint];
  shape = [multiArrayConstraint shape];
  v13 = [shape objectAtIndexedSubscript:0];
  [v13 longValue];

  v14 = objc_alloc_init(MEMORY[0x1E695FF08]);
  v15 = [(MLModel *)self->_model predictionFromFeatures:featuresCopy options:v14 error:error];

  v16 = [v15 featureValueForName:@"classProbability"];
  dictionaryValue = [v16 dictionaryValue];
  v18 = [dictionaryValue objectForKeyedSubscript:&unk_1F2BF85C0];

  if (v18)
  {
    v19 = [CRLineWrappingClassifierOutput alloc];
    [v18 doubleValue];
    v20 = [(CRLineWrappingClassifierOutput *)v19 initWithWrappingProbability:?];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end