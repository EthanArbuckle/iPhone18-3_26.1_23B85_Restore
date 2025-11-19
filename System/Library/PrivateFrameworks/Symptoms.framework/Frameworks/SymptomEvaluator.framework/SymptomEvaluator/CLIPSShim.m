@interface CLIPSShim
+ (CLIPSShim)sharedInstance;
+ (_CCCryptor)cryptor;
+ (id)createDecryptedCLPData:(const void *)a3 length:(unint64_t)a4;
+ (id)dataSectionNameForModule:(id)a3;
+ (id)decodeAndInflateCLIPSString:(id)a3;
+ (id)decryptCLIPSData:(id)a3 forModule:(id)a4;
- ($019B15D08CAF2F6032DDFBB53180E398)consoleNameRegex;
- ($019B15D08CAF2F6032DDFBB53180E398)dumpStringRegex;
- (BOOL)addModuleNamed:(id)a3 withConstruct:(id)a4;
- (BOOL)addNewConstruct:(id)a3;
- (BOOL)factIsImportant:(id)a3;
- (BOOL)initializeWorkspace;
- (BOOL)loadConstructsForModule:(id)a3;
- (CLIPSShim)init;
- (CLIPSShimDelegate)delegate;
- (id)consoleBuffer;
- (id)currentModule;
- (id)currentRuleName;
- (id)deftemplatesMatchingPrefix:(id)a3;
- (id)dumpEngineStatusWithContext:(id)a3;
- (id)factDictionaryForFact:(void *)a3;
- (id)factStringForFactDictionary:(id)a3;
- (id)getValueForSlotNamed:(id)a3 fromFact:(void *)a4;
- (id)loadDataSection:(id)a3;
- (id)matchFactsWithDeftemplateName:(id)a3 withSlotKeyValues:(id)a4;
- (id)moduleNames;
- (id)moduleRulesByName:(id)a3;
- (id)objectForDO:(dataObject *)a3;
- (id)objectFromMultifieldArg:(void *)a3 start:(int64_t)a4 end:(int64_t)a5;
- (id)otaUpdatePlatformStringForDeviceClass:(int64_t)a3;
- (id)parseCLIPSModuleInfoFromConstructs:(id)a3;
- (id)printedFacts:(id)a3 limit:(int64_t)a4;
- (id)setCurrentModule:(id)a3;
- (id)slotsStringForTemplate:(id)a3 fromDictionary:(id)a4 moduleName:(id)a5;
- (id)stringFromConstructsLoadState:(int64_t)a3;
- (id)swapConsoleBuffer:(id)a3;
- (int)executeBatchCommand:(id)a3 module:(id)a4;
- (int64_t)constructLoadStateForModule:(id)a3;
- (int64_t)run;
- (void)_logFactsForModule:(id)a3 limit:(int64_t)a4 when:(int64_t)a5;
- (void)addCallbackInvocation:(id)a3 invocation:(id)a4;
- (void)addObjectToEnvironment:(id)a3;
- (void)assertFactString:(id)a3 moduleName:(id)a4;
- (void)clear;
- (void)deactivateModule:(id)a3;
- (void)dealloc;
- (void)deftemplateNamed:(id)a3 moduleName:(id)a4;
- (void)executeCommand:(id)a3 moduleName:(id)a4;
- (void)log:(id)a3;
- (void)logMemoryStatistics:(id)a3 verboseOnly:(BOOL)a4;
- (void)performOnFactsWithDeftemplateName:(id)a3 usingBlock:(id)a4;
- (void)pushFocus:(id)a3;
- (void)registerCallbackFunction:(id)a3 selector:(SEL)a4 target:(id)a5;
- (void)releaseFact:(void *)a3;
- (void)removeCallbackInvocation:(id)a3;
- (void)reportError:(id)a3;
- (void)reset;
- (void)retainFact:(void *)a3;
- (void)retractFact:(void *)a3;
- (void)setCommandString:(id)a3;
- (void)setConsoleNameRegex:(id *)a3;
- (void)setDumpStringRegex:(id *)a3;
- (void)setOTAUpdate:(id)a3 version:(id)a4 module:(id)a5;
- (void)unloadConstructsForModule:(id)a3 unconditionally:(BOOL)a4;
- (void)updateAllModuleInfos;
- (void)updateModuleInfoForModule:(id)a3 slotValues:(id)a4;
@end

@implementation CLIPSShim

- ($019B15D08CAF2F6032DDFBB53180E398)dumpStringRegex
{
  v3 = *&self[5].var1;
  *&retstr->var0 = *&self[4].var3;
  *&retstr->var2 = v3;
  return self;
}

- ($019B15D08CAF2F6032DDFBB53180E398)consoleNameRegex
{
  v3 = *&self[4].var1;
  *&retstr->var0 = *&self[3].var3;
  *&retstr->var2 = v3;
  return self;
}

- (CLIPSShimDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)run
{
  v3 = EnvRun(self->_environment, 1000);
  [(CLIPSShim *)self logMemoryStatistics:@"Post-run memory usage by CLIPS" verboseOnly:1];
  return v3;
}

- (id)consoleBuffer
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [(CLIPSShim *)self swapConsoleBuffer:v3];

  return v4;
}

+ (CLIPSShim)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__CLIPSShim_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_49 != -1)
  {
    dispatch_once(&sharedInstance_pred_49, block);
  }

  v2 = sharedInstance_sharedInstance_51;

  return v2;
}

uint64_t __27__CLIPSShim_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_51;
  sharedInstance_sharedInstance_51 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (_CCCryptor)cryptor
{
  result = sCryptor;
  if (!sCryptor)
  {
    cryptorRef = 0;
    if (CCCryptorCreate(1u, 0, 1u, &kSymptomsCLPCCKeyData, 0x20uLL, &kSymptomsCLPCCIVData, &cryptorRef))
    {
      return sCryptor;
    }

    else
    {
      result = cryptorRef;
      sCryptor = cryptorRef;
    }
  }

  return result;
}

- (CLIPSShim)init
{
  v18.receiver = self;
  v18.super_class = CLIPSShim;
  v2 = [(CLIPSShim *)&v18 init];
  if (v2)
  {
    if (+[CLIPSShim cryptor])
    {
      Environment = CreateEnvironment();
      *(v2 + 7) = Environment;
      SetEnvironmentContext(Environment, v2);
      v4 = objc_opt_new();
      v5 = *(v2 + 8);
      *(v2 + 8) = v4;

      v6 = objc_opt_new();
      v7 = *(v2 + 9);
      *(v2 + 9) = v6;

      v8 = objc_opt_new();
      v9 = *(v2 + 12);
      *(v2 + 12) = v8;

      regcomp((v2 + 120), "wdialog|wdisplay|werror|wwarning|wtrace|wclips|stdout|stderr", 5);
      regcomp((v2 + 152), "dump|cmd", 5);
      EnvAddRouter(*(v2 + 7), "CLIPSShim", 100, _routerQueryImpl, _routerPrintImpl, _routerGetCImpl, _routerUngetCImpl, _routerExitImpl);
      EnvAddClearFunction(*(v2 + 7), "core-clear", _clearCallback, -10000);
      EnvAddResetFunction(*(v2 + 7), "core-reset", _resetCallback, -10000);
      EnvWatch(*(v2 + 7), "all");
      v17[0] = xmmword_2847950D8;
      v17[1] = *&off_2847950E8;
      v17[2] = xmmword_2847950F8;
      *(v2 + 8) = InstallExternalAddressType(*(v2 + 7), v17);
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v11 = *(v2 + 13);
      *(v2 + 13) = v10;

      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v13 = *(v2 + 6);
      *(v2 + 6) = v12;

      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v15 = *(v2 + 14);
      *(v2 + 14) = v14;

      [v2 logMemoryStatistics:@"Initial memory usage by CLIPS"];
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  SetEnvironmentContext(self->_environment, 0);
  EnvDeleteRouter(self->_environment, "CLIPSShim");
  EnvRemoveClearFunction(self->_environment, "core-clear");
  EnvRemoveResetFunction(self->_environment, "core-reset");
  DestroyEnvironment(self->_environment);
  self->_environment = 0;
  MEMORY[0x2383888C0](&self->_consoleNameRegex);
  MEMORY[0x2383888C0](&self->_dumpStringRegex);
  [(NSMutableDictionary *)self->_invocationMap removeAllObjects];
  if (sCryptor)
  {
    CCCryptorRelease(sCryptor);
    sCryptor = 0;
  }

  v3.receiver = self;
  v3.super_class = CLIPSShim;
  [(CLIPSShim *)&v3 dealloc];
}

- (BOOL)initializeWorkspace
{
  v3 = MEMORY[0x277D6B500];
  v4 = +[SystemSettingsRelay defaultRelay];
  v5 = [v4 symptomEvaluatorDatabaseContainerPath];
  v6 = [v3 workspaceWithName:@"netusage" atPath:v5 objectModelName:*MEMORY[0x277D6B618] objectModelBundle:0 useReadOnly:0];

  v7 = [v6 copy];
  clipsWorkspace = self->_clipsWorkspace;
  self->_clipsWorkspace = v7;

  v9 = self->_clipsWorkspace;
  if (v9)
  {
    v10 = [ImpoExpoService impoExpoServiceInWorkspace:self->_clipsWorkspace andQueue:self->_queue];
    ieService = self->_ieService;
    self->_ieService = v10;
  }

  else
  {
    v12 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "Unable to copy Flow Analytics workspace", v14, 2u);
    }
  }

  return v9 != 0;
}

- (void)clear
{
  EnvHalt(self->_environment);
  EnvClear(self->_environment);
  modules = self->_modules;

  [(NSMutableDictionary *)modules removeAllObjects];
}

- (void)reset
{
  EnvHalt(self->_environment);
  environment = self->_environment;

  EnvReset(environment);
}

- (void)reportError:(id)a3
{
  environment = self->_environment;
  v6 = a3;
  EnvPrintRouter(environment, "werror", [a3 UTF8String]);
  v7 = self->_environment;

  EnvPrintRouter(v7, "werror", "\n");
}

- (void)log:(id)a3
{
  environment = self->_environment;
  v6 = a3;
  EnvPrintRouter(environment, "wtrace", [a3 UTF8String]);
  v7 = self->_environment;

  EnvPrintRouter(v7, "wtrace", "\n");
}

- (id)currentRuleName
{
  v16 = *MEMORY[0x277D85DE8];
  environment = self->_environment;
  v3 = *(environment[6] + 144);
  v4 = *v3;
  if (*v3)
  {
    DefruleName = EnvGetDefruleName(environment, *v3);
    if (DefruleName)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:DefruleName];
      goto LABEL_10;
    }

    v11 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v14 = 134217984;
      v15 = v4;
      v8 = "ruleName nil, rule: %p";
      v9 = v11;
      v10 = 12;
      goto LABEL_8;
    }
  }

  else
  {
    v7 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v14) = 0;
      v8 = "thisRule nil";
      v9 = v7;
      v10 = 2;
LABEL_8:
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, v8, &v14, v10);
    }
  }

  v6 = 0;
LABEL_10:
  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)setCommandString:(id)a3
{
  v4 = a3;
  [(CLIPSShim *)self setCommandStringLoc:0];
  [(CLIPSShim *)self setCurrentCommand:v4];
}

