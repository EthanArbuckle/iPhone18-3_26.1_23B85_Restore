@interface PlaybackTest
+ (id)loadFromPlaybackFile:(id)file;
+ (id)loadFromSentence:(id)sentence withCatenation:(BOOL)catenation;
+ (id)loadFromTextInputFile:(id)file withCatenation:(BOOL)catenation addWordSpacing:(BOOL)spacing;
+ (id)sentenceToTransliteratedPlaybackTest:(id)test withCatenation:(BOOL)catenation addWordSpacing:(BOOL)spacing;
+ (id)testsWithIntendedOutput:(id)output expectedOutput:(id)expectedOutput corpusId:(id)id;
@end

@implementation PlaybackTest

+ (id)loadFromTextInputFile:(id)file withCatenation:(BOOL)catenation addWordSpacing:(BOOL)spacing
{
  v16 = 0;
  v7 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:file encoding:4 error:&v16];
  v8 = v16;
  if (v7)
  {
    array = [MEMORY[0x277CBEB18] array];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__PlaybackTest_loadFromTextInputFile_withCatenation_addWordSpacing___block_invoke;
    v12[3] = &unk_279DA0DE0;
    catenationCopy = catenation;
    spacingCopy = spacing;
    v10 = array;
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

+ (id)loadFromSentence:(id)sentence withCatenation:(BOOL)catenation
{
  v4 = [PlaybackTest sentenceToTransliteratedPlaybackTest:sentence withCatenation:catenation addWordSpacing:0];
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

+ (id)sentenceToTransliteratedPlaybackTest:(id)test withCatenation:(BOOL)catenation addWordSpacing:(BOOL)spacing
{
  spacingCopy = spacing;
  testCopy = test;
  v7 = [testCopy componentsSeparatedByString:@"|"];
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
  if (spacingCopy)
  {
    arrayInterspersingSpaceStringsBetweenObjects = [v12 arrayInterspersingSpaceStringsBetweenObjects];
    v17 = [arrayInterspersingSpaceStringsBetweenObjects mutableCopy];

    arrayInterspersingSpaceStringsBetweenObjects2 = [v15 arrayInterspersingSpaceStringsBetweenObjects];
    v19 = [arrayInterspersingSpaceStringsBetweenObjects2 mutableCopy];

    v15 = v19;
    v12 = v17;
  }

  v20 = [v15 count];
  if (v20 == [v12 count])
  {
    v59 = v9;
    v60 = v8;
    v61 = v7;
    v62 = testCopy;
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
          punctuationCharacterSet = [*(v31 + 2304) punctuationCharacterSet];
          if ([punctuationCharacterSet characterIsMember:{objc_msgSend(v32, "characterAtIndex:", v34)}])
          {
            v38 = v36 - 1;
            punctuationCharacterSet2 = [*(v31 + 2304) punctuationCharacterSet];
            v40 = [punctuationCharacterSet2 characterIsMember:{objc_msgSend(v33, "characterAtIndex:", v38)}];

            if (!v40)
            {
              v31 = 0x277CCA000;
              goto LABEL_17;
            }

            punctuationCharacterSet = [v32 substringToIndex:v34];
            v41 = [v32 substringFromIndex:v34];
            v42 = [v33 substringToIndex:v38];
            v43 = [v33 substringFromIndex:v38];
            [v12 replaceObjectAtIndex:v30 withObject:v41];
            [v12 insertObject:punctuationCharacterSet atIndex:v30];
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

    if (catenation)
    {
      array = [MEMORY[0x277CBEB18] array];
      array2 = [MEMORY[0x277CBEB18] array];
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
              lastObject = [array lastObject];
              [lastObject appendString:v48];

              lastObject2 = [array2 lastObject];
              [lastObject2 appendString:v49];
            }

            else
            {
              v54 = [MEMORY[0x277CCAB68] stringWithString:v48];
              [array addObject:v54];

              lastObject2 = [MEMORY[0x277CCAB68] stringWithString:v49];
              [array2 addObject:lastObject2];
            }
          }

          else
          {
            [array addObject:v48];
            [array2 addObject:v49];
          }

          ++v46;
          v47 = v51;
        }

        while (v46 < [v12 count]);
      }

      v15 = array2;
      v12 = array;
    }

    else
    {
      array2 = v15;
      array = v12;
    }

    v55 = [PlaybackTest testsWithIntendedOutput:array2 expectedOutput:array];

    v7 = v61;
    testCopy = v62;
    v9 = v59;
    v8 = v60;
  }

  else
  {
    NSLog(&cfstr_Transliteratio_1.isa, testCopy);
    v55 = 0;
  }

  return v55;
}

+ (id)loadFromPlaybackFile:(id)file
{
  v38 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v4 = [TTKTestCaseReader loadFromPath:fileCopy];
  if (v4)
  {
    v24 = fileCopy;
    array = [MEMORY[0x277CBEB18] array];
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
          array2 = [MEMORY[0x277CBEB18] array];
          array3 = [MEMORY[0x277CBEB18] array];
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          records = [v8 records];
          v12 = [records countByEnumeratingWithState:&v28 objects:v36 count:16];
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
                  objc_enumerationMutation(records);
                }

                v16 = *(*(&v28 + 1) + 8 * j);
                inputText = [v16 inputText];
                [array2 addObject:inputText];

                primaryIntendedText = [v16 primaryIntendedText];
                [array3 addObject:primaryIntendedText];
              }

              v13 = [records countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v13);
          }

          v19 = [array2 copy];
          v20 = [array3 copy];
          v21 = [PlaybackTest testsWithIntendedOutput:v19 expectedOutput:v20];

          [array addObject:v21];
        }

        v6 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v6);
    }

    v4 = v23;
    fileCopy = v24;
  }

  else
  {
    NSLog(&cfstr_InputPathForPl.isa, fileCopy);
    array = 0;
  }

  return array;
}

+ (id)testsWithIntendedOutput:(id)output expectedOutput:(id)expectedOutput corpusId:(id)id
{
  outputCopy = output;
  expectedOutputCopy = expectedOutput;
  v9 = objc_alloc_init(PlaybackTest);
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_intended, output);
    objc_storeStrong(&v10->_expected, expectedOutput);
    v11 = [outputCopy componentsJoinedByString:&stru_287EC4808];
    input = v10->super._input;
    v10->super._input = v11;
  }

  return v10;
}

@end