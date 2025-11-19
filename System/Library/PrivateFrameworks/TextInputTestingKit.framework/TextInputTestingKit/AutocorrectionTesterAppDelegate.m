@interface AutocorrectionTesterAppDelegate
+ (id)reporterWithOptions:(id)a3;
+ (void)setupSingletonMocksWithOptions:(id)a3;
+ (void)teardownSingletonMocks:(id)a3;
- (AutocorrectionTesterAppDelegate)initWithLocale:(id)a3 andText:(id)a4;
- (AutocorrectionTesterAppDelegate)initWithOptions:(id)a3;
- (BOOL)runAndWriteReport;
- (BOOL)runAutocorrectionTester:(id)a3;
- (BOOL)runTestCasesForSource:(id)a3 errorMessage:(id)a4 reportObserver:(id)a5;
- (BOOL)runTests:(id)a3 withHarnessClass:(Class)a4 forLanguage:(id)a5 errorMessage:(id)a6 reportObserver:(id)a7;
- (BOOL)runWithObserver:(id)a3;
- (double)runDslTest:(id)a3 withHarnessClass:(Class)a4 forLanguage:(id)a5 errorMessage:(id)a6;
- (void)resetOptions:(id)a3;
@end

@implementation AutocorrectionTesterAppDelegate

- (BOOL)runAndWriteReport
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__AutocorrectionTesterAppDelegate_runAndWriteReport__block_invoke;
  v3[3] = &unk_279DA0C80;
  v3[4] = self;
  return [(AutocorrectionTesterAppDelegate *)self runWithObserver:v3];
}

void __52__AutocorrectionTesterAppDelegate_runAndWriteReport__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a2;
  v13 = [TIReporter fileURLForTrial:a3 withOptions:v4];
  TITestTyperWritePropertyListToFile(v5, v13);
  v6 = [v5 objectForKeyedSubscript:@"KeystrokeSavingsRatio"];
  [v6 floatValue];
  v8 = v7;

  v9 = [v5 objectForKeyedSubscript:@"WordAccuracy"];

  [v9 floatValue];
  v11 = 1.0 - v10;

  v12 = MEMORY[0x277D85DF8];
  fprintf(*MEMORY[0x277D85DF8], "KSR:\t %.3f\n", v8);
  fprintf(*v12, "Error Rate: %.2f%%\n", (v11 * 100.0));
}

