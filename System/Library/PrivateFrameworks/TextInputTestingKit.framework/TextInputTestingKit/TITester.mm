@interface TITester
+ (id)stringByReplacingCurlyQuotesWithStraightQuotes:(id)a3;
+ (void)runTestCasesForSource:(id)a3 options:(id)a4 reporter:(id)a5 reportObserver:(id)a6;
+ (void)runWithTests:(id)a3 inRange:(_NSRange)a4 testHarness:(id)a5 options:(id)a6 reporter:(id)a7 numTrials:(unint64_t)a8 reportObserver:(id)a9;
- (TITester)initWithTests:(id)a3;
- (id)runTestBasedOnTestType:(id)a3 options:(id)a4 trialID:(unint64_t)a5 withError:(id)a6;
- (void)createAutofillTestHarnessInstance:(id)a3;
- (void)runTestsInRange:(_NSRange)a3 options:(id)a4 trialID:(unint64_t)a5;
@end

@implementation TITester

- (void)createAutofillTestHarnessInstance:(id)a3
{
  v4 = a3;
  if (!self->_autofillTestHarness)
  {
    v10 = v4;
    v5 = self->testHarness;
    v6 = [(TITestHarness *)v5 testTyper];
    v7 = NSClassFromString(&cfstr_Autofilltestha.isa);
    if (!v7)
    {
      fwrite("Error: Unable to load 'AutofillTestHarness' class\n\n", 0x33uLL, 1uLL, *MEMORY[0x277D85DF8]);
      exit(1);
    }

    v8 = [[v7 alloc] initWithOptionsAndTestTyper:v10 testTyper:v6];
    autofillTestHarness = self->_autofillTestHarness;
    self->_autofillTestHarness = v8;

    v4 = v10;
  }
}

- (id)runTestBasedOnTestType:(id)a3 options:(id)a4 trialID:(unint64_t)a5 withError:(id)a6
{
  v9 = a4;
  if (self->_autofillTestHarness)
  {
    v10 = MEMORY[0x277CBEA60];
    v11 = a3;
    v12 = objc_alloc_init(v10);
    v13 = [(AutofillTestHarness *)self->_autofillTestHarness configureAutofillAndGetAutocorrectionsOrCandidatesBeforeTyping:v9];

    v14 = [(TITester *)self testHarness];
    v15 = [v14 runTest:v11 trialID:a5 withError:0];

    [(AutofillTestHarness *)self->_autofillTestHarness updateResultForAutoFill:v15 predictionCandidatesWithoutTyping:v13];
  }

  else
  {
    v15 = a3;
    v13 = [(TITester *)self testHarness];
    [v13 runTest:v15 trialID:a5 withError:0];
  }
  v16 = ;

  return v16;
}

