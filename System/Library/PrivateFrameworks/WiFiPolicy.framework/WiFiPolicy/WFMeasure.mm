@interface WFMeasure
- (BOOL)doDNSResolution:(id)resolution timeout:(int64_t)timeout;
- (BOOL)doPing:(id)ping count:(int64_t)count timeout:(int64_t)timeout size:(int64_t)size class:(int64_t)class minRTT:(int64_t *)t maxRTT:(int64_t *)tT successCount:(int64_t *)self0;
- (BOOL)shouldApsdSampleSiriTCP;
- (BOOL)shouldApsdSampleSiriTLS;
- (BOOL)shouldPeriodicSampleSiriTCP;
- (BOOL)shouldPeriodicSampleSiriTLS;
- (BOOL)shouldTimeoutSampleSiriTCP;
- (BOOL)shouldTimeoutSampleSiriTLS;
- (BOOL)start:(id)start withCompletionQueue:(id)queue;
- (WFMeasure)initWithType:(unint64_t)type andReason:(id)reason prevTestedOptions:(unint64_t)options andInterfaceName:(id)name;
- (id)description;
- (int)getTimeoutSampleTrafficClass;
- (unsigned)getApsdSampleTrafficClass;
- (unsigned)getPeriodicSampleTrafficClass;
- (void)abort;
- (void)dispatchDNSTest:(id)test;
- (void)dispatchPingTest:(unint64_t)test;
- (void)dispatchSiriTest:(int64_t)test trafficClass:(unsigned int)class;
- (void)dispatchThroughputTest;
- (void)dispatchULThroughputTest;
- (void)doThroughputTest;
- (void)doULThroughputTest;
- (void)getLazyNSNumberPreference:(id)preference exists:(id)exists;
- (void)getLazyNSStringPreference:(id)preference exists:(id)exists;
- (void)initializePerformanceTest;
- (void)retrieveNetworkConfigurations;
@end

@implementation WFMeasure

- (WFMeasure)initWithType:(unint64_t)type andReason:(id)reason prevTestedOptions:(unint64_t)options andInterfaceName:(id)name
{
  reasonCopy = reason;
  nameCopy = name;
  v36.receiver = self;
  v36.super_class = WFMeasure;
  v12 = [(WFMeasure *)&v36 init];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  *(v12 + 9) = 0;
  v12[13] = 0;
  NSLog(&cfstr_SRequestingTes.isa, "[WFMeasure initWithType:andReason:prevTestedOptions:andInterfaceName:]", type, reasonCopy, options, nameCopy);
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    NSLog(&cfstr_SFeatureNotEna.isa, "[WFMeasure initWithType:andReason:prevTestedOptions:andInterfaceName:]");
    goto LABEL_25;
  }

  if (MGGetBoolAnswer())
  {
    *(v29 + 24) = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __71__WFMeasure_initWithType_andReason_prevTestedOptions_andInterfaceName___block_invoke;
    v27[3] = &unk_2789C7628;
    v27[4] = &v28;
    [v12 getLazyNSNumberPreference:@"behave_as_internal" exists:v27];
  }

  if (MGGetBoolAnswer())
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __71__WFMeasure_initWithType_andReason_prevTestedOptions_andInterfaceName___block_invoke_2;
    v26[3] = &unk_2789C7628;
    v26[4] = &v32;
    [v12 getLazyNSNumberPreference:@"behave_as_seed" exists:v26];
  }

  if (MGGetBoolAnswer())
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __71__WFMeasure_initWithType_andReason_prevTestedOptions_andInterfaceName___block_invoke_3;
    v24[3] = &unk_2789C7650;
    v25 = v12;
    [v25 getLazyNSNumberPreference:@"behave_as_paris" exists:v24];
  }

  [v12 setIsInProgress:0];
  [v12 setOptions:0];
  [v12 setInterfaceName:nameCopy];
  [v12 setTestReason:reasonCopy];
  v13 = dispatch_group_create();
  [v12 setDispatchGroup:v13];

  [v12 setTclass:700];
  if ([reasonCopy containsString:@"periodicTestHourly"])
  {
    v12[9] = 1;
  }

  if ([reasonCopy containsString:@"Siri Timed Out"])
  {
    v12[10] = 1;
  }

  if ([reasonCopy containsString:@"Apsd Timed Out"])
  {
    v12[11] = 1;
  }

  if (options)
  {
    NSLog(&cfstr_SBecausePrevte.isa, "[WFMeasure initWithType:andReason:prevTestedOptions:andInterfaceName:]");
    v12[12] = 1;
  }

  if (MGGetBoolAnswer())
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __71__WFMeasure_initWithType_andReason_prevTestedOptions_andInterfaceName___block_invoke_4;
    v22[3] = &unk_2789C7650;
    v23 = v12;
    [v23 getLazyNSNumberPreference:@"behave_as_retest" exists:v22];
  }

  if (v12[12] == 1)
  {
    NSLog(&cfstr_SBecauseIsrete.isa, "[WFMeasure initWithType:andReason:prevTestedOptions:andInterfaceName:]", options);
    [v12 setOptions:options];
  }

  switch(type)
  {
    case 0xFFFFFFFFuLL:
      [v12 setOptions:{objc_msgSend(v12, "options") | 1}];
      [v12 setOptions:{objc_msgSend(v12, "options") | 2}];
      [v12 setOptions:{objc_msgSend(v12, "options") | 4}];
      [v12 setOptions:{objc_msgSend(v12, "options") | 0x100}];
      if ((v29[3] & 1) == 0 && *(v33 + 24) != 1)
      {
        break;
      }

LABEL_32:
      [v12 setOptions:{objc_msgSend(v12, "options") | 8}];
      v14 = [v12 options] | 0x10;
      goto LABEL_33;
    case 2uLL:
      [v12 setOptions:{objc_msgSend(v12, "options") | 2}];
      [v12 setOptions:{objc_msgSend(v12, "options") | 4}];
      if (v12[13] == 1 && (v29[3] & 1) == 0 && *(v33 + 24) != 1)
      {
        break;
      }

      goto LABEL_32;
    case 1uLL:
      [v12 setOptions:{objc_msgSend(v12, "options") | 1}];
      v14 = [v12 options] | 0x100;
LABEL_33:
      [v12 setOptions:v14];
      break;
  }

  if (MGGetBoolAnswer())
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __71__WFMeasure_initWithType_andReason_prevTestedOptions_andInterfaceName___block_invoke_5;
    v20[3] = &unk_2789C7650;
    v21 = v12;
    [v21 getLazyNSNumberPreference:@"test_options" exists:v20];
  }

  NSLog(&cfstr_SWillTestTypeL.isa, "-[WFMeasure initWithType:andReason:prevTestedOptions:andInterfaceName:]", type, reasonCopy, options, [v12 options], nameCopy);
  if ([v12 options])
  {
    [v12 setPublicDNSAddress:@"1.1.1.1"];
    [v12 setTestDNSHostname:@"www.apple.com"];
    v16 = [[WFMeasureResult alloc] initWithType:type];
    [v12 setResult:v16];

    options = [v12 options];
    result = [v12 result];
    [result setOptions:options];

    [v12 retrieveNetworkConfigurations];
    NSLog(&cfstr_SLqmWifi_0.isa, "[WFMeasure initWithType:andReason:prevTestedOptions:andInterfaceName:]", v12);
    v12 = v12;
    v15 = v12;
    goto LABEL_38;
  }

  NSLog(&cfstr_SOptionsNotSpe.isa, "[WFMeasure initWithType:andReason:prevTestedOptions:andInterfaceName:]");

  v12 = 0;
LABEL_25:
  v15 = 0;
LABEL_38:
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  return v15;
}

void __71__WFMeasure_initWithType_andReason_prevTestedOptions_andInterfaceName___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = a2;
  NSLog(&cfstr_SSettingIsinte.isa, "-[WFMeasure initWithType:andReason:prevTestedOptions:andInterfaceName:]_block_invoke", v3, [v4 BOOLValue]);
  LOBYTE(v3) = [v4 BOOLValue];

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

void __71__WFMeasure_initWithType_andReason_prevTestedOptions_andInterfaceName___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = a2;
  NSLog(&cfstr_SSettingIsseed.isa, "-[WFMeasure initWithType:andReason:prevTestedOptions:andInterfaceName:]_block_invoke_2", v3, [v4 BOOLValue]);
  LOBYTE(v3) = [v4 BOOLValue];

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

void __71__WFMeasure_initWithType_andReason_prevTestedOptions_andInterfaceName___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 13);
  v4 = a2;
  NSLog(&cfstr_SSettingIspari.isa, "-[WFMeasure initWithType:andReason:prevTestedOptions:andInterfaceName:]_block_invoke_3", v3, [v4 BOOLValue]);
  LOBYTE(v3) = [v4 BOOLValue];

  *(*(a1 + 32) + 13) = v3;
}

void __71__WFMeasure_initWithType_andReason_prevTestedOptions_andInterfaceName___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 12);
  v4 = a2;
  NSLog(&cfstr_SSettingIsrete.isa, "-[WFMeasure initWithType:andReason:prevTestedOptions:andInterfaceName:]_block_invoke_4", v3, [v4 BOOLValue]);
  LOBYTE(v3) = [v4 BOOLValue];

  *(*(a1 + 32) + 12) = v3;
}

uint64_t __71__WFMeasure_initWithType_andReason_prevTestedOptions_andInterfaceName___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  NSLog(&cfstr_SOverridingKwf.isa, "-[WFMeasure initWithType:andReason:prevTestedOptions:andInterfaceName:]_block_invoke_5", [v3 options], objc_msgSend(v4, "unsignedIntValue"));
  v5 = [v4 unsignedIntValue];

  v6 = *(a1 + 32);

  return [v6 setOptions:v5];
}

- (void)getLazyNSNumberPreference:(id)preference exists:(id)exists
{
  preferenceCopy = preference;
  existsCopy = exists;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [standardUserDefaults persistentDomainForName:@"com.apple.wifipolicy.wfmeasure"];

  v8 = [v7 objectForKey:preferenceCopy];
  if (v8)
  {
    NSLog(&cfstr_SFoundPreferen.isa, "[WFMeasure getLazyNSNumberPreference:exists:]", @"com.apple.wifipolicy.wfmeasure", preferenceCopy);
    existsCopy[2](existsCopy, v8);
  }
}