- (BOOL)runWithObserver:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v57 = a3;
  v4 = [(NSMutableDictionary *)self->_options objectForKey:@"STEP_INDEX"];

  if (v4)
  {
    v58 = +[TISweepSource sharedInstance];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v5 = self;
    obj = self->_options;
    v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v66 objects:v71 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v67;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v67 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v66 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)self->_options objectForKey:v10];
          v12 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@"[], "}];
          v13 = [v11 componentsSeparatedByCharactersInSet:v12];

          if ([v13 count] >= 2)
          {
            v14 = [v13 objectAtIndex:1];
            [v14 floatValue];
            v16 = v15;

            LODWORD(v17) = v16;
            [v58 addValue:v10 withValue:v17];
          }
        }

        v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v66 objects:v71 count:16];
      }

      while (v7);
    }

    v18 = [v58 debugValues];
    v19 = [v18 count];

    if (v19)
    {
      v20 = v57;
      v21 = [(AutocorrectionTesterAppDelegate *)v5 runAutocorrectionTester:v57];

      goto LABEL_33;
    }

    self = v5;
  }

  v22 = [(NSMutableDictionary *)self->_options objectForKey:@"STEP_COUNT"];

  if (!v22)
  {
LABEL_30:
    v20 = v57;
    v21 = [(AutocorrectionTesterAppDelegate *)self runAutocorrectionTester:v57];
    goto LABEL_33;
  }

  v23 = +[TISweepSource sharedInstance];
  v24 = [(NSMutableDictionary *)self->_options objectForKey:@"STEP_COUNT"];
  v59 = v23;
  [v23 setStepCount:{objc_msgSend(v24, "intValue")}];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v25 = self;
  obja = self->_options;
  v26 = [(NSMutableDictionary *)obja countByEnumeratingWithState:&v62 objects:v70 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v63;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v63 != v28)
        {
          objc_enumerationMutation(obja);
        }

        v30 = *(*(&v62 + 1) + 8 * j);
        v31 = [(NSMutableDictionary *)self->_options objectForKey:v30];
        v32 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@"[], "}];
        v33 = [v31 componentsSeparatedByCharactersInSet:v32];

        if ([v33 count] >= 2)
        {
          v34 = [v33 objectAtIndex:1];
          [v34 floatValue];
          v36 = v35;

          v37 = [v33 objectAtIndex:2];
          [v37 floatValue];
          v39 = v38;

          LODWORD(v40) = v36;
          LODWORD(v41) = v39;
          [v59 addValue:v30 withMin:v40 withMax:v41];
        }
      }

      v27 = [(NSMutableDictionary *)obja countByEnumeratingWithState:&v62 objects:v70 count:16];
    }

    while (v27);
  }

  v42 = [v59 debugValues];
  v43 = [v42 count];

  if (!v43)
  {

    self = v25;
    goto LABEL_30;
  }

  v44 = [MEMORY[0x277CCAB68] string];
  v45 = [v59 sweepStateHeader];
  [v44 appendFormat:@"%@results, \n", v45];

  v46 = [(NSMutableDictionary *)v25->_options valueForKey:@"OUTPATH"];
  v47 = [(NSMutableDictionary *)v25->_options objectForKey:@"SWEEP_EXTRACT"];
  v48 = [v46 stringByDeletingLastPathComponent];
  v49 = [v48 stringByAppendingPathComponent:v47];

  v50 = [v49 stringByAppendingFormat:@" %@ > /tmp/sweep_value.txt", v46];

  v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"sh %@", v50];

  v20 = v57;
  if ([v59 finished])
  {
LABEL_28:
    v55 = [v46 stringByDeletingPathExtension];

    v46 = [v55 stringByAppendingString:@"_sweep.csv"];

    v21 = 1;
    [v44 writeToFile:v46 atomically:1 encoding:4 error:0];
  }

  else
  {
    while ([(AutocorrectionTesterAppDelegate *)v25 runAutocorrectionTester:v57])
    {
      system([v51 cStringUsingEncoding:4]);
      v52 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:@"/tmp/sweep_value.txt" encoding:4 error:0];
      v53 = [v59 sweepStateValues];
      [v52 floatValue];
      [v44 appendFormat:@"%@%f, \n", v53, v54];

      [v59 advanceSweep];
      if ([v59 finished])
      {
        goto LABEL_28;
      }
    }

    v21 = 0;
  }

LABEL_33:
  return v21;
}

