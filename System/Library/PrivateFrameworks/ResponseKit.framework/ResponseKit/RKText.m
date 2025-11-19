@interface RKText
+ (id)annotationNameFromType:(unint64_t)a3;
+ (id)defaultDataProvider;
+ (id)polarityNameFromType:(unint64_t)a3;
+ (unint64_t)annotationTypeFromName:(id)a3;
+ (unint64_t)polarityTypeFromName:(id)a3;
+ (void)initialize;
- (BOOL)cleanupData;
- (RKText)initWithString:(id)a3 andLanguageIdentifier:(id)a4 trainingWeight:(double)a5 trainVerbatim:(BOOL)a6;
- (id)lsmText;
- (id)subTextWithRange:(_NSRange)a3;
- (id)subTextsByPolarity;
- (id)taggedText;
- (unint64_t)annotatedPolarity;
- (void)enumerateAnnotationsInRange:(_NSRange)a3 usingBlock:(id)a4;
@end

@implementation RKText

+ (id)defaultDataProvider
{
  if (defaultDataProvider_onceToken != -1)
  {
    +[RKText defaultDataProvider];
  }

  v3 = defaultDataProvider_sDataProvider;

  return v3;
}

uint64_t __29__RKText_defaultDataProvider__block_invoke()
{
  defaultDataProvider_sDataProvider = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (void)initialize
{
  v32[15] = *MEMORY[0x277D85DE8];
  v31[0] = @"None";
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v32[0] = v28;
  v31[1] = @"DateTimeBegin";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v32[1] = v27;
  v31[2] = @"DateTimeEnd";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v32[2] = v26;
  v31[3] = @"DateTimeDuration";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
  v32[3] = v25;
  v31[4] = @"LocationGeneral";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:4];
  v32[4] = v24;
  v31[5] = @"LocationAddress";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:5];
  v32[5] = v23;
  v31[6] = @"LocationPointOfInterest";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:6];
  v32[6] = v2;
  v31[7] = @"LocationMeetingRoom";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:7];
  v32[7] = v3;
  v31[8] = @"LocationSender";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:8];
  v32[8] = v4;
  v31[9] = @"LocationRecipient";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:9];
  v32[9] = v5;
  v31[10] = @"PolarityNone";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10];
  v32[10] = v6;
  v31[11] = @"PolarityProposal";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:11];
  v32[11] = v7;
  v31[12] = @"PolarityConfirmation";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:12];
  v32[12] = v8;
  v31[13] = @"PolarityRejection";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:13];
  v32[13] = v9;
  v31[14] = @"PolarityProposalSupplement";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:14];
  v32[14] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:15];
  v12 = sAnnotationNames;
  sAnnotationNames = v11;

  v29[0] = @"None";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v30[0] = v13;
  v29[1] = @"Proposal";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v30[1] = v14;
  v29[2] = @"Confirmation";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v30[2] = v15;
  v29[3] = @"Rejection";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
  v30[3] = v16;
  v29[4] = @"Ambiguous";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:4];
  v30[4] = v17;
  v29[5] = @"ProposalSupplement";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:5];
  v30[5] = v18;
  v29[6] = @"Undefined";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:-1];
  v30[6] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:7];
  v21 = sPolarityNames;
  sPolarityNames = v20;

  v22 = *MEMORY[0x277D85DE8];
}

+ (id)annotationNameFromType:(unint64_t)a3
{
  v3 = sAnnotationNames;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v5 = [v3 allKeysForObject:v4];

  v6 = [v5 objectAtIndexedSubscript:0];

  return v6;
}

