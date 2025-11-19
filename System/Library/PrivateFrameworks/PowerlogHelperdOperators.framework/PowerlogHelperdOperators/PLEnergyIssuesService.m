@interface PLEnergyIssuesService
+ (BOOL)isTestRackDevice:(id)a3 withExpGroup:(id)a4 internalKeyDetected:(BOOL)a5;
+ (BOOL)shouldPopUpForPowerException;
+ (BOOL)shouldPopUpForPowerExceptionForProcess:(id)a3;
+ (BOOL)shouldPopUpForPowerExceptionWithFatalCount:(id)a3 withNonFatalCount:(id)a4 withMitigationsEnabled:(BOOL)a5;
+ (BOOL)supportsUrsa;
+ (id)createIssueEntriesFrom:(id)a3 forKey:(id)a4 now:(id)a5 midnight:(id)a6;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventIntervalDefinitionsUrsaIssues;
+ (id)entryEventPointDefinitionUrsaInteraction;
+ (id)entryEventPointDefinitionUrsaSummary;
+ (id)entryEventPointDefinitions;
+ (id)parseBootArgs:(id)a3;
+ (void)load;
- (BOOL)isValidUrsaEntry:(id)a3;
- (BOOL)shouldUpdateTableFrom:(id)a3 newPayload:(id)a4;
- (PLEnergyIssuesService)init;
- (__CFDictionary)createAssertionThreshold:(int)a3 withAggregateLimit:(int)a4;
- (id)extractActionfromEntry:(id)a3;
- (id)extractProcessNameFromEntry:(id)a3;
- (id)insertSystemTime:(id)a3 fromPLEntry:(id)a4;
- (void)handleAssertionNotifications;
- (void)initOperatorDependancies;
- (void)initializeSafeguardsSystem;
- (void)setAssertionThresholds;
@end

@implementation PLEnergyIssuesService

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLEnergyIssuesService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLEnergyIssuesService)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLEnergyIssuesService;
    self = [(PLOperator *)&v5 init];
    v3 = self;
  }

  return v3;
}

- (void)initOperatorDependancies
{
  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
  {
    [(PLEnergyIssuesService *)self setAssertionThresholds];

    [(PLEnergyIssuesService *)self initializeSafeguardsSystem];
  }
}

- (__CFDictionary)createAssertionThreshold:(int)a3 withAggregateLimit:(int)a4
{
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  valuePtr = a3;
  v8 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
  v11 = a4;
  v9 = CFNumberCreate(v6, kCFNumberIntType, &v11);
  CFDictionarySetValue(Mutable, @"Asssertion Duration Limit", v8);
  CFDictionarySetValue(Mutable, @"Aggregate Assertion Limit", v9);
  CFRelease(v8);
  CFRelease(v9);
  return Mutable;
}

- (void)setAssertionThresholds
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_25EE51000, v0, OS_LOG_TYPE_DEBUG, "%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __47__PLEnergyIssuesService_setAssertionThresholds__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  setAssertionThresholds_classDebugEnabled = result;
  return result;
}

uint64_t __47__PLEnergyIssuesService_setAssertionThresholds__block_invoke_120(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  setAssertionThresholds_classDebugEnabled_119 = result;
  return result;
}

- (void)handleAssertionNotifications
{
  v2 = dispatch_queue_create("PM test queue", 0);
  IOPMScheduleAssertionExceptionNotification();
}