- (void)getLazyNSStringPreference:(id)preference exists:(id)exists
{
  preferenceCopy = preference;
  existsCopy = exists;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [standardUserDefaults persistentDomainForName:@"com.apple.wifipolicy.wfmeasure"];

  v8 = [v7 objectForKey:preferenceCopy];
  if (v8)
  {
    NSLog(&cfstr_SFoundPreferen.isa, "[WFMeasure getLazyNSStringPreference:exists:]", @"com.apple.wifipolicy.wfmeasure", preferenceCopy);
    existsCopy[2](existsCopy, v8);
  }
}

- (BOOL)shouldPeriodicSampleSiriTCP
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (MGGetBoolAnswer())
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__WFMeasure_shouldPeriodicSampleSiriTCP__block_invoke;
    v7[3] = &unk_2789C7628;
    v7[4] = &v12;
    [(WFMeasure *)self getLazyNSNumberPreference:@"periodic_sampling_siri_numerator" exists:v7];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__WFMeasure_shouldPeriodicSampleSiriTCP__block_invoke_2;
    v6[3] = &unk_2789C7628;
    v6[4] = &v8;
    [(WFMeasure *)self getLazyNSNumberPreference:@"periodic_sampling_siri_denominator" exists:v6];
  }

  v3 = arc4random_uniform(*(v9 + 6));
  v4 = *(v13 + 6);
  if (v3 >= v4)
  {
    NSLog(&cfstr_SPeriodicTestN.isa, "[WFMeasure shouldPeriodicSampleSiriTCP]", *(v13 + 6), *(v9 + 6));
  }

  else
  {
    NSLog(&cfstr_SPeriodicTestS.isa, "[WFMeasure shouldPeriodicSampleSiriTCP]", *(v13 + 6), *(v9 + 6));
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v3 < v4;
}

void __40__WFMeasure_shouldPeriodicSampleSiriTCP__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = a2;
  NSLog(&cfstr_SOverridingKwf_0.isa, "-[WFMeasure shouldPeriodicSampleSiriTCP]_block_invoke", v3, [v4 unsignedIntValue]);
  LODWORD(v3) = [v4 unsignedIntValue];

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

void __40__WFMeasure_shouldPeriodicSampleSiriTCP__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = a2;
  NSLog(&cfstr_SOverridingKwf_1.isa, "-[WFMeasure shouldPeriodicSampleSiriTCP]_block_invoke_2", v3, [v4 unsignedIntValue]);
  LODWORD(v3) = [v4 unsignedIntValue];

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

- (BOOL)shouldPeriodicSampleSiriTLS
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (MGGetBoolAnswer())
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__WFMeasure_shouldPeriodicSampleSiriTLS__block_invoke;
    v7[3] = &unk_2789C7628;
    v7[4] = &v12;
    [(WFMeasure *)self getLazyNSNumberPreference:@"periodic_sampling_siri_numerator" exists:v7];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__WFMeasure_shouldPeriodicSampleSiriTLS__block_invoke_2;
    v6[3] = &unk_2789C7628;
    v6[4] = &v8;
    [(WFMeasure *)self getLazyNSNumberPreference:@"periodic_sampling_siri_denominator" exists:v6];
  }

  v3 = arc4random_uniform(*(v9 + 6));
  v4 = *(v13 + 6);
  if (v3 >= v4)
  {
    NSLog(&cfstr_SPeriodicTestN_0.isa, "[WFMeasure shouldPeriodicSampleSiriTLS]", *(v13 + 6), *(v9 + 6));
  }

  else
  {
    NSLog(&cfstr_SPeriodicTestS_0.isa, "[WFMeasure shouldPeriodicSampleSiriTLS]", *(v13 + 6), *(v9 + 6));
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v3 < v4;
}

void __40__WFMeasure_shouldPeriodicSampleSiriTLS__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = a2;
  NSLog(&cfstr_SOverridingKwf_0.isa, "-[WFMeasure shouldPeriodicSampleSiriTLS]_block_invoke", v3, [v4 unsignedIntValue]);
  LODWORD(v3) = [v4 unsignedIntValue];

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

void __40__WFMeasure_shouldPeriodicSampleSiriTLS__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = a2;
  NSLog(&cfstr_SOverridingKwf_1.isa, "-[WFMeasure shouldPeriodicSampleSiriTLS]_block_invoke_2", v3, [v4 unsignedIntValue]);
  LODWORD(v3) = [v4 unsignedIntValue];

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

- (unsigned)getPeriodicSampleTrafficClass
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  arc4random_uniform(0);
  NSLog(&cfstr_SPerodicTraffi.isa, "[WFMeasure getPeriodicSampleTrafficClass]");
  *(v7 + 6) = 0;
  if (MGGetBoolAnswer())
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __42__WFMeasure_getPeriodicSampleTrafficClass__block_invoke;
    v5[3] = &unk_2789C7628;
    v5[4] = &v6;
    [(WFMeasure *)self getLazyNSNumberPreference:@"periodic_siri_tclass" exists:v5];
  }

  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __42__WFMeasure_getPeriodicSampleTrafficClass__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  NSLog(&cfstr_SOverridingKwf_2.isa, "-[WFMeasure getPeriodicSampleTrafficClass]_block_invoke", [v3 unsignedIntValue]);
  v4 = [v3 unsignedIntValue];

  *(*(*(a1 + 32) + 8) + 24) = v4;
}

- (BOOL)shouldTimeoutSampleSiriTCP
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (MGGetBoolAnswer())
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__WFMeasure_shouldTimeoutSampleSiriTCP__block_invoke;
    v7[3] = &unk_2789C7628;
    v7[4] = &v12;
    [(WFMeasure *)self getLazyNSNumberPreference:@"siri_timeout_sampling_numerator" exists:v7];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __39__WFMeasure_shouldTimeoutSampleSiriTCP__block_invoke_2;
    v6[3] = &unk_2789C7628;
    v6[4] = &v8;
    [(WFMeasure *)self getLazyNSNumberPreference:@"siri_timeout_sampling_denominator" exists:v6];
  }

  v3 = arc4random_uniform(*(v9 + 6));
  v4 = *(v13 + 6);
  if (v3 >= v4)
  {
    NSLog(&cfstr_STimeoutTestNo.isa, "[WFMeasure shouldTimeoutSampleSiriTCP]", *(v13 + 6), *(v9 + 6));
  }

  else
  {
    NSLog(&cfstr_STimeoutTestSe.isa, "[WFMeasure shouldTimeoutSampleSiriTCP]", *(v13 + 6), *(v9 + 6));
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v3 < v4;
}

void __39__WFMeasure_shouldTimeoutSampleSiriTCP__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = a2;
  NSLog(&cfstr_SOverridingKwf_3.isa, "-[WFMeasure shouldTimeoutSampleSiriTCP]_block_invoke", v3, [v4 unsignedIntValue]);
  LODWORD(v3) = [v4 unsignedIntValue];

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

void __39__WFMeasure_shouldTimeoutSampleSiriTCP__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = a2;
  NSLog(&cfstr_SOverridingKwf_4.isa, "-[WFMeasure shouldTimeoutSampleSiriTCP]_block_invoke_2", v3, [v4 unsignedIntValue]);
  LODWORD(v3) = [v4 unsignedIntValue];

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

- (BOOL)shouldTimeoutSampleSiriTLS
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (MGGetBoolAnswer())
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__WFMeasure_shouldTimeoutSampleSiriTLS__block_invoke;
    v7[3] = &unk_2789C7628;
    v7[4] = &v12;
    [(WFMeasure *)self getLazyNSNumberPreference:@"siri_timeout_sampling_numerator" exists:v7];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __39__WFMeasure_shouldTimeoutSampleSiriTLS__block_invoke_2;
    v6[3] = &unk_2789C7628;
    v6[4] = &v8;
    [(WFMeasure *)self getLazyNSNumberPreference:@"siri_timeout_sampling_denominator" exists:v6];
  }

  v3 = arc4random_uniform(*(v9 + 6));
  v4 = *(v13 + 6);
  if (v3 >= v4)
  {
    NSLog(&cfstr_STimeoutTestNo_0.isa, "[WFMeasure shouldTimeoutSampleSiriTLS]", *(v13 + 6), *(v9 + 6));
  }

  else
  {
    NSLog(&cfstr_STimeoutTestSe_0.isa, "[WFMeasure shouldTimeoutSampleSiriTLS]", *(v13 + 6), *(v9 + 6));
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v3 < v4;
}

void __39__WFMeasure_shouldTimeoutSampleSiriTLS__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = a2;
  NSLog(&cfstr_SOverridingKwf_3.isa, "-[WFMeasure shouldTimeoutSampleSiriTLS]_block_invoke", v3, [v4 unsignedIntValue]);
  LODWORD(v3) = [v4 unsignedIntValue];

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

void __39__WFMeasure_shouldTimeoutSampleSiriTLS__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = a2;
  NSLog(&cfstr_SOverridingKwf_4.isa, "-[WFMeasure shouldTimeoutSampleSiriTLS]_block_invoke_2", v3, [v4 unsignedIntValue]);
  LODWORD(v3) = [v4 unsignedIntValue];

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

- (int)getTimeoutSampleTrafficClass
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  arc4random_uniform(0);
  NSLog(&cfstr_STimeoutTraffi.isa, "[WFMeasure getTimeoutSampleTrafficClass]");
  *(v7 + 6) = 0;
  if (MGGetBoolAnswer())
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __41__WFMeasure_getTimeoutSampleTrafficClass__block_invoke;
    v5[3] = &unk_2789C7628;
    v5[4] = &v6;
    [(WFMeasure *)self getLazyNSNumberPreference:@"siri_timeout_tclass" exists:v5];
  }

  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __41__WFMeasure_getTimeoutSampleTrafficClass__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  NSLog(&cfstr_SOverridingKwf_5.isa, "-[WFMeasure getTimeoutSampleTrafficClass]_block_invoke", [v3 intValue]);
  v4 = [v3 intValue];

  *(*(*(a1 + 32) + 8) + 24) = v4;
}