- (id)objectFromMultifieldArg:(void *)a3 start:(int64_t)a4 end:(int64_t)a5
{
  if (a5 == a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:a5 - a4 + 1];
  }

  v9 = v8;
  if (a5 >= a4)
  {
    v10 = a5 - a4 + 1;
    v11 = a3 + 16 * a4 + 16;
    v9 = v8;
    do
    {
      v12 = 0;
      v13 = *(v11 - 4);
      if (v13 <= 1)
      {
        if (*(v11 - 4))
        {
          if (v13 != 1)
          {
            goto LABEL_24;
          }

          v14 = [MEMORY[0x277CCABB0] numberWithLongLong:*(*v11 + 24)];
        }

        else
        {
          v14 = [MEMORY[0x277CCABB0] numberWithDouble:*(*v11 + 24)];
        }
      }

      else if (v13 - 2 >= 2)
      {
        if (v13 != 5)
        {
          goto LABEL_24;
        }

        v14 = *(*v11 + 24);
      }

      else
      {
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(*v11 + 24)];
      }

      v12 = v14;
      if (v14)
      {
        v15 = v8 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        if (v14)
        {
          v16 = v8 == 0;
        }

        else
        {
          v16 = 0;
        }

        if (!v16)
        {
LABEL_24:
          v17 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
          {
            *v19 = 0;
            _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_INFO, "Failure parsing arguments during function call, this is BAD", v19, 2u);
          }

          goto LABEL_27;
        }

        v12 = v14;

        v9 = v12;
      }

      else
      {
        [v8 addObject:v14];
      }

LABEL_27:

      v11 += 16;
      --v10;
    }

    while (v10);
  }

  return v9;
}

- (id)objectForDO:(dataObject *)a3
{
  v3 = 0;
  var1 = a3->var1;
  if (var1 <= 1)
  {
    if (a3->var1)
    {
      if (var1 != 1)
      {
        goto LABEL_16;
      }

      v5 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a3->var2 + 3)];
    }

    else
    {
      v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a3->var2 + 3)];
    }

    goto LABEL_15;
  }

  if (var1 - 2 >= 2)
  {
    if (var1 == 4)
    {
      v5 = [(CLIPSShim *)self objectFromMultifieldArg:a3->var2 start:a3->var3 + 1 end:a3->var4 + 1];
    }

    else
    {
      if (var1 != 5)
      {
        goto LABEL_16;
      }

      v5 = *(a3->var2 + 3);
    }

LABEL_15:
    v3 = v5;
    goto LABEL_16;
  }

  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a3->var2 + 3)];
  if (([v3 isEqualToString:@"YES"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"TRUE") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"true"))
  {

    v3 = MEMORY[0x277CBEC38];
  }

  else if (([v3 isEqualToString:@"NO"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"FALSE") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"false"))
  {

    v3 = MEMORY[0x277CBEC28];
  }

  else if (([v3 isEqualToString:@"NULL"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"nil"))
  {

    v3 = 0;
  }

LABEL_16:

  return v3;
}

- (void)registerCallbackFunction:(id)a3 selector:(SEL)a4 target:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(NSMutableDictionary *)self->_invocationMap objectForKey:v8];
  if (v10)
  {
    goto LABEL_4;
  }

  v11 = MEMORY[0x277CBEAE8];
  v12 = [v9 methodSignatureForSelector:a4];
  v10 = [v11 invocationWithMethodSignature:v12];

  if (v10)
  {
    [v10 setTarget:v9];
    [v10 setSelector:a4];
    [(NSMutableDictionary *)self->_invocationMap setObject:v10 forKey:v8];
LABEL_4:
    [(CLIPSShim *)self addCallbackInvocation:v8 invocation:v10];

    goto LABEL_5;
  }

  v14 = debuggabilityLogHandle;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = NSStringFromSelector(a4);
    v17 = 138412290;
    v18 = v15;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "Failed to create NSInvocation for %@", &v17, 0xCu);
  }

  v16 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    v17 = 138412290;
    v18 = v8;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_INFO, "Failure creating invocation function for %@", &v17, 0xCu);
  }

LABEL_5:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)addCallbackInvocation:(id)a3 invocation:(id)a4
{
  v5 = a3;
  environment = self->_environment;
  v7 = a3;
  v8 = a4;
  LODWORD(v5) = EnvDefineFunctionWithContext(environment, [v5 UTF8String], 117, delegateCallbackRouter, "delegateCallbackRouter", v8);

  if (!v5)
  {
    v9 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "Error from EnvDefineFunctionWithContext", v10, 2u);
    }
  }
}

- (void)removeCallbackInvocation:(id)a3
{
  environment = self->_environment;
  v5 = a3;
  v6 = [a3 UTF8String];

  UndefineFunction(environment, v6);
}

- (void)addObjectToEnvironment:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableSet *)self->_clipsHeldObjects member:v4];
  v6 = v5;
  if (v4 && !v5)
  {
    [(NSMutableSet *)self->_clipsHeldObjects addObject:v4];
    v6 = v4;
  }

  v7 = EnvAddExternalAddress(self->_environment, v6, self->_strongAddressType);

  return v7;
}

- (void)logMemoryStatistics:(id)a3 verboseOnly:(BOOL)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  EnvironmentZoneStatistics(&v13, &v12, &v11);
  if (!a4)
  {
    v7 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      v9 = [(CLIPSShim *)self memoryUsed];
      *buf = 138413314;
      v15 = v6;
      v16 = 2048;
      v17 = v9;
      v18 = 2048;
      v19 = v13;
      v20 = 2048;
      v21 = v12;
      v22 = 2048;
      v23 = v11;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_INFO, "%@ - memory usage by CLIPS %ld. Zone size_in_use:%zu, max_size_in_use: %zu, size_allocated: %zu", buf, 0x34u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)dumpEngineStatusWithContext:(id)a3
{
  v4 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@\nCLIPS Engine Dump:\n", a3];
  v5 = MEMORY[0x277CCACA8];
  v6 = [(CLIPSShim *)self consoleBuffer];
  v7 = [v5 stringWithFormat:@"CLIPS Console:%@\n", v6];
  [v4 appendString:v7];

  v8 = MEMORY[0x277CCACA8];
  v9 = [(CLIPSShim *)self printedFacts:0 limit:0];
  v10 = [v8 stringWithFormat:@"CLIPS Facts:%@\n", v9];
  [v4 appendString:v10];

  return v4;
}

- (id)swapConsoleBuffer:(id)a3
{
  v4 = a3;
  consoleContents = self->_consoleContents;
  v6 = consoleContents;
  v7 = self->_consoleContents;
  self->_consoleContents = v4;
  v8 = v4;

  return consoleContents;
}

- (id)moduleNames
{
  v3 = objc_opt_new();
  NextDefmodule = EnvGetNextDefmodule(self->_environment, 0);
  if (NextDefmodule)
  {
    v5 = NextDefmodule;
    do
    {
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:{EnvGetConstructNameString(self->_environment, v5)}];
      [v3 addObject:v6];

      v5 = EnvGetNextDefmodule(self->_environment, v5);
    }

    while (v5);
  }

  return v3;
}

- (void)_logFactsForModule:(id)a3 limit:(int64_t)a4 when:(int64_t)a5
{
  v5 = a5;
  v54 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(CLIPSShim *)self factCount];
  if (a4 < 1)
  {
    a4 = 1000;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = [(CLIPSShim *)self printedFacts:v8 limit:a4];
  v40 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v12 = [v11 componentsSeparatedByCharactersInSet:?];
  v41 = v11;
  v42 = v8;
  if ((v5 & 1) == 0)
  {
    if ((v5 & 4) != 0)
    {
      goto LABEL_20;
    }

    v13 = debuggabilityLogHandle;
    if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    v14 = @"(Showing Only Important Facts) ";
    if ((v5 & 2) == 0)
    {
      v14 = &stru_2847966D8;
    }

    *buf = 134218242;
    v49 = v9;
    v50 = 2112;
    v51 = v14;
    v15 = " --- NDFSM Expert System Facts (%lu)  %@---";
    v16 = v13;
    v17 = OS_LOG_TYPE_INFO;
    goto LABEL_18;
  }

  v18 = debuggabilityLogHandle;
  v19 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT);
  if (a4 >= v9)
  {
    if (v19)
    {
      v22 = @"(Showing Only Important Facts) ";
      if ((v5 & 2) == 0)
      {
        v22 = &stru_2847966D8;
      }

      *buf = 134218242;
      v49 = v9;
      v50 = 2112;
      v51 = v22;
      v15 = " --- NDFSM Expert System Facts (%lu) %@---";
      v16 = v18;
      v17 = OS_LOG_TYPE_DEFAULT;
LABEL_18:
      v21 = 22;
LABEL_19:
      _os_log_impl(&dword_23255B000, v16, v17, v15, buf, v21);
    }
  }

  else if (v19)
  {
    v20 = @"(Showing Only Important Facts) ";
    *buf = 134218498;
    v49 = a4;
    if ((v5 & 2) == 0)
    {
      v20 = &stru_2847966D8;
    }

    v50 = 2048;
    v51 = v9;
    v52 = 2112;
    v53 = v20;
    v15 = " --- NDFSM Expert System Facts (%lu of %lu) %@---";
    v16 = v18;
    v17 = OS_LOG_TYPE_DEFAULT;
    v21 = 32;
    goto LABEL_19;
  }

LABEL_20:
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v23 = v12;
  v24 = [v23 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (!v24)
  {
    goto LABEL_37;
  }

  v25 = v24;
  v26 = *v44;
  do
  {
    for (i = 0; i != v25; ++i)
    {
      if (*v44 != v26)
      {
        objc_enumerationMutation(v23);
      }

      v28 = *(*(&v43 + 1) + 8 * i);
      if ([v28 length] && ((v5 & 2) == 0 || -[CLIPSShim factIsImportant:](self, "factIsImportant:", v28)))
      {
        if (v5)
        {
          v32 = debuggabilityLogHandle;
          if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          *buf = 138412290;
          v49 = v28;
          v30 = v32;
          v31 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_34;
        }

        if ((v5 & 4) == 0)
        {
          v29 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v49 = v28;
            v30 = v29;
            v31 = OS_LOG_TYPE_INFO;
LABEL_34:
            _os_log_impl(&dword_23255B000, v30, v31, "NDFSM ES: %@", buf, 0xCu);
            continue;
          }
        }
      }
    }

    v25 = [v23 countByEnumeratingWithState:&v43 objects:v47 count:16];
  }

  while (v25);