+ (id)entryEventIntervalDefinitions
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v7 = @"UrsaDefinition";
    v3 = [a1 entryEventIntervalDefinitionsUrsaIssues];
    v8[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)entryEventIntervalDefinitionsUrsaIssues
{
  v31[2] = *MEMORY[0x277D85DE8];
  v30[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F590];
  v28[0] = *MEMORY[0x277D3F568];
  v28[1] = v2;
  v29[0] = &unk_28714B1D8;
  v29[1] = &unk_2871458C8;
  v28[2] = *MEMORY[0x277D3F588];
  v29[2] = &unk_28714B1E8;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
  v31[0] = v25;
  v30[1] = *MEMORY[0x277D3F540];
  v26[0] = @"radar";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v27[0] = v23;
  v26[1] = @"impact";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_IntegerFormat];
  v27[1] = v21;
  v26[2] = @"timestampStart";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_DateFormat];
  v27[2] = v19;
  v26[3] = @"timestampEnd";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_DateFormat];
  v27[3] = v17;
  v26[4] = @"hitIn";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_StringFormat];
  v27[4] = v15;
  v26[5] = @"fixedIn";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v27[5] = v4;
  v26[6] = @"isCritical";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_BoolFormat];
  v27[6] = v6;
  v26[7] = @"timestampInvalid";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_DateFormat];
  v27[7] = v8;
  v26[8] = @"driMessage";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_StringFormat];
  v27[8] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:9];
  v31[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"UrsaSummary";
  v3 = [a1 entryEventPointDefinitionUrsaSummary];
  v8[1] = @"UrsaInteraction";
  v9[0] = v3;
  v4 = [a1 entryEventPointDefinitionUrsaInteraction];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)entryEventPointDefinitionUrsaSummary
{
  v26[2] = *MEMORY[0x277D85DE8];
  if (+[PLEnergyIssuesService supportsUrsa])
  {
    v25[0] = *MEMORY[0x277D3F4E8];
    v23 = *MEMORY[0x277D3F568];
    v24 = &unk_28714B1F8;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v26[0] = v20;
    v25[1] = *MEMORY[0x277D3F540];
    v21[0] = @"requestId";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_StringFormat];
    v22[0] = v18;
    v21[1] = @"countBui";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v22[1] = v16;
    v21[2] = @"countNotification";
    v15 = [MEMORY[0x277D3F198] sharedInstance];
    v14 = [v15 commonTypeDict_IntegerFormat];
    v22[2] = v14;
    v21[3] = @"error";
    v2 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v2 commonTypeDict_IntegerFormat];
    v22[3] = v3;
    v21[4] = @"peProcess";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_StringFormat];
    v22[4] = v5;
    v21[5] = @"peReason";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_StringFormat];
    v22[5] = v7;
    v21[6] = @"peFK_ID";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v22[6] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:7];
    v26[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventPointDefinitionUrsaInteraction
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (+[PLEnergyIssuesService supportsUrsa])
  {
    v17[0] = *MEMORY[0x277D3F4E8];
    v15 = *MEMORY[0x277D3F568];
    v16 = &unk_28714B208;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v18[0] = v2;
    v17[1] = *MEMORY[0x277D3F540];
    v13[0] = @"source";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_StringFormat];
    v14[0] = v4;
    v13[1] = @"radar";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v14[1] = v6;
    v13[2] = @"action";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_StringFormat];
    v14[2] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
    v18[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (BOOL)supportsUrsa
{
  v2 = [MEMORY[0x277D3F208] internalBuild];
  if (v2)
  {
    if ([MEMORY[0x277D3F208] nonUIBuild])
    {
      LOBYTE(v2) = 0;
    }

    else
    {
      LOBYTE(v2) = [MEMORY[0x277D3F1B8] isVirtualDevice] ^ 1;
    }
  }

  return v2;
}

- (id)insertSystemTime:(id)a3 fromPLEntry:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!v5 || (isKindOfClass & 1) != 0)
  {
    v8 = PLLogUrsa();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PLEnergyIssuesService insertSystemTime:fromPLEntry:];
    }

    v12 = 0;
  }

  else
  {
    v8 = [v5 mutableCopy];
    if (!v8)
    {
      v10 = PLLogUrsa();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [PLEnergyIssuesService insertSystemTime:fromPLEntry:];
      }

      goto LABEL_27;
    }

    if (v6)
    {
      v9 = [v6 objectForKeyedSubscript:@"timestampEnd"];

      if (v9)
      {
        v10 = [v6 objectForKeyedSubscript:@"timestampEnd"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v19 = PLLogUrsa();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              [PLEnergyIssuesService insertSystemTime:fromPLEntry:];
            }

            v20 = v8;
            goto LABEL_27;
          }

          v14 = MEMORY[0x277CBEAA8];
          [v10 doubleValue];
          v11 = [v14 dateWithTimeIntervalSince1970:?];
        }

        v15 = v11;
        v16 = [v11 convertFromMonotonicToSystem];
        if (v16)
        {
          [v8 setObject:v16 forKeyedSubscript:@"timestamp"];
        }

        else
        {
          v17 = PLLogUrsa();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [PLEnergyIssuesService insertSystemTime:fromPLEntry:];
          }
        }

        v18 = v8;