- (void)runTestsInRange:(_NSRange)a3 options:(id)a4 trialID:(unint64_t)a5
{
  length = a3.length;
  location = a3.location;
  v45 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [(TITester *)self reporter];
  [v9 beginLogTrial];

  v39 = [(NSArray *)self->_tests count];
  v10 = [v8 valueForKey:@"TEST_AUTO_FILL_FEATURE"];
  v11 = [v10 BOOLValue];

  v12 = @"NO";
  if (v11)
  {
    v12 = @"YES";
  }

  NSLog(&cfstr_AreWeGoingToTe.isa, v12);
  if (v11)
  {
    [(TITester *)self createAutofillTestHarnessInstance:v8];
    if (!v39)
    {
      v13 = [(AutofillTestHarness *)self->_autofillTestHarness runAutofillTestWithoutTyping:v8 testHarness:self->testHarness trialID:a5];
      v14 = [(TITester *)self reporter];
      [v14 logResult:v13];
    }
  }

  v38 = location + length;
  v15 = location >= location + length;
  v16 = a5;
  if (!v15)
  {
    v36 = v8;
    do
    {
      v17 = objc_autoreleasePoolPush();
      v18 = location + 1;
      fprintf(*MEMORY[0x277D85DF8], "Testing line: %lu/%lu\n", location + 1, v39);
      v19 = [(NSArray *)self->_tests objectAtIndexedSubscript:location];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [(TITester *)self testHarness];
        v21 = [v20 runConversationTest:v19 trialID:v16 withError:0];

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v22 = v21;
        v23 = [v22 countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v41;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v41 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v40 + 1) + 8 * i);
              v28 = [(TITester *)self reporter];
              [v28 logResult:v27];
            }

            v24 = [v22 countByEnumeratingWithState:&v40 objects:v44 count:16];
          }

          while (v24);
          v29 = v22;
          v8 = v36;
          v16 = a5;
        }

        else
        {
          v29 = v22;
        }
      }

      else
      {
        v29 = [(TITester *)self runTestBasedOnTestType:v19 options:v8 trialID:v16 withError:0];
        v22 = [(TITester *)self reporter];
        [v22 logResult:v29];
      }

      v30 = [(TITester *)self testHarness];
      v31 = objc_opt_respondsToSelector();

      if (v31)
      {
        v32 = [(TITester *)self testHarness];
        [v32 performSelector:sel_reset withObject:0];
      }

      v33 = [MEMORY[0x277CBEB88] currentRunLoop];
      v34 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.05];
      [v33 runUntilDate:v34];

      objc_autoreleasePoolPop(v17);
      location = v18;
    }

    while (v18 != v38);
  }

  fputc(10, *MEMORY[0x277D85DF8]);
  v35 = [(TITester *)self reporter];
  [v35 endLogTrial];
}

- (TITester)initWithTests:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TITester;
  v6 = [(TITester *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tests, a3);
  }

  return v7;
}

+ (void)runTestCasesForSource:(id)a3 options:(id)a4 reporter:(id)a5 reportObserver:(id)a6
{
  v110 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v83 = a6;
  v12 = [v10 valueForKey:@"START_INDEX"];
  v13 = [v12 intValue];

  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v10 valueForKey:@"END_INDEX"];
  v16 = [v15 intValue];

  [v11 beginLogTrial];
  v17 = [v9 getNextTestCase];
  if (!v17)
  {
    goto LABEL_54;
  }

  v18 = 0;
  v86 = v16;
  v19 = v14;
  v84 = v10;
  v85 = v9;
  v89 = v11;
  v92 = v14;
  while (1)
  {
    v20 = v18++;
    if (v20 >= v19)
    {
      v21 = [v17 records];
      v22 = [v21 count];

      if (v22)
      {
        break;
      }
    }

LABEL_53:
    v77 = [v9 getNextTestCase];

    v17 = v77;
    if (!v77)
    {
      goto LABEL_54;
    }
  }

  v95 = v20;
  context = objc_autoreleasePoolPush();
  fprintf(*MEMORY[0x277D85DF8], "Test case: %lu\n", v18);
  v23 = [v10 mutableCopy];
  [v23 setObject:@"ACTRecordedActionStream" forKey:@"UserActionStream"];
  [v23 setObject:v17 forKey:@"TTKTestCase"];
  v24 = [v23 objectForKey:@"USE_RETROCORRECTION"];

  if (!v24)
  {
    [v23 setObject:MEMORY[0x277CBEC38] forKey:@"USE_RETROCORRECTION"];
  }

  v25 = [v23 objectForKey:@"USE_PREDICTION"];

  if (!v25)
  {
    [v23 setObject:MEMORY[0x277CBEC38] forKey:@"USE_PREDICTION"];
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v26 = [v17 records];
  v27 = [v26 countByEnumeratingWithState:&v102 objects:v109 count:16];
  if (!v27)
  {
LABEL_51:

LABEL_52:
    objc_autoreleasePoolPop(context);
    goto LABEL_53;
  }

  v28 = v27;
  v97 = v23;
  v93 = v18;
  v94 = v17;
  v29 = *v103;
LABEL_14:
  v30 = 0;
  while (1)
  {
    if (*v103 != v29)
    {
      objc_enumerationMutation(v26);
    }

    v31 = *(*(&v102 + 1) + 8 * v30);
    v32 = [v31 layoutName];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      break;
    }

    if (v28 == ++v30)
    {
      v28 = [v26 countByEnumeratingWithState:&v102 objects:v109 count:16];
      if (v28)
      {
        goto LABEL_14;
      }

      v18 = v93;
      v17 = v94;
      v19 = v92;
      v23 = v97;
      goto LABEL_51;
    }
  }

  v34 = [v31 layoutName];

  v18 = v93;
  v17 = v94;
  v19 = v92;
  v23 = v97;
  if (!v34)
  {
    goto LABEL_52;
  }

  v35 = [v9 layouts];
  v90 = v34;
  v36 = [v35 objectForKey:v34];

  v91 = v36;
  [v97 setObject:v36 forKey:@"TTKKeyboardPlane"];
  v37 = [v94 metadata];
  v38 = [v37 objectForKey:@"displayWidth"];
  if (!v38)
  {

    goto LABEL_28;
  }

  v39 = v38;
  v40 = [v94 metadata];
  v41 = [v40 objectForKey:@"displayHeight"];

  v23 = v97;
  if (!v41)
  {
LABEL_28:
    if (!v91)
    {
      objc_opt_class();
      v26 = v90;
      if (objc_opt_isKindOfClass())
      {
        fwrite("Unable to find keyboard layout-- layoutName is null\n", 0x34uLL, 1uLL, *MEMORY[0x277D85DF8]);
      }

      else
      {
        fprintf(*MEMORY[0x277D85DF8], "Unable to find keyboard layout for name='%s'\n", [v90 UTF8String]);
      }

      goto LABEL_51;
    }

    v49 = MEMORY[0x277CCABB0];
    [v91 keyboardWidth];
    v43 = [v49 numberWithFloat:?];
    v48 = [v91 keyboardOrientation];
    goto LABEL_30;
  }

  v42 = [v94 metadata];
  v43 = [v42 objectForKey:@"displayWidth"];

  v44 = [v94 metadata];
  v45 = [v44 objectForKey:@"displayHeight"];

  v46 = [v43 compare:v45];
  v47 = @"Portrait";
  if (v46 == 1)
  {
    v47 = @"Landscape";
  }

  v48 = v47;

