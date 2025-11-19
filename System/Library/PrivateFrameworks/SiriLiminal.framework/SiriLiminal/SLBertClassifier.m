@interface SLBertClassifier
- (BOOL)_isCharPunctuation:(unsigned __int16)a3;
- (SLBertClassifier)initWithConfig:(id)a3 error:(id *)a4 locale:(id)a5;
- (id)_createInputIdsAndRunModel:(id)a3;
- (id)_normalizeText:(id)a3;
- (id)_splitOnPunctuation:(id)a3;
- (id)_wordPieceTokenizer:(id)a3;
- (id)processInputText:(id)a3;
- (id)processSpeechPackage:(id)a3;
- (void)_readVocabFromFile:(id)a3;
@end

@implementation SLBertClassifier

- (id)_wordPieceTokenizer:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  [v5 addObject:@"[CLS]"];
  if (self->_shouldAppendLeadingText)
  {
    [v5 addObject:@"empty"];
    [v5 addObject:@"[SEP]"];
  }

  v6 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v22 = v4;
  v7 = [v4 componentsSeparatedByCharactersInSet:v6];

  v8 = [(SLBertClassifier *)self _splitOnPunctuation:v7];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    v23 = *v28;
    v24 = v5;
    do
    {
      v12 = 0;
      v25 = v10;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * v12);
        if ([v13 length] <= self->_maxInputCharsPerWord)
        {
          v14 = [MEMORY[0x277CBEB18] array];
          if ([v13 length])
          {
            v15 = 0;
            while (1)
            {
              v16 = [v13 length];
              if (v15 >= v16)
              {
                break;
              }

              v17 = v16;
              while (1)
              {
                v18 = [v13 substringWithRange:{v15, v17 - v15}];
                if (v15)
                {
                  v19 = [@"##" stringByAppendingString:v18];

                  v18 = v19;
                }

                if ([(NSArray *)self->_vocab containsObject:v18])
                {
                  break;
                }

                --v17;

                if (v15 >= v17)
                {
                  goto LABEL_22;
                }
              }

              if (!v18)
              {
                break;
              }

              [v14 addObject:v18];

              v15 = v17;
              if (v17 >= [v13 length])
              {
                goto LABEL_21;
              }
            }

LABEL_22:
            v5 = v24;
            [v24 addObject:self->_unkToken];
          }

          else
          {
LABEL_21:
            v5 = v24;
            [v24 addObjectsFromArray:v14];
          }

          v11 = v23;
          v10 = v25;
        }

        else
        {
          [v5 addObject:self->_unkToken];
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  [v5 addObject:@"[SEP]"];
  v20 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_splitOnPunctuation:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        if ([v10 length])
        {
          v11 = 0;
          do
          {
            v12 = 0;
            while (1)
            {
              v13 = v11 + v12;
              if (-[SLBertClassifier _isCharPunctuation:](self, "_isCharPunctuation:", [v10 characterAtIndex:v11 + v12]))
              {
                break;
              }

              ++v12;
              if (v11 + v12 >= [v10 length])
              {
                if (v12)
                {
                  v16 = [v10 substringWithRange:{v11, v12}];
                  [v5 addObject:v16];
                }

                goto LABEL_18;
              }
            }

            v14 = [v10 substringWithRange:{v11, v12}];
            if (v14)
            {
              [v5 addObject:v14];
            }

            v15 = [v10 substringWithRange:{v13, 1}];
            [v5 addObject:v15];
            v11 = v13 + 1;
          }

          while (v13 + 1 < [v10 length]);
        }

LABEL_18:
        ;
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)_isCharPunctuation:(unsigned __int16)a3
{
  result = 1;
  if ((a3 - 33) >= 0xF && ((a3 - 91) > 0x23 || ((1 << (a3 - 91)) & 0xF0000003FLL) == 0))
  {
    return (a3 - 58) < 7;
  }

  return result;
}