LABEL_27:
        v12 = v8;
        goto LABEL_28;
      }
    }

    v13 = PLLogUrsa();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PLEnergyIssuesService insertSystemTime:fromPLEntry:];
    }

    v8 = v8;
    v12 = v8;
  }

LABEL_28:

  return v12;
}

- (BOOL)isValidUrsaEntry:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"driMessage"];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v5;
        if (![v5 length]|| [v5 rangeOfString:@":"]== 0x7FFFFFFFFFFFFFFFLL)
        {
          v6 = PLLogUrsa();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            [PLEnergyIssuesService isValidUrsaEntry:];
          }

          v7 = 0;
          goto LABEL_42;
        }

        v6 = [v4 objectForKeyedSubscript:@"timestampEnd"];
        if (v6)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v10 = [v4 objectForKeyedSubscript:@"hitIn"];
            if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              if ([v10 length])
              {
                v11 = [v4 objectForKeyedSubscript:@"radar"];
                if (v11)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v12 = PLLogUrsa();
                    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                    {
                      [PLEnergyIssuesService isValidUrsaEntry:];
                    }

                    v7 = 0;
                    goto LABEL_60;
                  }
                }

                v12 = [v4 objectForKeyedSubscript:@"impact"];
                if (v12)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v13 = PLLogUrsa();
                    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                    {
                      [PLEnergyIssuesService isValidUrsaEntry:];
                    }

                    v7 = 0;
                    goto LABEL_59;
                  }
                }

                v13 = [v4 objectForKeyedSubscript:@"fixedIn"];
                if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  v14 = PLLogUrsa();
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                  {
                    [PLEnergyIssuesService isValidUrsaEntry:];
                  }
                }

                else
                {
                  v14 = [v5 componentsSeparatedByString:@":"];
                  if ([v14 count]== 2)
                  {
                    v15 = [v14 objectAtIndexedSubscript:0];
                    if ([v15 length])
                    {
                      v19 = v15;
                      v7 = 1;
                      v16 = [v14 objectAtIndexedSubscript:1];
                      v18 = [v16 length];

                      if (v18)
                      {
LABEL_58:

LABEL_59:
LABEL_60:

                        goto LABEL_37;
                      }
                    }

                    else
                    {
                    }
                  }

                  v17 = PLLogUrsa();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    [PLEnergyIssuesService isValidUrsaEntry:];
                  }
                }

                v7 = 0;
                goto LABEL_58;
              }

              v11 = PLLogUrsa();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
              {
                [PLEnergyIssuesService isValidUrsaEntry:];
              }
            }

            else
            {
              v11 = PLLogUrsa();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
              {
                [PLEnergyIssuesService isValidUrsaEntry:];
              }
            }

            v7 = 0;
LABEL_37:

LABEL_41:
LABEL_42:

            goto LABEL_15;
          }

          v10 = PLLogUrsa();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [PLEnergyIssuesService isValidUrsaEntry:];
          }
        }

        else
        {
          v10 = PLLogUrsa();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [PLEnergyIssuesService isValidUrsaEntry:];
          }
        }

        v7 = 0;
        goto LABEL_41;
      }
    }

    v8 = PLLogUrsa();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PLEnergyIssuesService isValidUrsaEntry:];
    }
  }

  else
  {
    v5 = PLLogUrsa();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [PLEnergyIssuesService isValidUrsaEntry:];
    }
  }

  v7 = 0;
