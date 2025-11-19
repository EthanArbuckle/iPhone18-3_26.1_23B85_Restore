@interface TIMessageEvent
- (BOOL)hasText:(id)a3;
- (BOOL)hasTextInWordEntry:(id)a3;
- (TIMessageEvent)init;
- (void)adjustEmojiCountsFromKeyboardInputForWordAligned:(id)a3;
- (void)analyzeWordEntry:(id)a3;
- (void)analyzeWordEntryAligned:(id)a3;
- (void)dispatchWithFeatureUsageMetricsCache:(id)a3 andContext:(id)a4 assetAvailabilityStatus:(int64_t)a5;
@end

@implementation TIMessageEvent

- (void)dispatchWithFeatureUsageMetricsCache:(id)a3 andContext:(id)a4 assetAvailabilityStatus:(int64_t)a5
{
  v93[36] = *MEMORY[0x277D85DE8];
  if (self->_wordsEnteredCount >= 1)
  {
    messageText = self->_messageText;
    v8 = a4;
    v9 = a3;
    v10 = [(NSString *)messageText _graphemeCount];
    v11 = [(TIMessageEvent *)self durationInSecondsFromStartTime:self->_startTime endTime:self->_endTime];
    v92[0] = @"totalMessageDuration";
    v91 = [MEMORY[0x277CCABB0] numberWithInt:v11];
    v93[0] = v91;
    v92[1] = @"totalMessageLength";
    v90 = [MEMORY[0x277CCABB0] numberWithInt:v10];
    v93[1] = v90;
    v92[2] = @"totalWordsEntered";
    v89 = [MEMORY[0x277CCABB0] numberWithInt:self->_wordsEnteredCount];
    v93[2] = v89;
    v92[3] = @"totalFinalWordEntered";
    v88 = [MEMORY[0x277CCABB0] numberWithInt:self->_finalWordsEnteredCount];
    v93[3] = v88;
    v92[4] = @"messageDuration";
    v12 = MEMORY[0x277D6F320];
    v87 = [MEMORY[0x277CCABB0] numberWithInt:v11];
    v86 = [v12 bucketNumber:v87 bucketThresholds:&unk_28400BB08 bucketValues:0];
    v93[4] = v86;
    v92[5] = @"messageLength";
    v13 = MEMORY[0x277D6F320];
    v85 = [MEMORY[0x277CCABB0] numberWithInt:v10];
    v84 = [v13 bucketNumber:v85 bucketThresholds:&unk_28400BB20 bucketValues:0];
    v93[5] = v84;
    v92[6] = @"wordsEntered";
    v14 = MEMORY[0x277D6F320];
    v83 = [MEMORY[0x277CCABB0] numberWithInt:self->_wordsEnteredCount];
    v82 = [v14 bucketNumber:v83 bucketThresholds:&unk_28400BB38 bucketValues:0];
    v93[6] = v82;
    v92[7] = @"finalWordEntered";
    v15 = MEMORY[0x277D6F320];
    v81 = [MEMORY[0x277CCABB0] numberWithInt:self->_finalWordsEnteredCount];
    v80 = [v15 bucketNumber:v81 bucketThresholds:&unk_28400BB38 bucketValues:0];
    v93[7] = v80;
    v92[8] = @"static";
    v16 = MEMORY[0x277D6F320];
    v79 = [MEMORY[0x277CCABB0] numberWithInt:self->_staticCount];
    v78 = [v16 bucketNumber:v79 bucketThresholds:&unk_28400BB38 bucketValues:0];
    v93[8] = v78;
    v92[9] = @"dynamic";
    v17 = MEMORY[0x277D6F320];
    v77 = [MEMORY[0x277CCABB0] numberWithInt:self->_dynamicCount];
    v76 = [v17 bucketNumber:v77 bucketThresholds:&unk_28400BB38 bucketValues:0];
    v93[9] = v76;
    v92[10] = @"textReplacements";
    v18 = MEMORY[0x277D6F320];
    v75 = [MEMORY[0x277CCABB0] numberWithInt:self->_textReplacementsCount];
    v74 = [v18 bucketNumber:v75 bucketThresholds:&unk_28400BB50 bucketValues:0];
    v93[10] = v74;
    v92[11] = @"addressBook";
    v19 = MEMORY[0x277D6F320];
    v73 = [MEMORY[0x277CCABB0] numberWithInt:self->_addressBookCount];
    v72 = [v19 bucketNumber:v73 bucketThresholds:&unk_28400BB50 bucketValues:0];
    v93[11] = v72;
    v92[12] = @"namedEntities";
    v20 = MEMORY[0x277D6F320];
    v69 = [MEMORY[0x277CCABB0] numberWithInt:self->_namedEntitiesCount];
    v68 = [v20 bucketNumber:v69 bucketThresholds:&unk_28400BB50 bucketValues:0];
    v93[12] = v68;
    v92[13] = @"oov";
    v21 = MEMORY[0x277D6F320];
    v67 = [MEMORY[0x277CCABB0] numberWithInt:self->_oovCount];
    v66 = [v21 bucketNumber:v67 bucketThresholds:&unk_28400BB50 bucketValues:0];
    v93[13] = v66;
    v92[14] = @"supplementalLexicon";
    v22 = MEMORY[0x277D6F320];
    v65 = [MEMORY[0x277CCABB0] numberWithInt:self->_supplementalLexiconCount];
    v64 = [v22 bucketNumber:v65 bucketThresholds:&unk_28400BB50 bucketValues:0];
    v93[14] = v64;
    v92[15] = @"emojiPlane";
    v23 = MEMORY[0x277D6F320];
    v63 = [MEMORY[0x277CCABB0] numberWithInt:self->_emojiPlaneCount];
    v62 = [v23 bucketNumber:v63 bucketThresholds:&unk_28400BB50 bucketValues:0];
    v93[15] = v62;
    v92[16] = @"emojiPrediction";
    v24 = MEMORY[0x277D6F320];
    v61 = [MEMORY[0x277CCABB0] numberWithInt:self->_emojiPredictionCount];
    v60 = [v24 bucketNumber:v61 bucketThresholds:&unk_28400BB50 bucketValues:0];
    v93[16] = v60;
    v92[17] = @"emojiSearch";
    v25 = MEMORY[0x277D6F320];
    v59 = [MEMORY[0x277CCABB0] numberWithInt:self->_emojiSearchCount];
    v58 = [v25 bucketNumber:v59 bucketThresholds:&unk_28400BB50 bucketValues:0];
    v93[17] = v58;
    v92[18] = @"emojiPopover";
    v26 = MEMORY[0x277D6F320];
    v57 = [MEMORY[0x277CCABB0] numberWithInt:self->_emojiPopoverCount];
    v56 = [v26 bucketNumber:v57 bucketThresholds:&unk_28400BB50 bucketValues:0];
    v93[18] = v56;
    v92[19] = @"responseKit";
    v27 = MEMORY[0x277D6F320];
    v55 = [MEMORY[0x277CCABB0] numberWithInt:self->_responseKitCount];
    v54 = [v27 bucketNumber:v55 bucketThresholds:&unk_28400BB50 bucketValues:0];
    v93[19] = v54;
    v92[20] = @"pqt";
    v28 = MEMORY[0x277D6F320];
    v53 = [MEMORY[0x277CCABB0] numberWithInt:self->_pqtCount];
    v52 = [v28 bucketNumber:v53 bucketThresholds:&unk_28400BB50 bucketValues:0];
    v93[20] = v52;
    v92[21] = @"multilingual";
    v29 = MEMORY[0x277D6F320];
    v51 = [MEMORY[0x277CCABB0] numberWithInt:self->_multilingualCount];
    v50 = [v29 bucketNumber:v51 bucketThresholds:&unk_28400BB50 bucketValues:0];
    v93[21] = v50;
    v92[22] = kFeatureKeyboardUsage;
    v49 = [v9 featureUsageMetricFromName:? forContext:?];
    v93[22] = v49;
    v92[23] = kFeatureContinuousPathUsage;
    v48 = [v9 featureUsageMetricFromName:? forContext:?];
    v93[23] = v48;
    v92[24] = kFeatureAutocorrectionUsage;
    v47 = [v9 featureUsageMetricFromName:? forContext:?];
    v93[24] = v47;
    v92[25] = kFeatureCandidateBarUsage;
    v46 = [v9 featureUsageMetricFromName:? forContext:?];
    v93[25] = v46;
    v92[26] = kFeatureMultilingualUsage;
    v45 = [v9 featureUsageMetricFromName:? forContext:?];
    v93[26] = v45;
    v92[27] = kFeatureStringTypingSpeed;
    v30 = [v9 featureUsageMetricFromName:? forContext:?];

    v93[27] = v30;
    v92[28] = kFeatureStringAssetAvailabilityStatus;
    v31 = @"Installed";
    if (!a5)
    {
      v31 = @"Unavailable";
    }

    v32 = v31;
    v93[28] = v32;
    v92[29] = kFeatureStringKeyboardLanguage;
    v33 = [v8 inputLanguage];
    v93[29] = v33;
    v92[30] = kFeatureStringKeyboardRegion;
    v34 = [v8 inputRegion];
    v93[30] = v34;
    v92[31] = kFeatureStringKeyboardVariant;
    v35 = [v8 inputVariant];
    v93[31] = v35;
    v92[32] = kFeatureStringKeyboardSecondaryLanguage;
    v36 = [v8 secondaryLanguage];
    v93[32] = v36;
    v92[33] = kFeatureStringKeyboardSecondaryRegion;
    v37 = [v8 secondaryRegion];
    v93[33] = v37;
    v92[34] = kFeatureStringKeyboardLayout;
    v38 = [v8 layoutName];
    v93[34] = v38;
    v92[35] = kFeatureStringKeyboardType;
    v39 = +[TIKBAnalyticsMetricsContext keyboardTypeEnumToString:](TIKBAnalyticsMetricsContext, "keyboardTypeEnumToString:", [v8 keyboardType]);
    v93[35] = v39;
    v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:36];

    v40 = [MEMORY[0x277D6F318] sharedInstance];
    v41 = [v8 testingParameters];

    [v40 dispatchEventWithName:@"typingSpeedDetails" payload:v71 testingParameters:v41 allowSparsePayload:0];
    v42 = +[TIProactiveQuickTypeManager sharedInstance];
    v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SpeedMetric"];
    [v42 propogateMetrics:v43 data:v71];
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasText:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  v7 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  LOBYTE(v7) = [v8 length] != 0;
  return v7;
}