- (id)_createInputIdsAndRunModel:(id)a3
{
  v61[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v61[0] = &unk_2878A77A0;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_maxNumTokens];
  v61[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];

  v54 = 0;
  v7 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:v6 dataType:65568 error:&v54];
  v8 = v54;
  v53 = v8;
  v9 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:v6 dataType:65568 error:&v53];
  v10 = v53;

  v52 = v10;
  v43 = v6;
  v11 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:v6 dataType:65568 error:&v52];
  v12 = v52;

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __47__SLBertClassifier__createInputIdsAndRunModel___block_invoke;
  v47[3] = &unk_279C0E9E8;
  v47[4] = self;
  v13 = v4;
  v48 = v13;
  v14 = v7;
  v49 = v14;
  v15 = v11;
  v50 = v15;
  v16 = v9;
  v51 = v16;
  [v13 enumerateObjectsUsingBlock:v47];
  v44 = v13;
  v17 = [v13 count];
  if (v17 < self->_maxNumTokens)
  {
    v18 = v17;
    do
    {
      v19 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
      [v14 setObject:v19 atIndexedSubscript:v18];

      v20 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
      [v15 setObject:v20 atIndexedSubscript:v18];

      v21 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
      [v16 setObject:v21 atIndexedSubscript:v18];

      ++v18;
    }

    while (v18 < self->_maxNumTokens);
  }

  v22 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v58 = "[SLBertClassifier _createInputIdsAndRunModel:]";
    v59 = 2112;
    v60 = v44;
    _os_log_impl(&dword_26754E000, v22, OS_LOG_TYPE_DEFAULT, "%s Tokens: %@", buf, 0x16u);
    v22 = SLLogContextFacilityCoreSpeech;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v58 = "[SLBertClassifier _createInputIdsAndRunModel:]";
    v59 = 2112;
    v60 = v14;
    _os_log_impl(&dword_26754E000, v22, OS_LOG_TYPE_DEFAULT, "%s inputIds: %@", buf, 0x16u);
    v22 = SLLogContextFacilityCoreSpeech;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v58 = "[SLBertClassifier _createInputIdsAndRunModel:]";
    v59 = 2112;
    v60 = v16;
    _os_log_impl(&dword_26754E000, v22, OS_LOG_TYPE_DEFAULT, "%s attnMask: %@", buf, 0x16u);
  }

  v23 = [MEMORY[0x277CBEB38] dictionary];
  [v23 setObject:v14 forKey:@"minibatch_input_ids"];
  [v23 setObject:v16 forKey:@"minibatch_attention_mask"];
  [v23 setObject:v15 forKey:@"minibatch_token_type_ids"];
  v46 = v12;
  v38 = v23;
  v24 = [objc_alloc(MEMORY[0x277CBFED0]) initWithDictionary:v23 error:&v46];
  v25 = v46;

  bertModel = self->_bertModel;
  v45 = v25;
  v41 = v24;
  v27 = [(MLModel *)bertModel predictionFromFeatures:v24 error:&v45];
  v42 = v45;

  v40 = v27;
  v39 = [v27 featureValueForName:self->_outputNodeName];
  v28 = [v39 multiArrayValue];
  v29 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v58 = "[SLBertClassifier _createInputIdsAndRunModel:]";
    v59 = 2112;
    v60 = v28;
    _os_log_impl(&dword_26754E000, v29, OS_LOG_TYPE_DEFAULT, "%s output: %@", buf, 0x16u);
  }

  v30 = [v28 convert1dMLMultiArrayToNSArray];
  v31 = [v16 convert1dMLMultiArrayToNSArray];
  v32 = [v14 convert1dMLMultiArrayToNSArray];
  v33 = [v15 convert1dMLMultiArrayToNSArray];
  v55[0] = @"outputTokens";
  v55[1] = @"attnMask";
  v56[0] = v44;
  v56[1] = v31;
  v55[2] = @"inputIds";
  v55[3] = @"tokenTypeIds";
  v56[2] = v32;
  v56[3] = v33;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:4];
  v35 = [[SLBertClassifierResult alloc] initWithScore:v30 assetVersion:self->_assetVersion extractedFeats:v34];

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