- (BOOL)runAutocorrectionTester:(id)a3
{
  v138[16] = *MEMORY[0x277D85DE8];
  v108 = a3;
  v110 = self;
  options = self->_options;
  p_options = &self->_options;
  v103 = [(NSMutableDictionary *)options objectForKey:@"WORDS"];
  v109 = [(NSMutableDictionary *)*p_options objectForKey:@"DICTS"];
  v99 = [(NSMutableDictionary *)*p_options objectForKey:@"PLAYBACK"];
  v100 = [(NSMutableDictionary *)*p_options objectForKey:@"TEXT"];
  v101 = [(NSMutableDictionary *)*p_options objectForKey:@"TESTCASE"];
  v105 = [(NSMutableDictionary *)*p_options objectForKey:@"TYPOLOGY"];
  v95 = [(NSMutableDictionary *)*p_options objectForKey:@"CANDIDATE_SENTENCES"];
  v107 = [(NSMutableDictionary *)*p_options objectForKey:@"USER_DIRECTORY"];
  v104 = [(NSMutableDictionary *)*p_options objectForKey:@"CUSTOM_DIALECT_LANGUAGE_MODEL_PATH"];
  v6 = [(NSMutableDictionary *)*p_options valueForKey:@"RUN_DSL_TEST"];

  v96 = [(NSMutableDictionary *)*p_options objectForKey:@"CONVERSATION_TESTS_FILE"];
  obj = [(NSMutableDictionary *)*p_options objectForKey:@"CONVERSATION_TESTS"];
  v97 = [(NSMutableDictionary *)*p_options objectForKey:@"SENTENCE"];
  v7 = [(NSMutableDictionary *)*p_options objectForKey:@"PREFERS_TRANSLITERATION"];
  v8 = v7;
  if (!v7)
  {
    v7 = @"0";
  }

  v9 = [(__CFString *)v7 BOOLValue];

  v98 = [(NSMutableDictionary *)*p_options objectForKey:@"INPUT_SAMPLES"];
  if (v107)
  {
    v10 = [(NSMutableDictionary *)v110->_options objectForKey:@"CLEAN_USER_DIRECTORY"];
    v11 = [v10 intValue];

    if (v11)
    {
      v12 = v107;
      if ([v12 length])
      {
        v13 = [MEMORY[0x277CCAA00] defaultManager];
        v138[0] = 0;
        v14 = [v13 removeItemAtPath:v12 error:v138];
        v15 = v138[0];

        if (v15)
        {
          v16 = v14;
        }

        else
        {
          v16 = 1;
        }

        if ((v16 & 1) == 0)
        {
          NSLog(&cfstr_FailedToRemove.isa, v15);
        }
      }

      __createDirectoryAtPath(v12);
    }

    else
    {
      __createDirectoryAtPath(v107);
    }

    TI_SET_KB_USER_DIRECTORY();
  }

  v106 = [(NSMutableDictionary *)v110->_options valueForKey:@"KEYBOARD_LANGUAGE"];
  if (v106 && (isInputModeAvailable() & 1) == 0)
  {
    goto LABEL_49;
  }

  v17 = [(NSMutableDictionary *)v110->_options objectForKey:@"TOUCAN_LM_MODE"];

  if (v17)
  {
    v18 = [(NSMutableDictionary *)v110->_options objectForKey:@"TOUCAN_LM_MODE"];
    v19 = [v18 intValue];

    if (v19 > 2)
    {
      v20 = [(NSMutableDictionary *)v110->_options objectForKey:@"TOUCAN_LM_MODE"];
      NSLog(&cfstr_UnsupportedVal.isa, v20);
    }

    else
    {
      TI_SET_USING_TOUCAN_LM();
    }
  }

  if (v104)
  {
    TI_SET_IS_USING_CUSTOM_DIALECT_LM();
    TI_SET_DIALECT_LM_PATH();
  }

  v21 = objc_opt_class();
  if (v105)
  {
    v21 = objc_opt_class();
  }

  v22 = v21;
  if (!v106)
  {
    if (!v109)
    {
      goto LABEL_50;
    }

    contexta = objc_autoreleasePoolPush();
    v33 = availableInputModes();
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v34 = [v33 countByEnumeratingWithState:&v111 objects:v132 count:16];
    if (v34)
    {
      v35 = 0;
      v36 = *v112;
      v37 = 0.0;
      do
      {
        v38 = 0;
        v39 = v35;
        do
        {
          if (*v112 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v40 = *(*(&v111 + 1) + 8 * v38);
          [(NSMutableDictionary *)v110->_options setObject:v40 forKey:@"INPUT_MODE"];
          v35 = read_unigrams_dictionary(v109, v40);

          v37 = v37 + [(AutocorrectionTesterAppDelegate *)v110 runTests:v35 withHarnessClass:v22 forLanguage:v40 errorMessage:@"Unable to read the dictionary file.\n" reportObserver:v108];
          ++v38;
          v39 = v35;
        }

        while (v34 != v38);
        v34 = [v33 countByEnumeratingWithState:&v111 objects:v132 count:16];
      }

      while (v34);
    }

    else
    {
      v37 = 0.0;
    }

    v49 = v37 / 60.0;
    if (v37 > 0.0)
    {
      v49 = v37;
    }

    fprintf(*MEMORY[0x277D85DF8], "Total testing time: %.2f s\n", v49);

    objc_autoreleasePoolPop(contexta);
    v41 = 1;
    goto LABEL_64;
  }

  if (!isInputModeAvailable())
  {
LABEL_49:
    NSLog(&cfstr_UnsupportedLan.isa, v106);
    goto LABEL_50;
  }

  [(NSMutableDictionary *)v110->_options setObject:v106 forKey:@"INPUT_MODE"];
  if (v103)
  {
    v23 = v22;
    v131 = 0;
    v24 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v103 encoding:4 error:&v131];
    context = v131;
    if (v24)
    {
      v25 = [v24 componentsSeparatedByString:@"\n"];
      v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v25, "count")}];
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v27 = v25;
      v28 = [v27 countByEnumeratingWithState:&v127 objects:v138 count:16];
      if (v28)
      {
        v29 = *v128;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v128 != v29)
            {
              objc_enumerationMutation(v27);
            }

            v31 = *(*(&v127 + 1) + 8 * i);
            if (([v31 isEqualToString:&stru_287EC4808] & 1) == 0)
            {
              v32 = [AutocorrectionTest testWithInput:v31];
              [v26 addObject:v32];
            }
          }

          v28 = [v27 countByEnumeratingWithState:&v127 objects:v138 count:16];
        }

        while (v28);
      }
    }

    else
    {
      v26 = 0;
    }

    v41 = [(AutocorrectionTesterAppDelegate *)v110 runTests:v26 withHarnessClass:v23 forLanguage:v106 errorMessage:@"Unable to read the word list file.\n" reportObserver:v108];
    goto LABEL_64;
  }

  if (v109)
  {
    v42 = read_unigrams_dictionary(v109, v106);
    v43 = @"Unable to read the dictionary file.\n";
    v44 = v110;
    v45 = v42;
    v46 = v22;
    v47 = v106;
LABEL_53:
    v48 = [(AutocorrectionTesterAppDelegate *)v44 runTests:v45 withHarnessClass:v46 forLanguage:v47 errorMessage:v43 reportObserver:v108];
LABEL_54:
    v41 = v48;
LABEL_63:

    goto LABEL_64;
  }

  if (v6)
  {
    [(NSMutableDictionary *)v110->_options setObject:@"YES" forKey:@"RUN_DSL_TEST"];
    v42 = [(NSMutableDictionary *)v110->_options valueForKey:@"DSL_TEST_FILE"];
    [(AutocorrectionTesterAppDelegate *)v110 runDslTest:v42 withHarnessClass:v22 forLanguage:v106 errorMessage:0];
    v41 = v50 != 0.0;
    goto LABEL_63;
  }

  if (!((v101 == 0) | v9 & 1))
  {
    v42 = [TTKTestCaseReader loadFromPath:?];
    if (!v42)
    {
      NSLog(&cfstr_CouldNotOpen.isa, v101);
      v41 = 0;
      goto LABEL_63;
    }

    v59 = [(NSMutableDictionary *)v110->_options objectForKey:@"KEYSTROKE_SEGMENTATION_MODE"];

    if (!v59)
    {
      [(NSMutableDictionary *)v110->_options setValue:@"alignment" forKey:@"KEYSTROKE_SEGMENTATION_MODE"];
    }

    v48 = [(AutocorrectionTesterAppDelegate *)v110 runTestCasesForSource:v42 errorMessage:0 reportObserver:v108];
    goto LABEL_54;
  }

  if (v9)
  {
    [(NSMutableDictionary *)v110->_options setObject:@"YES" forKey:@"PREFERS_PREDICTION_SELECTION"];
    v52 = [(NSMutableDictionary *)v110->_options objectForKey:@"TEST_SENTENCE_TRANSLITERATION"];
    v53 = v52;
    if (!v52)
    {
      v52 = @"0";
    }

    v54 = [(__CFString *)v52 BOOLValue];

    v55 = [(NSMutableDictionary *)v110->_options objectForKey:@"TRANSLITERATE_WITH_SPACES"];
    v56 = v55;
    if (!v55)
    {
      v55 = @"0";
    }

    v57 = [(__CFString *)v55 BOOLValue];

    if (v99)
    {
      v58 = [PlaybackTest loadFromPlaybackFile:?];
    }

    else if (v97)
    {
      v58 = [PlaybackTest loadFromSentence:v97 withCatenation:v54];
    }

    else
    {
      if (!v100)
      {
        goto LABEL_50;
      }

      v58 = [PlaybackTest loadFromTextInputFile:v100 withCatenation:v54 addWordSpacing:v57];
    }

    v42 = v58;
    v47 = v106;
    if (v58)
    {
      v44 = v110;
      v45 = v42;
      v46 = v22;
      v43 = 0;
      goto LABEL_53;
    }

LABEL_50:
    v41 = 0;
    goto LABEL_64;
  }

  if (v100)
  {
    v126 = 0;
    v60 = read_textfile(v100, &v126);
    if (v60)
    {
      v41 = [(AutocorrectionTesterAppDelegate *)v110 runTests:v60 withHarnessClass:v22 forLanguage:v106 errorMessage:0 reportObserver:v108];
    }

    else
    {
      NSLog(&cfstr_CouldNotOpen.isa, v100);
      v41 = 0;
    }

    goto LABEL_64;
  }

  if (v98)
  {
    v61 = [MEMORY[0x277CBEB18] array];
    v124[0] = MEMORY[0x277D85DD0];
    v124[1] = 3221225472;
    v124[2] = __59__AutocorrectionTesterAppDelegate_runAutocorrectionTester___block_invoke;
    v124[3] = &unk_279DA0C48;
    v125 = v61;
    v62 = v61;
    [v98 enumerateObjectsUsingBlock:v124];
    v41 = [(AutocorrectionTesterAppDelegate *)v110 runTests:v62 withHarnessClass:v22 forLanguage:v106 errorMessage:0 reportObserver:v108];

    goto LABEL_64;
  }

  if (v96)
  {
    v63 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:?];
    v123 = 0;
    v64 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v63 options:4 error:&v123];
    v65 = v123;
    if (!v64)
    {
      v88 = *MEMORY[0x277D85DF8];
      v89 = v96;
      v90 = [v96 cStringUsingEncoding:4];
      v91 = [v65 localizedDescription];
      v92 = v91;
      fprintf(v88, "Error: Unable to parse JSON config file '%s': %s\n\n", v90, [v91 cStringUsingEncoding:4]);

      exit(1);
    }

    v66 = [v64 objectForKeyedSubscript:@"conversationTests"];
    v67 = conversationTestsFromJsonArray(v66);

    v68 = v67;
    v69 = v97;
  }

  else
  {
    v69 = v97;
    v68 = obj;
  }

  if (!v68)
  {
    if (v69)
    {
      v84 = [AutocorrectionTest testWithInput:?];
      v133 = v84;
      v85 = [MEMORY[0x277CBEA60] arrayWithObjects:&v133 count:1];

      v41 = [(AutocorrectionTesterAppDelegate *)v110 runTests:v85 withHarnessClass:v22 forLanguage:v106 errorMessage:0 reportObserver:v108];
    }

    else if (v105)
    {
      v86 = read_typologyInfo(v105);
      v41 = [(AutocorrectionTesterAppDelegate *)v110 runTests:v86 withHarnessClass:v22 forLanguage:v106 errorMessage:0 reportObserver:v108];
    }

    else
    {
      if (!v95)
      {
        obj = 0;
        goto LABEL_50;
      }

      v87 = read_candidates(v95);
      v41 = [(AutocorrectionTesterAppDelegate *)v110 runTests:v87 withHarnessClass:v22 forLanguage:v106 errorMessage:@"Unable to read candidates\n" reportObserver:v108];
    }

    obj = 0;
    goto LABEL_64;
  }

  v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v136[0] = @"CONVERSATION_SENDERS_TO_TEST";
  v136[1] = @"CONVERSATION_ADAPT_TO_SENT_MESSAGES";
  v137[0] = @"sendersToTest";
  v137[1] = @"adaptToSentMessages";
  v136[2] = @"CONVERSATION_ADAPT_TO_RECEIVED_MESSAGES";
  v137[2] = @"adaptToReceivedMessages";
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v137 forKeys:v136 count:3];
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v71 = v120 = 0u;
  v72 = [v71 countByEnumeratingWithState:&v119 objects:v135 count:16];
  if (v72)
  {
    v73 = *v120;
    do
    {
      for (j = 0; j != v72; ++j)
      {
        if (*v120 != v73)
        {
          objc_enumerationMutation(v71);
        }

        v75 = *(*(&v119 + 1) + 8 * j);
        v76 = [(NSMutableDictionary *)v110->_options objectForKeyedSubscript:v75];

        if (v76)
        {
          v77 = [v71 objectForKeyedSubscript:v75];
          v78 = [(NSMutableDictionary *)v110->_options objectForKeyedSubscript:v75];
          [v70 setObject:v78 forKeyedSubscript:v77];
        }
      }

      v72 = [v71 countByEnumeratingWithState:&v119 objects:v135 count:16];
    }

    while (v72);
  }

  v79 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  obj = v68;
  v80 = [obj countByEnumeratingWithState:&v115 objects:v134 count:16];
  if (v80)
  {
    v81 = *v116;
    do
    {
      for (k = 0; k != v80; ++k)
      {
        if (*v116 != v81)
        {
          objc_enumerationMutation(obj);
        }

        v83 = [*(*(&v115 + 1) + 8 * k) overridingJsonKeys:v70];
        [v79 addObject:v83];
      }

      v80 = [obj countByEnumeratingWithState:&v115 objects:v134 count:16];
    }

    while (v80);
  }

  v41 = [(AutocorrectionTesterAppDelegate *)v110 runTests:v79 withHarnessClass:v22 forLanguage:v106 errorMessage:0 reportObserver:v108];
