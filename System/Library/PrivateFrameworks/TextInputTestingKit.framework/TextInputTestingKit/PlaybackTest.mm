@interface PlaybackTest
+ (id)loadFromPlaybackFile:(id)a3;
+ (id)loadFromSentence:(id)a3 withCatenation:(BOOL)a4;
+ (id)loadFromTextInputFile:(id)a3 withCatenation:(BOOL)a4 addWordSpacing:(BOOL)a5;
+ (id)sentenceToTransliteratedPlaybackTest:(id)a3 withCatenation:(BOOL)a4 addWordSpacing:(BOOL)a5;
+ (id)testsWithIntendedOutput:(id)a3 expectedOutput:(id)a4 corpusId:(id)a5;
@end

@implementation PlaybackTest

+ (id)loadFromTextInputFile:(id)a3 withCatenation:(BOOL)a4 addWordSpacing:(BOOL)a5
{
  v16 = 0;
  v7 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:a3 encoding:4 error:&v16];
  v8 = v16;
  if (v7)
  {
    v9 = [MEMORY[0x277CBEB18] array];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__PlaybackTest_loadFromTextInputFile_withCatenation_addWordSpacing___block_invoke;
    v12[3] = &unk_279DA0DE0;
    v14 = a4;
    v15 = a5;
    v10 = v9;
    v13 = v10;
    [v7 enumerateLinesUsingBlock:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __68__PlaybackTest_loadFromTextInputFile_withCatenation_addWordSpacing___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCA900];
  v4 = a2;
  v5 = [v3 whitespaceAndNewlineCharacterSet];
  v8 = [v4 stringByTrimmingCharactersInSet:v5];

  if ([v8 length])
  {
    v6 = [PlaybackTest sentenceToTransliteratedPlaybackTest:v8 withCatenation:*(a1 + 40) addWordSpacing:*(a1 + 41)];
    if (v6)
    {
      [*(a1 + 32) addObject:v6];
    }
  }

  return MEMORY[0x2821F9730]();
}