- (BOOL)shouldApsdSampleSiriTCP
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (MGGetBoolAnswer())
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__WFMeasure_shouldApsdSampleSiriTCP__block_invoke;
    v7[3] = &unk_2789C7628;
    v7[4] = &v12;
    [(WFMeasure *)self getLazyNSNumberPreference:@"apsd_sampling_numerator" exists:v7];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__WFMeasure_shouldApsdSampleSiriTCP__block_invoke_2;
    v6[3] = &unk_2789C7628;
    v6[4] = &v8;
    [(WFMeasure *)self getLazyNSNumberPreference:@"apsd_sampling_denominator" exists:v6];
  }

  v3 = arc4random_uniform(*(v9 + 6));
  v4 = *(v13 + 6);
  if (v3 >= v4)
  {
    NSLog(&cfstr_SApsdTestNotSe.isa, "[WFMeasure shouldApsdSampleSiriTCP]", *(v13 + 6), *(v9 + 6));
  }

  else
  {
    NSLog(&cfstr_SApsdTestSelec.isa, "[WFMeasure shouldApsdSampleSiriTCP]", *(v13 + 6), *(v9 + 6));
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v3 < v4;
}

void __36__WFMeasure_shouldApsdSampleSiriTCP__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = a2;
  NSLog(&cfstr_SOverridingKwf_6.isa, "-[WFMeasure shouldApsdSampleSiriTCP]_block_invoke", v3, [v4 unsignedIntValue]);
  LODWORD(v3) = [v4 unsignedIntValue];

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

void __36__WFMeasure_shouldApsdSampleSiriTCP__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = a2;
  NSLog(&cfstr_SOverridingKwf_7.isa, "-[WFMeasure shouldApsdSampleSiriTCP]_block_invoke_2", v3, [v4 unsignedIntValue]);
  LODWORD(v3) = [v4 unsignedIntValue];

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

- (BOOL)shouldApsdSampleSiriTLS
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (MGGetBoolAnswer())
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__WFMeasure_shouldApsdSampleSiriTLS__block_invoke;
    v7[3] = &unk_2789C7628;
    v7[4] = &v12;
    [(WFMeasure *)self getLazyNSNumberPreference:@"apsd_sampling_numerator" exists:v7];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__WFMeasure_shouldApsdSampleSiriTLS__block_invoke_2;
    v6[3] = &unk_2789C7628;
    v6[4] = &v8;
    [(WFMeasure *)self getLazyNSNumberPreference:@"apsd_sampling_denominator" exists:v6];
  }

  v3 = arc4random_uniform(*(v9 + 6));
  v4 = *(v13 + 6);
  if (v3 >= v4)
  {
    NSLog(&cfstr_SApsdTestNotSe_0.isa, "[WFMeasure shouldApsdSampleSiriTLS]", *(v13 + 6), *(v9 + 6));
  }

  else
  {
    NSLog(&cfstr_SApsdTestSelec_0.isa, "[WFMeasure shouldApsdSampleSiriTLS]", *(v13 + 6), *(v9 + 6));
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v3 < v4;
}

void __36__WFMeasure_shouldApsdSampleSiriTLS__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = a2;
  NSLog(&cfstr_SOverridingKwf_6.isa, "-[WFMeasure shouldApsdSampleSiriTLS]_block_invoke", v3, [v4 unsignedIntValue]);
  LODWORD(v3) = [v4 unsignedIntValue];

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

void __36__WFMeasure_shouldApsdSampleSiriTLS__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = a2;
  NSLog(&cfstr_SOverridingKwf_7.isa, "-[WFMeasure shouldApsdSampleSiriTLS]_block_invoke_2", v3, [v4 unsignedIntValue]);
  LODWORD(v3) = [v4 unsignedIntValue];

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

- (unsigned)getApsdSampleTrafficClass
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  arc4random_uniform(0);
  NSLog(&cfstr_SApsdTrafficCl.isa, "[WFMeasure getApsdSampleTrafficClass]");
  *(v7 + 6) = 0;
  if (MGGetBoolAnswer())
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __38__WFMeasure_getApsdSampleTrafficClass__block_invoke;
    v5[3] = &unk_2789C7628;
    v5[4] = &v6;
    [(WFMeasure *)self getLazyNSNumberPreference:@"apsd_tclass" exists:v5];
  }

  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __38__WFMeasure_getApsdSampleTrafficClass__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  NSLog(&cfstr_SOverridingKwf_8.isa, "-[WFMeasure getApsdSampleTrafficClass]_block_invoke", [v3 unsignedIntValue]);
  v4 = [v3 unsignedIntValue];

  *(*(*(a1 + 32) + 8) + 24) = v4;
}

- (void)retrieveNetworkConfigurations
{
  v3 = *MEMORY[0x277CBECE8];
  v4 = SCDynamicStoreCreate(*MEMORY[0x277CBECE8], @"com.apple.wifi.wfmeasure", 0, 0);
  v5 = SCPreferencesCreateWithAuthorization(v3, @"com.apple.wifi.wfmeasure", 0, 0);
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    gatewayAddress = [(WFMeasure *)self gatewayAddress];
    dnsServers = [(WFMeasure *)self dnsServers];
    NSLog(&cfstr_SCriticalNoScd.isa, "[WFMeasure retrieveNetworkConfigurations]", gatewayAddress, dnsServers);

    if (v4)
    {
      goto LABEL_26;
    }

    goto LABEL_7;
  }

  v10 = SCNetworkSetCopyCurrent(v5);
  if (!v10)
  {
    gatewayAddress2 = [(WFMeasure *)self gatewayAddress];
    dnsServers2 = [(WFMeasure *)self dnsServers];
    NSLog(&cfstr_SCriticalNoScn_0.isa, "[WFMeasure retrieveNetworkConfigurations]", gatewayAddress2, dnsServers2);

    goto LABEL_26;
  }

  v11 = v10;
  v12 = SCNetworkSetCopyServices(v10);
  if (v12)
  {
    v13 = v12;
    if (CFArrayGetCount(v12) < 1)
    {
LABEL_20:
      gatewayAddress3 = [(WFMeasure *)self gatewayAddress];
      dnsServers3 = [(WFMeasure *)self dnsServers];
      NSLog(&cfstr_SCriticalNoMat_0.isa, "[WFMeasure retrieveNetworkConfigurations]", gatewayAddress3, dnsServers3);
    }

    else
    {
      v14 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v13, v14);
        if (ValueAtIndex)
        {
          v16 = ValueAtIndex;
          Interface = SCNetworkServiceGetInterface(ValueAtIndex);
          if (Interface)
          {
            BSDName = SCNetworkInterfaceGetBSDName(Interface);
            if (BSDName)
            {
              v19 = BSDName;
              interfaceName = [(WFMeasure *)self interfaceName];
              v21 = CFStringCompare(v19, interfaceName, 0);

              if (v21 == kCFCompareEqualTo)
              {
                break;
              }
            }
          }
        }

        if (++v14 >= CFArrayGetCount(v13))
        {
          goto LABEL_20;
        }
      }

      ServiceID = SCNetworkServiceGetServiceID(v16);
      if (ServiceID)
      {
        v29 = ServiceID;
        v30 = *MEMORY[0x277CE1648];
        NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(v3, *MEMORY[0x277CE1648], ServiceID, *MEMORY[0x277CE1678]);
        v32 = SCDynamicStoreKeyCreateNetworkServiceEntity(v3, v30, v29, *MEMORY[0x277CE1688]);
        if (!NetworkServiceEntity)
        {
          dnsServers4 = [(WFMeasure *)self dnsServers];
          NSLog(&cfstr_SWarningNoDnsS.isa, "[WFMeasure retrieveNetworkConfigurations]", dnsServers4);

          goto LABEL_46;
        }

        v33 = SCDynamicStoreCopyValue(v4, NetworkServiceEntity);
        if (!v33)
        {
          dnsServers5 = [(WFMeasure *)self dnsServers];
          NSLog(&cfstr_SCriticalNoDns_0.isa, "[WFMeasure retrieveNetworkConfigurations]", NetworkServiceEntity, dnsServers5);

LABEL_45:
          CFRelease(NetworkServiceEntity);
LABEL_46:
          if (v32)
          {
            v43 = SCDynamicStoreCopyValue(v4, v32);
            if (v43)
            {
              v44 = v43;
              [(WFMeasure *)self setGatewayAddress:CFDictionaryGetValue(v43, *MEMORY[0x277CE1748])];
              CFRelease(v44);
            }

            else
            {
              NSLog(&cfstr_SWarningNoGate.isa, "[WFMeasure retrieveNetworkConfigurations]");
            }

            CFRelease(v32);
          }

          else
          {
            NSLog(&cfstr_SWarningNoGate_0.isa, "[WFMeasure retrieveNetworkConfigurations]");
          }

          goto LABEL_22;
        }

        v34 = v33;
        Value = CFDictionaryGetValue(v33, *MEMORY[0x277CE1710]);
        dnsServers6 = [(WFMeasure *)self dnsServers];
        dnsServers8 = dnsServers6;
        if (Value)
        {

          if (dnsServers8)
          {
            dnsServers7 = [(WFMeasure *)self dnsServers];
            [dnsServers7 removeAllObjects];
          }

          else
          {
            dnsServers7 = [MEMORY[0x277CBEB58] set];
            [(WFMeasure *)self setDnsServers:dnsServers7];
          }

          v41 = CFGetTypeID(Value);
          if (v41 == CFArrayGetTypeID())
          {
            dnsServers8 = [(WFMeasure *)self dnsServers];
            [dnsServers8 addObjectsFromArray:Value];
          }

          else
          {
            v42 = CFGetTypeID(Value);
            if (v42 != CFStringGetTypeID())
            {
LABEL_44:
              CFRelease(v34);
              goto LABEL_45;
            }

            dnsServers8 = [(WFMeasure *)self dnsServers];
            [dnsServers8 addObject:Value];
          }
        }

        else
        {
          NSLog(&cfstr_SCriticalNoDns.isa, "[WFMeasure retrieveNetworkConfigurations]", v34, dnsServers6);
        }

        goto LABEL_44;
      }

      gatewayAddress3 = [(WFMeasure *)self gatewayAddress];
      dnsServers3 = [(WFMeasure *)self dnsServers];
      NSLog(&cfstr_SCriticalNoMat.isa, "[WFMeasure retrieveNetworkConfigurations]", gatewayAddress3, dnsServers3);
    }

LABEL_22:
    CFRelease(v13);
    goto LABEL_25;
  }

  gatewayAddress4 = [(WFMeasure *)self gatewayAddress];
  dnsServers9 = [(WFMeasure *)self dnsServers];
  NSLog(&cfstr_SCriticalNoScn.isa, "[WFMeasure retrieveNetworkConfigurations]", gatewayAddress4, dnsServers9);

