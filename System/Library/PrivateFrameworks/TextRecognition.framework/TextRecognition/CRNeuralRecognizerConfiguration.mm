@interface CRNeuralRecognizerConfiguration
+ (id)cachedConfigurationWithLocale:(id)a3 imageReaderOptions:(id)a4 error:(id *)a5;
- (BOOL)filterWithLM;
- (BOOL)usesAppleNeuralEngine;
- (CRConfidenceThresholds)confidenceThresholds;
- (CRNeuralRecognizerConfiguration)initWithLocale:(id)a3 imageReaderOptions:(id)a4 error:(id *)a5;
- (id)initV3DefaultConfigWithOptions:(id)a3;
- (int64_t)bestFitWidthIndexForAspectRatio:(double)a3;
@end

@implementation CRNeuralRecognizerConfiguration

- (CRNeuralRecognizerConfiguration)initWithLocale:(id)a3 imageReaderOptions:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v34.receiver = self;
  v34.super_class = CRNeuralRecognizerConfiguration;
  v11 = [(CRRecognizerConfiguration *)&v34 initWithImageReaderOptions:v10 error:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_locale, a3);
    v13 = [v10 objectForKeyedSubscript:@"CRImageReaderDisableLanguageCorrection"];
    v14 = [v13 BOOLValue];

    if (v14)
    {
      v12->_decodeWithLM = 0;
    }

    v15 = [v10 objectForKeyedSubscript:@"CRImageReaderDynamicLexicon"];
    if (v15)
    {
      v16 = v15;
      v17 = [v10 objectForKeyedSubscript:@"CRImageReaderDynamicLexicon"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v19 = [v10 objectForKeyedSubscript:@"CRImageReaderDynamicLexicon"];
        customWords = v12->_customWords;
        v12->_customWords = v19;
      }
    }

    v21 = [v10 objectForKeyedSubscript:@"CRImageReaderPrecisionThresholdKey"];

    if (v21)
    {
      v22 = [v10 objectForKeyedSubscript:@"CRImageReaderPrecisionThresholdKey"];
      [v22 floatValue];
      v12->_precisionThreshold = v23;
    }

    v24 = [v10 objectForKeyedSubscript:@"CRImageReaderRecognizerModelPath"];
    if (v24)
    {
      v25 = [MEMORY[0x1E695DFF8] fileURLWithPath:v24];
      customModelURL = v12->_customModelURL;
      v12->_customModelURL = v25;
    }

    v27 = [CRTitleParameters alloc];
    if (v27)
    {
      v35.receiver = v27;
      v35.super_class = CRTitleParameters;
      v27 = [(CRNeuralRecognizerConfiguration *)&v35 init];
      if (v27)
      {
        v27->_minTitleProbability = 0.5;
        v27->_minTitleLength = 7;
      }
    }

    titleParameters = v12->_titleParameters;
    v12->_titleParameters = v27;

    if ([CRImageReader languageIsChinese:v12->_locale])
    {
      v29 = [CRTitleParameters alloc];
      if (v29)
      {
        v35.receiver = v29;
        v35.super_class = CRTitleParameters;
        v29 = [(CRNeuralRecognizerConfiguration *)&v35 init];
        if (v29)
        {
          v29->_minTitleProbability = 0.7;
          v29->_minTitleLength = 2;
        }
      }

      v30 = v12->_titleParameters;
      v12->_titleParameters = v29;
    }

    v31 = [(CRRecognizerConfiguration *)v12 revision];
    v12->_mediumConfidenceThreshold = 0.0;
    v12->_highConfidenceThreshold = 0.0;
    if ((v31 - 1) > 2)
    {
      v12->_mediumConfidenceThreshold = 0.0;
      v32 = 0;
    }

    else if (v12->_decodeWithLM)
    {
      v12->_mediumConfidenceThreshold = 0.35;
      v32 = 1058642330;
    }

    else
    {
      v12->_mediumConfidenceThreshold = 0.8;
      v32 = 1064514355;
    }

    LODWORD(v12->_highConfidenceThreshold) = v32;
  }

  return v12;
}