- (void)adjustEmojiCountsFromKeyboardInputForWordAligned:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [a3 alignedKeyboardInputs];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) string];
        if ([v12 _containsEmoji])
        {
          ++v9;
          if (v7 > 0)
          {
            ++v8;
          }

          v7 = 0;
        }

        else
        {
          v7 += [(TIMessageEvent *)self hasText:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);

    if (v7 <= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 1;
    }

    if (v9 >= 1)
    {
      self->_emojiPlaneCount += v9;
      v13 += v9;
      self->_wordsEnteredCount = v13 + self->_wordsEnteredCount - 1;
    }
  }

  else
  {

    v13 = 0;
  }

  self->_finalWordsEnteredCount += v13;
  v14 = *MEMORY[0x277D85DE8];
}

- (void)analyzeWordEntryAligned:(id)a3
{
  v18 = a3;
  v4 = [v18 originalWord];
  v5 = [v4 editedEntry];
  v6 = [v18 originalWord];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 editedEntry];

    v7 = v8;
  }

  v9 = [v7 acceptedCandidate];
  v10 = [v9 candidate];
  v11 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v12 = [v10 stringByTrimmingCharactersInSet:v11];

  v13 = [v7 keyboardState];
  v14 = [v13 emojiSearchMode];

  v15 = [v7 keyboardState];
  v16 = [v15 emojiPopoverMode];

  if (![v12 _containsEmoji])
  {
    if (v14)
    {
      goto LABEL_12;
    }

    if ([v9 isContinuousPathConversion])
    {
      ++self->_finalWordsEnteredCount;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if ((v16 & 1) == 0)
  {
    if (v14)
    {
      ++self->_finalWordsEnteredCount;
      ++self->_emojiSearchCount;
LABEL_12:
      if (![v12 length])
      {
        goto LABEL_41;
      }

      goto LABEL_17;
    }

    if (([v7 wordEntryType] & 4) != 0)
    {
      ++self->_finalWordsEnteredCount;
      ++self->_emojiPredictionCount;
      goto LABEL_17;
    }

LABEL_15:
    [(TIMessageEvent *)self adjustEmojiCountsFromKeyboardInputForWordAligned:v18];
    goto LABEL_17;
  }

  ++self->_finalWordsEnteredCount;
  ++self->_emojiPopoverCount;
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_17:
  if (([v9 sourceMask] & 0x8000) != 0 || (objc_msgSend(v9, "sourceMask") & 0x20000) != 0)
  {
    ++self->_staticCount;
  }

  if (([v9 sourceMask] & 0x10000) != 0 || (objc_msgSend(v9, "sourceMask") & 0x40000) != 0)
  {
    ++self->_dynamicCount;
  }

  if (([v9 sourceMask] & 4) != 0)
  {
    ++self->_textReplacementsCount;
  }

  if (([v9 sourceMask] & 8) != 0)
  {
    ++self->_addressBookCount;
  }

  if (([v9 sourceMask] & 0x10) != 0)
  {
    ++self->_namedEntitiesCount;
  }

  if (([v9 sourceMask] & 0x20) != 0)
  {
    ++self->_oovCount;
  }

  if (([v9 sourceMask] & 0x400) != 0)
  {
    ++self->_supplementalLexiconCount;
  }

  if ([v9 isResponseKitCandidate])
  {
    ++self->_responseKitCount;
  }

  if ([v7 isMultilingual])
  {
    ++self->_multilingualCount;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [v9 proactiveTrigger];
    if (v17)
    {
      ++self->_pqtCount;
    }
  }

LABEL_41:
}

- (BOOL)hasTextInWordEntry:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 acceptedCandidate];
  v6 = [v5 candidate];
  v7 = [(TIMessageEvent *)self hasText:v6];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [v4 allKeyboardInputs];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v18 + 1) + 8 * i) string];
          v15 = [(TIMessageEvent *)self hasText:v14];

          if (v15)
          {
            v8 = 1;
            goto LABEL_13;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_13:
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)analyzeWordEntry:(id)a3
{
  v23 = a3;
  v4 = [v23 keyboardState];
  v5 = [v4 documentState];
  v6 = [v5 contextBeforeInput];
  if (v6)
  {
    v7 = [v5 contextBeforeInput];
  }

  else
  {
    v7 = &stru_283FDFAF8;
  }

  v8 = [v5 contextAfterInput];
  if (v8)
  {
    v9 = [v5 contextAfterInput];
  }

  else
  {
    v9 = &stru_283FDFAF8;
  }

  v10 = [(__CFString *)v7 stringByAppendingString:v9];
  messageText = self->_messageText;
  self->_messageText = v10;

  [v23 startTime];
  if (v12 > 0.0)
  {
    startTime = self->_startTime;
    [v23 startTime];
    if (startTime >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = startTime;
    }

    if (startTime != 0.0)
    {
      v14 = v15;
    }

    self->_startTime = v14;
  }

  [v23 endTime];
  if (v16 > 0.0)
  {
    endTime = self->_endTime;
    [v23 endTime];
    if (endTime >= v18 && endTime != 0.0)
    {
      v18 = endTime;
    }

    self->_endTime = v18;
  }

  v20 = [v23 keyboardState];
  v21 = [v20 emojiSearchMode];

  v22 = [(TIMessageEvent *)self hasTextInWordEntry:v23];
  if ((v21 & 1) == 0 && v22)
  {
    ++self->_wordsEnteredCount;
  }
}

- (TIMessageEvent)init
{
  v6.receiver = self;
  v6.super_class = TIMessageEvent;
  v2 = [(TIMessageEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    messageText = v2->_messageText;
    v2->_messageText = &stru_283FDFAF8;
  }

  return v3;
}

@end