+ (unint64_t)annotationTypeFromName:(id)a3
{
  v3 = [sAnnotationNames objectForKeyedSubscript:a3];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

+ (id)polarityNameFromType:(unint64_t)a3
{
  v3 = sPolarityNames;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v5 = [v3 allKeysForObject:v4];

  v6 = [v5 objectAtIndexedSubscript:0];

  return v6;
}

+ (unint64_t)polarityTypeFromName:(id)a3
{
  v3 = [sPolarityNames objectForKeyedSubscript:a3];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (RKText)initWithString:(id)a3 andLanguageIdentifier:(id)a4 trainingWeight:(double)a5 trainVerbatim:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v20.receiver = self;
  v20.super_class = RKText;
  v13 = [(RKText *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_string, a3);
    v15 = [RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:v12];
    languageID = v14->_languageID;
    v14->_languageID = v15;

    v17 = [MEMORY[0x277CBEB18] array];
    annotations = v14->_annotations;
    v14->_annotations = v17;

    v14->_trainingWeight = a5;
    v14->_trainVerbatim = a6;
  }

  return v14;
}

- (void)enumerateAnnotationsInRange:(_NSRange)a3 usingBlock:(id)a4
{
  length = a3.length;
  location = a3.location;
  v24 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(RKText *)self annotations];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v19 + 1) + 8 * v12);
      v25.location = [v13 range];
      v26.location = location;
      v26.length = length;
      if (NSIntersectionRange(v25, v26).length)
      {
        v18 = 0;
        v14 = [v13 type];
        v15 = [v13 range];
        v7[2](v7, v14, v15, v16, &v18);
        if (v18)
        {
          break;
        }
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)cleanupData
{
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 1;
  v3 = [(RKText *)self annotations];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __21__RKText_cleanupData__block_invoke;
  v44[3] = &unk_279B10468;
  v44[4] = self;
  [v3 enumerateObjectsUsingBlock:v44];

  v4 = MEMORY[0x277CBEAF8];
  v5 = [(RKText *)self languageID];
  v6 = [v4 localeWithLocaleIdentifier:v5];

  v7 = [(RKText *)self string];
  v8 = [(RKText *)self string];
  v49.length = [v8 length];
  v49.location = 0;
  v9 = CFStringTokenizerCreate(*MEMORY[0x277CBECE8], v7, v49, 4uLL, v6);

  if (*(v46 + 24) == 1)
  {
    do
    {
      if (!CFStringTokenizerAdvanceToNextToken(v9))
      {
        break;
      }

      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v9);
      v11 = [(RKText *)self annotations];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __21__RKText_cleanupData__block_invoke_2;
      v42[3] = &unk_279B10490;
      v43 = CurrentTokenRange;
      v42[4] = self;
      v42[5] = &v45;
      [v11 enumerateObjectsUsingBlock:v42];
    }

    while ((v46[3] & 1) != 0);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (cleanupData_onceToken2 != -1)
  {
    [RKText cleanupData];
  }

  v12 = [(RKText *)self languageID];

  if (v12)
  {
    v13 = cleanupData_sDateTimeRegEx;
    v14 = [(RKText *)self languageID];
    v15 = [v13 objectForKeyedSubscript:v14];

    if (!v15)
    {
      if ([cleanupData_sDateTimeRegEx count] >= 2)
      {
        [cleanupData_sDateTimeRegEx removeAllObjects];
      }

      v16 = objc_alloc_init(MEMORY[0x277CCA968]);
      v17 = MEMORY[0x277CBEAF8];
      v18 = [(RKText *)self languageID];
      v19 = [v17 localeWithLocaleIdentifier:v18];
      [v16 setLocale:v19];

      v20 = [v16 standaloneWeekdaySymbols];
      v21 = MEMORY[0x277CCACA8];
      v22 = [v20 componentsJoinedByString:@"|"];
      v23 = [v21 stringWithFormat:@"\\b(%@)\\b", v22];

      v24 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v23 options:1 error:0];
      v25 = cleanupData_sDateTimeRegEx;
      v26 = [(RKText *)self languageID];
      [v25 setObject:v24 forKeyedSubscript:v26];
    }

    v27 = cleanupData_sDateTimeRegEx;
    v28 = [(RKText *)self languageID];
    v29 = [v27 objectForKeyedSubscript:v28];
    v30 = [(RKText *)self string];
    v31 = [(RKText *)self string];
    v32 = [v31 length];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __21__RKText_cleanupData__block_invoke_4;
    v41[3] = &unk_279B104B8;
    v41[4] = self;
    [v29 enumerateMatchesInString:v30 options:0 range:0 usingBlock:{v32, v41}];
  }

  v33 = [(RKText *)self annotations];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __21__RKText_cleanupData__block_invoke_5;
  v40[3] = &unk_279B10468;
  v40[4] = self;
  [v33 enumerateObjectsWithOptions:2 usingBlock:v40];

  v34 = [(RKText *)self annotations];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __21__RKText_cleanupData__block_invoke_7;
  v39[3] = &unk_279B10468;
  v39[4] = self;
  [v34 enumerateObjectsWithOptions:2 usingBlock:v39];

  v35 = [(RKText *)self annotations];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __21__RKText_cleanupData__block_invoke_9;
  v38[3] = &unk_279B10530;
  v38[4] = self;
  v38[5] = &v45;
  [v35 enumerateObjectsUsingBlock:v38];

  v36 = *(v46 + 24);
  _Block_object_dispose(&v45, 8);
  return v36;
}