LABEL_37:

  objc_autoreleasePoolPop(v10);
  if (v5)
  {
    v38 = debuggabilityLogHandle;
    v34 = v41;
    v33 = v42;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v36 = v38;
      v37 = OS_LOG_TYPE_DEFAULT;
LABEL_43:
      _os_log_impl(&dword_23255B000, v36, v37, " --- NDFSM Expert System Facts End ---", buf, 2u);
    }
  }

  else
  {
    v34 = v41;
    v33 = v42;
    if ((v5 & 4) == 0)
    {
      v35 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v36 = v35;
        v37 = OS_LOG_TYPE_INFO;
        goto LABEL_43;
      }
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (BOOL)factIsImportant:(id)a3
{
  v3 = a3;
  if (objc_msgSend(v3, "containsString:", @"(Symptom (")) & 1 != 0 || (objc_msgSend(v3, "containsString:", @"(AnalyticsEvent_") & 1) != 0 || (objc_msgSend(v3, "containsString:", @"(WaitingFor") & 1) != 0 || (objc_msgSend(v3, "containsString:", @"ProbeStatus"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 containsString:@"AllProbesStatus"];
  }

  return v4;
}

- (id)printedFacts:(id)a3 limit:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    Defmodule = EnvFindDefmodule(self->_environment, [v6 UTF8String]);
    if (!Defmodule)
    {
      v9 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    Defmodule = 0;
  }

  [(NSMutableString *)self->_dumpedString setString:&stru_2847966D8];
  EnvFacts(self->_environment, "dump", Defmodule, -1, -1, a4);
  v9 = self->_dumpedString;
  v10 = objc_opt_new();
  dumpedString = self->_dumpedString;
  self->_dumpedString = v10;

LABEL_6:

  return v9;
}

- (id)moduleRulesByName:(id)a3
{
  environment = self->_environment;
  v6 = a3;
  Defmodule = EnvFindDefmodule(environment, [a3 UTF8String]);
  if (Defmodule)
  {
    v8 = Defmodule;
    v9 = objc_opt_new();
    CurrentModule = EnvGetCurrentModule(self->_environment);
    EnvSetCurrentModule(self->_environment, v8);
    NextDefrule = EnvGetNextDefrule(self->_environment, 0);
    if (NextDefrule)
    {
      v12 = NextDefrule;
      do
      {
        DefruleName = EnvGetDefruleName(self->_environment, v12);
        DefrulePPForm = EnvGetDefrulePPForm(self->_environment, v12);
        v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:DefruleName];
        v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:DefrulePPForm];
        [v9 setObject:v16 forKeyedSubscript:v15];

        v12 = EnvGetNextDefrule(self->_environment, v12);
      }

      while (v12);
    }

    EnvSetCurrentModule(self->_environment, CurrentModule);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)addModuleNamed:(id)a3 withConstruct:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (EnvFindDefmodule(self->_environment, [v6 UTF8String]))
  {
    v8 = debuggabilityLogHandle;
    v9 = 1;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_INFO, "The %@ module already exists", &v12, 0xCu);
    }
  }

  else
  {
    v9 = [(CLIPSShim *)self addNewConstruct:v7];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)addNewConstruct:(id)a3
{
  environment = self->_environment;
  v5 = a3;
  return EnvBuild(environment, [a3 UTF8String]) != 0;
}

- (BOOL)loadConstructsForModule:(id)a3
{
  v127 = *MEMORY[0x277D85DE8];
  v116 = 0;
  v117 = &v116;
  v118 = 0x2020000000;
  v119 = 0;
  v97 = a3;
  v96 = [(NSMutableDictionary *)self->_modules objectForKeyedSubscript:?];
  if (!v96)
  {
    v96 = [MEMORY[0x277CBEB38] dictionaryWithObject:&unk_2847EFDB8 forKey:@"LoadState"];
    [(NSMutableDictionary *)self->_modules setObject:v96 forKeyedSubscript:v97];
  }

  v3 = [v96 objectForKeyedSubscript:@"LoadState"];
  v4 = [v3 integerValue];

  LOBYTE(v5) = (v4 - 1) < 2;
  *(v117 + 24) = v5;
  if (v4 == 3 || v4 == 0)
  {
    context = objc_autoreleasePoolPush();
    v112 = 0;
    v113 = &v112;
    v114 = 0x2020000000;
    v115 = 0;
    v7 = [CLIPSShim dataSectionNameForModule:v97];
    v90 = v7;
    if ([v7 length])
    {
      v94 = [(CLIPSShim *)self loadDataSection:v7];
      if ([v94 length])
      {
        v8 = [(CLIPSShim *)self parseCLIPSModuleInfoFromConstructs:v94];
        if (!v8)
        {
          v18 = debuggabilityLogHandle;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v21 = [v94 substringToIndex:50];
            *buf = 138412290;
            v123 = v21;
            _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "BAD BUILT-IN %@", buf, 0xCu);
          }

          v5 = 0;
          goto LABEL_125;
        }

        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v108 objects:v126 count:16];
        if (v10)
        {
          v11 = *v109;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v109 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v108 + 1) + 8 * i);
              v14 = [v13 objectForKeyedSubscript:@"Module"];
              v15 = [v14 isEqualToString:v97];

              if (v15)
              {
                v18 = [v13 objectForKeyedSubscript:@"Version"];
                v20 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v18, @"Version", 0}];
                [v96 setObject:v20 forKeyedSubscript:@"BuiltIn"];
                *(v113 + 24) = 1;

                goto LABEL_26;
              }

              v16 = debuggabilityLogHandle;
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                v17 = [v13 objectForKeyedSubscript:@"Module"];
                *buf = 138412546;
                v123 = v17;
                v124 = 2112;
                v125 = v97;
                _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "The module name (%@) doesn't match %@", buf, 0x16u);
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v108 objects:v126 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }

          v18 = 0;
LABEL_26:

LABEL_32:
          v93 = [MEMORY[0x277CCACA8] stringWithFormat:@"CLIPSOTAUpdate[%@]", v97];
          v22 = MEMORY[0x277CBEB38];
          v23 = [(NSMutableDictionary *)self->_pendingOTAUpdates objectForKeyedSubscript:v97];
          v24 = [v22 dictionaryWithDictionary:v23];

          v25 = [v24 objectForKeyedSubscript:@"Version"];
          v92 = [v24 objectForKeyedSubscript:@"OTASerialNumber"];
          v26 = debuggabilityLogHandle;
          v27 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO);
          if (!v25)
          {
            if (v27)
            {
              *buf = 138412290;
              v123 = v97;
              _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_INFO, "No pending OTA update for %@", buf, 0xCu);
            }

            goto LABEL_86;
          }

          if (v27)
          {
            *buf = 138412546;
            v123 = v25;
            v124 = 2112;
            v125 = v97;
            _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_INFO, "There is a Pending OTA Update (version %@) for %@", buf, 0x16u);
          }

          if (v18)
          {
            v28 = [v25 integerValue];
            if (v28 != [v18 integerValue])
            {
              v33 = debuggabilityLogHandle;
              if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v123 = v25;
                v124 = 2112;
                v125 = v18;
                _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_INFO, "The Pending OTA Update (%@) is NOT the same as the built in version (%@)", buf, 0x16u);
              }

              v32 = 0;
LABEL_82:
              [(NSMutableDictionary *)self->_pendingOTAUpdates removeObjectForKey:v97];
              if (v32)
              {
                v52 = @"<UNKNOWN>";
                if (v92)
                {
                  v52 = v92;
                }

                v53 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"Unloaded (OTA)", @"location", v25, @"baseVersion", v52, @"otaSerialNumber", 0}];
                [(CLIPSShim *)self updateModuleInfoForModule:v97 slotValues:v53];
                goto LABEL_118;
              }

LABEL_86:
              v54 = [(ImpoExpoService *)self->_ieService listItemsNameWithPrefix:v93 sortDescriptor:0];
              if ([v54 count] != 1)
              {
                if ([v54 count] < 2)
                {
                  v53 = 0;
                  v64 = 0;
                  v56 = 0;
LABEL_117:

LABEL_118:
                  if (*(v113 + 24) == 1)
                  {
                    if ([(CLIPSShim *)self executeBatchCommand:v94 module:v97])
                    {
                      [v96 setObject:&unk_2847EFDE8 forKeyedSubscript:@"LoadState"];
                      *(v117 + 24) = 1;
                      if (v18)
                      {
                        v120[0] = @"baseVersion";
                        v120[1] = @"location";
                        v121[0] = v18;
                        v121[1] = @"Built-in";
                        v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:2];
                        [(CLIPSShim *)self updateModuleInfoForModule:v97 slotValues:v81];
                      }
                    }

                    else
                    {
                      v82 = debuggabilityLogHandle;
                      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v123 = v97;
                        _os_log_impl(&dword_23255B000, v82, OS_LOG_TYPE_ERROR, "=== FAILURE loading %@ embedded constructs ===", buf, 0xCu);
                      }
                    }
                  }

                  v5 = 1;
LABEL_125:

                  _Block_object_dispose(&v112, 8);
                  objc_autoreleasePoolPop(context);
                  if (v5)
                  {
                    LOBYTE(v5) = *(v117 + 24);
                  }

                  goto LABEL_127;
                }

                v65 = debuggabilityLogHandle;
                if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                {
                  v66 = [v54 count];
                  *buf = 134218242;
                  v123 = v66;
                  v124 = 2112;
                  v125 = v97;
                  _os_log_impl(&dword_23255B000, v65, OS_LOG_TYPE_ERROR, "There are too many (%lu) OTA Updates for %@ in the database. Deleting all of them.", buf, 0x16u);
                }

                ieService = self->_ieService;
                v63 = [MEMORY[0x277CBEB98] setWithArray:v54];
                [(ImpoExpoService *)ieService deleteItemsWithNames:v63];
                v53 = 0;
                v64 = 0;
                v56 = 0;
LABEL_115:

                goto LABEL_117;
              }

              v55 = [v54 objectAtIndexedSubscript:0];
              v56 = v55;
              if (v55)
              {
                v57 = objc_msgSend(v55, "rangeOfString:", @"(");
                v59 = v58;
                v60 = [v56 rangeOfString:@""]);
                if (v57 == 0x7FFFFFFFFFFFFFFFLL || (v68 = v60, v57 != [v93 length]) || v68 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v61 = debuggabilityLogHandle;
                  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v123 = v56;
                    _os_log_impl(&dword_23255B000, v61, OS_LOG_TYPE_ERROR, "Couldn't find the version ending delimiter (%@)", buf, 0xCu);
                  }

                  v62 = self->_ieService;
                  v63 = [MEMORY[0x277CBEB98] setWithObject:v56];
                  [(ImpoExpoService *)v62 deleteItemsWithNames:v63];
                  v53 = 0;
                  v64 = 0;
                  goto LABEL_115;
                }

                v63 = [v56 substringWithRange:{v57 + v59, v68 - (v57 + v59)}];
                if (![v63 length])
                {
                  v71 = debuggabilityLogHandle;
                  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v123 = v56;
                    _os_log_impl(&dword_23255B000, v71, OS_LOG_TYPE_ERROR, "Couldn't parse the version (%@)", buf, 0xCu);
                  }

                  goto LABEL_108;
                }

                if (v63 && v18)
                {
                  v69 = [v63 integerValue];
                  if (v69 != [v18 integerValue])
                  {
                    v70 = debuggabilityLogHandle;
                    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v123 = v63;
                      v124 = 2112;
                      v125 = v18;
                      _os_log_impl(&dword_23255B000, v70, OS_LOG_TYPE_INFO, "The database version (%@) does not match the built-in version (%@). The database version will be deleted", buf, 0x16u);
                    }

LABEL_108:
                    v72 = self->_ieService;
                    v73 = [MEMORY[0x277CBEB98] setWithObject:v56];
                    [(ImpoExpoService *)v72 deleteItemsWithNames:v73];
                    v53 = 0;
                    v64 = 0;
LABEL_114:

                    goto LABEL_115;
                  }