LABEL_25:
  CFRelease(v11);
  if (v4)
  {
LABEL_26:
    CFRelease(v4);
    if (!v6)
    {
      return;
    }

    goto LABEL_8;
  }

LABEL_7:
  if (!v6)
  {
    return;
  }

LABEL_8:

  CFRelease(v6);
}

- (void)initializePerformanceTest
{
  if (objc_opt_class())
  {
    if (objc_opt_class())
    {
      performanceTest = [(WFMeasure *)self performanceTest];

      if (!performanceTest)
      {
        defaultConfigurationWiFi = [MEMORY[0x277D2B8B8] defaultConfigurationWiFi];
        v8 = defaultConfigurationWiFi;
        if (defaultConfigurationWiFi)
        {
          [defaultConfigurationWiFi setDownloadSize:10];
          [v8 setUploadSize:10];
          processInfo = [MEMORY[0x277CCAC38] processInfo];
          processName = [processInfo processName];
          [v8 setClientName:processName];

          v7 = [MEMORY[0x277D2B8A8] performanceTestWithConfiguration:v8];
          [(WFMeasure *)self setPerformanceTest:v7];
        }

        else
        {
          NSLog(&cfstr_SPerformancete.isa, "[WFMeasure initializePerformanceTest]");
        }
      }
    }

    else
    {
      NSLog(&cfstr_SNptperformanc_0.isa, "[WFMeasure initializePerformanceTest]");
    }
  }

  else
  {
    NSLog(&cfstr_SNptperformanc.isa, "[WFMeasure initializePerformanceTest]");
  }
}

- (void)doThroughputTest
{
  NSLog(&cfstr_SPerformancete_0.isa, "[WFMeasure doThroughputTest]");
  NSLog(&cfstr_SDownloadTaskE_0.isa, "[WFMeasure doThroughputTest]");
  dispatchGroup = [self dispatchGroup];
  dispatch_group_leave(dispatchGroup);
}

void __29__WFMeasure_doThroughputTest__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_initWeak(&location, WeakRetained);
  v9 = +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
  [v9 networkActivityStart:2 activate:1];

  NSLog(&cfstr_SDownloadTaskS.isa, "[WFMeasure doThroughputTest]_block_invoke");
  v10 = [WeakRetained performanceTest];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __29__WFMeasure_doThroughputTest__block_invoke_2;
  v11[3] = &unk_2789C7678;
  objc_copyWeak(&v12, &location);
  v13 = *(a1 + 40);
  [v10 startDownloadWithCompletion:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  objc_autoreleasePoolPop(v7);
}

void __29__WFMeasure_doThroughputTest__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [v5 fileSize];
  [v5 speed];
  v11 = v10;
  v12 = [WeakRetained performanceTest];
  [v12 stopMetadataCollection];

  if (v6)
  {
    NSLog(&cfstr_SDownloadTaskE.isa, "[WFMeasure doThroughputTest]_block_invoke_2", v6);
    v13 = 3;
  }

  else
  {
    NSLog(&cfstr_SLqmWifiDownlo.isa, "[WFMeasure doThroughputTest]_block_invoke_2", v9, (8 * v9) / (v11 * 1000000.0), *&v11);
    v13 = 2;
  }

  v14 = [WeakRetained result];
  [v14 setBackhaulThroughput:v11];

  v15 = [WeakRetained result];
  [v15 setDownloadError:v6];

  v16 = [WeakRetained result];
  [v16 setBackhaulResultsValid:1];

  v17 = +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
  [v17 networkActivityStop:2 withReason:v13 withClientMetric:0 withClientDict:0 andError:0];

  if (([WeakRetained options] & 0x100) != 0)
  {
    [WeakRetained dispatchULThroughputTest];
  }

  else
  {
    if (!v6)
    {
      v18 = [WeakRetained performanceTest];
      [v18 save];

      v19 = [WeakRetained performanceTest];
      v20 = [v19 getTransformedDataForCoreAnalytics];

      v21 = [v20 mutableCopy];
      v22 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
      [v21 setObject:v22 forKeyedSubscript:@"isSlowWiFi"];

      v23 = v21;
      AnalyticsSendEventLazy();
    }

    v24 = [WeakRetained dispatchGroup];
    dispatch_group_leave(v24);
  }

  objc_autoreleasePoolPop(v7);
}

- (void)doULThroughputTest
{
  NSLog(&cfstr_SPerformancete_0.isa, "[WFMeasure doULThroughputTest]");
  NSLog(&cfstr_SUploadTaskExi.isa, "[WFMeasure doULThroughputTest]");
  dispatchGroup = [self dispatchGroup];
  dispatch_group_leave(dispatchGroup);
}

void __31__WFMeasure_doULThroughputTest__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_initWeak(&location, WeakRetained);
  v9 = +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
  [v9 networkActivityStart:11 activate:1];

  NSLog(&cfstr_SUploadTaskSta.isa, "[WFMeasure doULThroughputTest]_block_invoke");
  v10 = [WeakRetained performanceTest];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __31__WFMeasure_doULThroughputTest__block_invoke_2;
  v11[3] = &unk_2789C7678;
  objc_copyWeak(&v12, &location);
  v13 = *(a1 + 40);
  [v10 startUploadWithCompletion:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  objc_autoreleasePoolPop(v7);
}

void __31__WFMeasure_doULThroughputTest__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [v5 fileSize];
  [v5 speed];
  v11 = v10;
  v12 = [WeakRetained performanceTest];
  [v12 stopMetadataCollection];

  if (v6)
  {
    NSLog(&cfstr_SUploadTaskErr.isa, "[WFMeasure doULThroughputTest]_block_invoke_2", v6);
    v13 = 3;
  }

  else
  {
    NSLog(&cfstr_SLqmWifiUpload.isa, "[WFMeasure doULThroughputTest]_block_invoke_2", v9, (8 * v9) / (v11 * 1000000.0), *&v11);
    v13 = 2;
  }

  v14 = [WeakRetained result];
  [v14 setBackhaulULThroughput:v11];

  v15 = [WeakRetained result];
  [v15 setUploadError:v6];

  v16 = +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
  [v16 networkActivityStop:11 withReason:v13 withClientMetric:0 withClientDict:0 andError:0];

  if (!v6)
  {
    v17 = [WeakRetained performanceTest];
    [v17 save];

    v18 = [WeakRetained performanceTest];
    v19 = [v18 getTransformedDataForCoreAnalytics];

    v20 = [v19 mutableCopy];
    v21 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
    [v20 setObject:v21 forKeyedSubscript:@"isSlowWiFi"];

    v22 = v20;
    AnalyticsSendEventLazy();
  }

  v23 = [WeakRetained dispatchGroup];

  if (v23)
  {
    v24 = [WeakRetained dispatchGroup];
    dispatch_group_leave(v24);
  }

  objc_autoreleasePoolPop(v7);
}

