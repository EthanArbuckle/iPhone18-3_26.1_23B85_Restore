@interface Gmo
- (BOOL)setSessionState:(id)state;
- (BOOL)validateFrameBank:(unsigned __int8)bank fwConfigId:(unsigned int)id frameAnchors:(const SpConfig *)anchors internalFwError:(BOOL)error;
- (Gmo)initWithUnitInfo:(PeridotUnitInfo *)info sessionState:(id)state;
- (id)copySessionState;
- (int)processFrameWithBank:(const GmoProcessBankInputs *)bank gmoResult:(GmoResult *)result;
- (void)setCfgBits:(unsigned int)bits;
@end

@implementation Gmo

- (BOOL)validateFrameBank:(unsigned __int8)bank fwConfigId:(unsigned int)id frameAnchors:(const SpConfig *)anchors internalFwError:(BOOL)error
{
  if (error)
  {
    newConfigIDAvailable = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (newConfigIDAvailable)
    {
      *v18 = 0;
      _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "PeridotDepthGMO: received invalid frame, internalFwError flag value is: true", v18, 2u);
LABEL_51:
      LOBYTE(newConfigIDAvailable) = 0;
    }
  }

  else
  {
    configRequestObj = self->_configRequestObj;
    if (configRequestObj)
    {
      idCopy = id;
      bankCopy = bank;
      anchorsCopy = anchors;
      newConfigIDAvailable = [(PDOnlineConfigRequest *)configRequestObj newConfigIDAvailable];
      if (!newConfigIDAvailable)
      {
        return newConfigIDAvailable;
      }

      self->_expectedConfigID = [(PDOnlineConfigRequest *)self->_configRequestObj newConfigID];
      v12 = self->_configRequestObj;
      self->_configRequestObj = 0;

      anchors = anchorsCopy;
      *&bank = bankCopy;
      id = idCopy;
    }

    expectedConfigID = self->_expectedConfigID;
    if (expectedConfigID > id)
    {
      goto LABEL_51;
    }

    if (expectedConfigID)
    {
      v14 = self + 42 * bank;
      v16 = v14[56];
      v15 = (v14 + 56);
      if (anchors->var0[0] != v16 || anchors->var1[0] != v15[1] || anchors->var2[0] != v15[2] || anchors->var0[1] != v15[3] || anchors->var1[1] != v15[4] || anchors->var2[1] != v15[5] || anchors->var0[2] != v15[6] || anchors->var1[2] != v15[7] || anchors->var2[2] != v15[8] || anchors->var0[3] != v15[9] || anchors->var1[3] != v15[10] || anchors->var2[3] != v15[11] || anchors->var0[4] != v15[12] || anchors->var1[4] != v15[13] || anchors->var2[4] != v15[14] || anchors->var0[5] != v15[15] || anchors->var1[5] != v15[16] || anchors->var2[5] != v15[17] || anchors->var0[6] != v15[18] || anchors->var1[6] != v15[19] || anchors->var2[6] != v15[20] || anchors->var0[7] != v15[21] || anchors->var1[7] != v15[22] || anchors->var2[7] != v15[23] || anchors->var0[8] != v15[24] || anchors->var1[8] != v15[25] || anchors->var2[8] != v15[26] || anchors->var0[9] != v15[27] || anchors->var1[9] != v15[28] || anchors->var2[9] != v15[29] || anchors->var0[10] != v15[30] || anchors->var1[10] != v15[31] || anchors->var2[10] != v15[32] || anchors->var0[11] != v15[33] || anchors->var1[11] != v15[34] || anchors->var2[11] != v15[35] || anchors->var0[12] != v15[36] || anchors->var1[12] != v15[37] || anchors->var2[12] != v15[38] || anchors->var0[13] != v15[39] || anchors->var1[13] != v15[40])
      {
        goto LABEL_51;
      }

      LOBYTE(newConfigIDAvailable) = anchors->var2[13] == v15[41];
    }

    else
    {
      LOBYTE(newConfigIDAvailable) = 1;
    }
  }

  return newConfigIDAvailable;
}

