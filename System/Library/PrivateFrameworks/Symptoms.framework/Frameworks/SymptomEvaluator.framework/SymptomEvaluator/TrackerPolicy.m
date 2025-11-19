@interface TrackerPolicy
+ (id)preferredInstance:(id)a3;
+ (void)initialize;
- (TrackerPolicy)init;
- (id)flowClassificationFor:(id)a3;
- (id)nonDefaultFlowClassificationFor:(id)a3;
- (int)configureInstance:(id)a3;
- (void)addClassification:(id)a3 forTrafficClass:(unsigned int)a4;
- (void)addClassification:(id)a3 forTrafficMgmtFlags:(unsigned int)a4;
@end

@implementation TrackerPolicy

- (TrackerPolicy)init
{
  v6.receiver = self;
  v6.super_class = TrackerPolicy;
  v2 = [(TrackerPolicy *)&v6 init];
  if (v2)
  {
    v3 = +[FlowClassification defaultInstance];
    defaultClassification = v2->_defaultClassification;
    v2->_defaultClassification = v3;
  }

  return v2;
}

- (id)nonDefaultFlowClassificationFor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_numClassMaps && (v6 = [v4 trafficClassFlags], numClassMaps = self->_numClassMaps, numClassMaps))
  {
    p_flowClassification = &self->_classMap[0].flowClassification;
    while (*(p_flowClassification - 2) != v6)
    {
      p_flowClassification += 2;
      if (!--numClassMaps)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    if (!self->_numMgmtFlagsMaps || (v9 = [v5 trafficMgtFlags], numMgmtFlagsMaps = self->_numMgmtFlagsMaps, !numMgmtFlagsMaps))
    {
LABEL_11:
      v11 = 0;
      goto LABEL_13;
    }

    p_flowClassification = &self->_mgmtFlagsMap[0].flowClassification;
    while ((*(p_flowClassification - 1) & v9) == 0)
    {
      p_flowClassification += 2;
      if (!--numMgmtFlagsMaps)
      {
        goto LABEL_11;
      }
    }
  }

  v11 = *p_flowClassification;
LABEL_13:

  return v11;
}

- (id)flowClassificationFor:(id)a3
{
  v4 = [(TrackerPolicy *)self nonDefaultFlowClassificationFor:a3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    defaultClassification = self->_defaultClassification;
    if (defaultClassification)
    {
      v6 = defaultClassification;
    }

    else
    {
      v6 = +[FlowClassification defaultInstance];
    }
  }

  v8 = v6;

  return v8;
}

- (void)addClassification:(id)a3 forTrafficClass:(unsigned int)a4
{
  v7 = a3;
  numClassMaps = self->_numClassMaps;
  if (!numClassMaps)
  {
    goto LABEL_5;
  }

  if (self->_classMap[numClassMaps].trafficClass == a4)
  {
    v9 = v7;
    objc_storeStrong(&self->_classMap[numClassMaps].flowClassification, a3);
    v7 = v9;
    goto LABEL_6;
  }

  if (numClassMaps <= 0xB)
  {
LABEL_5:
    self->_classMap[numClassMaps].trafficClass = a4;
    v10 = v7;
    objc_storeStrong(&self->_classMap[self->_numClassMaps].flowClassification, a3);
    v7 = v10;
    ++self->_numClassMaps;
  }

LABEL_6:
}

- (void)addClassification:(id)a3 forTrafficMgmtFlags:(unsigned int)a4
{
  v7 = a3;
  numMgmtFlagsMaps = self->_numMgmtFlagsMaps;
  if (numMgmtFlagsMaps <= 3)
  {
    v9 = self + 16 * numMgmtFlagsMaps;
    *(v9 + 50) = a4;
    v10 = v7;
    objc_storeStrong(v9 + 26, a3);
    v7 = v10;
    ++self->_numMgmtFlagsMaps;
  }
}

- (int)configureInstance:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__TrackerPolicy_configureInstance___block_invoke;
  v4[3] = &unk_27898B7F0;
  v4[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v4];
  return 0;
}