LABEL_110:
                  v74 = [v56 rangeOfString:@"{SN:"];
                  v76 = v75;
                  v77 = [v56 rangeOfString:@"}"];
                  v78 = 0;
                  if (v74 != 0x7FFFFFFFFFFFFFFFLL && v77 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v78 = [v56 substringWithRange:{v74 + v76, v77 - (v74 + v76)}];
                  }

                  v89 = self->_ieService;
                  v107 = 0;
                  v98[0] = MEMORY[0x277D85DD0];
                  v79 = v78;
                  v98[1] = 3221225472;
                  v98[2] = __37__CLIPSShim_loadConstructsForModule___block_invoke;
                  v98[3] = &unk_2789903B8;
                  v99 = v97;
                  v100 = v94;
                  v101 = self;
                  v105 = &v112;
                  v102 = v96;
                  v53 = v63;
                  v103 = v53;
                  v64 = v79;
                  v104 = v64;
                  v106 = &v116;
                  v80 = [(ImpoExpoService *)v89 exportAndUnarchiveItemUnderName:v56 lastUpdated:&v107 verificationBlock:v98];
                  v63 = v107;

                  v73 = v99;
                  goto LABEL_114;
                }

                if (v63)
                {
                  goto LABEL_110;
                }
              }

              v53 = 0;
              v64 = 0;
              goto LABEL_117;
            }
          }

          v29 = [v24 objectForKeyedSubscript:@"Constructs"];
          v30 = [CLIPSShim decodeAndInflateCLIPSString:v29];
          if (!v30 || ([CLIPSShim decryptCLIPSData:v30 forModule:v97], (v88 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v32 = 0;
LABEL_81:

            goto LABEL_82;
          }

          if (v94 && ([v88 isEqualToString:v94] & 1) != 0)
          {
            v31 = debuggabilityLogHandle;
            if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_INFO, "No point in loading OTA constructs that match built-in constructs", buf, 2u);
            }

            v32 = 0;
            goto LABEL_80;
          }

          v87 = [(CLIPSShim *)self parseCLIPSModuleInfoFromConstructs:v88];
          v34 = [v87 count];
          if (v34)
          {
            v35 = [v87 objectAtIndexedSubscript:0];
            v36 = [v35 objectForKeyedSubscript:@"OTASerialNumber"];

            v37 = [v35 objectForKeyedSubscript:@"Platforms"];

            v92 = v36;
            v34 = v37;
          }

          v86 = v34;
          if ([v34 count])
          {
            v38 = +[SystemProperties sharedInstance];
            v39 = -[CLIPSShim otaUpdatePlatformStringForDeviceClass:](self, "otaUpdatePlatformStringForDeviceClass:", [v38 deviceClass]);

            if (([v86 containsObject:v39] & 1) == 0)
            {
              v41 = debuggabilityLogHandle;
              if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v123 = v86;
                v124 = 2112;
                v125 = v39;
                _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_ERROR, "The constructs preamble's platforms %@ doesn't match this device type %@", buf, 0x16u);
              }

              goto LABEL_62;
            }
          }

          if ([(CLIPSShim *)self executeBatchCommand:v88 module:v97])
          {
            *(v113 + 24) = 0;
            v40 = [v30 gzipDeflate];
            if ([v40 length])
            {
              [v24 setObject:v40 forKey:@"Constructs"];
              if ([(__CFString *)v92 length])
              {
                [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%@){SN:%@}", v93, v25, v92];
              }

              else
              {
                [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%@)", v93, v25];
              }
              v85 = ;
              v45 = [(ImpoExpoService *)self->_ieService listItemsNameWithPrefix:v93 sortDescriptor:0];
              if ([v45 count])
              {
                v46 = self->_ieService;
                v47 = [MEMORY[0x277CBEB98] setWithArray:v45];
                [(ImpoExpoService *)v46 deleteItemsWithNames:v47];
              }

              v48 = [(ImpoExpoService *)self->_ieService archiveAndImportItemUnderName:v85 item:v24];
              *(v117 + 24) = v48;
              if (v48)
              {
                [v96 setObject:&unk_2847EFDD0 forKeyedSubscript:@"LoadState"];
                v49 = [v96 objectForKeyedSubscript:@"Database"];
                v50 = v49;
                if (v49)
                {
                  [v49 setObject:v25 forKey:@"Version"];
                }

                else
                {
                  v50 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v25, @"Version", 0}];
                  [v96 setObject:v50 forKeyedSubscript:@"Database"];
                }
              }

              else
              {
                v51 = debuggabilityLogHandle;
                if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&dword_23255B000, v51, OS_LOG_TYPE_ERROR, "Failed to save the CLIPSOTAUpdate to the ImpoExpo", buf, 2u);
                }
              }
            }

            else
            {
              v44 = debuggabilityLogHandle;
              if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_ERROR, "Unable to gzipdeflate Pending OTA Update", buf, 2u);
              }
            }

            v42 = v87;
            v32 = 1;
LABEL_79:

LABEL_80:
            goto LABEL_81;
          }

LABEL_62:
          v42 = v87;
          v43 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_ERROR, "The pending OTA Update could not be loaded for some reason", buf, 2u);
          }

          v32 = 0;
          goto LABEL_79;
        }
      }

      v18 = 0;
      goto LABEL_32;
    }

    v19 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_INFO, "Don't have a built-in version. This could be ok", buf, 2u);
    }

    v18 = 0;
    v94 = 0;
    goto LABEL_32;
  }

LABEL_127:
  _Block_object_dispose(&v116, 8);

  v83 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

uint64_t __37__CLIPSShim_loadConstructsForModule___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKey:@"Constructs"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v4 length])
    {
      v15 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "These constructs are blank!", buf, 2u);
      }

      v9 = 0;
      v5 = v4;
      goto LABEL_14;
    }

    v5 = [v4 gzipInflate];

    v6 = [v5 length];
    if (v6 <= [@";;[{Module:" length])
    {
      v18 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 32);
        *buf = 138412290;
        v33 = v19;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "gzipInflate of the %@ OTA Update from the database failed", buf, 0xCu);
      }

      v9 = 0;
      goto LABEL_14;
    }

    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(v5 length:"bytes") encoding:{objc_msgSend(@";;[{Module:", "length"), 1}];
    if ([v7 isEqualToString:@";;[{Module:"])
    {
      v8 = debuggabilityLogHandle;
      v9 = 0;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        *buf = 138412290;
        v33 = v10;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "The %@ constructs in the database are unencrypted. Tossing them.", buf, 0xCu);
        v9 = 0;
      }

      goto LABEL_38;
    }

    v20 = +[CLIPSShim createDecryptedCLPData:length:](CLIPSShim, "createDecryptedCLPData:length:", [v5 bytes], objc_msgSend(v5, "length"));
    if (![v20 length])
    {
      v22 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 32);
        *buf = 138412290;
        v33 = v23;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "Unable to decrypt the %@ constructs in the database", buf, 0xCu);
      }

      v9 = 0;
      goto LABEL_37;
    }

    v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(v20 length:"bytes") encoding:{objc_msgSend(v20, "length"), 1}];
    if (([v21 isEqualToString:*(a1 + 40)] & 1) == 0)
    {
      if ([*(a1 + 48) executeBatchCommand:v21 module:*(a1 + 32)])
      {
        *(*(*(a1 + 80) + 8) + 24) = 0;
        [*(a1 + 56) setObject:&unk_2847EFDD0 forKeyedSubscript:@"LoadState"];
        v24 = [*(a1 + 56) objectForKeyedSubscript:@"Database"];
        if (v24)
        {
          v25 = v24;
          [v24 setObject:*(a1 + 64) forKey:@"Version"];
        }

        else
        {
          v25 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{*(a1 + 64), @"Version", 0}];
          [*(a1 + 56) setObject:v25 forKeyedSubscript:@"Database"];
        }

        v29 = *(a1 + 64);
        if (v29)
        {
          v30 = *(a1 + 72);
          if (!v30)
          {
            v30 = @"<UNKNOWN>";
          }

          v31 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"Database (OTA)", @"location", v29, @"baseVersion", v30, @"otaSerialNumber", 0}];
          [*(a1 + 48) updateModuleInfoForModule:*(a1 + 32) slotValues:v31];
        }

        *(*(*(a1 + 88) + 8) + 24) = 1;
        v9 = *(*(*(a1 + 88) + 8) + 24);

        goto LABEL_36;
      }

      v26 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v27 = *(a1 + 32);
        v28 = *(a1 + 64);
        *buf = 138412546;
        v33 = v27;
        v34 = 2112;
        v35 = v28;
        _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, "=== FAILURE loading %@ constructs with version (%@) from ImpoExpo ===", buf, 0x16u);
      }
    }

    v9 = 0;
LABEL_36:

LABEL_37:
LABEL_38:

LABEL_14:
    goto LABEL_15;
  }

  v11 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
  {
    v12 = v11;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138412290;
    v33 = v14;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "the CLIPSOTAUpdate in the database is not a dictionary! (%@)", buf, 0xCu);
  }

  v9 = 0;
LABEL_15:

  v16 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

- (id)parseCLIPSModuleInfoFromConstructs:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@";;"];
  v6 = v5;
  v7 = [v3 rangeOfString:@"\n"];
  v8 = 0;
  if (!v4 && v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v3 substringWithRange:{v6, v7 - 1}];
    v10 = [v9 dataUsingEncoding:1];
    v12 = 0;
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v10 options:0 error:&v12];
  }

  return v8;
}

+ (id)decodeAndInflateCLIPSString:(id)a3
{
  v3 = MEMORY[0x277CBEA90];
  v4 = a3;
  v5 = [[v3 alloc] initWithBase64EncodedString:v4 options:1];

  if (v5)
  {
    v6 = [v5 gzipInflate];
    if (v6)
    {
      goto LABEL_9;
    }

    v7 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = 0;
      v8 = "Unable to gzip inflate the data";
      v9 = &v12;
LABEL_7:
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
    }
  }

  else
  {
    v7 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v8 = "Unable to base64decode the data";
      v9 = &v11;
      goto LABEL_7;
    }
  }

  v6 = 0;
LABEL_9:

  return v6;
}