void __47__SLBertClassifier__createInputIdsAndRunModel___block_invoke(void *a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = [*(a1[4] + 16) indexOfObject:a2];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136315138;
      v27 = "[SLBertClassifier _createInputIdsAndRunModel:]_block_invoke";
      _os_log_impl(&dword_26754E000, v9, OS_LOG_TYPE_DEFAULT, "%s Token not found, using unk token", &v26, 0xCu);
    }

    v7 = [*(a1[4] + 16) indexOfObject:*(a1[4] + 24)];
  }

  v10 = a1[4];
  v11 = 1.0;
  if (*(v10 + 8) == 1)
  {
    if (*(v10 + 64) <= a3)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = 0.0;
    }
  }

  if (*(v10 + 40) <= a3)
  {
    *a4 = 1;
    v20 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v21 = a1[5];
      v22 = v20;
      v23 = [v21 count];
      v24 = *(a1[4] + 40);
      v26 = 136315650;
      v27 = "[SLBertClassifier _createInputIdsAndRunModel:]_block_invoke";
      v28 = 2048;
      v29 = v23;
      v30 = 2048;
      v31 = v24;
      _os_log_impl(&dword_26754E000, v22, OS_LOG_TYPE_DEFAULT, "%s Num Tokens - %lu  exceeded model input length - %lu", &v26, 0x20u);
    }
  }

  else
  {
    v12 = a1[6];
    *&v8 = v7;
    v13 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
    [v12 setObject:v13 atIndexedSubscript:a3];

    v14 = a1[7];
    *&v15 = v11;
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
    [v14 setObject:v16 atIndexedSubscript:a3];

    v17 = a1[8];
    LODWORD(v18) = 1.0;
    v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
    [v17 setObject:v19 atIndexedSubscript:a3];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)_normalizeText:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__531;
  v13 = __Block_byref_object_dispose__532;
  v14 = [v4 lowercaseString];
  truncationTokenList = self->_truncationTokenList;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__SLBertClassifier__normalizeText___block_invoke;
  v8[3] = &unk_279C0E9C0;
  v8[4] = self;
  v8[5] = &v9;
  [(NSArray *)truncationTokenList enumerateObjectsUsingBlock:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __35__SLBertClassifier__normalizeText___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = [v12 length];
  if ([*(*(*(a1 + 40) + 8) + 40) length] > v6)
  {
    v7 = [*(*(*(a1 + 40) + 8) + 40) substringWithRange:{0, v6}];
    v8 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    if ((([v8 characterIsMember:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "characterAtIndex:", v6)}] & 1) != 0 || objc_msgSend(*(a1 + 32), "_isCharPunctuation:", objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "characterAtIndex:", v6))) && objc_msgSend(v7, "isEqualToString:", v12))
    {
      v9 = [*(*(*(a1 + 40) + 8) + 40) substringWithRange:{v6, objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "length") - v6}];
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      *a4 = 1;
    }
  }
}

- (void)_readVocabFromFile:(id)a3
{
  v11 = 0;
  v4 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:a3 encoding:4 error:&v11];
  v5 = v11;
  v6 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v7 = [v4 componentsSeparatedByCharactersInSet:v6];

  v8 = [MEMORY[0x277CBEA60] array];
  vocab = self->_vocab;
  self->_vocab = v8;

  v10 = self->_vocab;
  self->_vocab = v7;
}

- (id)processInputText:(id)a3
{
  v4 = [(SLBertClassifier *)self _normalizeText:a3];
  v5 = [(SLBertClassifier *)self _wordPieceTokenizer:v4];
  v6 = [(SLBertClassifier *)self _createInputIdsAndRunModel:v5];

  return v6;
}

- (id)processSpeechPackage:(id)a3
{
  v4 = [SLASRFeatureExtractor getBestSpeechRecognitionTextFromPackage:a3];
  v5 = [(SLBertClassifier *)self processInputText:v4];

  return v5;
}

