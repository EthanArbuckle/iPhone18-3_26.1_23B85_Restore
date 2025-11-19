@interface SLASRFeatureExtractor
+ (id)_getLastTokenForPath:(id)a3 fromPhrases:(id)a4;
+ (id)_getTokenConfidenceForPath:(id)a3 fromPhrases:(id)a4;
+ (id)extractASRFaturesFrom:(id)a3;
+ (id)extractLRNNFaturesFrom:(id)a3;
+ (id)getBestSpeechRecognitionTextFromPackage:(id)a3;
@end

@implementation SLASRFeatureExtractor

+ (id)extractLRNNFaturesFrom:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "+[SLASRFeatureExtractor extractLRNNFaturesFrom:]";
    _os_log_error_impl(&dword_26754E000, v3, OS_LOG_TYPE_ERROR, "%s Unimplemented method called", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (id)getBestSpeechRecognitionTextFromPackage:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v3 = [v32 recognition];
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v5 = [v3 utterances];
  v6 = [v5 firstObject];

  v31 = v3;
  v7 = [v3 phrases];
  v8 = 0;
  if ([v7 count])
  {
    v9 = 0;
    v33 = v7;
    v34 = v6;
    do
    {
      v10 = [v6 interpretationIndices];
      v11 = [v10 count];

      if (v9 >= v11)
      {
        break;
      }

      v12 = [v7 objectAtIndex:v9];
      v13 = [v6 interpretationIndices];
      v14 = [v13 objectAtIndex:v9];
      v15 = [v14 unsignedIntegerValue];

      v16 = [v12 interpretations];
      v17 = [v16 count];

      if (v15 >= v17)
      {

        v28 = &stru_2878A3BF0;
        goto LABEL_19;
      }

      v36 = v12;
      v18 = [v12 interpretations];
      v19 = [v18 objectAtIndex:v15];

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = v19;
      v20 = [v19 tokens];
      v21 = [v20 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v38;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            v25 = v8;
            if (*v38 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v26 = *(*(&v37 + 1) + 8 * i);
            if (([v26 removeSpaceBefore] & 1) == 0 && (objc_msgSend(v25, "removeSpaceAfter") & 1) == 0 && v25)
            {
              [v4 appendString:@" "];
            }

            v27 = [v26 text];
            [v4 appendString:v27];
            v8 = v26;
          }

          v22 = [v20 countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v22);
      }

      ++v9;
      v7 = v33;
      v6 = v34;
    }

    while (v9 < [v33 count]);
  }

  v28 = v4;
LABEL_19:

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)_getTokenConfidenceForPath:(id)a3 fromPhrases:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [v5 dictionaryRepresentation];
    *buf = 136315394;
    v25 = "+[SLASRFeatureExtractor _getTokenConfidenceForPath:fromPhrases:]";
    v26 = 2114;
    v27 = v11;
    _os_log_impl(&dword_26754E000, v10, OS_LOG_TYPE_INFO, "%s Constructing tokens for speech path %{public}@", buf, 0x16u);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __64__SLASRFeatureExtractor__getTokenConfidenceForPath_fromPhrases___block_invoke;
  v21[3] = &unk_279C0E970;
  v22 = v5;
  v23 = v8;
  v12 = v8;
  v13 = v5;
  [v6 enumerateObjectsUsingBlock:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __64__SLASRFeatureExtractor__getTokenConfidenceForPath_fromPhrases___block_invoke_2;
  v19[3] = &unk_279C0E998;
  v14 = v7;
  v20 = v14;
  [v12 enumerateObjectsUsingBlock:v19];
  v15 = v20;
  v16 = v14;

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

void __64__SLASRFeatureExtractor__getTokenConfidenceForPath_fromPhrases___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 interpretationIndices];
  v8 = [v7 objectAtIndexedSubscript:a3];
  v9 = [v8 unsignedIntegerValue];

  v10 = [v6 interpretations];

  v11 = [v10 objectAtIndexedSubscript:v9];
  v13 = [v11 tokens];

  v12 = v13;
  if (v13)
  {
    [*(a1 + 40) addObjectsFromArray:v13];
    v12 = v13;
  }
}

void __64__SLASRFeatureExtractor__getTokenConfidenceForPath_fromPhrases___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "confidenceScore")}];
  [*(a1 + 32) addObject:v4];
  v5 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [v3 confidenceScore];
    v8 = [v3 text];
    v10 = 136315650;
    v11 = "+[SLASRFeatureExtractor _getTokenConfidenceForPath:fromPhrases:]_block_invoke_2";
    v12 = 2050;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_26754E000, v6, OS_LOG_TYPE_INFO, "%s Adding score %{public}ld for token %@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)_getLastTokenForPath:(id)a3 fromPhrases:(id)a4
{
  v5 = a4;
  v6 = [a3 interpretationIndices];
  v7 = [v6 lastObject];
  v8 = [v7 unsignedIntegerValue];

  v9 = [v5 lastObject];

  v10 = [v9 interpretations];
  v11 = [v10 objectAtIndex:v8];

  v12 = [v11 tokens];
  v13 = [v12 firstObject];

  return v13;
}