+ (id)decryptCLIPSData:(id)a3 forModule:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:1];
  if ([v7 hasPrefix:@";;[{Module:"])
  {
    v8 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v6;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "This OTA %@ module constructs is unencrypted!. Ignoring", &v17, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v10 = +[CLIPSShim createDecryptedCLPData:length:](CLIPSShim, "createDecryptedCLPData:length:", [v5 bytes], objc_msgSend(v5, "length"));
    if ([v10 length])
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:1];
      v12 = v11;
      if (v11 && [v11 hasPrefix:@";;[{Module:"])
      {
        v9 = v12;
      }

      else
      {
        v13 = debuggabilityLogHandle;
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
        {
          v17 = 138412290;
          v18 = v6;
          _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "%@ OTA module constructs is corrupted.", &v17, 0xCu);
        }

        v9 = 0;
      }
    }

    else
    {
      v14 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412290;
        v18 = v6;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "%@ OTA module couldn't be decrypted", &v17, 0xCu);
      }

      v9 = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)dataSectionNameForModule:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isEqualToString:@"Baseband"])
  {
    v4 = @"baseband_clp";
  }

  else if ([v3 isEqualToString:@"BasebandMAV"])
  {
    v4 = @"bb_MAV_clp";
  }

  else if ([v3 isEqualToString:@"BasebandINT"])
  {
    v4 = @"bb_INT_clp";
  }

  else if ([v3 isEqualToString:@"BasebandDAL"])
  {
    v4 = @"bb_DAL_clp";
  }

  else if ([v3 isEqualToString:@"COMMON"])
  {
    v4 = @"default_clp";
  }

  else if ([v3 isEqualToString:@"Symptoms"])
  {
    v4 = @"symptoms_clp";
  }

  else if ([v3 isEqualToString:@"Networking"])
  {
    v4 = @"network_clp";
  }

  else if ([v3 isEqualToString:@"Modules"])
  {
    v4 = @"modules_clp";
  }

  else
  {
    v5 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "Unknown module name: %@", &v8, 0xCu);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)stringFromConstructsLoadState:(int64_t)a3
{
  if (a3 >= 4)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown load state (%ld)", a3];
  }

  else
  {
    v4 = off_278990400[a3];
  }

  return v4;
}

- (id)otaUpdatePlatformStringForDeviceClass:(int64_t)a3
{
  if (a3 > 7)
  {
    return 0;
  }

  else
  {
    return off_278990420[a3];
  }
}

- (int64_t)constructLoadStateForModule:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_modules objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"LoadState"];
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateAllModuleInfos
{
  v37 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self->_modules;
  v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v27;
    *&v4 = 138412546;
    v24 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        v9 = v6;
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v6 = [(NSMutableDictionary *)self->_modules objectForKeyedSubscript:v10, v24];

        if (v6)
        {
          v11 = [v6 objectForKeyedSubscript:@"BuiltIn"];
          v12 = [v11 objectForKeyedSubscript:@"Version"];
          if (v12)
          {
            v13 = [v6 objectForKeyedSubscript:@"LoadState"];
            v14 = [v13 integerValue];

            if (v14 == 1)
            {
              v15 = @"Built-in";
            }

            else if (v14 == 2)
            {
              v15 = @"Database";
            }

            else
            {
              v18 = debuggabilityLogHandle;
              v19 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO);
              v15 = @"Unloaded";
              if (v19)
              {
                v20 = v18;
                v21 = [(CLIPSShim *)self stringFromConstructsLoadState:v14];
                *buf = v24;
                v33 = v10;
                v34 = 2112;
                v35 = v21;
                _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_INFO, "Load state for %@ is %@", buf, 0x16u);

                v15 = @"Unloaded";
              }
            }

            v30[0] = @"baseVersion";
            v30[1] = @"location";
            v31[0] = v12;
            v31[1] = v15;
            v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
            [(CLIPSShim *)self updateModuleInfoForModule:v10 slotValues:v22];
          }

          else
          {
            v17 = debuggabilityLogHandle;
            if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = v24;
              v33 = v6;
              v34 = 2112;
              v35 = v10;
              _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "No version in %@ for %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v16 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v33 = v10;
            _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "No Module Dict for %@", buf, 0xCu);
          }
        }
      }

      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)updateModuleInfoForModule:(id)a3 slotValues:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:@"name"];
  v9 = [(CLIPSShim *)self matchFactsWithDeftemplateName:@"ModuleInfo" withSlotKeyValues:v8];

  if ([v9 count] == 1)
  {
    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = [(__CFString *)v10 pointerValue];
    if (!v11)
    {
      v32 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v48 = v10;
        _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_ERROR, "Couldn't get fact pointer %p", buf, 0xCu);
      }

      goto LABEL_29;
    }

    v12 = v11;
    v13 = [(CLIPSShim *)self factDictionaryForFact:v11];
    v14 = [v13 objectForKeyedSubscript:@"DeftemplateSlots"];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v15 = v7;
    v16 = [(__CFString *)v15 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v16)
    {
      v17 = v16;
      v35 = v12;
      v36 = self;
      v37 = v13;
      v38 = v10;
      v39 = v9;
      v40 = v7;
      v41 = v6;
      v18 = 0;
      v19 = 0;
      v20 = *v43;
      do
      {
        v21 = 0;
        v22 = v18;
        do
        {
          if (*v43 != v20)
          {
            objc_enumerationMutation(v15);
          }

          v23 = *(*(&v42 + 1) + 8 * v21);
          v18 = [(__CFString *)v15 objectForKeyedSubscript:v23];

          v24 = [v14 objectForKeyedSubscript:v23];
          v25 = [v24 isEqual:v18];

          if ((v25 & 1) == 0)
          {
            [v14 setObject:v18 forKeyedSubscript:v23];
            v19 = 1;
          }

          ++v21;
          v22 = v18;
        }

        while (v17 != v21);
        v17 = [(__CFString *)v15 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v17);

      v10 = v38;
      if ((v19 & 1) == 0)
      {
        v7 = v40;
        v6 = v41;
        v9 = v39;
        v13 = v37;
LABEL_28:

LABEL_29:
        goto LABEL_30;
      }

      [(CLIPSShim *)v36 retractFact:v35];
      [(CLIPSShim *)v36 releaseFact:v35];
      v13 = v37;
      v26 = [(CLIPSShim *)v36 factStringForFactDictionary:v37];
      v27 = [(CLIPSShim *)v36 assertFactString:v26 moduleName:@"Modules"];
      v6 = v41;
      if (v27)
      {
        [(CLIPSShim *)v36 retainFact:v27];
        v15 = v26;
        v7 = v40;
      }

      else
      {
        v33 = debuggabilityLogHandle;
        v7 = v40;
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v48 = v15;
          _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_ERROR, "Could not assert module info fact with %@", buf, 0xCu);
        }

        v15 = v26;
      }

      v9 = v39;
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_28;
  }

  v28 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    v29 = v28;
    v30 = [v9 count];
    v31 = @"have too many ";
    if (!v30)
    {
      v31 = @"don't yet have a ";
    }

    *buf = 138412546;
    v48 = v31;
    v49 = 2112;
    v50 = v6;
    _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_INFO, "We %@ Module Info for %@", buf, 0x16u);
  }

LABEL_30:

  v34 = *MEMORY[0x277D85DE8];
}

- (id)factDictionaryForFact:(void *)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  if (a3)
  {
    v6 = EnvFactDeftemplate(self->_environment, a3);
    if (v6)
    {
      v7 = v6;
      v8 = EnvDefruleModule(self->_environment, v6);
      if (v8)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
        [v5 setObject:v9 forKeyedSubscript:@"DeftemplateModule"];
      }

      DefruleName = EnvGetDefruleName(self->_environment, v7);
      if (DefruleName)
      {
        v11 = DefruleName;
        if (*DefruleName)
        {
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DefruleName];
          [v5 setObject:v12 forKeyedSubscript:@"DeftemplateName"];
        }
      }

      v13 = [MEMORY[0x277CBEB38] dictionary];
      [v5 setObject:v13 forKeyedSubscript:@"DeftemplateSlots"];
      v31 = 0u;
      v32 = 0u;
      *buf = 0u;
      EnvFactSlotNames(self->_environment, a3, buf);
      v14 = [(CLIPSShim *)self objectForDO:buf];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v15 = [v14 countByEnumeratingWithState:&v26 objects:v33 count:16];
      if (v15)
      {
        v16 = v15;
        v25 = v5;
        v17 = 0;
        v18 = *v27;
        do
        {
          v19 = 0;
          v20 = v17;
          do
          {
            if (*v27 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v21 = *(*(&v26 + 1) + 8 * v19);
            v17 = [(CLIPSShim *)self getValueForSlotNamed:v21 fromFact:a3];

            if (v17)
            {
              [v13 setObject:v17 forKeyedSubscript:v21];
            }

            ++v19;
            v20 = v17;
          }

          while (v16 != v19);
          v16 = [v14 countByEnumeratingWithState:&v26 objects:v33 count:16];
        }

        while (v16);

        v5 = v25;
      }
    }
  }

  else
  {
    v22 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "factDictionaryForFact(). fact was nil", buf, 2u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)factStringForFactDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"DeftemplateModule"];
  v6 = [v4 objectForKeyedSubscript:@"DeftemplateName"];
  v7 = [v4 objectForKeyedSubscript:@"DeftemplateSlots"];

  v8 = [(CLIPSShim *)self slotsStringForTemplate:v6 fromDictionary:v7 moduleName:v5];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@%@)", v6, v8];

  return v9;
}

- (void)unloadConstructsForModule:(id)a3 unconditionally:(BOOL)a4
{
  v26 = a3;
  v6 = [(NSMutableDictionary *)self->_modules objectForKeyedSubscript:?];
  v7 = [v6 objectForKeyedSubscript:@"LoadState"];
  v8 = [v7 integerValue];

  if (a4 || (v8 - 1) <= 1)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Pre-unload %@ memory usage by CLIPS", v26];
    [(CLIPSShim *)self logMemoryStatistics:v9 verboseOnly:1];

    environment = self->_environment;
    v11 = v26;
    Defmodule = EnvFindDefmodule(environment, [v26 UTF8String]);
    if (Defmodule)
    {
      v13 = Defmodule;
      CurrentModule = EnvGetCurrentModule(self->_environment);
      EnvSetCurrentModule(self->_environment, v13);
      NextDefrule = EnvGetNextDefrule(self->_environment, 0);
      if (NextDefrule)
      {
        v16 = NextDefrule;
        do
        {
          EnvUndefrule(self->_environment, v16);
          v16 = EnvGetNextDefrule(self->_environment, v16);
        }

        while (v16);
      }

      NextDeffunction = EnvGetNextDeffunction(self->_environment, 0);
      if (NextDeffunction)
      {
        v18 = NextDeffunction;
        do
        {
          EnvUndeffunction(self->_environment, v18);
          v18 = EnvGetNextDeffunction(self->_environment, v18);
        }

        while (v18);
      }

      NextDeffacts = EnvGetNextDeffacts(self->_environment, 0);
      if (NextDeffacts)
      {
        v20 = NextDeffacts;
        do
        {
          EnvUndeffacts(self->_environment, v20);
          v20 = EnvGetNextDeffacts(self->_environment, v20);
        }

        while (v20);
      }

      NextDeftemplate = EnvGetNextDeftemplate(self->_environment, 0);
      if (NextDeftemplate)
      {
        v22 = NextDeftemplate;
        do
        {
          EnvUndeftemplate(self->_environment, v22);
          v22 = EnvGetNextDeftemplate(self->_environment, v22);
        }

        while (v22);
      }

      NextDefglobal = EnvGetNextDefglobal(self->_environment, 0);
      if (NextDefglobal)
      {
        v24 = NextDefglobal;
        do
        {
          EnvUndefglobal(self->_environment, v24);
          v24 = EnvGetNextDefglobal(self->_environment, v24);
        }

        while (v24);
      }

      EnvSetCurrentModule(self->_environment, CurrentModule);
      [v6 setObject:&unk_2847EFDB8 forKeyedSubscript:@"LoadState"];
      [(CLIPSShim *)self releaseAllFreeMemory];
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Post-unload %@ memory usage by CLIPS", v26];
      [(CLIPSShim *)self logMemoryStatistics:v25 verboseOnly:1];
    }
  }
}