LABEL_64:

  return v41;
}

void __59__AutocorrectionTesterAppDelegate_runAutocorrectionTester___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = *(a1 + 32);
    v7 = [AutocorrectionTest testWithInput:v8];
    [v6 addObject:v7];
  }

  else
  {
    NSLog(&cfstr_ErrorUnableToP_1.isa);
    *a4 = 1;
  }
}

- (BOOL)runTestCasesForSource:(id)a3 errorMessage:(id)a4 reportObserver:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  Current = CFAbsoluteTimeGetCurrent();
  if (v8)
  {
    v12 = Current;
    v13 = objc_autoreleasePoolPush();
    [objc_opt_class() setupSingletonMocksWithOptions:self->_options];
    v14 = [objc_opt_class() reporterWithOptions:self->_options];
    v15 = [MEMORY[0x277CBEB88] currentRunLoop];
    v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:2.0];
    [v15 runUntilDate:v16];

    [TITester runTestCasesForSource:v8 options:self->_options reporter:v14 reportObserver:v10];
    objc_autoreleasePoolPop(v13);
    [objc_opt_class() teardownSingletonMocks:self->_options];
    v17 = CFAbsoluteTimeGetCurrent() - v12;
    fprintf(*MEMORY[0x277D85DF8], "Testing time: %.2f s\n", v17);
    v18 = v17 != 0.0;
  }

  else
  {
    if (v9)
    {
      NSLog(&stru_287EC4E08.isa, Current, v9);
    }

    v18 = 0;
  }

  return v18;
}

