@interface TITester
+ (id)stringByReplacingCurlyQuotesWithStraightQuotes:(id)quotes;
+ (void)runTestCasesForSource:(id)source options:(id)options reporter:(id)reporter reportObserver:(id)observer;
+ (void)runWithTests:(id)tests inRange:(_NSRange)range testHarness:(id)harness options:(id)options reporter:(id)reporter numTrials:(unint64_t)trials reportObserver:(id)observer;
- (TITester)initWithTests:(id)tests;
- (id)runTestBasedOnTestType:(id)type options:(id)options trialID:(unint64_t)d withError:(id)error;
- (void)createAutofillTestHarnessInstance:(id)instance;
- (void)runTestsInRange:(_NSRange)range options:(id)options trialID:(unint64_t)d;
@end

@implementation TITester

- (void)createAutofillTestHarnessInstance:(id)instance
{
  instanceCopy = instance;
  if (!self->_autofillTestHarness)
  {
    v10 = instanceCopy;
    v5 = self->testHarness;
    testTyper = [(TITestHarness *)v5 testTyper];
    v7 = NSClassFromString(&cfstr_Autofilltestha.isa);
    if (!v7)
    {
      fwrite("Error: Unable to load 'AutofillTestHarness' class\n\n", 0x33uLL, 1uLL, *MEMORY[0x277D85DF8]);
      exit(1);
    }

    v8 = [[v7 alloc] initWithOptionsAndTestTyper:v10 testTyper:testTyper];
    autofillTestHarness = self->_autofillTestHarness;
    self->_autofillTestHarness = v8;

    instanceCopy = v10;
  }
}

- (id)runTestBasedOnTestType:(id)type options:(id)options trialID:(unint64_t)d withError:(id)error
{
  optionsCopy = options;
  if (self->_autofillTestHarness)
  {
    v10 = MEMORY[0x277CBEA60];
    typeCopy = type;
    v12 = objc_alloc_init(v10);
    testHarness2 = [(AutofillTestHarness *)self->_autofillTestHarness configureAutofillAndGetAutocorrectionsOrCandidatesBeforeTyping:optionsCopy];

    testHarness = [(TITester *)self testHarness];
    typeCopy2 = [testHarness runTest:typeCopy trialID:d withError:0];

    [(AutofillTestHarness *)self->_autofillTestHarness updateResultForAutoFill:typeCopy2 predictionCandidatesWithoutTyping:testHarness2];
  }

  else
  {
    typeCopy2 = type;
    testHarness2 = [(TITester *)self testHarness];
    [testHarness2 runTest:typeCopy2 trialID:d withError:0];
  }
  v16 = ;

  return v16;
}