LABEL_30:
  [v23 setObject:v43 forKey:@"KEYBOARD_WIDTH"];
  [v23 setObject:v48 forKey:@"KEYBOARD_ORIENTATION"];
  v88 = v43;
  v87 = v48;
  fprintf(*MEMORY[0x277D85DF8], "width = %d orientation = %s\n", [v43 intValue], -[__CFString UTF8String](v48, "UTF8String"));
  v50 = objc_opt_new();
  v51 = objc_opt_new();
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v52 = [v94 records];
  v53 = [v52 countByEnumeratingWithState:&v98 objects:v108 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v99;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v99 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = *(*(&v98 + 1) + 8 * i);
        v58 = objc_opt_class();
        v59 = [v57 primaryIntendedText];
        v60 = [v58 stringByReplacingCurlyQuotesWithStraightQuotes:v59];

        [v50 addObject:v60];
        v61 = [v57 layoutName];
        v62 = [v51 containsObject:v61];

        if ((v62 & 1) == 0)
        {
          v63 = [v57 layoutName];
          v64 = [v63 description];
          [v51 addObject:v64];
        }
      }

      v54 = [v52 countByEnumeratingWithState:&v98 objects:v108 count:16];
    }

    while (v54);
  }

  v65 = [[AutocorrectionTestHarness alloc] initWithAttributes:v97];
  v17 = v94;
  v66 = [v94 metadata];
  v67 = [v66 mutableCopy];

  [v67 setValue:v51 forKey:@"layouts"];
  v68 = TTKLogFacility();
  if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
  {
    v69 = [v67 objectForKeyedSubscript:@"recordIdentifier"];
    v70 = [v69 cStringUsingEncoding:4];
    *buf = 136315138;
    v107 = v70;
    _os_log_impl(&dword_26D490000, v68, OS_LOG_TYPE_INFO, "Running test case with recordIdentifier: %s", buf, 0xCu);
  }

  v71 = *MEMORY[0x277D85E08];
  v72 = [v67 objectForKeyedSubscript:@"recordIdentifier"];
  fprintf(v71, "Running test case with recordIdentifier: %s\n", [v72 cStringUsingEncoding:4]);

  v73 = [AutocorrectionTest testWithInput:&stru_287EC4808 expectedOutput:v50 sourceMetadata:v67 withTouches:0 andCorpusId:0];
  v74 = [(AutocorrectionTestHarness *)v65 runTest:v73 trialID:v95 withError:0];
  [v89 logResult:v74];
  v9 = v85;
  if (objc_opt_respondsToSelector())
  {
    [(AutocorrectionTestHarness *)v65 performSelector:sel_reset withObject:0];
  }

  v75 = [MEMORY[0x277CBEB88] currentRunLoop];
  v76 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.05];
  [v75 runUntilDate:v76];

  if ([(AutocorrectionTestHarness *)v65 requiresMaintenance])
  {
    [MEMORY[0x277D6FE90] flushDynamicLearningCaches];
    [MEMORY[0x277D6FE90] performMaintenance];
  }

  objc_autoreleasePoolPop(context);
  v10 = v84;
  v11 = v89;
  v19 = v92;
  v18 = v93;
  if (v86 < 1 || v95 < v86)
  {
    goto LABEL_53;
  }