- (BOOL)runTests:(id)a3 withHarnessClass:(Class)a4 forLanguage:(id)a5 errorMessage:(id)a6 reportObserver:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  Current = CFAbsoluteTimeGetCurrent();
  NSLog(&cfstr_CurrentLanguag.isa, v13);
  if (v12)
  {
    v33 = v14;
    context = objc_autoreleasePoolPush();
    [objc_opt_class() setupSingletonMocksWithOptions:self->_options];
    v17 = [objc_opt_class() reporterWithOptions:self->_options];
    v18 = [[a4 alloc] initWithAttributes:self->_options];
    v19 = [MEMORY[0x277CBEB88] currentRunLoop];
    v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:2.0];
    [v19 runUntilDate:v20];

    v21 = [(NSMutableDictionary *)self->_options valueForKey:@"NUM_TRIALS"];
    v22 = [v21 intValue];

    if (v22 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    v24 = [(NSMutableDictionary *)self->_options valueForKey:@"START_INDEX"];
    v25 = [v24 intValue];

    if (v25)
    {
      v26 = v25 - 1;
    }

    else
    {
      v26 = 0;
    }

    v27 = [(NSMutableDictionary *)self->_options valueForKey:@"END_INDEX"];
    v28 = [v27 intValue];

    if (!v28)
    {
      v28 = [v12 count];
    }

    [TITester runWithTests:v12 inRange:v26 testHarness:v28 - v26 options:v18 reporter:self->_options numTrials:v17 reportObserver:v23, v15];

    objc_autoreleasePoolPop(context);
    [objc_opt_class() teardownSingletonMocks:self->_options];
    v29 = CFAbsoluteTimeGetCurrent() - Current;
    fprintf(*MEMORY[0x277D85DF8], "Testing time: %.2f s\n", v29);
    v30 = v29 != 0.0;
    v14 = v33;
  }

  else
  {
    if (v14)
    {
      NSLog(&stru_287EC4E08.isa, v14);
    }

    v30 = 0;
  }

  return v30;
}