- (void)runTestsInRange:(_NSRange)range options:(id)options trialID:(unint64_t)d
{
  length = range.length;
  location = range.location;
  v45 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  reporter = [(TITester *)self reporter];
  [reporter beginLogTrial];

  v39 = [(NSArray *)self->_tests count];
  v10 = [optionsCopy valueForKey:@"TEST_AUTO_FILL_FEATURE"];
  bOOLValue = [v10 BOOLValue];

  v12 = @"NO";
  if (bOOLValue)
  {
    v12 = @"YES";
  }

  NSLog(&cfstr_AreWeGoingToTe.isa, v12);
  if (bOOLValue)
  {
    [(TITester *)self createAutofillTestHarnessInstance:optionsCopy];
    if (!v39)
    {
      v13 = [(AutofillTestHarness *)self->_autofillTestHarness runAutofillTestWithoutTyping:optionsCopy testHarness:self->testHarness trialID:d];
      reporter2 = [(TITester *)self reporter];
      [reporter2 logResult:v13];
    }
  }

  v38 = location + length;
  v15 = location >= location + length;
  dCopy2 = d;
  if (!v15)
  {
    v36 = optionsCopy;
    do
    {
      v17 = objc_autoreleasePoolPush();
      v18 = location + 1;
      fprintf(*MEMORY[0x277D85DF8], "Testing line: %lu/%lu\n", location + 1, v39);
      v19 = [(NSArray *)self->_tests objectAtIndexedSubscript:location];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        testHarness = [(TITester *)self testHarness];
        v21 = [testHarness runConversationTest:v19 trialID:dCopy2 withError:0];

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        reporter4 = v21;
        v23 = [reporter4 countByEnumeratingWithState:&v40 objects:v44 count:16];
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
                objc_enumerationMutation(reporter4);
              }

              v27 = *(*(&v40 + 1) + 8 * i);
              reporter3 = [(TITester *)self reporter];
              [reporter3 logResult:v27];
            }

            v24 = [reporter4 countByEnumeratingWithState:&v40 objects:v44 count:16];
          }

          while (v24);
          v29 = reporter4;
          optionsCopy = v36;
          dCopy2 = d;
        }

        else
        {
          v29 = reporter4;
        }
      }

      else
      {
        v29 = [(TITester *)self runTestBasedOnTestType:v19 options:optionsCopy trialID:dCopy2 withError:0];
        reporter4 = [(TITester *)self reporter];
        [reporter4 logResult:v29];
      }

      testHarness2 = [(TITester *)self testHarness];
      v31 = objc_opt_respondsToSelector();

      if (v31)
      {
        testHarness3 = [(TITester *)self testHarness];
        [testHarness3 performSelector:sel_reset withObject:0];
      }

      currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
      v34 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.05];
      [currentRunLoop runUntilDate:v34];

      objc_autoreleasePoolPop(v17);
      location = v18;
    }

    while (v18 != v38);
  }

  fputc(10, *MEMORY[0x277D85DF8]);
  reporter5 = [(TITester *)self reporter];
  [reporter5 endLogTrial];
}

- (TITester)initWithTests:(id)tests
{
  testsCopy = tests;
  v9.receiver = self;
  v9.super_class = TITester;
  v6 = [(TITester *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tests, tests);
  }

  return v7;
}