- (int)processFrameWithBank:(const GmoProcessBankInputs *)bank gmoResult:(GmoResult *)result
{
  v21 = *MEMORY[0x277D85DE8];
  if (!self->_gmoConfigDone)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "[Gmo processFrameWithBank:gmoResult:]";
      v8 = MEMORY[0x277D86220];
      v9 = "GMO: %s: WARNING: GMO is not configured => GMO is disabled";
      v10 = 12;
      goto LABEL_7;
    }

    return -1;
  }

  if (([(GmoController *)self->_controller gmoCfgBits]& 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7.all = [(GmoController *)self->_controller gmoCfgBits];
      v17 = 136315394;
      v18 = "[Gmo processFrameWithBank:gmoResult:]";
      v19 = 1024;
      LODWORD(v20) = v7;
      v8 = MEMORY[0x277D86220];
      v9 = "GMO: %s: WARNING: GMO is disabled. gmoCfgBits: 0x%08x";
      v10 = 18;
LABEL_7:
      _os_log_impl(&dword_224668000, v8, OS_LOG_TYPE_DEFAULT, v9, &v17, v10);
      return -1;
    }

    return -1;
  }

  if (![(Gmo *)self validateFrameBank:LOBYTE(bank->var0) fwConfigId:bank->var6 frameAnchors:&bank->var12.var0.var0[2].var0[3].var0[2].var0[1][1] internalFwError:bank->var9])
  {
    return -1;
  }

  if ([(GmoController *)self->_controller processFrameWithBank:bank gmoResult:result])
  {
    return 2;
  }

  if (result->var0)
  {
    gmoCfgBits = [(GmoController *)self->_controller gmoCfgBits];
    v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if ((gmoCfgBits & 2) != 0)
    {
      if (v13)
      {
        var1 = result->var1;
        v17 = 136315394;
        v18 = "[Gmo processFrameWithBank:gmoResult:]";
        v19 = 2048;
        v20 = var1;
        _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: Updating anchors: %zu", &v17, 0x16u);
      }

      memcpy(&self->_setAnchors, result->var2, sizeof(self->_setAnchors));
      v15 = [self->_unitInfo->var2 updateAnchors:&self->_setAnchors];
      configRequestObj = self->_configRequestObj;
      self->_configRequestObj = v15;
    }

    else if (v13)
    {
      v17 = 136315138;
      v18 = "[Gmo processFrameWithBank:gmoResult:]";
      _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: WARNINIG: Anchor update is disabled.", &v17, 0xCu);
    }
  }

  return !result->var0;
}

- (id)copySessionState
{
  v26 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v10) = 136315138;
    *(&v10 + 4) = "[Gmo copySessionState]";
    _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: Got stream shutdown notification. Providing session data for storage...", &v10, 0xCu);
  }

  if (!self->_prevSessionDataLoaded && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v10) = 136315138;
    *(&v10 + 4) = "[Gmo copySessionState]";
    _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: WARNING: No previous GMO session data was provided. Starting from current session data.", &v10, 0xCu);
  }

  controller = self->_controller;
  if (controller)
  {
    [(GmoController *)controller sessionCalcState];
  }

  else
  {
    v24 = 0u;
    memset(v25, 0, 28);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:dictionary2 forKeyedSubscript:@"gmoSessionState"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
  [dictionary2 setObject:v6 forKeyedSubscript:@"pattern"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD1(v10)];
  [dictionary2 setObject:v7 forKeyedSubscript:@"version"];

  v8 = [MEMORY[0x277CBEA90] dataWithBytes:&v10 + 8 length:260];
  [dictionary2 setObject:v8 forKeyedSubscript:@"coreAnalyticsData"];

  return dictionary;
}