void __21__RKText_cleanupData__block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = [*(a1 + 32) string];
  v4 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v5 = [v4 invertedSet];
  v6 = [v19 range];
  v8 = [v3 rangeOfCharacterFromSet:v5 options:0 range:{v6, v7}];

  v9 = [*(a1 + 32) string];
  v10 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v11 = [v10 invertedSet];
  v12 = [v19 range];
  v14 = [v9 rangeOfCharacterFromSet:v11 options:4 range:{v12, v13}];
  v16 = v15;

  if (v8 == 0x7FFFFFFFFFFFFFFFLL || v8 > v14)
  {
    v18 = [*(a1 + 32) taggedText];
    printf("Error: Empty annotation range '%s'\n", [v18 UTF8String]);
  }

  else if ([v19 range] != v8 || v17 != v16 - v8 + v14)
  {
    [v19 setRange:{v8, v16 - v8 + v14}];
  }
}

void __21__RKText_cleanupData__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  if ([v11 range] > *(a1 + 48) && objc_msgSend(v11, "range") < *(a1 + 56) + *(a1 + 48) || (v6 = objc_msgSend(v11, "range"), (v6 + v7) > *(a1 + 48)) && (v8 = objc_msgSend(v11, "range"), (v8 + v9) < *(a1 + 56) + *(a1 + 48)))
  {
    v10 = [*(a1 + 32) taggedText];
    printf("Error: Invalid annotation range splits word '%s'\n", [v10 UTF8String]);

    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

uint64_t __21__RKText_cleanupData__block_invoke_3()
{
  cleanupData_sDateTimeRegEx = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

uint64_t __21__RKText_cleanupData__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 range];

  return [v2 annotateRange:v4 type:v3 machineGenerated:{1, 1}];
}

void __21__RKText_cleanupData__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if ([v6 type] == 11)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v7 = [*(a1 + 32) annotations];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __21__RKText_cleanupData__block_invoke_6;
    v10[3] = &unk_279B104E0;
    v8 = v6;
    v11 = v8;
    v12 = &v14;
    v13 = a4;
    [v7 enumerateObjectsUsingBlock:v10];

    if ((v15[3] & 1) == 0)
    {
      v9 = [*(a1 + 32) taggedText];
      printf("Warning: Proposal annotation does not contain any date information '%s'\n", [v9 UTF8String]);

      [v8 setType:14];
    }

    _Block_object_dispose(&v14, 8);
  }
}

void __21__RKText_cleanupData__block_invoke_6(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) range];
  v5 = v4;
  v11.location = [v8 range];
  v11.length = v6;
  v10.location = v3;
  v10.length = v5;
  if (NSIntersectionRange(v10, v11).length && ([v8 type] == 1 || objc_msgSend(v8, "type") == 2 || objc_msgSend(v8, "type") == 3))
  {
    v7 = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *v7 = 1;
  }
}

void __21__RKText_cleanupData__block_invoke_7(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) annotations];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __21__RKText_cleanupData__block_invoke_8;
  v9[3] = &unk_279B10508;
  v7 = *(a1 + 32);
  v10 = v5;
  v11 = v7;
  v12 = a3;
  v8 = v5;
  [v6 enumerateObjectsUsingBlock:v9];
}