LABEL_15:

  return v7;
}

- (BOOL)shouldUpdateTableFrom:(id)a3 newPayload:(id)a4
{
  LOBYTE(v4) = 0;
  if (a3 && a4)
  {
    v7 = a4;
    v8 = [(PLEnergyIssuesService *)self extractActionfromEntry:a3];
    v9 = [v7 objectForKeyedSubscript:@"action"];

    if (v9 && ([v8 isEqualToString:@"softwareUpdate"] & 1) == 0)
    {
      v4 = [v8 isEqualToString:v9] ^ 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (id)extractActionfromEntry:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"driMessage"];
  v4 = [v3 componentsSeparatedByString:@":"];
  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)extractProcessNameFromEntry:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"driMessage"];
  v4 = [v3 componentsSeparatedByString:@":"];
  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)parseBootArgs:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 whitespaceCharacterSet];
  v6 = [v4 componentsSeparatedByCharactersInSet:v5];

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__PLEnergyIssuesService_parseBootArgs___block_invoke;
  v11[3] = &unk_279A5C3A8;
  v8 = v7;
  v12 = v8;
  [v6 enumerateObjectsUsingBlock:v11];
  if ([v8 count])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __39__PLEnergyIssuesService_parseBootArgs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    if ([v3 rangeOfString:@"="] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 32) setObject:@"?" forKeyedSubscript:v3];
    }

    else
    {
      v4 = [v3 componentsSeparatedByString:@"="];
      if ([v4 count] == 2)
      {
        v5 = [v4 firstObject];
        v6 = [v4 lastObject];
        v7 = v6;
        if (v5 && v6)
        {
          [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
        }

        else
        {
          v8 = PLLogUrsa();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            __39__PLEnergyIssuesService_parseBootArgs___block_invoke_cold_1();
          }
        }
      }

      else
      {
        v5 = PLLogUrsa();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          __39__PLEnergyIssuesService_parseBootArgs___block_invoke_cold_1();
        }
      }
    }
  }
}

+ (id)createIssueEntriesFrom:(id)a3 forKey:(id)a4 now:(id)a5 midnight:(id)a6
{
  v81 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v61 = a4;
  v62 = a5;
  v59 = a6;
  if (v9)
  {
    v60 = [MEMORY[0x277CBEB18] array];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v58 = v9;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v74 objects:v80 count:16];
    if (!v11)
    {
      goto LABEL_51;
    }

    v12 = v11;
    v13 = @"radar";
    v14 = @"impact";
    v64 = *v75;
    while (1)
    {
      v15 = 0;
      do
      {
        if (*v75 != v64)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v74 + 1) + 8 * v15);
        v17 = [v16 objectForKeyedSubscript:{v13, v58}];
        v18 = [v16 objectForKeyedSubscript:v14];
        v71 = [v16 objectForKeyedSubscript:@"timestampStart"];
        v70 = [v16 objectForKeyedSubscript:@"timestampEnd"];
        v69 = [v16 objectForKeyedSubscript:@"hitIn"];
        v68 = [v16 objectForKeyedSubscript:@"fixedIn"];
        v73 = [v16 objectForKeyedSubscript:@"isCritical"];
        v67 = [v16 objectForKeyedSubscript:@"timestampInvalid"];
        v72 = [v16 objectForKeyedSubscript:@"driMessage"];
        v19 = [v16 objectForKeyedSubscript:@"notificationMessage"];
        v65 = v18;
        v66 = v19;
        if (!v17 || !v18 || !v71 || !v70 || !v69 || !v68 || !v73 || !v67 || !v72 || !v19)
        {
          v29 = PLLogUrsa();
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_30;
          }

          *buf = 138412290;
          v79 = v16;
          v37 = v29;
          v38 = "Insufficient information for issue. Given information: %@";
          goto LABEL_49;
        }

        v20 = [MEMORY[0x277CBEB68] null];
        if (v17 == v20)
        {
          goto LABEL_28;
        }

        v21 = [MEMORY[0x277CBEB68] null];
        if (v73 == v21)
        {
          goto LABEL_27;
        }

        v63 = v17;
        v22 = v14;
        v23 = v13;
        v24 = v10;
        v25 = [MEMORY[0x277CBEB68] null];
        v26 = v25;
        if (v72 == v25)
        {

          v10 = v24;
          v13 = v23;
          v14 = v22;
LABEL_27:

LABEL_28:
LABEL_29:
          v29 = PLLogUrsa();
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_30;
          }

          *buf = 138412290;
          v79 = v16;
          v37 = v29;
          v38 = "Null data found in issue: %@";