- (SLBertClassifier)initWithConfig:(id)a3 error:(id *)a4 locale:(id)a5
{
  v74[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v62.receiver = self;
  v62.super_class = SLBertClassifier;
  v10 = [(SLBertClassifier *)&v62 init];
  if (!v10)
  {
    goto LABEL_42;
  }

  if (SLLogInitIfNeeded_once != -1)
  {
    dispatch_once(&SLLogInitIfNeeded_once, &__block_literal_global);
  }

  v11 = [MEMORY[0x277D01778] decodeJsonFromFile:v8];
  if (!v11)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing config for Bert Classifier %@", 0];
    v24 = MEMORY[0x277CCA9B8];
    v73 = @"reason";
    v74[0] = v23;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:&v73 count:1];
    v14 = [v24 errorWithDomain:@"com.apple.sl" code:108 userInfo:v25];

    if (v14)
    {
      if (a4)
      {
        v26 = v14;
        *a4 = v14;
      }

      goto LABEL_15;
    }
  }

  if ([v9 containsString:@"en"])
  {
    goto LABEL_9;
  }

  v12 = MEMORY[0x277CCA9B8];
  v71 = @"reason";
  v72 = @"Non en locales supported yet";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
  v14 = [v12 errorWithDomain:@"com.apple.sl" code:110 userInfo:v13];

  if (!v14)
  {
LABEL_9:
    v16 = [v8 stringByDeletingLastPathComponent];
    v17 = [v11 objectForKeyedSubscript:@"vocabFile"];
    v18 = [v16 stringByAppendingPathComponent:v17];

    v60 = v18;
    [(SLBertClassifier *)v10 _readVocabFromFile:v18];
    v19 = [v11 objectForKeyedSubscript:@"unkToken"];
    unkToken = v10->_unkToken;
    v10->_unkToken = v19;

    v21 = [v11 objectForKeyedSubscript:@"version"];
    if (v21)
    {
      v22 = [v11 objectForKeyedSubscript:@"version"];
    }

    else
    {
      v22 = @"default";
    }

    assetVersion = v10->_assetVersion;
    v10->_assetVersion = &v22->isa;

    v10->_numLeadingTokens = 1;
    v28 = [v11 objectForKeyedSubscript:@"leadingText"];
    if (v28)
    {
      v29 = [v11 objectForKeyedSubscript:@"leadingText"];
      v10->_shouldAppendLeadingText = [v29 BOOLValue];
      p_shouldAppendLeadingText = &v10->_shouldAppendLeadingText;
    }

    else
    {
      v10->_shouldAppendLeadingText = 1;
      p_shouldAppendLeadingText = &v10->_shouldAppendLeadingText;
    }

    if (*p_shouldAppendLeadingText)
    {
      v10->_numLeadingTokens = 3;
    }

    v31 = [v11 objectForKeyedSubscript:@"outputNodeName"];
    v32 = v31;
    if (v31)
    {
      v31 = [v11 objectForKeyedSubscript:@"outputNodeName"];
    }

    outputNodeName = v10->_outputNodeName;
    v10->_outputNodeName = v31;

    if (!v10->_outputNodeName)
    {
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing output name for Bert Classifier %@", v11];
      v37 = MEMORY[0x277CCA9B8];
      v69 = @"reason";
      v70 = v36;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v39 = [v37 errorWithDomain:@"com.apple.sl" code:108 userInfo:v38];

      if (v39)
      {
        if (a4)
        {
          v40 = v39;
          *a4 = v39;
        }

        goto LABEL_31;
      }
    }

    *&v10->_maxInputCharsPerWord = xmmword_2675A8C90;
    v34 = [v11 objectForKeyedSubscript:@"truncationList"];
    if (v34)
    {
      v35 = [v11 objectForKeyedSubscript:@"truncationList"];
    }

    else
    {
      v35 = &unk_2878A77E8;
    }

    truncationTokenList = v10->_truncationTokenList;
    v10->_truncationTokenList = v35;

    v42 = [v11 objectForKeyedSubscript:@"modelFile"];
    v59 = v16;
    v43 = [v16 stringByAppendingPathComponent:v42];

    v44 = [MEMORY[0x277CBEBC0] fileURLWithPath:v43];
    v45 = objc_alloc_init(MEMORY[0x277CBFF38]);
    [v45 setComputeUnits:0];
    v61 = 0;
    v46 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v44 configuration:v45 error:&v61];
    v47 = v61;
    bertModel = v10->_bertModel;
    v10->_bertModel = v46;

    if (v47)
    {
      if (a4)
      {
        v49 = v47;
        *a4 = v47;
      }
    }

    else
    {
      v50 = SLLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        vocab = v10->_vocab;
        v52 = v50;
        v53 = [(NSArray *)vocab count];
        v54 = v10->_unkToken;
        *buf = 136315650;
        v64 = "[SLBertClassifier initWithConfig:error:locale:]";
        v65 = 2048;
        v66 = v53;
        v67 = 2112;
        v68 = v54;
        _os_log_impl(&dword_26754E000, v52, OS_LOG_TYPE_DEFAULT, "%s VocabList size: %lu UnkToken %@", buf, 0x20u);

        v50 = SLLogContextFacilityCoreSpeech;
      }

      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v55 = v10->_truncationTokenList;
        *buf = 136315394;
        v64 = "[SLBertClassifier initWithConfig:error:locale:]";
        v65 = 2112;
        v66 = v55;
        _os_log_impl(&dword_26754E000, v50, OS_LOG_TYPE_DEFAULT, "%s Truncation list: %@", buf, 0x16u);
      }
    }

    if (v47)
    {
      goto LABEL_41;
    }

LABEL_42:
    v56 = v10;
    goto LABEL_43;
  }

  if (a4)
  {
    v15 = v14;
    *a4 = v14;
  }

LABEL_15:

LABEL_31:
LABEL_41:
  v56 = 0;
LABEL_43:

  v57 = *MEMORY[0x277D85DE8];
  return v56;
}

@end