void __21__RKText_cleanupData__block_invoke_8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (*(a1 + 48) != a3)
  {
    v18 = v7;
    v8 = [*(a1 + 32) type];
    v9 = v8 == [v18 type];
    v7 = v18;
    if (v9)
    {
      v10 = [*(a1 + 32) range];
      v12 = v11;
      v21.location = [v18 range];
      v21.length = v13;
      v20.location = v10;
      v20.length = v12;
      v14 = NSUnionRange(v20, v21);
      v9 = v14.location == [v18 range];
      v7 = v18;
      if (v9 && v14.length == v15)
      {
        if (([*(a1 + 32) machineGenerated] & 1) == 0 && (objc_msgSend(v18, "machineGenerated") & 1) == 0)
        {
          v16 = [*(a1 + 40) taggedText];
          printf("Warning: Redundant nested annotation ranges '%s'\n", [v16 UTF8String]);
        }

        v17 = [*(a1 + 40) annotations];
        [v17 removeObjectAtIndex:*(a1 + 48)];

        *a4 = 1;
        v7 = v18;
      }
    }
  }
}

void __21__RKText_cleanupData__block_invoke_9(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v22 = a2;
  while (1)
  {
    ++a3;
    v7 = [*(a1 + 32) annotations];
    v8 = [v7 count];

    if (a3 >= v8)
    {
      break;
    }

    v9 = [v22 range];
    v11 = v10;
    v12 = [*(a1 + 32) annotations];
    v13 = [v12 objectAtIndexedSubscript:a3];
    v14 = [v13 range];
    v16 = v15;

    v24.location = v9;
    v24.length = v11;
    v25.location = v14;
    v25.length = v16;
    if (NSIntersectionRange(v24, v25).length)
    {
      v17 = v9 + v11;
      v18 = v14 + v16;
      v19 = v9 >= v14 || v17 >= v18;
      if (!v19 || (v14 < v9 ? (v20 = v18 >= v17) : (v20 = 1), !v20))
      {
        v21 = [*(a1 + 32) taggedText];
        printf("Error: Invalid staggered annotation ranges '%s'\n", [v21 UTF8String]);

        *(*(*(a1 + 40) + 8) + 24) = 0;
        *a4 = 1;
        break;
      }
    }
  }
}

- (id)subTextWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v26 = *MEMORY[0x277D85DE8];
  v6 = [RKText alloc];
  v7 = [(RKText *)self string];
  v8 = [v7 substringWithRange:{location, length}];
  v9 = [(RKText *)self languageID];
  [(RKText *)self trainingWeight];
  v11 = [(RKText *)v6 initWithString:v8 andLanguageIdentifier:v9 trainingWeight:[(RKText *)self trainVerbatim] trainVerbatim:v10];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [(RKText *)self annotations];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        v28.location = [v17 range];
        v29.location = location;
        v29.length = length;
        v18 = NSIntersectionRange(v28, v29);
        if (v18.length)
        {
          -[RKText annotateRange:type:](v11, "annotateRange:type:", v18.location - location, v18.length, [v17 type]);
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)subTextsByPolarity
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [(RKText *)self annotations];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type >= %lu", 10];
  v7 = [v5 filteredArrayUsingPredicate:v6];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = MEMORY[0x277CCAE60];
        v14 = [*(*(&v34 + 1) + 8 * i) range];
        v16 = [v13 valueWithRange:{v14, v15}];
        [v4 addObject:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v10);
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __28__RKText_subTextsByPolarity__block_invoke;
  v32[3] = &unk_279B0FE10;
  v17 = v4;
  v33 = v17;
  [v17 enumerateObjectsWithOptions:2 usingBlock:v32];
  [v17 sortUsingComparator:&__block_literal_global_173];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v28 + 1) + 8 * j) rangeValue];
        v25 = [(RKText *)self subTextWithRange:v23, v24];
        [v3 addObject:v25];
      }

      v20 = [v18 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v20);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v3;
}