- (void)dispatchThroughputTest
{
  internalQueue = [(WFMeasure *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__WFMeasure_dispatchThroughputTest__block_invoke;
  block[3] = &unk_2789C6630;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)dispatchULThroughputTest
{
  internalQueue = [(WFMeasure *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__WFMeasure_dispatchULThroughputTest__block_invoke;
  block[3] = &unk_2789C6630;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (BOOL)doPing:(id)ping count:(int64_t)count timeout:(int64_t)timeout size:(int64_t)size class:(int64_t)class minRTT:(int64_t *)t maxRTT:(int64_t *)tT successCount:(int64_t *)self0
{
  v41[3] = *MEMORY[0x277D85DE8];
  pingCopy = ping;
  if (!pingCopy)
  {
    NSLog(&cfstr_SNullAddress.isa, "[WFMeasure doPing:count:timeout:size:class:minRTT:maxRTT:successCount:]");
LABEL_29:
    v28 = 0;
    goto LABEL_23;
  }

  if ((count - 0x7FFFFFFF) < 0xFFFFFFFF80000002)
  {
    NSLog(&cfstr_SInvalidCountD.isa, "[WFMeasure doPing:count:timeout:size:class:minRTT:maxRTT:successCount:]", count);
    goto LABEL_29;
  }

  if ((timeout - 0x7FFFFFFF) < 0xFFFFFFFF80000002)
  {
    NSLog(&cfstr_SInvalidTimeou.isa, "[WFMeasure doPing:count:timeout:size:class:minRTT:maxRTT:successCount:]", timeout);
    goto LABEL_29;
  }

  if ((size - 0x7FFFFFFF) < 0xFFFFFFFF80000002)
  {
    NSLog(&cfstr_SInvalidSizeD.isa, "[WFMeasure doPing:count:timeout:size:class:minRTT:maxRTT:successCount:]", size);
    goto LABEL_29;
  }

  if (class > 0x7FFFFFFE)
  {
    NSLog(&cfstr_SInvalidTraffi.isa, "[WFMeasure doPing:count:timeout:size:class:minRTT:maxRTT:successCount:]", class);
    goto LABEL_29;
  }

  tCopy = t;
  v13 = 0;
  v35 = *MEMORY[0x277CBAD10];
  v36 = *MEMORY[0x277CBAD18];
  v33 = *MEMORY[0x277CBAD20];
  v34 = *MEMORY[0x277CBAD08];
  v14 = 0xFFFFFFFF80000000;
  v15 = 0x7FFFFFFFLL;
  countCopy = count;
  do
  {
    v40[0] = v36;
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:timeout];
    v41[0] = v16;
    v41[1] = &unk_2848B9A88;
    v40[1] = v35;
    v40[2] = v34;
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:size];
    v41[2] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];

    v19 = [v18 mutableCopy];
    if (class)
    {
      v20 = [MEMORY[0x277CCABB0] numberWithInteger:class];
      [v19 setObject:v20 forKeyedSubscript:v33];
    }

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v22 = v21;
    v23 = CFNetDiagnosticPingWithOptions();
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v24 = v23 == 0;
    v26 = (v25 - v22) * 1000.0;
    v27 = v26;
    if (!v24)
    {
      ++v13;
    }

    if (v14 <= v27)
    {
      v14 = v26;
    }

    if (v15 >= v27)
    {
      v15 = v26;
    }

    --count;
  }

  while (count);
  NSLog(&cfstr_SLqmWifiPingAd.isa, "[WFMeasure doPing:count:timeout:size:class:minRTT:maxRTT:successCount:]", pingCopy, countCopy, timeout, size, class, v27, v13);
  if (tT)
  {
    *tT = v14;
  }

  if (tCopy)
  {
    *tCopy = v15;
  }

  if (successCount)
  {
    *successCount = v13;
  }

  v28 = 1;
LABEL_23:

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (void)dispatchPingTest:(unint64_t)test
{
  v5 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_2848BAD18];
  v6 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_2848BAD30];
  v7 = +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
  v8 = v7;
  if (test == 8)
  {
    v12 = 1;
    [v7 networkActivityStart:6 activate:1];

    publicDNSAddress = [(WFMeasure *)self publicDNSAddress];
    v9 = 5;
  }

  else
  {
    if (test == 4)
    {
      v9 = 5;
      [v7 networkActivityStart:5 activate:1];

      dnsServers = [(WFMeasure *)self dnsServers];
      publicDNSAddress = [dnsServers anyObject];

      v12 = 3;
    }

    else
    {
      v12 = 1;
      [v7 networkActivityStart:4 activate:1];

      publicDNSAddress = [(WFMeasure *)self gatewayAddress];
      [v5 addObjectsFromArray:&unk_2848BAD48];
      v9 = 1;
    }

    [v6 addObjectsFromArray:&unk_2848BAD60];
  }

  v13 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__WFMeasure_dispatchPingTest___block_invoke;
  block[3] = &unk_2789C7718;
  v18 = v6;
  v19 = v5;
  selfCopy = self;
  v21 = publicDNSAddress;
  v22 = v12;
  v23 = v9;
  testCopy = test;
  v14 = publicDNSAddress;
  v15 = v5;
  v16 = v6;
  dispatch_async(v13, block);
}

void __30__WFMeasure_dispatchPingTest___block_invoke(uint64_t a1)
{
  v93 = *MEMORY[0x277D85DE8];
  v90 = 0;
  v89 = 0;
  v85 = 0;
  v86 = &v85;
  v87 = 0x2020000000;
  v88 = 0;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v81 objects:v92 count:16];
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v54 = *v82;
    v55 = v2;
    v61 = 0x7FFFFFFFLL;
    v62 = 0xFFFFFFFF80000000;
    while (1)
    {
      for (i = 0; i != v55; ++i)
      {
        if (*v82 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v60 = *(*(&v81 + 1) + 8 * i);
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v57 = *(a1 + 40);
        v5 = [v57 countByEnumeratingWithState:&v77 objects:v91 count:16];
        if (!v5)
        {
          goto LABEL_83;
        }

        v59 = *v78;
        while (2)
        {
          v6 = 0;
          v58 = v5;
          do
          {
            if (*v78 != v59)
            {
              objc_enumerationMutation(v57);
            }

            v7 = *(*(&v77 + 1) + 8 * v6);
            v8 = *(a1 + 48);
            v9 = *(a1 + 56);
            v10 = *(a1 + 64);
            v11 = *(a1 + 72);
            v12 = [v60 integerValue];
            v13 = [v7 integerValue];
            v14 = [v8 doPing:v9 count:v10 timeout:v11 size:v12 class:v13 minRTT:&v90 maxRTT:&v89 successCount:v86 + 3];
            if (MGGetBoolAnswer() && *(a1 + 80) == 4)
            {
              v15 = *(a1 + 48);
              v76[0] = MEMORY[0x277D85DD0];
              v76[1] = 3221225472;
              v76[2] = __30__WFMeasure_dispatchPingTest___block_invoke_2;
              v76[3] = &unk_2789C7628;
              v76[4] = &v85;
              [v15 getLazyNSNumberPreference:@"local_dns_result" exists:v76];
            }

            if (MGGetBoolAnswer() && *(a1 + 80) == 8)
            {
              v16 = *(a1 + 48);
              v75[0] = MEMORY[0x277D85DD0];
              v75[1] = 3221225472;
              v75[2] = __30__WFMeasure_dispatchPingTest___block_invoke_3;
              v75[3] = &unk_2789C7628;
              v75[4] = &v85;
              [v16 getLazyNSNumberPreference:@"public_dns_result" exists:v75];
            }

            if (MGGetBoolAnswer() && *(a1 + 80) == 2)
            {
              v17 = *(a1 + 48);
              v74[0] = MEMORY[0x277D85DD0];
              v74[1] = 3221225472;
              v74[2] = __30__WFMeasure_dispatchPingTest___block_invoke_4;
              v74[3] = &unk_2789C7628;
              v74[4] = &v85;
              [v17 getLazyNSNumberPreference:@"gateway_result" exists:v74];
            }

            if (MGGetBoolAnswer())
            {
              v18 = *(a1 + 80);
              if (v18 <= 8 && ((1 << v18) & 0x114) != 0)
              {
                v19 = *(a1 + 48);
                v73[0] = MEMORY[0x277D85DD0];
                v73[1] = 3221225472;
                v73[2] = __30__WFMeasure_dispatchPingTest___block_invoke_5;
                v73[3] = &unk_2789C76C8;
                v73[4] = v7;
                v73[5] = &v85;
                [v19 getLazyNSNumberPreference:@"fail_pings_ac" exists:v73];
              }
            }

            v20 = v86[3];
            if (v61 >= v90)
            {
              v21 = v90;
            }

            else
            {
              v21 = v61;
            }

            v22 = v62;
            if (v62 <= v89)
            {
              v22 = v89;
            }

            v61 = v21;
            v62 = v22;
            if (v14)
            {
              v23 = [v7 integerValue];
              if (v23 > 699)
              {
                if (v23 == 700)
                {
                  v33 = [v60 integerValue];
                  v34 = *(a1 + 48);
                  if (v33 == 300)
                  {
                    v35 = [v34 result];
                    [v35 setTrafficClassVIAttemptedSmall:{*(a1 + 64) + objc_msgSend(v35, "trafficClassVIAttemptedSmall")}];
                  }

                  else
                  {
                    v35 = [v34 result];
                    [v35 setTrafficClassVIAttemptedLarge:{*(a1 + 64) + objc_msgSend(v35, "trafficClassVIAttemptedLarge")}];
                  }

                  if (v86[3] >= 1)
                  {
                    v43 = [v60 integerValue];
                    v44 = *(a1 + 48);
                    if (v43 == 300)
                    {
                      v38 = [v44 result];
                      [v38 setTrafficClassVISucceededSmall:{v86[3] + objc_msgSend(v38, "trafficClassVISucceededSmall")}];
                    }

                    else
                    {
                      v38 = [v44 result];
                      [v38 setTrafficClassVISucceededLarge:{v86[3] + objc_msgSend(v38, "trafficClassVISucceededLarge")}];
                    }

                    goto LABEL_63;
                  }
                }

                else if (v23 == 800)
                {
                  v27 = [v60 integerValue];
                  v28 = *(a1 + 48);
                  if (v27 == 300)
                  {
                    v29 = [v28 result];
                    [v29 setTrafficClassVOAttemptedSmall:{*(a1 + 64) + objc_msgSend(v29, "trafficClassVOAttemptedSmall")}];
                  }

                  else
                  {
                    v29 = [v28 result];
                    [v29 setTrafficClassVOAttemptedLarge:{*(a1 + 64) + objc_msgSend(v29, "trafficClassVOAttemptedLarge")}];
                  }

                  if (v86[3] >= 1)
                  {
                    v39 = [v60 integerValue];
                    v40 = *(a1 + 48);
                    if (v39 == 300)
                    {
                      v38 = [v40 result];
                      [v38 setTrafficClassVOSucceededSmall:{v86[3] + objc_msgSend(v38, "trafficClassVOSucceededSmall")}];
                    }

                    else
                    {
                      v38 = [v40 result];
                      [v38 setTrafficClassVOSucceededLarge:{v86[3] + objc_msgSend(v38, "trafficClassVOSucceededLarge")}];
                    }

                    goto LABEL_63;
                  }
                }
              }

              else if (v23)
              {
                if (v23 == 200)
                {
                  v24 = [v60 integerValue];
                  v25 = *(a1 + 48);
                  if (v24 == 300)
                  {
                    v26 = [v25 result];
                    [v26 setTrafficClassBKAttemptedSmall:{*(a1 + 64) + objc_msgSend(v26, "trafficClassBKAttemptedSmall")}];
                  }

                  else
                  {
                    v26 = [v25 result];
                    [v26 setTrafficClassBKAttemptedLarge:{*(a1 + 64) + objc_msgSend(v26, "trafficClassBKAttemptedLarge")}];
                  }

                  if (v86[3] >= 1)
                  {
                    v36 = [v60 integerValue];
                    v37 = *(a1 + 48);
                    if (v36 == 300)
                    {
                      v38 = [v37 result];
                      [v38 setTrafficClassBKSucceededSmall:{v86[3] + objc_msgSend(v38, "trafficClassBKSucceededSmall")}];
                    }

                    else
                    {
                      v38 = [v37 result];
                      [v38 setTrafficClassBKSucceededLarge:{v86[3] + objc_msgSend(v38, "trafficClassBKSucceededLarge")}];
                    }

LABEL_63:
                  }
                }
              }

              else
              {
                v30 = [v60 integerValue];
                v31 = *(a1 + 48);
                if (v30 == 300)
                {
                  v32 = [v31 result];
                  [v32 setTrafficClassBEAttemptedSmall:{*(a1 + 64) + objc_msgSend(v32, "trafficClassBEAttemptedSmall")}];
                }

                else
                {
                  v32 = [v31 result];
                  [v32 setTrafficClassBEAttemptedLarge:{*(a1 + 64) + objc_msgSend(v32, "trafficClassBEAttemptedLarge")}];
                }

                if (v86[3] >= 1)
                {
                  v41 = [v60 integerValue];
                  v42 = *(a1 + 48);
                  if (v41 == 300)
                  {
                    v38 = [v42 result];
                    [v38 setTrafficClassBESucceededSmall:{v86[3] + objc_msgSend(v38, "trafficClassBESucceededSmall")}];
                  }

                  else
                  {
                    v38 = [v42 result];
                    [v38 setTrafficClassBESucceededLarge:{v86[3] + objc_msgSend(v38, "trafficClassBESucceededLarge")}];
                  }

                  goto LABEL_63;
                }
              }
            }

            v45 = *(a1 + 48);
            if (v45[13] == 1 && !v86[3])
            {
              v46 = [v45 result];
              [v46 setSeenSpecificAcFailure:1];
            }

            v47 = *(a1 + 80);
            switch(v47)
            {
              case 2:
                v48 = [*(a1 + 48) result];
                [v48 setGatewayResultsValid:v14];
                goto LABEL_73;
              case 8:
                v48 = [*(a1 + 48) result];
                [v48 setPublicResultsValid:v14];
                goto LABEL_73;
              case 4:
                v48 = [*(a1 + 48) result];
                [v48 setLocalResultsValid:v14];
LABEL_73:

                goto LABEL_75;
            }

            NSLog(&cfstr_SNotARecogniza.isa, "[WFMeasure dispatchPingTest:]_block_invoke");
LABEL_75:
            v3 += v10;
            v4 += v20;
            if ((v14 & 1) == 0)
            {
              if (!*(a1 + 56))
              {
                if (MGGetBoolAnswer())
                {
                  NSLog(&cfstr_SPingingLocald.isa, "[WFMeasure dispatchPingTest:]_block_invoke");
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
                  {
                    __30__WFMeasure_dispatchPingTest___block_invoke_cold_1(&buf, v72);
                  }
                }
              }

              goto LABEL_83;
            }

            ++v6;
          }

          while (v58 != v6);
          v5 = [v57 countByEnumeratingWithState:&v77 objects:v91 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }

LABEL_83:
      }

      v55 = [obj countByEnumeratingWithState:&v81 objects:v92 count:16];
      if (!v55)
      {
        goto LABEL_87;
      }
    }
  }

  v3 = 0;
  v4 = 0;
  v61 = 0x7FFFFFFFLL;
  v62 = 0xFFFFFFFF80000000;
LABEL_87:

  v49 = [*(a1 + 48) internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__WFMeasure_dispatchPingTest___block_invoke_417;
  block[3] = &unk_2789C76F0;
  v66 = v3;
  v67 = v4;
  v50 = *(a1 + 56);
  v68 = v61;
  v69 = v62;
  v70 = *(a1 + 80);
  v51 = *(a1 + 48);
  v64 = v50;
  v65 = v51;
  dispatch_sync(v49, block);

  _Block_object_dispose(&v85, 8);
  v52 = *MEMORY[0x277D85DE8];
}

void __30__WFMeasure_dispatchPingTest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = a2;
  NSLog(&cfstr_SOverridingKwf_9.isa, "-[WFMeasure dispatchPingTest:]_block_invoke_2", v3, [v4 integerValue]);
  LODWORD(v3) = [v4 BOOLValue];

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

void __30__WFMeasure_dispatchPingTest___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = a2;
  NSLog(&cfstr_SOverridingKwf_10.isa, "-[WFMeasure dispatchPingTest:]_block_invoke_3", v3, [v4 integerValue]);
  LODWORD(v3) = [v4 BOOLValue];

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

void __30__WFMeasure_dispatchPingTest___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = a2;
  NSLog(&cfstr_SOverridingKwf_11.isa, "-[WFMeasure dispatchPingTest:]_block_invoke_4", v3, [v4 integerValue]);
  LODWORD(v3) = [v4 BOOLValue];

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

void __30__WFMeasure_dispatchPingTest___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) integerValue];
  if (v3 == [v4 integerValue])
  {
    NSLog(&cfstr_SOverridingKwf_12.isa, "-[WFMeasure dispatchPingTest:]_block_invoke_5", [v4 integerValue], *(*(*(a1 + 40) + 8) + 24), objc_msgSend(v4, "integerValue"));
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void __30__WFMeasure_dispatchPingTest___block_invoke_417(uint64_t a1)
{
  v2 = (*(a1 + 48) - *(a1 + 56)) / *(a1 + 48) * 100.0;
  NSLog(&cfstr_SLqmWifiPingTe.isa, "[WFMeasure dispatchPingTest:]_block_invoke", *(a1 + 32), *(a1 + 64), *(a1 + 72), *&v2);
  if (*(a1 + 56) > 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  v4 = *(a1 + 80);
  switch(v4)
  {
    case 2:
      v21 = *(a1 + 64);
      v22 = [*(a1 + 40) result];
      [v22 setGatewayMinRTT:v21];

      v23 = *(a1 + 72);
      v24 = [*(a1 + 40) result];
      [v24 setGatewayMaxRTT:v23];

      v25 = [*(a1 + 40) result];
      [v25 setGatewayPacketLoss:v2];

      v26 = [*(a1 + 40) result];
      LODWORD(v25) = [v26 gatewayResultsValid];

      if (v25)
      {
        v11 = v3;
      }

      else
      {
        v11 = 3;
      }

      v12 = +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
      v13 = v12;
      v14 = 4;
      goto LABEL_19;
    case 8:
      v15 = *(a1 + 64);
      v16 = [*(a1 + 40) result];
      [v16 setPublicDNSMinRTT:v15];

      v17 = *(a1 + 72);
      v18 = [*(a1 + 40) result];
      [v18 setPublicDNSMaxRTT:v17];

      v19 = [*(a1 + 40) result];
      [v19 setPublicDNSPacketLoss:v2];

      v20 = [*(a1 + 40) result];
      LODWORD(v19) = [v20 publicResultsValid];

      if (v19)
      {
        v11 = v3;
      }

      else
      {
        v11 = 3;
      }

      v12 = +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
      v13 = v12;
      v14 = 6;
      goto LABEL_19;
    case 4:
      v5 = *(a1 + 64);
      v6 = [*(a1 + 40) result];
      [v6 setLocalDNSMinRTT:v5];

      v7 = *(a1 + 72);
      v8 = [*(a1 + 40) result];
      [v8 setLocalDNSMaxRTT:v7];

      v9 = [*(a1 + 40) result];
      [v9 setLocalDNSPacketLoss:v2];

      v10 = [*(a1 + 40) result];
      LODWORD(v9) = [v10 gatewayResultsValid];

      if (v9)
      {
        v11 = v3;
      }

      else
      {
        v11 = 3;
      }

      v12 = +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
      v13 = v12;
      v14 = 5;
LABEL_19:
      [v12 networkActivityStop:v14 withReason:v11 withClientMetric:0 withClientDict:0 andError:0];

      goto LABEL_21;
  }

  NSLog(&cfstr_SNotARecogniza.isa, "[WFMeasure dispatchPingTest:]_block_invoke");
LABEL_21:
  v27 = [*(a1 + 40) dispatchGroup];
  dispatch_group_leave(v27);
}

- (BOOL)doDNSResolution:(id)resolution timeout:(int64_t)timeout
{
  resolutionCopy = resolution;
  error.domain = 0;
  *&error.error = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = CFHostCreateWithName(*MEMORY[0x277CBECE8], resolutionCopy);
  v5 = v15[3];
  if (v5)
  {
    started = CFHostStartInfoResolution(v5, kCFHostAddresses, &error);
    CFRetain(v15[3]);
    v7 = dispatch_time(0, 5000000);
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__WFMeasure_doDNSResolution_timeout___block_invoke;
    block[3] = &unk_2789C75C0;
    block[4] = &v14;
    dispatch_after(v7, v8, block);

    if (started)
    {
      Addressing = CFHostGetAddressing(v15[3], 0);
      if (Addressing)
      {
        v10 = CFArrayGetCount(Addressing) != 0;
        goto LABEL_8;
      }
    }

    else
    {
      NSLog(&cfstr_SCfhoststartin.isa, "[WFMeasure doDNSResolution:timeout:]", error.error);
    }
  }

  else
  {
    NSLog(&cfstr_SHostrefIsNull.isa, "[WFMeasure doDNSResolution:timeout:]");
  }

  v10 = 0;
LABEL_8:
  v11 = v15[3];
  if (v11)
  {
    CFRelease(v11);
  }

  _Block_object_dispose(&v14, 8);

  return v10;
}

void __37__WFMeasure_doDNSResolution_timeout___block_invoke(uint64_t a1)
{
  CFHostCancelInfoResolution(*(*(*(a1 + 32) + 8) + 24), kCFHostAddresses);
  v2 = *(*(*(a1 + 32) + 8) + 24);

  CFRelease(v2);
}

- (void)dispatchDNSTest:(id)test
{
  testCopy = test;
  v5 = +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
  [v5 networkActivityStart:7 activate:1];

  v6 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __29__WFMeasure_dispatchDNSTest___block_invoke;
  v8[3] = &unk_2789C6608;
  v8[4] = self;
  v9 = testCopy;
  v7 = testCopy;
  dispatch_async(v6, v8);
}

void __29__WFMeasure_dispatchDNSTest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) doDNSResolution:*(a1 + 40) timeout:5];
  v3 = [*(a1 + 32) internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__WFMeasure_dispatchDNSTest___block_invoke_2;
  block[3] = &unk_2789C6C20;
  v7 = v2;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  dispatch_sync(v3, block);
}