LABEL_49:
          _os_log_error_impl(&dword_25EE51000, v37, OS_LOG_TYPE_ERROR, v38, buf, 0xCu);
          goto LABEL_30;
        }

        v27 = [MEMORY[0x277CBEB68] null];

        v28 = v66 == v27;
        v10 = v24;
        v13 = v23;
        v14 = v22;
        v17 = v63;
        if (v28)
        {
          goto LABEL_29;
        }

        v29 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v61 withDate:v62];
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v63, "unsignedIntValue")}];
        [v29 setObject:v30 forKeyedSubscript:v13];

        v31 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v73, "BOOLValue")}];
        [v29 setObject:v31 forKeyedSubscript:@"isCritical"];

        [v29 setObject:v72 forKeyedSubscript:@"driMessage"];
        [v29 setObject:v66 forKeyedSubscript:@"notificationMessage"];
        v32 = [MEMORY[0x277CBEB68] null];

        if (v67 == v32)
        {
          v34 = 0.0;
LABEL_33:
          [v29 setObject:v59 forKeyedSubscript:@"timestampInvalid"];
          v36 = 0;
          goto LABEL_34;
        }

        [v67 doubleValue];
        v34 = v33;
        if (v33 == 0.0)
        {
          goto LABEL_33;
        }

        v35 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
        [v29 setObject:v35 forKeyedSubscript:@"timestampInvalid"];

        v36 = 1;
LABEL_34:
        v39 = [MEMORY[0x277CBEB68] null];

        if (v65 != v39)
        {
          v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v65, "unsignedIntValue")}];
          [v29 setObject:v40 forKeyedSubscript:v22];
        }

        v41 = [MEMORY[0x277CBEB68] null];

        if (v71 != v41)
        {
          v42 = MEMORY[0x277CCABB0];
          [v71 doubleValue];
          v43 = [v42 numberWithDouble:?];
          [v29 setObject:v43 forKeyedSubscript:@"timestampStart"];
        }

        v44 = [MEMORY[0x277CBEB68] null];

        if (v70 != v44)
        {
          v45 = MEMORY[0x277CCABB0];
          [v70 doubleValue];
          v46 = [v45 numberWithDouble:?];
          [v29 setObject:v46 forKeyedSubscript:@"timestampEnd"];
        }

        v47 = [MEMORY[0x277CBEB68] null];

        if (v69 != v47)
        {
          v48 = [MEMORY[0x277CCACA8] stringWithString:?];
          [v29 setObject:v48 forKeyedSubscript:@"hitIn"];
        }

        v49 = [MEMORY[0x277CBEB68] null];

        if (v68 != v49)
        {
          v50 = [MEMORY[0x277CCACA8] stringWithString:?];
          [v29 setObject:v50 forKeyedSubscript:@"fixedIn"];
        }

        v51 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v34];
        v52 = v51;
        if (!v36 || ([v51 laterDate:v62], v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(v53, "isEqualToDate:", v62), v53, (v54 & 1) == 0))
        {
          [v60 addObject:v29];
        }

        v17 = v63;