void __28__RKText_subTextsByPolarity__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  if (a3)
  {
    v5 = 0;
    while (1)
    {
      v6 = [v15 rangeValue];
      v8 = v7;
      v9 = [*(a1 + 32) objectAtIndexedSubscript:v5];
      v10 = [v9 rangeValue];
      v12 = v11;

      v17.location = v6;
      v17.length = v8;
      v19.location = v10;
      v19.length = v12;
      if (NSIntersectionRange(v17, v19).length)
      {
        break;
      }

      if (a3 == ++v5)
      {
        goto LABEL_7;
      }
    }

    v18.location = v6;
    v18.length = v8;
    v20.location = v10;
    v20.length = v12;
    v13 = NSUnionRange(v18, v20);
    v14 = [MEMORY[0x277CCAE60] valueWithRange:{v13.location, v13.length}];
    [*(a1 + 32) setObject:v14 atIndexedSubscript:v5];

    [*(a1 + 32) removeObjectAtIndex:a3];
  }

LABEL_7:
}

uint64_t __28__RKText_subTextsByPolarity__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 rangeValue];
  if (v6 >= [v5 rangeValue])
  {
    v8 = [v4 rangeValue];
    v7 = v8 > [v5 rangeValue];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (unint64_t)annotatedPolarity
{
  v2 = [(RKText *)self annotations];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type >= %lu", 10];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  v5 = [v4 valueForKeyPath:@"@distinctUnionOfObjects.type"];
  if ([v5 count])
  {
    if ([v5 count] == 1 && (objc_msgSend(v5, "objectAtIndexedSubscript:", 0), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "unsignedIntegerValue"), v6, (v7 - 10) <= 4))
    {
      v8 = qword_2620D4750[v7 - 10];
    }

    else
    {
      v8 = 4;
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (id)taggedText
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CBEB18] array];
  v47 = self;
  v5 = [(RKText *)self annotations];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __20__RKText_taggedText__block_invoke;
  v52[3] = &unk_279B10468;
  v6 = v4;
  v53 = v6;
  [v5 enumerateObjectsUsingBlock:v52];

  [v6 sortUsingComparator:&__block_literal_global_204];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v49;
    do
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v49 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v48 + 1) + 8 * v11);
        v14 = [v13 objectForKeyedSubscript:@"location"];
        v9 = [v14 unsignedIntegerValue];

        v15 = [(RKText *)v47 string];
        v16 = [v15 substringWithRange:{v12, v9 - v12}];

        v17 = [v16 stringByEscapingXMLEntities];

        [v3 appendString:v17];
        v18 = [v13 objectForKeyedSubscript:@"type"];
        v19 = [v18 isEqualToString:@"open"];

        v20 = @"<%@>";
        if ((v19 & 1) != 0 || ([v13 objectForKeyedSubscript:@"type"], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", @"close"), v21, v20 = @"</%@>", v22))
        {
          v23 = MEMORY[0x277CCACA8];
          v24 = [v13 objectForKeyedSubscript:@"name"];
          v25 = [v23 stringWithFormat:v20, v24];
          [v3 appendString:v25];
        }

        ++v11;
        v12 = v9;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v26 = [(RKText *)v47 string];
  v27 = [v26 substringFromIndex:v9];

  v28 = [v27 stringByEscapingXMLEntities];

  [v3 appendString:v28];
  v29 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v30 = [v3 componentsSeparatedByCharactersInSet:v29];
  v31 = [v30 componentsJoinedByString:@"<br/>"];
  v32 = [v31 mutableCopy];

  v33 = MEMORY[0x277CCACA8];
  v34 = [(RKText *)v47 languageID];
  if (v34)
  {
    v35 = MEMORY[0x277CCACA8];
    v31 = [(RKText *)v47 languageID];
    v36 = [v35 stringWithFormat:@" lang=%@", v31];
  }

  else
  {
    v36 = &stru_2874A9C90;
  }

  [(RKText *)v47 trainingWeight];
  v38 = v37;
  if (v37 == 1.0)
  {
    v41 = &stru_2874A9C90;
  }

  else
  {
    v39 = MEMORY[0x277CCACA8];
    [(RKText *)v47 trainingWeight];
    v41 = [v39 stringWithFormat:@" weight=%d", v40];
  }

  v42 = [v33 stringWithFormat:@"<T%@%@>%@</T>", v36, v41, v32];
  v43 = [v42 mutableCopy];

  if (v38 != 1.0)
  {
  }

  if (v34)
  {
  }

  v44 = *MEMORY[0x277D85DE8];

  return v43;
}

void __20__RKText_taggedText__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v23[6] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:a3];
  v8 = +[RKText annotationNameFromType:](RKText, "annotationNameFromType:", [v6 type]);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "range")}];
  v10 = MEMORY[0x277CCABB0];
  v11 = [v6 range];
  v13 = v12;

  v14 = [v10 numberWithUnsignedInteger:v11 + v13];
  v15 = *(a1 + 32);
  v22[0] = @"index";
  v22[1] = @"name";
  v23[0] = v7;
  v23[1] = v8;
  v22[2] = @"type";
  v22[3] = @"location";
  v23[2] = @"open";
  v23[3] = v9;
  v22[4] = @"openLocation";
  v22[5] = @"closeLocation";
  v23[4] = v9;
  v23[5] = v14;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:6];
  [v15 addObject:v16];

  v17 = *(a1 + 32);
  v20[0] = @"index";
  v20[1] = @"name";
  v21[0] = v7;
  v21[1] = v8;
  v20[2] = @"type";
  v20[3] = @"location";
  v21[2] = @"close";
  v21[3] = v14;
  v20[4] = @"openLocation";
  v20[5] = @"closeLocation";
  v21[4] = v9;
  v21[5] = v14;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
  [v17 addObject:v18];

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __20__RKText_taggedText__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 objectForKeyedSubscript:@"location"];
  v7 = [v6 unsignedIntegerValue];
  v8 = [v5 objectForKeyedSubscript:@"location"];
  v9 = [v8 unsignedIntegerValue];

  if (v7 < v9)
  {
    goto LABEL_2;
  }

  v11 = [v4 objectForKeyedSubscript:@"location"];
  v12 = [v11 unsignedIntegerValue];
  v13 = [v5 objectForKeyedSubscript:@"location"];
  v14 = [v13 unsignedIntegerValue];

  if (v12 > v14)
  {
LABEL_4:
    v10 = 1;
    goto LABEL_5;
  }

  v16 = [v4 objectForKeyedSubscript:@"type"];
  if ([v16 isEqualToString:@"close"])
  {
    v17 = [v5 objectForKeyedSubscript:@"type"];
    v18 = [v17 isEqualToString:@"open"];

    if (v18)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v19 = [v4 objectForKeyedSubscript:@"type"];
  if ([v19 isEqualToString:@"open"])
  {
    v20 = [v5 objectForKeyedSubscript:@"type"];
    v21 = [v20 isEqualToString:@"close"];

    if (v21)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  v22 = [v4 objectForKeyedSubscript:@"type"];
  v23 = [v22 isEqualToString:@"open"];

  if (v23)
  {
    v24 = [v4 objectForKeyedSubscript:@"closeLocation"];
    v25 = [v24 unsignedIntegerValue];
    v26 = [v5 objectForKeyedSubscript:@"closeLocation"];
    v27 = [v26 unsignedIntegerValue];

    if (v25 <= v27)
    {
      v28 = [v4 objectForKeyedSubscript:@"closeLocation"];
      v29 = [v28 unsignedIntegerValue];
      v30 = [v5 objectForKeyedSubscript:@"closeLocation"];
      v31 = [v30 unsignedIntegerValue];

      if (v29 < v31)
      {
        goto LABEL_4;
      }

      v32 = [v4 objectForKeyedSubscript:@"index"];
      v33 = [v32 unsignedIntegerValue];
      v34 = [v5 objectForKeyedSubscript:@"index"];
      v35 = [v34 unsignedIntegerValue];

      if (v33 >= v35)
      {
        v36 = [v4 objectForKeyedSubscript:@"index"];
        v37 = [v36 unsignedIntegerValue];
        v38 = [v5 objectForKeyedSubscript:@"index"];
        v39 = v37 > [v38 unsignedIntegerValue];
LABEL_23:

        v10 = v39;
        goto LABEL_5;
      }
    }
  }

  else
  {
    v40 = [v4 objectForKeyedSubscript:@"openLocation"];
    v41 = [v40 unsignedIntegerValue];
    v42 = [v5 objectForKeyedSubscript:@"openLocation"];
    v43 = [v42 unsignedIntegerValue];

    if (v41 <= v43)
    {
      v44 = [v4 objectForKeyedSubscript:@"openLocation"];
      v45 = [v44 unsignedIntegerValue];
      v46 = [v5 objectForKeyedSubscript:@"openLocation"];
      v47 = [v46 unsignedIntegerValue];

      if (v45 < v47)
      {
        goto LABEL_4;
      }

      v48 = [v4 objectForKeyedSubscript:@"index"];
      v49 = [v48 unsignedIntegerValue];
      v50 = [v5 objectForKeyedSubscript:@"index"];
      v51 = [v50 unsignedIntegerValue];

      if (v49 <= v51)
      {
        v36 = [v4 objectForKeyedSubscript:@"index"];
        v52 = [v36 unsignedIntegerValue];
        v38 = [v5 objectForKeyedSubscript:@"index"];
        v39 = v52 < [v38 unsignedIntegerValue];
        goto LABEL_23;
      }
    }
  }

LABEL_2:
  v10 = -1;
LABEL_5:

  return v10;
}

- (id)lsmText
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = [(RKText *)self processedText];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v40 = 0u;
    v5 = [(RKText *)self annotations];
    v6 = [v5 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v6)
    {
      v7 = *v41;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v41 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v40 + 1) + 8 * i);
          v10 = [v9 type];
          if (v10 <= 9 && ((1 << v10) & 0x3EE) != 0)
          {
            [v4 addObject:v9];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v6);
    }

    [v4 sortUsingComparator:&__block_literal_global_228];
    v12 = [MEMORY[0x277CBEB18] array];
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x3032000000;
    v38[3] = __Block_byref_object_copy__1;
    v38[4] = __Block_byref_object_dispose__1;
    v39 = 0;
    v13 = objc_alloc(MEMORY[0x277CCAAE8]);
    v15 = *MEMORY[0x277CCA3F8];
    v44[0] = *MEMORY[0x277CCA408];
    v14 = v44[0];
    v44[1] = v15;
    v44[2] = *MEMORY[0x277CCA3E0];
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
    v17 = [v13 initWithTagSchemes:v16 options:16];

    v18 = [(RKText *)self string];
    [v17 setString:v18];

    v19 = [v17 string];
    v20 = [v19 length];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __17__RKText_lsmText__block_invoke_231;
    v32[3] = &unk_279B105C0;
    v21 = v17;
    v33 = v21;
    v22 = v4;
    v34 = v22;
    v37 = v38;
    v23 = v12;
    v35 = v23;
    v36 = self;
    [v21 enumerateTagsInRange:0 scheme:v20 options:v14 usingBlock:{16, v32}];

    v24 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF != ''"];
    v25 = [v23 componentsJoinedByString:&stru_2874A9C90];
    v26 = [v25 componentsSeparatedByString:@" "];
    v27 = [v26 filteredArrayUsingPredicate:v24];
    v28 = [v27 componentsJoinedByString:@" "];
    [(RKText *)self setProcessedText:v28];

    _Block_object_dispose(v38, 8);
  }

  v29 = [(RKText *)self processedText];
  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