+ (id)loadFromSentence:(id)a3 withCatenation:(BOOL)a4
{
  v4 = [PlaybackTest sentenceToTransliteratedPlaybackTest:a3 withCatenation:a4 addWordSpacing:0];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEA60] arrayWithObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)sentenceToTransliteratedPlaybackTest:(id)a3 withCatenation:(BOOL)a4 addWordSpacing:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v7 = [v6 componentsSeparatedByString:@"|"];
  v8 = [v7 objectAtIndex:1];
  v9 = [v7 objectAtIndex:0];
  v10 = MEMORY[0x277CBEB18];
  v11 = [v8 componentsSeparatedByString:@" "];
  v12 = [v10 arrayWithArray:v11];

  v13 = MEMORY[0x277CBEB18];
  v14 = [v9 componentsSeparatedByString:@" "];
  v15 = [v13 arrayWithArray:v14];

  [v12 removeObjectsInArray:&unk_287ED4B38];
  [v15 removeObjectsInArray:&unk_287ED4B50];
  if (v5)
  {
    v16 = [v12 arrayInterspersingSpaceStringsBetweenObjects];
    v17 = [v16 mutableCopy];

    v18 = [v15 arrayInterspersingSpaceStringsBetweenObjects];
    v19 = [v18 mutableCopy];

    v15 = v19;
    v12 = v17;
  }

  v20 = [v15 count];
  if (v20 == [v12 count])
  {
    v59 = v9;
    v60 = v8;
    v61 = v7;
    v62 = v6;
    v21 = [v12 objectAtIndex:0];
    v22 = [v15 objectAtIndex:0];
    if ([v12 count] >= 2 && objc_msgSend(v21, "length") == 1)
    {
      if ([v21 caseInsensitiveCompare:v22])
      {
        v23 = [v12 objectAtIndex:1];
        v24 = [v15 objectAtIndex:1];
        v25 = [v23 caseInsensitiveCompare:v24];

        if (v25)
        {
          v26 = [MEMORY[0x277CCAB68] stringWithString:v21];
          v27 = [v12 objectAtIndex:1];
          [v26 appendString:v27];

          v28 = [MEMORY[0x277CCAB68] stringWithString:v22];
          v29 = [v15 objectAtIndex:1];
          [v28 appendString:v29];

          [v12 replaceObjectAtIndex:0 withObject:v26];
          [v12 removeObjectAtIndex:1];
          [v15 replaceObjectAtIndex:0 withObject:v28];
          [v15 removeObjectAtIndex:1];
        }
      }
    }

    v57 = v22;
    v58 = v21;
    if ([v12 count])
    {
      v30 = 0;
      v31 = 0x277CCA000uLL;
      do
      {
        v32 = [v12 objectAtIndex:v30];
        v33 = [v15 objectAtIndex:v30];
        v34 = [v32 length] - 1;
        v35 = [v33 length];
        if (v34 >= 1)
        {
          v36 = v35;
          v37 = [*(v31 + 2304) punctuationCharacterSet];
          if ([v37 characterIsMember:{objc_msgSend(v32, "characterAtIndex:", v34)}])
          {
            v38 = v36 - 1;
            v39 = [*(v31 + 2304) punctuationCharacterSet];
            v40 = [v39 characterIsMember:{objc_msgSend(v33, "characterAtIndex:", v38)}];

            if (!v40)
            {
              v31 = 0x277CCA000;
              goto LABEL_17;
            }

            v37 = [v32 substringToIndex:v34];
            v41 = [v32 substringFromIndex:v34];
            v42 = [v33 substringToIndex:v38];
            v43 = [v33 substringFromIndex:v38];
            [v12 replaceObjectAtIndex:v30 withObject:v41];
            [v12 insertObject:v37 atIndex:v30];
            [v15 replaceObjectAtIndex:v30 withObject:v43];
            [v15 insertObject:v42 atIndex:v30++];

            v31 = 0x277CCA000;
          }
        }

LABEL_17:

        ++v30;
      }

      while (v30 < [v12 count]);
    }

    if (a4)
    {
      v44 = [MEMORY[0x277CBEB18] array];
      v45 = [MEMORY[0x277CBEB18] array];
      if ([v12 count])
      {
        v46 = 0;
        v47 = 0;
        do
        {
          v48 = [v12 objectAtIndex:v46];
          v49 = [v15 objectAtIndex:v46];
          v50 = [v48 caseInsensitiveCompare:v49];
          v51 = v50 != 0;
          if (v50)
          {
            if (v47)
            {
              v52 = [v44 lastObject];
              [v52 appendString:v48];

              v53 = [v45 lastObject];
              [v53 appendString:v49];
            }

            else
            {
              v54 = [MEMORY[0x277CCAB68] stringWithString:v48];
              [v44 addObject:v54];

              v53 = [MEMORY[0x277CCAB68] stringWithString:v49];
              [v45 addObject:v53];
            }
          }

          else
          {
            [v44 addObject:v48];
            [v45 addObject:v49];
          }

          ++v46;
          v47 = v51;
        }

        while (v46 < [v12 count]);
      }

      v15 = v45;
      v12 = v44;
    }

    else
    {
      v45 = v15;
      v44 = v12;
    }

    v55 = [PlaybackTest testsWithIntendedOutput:v45 expectedOutput:v44];

    v7 = v61;
    v6 = v62;
    v9 = v59;
    v8 = v60;
  }

  else
  {
    NSLog(&cfstr_Transliteratio_1.isa, v6);
    v55 = 0;
  }

  return v55;
}

+ (id)loadFromPlaybackFile:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [TTKTestCaseReader loadFromPath:v3];
  if (v4)
  {
    v24 = v3;
    v27 = [MEMORY[0x277CBEB18] array];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v23 = v4;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v5)
    {
      v6 = v5;
      v26 = *v33;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v33 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v32 + 1) + 8 * i);
          v9 = [MEMORY[0x277CBEB18] array];
          v10 = [MEMORY[0x277CBEB18] array];
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v11 = [v8 records];
          v12 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v29;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v29 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v28 + 1) + 8 * j);
                v17 = [v16 inputText];
                [v9 addObject:v17];

                v18 = [v16 primaryIntendedText];
                [v10 addObject:v18];
              }

              v13 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v13);
          }

          v19 = [v9 copy];
          v20 = [v10 copy];
          v21 = [PlaybackTest testsWithIntendedOutput:v19 expectedOutput:v20];

          [v27 addObject:v21];
        }

        v6 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v6);
    }

    v4 = v23;
    v3 = v24;
  }

  else
  {
    NSLog(&cfstr_InputPathForPl.isa, v3);
    v27 = 0;
  }

  return v27;
}

+ (id)testsWithIntendedOutput:(id)a3 expectedOutput:(id)a4 corpusId:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(PlaybackTest);
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_intended, a3);
    objc_storeStrong(&v10->_expected, a4);
    v11 = [v7 componentsJoinedByString:&stru_287EC4808];
    input = v10->super._input;
    v10->super._input = v11;
  }

  return v10;
}

@end