- (double)runDslTest:(id)a3 withHarnessClass:(Class)a4 forLanguage:(id)a5 errorMessage:(id)a6
{
  v48 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v36 = a6;
  Current = CFAbsoluteTimeGetCurrent();
  v37 = v11;
  NSLog(&cfstr_CurrentLanguag.isa, v11);
  NSLog(&cfstr_CurrentDslFile.isa, v10);
  context = objc_autoreleasePoolPush();
  [objc_opt_class() setupSingletonMocksWithOptions:self->_options];
  v13 = [[a4 alloc] initWithAttributes:self->_options];
  v14 = [MEMORY[0x277CBEB88] currentRunLoop];
  v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:2.0];
  [v14 runUntilDate:v15];

  v16 = [v13 dslTestDriver];
  [v16 consumeTestFile:v10];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v17 = [v13 dslTestDriver];
  v18 = [v17 syntaxErrors];

  v19 = [v18 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v43;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v43 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v42 + 1) + 8 * i);

        v21 = v24;
        printf("Syntax Error: %s\n", [v24 UTF8String]);
      }

      v20 = [v18 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v20);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v25 = [v13 dslTestDriver];
  v26 = [v25 failedTests];

  v27 = [v26 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = 0;
    v30 = *v39;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v39 != v30)
        {
          objc_enumerationMutation(v26);
        }

        v32 = *(*(&v38 + 1) + 8 * j);

        v29 = v32;
        printf("Failed Test: %s\n", [v32 UTF8String]);
      }

      v28 = [v26 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v28);
  }

  objc_autoreleasePoolPop(context);
  [objc_opt_class() teardownSingletonMocks:self->_options];
  v33 = CFAbsoluteTimeGetCurrent() - Current;
  fprintf(*MEMORY[0x277D85DF8], "Testing time: %.2f s\n", v33);

  return v33;
}