uint64_t __17__RKText_lsmText__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 range];
  if (v6 >= [v5 range])
  {
    v8 = [v4 range];
    v7 = v8 > [v5 range];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void __17__RKText_lsmText__block_invoke_231(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v53[3] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [*(a1 + 32) string];
  v9 = [v8 substringWithRange:{a3, a4}];

  v10 = [*(a1 + 32) tagAtIndex:a3 scheme:*MEMORY[0x277CCA3F8] tokenRange:0 sentenceRange:0];
  v11 = [*(a1 + 32) tagAtIndex:a3 scheme:*MEMORY[0x277CCA3E0] tokenRange:0 sentenceRange:0];
  if ([v9 length])
  {
    v12 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    v13 = [v12 invertedSet];
    if ([v9 rangeOfCharacterFromSet:v13] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v45 = v9;
      v14 = v7;
      v15 = v11;
      v16 = *MEMORY[0x277CCA370];
      v17 = [v10 isEqualToString:*MEMORY[0x277CCA370]];

      if (v17)
      {
        v11 = v15;
        v7 = v14;
        v9 = v45;
        goto LABEL_8;
      }

      v12 = v10;
      v10 = v16;
      v11 = v15;
      v7 = v14;
      v9 = v45;
    }

    else
    {
    }
  }

LABEL_8:
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__1;
  v51 = __Block_byref_object_dispose__1;
  v52 = 0;
  v18 = *(a1 + 40);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __17__RKText_lsmText__block_invoke_2;
  v46[3] = &unk_279B10598;
  v46[5] = a3;
  v46[6] = a4;
  v46[4] = &v47;
  [v18 enumerateObjectsUsingBlock:v46];
  v19 = v48[5];
  if (v19)
  {
    v20 = *(*(a1 + 64) + 8);
    v22 = *(v20 + 40);
    v21 = (v20 + 40);
    if (v22 != v19)
    {
      objc_storeStrong(v21, v19);
      v23 = [v48[5] type];
      if ((v23 - 1) >= 9)
      {
        v24 = 0;
      }

      else
      {
        v24 = off_279B105E0[v23 - 1];
      }

      v26 = *(a1 + 48);
      v27 = MEMORY[0x277CCACA8];
      v28 = [(__CFString *)v24 uppercaseString];
      v29 = [v27 stringWithFormat:@" %@ ", v28];
      [v26 addObject:v29];
      goto LABEL_17;
    }
  }

  else
  {
    if ([v10 isEqualToString:*MEMORY[0x277CCA350]])
    {
      v25 = @"-";
    }

    else if ([v7 isEqualToString:*MEMORY[0x277CCA3D0]])
    {
      v31 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"?"];
      v32 = [v31 invertedSet];
      v33 = [v9 rangeOfCharacterFromSet:v32] == 0x7FFFFFFFFFFFFFFFLL;

      if (v33)
      {
        v25 = @" QM ";
      }

      else
      {
        v36 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"¿"];
        v37 = [v36 invertedSet];
        v38 = [v9 rangeOfCharacterFromSet:v37] == 0x7FFFFFFFFFFFFFFFLL;

        if (v38)
        {
          v25 = @" IQM ";
        }

        else
        {
          v25 = @" ";
        }
      }
    }

    else
    {
      if (![v7 isEqualToString:*MEMORY[0x277CCA420]])
      {
        if (([*(a1 + 56) trainVerbatim] & 1) != 0 || !objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277CCA370]))
        {
          if ([*(a1 + 56) trainVerbatim])
          {
            goto LABEL_33;
          }

          v39 = *MEMORY[0x277CCA3B8];
          v53[0] = *MEMORY[0x277CCA3B0];
          v53[1] = v39;
          v53[2] = *MEMORY[0x277CCA388];
          v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:3];
          v41 = [v40 containsObject:v10];

          if (!v41)
          {
LABEL_33:
            v42 = [*(a1 + 56) trainVerbatim];
            if (v11)
            {
              v43 = v42;
            }

            else
            {
              v43 = 1;
            }

            v44 = *(a1 + 48);
            if (v43)
            {
              [v9 lowercaseString];
            }

            else
            {
              [MEMORY[0x277CCACA8] stringWithFormat:@" %@", v11];
            }
            v28 = ;
            [v44 addObject:v28];
            goto LABEL_18;
          }
        }

        v34 = *(a1 + 48);
        v35 = MEMORY[0x277CCACA8];
        v28 = [v10 uppercaseString];
        v29 = [v35 stringWithFormat:@" %@ ", v28];
        [v34 addObject:v29];
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }

      v25 = @" ";
    }

    [*(a1 + 48) addObject:v25];
  }

LABEL_19:
  _Block_object_dispose(&v47, 8);

  v30 = *MEMORY[0x277D85DE8];
}

void __17__RKText_lsmText__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v10.location = [v8 range];
  v10.length = v7;
  if (NSIntersectionRange(*(a1 + 40), v10).length)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

@end