+ (id)createDecryptedCLPData:(const void *)a3 length:(unint64_t)a4
{
  v32 = *MEMORY[0x277D85DE8];
  if (!a3 || !a4)
  {
    v13 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = a3;
      v30 = 2048;
      v31 = a4;
      v10 = "Decrypting bad parameters (%p/%ld)";
      v11 = v13;
      v12 = 22;
      goto LABEL_8;
    }

LABEL_21:
    v24 = 0;
    goto LABEL_22;
  }

  v6 = +[CLIPSShim cryptor];
  v7 = CCCryptorReset(v6, &kSymptomsCLPCCIVData);
  if (v7)
  {
    v8 = v7;
    v9 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v8;
      v10 = "Decrypting - CCCryptorReset() failed: %d";
      v11 = v9;
      v12 = 8;
LABEL_8:
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  OutputLength = CCCryptorGetOutputLength(v6, a4, 1);
  *buf = 0;
  dataOutMoved = 0;
  if (!OutputLength)
  {
    EnvironmentZoneMalloc_cold_2(v28);
  }

  v15 = OutputLength;
  v16 = malloc_type_malloc(OutputLength, 0x40BC3867uLL);
  if (!v16)
  {
    [NetworkAnalyticsEngine _createJournalRecordOfType:v28 forInterface:? fromDict:?];
  }

  v17 = v16;
  bzero(v16, v15);
  v18 = CCCryptorUpdate(v6, a3, a4, v17, v15, buf);
  if (v18)
  {
    v19 = v18;
    v20 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v28 = 67109120;
      *&v28[4] = v19;
      v21 = "Decrypting - CCCryptorUpdate failed: %d";
LABEL_17:
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, v21, v28, 8u);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v22 = CCCryptorFinal(v6, &v17[*buf], v15 - *buf, &dataOutMoved);
  if (v22)
  {
    v19 = v22;
    v20 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v28 = 67109120;
      *&v28[4] = v19;
      v21 = "Decrypting - CCCryptorFinal failed: %d";
      goto LABEL_17;
    }

LABEL_18:
    v23 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v28 = 67109120;
      *&v28[4] = v19;
      _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "CCCrypt() error: %d", v28, 8u);
    }

    free(v17);
    goto LABEL_21;
  }

  v24 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v17 length:dataOutMoved + *buf freeWhenDone:1];
LABEL_22:
  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)loadDataSection:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  size = 0;
  v4 = getsectiondata(&dword_23255B000, "__TEXT", [v3 UTF8String], &size);
  v5 = 0;
  if (v4)
  {
    v6 = size == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = [CLIPSShim createDecryptedCLPData:v4 length:?];
    if (v7)
    {
      v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(v7 length:"bytes") encoding:{objc_msgSend(v7, "length"), 1}];
      if (v5)
      {
LABEL_10:

        goto LABEL_11;
      }

      v8 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v3;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Unable to decode %@ decrypted data section into a string", buf, 0xCu);
      }
    }

    v5 = 0;
    goto LABEL_10;
  }

LABEL_11:
  if (![v5 length])
  {
    v9 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "Unable to get datasection with name %@", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)deactivateModule:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"CLIPSOTAUpdate[%@]", v4];
  v6 = [(ImpoExpoService *)self->_ieService listItemsNameWithPrefix:v5 sortDescriptor:0];
  if ([v6 count] == 1)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    if (v7)
    {
      v8 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v16 = v4;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_INFO, "We've been told to delete the OTA Update for %@", buf, 0xCu);
      }

      ieService = self->_ieService;
      v10 = [MEMORY[0x277CBEB98] setWithObject:v7];
      [(ImpoExpoService *)ieService deleteItemsWithNames:v10];
    }

LABEL_10:

    goto LABEL_11;
  }

  if ([v6 count] >= 2)
  {
    v11 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      *buf = 134218242;
      v16 = [v6 count];
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "There are too many (%lu) OTA Updates for %@ in the database which we've been told to delete. Deleting all of them.", buf, 0x16u);
    }

    v13 = self->_ieService;
    v7 = [MEMORY[0x277CBEB98] setWithArray:v6];
    [(ImpoExpoService *)v13 deleteItemsWithNames:v7];
    goto LABEL_10;
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setOTAUpdate:(id)a3 version:(id)a4 module:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v10 length])
  {
    v13 = debuggabilityLogHandle;
    if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v14 = "Input module is empty!\n";
LABEL_11:
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_12;
  }

  if (![v9 length])
  {
    v13 = debuggabilityLogHandle;
    if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v14 = "Input version is empty!\n";
    goto LABEL_11;
  }

  if (![v8 length])
  {
    v11 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = v10;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_INFO, "%@ module constructs is empty. This would be ok if the ota update is meant to be blank.", buf, 0xCu);
    }
  }

  v16[0] = @"Version";
  v16[1] = @"Constructs";
  v17[0] = v9;
  v17[1] = v8;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [(NSMutableDictionary *)self->_pendingOTAUpdates setObject:v12 forKeyedSubscript:v10];

  [(NSMutableDictionary *)self->_modules removeObjectForKey:v10];
LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
}

- (int)executeBatchCommand:(id)a3 module:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (([v7 isEqualToString:@"COMMON"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"Modules") & 1) != 0 || EnvFindDefmodule(self->_environment, objc_msgSend(v7, "UTF8String")))
  {
    [(CLIPSShim *)self setCommandString:v6];
    ConstructsFromLogicalName = LoadConstructsFromLogicalName(self->_environment, "cmd");
    [(CLIPSShim *)self setCommandString:0];
  }

  else
  {
    v11 = debuggabilityLogHandle;
    ConstructsFromLogicalName = 0;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "executeBatchCommand: %@ defmodule is unknown", &v12, 0xCu);
      ConstructsFromLogicalName = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return ConstructsFromLogicalName;
}

- (void)executeCommand:(id)a3 moduleName:(id)a4
{
  v13 = a3;
  v6 = a4;
  Defmodule = EnvFindDefmodule(self->_environment, [v6 UTF8String]);
  if (Defmodule)
  {
    v8 = Defmodule;
    CurrentModule = EnvGetCurrentModule(self->_environment);
    EnvSetCurrentModule(self->_environment, v8);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s> %@\n", EnvGetConstructNameString(self->_environment, v8), v13];
    EnvPrintRouter(self->_environment, "wtrace", [v10 UTF8String]);
    SetHaltExecution(self->_environment, 0);
    SetEvaluationError(self->_environment, 0);
    FlushPPBuffer(self->_environment);
    SetPPBufferStatus(self->_environment, 0);
    environment = self->_environment;
    v12 = v13;
    RouteCommand(environment, [v13 UTF8String], 0);
    FlushPPBuffer(self->_environment);
    SetHaltExecution(self->_environment, 0);
    SetEvaluationError(self->_environment, 0);
    EnvSetCurrentModule(self->_environment, CurrentModule);
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@' is not a valid module name", v6];
    EnvPrintRouter(self->_environment, "werror", [v10 UTF8String]);
  }
}

- (void)retractFact:(void *)a3
{
  if (a3)
  {
    if (!GetEvaluationError(self->_environment))
    {
      environment = self->_environment;

      EnvRetract(environment, a3);
    }
  }

  else
  {
    v6 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Don't call retractFact with a NULL fact", v7, 2u);
    }
  }
}

- (void)retainFact:(void *)a3
{
  if (a3)
  {
    environment = self->_environment;

    EnvIncrementFactCount(environment, a3);
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v6 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Don't call retainFact with a NULL fact", v7, 2u);
    }
  }
}

- (void)releaseFact:(void *)a3
{
  if (a3)
  {
    environment = self->_environment;

    EnvDecrementFactCount(environment, a3);
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v6 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Don't call releaseFact with a NULL fact", v7, 2u);
    }
  }
}

- (void)assertFactString:(id)a3 moduleName:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  Defmodule = EnvFindDefmodule(self->_environment, [v7 UTF8String]);
  if (Defmodule)
  {
    v9 = Defmodule;
    SaveCurrentModule(self->_environment);
    EnvSetCurrentModule(self->_environment, v9);
    v10 = EnvAssertString(self->_environment, [v6 UTF8String]);
    if (!v10)
    {
      v11 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412546;
        v16 = v6;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "EnvAssertString() failed for %@ in module %@. Possibly a duplicate fact.", &v15, 0x16u);
      }
    }

    RestoreCurrentModule(self->_environment);
  }

  else
  {
    v12 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412546;
      v16 = v7;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "EnvFindDefmodule() failed to find module %@ when asserting %@", &v15, 0x16u);
    }

    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)currentModule
{
  CurrentModule = EnvGetCurrentModule(self->_environment);
  if (CurrentModule)
  {
    CurrentModule = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:{EnvGetConstructNameString(self->_environment, CurrentModule)}];
  }

  return CurrentModule;
}