- (void)resetOptions:(id)a3
{
  self->_options = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a3];

  MEMORY[0x2821F96F8]();
}

- (AutocorrectionTesterAppDelegate)initWithLocale:(id)a3 andText:(id)a4
{
  v16[6] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AutocorrectionTesterAppDelegate;
  v8 = [(AutocorrectionTesterAppDelegate *)&v14 init];
  if (v8)
  {
    v9 = MEMORY[0x277CBEB38];
    v15[0] = @"KEYBOARD_LANGUAGE";
    v15[1] = @"SENTENCE";
    v16[0] = v6;
    v16[1] = v7;
    v15[2] = @"USE_PREDICTION";
    v15[3] = @"MAX_PREDICTIONS_REPORTED";
    v16[2] = MEMORY[0x277CBEC38];
    v16[3] = &unk_287ED49B8;
    v15[4] = @"USE_RETROCORRECTION";
    v15[5] = @"BASE_KEY_FOR_VARIANTS";
    v16[4] = MEMORY[0x277CBEC38];
    v16[5] = MEMORY[0x277CBEC28];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:6];
    v11 = [v9 dictionaryWithDictionary:v10];
    options = v8->_options;
    v8->_options = v11;
  }

  return v8;
}

- (AutocorrectionTesterAppDelegate)initWithOptions:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AutocorrectionTesterAppDelegate;
  v5 = [(AutocorrectionTesterAppDelegate *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v4];
    options = v5->_options;
    v5->_options = v6;
  }

  return v5;
}