+ (id)extractASRFaturesFrom:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(SLASRFeatures);
  if (v4)
  {
    v6 = [v4 recognition];
    v7 = [v6 utterances];
    v8 = [v7 count];

    if (v8 >= 0xB)
    {
      v8 = 11;
    }

    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v8];
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v8];
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v8];
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v8];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__213;
    v47 = __Block_byref_object_dispose__214;
    v48 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__213;
    v42 = __Block_byref_object_dispose__214;
    v43 = 0;
    v27 = [v6 utterances];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __47__SLASRFeatureExtractor_extractASRFaturesFrom___block_invoke;
    v28[3] = &unk_279C0E948;
    v36 = a1;
    v13 = v6;
    v29 = v13;
    v14 = v9;
    v30 = v14;
    v15 = v10;
    v31 = v15;
    v16 = v11;
    v32 = v16;
    v17 = v12;
    v37 = -8388608;
    v33 = v17;
    p_buf = &buf;
    v35 = &v38;
    [v27 enumerateObjectsUsingBlock:v28];
    [(SLASRFeatures *)v5 setLatticePathMaxScores:v14];
    [(SLASRFeatures *)v5 setLatticePathMeanScores:v16];
    [(SLASRFeatures *)v5 setLatticePathMinScores:v15];
    [(SLASRFeatures *)v5 setLatticePathVarScores:v17];
    [(SLASRFeatures *)v5 setTopLatticePathScores:*(*(&buf + 1) + 40)];
    -[SLASRFeatures setTopLatticePathTokenCount:](v5, "setTopLatticePathTokenCount:", [*(*(&buf + 1) + 40) count]);
    v18 = [v4 audioAnalytics];
    [v18 snr];
    *&v19 = v19;
    [(SLASRFeatures *)v5 setSnr:v19];

    [v39[5] endTime];
    v21 = v20;
    [v39[5] silenceStartTime];
    v23 = v21 - v22;
    *&v23 = v23;
    [(SLASRFeatures *)v5 setTrailingSilence:v23];

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v24 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "+[SLASRFeatureExtractor extractASRFaturesFrom:]";
      _os_log_error_impl(&dword_26754E000, v24, OS_LOG_TYPE_ERROR, "%s Received nil recog candidate, nothing to extract", &buf, 0xCu);
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return v5;
}

void __47__SLASRFeatureExtractor_extractASRFaturesFrom___block_invoke(uint64_t a1, void *a2)
{
  v32 = a2;
  v3 = *(a1 + 88);
  v4 = [*(a1 + 32) phrases];
  v5 = [v3 _getTokenConfidenceForPath:v32 fromPhrases:v4];

  v6 = MEMORY[0x277CBEA60];
  obj = v5;
  v7 = [MEMORY[0x277CCA9C0] expressionForConstantValue:v5];
  v8 = [v6 arrayWithObject:v7];

  v9 = [MEMORY[0x277CCA9C0] expressionForFunction:@"max:" arguments:v8];
  v10 = [MEMORY[0x277CCA9C0] expressionForFunction:@"min:" arguments:v8];
  v11 = [MEMORY[0x277CCA9C0] expressionForFunction:@"stddev:" arguments:v8];
  v12 = [MEMORY[0x277CCA9C0] expressionForFunction:@"average:" arguments:v8];
  v30 = v9;
  v13 = [v9 expressionValueWithObject:0 context:0];
  if (v13)
  {
    [*(a1 + 40) addObject:v13];
  }

  v14 = [v10 expressionValueWithObject:0 context:{0, v10}];
  if (v14)
  {
    [*(a1 + 48) addObject:v14];
  }

  v15 = [v12 expressionValueWithObject:0 context:0];
  if (v15)
  {
    [*(a1 + 56) addObject:v15];
  }

  v16 = [v11 expressionValueWithObject:0 context:0];
  v17 = v16;
  if (v16)
  {
    v18 = MEMORY[0x277CCABB0];
    [v16 doubleValue];
    v20 = v19;
    [v17 doubleValue];
    v22 = [v18 numberWithDouble:v20 * v21];
    [*(a1 + 64) addObject:v22];
  }

  [v15 floatValue];
  if (v23 > *(a1 + 96))
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), obj);
    v24 = *(a1 + 88);
    v25 = [*(a1 + 32) phrases];
    v26 = [v24 _getLastTokenForPath:v32 fromPhrases:v25];
    v27 = *(*(a1 + 80) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;
  }
}

@end