- (id)setCurrentModule:(id)a3
{
  v4 = a3;
  if ([v4 length] && (Defmodule = EnvFindDefmodule(self->_environment, objc_msgSend(v4, "UTF8String"))) != 0)
  {
    v6 = Defmodule;
    v7 = [(CLIPSShim *)self currentModule];
    EnvSetCurrentModule(self->_environment, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)pushFocus:(id)a3
{
  environment = self->_environment;
  v5 = a3;
  CurrentModule = EnvGetCurrentModule(environment);
  v7 = self->_environment;
  v8 = [v5 UTF8String];

  Defmodule = EnvFindDefmodule(v7, v8);
  EnvFocus(self->_environment, Defmodule);
  v10 = self->_environment;

  EnvSetCurrentModule(v10, CurrentModule);
}

- (id)getValueForSlotNamed:(id)a3 fromFact:(void *)a4
{
  memset(v11, 0, sizeof(v11));
  environment = self->_environment;
  v8 = a3;
  if (EnvGetFactSlot(environment, a4, [a3 UTF8String], v11))
  {
    v9 = [(CLIPSShim *)self objectForDO:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)performOnFactsWithDeftemplateName:(id)a3 usingBlock:(id)a4
{
  v13 = a3;
  v6 = a4;
  NextFact = EnvGetNextFact(self->_environment, 0);
  if (NextFact)
  {
    v8 = NextFact;
    while (1)
    {
      v9 = EnvFactDeftemplate(self->_environment, v8);
      if (v9)
      {
        break;
      }

      if (v6)
      {
        goto LABEL_9;
      }

LABEL_10:
      v8 = EnvGetNextFact(self->_environment, v8);
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    DefruleName = EnvGetDefruleName(self->_environment, v9);
    if (!DefruleName)
    {
      goto LABEL_10;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:DefruleName];
    v12 = [v13 isEqualToString:v11];

    if (!v6 || (v12 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v6[2](v6, v8);
    goto LABEL_10;
  }

LABEL_11:
}

- (id)matchFactsWithDeftemplateName:(id)a3 withSlotKeyValues:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CBEB18];
  v8 = a3;
  v9 = [v7 array];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__CLIPSShim_matchFactsWithDeftemplateName_withSlotKeyValues___block_invoke;
  v15[3] = &unk_2789903E0;
  v16 = v6;
  v17 = self;
  v10 = v9;
  v18 = v10;
  v11 = v6;
  [(CLIPSShim *)self performOnFactsWithDeftemplateName:v8 usingBlock:v15];

  v12 = v18;
  v13 = v10;

  return v10;
}

void __61__CLIPSShim_matchFactsWithDeftemplateName_withSlotKeyValues___block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v17;
LABEL_3:
    v10 = 0;
    v11 = v8;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(v4);
      }

      v12 = *(*(&v16 + 1) + 8 * v10);
      v8 = [*(a1 + 32) objectForKeyedSubscript:{v12, v16}];

      if (v8)
      {
        v13 = [*(a1 + 40) getValueForSlotNamed:v12 fromFact:a2];

        if (!v13)
        {
          break;
        }

        v7 = v13;
        if (![v13 isEqual:v8])
        {
          break;
        }
      }

      ++v10;
      v11 = v8;
      if (v6 == v10)
      {
        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
LABEL_13:

    v14 = *(a1 + 48);
    v4 = [MEMORY[0x277CCAE60] valueWithPointer:a2];
    [v14 addObject:v4];
    v13 = v7;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)deftemplateNamed:(id)a3 moduleName:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  Defmodule = EnvFindDefmodule(self->_environment, [a4 UTF8String]);
  if (Defmodule)
  {
    CurrentModule = EnvGetCurrentModule(self->_environment);
    EnvSetCurrentModule(self->_environment, Defmodule);
    Defmodule = EnvFindDeftemplate(self->_environment, [v6 UTF8String]);
    if (!Defmodule)
    {
      v9 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "CLIPS: FAILED TO FIND %@", &v12, 0xCu);
      }
    }

    if (CurrentModule)
    {
      EnvSetCurrentModule(self->_environment, CurrentModule);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return Defmodule;
}

- (id)deftemplatesMatchingPrefix:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4 || ![v4 length])
  {
    v46 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_ERROR, "ANALYTICS-CLIPS: Prefix passed in was empty", buf, 2u);
    }

    goto LABEL_54;
  }

  v6 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = v5;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "ANALYTICS-CLIPS: Looking for deftemplate that matches prefix %@", buf, 0xCu);
  }

  v7 = [v5 UTF8String];
  v8 = strlen(v7);
  NextDeftemplate = EnvGetNextDeftemplate(self->_environment, 0);
  if (!NextDeftemplate)
  {
LABEL_54:
    v12 = 0;
    goto LABEL_55;
  }

  v11 = NextDeftemplate;
  v12 = 0;
  v13 = 0x277CBE000uLL;
  *&v10 = 138412290;
  v49 = v10;
  v50 = v5;
  v54 = v7;
  do
  {
    if (!v12)
    {
      v12 = objc_alloc_init(*(v13 + 2872));
    }

    DefruleName = EnvGetDefruleName(self->_environment, v11);
    v15 = EnvDefruleModule(self->_environment, v11);
    if (DefruleName)
    {
      v16 = v15;
      if (strlen(DefruleName) >= v8 && !strncmp(v7, DefruleName, v8))
      {
        v17 = debuggabilityLogHandle;
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = DefruleName;
          *&buf[12] = 2080;
          *&buf[14] = v54;
          _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_INFO, "ANALYTICS-CLIPS: Found deftemplate %s that matches prefix %s", buf, 0x16u);
        }

        v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:DefruleName];
        v19 = [v18 rangeOfString:@"_"];
        if (v19 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = v18;
            *&buf[12] = 2112;
            *&buf[14] = v5;
            _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "Unable to parse AWD metric name from deftemplate name. (deftemplate: %@, prefix: %@)", buf, 0x16u);
          }
        }

        else
        {
          v52 = [v18 substringFromIndex:v19 + v20];
          v22 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = v49;
            *&buf[4] = v52;
            _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEBUG, "ANALYTICS-CLIPS: Parsed out AWD metric name: %@", buf, 0xCu);
          }

          v66 = 0u;
          memset(buf, 0, sizeof(buf));
          EnvDeftemplateSlotNames(self->_environment, v11, buf);
          v23 = *&buf[16];
          if (*&buf[16])
          {
            v51 = v18;
            v55 = objc_alloc_init(*(v13 + 2872));
            v24 = *&buf[24];
            v57 = v66;
            if (*&buf[24] <= v66)
            {
              v56 = v23 + 24;
              v53 = v8;
              do
              {
                v25 = (v56 + 16 * v24);
                if ((*v25 & 0xFFFE) == 2)
                {
                  v26 = *(*(v25 + 1) + 24);
                  if (v26)
                  {
                    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v26];
                    v63 = 0u;
                    v64 = 0u;
                    *v62 = 0u;
                    EnvDeftemplateSlotTypes(self->_environment, v11, v26, v62);
                    if (!v63 || v64 - *(&v63 + 1) == -1)
                    {
                      v34 = debuggabilityLogHandle;
                      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
                      {
                        *v58 = 0;
                        _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEBUG, "    slot types is nil or length is zero for this slot.", v58, 2u);
                      }
                    }

                    else if (v64 >= *(&v63 + 1))
                    {
                      v28 = v64 - *(&v63 + 1) + 1;
                      v29 = (v63 + 16 * *(&v63 + 1) + 24);
                      do
                      {
                        if ((*v29 & 0xFFFE) != 2)
                        {
                          v30 = debuggabilityLogHandle;
                          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                          {
                            v31 = *v29;
                            *v58 = 67109378;
                            v59 = v31;
                            v60 = 2080;
                            v61 = v26;
                            _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_ERROR, "Found unexpected multi-field type of %d for %s (should be STRING or SYMBOL)", v58, 0x12u);
                          }
                        }

                        v29 += 8;
                        --v28;
                      }

                      while (v28);
                    }

                    v35 = [v27 rangeOfString:{@"/", v49}];
                    if (v35 == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      [v55 setObject:v27 forKeyedSubscript:v27];
                      v8 = v53;
                    }

                    else
                    {
                      v37 = v35;
                      v38 = v36;
                      v39 = [v27 substringWithRange:{0, v35}];
                      v40 = [v27 substringFromIndex:v37 + v38];
                      v41 = [v55 objectForKeyedSubscript:v39];
                      v8 = v53;
                      if (!v41)
                      {
                        v41 = objc_alloc_init(MEMORY[0x277CBEB38]);
                        [v55 setObject:v41 forKeyedSubscript:v39];
                      }

                      [v41 setObject:v27 forKeyedSubscript:v40];
                    }

                    v13 = 0x277CBE000;
                  }
                }

                else
                {
                  v32 = debuggabilityLogHandle;
                  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                  {
                    v33 = *v25;
                    *v62 = 67109120;
                    *&v62[4] = v33;
                    _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_ERROR, "Found unexpected multi-field type of %d for slot names (should be STRING or SYMBOL)", v62, 8u);
                  }
                }
              }

              while (v24++ != v57);
            }

            v18 = v51;
            [v55 setObject:v51 forKeyedSubscript:{@"kAnalyticsCLIPSTemplateName", v49}];
            v43 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v16];
            [v55 setObject:v43 forKeyedSubscript:@"kAnalyticsCLIPSTemplateModule"];

            v44 = v52;
            [v12 setObject:v55 forKeyedSubscript:v52];

            v5 = v50;
          }

          else
          {
            v45 = debuggabilityLogHandle;
            v44 = v52;
            if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *v62 = 0;
              _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEBUG, "  Missing slot names value for this deftemplate.", v62, 2u);
            }
          }
        }

        v7 = v54;
      }
    }

    v11 = EnvGetNextDeftemplate(self->_environment, v11);
  }

  while (v11);
LABEL_55:

  v47 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)slotsStringForTemplate:(id)a3 fromDictionary:(id)a4 moduleName:(id)a5
{
  v142 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v99 = v9;
  if (![v9 count])
  {
    v88 = debuggabilityLogHandle;
    if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_137;
    }

    *v139 = 0;
    v89 = "CLIPS: Nothing to parse";
    v90 = v88;
    v91 = OS_LOG_TYPE_DEBUG;
    v92 = 2;
LABEL_134:
    _os_log_impl(&dword_23255B000, v90, v91, v89, v139, v92);
    goto LABEL_137;
  }

  v12 = [(CLIPSShim *)self deftemplateNamed:v8 moduleName:v10];
  if (!v12)
  {
    v93 = debuggabilityLogHandle;
    if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_137;
    }

    *v139 = 138412290;
    *&v139[4] = v8;
    v89 = "CLIPS: Could not locate this deftemplate: %@";
    v90 = v93;
    v91 = OS_LOG_TYPE_ERROR;
    v92 = 12;
    goto LABEL_134;
  }

  v13 = v12;
  v97 = v8;
  v140 = 0u;
  v141 = 0u;
  *v139 = 0u;
  EnvDeftemplateSlotNames(self->_environment, v12, v139);
  v14 = [(CLIPSShim *)self objectForDO:v139];
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  obj = [v9 allKeys];
  v104 = [obj countByEnumeratingWithState:&v122 objects:v138 count:16];
  if (v104)
  {
    v15 = 0;
    v103 = *v123;
    v101 = self;
    v102 = v14;
    while (1)
    {
      v16 = 0;
      do
      {
        if (*v123 != v103)
        {
          objc_enumerationMutation(obj);
        }

        v105 = v16;
        v17 = *(*(&v122 + 1) + 8 * v16);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v14 isEqualToString:v17])
          {
            goto LABEL_16;
          }

          goto LABEL_111;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v18 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
          {
            v19 = v18;
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            *buf = 138412802;
            v127 = v21;
            v128 = 2112;
            v129 = v17;
            v130 = 2112;
            v131 = v97;
            _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "CLIPS: Unexpected slot name class %@ for key: '%@' in this template: '%@'", buf, 0x20u);
          }

LABEL_16:
          EnvDeftemplateSlotTypes(self->_environment, v13, [v17 UTF8String], v139);
          v22 = [(CLIPSShim *)self objectForDO:v139];
          v23 = EnvDeftemplateSlotMultiP(self->_environment, v13, [v17 UTF8String]);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = v22;
            if ([v22 count])
            {
              v24 = [v22 objectAtIndexedSubscript:0];

              v22 = v24;
              self = v101;
              goto LABEL_19;
            }

            v52 = debuggabilityLogHandle;
            if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_ERROR, "CLIPS: empty slotTypes", buf, 2u);
            }

LABEL_108:
            v14 = v102;
LABEL_109:
            v16 = v105;
LABEL_110:

            goto LABEL_111;
          }