+ (id)reporterWithOptions:(id)a3
{
  v3 = a3;
  v4 = MGCopyAnswer();
  v5 = [[TIReporter alloc] initWithBuildVersion:v4];
  [(TIReporter *)v5 setOptions:v3];

  return v5;
}

+ (void)teardownSingletonMocks:(id)a3
{
  v3 = [a3 valueForKey:@"TEST_AUTO_FILL_FEATURE"];
  v4 = [v3 BOOLValue];

  _TIEndMockingSingletonsWithData(v4);
}

+ (void)setupSingletonMocksWithOptions:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"NAMEDENTITIES"];
  v5 = [v3 objectForKey:@"PORTRAIT_NAMEDENTITIES"];
  v6 = [v3 objectForKey:@"ADDRESSBOOK"];
  v7 = [v3 valueForKey:@"TEST_AUTO_FILL_FEATURE"];
  v8 = [v7 BOOLValue];

  if (!v6 && !v4 && !v5)
  {
    _TIBeginMockingSingletonsWithData(0, 0, 0, 0, 0, v8);
    goto LABEL_18;
  }

  if (v4)
  {
    v32 = 0;
    v9 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v4 encoding:4 error:&v32];
    v10 = v32;
    v11 = [MEMORY[0x277CBEB18] array];
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __read_nefile_block_invoke;
    v30 = &unk_279DA0CA8;
    v12 = v11;
    v31 = v12;
    [v9 enumerateLinesUsingBlock:&v27];

    if (v5)
    {
LABEL_7:
      v26 = v8;
      v13 = v5;
      v14 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v13];
      v27 = 0;
      v15 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v14 options:4 error:&v27];
      v16 = v27;
      if (!v15)
      {
        v23 = *MEMORY[0x277D85DF8];
        v24 = [v13 cStringUsingEncoding:4];
        v25 = [v16 localizedDescription];
        fprintf(v23, "Error: Unable to parse JSON config file '%s': %s\n\n", v24, [v25 cStringUsingEncoding:4]);

        exit(1);
      }

      if (objc_opt_respondsToSelector())
      {
        v17 = [MEMORY[0x277D1C0C8] filteredNamedEntitiesFromJSONDonations:v15];
      }

      else
      {
        v17 = MEMORY[0x277CBEBF8];
      }

      v8 = v26;
      goto LABEL_14;
    }
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
    if (v5)
    {
      goto LABEL_7;
    }
  }

  v17 = MEMORY[0x277CBEBF8];
LABEL_14:
  v18 = [v12 arrayByAddingObjectsFromArray:v17];

  if (v6)
  {
    v32 = 0;
    v19 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v6 encoding:4 error:&v32];
    v20 = v32;
    v21 = [MEMORY[0x277CBEB18] array];
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __read_mock_contactsfile_block_invoke;
    v30 = &unk_279DA0CA8;
    v22 = v21;
    v31 = v22;
    [v19 enumerateLinesUsingBlock:&v27];
  }

  else
  {
    v22 = MEMORY[0x277CBEBF8];
  }

  _TIBeginMockingSingletonsWithMockData(v22, v18, MEMORY[0x277CBEBF8], 0, 0, v8);

LABEL_18:
}

@end