+ (void)runTestCasesForSource:(id)source options:(id)options reporter:(id)reporter reportObserver:(id)observer
{
  v110 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  optionsCopy = options;
  reporterCopy = reporter;
  observerCopy = observer;
  v12 = [optionsCopy valueForKey:@"START_INDEX"];
  intValue = [v12 intValue];

  if (intValue)
  {
    v14 = intValue - 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = [optionsCopy valueForKey:@"END_INDEX"];
  intValue2 = [v15 intValue];

  [reporterCopy beginLogTrial];
  getNextTestCase = [sourceCopy getNextTestCase];
  if (!getNextTestCase)
  {
    goto LABEL_54;
  }

  v18 = 0;
  v86 = intValue2;
  v19 = v14;
  v84 = optionsCopy;
  v85 = sourceCopy;
  v89 = reporterCopy;
  v92 = v14;
  while (1)
  {
    v20 = v18++;
    if (v20 >= v19)
    {
      records = [getNextTestCase records];
      v22 = [records count];

      if (v22)
      {
        break;
      }
    }

LABEL_53:
    getNextTestCase2 = [sourceCopy getNextTestCase];

    getNextTestCase = getNextTestCase2;
    if (!getNextTestCase2)
    {
      goto LABEL_54;
    }
  }

  v95 = v20;
  context = objc_autoreleasePoolPush();
  fprintf(*MEMORY[0x277D85DF8], "Test case: %lu\n", v18);
  v23 = [optionsCopy mutableCopy];
  [v23 setObject:@"ACTRecordedActionStream" forKey:@"UserActionStream"];
  [v23 setObject:getNextTestCase forKey:@"TTKTestCase"];
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
  records2 = [getNextTestCase records];
  v27 = [records2 countByEnumeratingWithState:&v102 objects:v109 count:16];
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
  v94 = getNextTestCase;
  v29 = *v103;
LABEL_14:
  v30 = 0;
  while (1)
  {
    if (*v103 != v29)
    {
      objc_enumerationMutation(records2);
    }

    v31 = *(*(&v102 + 1) + 8 * v30);
    layoutName = [v31 layoutName];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      break;
    }

    if (v28 == ++v30)
    {
      v28 = [records2 countByEnumeratingWithState:&v102 objects:v109 count:16];
      if (v28)
      {
        goto LABEL_14;
      }

      v18 = v93;
      getNextTestCase = v94;
      v19 = v92;
      v23 = v97;
      goto LABEL_51;
    }
  }

  layoutName2 = [v31 layoutName];

  v18 = v93;
  getNextTestCase = v94;
  v19 = v92;
  v23 = v97;
  if (!layoutName2)
  {
    goto LABEL_52;
  }

  layouts = [sourceCopy layouts];
  v90 = layoutName2;
  v36 = [layouts objectForKey:layoutName2];

  v91 = v36;
  [v97 setObject:v36 forKey:@"TTKKeyboardPlane"];
  metadata = [v94 metadata];
  v38 = [metadata objectForKey:@"displayWidth"];
  if (!v38)
  {

    goto LABEL_28;
  }

  v39 = v38;
  metadata2 = [v94 metadata];
  v41 = [metadata2 objectForKey:@"displayHeight"];

  v23 = v97;
  if (!v41)
  {
LABEL_28:
    if (!v91)
    {
      objc_opt_class();
      records2 = v90;
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
    keyboardOrientation = [v91 keyboardOrientation];
    goto LABEL_30;
  }

  metadata3 = [v94 metadata];
  v43 = [metadata3 objectForKey:@"displayWidth"];

  metadata4 = [v94 metadata];
  v45 = [metadata4 objectForKey:@"displayHeight"];

  v46 = [v43 compare:v45];
  v47 = @"Portrait";
  if (v46 == 1)
  {
    v47 = @"Landscape";
  }

  keyboardOrientation = v47;

LABEL_30:
  [v23 setObject:v43 forKey:@"KEYBOARD_WIDTH"];
  [v23 setObject:keyboardOrientation forKey:@"KEYBOARD_ORIENTATION"];
  v88 = v43;
  v87 = keyboardOrientation;
  fprintf(*MEMORY[0x277D85DF8], "width = %d orientation = %s\n", [v43 intValue], -[__CFString UTF8String](keyboardOrientation, "UTF8String"));
  v50 = objc_opt_new();
  v51 = objc_opt_new();
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  records3 = [v94 records];
  v53 = [records3 countByEnumeratingWithState:&v98 objects:v108 count:16];
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
          objc_enumerationMutation(records3);
        }

        v57 = *(*(&v98 + 1) + 8 * i);
        v58 = objc_opt_class();
        primaryIntendedText = [v57 primaryIntendedText];
        v60 = [v58 stringByReplacingCurlyQuotesWithStraightQuotes:primaryIntendedText];

        [v50 addObject:v60];
        layoutName3 = [v57 layoutName];
        v62 = [v51 containsObject:layoutName3];

        if ((v62 & 1) == 0)
        {
          layoutName4 = [v57 layoutName];
          v64 = [layoutName4 description];
          [v51 addObject:v64];
        }
      }

      v54 = [records3 countByEnumeratingWithState:&v98 objects:v108 count:16];
    }

    while (v54);
  }

  v65 = [[AutocorrectionTestHarness alloc] initWithAttributes:v97];
  getNextTestCase = v94;
  metadata5 = [v94 metadata];
  v67 = [metadata5 mutableCopy];

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
  sourceCopy = v85;
  if (objc_opt_respondsToSelector())
  {
    [(AutocorrectionTestHarness *)v65 performSelector:sel_reset withObject:0];
  }

  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  v76 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.05];
  [currentRunLoop runUntilDate:v76];

  if ([(AutocorrectionTestHarness *)v65 requiresMaintenance])
  {
    [MEMORY[0x277D6FE90] flushDynamicLearningCaches];
    [MEMORY[0x277D6FE90] performMaintenance];
  }

  objc_autoreleasePoolPop(context);
  optionsCopy = v84;
  reporterCopy = v89;
  v19 = v92;
  v18 = v93;
  if (v86 < 1 || v95 < v86)
  {
    goto LABEL_53;
  }