LABEL_19:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v35 = debuggabilityLogHandle;
            if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
            {
              v36 = v35;
              v37 = objc_opt_class();
              *buf = 138412802;
              v127 = v17;
              v128 = 2112;
              v129 = v22;
              v130 = 2112;
              v131 = v37;
              v38 = v37;
              _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_ERROR, "CLIPS: %@'s slotType (%@) class (%@) is not a string!", buf, 0x20u);

              self = v101;
            }

            goto LABEL_108;
          }

          v25 = [v99 objectForKeyedSubscript:v17];

          if ([v22 isEqualToString:@"STRING"])
          {
            if (v23)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v98 = v22;
                objc_msgSend(v11, "appendFormat:", @" (%@ "), v17;
                v120 = 0u;
                v121 = 0u;
                v118 = 0u;
                v119 = 0u;
                v15 = v25;
                v26 = [v15 countByEnumeratingWithState:&v118 objects:v137 count:16];
                if (v26)
                {
                  v27 = v26;
                  v28 = *v119;
                  do
                  {
                    for (i = 0; i != v27; ++i)
                    {
                      if (*v119 != v28)
                      {
                        objc_enumerationMutation(v15);
                      }

                      v30 = *(*(&v118 + 1) + 8 * i);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [v11 appendFormat:@" %@", v30];
                      }

                      else
                      {
                        v31 = debuggabilityLogHandle;
                        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                        {
                          v32 = v31;
                          v33 = objc_opt_class();
                          *buf = 138412802;
                          v127 = v30;
                          v128 = 2112;
                          v129 = v33;
                          v130 = 2112;
                          v131 = v17;
                          v34 = v33;
                          _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_ERROR, "CLIPS: value %@ is a '%@' but %@'s STRING slot expects an NSString from this array!", buf, 0x20u);
                        }
                      }
                    }

                    v27 = [v15 countByEnumeratingWithState:&v118 objects:v137 count:16];
                  }

                  while (v27);
                }

LABEL_103:

                [v11 appendFormat:@""]);
                self = v101;
                v14 = v102;
                v16 = v105;
                v22 = v98;
                goto LABEL_110;
              }
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v11 appendFormat:@" (%@ \"%@\"", v17, v25];
              goto LABEL_106;
            }

            v62 = debuggabilityLogHandle;
            if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
            {
              v63 = v62;
              v64 = objc_opt_class();
              *buf = 138412802;
              v127 = v25;
              v128 = 2112;
              v129 = v64;
              v130 = 2112;
              v131 = v17;
              v65 = v64;
              v66 = v63;
              v67 = "CLIPS: value %@ is a '%@' but %@'s STRING slot expects an NSString!";
              goto LABEL_87;
            }

LABEL_106:
            v15 = v25;
LABEL_107:
            self = v101;
            goto LABEL_108;
          }

          if ([v22 isEqualToString:@"SYMBOL"])
          {
            if (v23)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v98 = v22;
                objc_msgSend(v11, "appendFormat:", @" (%@ "), v17;
                v116 = 0u;
                v117 = 0u;
                v114 = 0u;
                v115 = 0u;
                v15 = v25;
                v39 = [v15 countByEnumeratingWithState:&v114 objects:v136 count:16];
                if (!v39)
                {
                  goto LABEL_103;
                }

                v40 = v39;
                v41 = *v115;
                while (1)
                {
                  v42 = 0;
                  do
                  {
                    if (*v115 != v41)
                    {
                      objc_enumerationMutation(v15);
                    }

                    v43 = *(*(&v114 + 1) + 8 * v42);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v96 = v43;
                      v44 = v11;
                      v45 = @" %@";
LABEL_47:
                      [v44 appendFormat:v45, v96];
                      goto LABEL_48;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      if ([v43 BOOLValue])
                      {
                        v44 = v11;
                        v45 = @" TRUE";
                        goto LABEL_47;
                      }

                      if (([v43 BOOLValue] & 1) == 0)
                      {
                        v44 = v11;
                        v45 = @" FALSE";
                        goto LABEL_47;
                      }

                      v50 = debuggabilityLogHandle;
                      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        v127 = v43;
                        v128 = 2112;
                        v129 = v17;
                        _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_ERROR, "CLIPS: value %@ is a non-Boolean NSNumber and %@'s SYMBOL slot expects an value of TRUE (1) or FALSE (0)!", buf, 0x16u);
                      }
                    }

                    else
                    {
                      v46 = debuggabilityLogHandle;
                      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                      {
                        v47 = v46;
                        v48 = objc_opt_class();
                        *buf = 138412802;
                        v127 = v43;
                        v128 = 2112;
                        v129 = v48;
                        v130 = 2112;
                        v131 = v17;
                        v49 = v48;
                        _os_log_impl(&dword_23255B000, v47, OS_LOG_TYPE_ERROR, "CLIPS: value %@ is a '%@' but %@'s SYMBOL slot expects an NSString from this array!", buf, 0x20u);
                      }
                    }

LABEL_48:
                    ++v42;
                  }

                  while (v40 != v42);
                  v51 = [v15 countByEnumeratingWithState:&v114 objects:v136 count:16];
                  v40 = v51;
                  if (!v51)
                  {
                    goto LABEL_103;
                  }
                }
              }
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v14 = v102;
                if ([v25 BOOLValue])
                {
                  [v11 appendFormat:@" (%@ TRUE)", v17];
                }

                else
                {
                  if ([v25 BOOLValue])
                  {
                    v86 = debuggabilityLogHandle;
                    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v127 = v25;
                      v128 = 2112;
                      v129 = v17;
                      _os_log_impl(&dword_23255B000, v86, OS_LOG_TYPE_ERROR, "CLIPS: value %@ is a non-Boolean NSNumber and %@'s SYMBOL slot expects an value of TRUE (1) or FALSE (0)!", buf, 0x16u);
                    }

                    goto LABEL_106;
                  }

                  [v11 appendFormat:@" (%@ FALSE)", v17];
                }

                v15 = v25;
                self = v101;
                goto LABEL_109;
              }

              v81 = debuggabilityLogHandle;
              if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_106;
              }

              v63 = v81;
              v82 = objc_opt_class();
              *buf = 138412802;
              v127 = v25;
              v128 = 2112;
              v129 = v82;
              v130 = 2112;
              v131 = v17;
              v65 = v82;
              v66 = v63;
              v67 = "CLIPS: value %@ is a '%@' but %@'s SYMBOL slot expects an NSString!";
LABEL_87:
              v68 = 32;
LABEL_88:
              _os_log_impl(&dword_23255B000, v66, OS_LOG_TYPE_ERROR, v67, buf, v68);

              goto LABEL_106;
            }

LABEL_105:
            [v11 appendFormat:@" (%@ %@)", v17, v25];
            goto LABEL_106;
          }

          if ([v22 isEqualToString:@"INTEGER"])
          {
            if (v23)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v98 = v22;
                objc_msgSend(v11, "appendFormat:", @" (%@ "), v17;
                v112 = 0u;
                v113 = 0u;
                v110 = 0u;
                v111 = 0u;
                v15 = v25;
                v53 = [v15 countByEnumeratingWithState:&v110 objects:v135 count:16];
                if (v53)
                {
                  v54 = v53;
                  v55 = *v111;
                  do
                  {
                    for (j = 0; j != v54; ++j)
                    {
                      if (*v111 != v55)
                      {
                        objc_enumerationMutation(v15);
                      }

                      v57 = *(*(&v110 + 1) + 8 * j);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [v11 appendFormat:@" %@", v57];
                      }

                      else
                      {
                        v58 = debuggabilityLogHandle;
                        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                        {
                          v59 = v58;
                          v60 = objc_opt_class();
                          *buf = 138412802;
                          v127 = v57;
                          v128 = 2112;
                          v129 = v60;
                          v130 = 2112;
                          v131 = v17;
                          v61 = v60;
                          _os_log_impl(&dword_23255B000, v59, OS_LOG_TYPE_ERROR, "CLIPS: value %@ is a '%@' but %@'s INTEGER slot expects an NSNumber from this array!", buf, 0x20u);
                        }
                      }
                    }

                    v54 = [v15 countByEnumeratingWithState:&v110 objects:v135 count:16];
                  }

                  while (v54);
                }

                goto LABEL_103;
              }
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_105;
            }

            v84 = debuggabilityLogHandle;
            if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_106;
            }
          }

          else
          {
            if (![v22 isEqualToString:@"FLOAT"])
            {
              v79 = debuggabilityLogHandle;
              if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_106;
              }

              v63 = v79;
              v80 = objc_opt_class();
              *buf = 138413058;
              v127 = v22;
              v128 = 2112;
              v129 = v17;
              v130 = 2112;
              v131 = v25;
              v132 = 2112;
              v133 = v80;
              v65 = v80;
              v66 = v63;
              v67 = "CLIPS: This slotType (%@) for %@'s value %@ (class is %@) is not handled";
              v68 = 42;
              goto LABEL_88;
            }

            if (v23)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v98 = v22;
                objc_msgSend(v11, "appendFormat:", @" (%@ "), v17;
                v108 = 0u;
                v109 = 0u;
                v106 = 0u;
                v107 = 0u;
                v15 = v25;
                v69 = [v15 countByEnumeratingWithState:&v106 objects:v134 count:16];
                if (v69)
                {
                  v70 = v69;
                  v71 = *v107;
                  do
                  {
                    for (k = 0; k != v70; ++k)
                    {
                      if (*v107 != v71)
                      {
                        objc_enumerationMutation(v15);
                      }

                      v73 = *(*(&v106 + 1) + 8 * k);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [v73 floatValue];
                        [v11 appendFormat:@"%.1f", v74];
                      }

                      else
                      {
                        v75 = debuggabilityLogHandle;
                        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                        {
                          v76 = v75;
                          v77 = objc_opt_class();
                          *buf = 138412802;
                          v127 = v73;
                          v128 = 2112;
                          v129 = v77;
                          v130 = 2112;
                          v131 = v17;
                          v78 = v77;
                          _os_log_impl(&dword_23255B000, v76, OS_LOG_TYPE_ERROR, "CLIPS: value %@ is a '%@' but %@'s FLOAT slot expects an NSNumber from this array!", buf, 0x20u);
                        }
                      }
                    }

                    v70 = [v15 countByEnumeratingWithState:&v106 objects:v134 count:16];
                  }

                  while (v70);
                }

                goto LABEL_103;
              }
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v25;
              [v15 floatValue];
              [v11 appendFormat:@" (%@ %.1f)", v17, v83];

              goto LABEL_107;
            }

            v84 = debuggabilityLogHandle;
            if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_106;
            }
          }

          v63 = v84;
          v85 = objc_opt_class();
          *buf = 138412802;
          v127 = v25;
          v128 = 2112;
          v129 = v85;
          v130 = 2112;
          v131 = v17;
          v65 = v85;
          v66 = v63;
          v67 = "CLIPS: value %@ is a '%@' but %@'s INTEGER slot expects an NSNumber!";
          goto LABEL_87;
        }

        if ([v14 containsObject:v17])
        {
          goto LABEL_16;
        }

LABEL_111:
        ++v16;
      }

      while (v16 != v104);
      v87 = [obj countByEnumeratingWithState:&v122 objects:v138 count:16];
      v104 = v87;
      if (!v87)
      {
        goto LABEL_136;
      }
    }
  }

  v15 = 0;
LABEL_136:

  v8 = v97;
LABEL_137:

  v94 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)setConsoleNameRegex:(id *)a3
{
  v3 = *&a3->var0;
  *&self->_consoleNameRegex.re_endp = *&a3->var2;
  *&self->_consoleNameRegex.re_magic = v3;
}

- (void)setDumpStringRegex:(id *)a3
{
  v3 = *&a3->var0;
  *&self->_dumpStringRegex.re_endp = *&a3->var2;
  *&self->_dumpStringRegex.re_magic = v3;
}

- (void)registerCallbackFunction:(void *)a1 selector:target:.cold.1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v1;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_ERROR, "Caught exception: %@", &v4, 0xCu);
  }

  objc_end_catch();
  v3 = *MEMORY[0x277D85DE8];
}

@end