void __29__WFMeasure_dispatchDNSTest___block_invoke_2(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = *(a1 + 48);
  if (MGGetBoolAnswer())
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __29__WFMeasure_dispatchDNSTest___block_invoke_3;
    v12[3] = &unk_2789C76C8;
    v2 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = &v15;
    [v2 getLazyNSNumberPreference:@"resolve_apple_result" exists:v12];
  }

  v3 = *(a1 + 40);
  if (*(v16 + 24))
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  NSLog(&cfstr_SLqmWifiDnsTes.isa, "[WFMeasure dispatchDNSTest:]_block_invoke_2", *(a1 + 40), v4);
  v5 = *(v16 + 24);
  v6 = [*(a1 + 32) result];
  [v6 setDnsSuccess:v5];

  v7 = [*(a1 + 32) result];
  [v7 setDnsResultsValid:1];

  v8 = +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
  v9 = v8;
  if (*(v16 + 24))
  {
    v10 = 2;
  }

  else
  {
    v10 = 3;
  }

  [v8 networkActivityStop:7 withReason:v10 withClientMetric:0 withClientDict:0 andError:0];

  v11 = [*(a1 + 32) dispatchGroup];
  dispatch_group_leave(v11);

  _Block_object_dispose(&v15, 8);
}

void __29__WFMeasure_dispatchDNSTest___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 40) + 8) + 24);
  v5 = a2;
  NSLog(&cfstr_SOverridingKwf_13.isa, "-[WFMeasure dispatchDNSTest:]_block_invoke_3", v3, v4, [v5 BOOLValue]);
  LOBYTE(v3) = [v5 BOOLValue];

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (void)dispatchSiriTest:(int64_t)test trafficClass:(unsigned int)class
{
  if (test >= 3)
  {
    [WFMeasure dispatchSiriTest:trafficClass:];
  }

  v7 = +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
  [v7 networkActivityStart:test | 8 activate:1];

  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__WFMeasure_dispatchSiriTest_trafficClass___block_invoke;
  block[3] = &unk_2789C7790;
  classCopy = class;
  block[4] = self;
  block[5] = test;
  dispatch_async(v8, block);
}