LABEL_30:

        ++v15;
      }

      while (v12 != v15);
      v55 = [v10 countByEnumeratingWithState:&v74 objects:v80 count:16];
      v12 = v55;
      if (!v55)
      {
LABEL_51:

        v9 = v58;
        goto LABEL_53;
      }
    }
  }

  v60 = 0;
LABEL_53:

  v56 = *MEMORY[0x277D85DE8];

  return v60;
}

+ (BOOL)shouldPopUpForPowerExceptionWithFatalCount:(id)a3 withNonFatalCount:(id)a4 withMitigationsEnabled:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = !v5 || [a3 intValue] >= 1 && objc_msgSend(v7, "intValue") > 0;

  return v8;
}

+ (BOOL)shouldPopUpForPowerExceptionForProcess:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (shouldPopUpForPowerExceptionForProcess__onceToken != -1)
    {
      +[PLEnergyIssuesService shouldPopUpForPowerExceptionForProcess:];
    }

    v4 = [shouldPopUpForPowerExceptionForProcess__allowedProcesses containsObject:v3];
  }

  else
  {
    v5 = PLLogUrsa();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[PLEnergyIssuesService shouldPopUpForPowerExceptionForProcess:];
    }

    v4 = 0;
  }

  return v4;
}

uint64_t __64__PLEnergyIssuesService_shouldPopUpForPowerExceptionForProcess___block_invoke()
{
  shouldPopUpForPowerExceptionForProcess__allowedProcesses = [MEMORY[0x277CBEB98] setWithArray:&unk_28714C788];

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)shouldPopUpForPowerException
{
  v2 = [MEMORY[0x277CBEAA8] date];
  [MEMORY[0x277D3F180] doubleForKey:@"UrsaNotifyAfter" ifNotSet:0.0];
  if (v3 == 0.0 || (v4 = v3, [v2 timeIntervalSince1970], v5 >= v4))
  {
    v6 = [MEMORY[0x277CBEAA8] nearestMidnightAfterDate:v2];
    [v6 timeIntervalSince1970];
    v8 = v7;

    v9 = MEMORY[0x277D3F180];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
    v11 = 1;
    [v9 setObject:v10 forKey:@"UrsaNotifyAfter" saveToDisk:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)isTestRackDevice:(id)a3 withExpGroup:(id)a4 internalKeyDetected:(BOOL)a5
{
  v5 = a5;
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if ([a4 isEqualToString:@"carry"])
  {
    v8 = PLLogUrsa();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      v9 = "carry expGroup detected";
LABEL_7:
      _os_log_impl(&dword_25EE51000, v8, OS_LOG_TYPE_DEFAULT, v9, v14, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v5)
  {
    v8 = PLLogUrsa();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      v9 = "internal key detected";
      goto LABEL_7;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v13 = [v7 length];
  v10 = v13 != 0;
  v8 = PLLogUrsa();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109120;
    v14[1] = v13 != 0;
    _os_log_impl(&dword_25EE51000, v8, OS_LOG_TYPE_DEFAULT, "adg set: %d", v14, 8u);
  }

LABEL_9:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)initializeSafeguardsSystem
{
  if (([MEMORY[0x277D3F208] nonUIBuild] & 1) == 0)
  {
    v3 = objc_alloc_init(MEMORY[0x277D3F068]);
    safeguardsManagingClient = self->_safeguardsManagingClient;
    self->_safeguardsManagingClient = v3;

    if (!self->_safeguardsManagingClient)
    {
      v5 = PLLogComputeSafeguards();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [PLEnergyIssuesService initializeSafeguardsSystem];
      }
    }
  }
}

- (void)insertSystemTime:fromPLEntry:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)isValidUrsaEntry:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __39__PLEnergyIssuesService_parseBootArgs___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end