LABEL_54:
  [reporterCopy endLogTrial];
  v78 = [optionsCopy objectForKey:@"DUMP_RESULT_JSONL_FILE"];
  v79 = v78;
  if (!v78)
  {
    v78 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v78 BOOLValue];

  if (bOOLValue)
  {
    v81 = [TIReporter detailedResultFileURLForTrial:0 withOptions:optionsCopy];
    v82 = [reporterCopy summaryForTrial:0 dumpResultsToFile:v81];
  }

  else
  {
    v82 = [reporterCopy reportForTrial:0];
  }

  if (observerCopy)
  {
    observerCopy[2](observerCopy, v82, 0);
  }
}

+ (id)stringByReplacingCurlyQuotesWithStraightQuotes:(id)quotes
{
  v3 = [quotes stringByReplacingOccurrencesOfString:@"‘" withString:@"'"];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"“" withString:@""];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"”" withString:@""];

  return v6;
}

+ (void)runWithTests:(id)tests inRange:(_NSRange)range testHarness:(id)harness options:(id)options reporter:(id)reporter numTrials:(unint64_t)trials reportObserver:(id)observer
{
  trialsCopy = trials;
  testsCopy = tests;
  harnessCopy = harness;
  optionsCopy = options;
  reporterCopy = reporter;
  observerCopy = observer;
  v33 = objc_autoreleasePoolPush();
  v18 = [[self alloc] initWithTests:testsCopy];
  v34 = reporterCopy;
  [v18 setReporter:reporterCopy];
  [v18 setTestHarness:harnessCopy];
  if (trials)
  {
    v19 = 0;
    v20 = MEMORY[0x277D85DF8];
    do
    {
      fprintf(*v20, "Beginning trial %lu\n", v19);
      context = objc_autoreleasePoolPush();
      [v18 runTestsInRange:range.location options:range.length trialID:{optionsCopy, v19}];
      if ([harnessCopy requiresMaintenance])
      {
        [MEMORY[0x277D6FE90] flushDynamicLearningCaches];
        [MEMORY[0x277D6FE90] performMaintenance];
      }

      v21 = [optionsCopy objectForKey:@"DUMP_RESULT_JSONL_FILE"];
      v22 = v21;
      if (!v21)
      {
        v21 = MEMORY[0x277CBEC28];
      }

      bOOLValue = [v21 BOOLValue];

      if (bOOLValue)
      {
        reporter = [TIReporter detailedResultFileURLForTrial:v19 withOptions:optionsCopy];
        [v18 reporter];
        v25 = v18;
        v26 = optionsCopy;
        v27 = observerCopy;
        v28 = harnessCopy;
        v29 = trialsCopy;
        v31 = v30 = v20;
        v32 = [v31 summaryForTrial:v19 dumpResultsToFile:reporter];

        v20 = v30;
        trialsCopy = v29;
        harnessCopy = v28;
        observerCopy = v27;
        optionsCopy = v26;
        v18 = v25;
      }

      else
      {
        reporter = [v18 reporter];
        v32 = [reporter reportForTrial:v19];
      }

      if (observerCopy)
      {
        observerCopy[2](observerCopy, v32, v19);
      }

      objc_autoreleasePoolPop(context);
      ++v19;
    }

    while (trialsCopy != v19);
  }

  objc_autoreleasePoolPop(v33);
}

@end