void __43__WFMeasure_dispatchSiriTest_trafficClass___block_invoke(uint64_t a1)
{
  v2 = [SiriNWConnection alloc];
  v3 = [*(a1 + 32) internalQueue];
  v4 = [*(a1 + 32) testReason];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__WFMeasure_dispatchSiriTest_trafficClass___block_invoke_2;
  v7[3] = &unk_2789C7768;
  v8 = *(a1 + 48);
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v7[5] = v5;
  v6 = [(SiriNWConnection *)v2 initWithQueueAndCompletion:v3 reason:v4 callback:v7];

  NSLog(&cfstr_Sirinwconnecti_1.isa);
  [(SiriNWConnection *)v6 runSiriProbeWithDepth:*(a1 + 40) trafficClass:*(a1 + 48)];
}

void __43__WFMeasure_dispatchSiriTest_trafficClass___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = a2;
  if (MGGetBoolAnswer())
  {
    v6 = *(a1 + 32);
    if (v6[10] == 1)
    {
      if (v6[12] == 1)
      {
        v7 = v41;
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v8 = @"siri_timeout_retest_result";
        v9 = __43__WFMeasure_dispatchSiriTest_trafficClass___block_invoke_3;
      }

      else
      {
        v7 = v40;
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v8 = @"siri_timeout_result";
        v9 = __43__WFMeasure_dispatchSiriTest_trafficClass___block_invoke_4;
      }

      v7[2] = v9;
      v7[3] = &unk_2789C7740;
      *(v7 + 40) = a2;
      v7[4] = &v42;
      [v6 getLazyNSNumberPreference:v8 exists:?];
    }

    v10 = *(a1 + 32);
    if (v10[9] == 1)
    {
      if (v10[12] == 1)
      {
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __43__WFMeasure_dispatchSiriTest_trafficClass___block_invoke_5;
        v39[3] = &unk_2789C76C8;
        v39[4] = v10;
        v39[5] = &v42;
        [v10 getLazyNSNumberPreference:@"periodic_siri_retest_result" exists:v39];
      }

      else
      {
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __43__WFMeasure_dispatchSiriTest_trafficClass___block_invoke_6;
        v38[3] = &unk_2789C76C8;
        v38[4] = v10;
        v38[5] = &v42;
        [v10 getLazyNSNumberPreference:@"periodic_siri_result" exists:v38];
      }
    }

    v11 = *(a1 + 32);
    if (v11[11] == 1)
    {
      if (v11[12] == 1)
      {
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __43__WFMeasure_dispatchSiriTest_trafficClass___block_invoke_7;
        v37[3] = &unk_2789C76C8;
        v37[4] = v11;
        v37[5] = &v42;
        [v11 getLazyNSNumberPreference:@"apsd_retest_result" exists:v37];
      }

      else
      {
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __43__WFMeasure_dispatchSiriTest_trafficClass___block_invoke_8;
        v36[3] = &unk_2789C76C8;
        v36[4] = v11;
        v36[5] = &v42;
        [v11 getLazyNSNumberPreference:@"apsd_result" exists:v36];
      }
    }
  }

  if (*(v43 + 24) != 1)
  {
    NSLog(&cfstr_Sirinwconnecti_0.isa, v5);
    goto LABEL_28;
  }

  NSLog(&cfstr_Sirinwconnecti.isa);
  v12 = *(a1 + 48);
  if (v12 <= 599)
  {
    if (v12)
    {
      if (v12 != 200)
      {
        goto LABEL_28;
      }

      v15 = [*(a1 + 32) result];
      [v15 setTrafficClassBKAttemptedLarge:{objc_msgSend(v15, "trafficClassBKAttemptedLarge") + 1}];

      v14 = [*(a1 + 32) result];
      [v14 setTrafficClassBKSucceededLarge:{objc_msgSend(v14, "trafficClassBKSucceededLarge") + 1}];
    }

    else
    {
      v17 = [*(a1 + 32) result];
      [v17 setTrafficClassBEAttemptedLarge:{objc_msgSend(v17, "trafficClassBEAttemptedLarge") + 1}];

      v14 = [*(a1 + 32) result];
      [v14 setTrafficClassBESucceededLarge:{objc_msgSend(v14, "trafficClassBESucceededLarge") + 1}];
    }
  }

  else if (v12 == 600 || v12 == 700)
  {
    v16 = [*(a1 + 32) result];
    [v16 setTrafficClassVIAttemptedLarge:{objc_msgSend(v16, "trafficClassVIAttemptedLarge") + 1}];

    v14 = [*(a1 + 32) result];
    [v14 setTrafficClassVISucceededLarge:{objc_msgSend(v14, "trafficClassVISucceededLarge") + 1}];
  }

  else
  {
    if (v12 != 800)
    {
      goto LABEL_28;
    }

    v13 = [*(a1 + 32) result];
    [v13 setTrafficClassVOAttemptedLarge:{objc_msgSend(v13, "trafficClassVOAttemptedLarge") + 1}];

    v14 = [*(a1 + 32) result];
    [v14 setTrafficClassVOSucceededLarge:{objc_msgSend(v14, "trafficClassVOSucceededLarge") + 1}];
  }

LABEL_28:
  v18 = *(a1 + 48);
  v19 = [*(a1 + 32) result];
  [v19 setSiriTrafficClass:v18];

  v20 = *(a1 + 40);
  if (v20 == 2)
  {
    v31 = *(v43 + 24);
    v32 = [*(a1 + 32) result];
    [v32 setSiriACESuccess:v31];

    v33 = [*(a1 + 32) result];
    [v33 setSiriACEResultsValid:1];

    v24 = +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
    v25 = [*(a1 + 32) result];
    if ([v25 siriACESuccess])
    {
      v34 = 2;
    }

    else
    {
      v34 = 3;
    }

    [v24 networkActivityStop:10 withReason:v34 withClientMetric:0 withClientDict:0 andError:0];
  }

  else if (v20 == 1)
  {
    v27 = *(v43 + 24);
    v28 = [*(a1 + 32) result];
    [v28 setSiriTLSSuccess:v27];

    v29 = [*(a1 + 32) result];
    [v29 setSiriTLSResultsValid:1];

    v24 = +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
    v25 = [*(a1 + 32) result];
    if ([v25 siriTLSSuccess])
    {
      v30 = 2;
    }

    else
    {
      v30 = 3;
    }

    [v24 networkActivityStop:9 withReason:v30 withClientMetric:0 withClientDict:0 andError:0];
  }

  else
  {
    if (v20)
    {
      NSLog(&cfstr_Dispatchsirite.isa);
      __assert_rtn("[WFMeasure dispatchSiriTest:trafficClass:]_block_invoke_2", "WFMeasure.m", 1504, "false");
    }

    v21 = *(v43 + 24);
    v22 = [*(a1 + 32) result];
    [v22 setSiriTCPSuccess:v21];

    v23 = [*(a1 + 32) result];
    [v23 setSiriTCPResultsValid:1];

    v24 = +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
    v25 = [*(a1 + 32) result];
    if ([v25 siriTCPSuccess])
    {
      v26 = 2;
    }

    else
    {
      v26 = 3;
    }

    [v24 networkActivityStop:8 withReason:v26 withClientMetric:0 withClientDict:0 andError:0];
  }

  v35 = [*(a1 + 32) dispatchGroup];
  dispatch_group_leave(v35);

  _Block_object_dispose(&v42, 8);
}

void __43__WFMeasure_dispatchSiriTest_trafficClass___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  NSLog(&cfstr_SOverridingKwf_14.isa, "-[WFMeasure dispatchSiriTest:trafficClass:]_block_invoke_3", v3, [v4 BOOLValue]);
  LOBYTE(v3) = [v4 BOOLValue];

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

void __43__WFMeasure_dispatchSiriTest_trafficClass___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  NSLog(&cfstr_SOverridingKwf_15.isa, "-[WFMeasure dispatchSiriTest:trafficClass:]_block_invoke_4", v3, [v4 BOOLValue]);
  LOBYTE(v3) = [v4 BOOLValue];

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

void __43__WFMeasure_dispatchSiriTest_trafficClass___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  NSLog(&cfstr_SOverridingKwf_16.isa, "-[WFMeasure dispatchSiriTest:trafficClass:]_block_invoke_5", [v3 tclass], objc_msgSend(v4, "BOOLValue"));
  LOBYTE(v3) = [v4 BOOLValue];

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

void __43__WFMeasure_dispatchSiriTest_trafficClass___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  NSLog(&cfstr_SOverridingKwf_17.isa, "-[WFMeasure dispatchSiriTest:trafficClass:]_block_invoke_6", [v3 tclass], objc_msgSend(v4, "BOOLValue"));
  LOBYTE(v3) = [v4 BOOLValue];

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

void __43__WFMeasure_dispatchSiriTest_trafficClass___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  NSLog(&cfstr_SOverridingKwf_18.isa, "-[WFMeasure dispatchSiriTest:trafficClass:]_block_invoke_7", [v3 tclass], objc_msgSend(v4, "BOOLValue"));
  LOBYTE(v3) = [v4 BOOLValue];

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