LABEL_54:
  [v11 endLogTrial];
  v78 = [v10 objectForKey:@"DUMP_RESULT_JSONL_FILE"];
  v79 = v78;
  if (!v78)
  {
    v78 = MEMORY[0x277CBEC28];
  }

  v80 = [v78 BOOLValue];

  if (v80)
  {
    v81 = [TIReporter detailedResultFileURLForTrial:0 withOptions:v10];
    v82 = [v11 summaryForTrial:0 dumpResultsToFile:v81];
  }

  else
  {
    v82 = [v11 reportForTrial:0];
  }

  if (v83)
  {
    v83[2](v83, v82, 0);
  }
}

+ (id)stringByReplacingCurlyQuotesWithStraightQuotes:(id)a3
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@"‘" withString:@"'"];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"“" withString:@""];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"”" withString:@""];

  return v6;
}

+ (void)runWithTests:(id)a3 inRange:(_NSRange)a4 testHarness:(id)a5 options:(id)a6 reporter:(id)a7 numTrials:(unint64_t)a8 reportObserver:(id)a9
{
  v13 = a8;
  v35 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a9;
  v33 = objc_autoreleasePoolPush();
  v18 = [[a1 alloc] initWithTests:v35];
  v34 = v16;
  [v18 setReporter:v16];
  [v18 setTestHarness:v14];
  if (a8)
  {
    v19 = 0;
    v20 = MEMORY[0x277D85DF8];
    do
    {
      fprintf(*v20, "Beginning trial %lu\n", v19);
      context = objc_autoreleasePoolPush();
      [v18 runTestsInRange:a4.location options:a4.length trialID:{v15, v19}];
      if ([v14 requiresMaintenance])
      {
        [MEMORY[0x277D6FE90] flushDynamicLearningCaches];
        [MEMORY[0x277D6FE90] performMaintenance];
      }

      v21 = [v15 objectForKey:@"DUMP_RESULT_JSONL_FILE"];
      v22 = v21;
      if (!v21)
      {
        v21 = MEMORY[0x277CBEC28];
      }

      v23 = [v21 BOOLValue];

      if (v23)
      {
        v24 = [TIReporter detailedResultFileURLForTrial:v19 withOptions:v15];
        [v18 reporter];
        v25 = v18;
        v26 = v15;
        v27 = v17;
        v28 = v14;
        v29 = v13;
        v31 = v30 = v20;
        v32 = [v31 summaryForTrial:v19 dumpResultsToFile:v24];

        v20 = v30;
        v13 = v29;
        v14 = v28;
        v17 = v27;
        v15 = v26;
        v18 = v25;
      }

      else
      {
        v24 = [v18 reporter];
        v32 = [v24 reportForTrial:v19];
      }

      if (v17)
      {
        v17[2](v17, v32, v19);
      }

      objc_autoreleasePoolPop(context);
      ++v19;
    }

    while (v13 != v19);
  }

  objc_autoreleasePoolPop(v33);
}

@end