+ (id)cachedConfigurationWithLocale:(id)a3 imageReaderOptions:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a1;
  objc_sync_enter(v11);
  if (qword_1ED95F5D8 != v9)
  {
    goto LABEL_2;
  }

  WeakRetained = objc_loadWeakRetained(&qword_1ED95F5E0);
  if (!WeakRetained)
  {
    goto LABEL_2;
  }

  v16 = WeakRetained;
  v17 = objc_loadWeakRetained(&qword_1ED95F5E0);
  if (v17 != v10)
  {

LABEL_2:
    v12 = qword_1ED95F5E8;
    qword_1ED95F5E8 = 0;

    v13 = [objc_alloc(objc_opt_class()) initWithLocale:v9 imageReaderOptions:v10 error:a5];
    objc_storeStrong(&qword_1ED95F5E8, v13);
    objc_storeStrong(&qword_1ED95F5D8, a3);
    objc_storeWeak(&qword_1ED95F5E0, v10);
    goto LABEL_3;
  }

  v18 = qword_1ED95F5E8;

  if (!v18)
  {
    goto LABEL_2;
  }

  v13 = qword_1ED95F5E8;
LABEL_3:
  objc_sync_exit(v11);

  return v13;
}

- (BOOL)usesAppleNeuralEngine
{
  if ([(CRRecognizerConfiguration *)self computeDeviceType]== 1 || [(CRRecognizerConfiguration *)self computeDeviceType]== 2)
  {
    return 0;
  }

  return deviceHasAppleNeuralEngine();
}

- (id)initV3DefaultConfigWithOptions:(id)a3
{
  v9.receiver = self;
  v9.super_class = CRNeuralRecognizerConfiguration;
  v3 = [(CRRecognizerConfiguration *)&v9 initV3DefaultConfigWithOptions:a3];
  v4 = v3;
  if (v3)
  {
    v3[14] = 4;
    v3[15] = 16;
    v5 = v3[16];
    v3[16] = &unk_1F2BFB080;

    v4[17] = 0x4040000000000000;
    v4[18] = 2;
    *(v4 + 88) = 1;
    v6 = v4[19];
    v4[19] = 0;

    *(v4 + 23) = 0;
    v7 = v4[13];
    v4[13] = 0;
  }

  return v4;
}

- (BOOL)filterWithLM
{
  v3 = [(CRNeuralRecognizerConfiguration *)self decodeWithLM];
  if (v3)
  {
    LOBYTE(v3) = ![(CRRecognizerConfiguration *)self falsePositiveFilteringDisabled];
  }

  return v3;
}

- (CRConfidenceThresholds)confidenceThresholds
{
  v3 = [CRConfidenceThresholds alloc];
  if (self)
  {
    *&v4 = self->_mediumConfidenceThreshold;
    *&v5 = self->_highConfidenceThreshold;
  }

  else
  {
    v4 = 0.0;
    v5 = 0.0;
  }

  v6 = [(CRConfidenceThresholds *)v3 initWithMediumThreshold:v4 highThreshold:v5];

  return v6;
}

- (int64_t)bestFitWidthIndexForAspectRatio:(double)a3
{
  v25 = *MEMORY[0x1E69E9840];
  [(CRNeuralRecognizerConfiguration *)self inputWidths];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v18 + 1) + 8 * v9);
      [(CRNeuralRecognizerConfiguration *)self inputHeight];
      v12 = v11;
      [v10 floatValue];
      v14 = v12 / v13;
      if (v14 * 1.1 < a3)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = [v5 indexOfObject:v10];

    if (v15 != -1)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_9:
  }

  v16 = CROSLogForCategory(3);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v23 = a3;
    _os_log_impl(&dword_1B40D2000, v16, OS_LOG_TYPE_DEBUG, "Could not determine an appropriate width index for aspect ratio %.4f", buf, 0xCu);
  }

  v15 = [v5 count] - 1;
LABEL_14:

  return v15;
}

@end