void __43__WFMeasure_dispatchSiriTest_trafficClass___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  NSLog(&cfstr_SOverridingKwf_19.isa, "-[WFMeasure dispatchSiriTest:trafficClass:]_block_invoke_8", [v3 tclass], objc_msgSend(v4, "BOOLValue"));
  LOBYTE(v3) = [v4 BOOLValue];

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (BOOL)start:(id)start withCompletionQueue:(id)queue
{
  startCopy = start;
  queueCopy = queue;
  if ([(WFMeasure *)self isInProgress])
  {
    NSLog(&cfstr_SMeasurementAl.isa, "[WFMeasure start:withCompletionQueue:]");
  }

  else
  {
    [(WFMeasure *)self setCompletionHandler:startCopy];
    [(WFMeasure *)self setCompletionQueue:queueCopy];
    internalQueue = [(WFMeasure *)self internalQueue];

    if (!internalQueue)
    {
      v9 = dispatch_queue_create("com.apple.wifi.wfmeasure", 0);
      [(WFMeasure *)self setInternalQueue:v9];
    }

    if (([(WFMeasure *)self options]& 1) != 0)
    {
      dispatchGroup = [(WFMeasure *)self dispatchGroup];
      dispatch_group_enter(dispatchGroup);

      [(WFMeasure *)self dispatchThroughputTest];
    }

    else if (([(WFMeasure *)self options]& 0x100) != 0)
    {
      dispatchGroup2 = [(WFMeasure *)self dispatchGroup];
      dispatch_group_enter(dispatchGroup2);

      [(WFMeasure *)self dispatchULThroughputTest];
    }

    if (([(WFMeasure *)self options]& 2) != 0)
    {
      dispatchGroup3 = [(WFMeasure *)self dispatchGroup];
      dispatch_group_enter(dispatchGroup3);

      [(WFMeasure *)self dispatchPingTest:2];
    }

    if (([(WFMeasure *)self options]& 4) != 0)
    {
      dispatchGroup4 = [(WFMeasure *)self dispatchGroup];
      dispatch_group_enter(dispatchGroup4);

      [(WFMeasure *)self dispatchPingTest:4];
    }

    if (([(WFMeasure *)self options]& 8) != 0)
    {
      dispatchGroup5 = [(WFMeasure *)self dispatchGroup];
      dispatch_group_enter(dispatchGroup5);

      [(WFMeasure *)self dispatchPingTest:8];
    }

    if (([(WFMeasure *)self options]& 0x10) != 0)
    {
      dispatchGroup6 = [(WFMeasure *)self dispatchGroup];
      dispatch_group_enter(dispatchGroup6);

      testDNSHostname = [(WFMeasure *)self testDNSHostname];
      [(WFMeasure *)self dispatchDNSTest:testDNSHostname];
    }

    if (([(WFMeasure *)self options]& 0x20) != 0)
    {
      dispatchGroup7 = [(WFMeasure *)self dispatchGroup];
      dispatch_group_enter(dispatchGroup7);

      [(WFMeasure *)self dispatchSiriTest:0 trafficClass:[(WFMeasure *)self tclass]];
    }

    if (([(WFMeasure *)self options]& 0x40) != 0)
    {
      dispatchGroup8 = [(WFMeasure *)self dispatchGroup];
      dispatch_group_enter(dispatchGroup8);

      [(WFMeasure *)self dispatchSiriTest:1 trafficClass:[(WFMeasure *)self tclass]];
    }

    v19 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__WFMeasure_start_withCompletionQueue___block_invoke;
    block[3] = &unk_2789C6630;
    block[4] = self;
    dispatch_async(v19, block);

    [(WFMeasure *)self setIsInProgress:1];
  }

  isInProgress = [(WFMeasure *)self isInProgress];

  return isInProgress;
}

void __39__WFMeasure_start_withCompletionQueue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dispatchGroup];
  v3 = dispatch_time(0, 120000000000);
  v4 = dispatch_group_wait(v2, v3);

  if (v4)
  {
    NSLog(&cfstr_STestsTimedOut.isa, "[WFMeasure start:withCompletionQueue:]_block_invoke");
    v5 = [*(a1 + 32) performanceTest];
    [v5 cancelAllNetworking];
  }

  else
  {
    NSLog(&cfstr_SAllTestsCompl.isa, "[WFMeasure start:withCompletionQueue:]_block_invoke");
  }

  v6 = [*(a1 + 32) internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__WFMeasure_start_withCompletionQueue___block_invoke_2;
  block[3] = &unk_2789C6630;
  block[4] = *(a1 + 32);
  dispatch_sync(v6, block);
}

void __39__WFMeasure_start_withCompletionQueue___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setIsInProgress:0];
  v2 = [*(a1 + 32) completionHandler];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) completionQueue];

    if (v4)
    {
      v5 = [*(a1 + 32) completionQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__WFMeasure_start_withCompletionQueue___block_invoke_3;
      block[3] = &unk_2789C6630;
      block[4] = *(a1 + 32);
      dispatch_async(v5, block);
    }
  }
}

void __39__WFMeasure_start_withCompletionQueue___block_invoke_3(uint64_t a1)
{
  v5 = *(a1 + 32);
  if ((v5[13] & 1) == 0)
  {
    v6 = [v5 result];
    [v6 setSeenSpecificAcFailure:0];

    v7 = [*(a1 + 32) result];
    v8 = [*(a1 + 32) result];
    v9 = [v8 trafficClassBEAttemptedSmall];
    if (v9 <= 0 && ([*(a1 + 32) result], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "trafficClassBEAttemptedLarge") < 1))
    {
      v12 = 0;
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v2 = [*(a1 + 32) result];
      if ([v2 trafficClassBESucceededSmall])
      {
        v10 = 0;
        v11 = 0;
        v12 = 1;
      }

      else
      {
        v3 = [*(a1 + 32) result];
        v11 = [v3 trafficClassBESucceededLarge] == 0;
        v12 = 1;
        v10 = 1;
      }
    }

    [v7 setSeenSpecificAcFailure:{v11 | objc_msgSend(v7, "seenSpecificAcFailure")}];
    if (v10)
    {
    }

    if (v12)
    {
    }

    if (v9 <= 0)
    {
    }

    v13 = [*(a1 + 32) result];
    v14 = [*(a1 + 32) result];
    v15 = [v14 trafficClassBKAttemptedSmall];
    if (v15 <= 0 && ([*(a1 + 32) result], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "trafficClassBKAttemptedLarge") < 1))
    {
      v18 = 0;
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v2 = [*(a1 + 32) result];
      if ([v2 trafficClassBKSucceededSmall])
      {
        v16 = 0;
        v17 = 0;
        v18 = 1;
      }

      else
      {
        v3 = [*(a1 + 32) result];
        v17 = [v3 trafficClassBKSucceededLarge] == 0;
        v18 = 1;
        v16 = 1;
      }
    }

    [v13 setSeenSpecificAcFailure:{v17 | objc_msgSend(v13, "seenSpecificAcFailure")}];
    if (v16)
    {
    }

    if (v18)
    {
    }

    if (v15 <= 0)
    {
    }

    v19 = [*(a1 + 32) result];
    v20 = [*(a1 + 32) result];
    v21 = [v20 trafficClassVOAttemptedSmall];
    if (v21 <= 0 && ([*(a1 + 32) result], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "trafficClassVOAttemptedLarge") < 1))
    {
      v24 = 0;
      v22 = 0;
      v23 = 0;
    }

    else
    {
      v2 = [*(a1 + 32) result];
      if ([v2 trafficClassVOSucceededSmall])
      {
        v22 = 0;
        v23 = 0;
        v24 = 1;
      }

      else
      {
        v3 = [*(a1 + 32) result];
        v23 = [v3 trafficClassVOSucceededLarge] == 0;
        v24 = 1;
        v22 = 1;
      }
    }

    [v19 setSeenSpecificAcFailure:{v23 | objc_msgSend(v19, "seenSpecificAcFailure")}];
    if (v22)
    {
    }

    if (v24)
    {
    }

    if (v21 <= 0)
    {
    }

    v25 = [*(a1 + 32) result];
    v26 = [*(a1 + 32) result];
    v27 = [v26 trafficClassVIAttemptedSmall];
    if (v27 <= 0 && ([*(a1 + 32) result], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "trafficClassVIAttemptedLarge") < 1))
    {
      v30 = 0;
      v28 = 0;
      v29 = 0;
    }

    else
    {
      v2 = [*(a1 + 32) result];
      if ([v2 trafficClassVISucceededSmall])
      {
        v28 = 0;
        v29 = 0;
        v30 = 1;
      }

      else
      {
        v3 = [*(a1 + 32) result];
        v29 = [v3 trafficClassVISucceededLarge] == 0;
        v30 = 1;
        v28 = 1;
      }
    }

    [v25 setSeenSpecificAcFailure:{v29 | objc_msgSend(v25, "seenSpecificAcFailure")}];
    if (v28)
    {
    }

    if (v30)
    {
    }

    if (v27 <= 0)
    {
    }

    v31 = [*(a1 + 32) result];
    v32 = [v31 numAcFailed];

    v33 = [*(a1 + 32) result];
    v34 = [v33 seenSpecificAcFailure];
    if (v32)
    {
      if ((v34 & 1) == 0)
      {
        __39__WFMeasure_start_withCompletionQueue___block_invoke_3_cold_1();
      }
    }

    else if (v34)
    {
      __39__WFMeasure_start_withCompletionQueue___block_invoke_3_cold_2();
    }
  }

  v35 = +[WiFiUsageMonitor sharedInstance];
  v36 = [*(a1 + 32) result];
  v37 = *(a1 + 32);
  v38 = v37[13];
  v39 = [v37 interfaceName];
  [v35 linkTestEvent:v36 withReason:v38 forInterface:v39];

  v40 = [*(a1 + 32) dnsServers];
  v41 = [*(a1 + 32) result];
  [v41 setDnsServers:v40];

  v42 = [*(a1 + 32) gatewayAddress];
  v43 = [*(a1 + 32) result];
  [v43 setGatewayAddress:v42];

  v46 = [*(a1 + 32) completionHandler];
  v44 = [*(a1 + 32) result];
  v45 = [v44 copy];
  v46[2](v46, v45);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  if ([(WFMeasure *)self isInProgress])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  options = [(WFMeasure *)self options];
  interfaceName = [(WFMeasure *)self interfaceName];
  gatewayAddress = [(WFMeasure *)self gatewayAddress];
  dnsServers = [(WFMeasure *)self dnsServers];
  v9 = [v3 stringWithFormat:@"isInProgress=%@ options=0x%lx interfaceName=%@ gateway=%@ dnsServers=%@", v4, options, interfaceName, gatewayAddress, dnsServers];

  return v9;
}

- (void)abort
{
  v3 = +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
  [v3 networkActivityTracingCompleteConnectionsActivities];

  performanceTest = [(WFMeasure *)self performanceTest];
  [performanceTest cancelAllNetworking];

  [(WFMeasure *)self setIsInProgress:0];
}

void __30__WFMeasure_dispatchPingTest___block_invoke_cold_1(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Pinging LocalDNS PublicDNS or Gateway failed due to no pingAddress", buf, 2u);
}

@end