- (BOOL)setSessionState:(id)state
{
  v23 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = stateCopy;
  memset(v15, 0, 268);
  if (!self->_gmoInitDone)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[Gmo setSessionState:]";
      _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: ERROR: Attempt to configure session data before GMO init", buf, 0xCu);
    }

    __assert_rtn("[Gmo setSessionState:]", "Gmo.mm", 146, "!ERROR: Attempt to configure session data before GMO init");
  }

  v6 = [stateCopy objectForKeyedSubscript:{@"gmoSessionState", *v15, *&v15[16], *&v15[32], *&v15[48], *&v15[64], *&v15[80], *&v15[96], *&v15[112], *&v15[128], *&v15[144], *&v15[160], *&v15[176], *&v15[192], *&v15[208], *&v15[224], *&v15[240], *&v15[248], *&v15[264]}];

  if (!v6)
  {
    v10 = 0;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315138;
    v17 = "[Gmo setSessionState:]";
    _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: WARNING: No depthProcessor state data provided => Using empty session data\n", buf, 0xCu);
LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  v7 = [v5 objectForKeyedSubscript:@"gmoSessionState"];
  v8 = [v7 objectForKeyedSubscript:@"pattern"];

  if (v8)
  {
    v9 = [v7 objectForKeyedSubscript:@"pattern"];
  }

  else
  {
    v9 = 0;
  }

  v11 = [v7 objectForKeyedSubscript:@"version"];

  if (v11)
  {
    v12 = [v7 objectForKeyedSubscript:@"version"];
  }

  else
  {
    v12 = 0;
  }

  if (![v9 isEqual:&unk_283811080] || !objc_msgSend(v12, "isEqual:", &unk_283811098))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v17 = "[Gmo setSessionState:]";
      v18 = 1024;
      *v19 = [&unk_283811080 intValue];
      *&v19[4] = 1024;
      *&v19[6] = [v9 intValue];
      *v20 = 2112;
      *&v20[2] = v12;
      v21 = 2112;
      v22 = &unk_283811098;
      _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: WARNING: GMO session persistent data integrity check failed. Expected pattern: 0x%08X found:  0x%08X, Expected version: %@, found: %@ -> ignoring & overwriting with empty data.", buf, 0x2Cu);
    }

    goto LABEL_18;
  }

  *v15 = [v9 intValue];
  *&v15[4] = [v12 intValue];

  v13 = [v7 objectForKeyedSubscript:@"coreAnalyticsData"];
  if ([v13 length] == 260)
  {
    [v13 getBytes:&v15[8] length:260];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "[Gmo setSessionState:]";
      v18 = 2048;
      *v19 = 260;
      *&v19[8] = 2048;
      *v20 = [v13 length];
      _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: WARNING: GMO session CoreAnalytics data size mismatch. Expected %lu, found:%lu -> ignoring & overwriting with empty data.", buf, 0x20u);
    }

    memset(&v15[8], 0, 260);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[Gmo setSessionState:]";
    v18 = 2048;
    *v19 = v5;
    _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: Got previous session data dict: %p", buf, 0x16u);
  }

  [(GmoController *)self->_controller setSessionPersistentData:v15];
  self->_prevSessionDataLoaded = 1;

  v10 = 1;
LABEL_19:

  return v10;
}

- (void)setCfgBits:(unsigned int)bits
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (bits == 0xFFFF)
  {
    if (v5)
    {
      v6 = 136315394;
      v7 = "[Gmo setCfgBits:]";
      v8 = 1024;
      bitsCopy = 7;
      _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: Setting gmo default config 0x%x", &v6, 0x12u);
    }

    [(GmoController *)self->_controller setGmoCfgBits:7];
  }

  else
  {
    if (v5)
    {
      v6 = 136315394;
      v7 = "[Gmo setCfgBits:]";
      v8 = 1024;
      bitsCopy = bits;
      _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: Setting flow enable bits to 0x%x", &v6, 0x12u);
    }

    [(GmoController *)self->_controller setGmoCfgBits:bits];
    if ((bits & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315138;
        v7 = "[Gmo setCfgBits:]";
        _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: WARNING: GMO is DISABLED", &v6, 0xCu);
      }

      self->_isActive = 0;
    }

    if ((bits & 2) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[Gmo setCfgBits:]";
      _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: WARNING: Anchor updates is OFF\n", &v6, 0xCu);
    }

    if ((bits & 4) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[Gmo setCfgBits:]";
      _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: WARNING: GlobalEstimation is OFF. Using smoothed spot location instead.\n", &v6, 0xCu);
    }

    if ((bits & 0x40000000) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[Gmo setCfgBits:]";
      _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: GMO ITP Qual Calc is ON\n", &v6, 0xCu);
    }

    if ((bits & 0x80000000) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[Gmo setCfgBits:]";
      _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: GMO Debug Mode is ON\n", &v6, 0xCu);
    }
  }

  self->_gmoConfigDone = 1;
}

- (Gmo)initWithUnitInfo:(PeridotUnitInfo *)info sessionState:(id)state
{
  v15 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = Gmo;
  v5 = [(Gmo *)&v10 init:info];
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "[Gmo initWithUnitInfo:sessionState:]";
      v13 = 2080;
      v14 = "3.2.2";
      _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: GMO Init ver %s ...", buf, 0x16u);
    }

    *&v5->_gmoConfigDone = 0;
    v5->_expectedConfigID = 0;
    v5->_bankCounter = 0;
    v5->_unitInfo = info;
    configRequestObj = v5->_configRequestObj;
    v5->_configRequestObj = 0;

    v5->_isActive = 0;
    v7 = [[GmoController alloc] initWithUnitInfo:v5->_unitInfo];
    controller = v5->_controller;
    v5->_controller = v7;

    v5->_gmoInitDone = 1;
  }

  return v5;
}

@end