void __35__TrackerPolicy_configureInstance___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:@"SO_TC_BK_SYS"])
  {
    v7 = 0;
    v8 = 100;
    goto LABEL_21;
  }

  if ([v5 isEqualToString:@"SO_TC_BK"])
  {
    v7 = 0;
    v8 = 200;
    goto LABEL_21;
  }

  if ([v5 isEqualToString:@"SO_TC_BE"])
  {
    v8 = 0;
    v7 = 0;
    goto LABEL_21;
  }

  if ([v5 isEqualToString:@"SO_TC_RD"])
  {
    v7 = 0;
    v8 = 300;
    goto LABEL_21;
  }

  if ([v5 isEqualToString:@"SO_TC_OAM"])
  {
    v7 = 0;
    v8 = 400;
    goto LABEL_21;
  }

  if ([v5 isEqualToString:@"SO_TC_AV"])
  {
    v7 = 0;
    v8 = 500;
    goto LABEL_21;
  }

  if ([v5 isEqualToString:@"SO_TC_RV"])
  {
    v7 = 0;
    v8 = 600;
    goto LABEL_21;
  }

  if ([v5 isEqualToString:@"SO_TC_VI"])
  {
    v7 = 0;
    v8 = 700;
    goto LABEL_21;
  }

  if ([v5 isEqualToString:@"SO_TC_VO"])
  {
    v7 = 0;
    v8 = 800;
    goto LABEL_21;
  }

  if ([v5 isEqualToString:@"SO_TC_CTL"])
  {
    v7 = 0;
    v8 = 900;
    goto LABEL_21;
  }

  if ([v5 isEqualToString:@"MAX_CONNECTIONS_PER_HOUR"])
  {
    [*(a1 + 32) setMaximumConnectionsPerHour:{objc_msgSend(v6, "unsignedIntegerValue")}];
    goto LABEL_29;
  }

  if (![v5 isEqualToString:@"MAX_RADIO_TIME_SECS"])
  {
    if ([v5 isEqualToString:@"POLICY_APPLIES_TO"])
    {
      goto LABEL_29;
    }

    v7 = 1;
    v8 = 0xFFFFFFFFLL;
LABEL_21:
    v9 = objc_alloc_init(FlowClassification);
    [(FlowClassification *)v9 configure:v6];
    if (v7)
    {
      if ([v5 isEqualToString:@"TRAFFIC_MGT_SO_BACKGROUND"])
      {
        v10 = *(a1 + 32);
        v11 = v9;
        v12 = 1;
      }

      else
      {
        if (![v5 isEqualToString:@"TRAFFIC_MGT_TCP_RECVBG"])
        {
          if ([v5 isEqualToString:@"DEFAULT_DISPOSITION"])
          {
            v14 = *(a1 + 32);
            v15 = *(v14 + 272);
            *(v14 + 272) = v9;
            v16 = v9;

            goto LABEL_29;
          }

          v17 = configurationLogHandle;
          if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v19 = 138412546;
            v20 = v5;
            v21 = 2112;
            v22 = v6;
            _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "Skip key %@ action %@", &v19, 0x16u);
          }

          goto LABEL_28;
        }

        v10 = *(a1 + 32);
        v11 = v9;
        v12 = 2;
      }

      [v10 addClassification:v11 forTrafficMgmtFlags:v12];
    }

    else
    {
      [*(a1 + 32) addClassification:v9 forTrafficClass:v8];
    }

LABEL_28:

    goto LABEL_29;
  }

  v18 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v19 = 138412290;
    v20 = v5;
    _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "Option %@ ignored", &v19, 0xCu);
  }

LABEL_29:

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)preferredInstance:(id)a3
{
  v3 = a3;
  if (![v3 numClassMaps] && !objc_msgSend(v3, "numMgmtFlagsMaps"))
  {
    v4 = [v3 defaultClassification];
    v5 = [v4 description];

    if (v5)
    {
      v6 = [gDeDupDictionary objectForKeyedSubscript:v5];
      v7 = v6;
      if (v6)
      {
        v8 = v6;

        v3 = v8;
      }

      else
      {
        [gDeDupDictionary setObject:v3 forKeyedSubscript:v5];
      }
    }
  }

  return v3;
}

+ (void)initialize
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = gDeDupDictionary;
  gDeDupDictionary = v2;

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = [v6 addObserverForName:@"stateRelay" object:0 queue:0 usingBlock:&__block_literal_global_24];
  v5 = gRelayReadyObserver;
  gRelayReadyObserver = v4;
}

void __27__TrackerPolicy_initialize__block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 removeObserver:gRelayReadyObserver];

  v1 = gRelayReadyObserver;
  gRelayReadyObserver = 0;

  v2 = MEMORY[0x277D85CD0];

  dispatch_async(v2, &__block_literal_global_8);
}

void __27__TrackerPolicy_initialize__block_invoke_2()
{
  [gDeDupDictionary removeAllObjects];
  v0 = gDeDupDictionary;
  gDeDupDictionary = 0;
}

@end