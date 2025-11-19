@interface PODaemonCoreProcess
- (BOOL)_removeStashedUserLoginStateListDataWithError:(id *)a3;
- (BOOL)_savePendingSSOTokensData:(id)a3 forIdentifier:(id)a4 error:(id *)a5;
- (BOOL)_saveStashedDecryptionContextData:(id)a3 forIdentifier:(id)a4 error:(id *)a5;
- (BOOL)_saveStashedSSOTokensData:(id)a3 forIdentifier:(id)a4 error:(id *)a5;
- (BOOL)_saveUserLoginStateList:(id)a3 error:(id *)a4;
- (BOOL)writeData:(id)a3 toPath:(id)a4 saveError:(id *)a5;
- (id)_dataForUserLoginStateList:(id)a3 error:(id *)a4;
- (id)_deviceConfigurationForIdentifier:(id)a3;
- (id)_loginConfigurationForIdentifier:(id)a3;
- (id)_parseUserLoginStateListData:(id)a3 error:(id *)a4;
- (id)_pendingSSOTokensForIdentifier:(id)a3 error:(id *)a4;
- (id)_stashedSSOTokensForIdentifier:(id)a3 error:(id *)a4;
- (id)_stashedUserLoginStateListDataWithError:(id *)a3;
- (id)_stashedUserLoginStateListWithError:(id *)a3;
- (id)_userConfigurationForIdentifier:(id)a3 error:(id *)a4;
- (id)_userLoginStateForIdentifier:(id)a3 error:(id *)a4;
- (id)_userLoginStateListDataWithError:(id *)a3;
- (id)_userLoginStateListWithError:(id *)a3;
- (id)initForBaseSystem:(BOOL)a3;
- (void)connectionInvalidated;
- (void)deviceConfigurationForIdentifier:(id)a3 completion:(id)a4;
- (void)handleStartup;
- (void)loginConfigurationForIdentifier:(id)a3 completion:(id)a4;
- (void)retrievePendingSSOTokenForIdentifier:(id)a3 completion:(id)a4;
- (void)retrieveStashedSSOTokenForIdentifier:(id)a3 completion:(id)a4;
- (void)savePendingSSOTokens:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)saveStashedDecryptionContext:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)saveStashedSSOTokens:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)updateLoginStateForIdentifier:(id)a3 state:(id)a4 loginDate:(id)a5 loginType:(id)a6 completion:(id)a7;
- (void)userConfigurationForIdentifier:(id)a3 completion:(id)a4;
- (void)userLoginStateForIdentifier:(id)a3 completion:(id)a4;
@end

@implementation PODaemonCoreProcess

- (id)initForBaseSystem:(BOOL)a3
{
  v22.receiver = self;
  v22.super_class = PODaemonCoreProcess;
  v4 = [(PODaemonCoreProcess *)&v22 init];
  v5 = v4;
  if (v4)
  {
    v4->_baseSystem = a3;
    v4->_prebootKey = 0;
    if (!_cachedContexts)
    {
      v6 = [MEMORY[0x277CBEC10] mutableCopy];
      v7 = _cachedContexts;
      _cachedContexts = v6;
    }

    if (!_cachedStashedTokens)
    {
      v8 = [MEMORY[0x277CBEC10] mutableCopy];
      v9 = _cachedStashedTokens;
      _cachedStashedTokens = v8;
    }

    if (!_cachedPendingTokens)
    {
      v10 = [MEMORY[0x277CBEC10] mutableCopy];
      v11 = _cachedPendingTokens;
      _cachedPendingTokens = v10;
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v12 = getPODirectoryServicesClass_softClass;
    v27 = getPODirectoryServicesClass_softClass;
    if (!getPODirectoryServicesClass_softClass)
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __getPODirectoryServicesClass_block_invoke;
      v23[3] = &unk_279A3DE28;
      v23[4] = &v24;
      __getPODirectoryServicesClass_block_invoke(v23);
      v12 = v25[3];
    }

    v13 = v12;
    _Block_object_dispose(&v24, 8);
    v14 = objc_alloc_init(v12);
    userIdentifierProvider = v5->_userIdentifierProvider;
    v5->_userIdentifierProvider = v14;

    v16 = [[POTokenHelper alloc] initWithIdentifierProvider:v5->_userIdentifierProvider];
    tokenHelper = v5->_tokenHelper;
    v5->_tokenHelper = v16;

    volumeUUID = v5->_volumeUUID;
    v5->_volumeUUID = 0;

    if (!_writeLock)
    {
      v19 = objc_alloc_init(MEMORY[0x277D82BB8]);
      v20 = _writeLock;
      _writeLock = v19;
    }
  }

  return v5;
}

id __56__PODaemonCoreProcess_initWithXPCConnection_baseSystem___block_invoke()
{
  v0 = [POError errorWithCode:-1002 description:@"missing required entitlement"];
  v1 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)connectionInvalidated
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[PODaemonCoreProcess connectionInvalidated]";
    v7 = 2112;
    v8 = self;
    _os_log_impl(&dword_25E8B1000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)handleStartup
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (BOOL)writeData:(id)a3 toPath:(id)a4 saveError:(id *)a5
{
  v40[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonCoreProcess writeData:toPath:saveError:];
  }

  v10 = _writeLock;
  objc_sync_enter(v10);
  if (v7)
  {
    v34 = 0;
    v11 = [v7 writeToURL:v8 options:0x10000000 error:&v34];
    v12 = v34;
    v13 = v12;
    if (v11)
    {
      v39 = *MEMORY[0x277CCA180];
      v40[0] = &unk_2870A9120;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      v15 = [MEMORY[0x277CCAA00] defaultManager];
      v16 = [v8 path];
      v31 = v13;
      v17 = [v15 setAttributes:v14 ofItemAtPath:v16 error:&v31];
      v18 = v31;

      if (v17)
      {
        v19 = PO_LOG_PODaemonCoreProcess();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "length")}];
          [(PODaemonCoreProcess *)v20 writeData:buf toPath:v8 saveError:v19];
        }
      }

      else
      {
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __50__PODaemonCoreProcess_writeData_toPath_saveError___block_invoke_23;
        v29[3] = &unk_279A3DC48;
        v30 = v18;
        v25 = __50__PODaemonCoreProcess_writeData_toPath_saveError___block_invoke_23(v29);
        if (a5)
        {
          v25 = v25;
          *a5 = v25;
        }

        v19 = v30;
      }
    }

    else
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __50__PODaemonCoreProcess_writeData_toPath_saveError___block_invoke_17;
      v32[3] = &unk_279A3DC48;
      v18 = v12;
      v33 = v18;
      v23 = __50__PODaemonCoreProcess_writeData_toPath_saveError___block_invoke_17(v32);
      if (a5)
      {
        v23 = v23;
        *a5 = v23;
      }

      v17 = 0;
      v14 = v33;
    }

LABEL_22:

    goto LABEL_23;
  }

  v21 = [MEMORY[0x277CCAA00] defaultManager];
  v37 = 0;
  v22 = [v21 removeItemAtURL:v8 error:&v37];
  v18 = v37;

  if ((v22 & 1) == 0)
  {
    v24 = [v18 userInfo];
    v14 = [v24 objectForKeyedSubscript:@"NSUnderlyingError"];

    if ([v14 code] == 2)
    {
      v17 = 1;
    }

    else
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __50__PODaemonCoreProcess_writeData_toPath_saveError___block_invoke;
      v35[3] = &unk_279A3DC48;
      v18 = v18;
      v36 = v18;
      v26 = __50__PODaemonCoreProcess_writeData_toPath_saveError___block_invoke(v35);
      if (a5)
      {
        v26 = v26;
        *a5 = v26;
      }

      v17 = 0;
    }

    goto LABEL_22;
  }

  v17 = 1;
LABEL_23:

  objc_sync_exit(v10);
  v27 = *MEMORY[0x277D85DE8];
  return v17;
}

id __50__PODaemonCoreProcess_writeData_toPath_saveError___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1007 underlyingError:*(a1 + 32) description:@"Failed to remove configuration"];
  v2 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

id __50__PODaemonCoreProcess_writeData_toPath_saveError___block_invoke_17(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to write config to disk"];
  v2 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

id __50__PODaemonCoreProcess_writeData_toPath_saveError___block_invoke_23(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to set configuration attributes"];
  v2 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

- (id)_deviceConfigurationForIdentifier:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v20 = "[PODaemonCoreProcess _deviceConfigurationForIdentifier:]";
    v21 = 2114;
    v22 = v4;
    v23 = 2112;
    v24 = self;
    _os_log_impl(&dword_25E8B1000, v5, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  v6 = [(PODaemonCoreProcess *)self _defaultConfigurationPath];
  v7 = v6;
  if (v4)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.PlatformSSO.device.%@.txt", v4];
    v9 = [v7 URLByAppendingPathComponent:v8];
  }

  else
  {
    v9 = [v6 URLByAppendingPathComponent:@"com.apple.PlatformSSO.device.txt"];
  }

  v10 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonCoreProcess _deviceConfigurationForIdentifier:];
  }

  v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v9];
  if (+[POCoreConfigurationUtil platformSSODevModeEnabled])
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = v12;
    if (v11)
    {
      v14 = [v12 initWithData:v11 encoding:4];
    }

    else
    {
      v15 = [MEMORY[0x277CBEA90] data];
      v14 = [v13 initWithData:v15 encoding:4];
    }

    v16 = PO_LOG_PODaemonCoreProcess();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v20 = "[PODaemonCoreProcess _deviceConfigurationForIdentifier:]";
      v21 = 2114;
      v22 = v4;
      v23 = 2114;
      v24 = v14;
      v25 = 2112;
      v26 = self;
      _os_log_debug_impl(&dword_25E8B1000, v16, OS_LOG_TYPE_DEBUG, "%s identifier = %{public}@, data = %{public}@ on %@", buf, 0x2Au);
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)deviceConfigurationForIdentifier:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v15 = "[PODaemonCoreProcess deviceConfigurationForIdentifier:completion:]";
    v16 = 2114;
    v17 = v6;
    v18 = 2112;
    v19 = self;
    _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  v9 = [(PODaemonCoreProcess *)self _deviceConfigurationForIdentifier:v6];
  if (v9)
  {
    v7[2](v7, v9, 0);
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__PODaemonCoreProcess_deviceConfigurationForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3DC48;
    v13 = v6;
    v10 = __67__PODaemonCoreProcess_deviceConfigurationForIdentifier_completion___block_invoke(v12);
    (v7)[2](v7, 0, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

id __67__PODaemonCoreProcess_deviceConfigurationForIdentifier_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = "no user device configuration data to load";
  }

  else
  {
    v1 = "no device configuration data to load";
  }

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v1];
  v3 = [POError errorWithCode:-1004 description:v2];

  v4 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v3;
}

- (id)_loginConfigurationForIdentifier:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v20 = "[PODaemonCoreProcess _loginConfigurationForIdentifier:]";
    v21 = 2114;
    v22 = v4;
    v23 = 2112;
    v24 = self;
    _os_log_impl(&dword_25E8B1000, v5, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  v6 = [(PODaemonCoreProcess *)self _defaultConfigurationPath];
  v7 = v6;
  if (v4)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.PlatformSSO.login.%@.txt", v4];
    v9 = [v7 URLByAppendingPathComponent:v8];
  }

  else
  {
    v9 = [v6 URLByAppendingPathComponent:@"com.apple.PlatformSSO.login.txt"];
  }

  v10 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonCoreProcess _deviceConfigurationForIdentifier:];
  }

  v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v9];
  if (+[POCoreConfigurationUtil platformSSODevModeEnabled])
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = v12;
    if (v11)
    {
      v14 = [v12 initWithData:v11 encoding:4];
    }

    else
    {
      v15 = [MEMORY[0x277CBEA90] data];
      v14 = [v13 initWithData:v15 encoding:4];
    }

    v16 = PO_LOG_PODaemonCoreProcess();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [PODaemonCoreProcess _loginConfigurationForIdentifier:];
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)loginConfigurationForIdentifier:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[PODaemonCoreProcess loginConfigurationForIdentifier:completion:]";
    v14 = 2114;
    v15 = v6;
    v16 = 2112;
    v17 = self;
    _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", &v12, 0x20u);
  }

  v9 = [(PODaemonCoreProcess *)self _loginConfigurationForIdentifier:v6];
  if (v9)
  {
    v7[2](v7, v9, 0);
  }

  else
  {
    v10 = __66__PODaemonCoreProcess_loginConfigurationForIdentifier_completion___block_invoke();
    (v7)[2](v7, 0, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

id __66__PODaemonCoreProcess_loginConfigurationForIdentifier_completion___block_invoke()
{
  v0 = [POError errorWithCode:-1004 description:@"no login configuration data to load"];
  v1 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (id)_userConfigurationForIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PODaemonCoreProcess *)self _defaultConfigurationPath];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.PlatformSSO.user.%@.txt", v6];

  v9 = [v7 URLByAppendingPathComponent:v8];

  v10 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonCoreProcess _deviceConfigurationForIdentifier:];
  }

  v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v9];
  if (v11)
  {
    if (+[POCoreConfigurationUtil platformSSODevModeEnabled])
    {
      v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v11 encoding:4];
      v13 = PO_LOG_PODaemonCoreProcess();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PODaemonCoreProcess _userConfigurationForIdentifier:error:];
      }
    }

    v14 = [[POUserConfiguration alloc] initWithData:v11];
  }

  else
  {
    v15 = __61__PODaemonCoreProcess__userConfigurationForIdentifier_error___block_invoke();
    if (a4)
    {
      v15 = v15;
      *a4 = v15;
    }

    v14 = 0;
  }

  return v14;
}

id __61__PODaemonCoreProcess__userConfigurationForIdentifier_error___block_invoke()
{
  v0 = [POError errorWithCode:-1004 description:@"no user configuration data to load"];
  v1 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)userConfigurationForIdentifier:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[PODaemonCoreProcess userConfigurationForIdentifier:completion:]";
    v15 = 2114;
    v16 = v6;
    v17 = 2112;
    v18 = self;
    _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  v12 = 0;
  v9 = [(PODaemonCoreProcess *)self _userConfigurationForIdentifier:v6 error:&v12];
  v10 = v12;
  v7[2](v7, v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_userLoginStateListDataWithError:(id *)a3
{
  v4 = [(PODaemonCoreProcess *)self _defaultConfigurationPath];
  v5 = [v4 URLByAppendingPathComponent:@"com.apple.PlatformSSO.userstate.txt"];

  v6 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonCoreProcess _deviceConfigurationForIdentifier:];
  }

  v7 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v5];
  if (v7)
  {
    if (+[POCoreConfigurationUtil platformSSODevModeEnabled])
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
      v9 = PO_LOG_PODaemonCoreProcess();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PODaemonCoreProcess _userLoginStateListDataWithError:];
      }
    }

    v10 = v7;
  }

  else
  {
    v11 = __56__PODaemonCoreProcess__userLoginStateListDataWithError___block_invoke();
    if (a3)
    {
      v11 = v11;
      *a3 = v11;
    }
  }

  return v7;
}

id __56__PODaemonCoreProcess__userLoginStateListDataWithError___block_invoke()
{
  v0 = [POError errorWithCode:-1004 description:@"no user state data to load"];
  v1 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (id)_parseUserLoginStateListData:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:16 error:&v39];
  v6 = v39;
  v7 = v6;
  if (v6)
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __58__PODaemonCoreProcess__parseUserLoginStateListData_error___block_invoke;
    v37[3] = &unk_279A3DC48;
    v38 = v6;
    v8 = __58__PODaemonCoreProcess__parseUserLoginStateListData_error___block_invoke(v37);
    if (a4)
    {
      v8 = v8;
      *a4 = v8;
    }

    v9 = 0;
    v10 = v38;
  }

  else
  {
    v27 = 0;
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v12 = [v5 allKeys];
    v13 = [v12 countByEnumeratingWithState:&v33 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      v28 = v30;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v33 + 1) + 8 * i);
          v18 = [v5 objectForKeyedSubscript:{v17, v27, v28}];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v20 = [POUserLoginState alloc];
            v21 = [v5 objectForKeyedSubscript:v17];
            v22 = [(POUserLoginState *)v20 initWithDictionary:v21];

            if (v22)
            {
              v23 = [(POUserLoginState *)v22 uniqueIdentifier];
              [v11 setObject:v22 forKeyedSubscript:v23];
            }

            else
            {
              v29[0] = MEMORY[0x277D85DD0];
              v29[1] = 3221225472;
              v30[0] = __58__PODaemonCoreProcess__parseUserLoginStateListData_error___block_invoke_55;
              v30[1] = &unk_279A3DE00;
              v31 = 0;
              v32 = v17;
              v24 = __58__PODaemonCoreProcess__parseUserLoginStateListData_error___block_invoke_55(v29);
              v23 = v31;
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v33 objects:v40 count:16];
      }

      while (v14);
    }

    v10 = v11;
    v9 = [v11 copy];
    v7 = v27;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v9;
}

id __58__PODaemonCoreProcess__parseUserLoginStateListData_error___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error deserializing user state list."];
  v2 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

id __58__PODaemonCoreProcess__parseUserLoginStateListData_error___block_invoke_55(uint64_t a1)
{
  v2 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error deserializing user state."];
  v3 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __58__PODaemonCoreProcess__parseUserLoginStateListData_error___block_invoke_55_cold_1(v2, a1);
  }

  return v2;
}

- (id)_userLoginStateListWithError:(id *)a3
{
  v13 = 0;
  v5 = [(PODaemonCoreProcess *)self _userLoginStateListDataWithError:&v13];
  v6 = v13;
  v7 = v6;
  if (v6)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__PODaemonCoreProcess__userLoginStateListWithError___block_invoke;
    v11[3] = &unk_279A3DC48;
    v12 = v6;
    v8 = __52__PODaemonCoreProcess__userLoginStateListWithError___block_invoke(v11);
    if (a3)
    {
      v8 = v8;
      *a3 = v8;
    }

    v9 = 0;
  }

  else
  {
    v9 = [(PODaemonCoreProcess *)self _parseUserLoginStateListData:v5 error:a3];
  }

  return v9;
}

id __52__PODaemonCoreProcess__userLoginStateListWithError___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error loading user state list."];
  v2 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

- (id)_stashedUserLoginStateListDataWithError:(id *)a3
{
  v4 = [(PODaemonCoreProcess *)self _defaultConfigurationPath];
  v5 = [v4 URLByAppendingPathComponent:@"com.apple.PlatformSSO.stashed.userstate.txt"];

  v6 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonCoreProcess _deviceConfigurationForIdentifier:];
  }

  v7 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v5];
  if (v7)
  {
    if (+[POCoreConfigurationUtil platformSSODevModeEnabled])
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
      v9 = PO_LOG_PODaemonCoreProcess();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PODaemonCoreProcess _stashedUserLoginStateListDataWithError:];
      }
    }

    v10 = v7;
  }

  else
  {
    v11 = __56__PODaemonCoreProcess__userLoginStateListDataWithError___block_invoke();
    if (a3)
    {
      v11 = v11;
      *a3 = v11;
    }
  }

  return v7;
}

- (id)_stashedUserLoginStateListWithError:(id *)a3
{
  v13 = 0;
  v5 = [(PODaemonCoreProcess *)self _stashedUserLoginStateListDataWithError:&v13];
  v6 = v13;
  v7 = v6;
  if (v6)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__PODaemonCoreProcess__stashedUserLoginStateListWithError___block_invoke;
    v11[3] = &unk_279A3DC48;
    v12 = v6;
    v8 = __59__PODaemonCoreProcess__stashedUserLoginStateListWithError___block_invoke(v11);
    if (a3)
    {
      v8 = v8;
      *a3 = v8;
    }

    v9 = 0;
  }

  else
  {
    v9 = [(PODaemonCoreProcess *)self _parseUserLoginStateListData:v5 error:a3];
  }

  return v9;
}

id __59__PODaemonCoreProcess__stashedUserLoginStateListWithError___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error loading user state list."];
  v2 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

- (BOOL)_removeStashedUserLoginStateListDataWithError:(id *)a3
{
  v4 = [(PODaemonCoreProcess *)self _defaultConfigurationPath];
  v5 = [v4 URLByAppendingPathComponent:@"com.apple.PlatformSSO.stashed.userstate.txt"];

  v6 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonCoreProcess _removeStashedUserLoginStateListDataWithError:];
  }

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v18 = 0;
  v8 = [v7 removeItemAtURL:v5 error:&v18];
  v9 = v18;

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v11 = [v9 userInfo];
    v12 = [v11 objectForKeyedSubscript:@"NSUnderlyingError"];

    v13 = [v12 code];
    v10 = v13 == 2;
    if (v13 != 2)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __69__PODaemonCoreProcess__removeStashedUserLoginStateListDataWithError___block_invoke;
      v16[3] = &unk_279A3DC48;
      v17 = v9;
      v14 = __69__PODaemonCoreProcess__removeStashedUserLoginStateListDataWithError___block_invoke(v16);
      if (a3)
      {
        v14 = v14;
        *a3 = v14;
      }
    }
  }

  return v10;
}

id __69__PODaemonCoreProcess__removeStashedUserLoginStateListDataWithError___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1007 underlyingError:*(a1 + 32) description:@"Failed to remove stashed login state list"];
  v2 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

- (id)_dataForUserLoginStateList:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [v5 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v5 objectForKeyedSubscript:v12];
        v14 = [v13 dictionaryRepresentation];
        [v6 setObject:v14 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  v24 = 0;
  v15 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v6 options:11 error:&v24];
  v16 = v24;
  v17 = v16;
  if (v16)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __56__PODaemonCoreProcess__dataForUserLoginStateList_error___block_invoke;
    v22[3] = &unk_279A3DC48;
    v23 = v16;
    v18 = __56__PODaemonCoreProcess__dataForUserLoginStateList_error___block_invoke(v22);
    if (a4)
    {
      v18 = v18;
      *a4 = v18;
    }

    v19 = 0;
  }

  else
  {
    v19 = v15;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

id __56__PODaemonCoreProcess__dataForUserLoginStateList_error___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error serializing user state list."];
  v2 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

- (BOOL)_saveUserLoginStateList:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v30 = "[PODaemonCoreProcess _saveUserLoginStateList:error:]";
    v31 = 2112;
    v32 = self;
    _os_log_impl(&dword_25E8B1000, v7, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  if (+[POCoreConfigurationUtil platformSSODevModeEnabled])
  {
    v8 = PO_LOG_PODaemonCoreProcess();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PODaemonCoreProcess _saveUserLoginStateList:error:];
    }
  }

  v9 = [(PODaemonCoreProcess *)self _defaultConfigurationPath];
  v10 = [v9 URLByAppendingPathComponent:@"com.apple.PlatformSSO.userstate.txt"];

  v28 = 0;
  v11 = [(PODaemonCoreProcess *)self _dataForUserLoginStateList:v6 error:&v28];
  v12 = v28;
  if (v12)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __53__PODaemonCoreProcess__saveUserLoginStateList_error___block_invoke;
    v26[3] = &unk_279A3DC48;
    v13 = v12;
    v27 = v13;
    v14 = __53__PODaemonCoreProcess__saveUserLoginStateList_error___block_invoke(v26);
    if (a4)
    {
      v14 = v14;
      *a4 = v14;
    }

    v15 = 0;
    v16 = v27;
  }

  else
  {
    v25 = 0;
    v17 = [(PODaemonCoreProcess *)self writeData:v11 toPath:v10 saveError:&v25];
    v18 = v25;
    v13 = v18;
    if (v17)
    {
      v16 = PO_LOG_PODaemonCoreProcess();
      v15 = 1;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v19 = [v10 path];
        *buf = 138543362;
        v30 = v19;
        _os_log_impl(&dword_25E8B1000, v16, OS_LOG_TYPE_INFO, "user state list written to file: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __53__PODaemonCoreProcess__saveUserLoginStateList_error___block_invoke_70;
      v23[3] = &unk_279A3DC48;
      v13 = v18;
      v24 = v13;
      v20 = __53__PODaemonCoreProcess__saveUserLoginStateList_error___block_invoke_70(v23);
      if (a4)
      {
        v20 = v20;
        *a4 = v20;
      }

      v15 = 0;
      v16 = v24;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v15;
}

id __53__PODaemonCoreProcess__saveUserLoginStateList_error___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error serializing user state list."];
  v2 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

id __53__PODaemonCoreProcess__saveUserLoginStateList_error___block_invoke_70(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to write user state list to disk"];
  v2 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

- (id)_userLoginStateForIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PODaemonCoreProcess *)self _userLoginStateListWithError:a4];
  v8 = [v7 objectForKeyedSubscript:v6];

  return v8;
}

- (void)userLoginStateForIdentifier:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[PODaemonCoreProcess userLoginStateForIdentifier:completion:]";
    v15 = 2114;
    v16 = v6;
    v17 = 2112;
    v18 = self;
    _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  v12 = 0;
  v9 = [(PODaemonCoreProcess *)self _userLoginStateForIdentifier:v6 error:&v12];
  v10 = v12;
  v7[2](v7, v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateLoginStateForIdentifier:(id)a3 state:(id)a4 loginDate:(id)a5 loginType:(id)a6 completion:(id)a7
{
  v39 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v34 = "[PODaemonCoreProcess updateLoginStateForIdentifier:state:loginDate:loginType:completion:]";
    v35 = 2114;
    v36 = v12;
    v37 = 2112;
    v38 = self;
    _os_log_impl(&dword_25E8B1000, v17, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  v32 = 0;
  v18 = [(PODaemonCoreProcess *)self _userLoginStateListWithError:&v32];
  v19 = v32;
  v20 = [v18 mutableCopy];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v23 = v22;

  v24 = [v23 objectForKeyedSubscript:v12];
  if (!v24)
  {
    v24 = [[POUserLoginState alloc] initWithUniqueIdentifier:v12];
  }

  if (v13)
  {
    -[POUserLoginState setState:](v24, "setState:", [v13 unsignedIntValue]);
  }

  if (v14)
  {
    [(POUserLoginState *)v24 setLastLogin:v14];
  }

  if (v15)
  {
    -[POUserLoginState setLoginType:](v24, "setLoginType:", [v15 unsignedIntValue]);
  }

  v25 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonCoreProcess updateLoginStateForIdentifier:state:loginDate:loginType:completion:];
  }

  [v23 setObject:v24 forKeyedSubscript:v12];
  v31 = v19;
  v26 = [(PODaemonCoreProcess *)self _saveUserLoginStateList:v23 error:&v31];
  v27 = v31;

  if (v26)
  {
    v28 = 1;
    v29 = 0;
  }

  else
  {
    v28 = 0;
    v29 = v27;
  }

  (v16)[2](v16, v28, v29);

  v30 = *MEMORY[0x277D85DE8];
}

- (void)savePendingSSOTokens:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "[PODaemonCoreProcess savePendingSSOTokens:identifier:completion:]";
    v18 = 2114;
    v19 = v8;
    v20 = 2112;
    v21 = self;
    _os_log_impl(&dword_25E8B1000, v11, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  v15 = 0;
  v12 = [(PODaemonCoreProcess *)self _savePendingSSOTokensData:v10 forIdentifier:v8 error:&v15];

  v13 = v15;
  v9[2](v9, v12, v13);

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_savePendingSSOTokensData:(id)a3 forIdentifier:(id)a4 error:(id *)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v31 = "[PODaemonCoreProcess _savePendingSSOTokensData:forIdentifier:error:]";
    v32 = 2114;
    v33 = v9;
    v34 = 2112;
    v35 = self;
    _os_log_impl(&dword_25E8B1000, v10, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  if (+[POCoreConfigurationUtil platformSSODevModeEnabled])
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
    v12 = PO_LOG_PODaemonCoreProcess();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PODaemonCoreProcess _savePendingSSOTokensData:forIdentifier:error:];
    }
  }

  if (![(PODaemonCoreProcess *)self baseSystem])
  {
    v16 = [(PODaemonCoreProcess *)self _defaultConfigurationPath];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.PlatformSSO.pending.%@.txt", v9];
    v18 = [v16 URLByAppendingPathComponent:v17];

    v29 = 0;
    LOBYTE(v16) = [(PODaemonCoreProcess *)self writeData:v8 toPath:v18 saveError:&v29];
    v19 = v29;
    v20 = v19;
    if ((v16 & 1) == 0)
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __69__PODaemonCoreProcess__savePendingSSOTokensData_forIdentifier_error___block_invoke;
      v27[3] = &unk_279A3DC48;
      v20 = v19;
      v28 = v20;
      v23 = __69__PODaemonCoreProcess__savePendingSSOTokensData_forIdentifier_error___block_invoke(v27);
      if (a5)
      {
        v23 = v23;
        *a5 = v23;
      }

      v15 = 0;
      goto LABEL_21;
    }

    v21 = PO_LOG_PODaemonCoreProcess();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [v18 path];
      *buf = 138543362;
      v31 = v22;
      _os_log_impl(&dword_25E8B1000, v21, OS_LOG_TYPE_INFO, "pending tokens written to file: %{public}@", buf, 0xCu);
    }

LABEL_20:
    v15 = 1;
LABEL_21:

    goto LABEL_22;
  }

  v13 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonCoreProcess _savePendingSSOTokensData:forIdentifier:error:];
  }

  v14 = _cachedPendingTokens;
  objc_sync_enter(v14);
  [_cachedPendingTokens setObject:v8 forKeyedSubscript:v9];
  objc_sync_exit(v14);

  if (!_cacheTransaction)
  {
    v24 = os_transaction_create();
    v20 = _cacheTransaction;
    _cacheTransaction = v24;
    goto LABEL_20;
  }

  v15 = 1;
LABEL_22:

  v25 = *MEMORY[0x277D85DE8];
  return v15;
}

id __69__PODaemonCoreProcess__savePendingSSOTokensData_forIdentifier_error___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to write pending tokens to disk"];
  v2 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

- (void)retrievePendingSSOTokenForIdentifier:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[PODaemonCoreProcess retrievePendingSSOTokenForIdentifier:completion:]";
    v15 = 2114;
    v16 = v6;
    v17 = 2112;
    v18 = self;
    _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  v12 = 0;
  v9 = [(PODaemonCoreProcess *)self _pendingSSOTokensForIdentifier:v6 error:&v12];
  v10 = v12;
  v7[2](v7, v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_pendingSSOTokensForIdentifier:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(PODaemonCoreProcess *)self baseSystem])
  {
    v7 = PO_LOG_PODaemonCoreProcess();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PODaemonCoreProcess _pendingSSOTokensForIdentifier:error:];
    }

    v8 = _cachedPendingTokens;
    objc_sync_enter(v8);
    v9 = [_cachedPendingTokens objectForKeyedSubscript:v6];
    objc_sync_exit(v8);
  }

  else
  {
    v10 = [(PODaemonCoreProcess *)self _defaultConfigurationPath];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.PlatformSSO.pending.%@.txt", v6];
    v8 = [v10 URLByAppendingPathComponent:v11];

    v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v8];
    if (v9)
    {
      if (+[POCoreConfigurationUtil platformSSODevModeEnabled])
      {
        v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
        v13 = PO_LOG_PODaemonCoreProcess();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "length")}];
          *buf = 136316162;
          v20 = "[PODaemonCoreProcess _pendingSSOTokensForIdentifier:error:]";
          v21 = 2114;
          v22 = v8;
          v23 = 2114;
          v24 = v12;
          v25 = 2114;
          v26 = v18;
          v27 = 2112;
          v28 = self;
          _os_log_debug_impl(&dword_25E8B1000, v13, OS_LOG_TYPE_DEBUG, "%s file = %{public}@, data = %{public}@, %{public}@ on %@", buf, 0x34u);
        }
      }

      v14 = v9;
    }

    else
    {
      v15 = __60__PODaemonCoreProcess__pendingSSOTokensForIdentifier_error___block_invoke();
      if (a4)
      {
        v15 = v15;
        *a4 = v15;
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

id __60__PODaemonCoreProcess__pendingSSOTokensForIdentifier_error___block_invoke()
{
  v0 = [POError errorWithCode:-1004 description:@"no pending tokens data to load"];
  v1 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)saveStashedSSOTokens:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "[PODaemonCoreProcess saveStashedSSOTokens:identifier:completion:]";
    v18 = 2114;
    v19 = v8;
    v20 = 2112;
    v21 = self;
    _os_log_impl(&dword_25E8B1000, v11, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  v15 = 0;
  v12 = [(PODaemonCoreProcess *)self _saveStashedSSOTokensData:v10 forIdentifier:v8 error:&v15];

  v13 = v15;
  v9[2](v9, v12, v13);

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_saveStashedSSOTokensData:(id)a3 forIdentifier:(id)a4 error:(id *)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v31 = "[PODaemonCoreProcess _saveStashedSSOTokensData:forIdentifier:error:]";
    v32 = 2114;
    v33 = v9;
    v34 = 2112;
    v35 = self;
    _os_log_impl(&dword_25E8B1000, v10, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  if (+[POCoreConfigurationUtil platformSSODevModeEnabled])
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
    v12 = PO_LOG_PODaemonCoreProcess();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PODaemonCoreProcess _saveStashedSSOTokensData:forIdentifier:error:];
    }
  }

  if (![(PODaemonCoreProcess *)self baseSystem])
  {
    v16 = [(PODaemonCoreProcess *)self _defaultConfigurationPath];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.PlatformSSO.stashed.%@.txt", v9];
    v18 = [v16 URLByAppendingPathComponent:v17];

    v29 = 0;
    LOBYTE(v16) = [(PODaemonCoreProcess *)self writeData:v8 toPath:v18 saveError:&v29];
    v19 = v29;
    v20 = v19;
    if ((v16 & 1) == 0)
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __69__PODaemonCoreProcess__saveStashedSSOTokensData_forIdentifier_error___block_invoke;
      v27[3] = &unk_279A3DC48;
      v20 = v19;
      v28 = v20;
      v23 = __69__PODaemonCoreProcess__saveStashedSSOTokensData_forIdentifier_error___block_invoke(v27);
      if (a5)
      {
        v23 = v23;
        *a5 = v23;
      }

      v15 = 0;
      goto LABEL_21;
    }

    v21 = PO_LOG_PODaemonCoreProcess();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [v18 path];
      *buf = 138543362;
      v31 = v22;
      _os_log_impl(&dword_25E8B1000, v21, OS_LOG_TYPE_INFO, "stashed tokens written to file: %{public}@", buf, 0xCu);
    }

LABEL_20:
    v15 = 1;
LABEL_21:

    goto LABEL_22;
  }

  v13 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonCoreProcess _savePendingSSOTokensData:forIdentifier:error:];
  }

  v14 = _cachedStashedTokens;
  objc_sync_enter(v14);
  [_cachedStashedTokens setObject:v8 forKeyedSubscript:v9];
  objc_sync_exit(v14);

  if (!_cacheTransaction)
  {
    v24 = os_transaction_create();
    v20 = _cacheTransaction;
    _cacheTransaction = v24;
    goto LABEL_20;
  }

  v15 = 1;
LABEL_22:

  v25 = *MEMORY[0x277D85DE8];
  return v15;
}

id __69__PODaemonCoreProcess__saveStashedSSOTokensData_forIdentifier_error___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to write stashed tokens to disk"];
  v2 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

- (void)retrieveStashedSSOTokenForIdentifier:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[PODaemonCoreProcess retrieveStashedSSOTokenForIdentifier:completion:]";
    v15 = 2114;
    v16 = v6;
    v17 = 2112;
    v18 = self;
    _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  v12 = 0;
  v9 = [(PODaemonCoreProcess *)self _stashedSSOTokensForIdentifier:v6 error:&v12];
  v10 = v12;
  v7[2](v7, v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_stashedSSOTokensForIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(PODaemonCoreProcess *)self baseSystem])
  {
    v7 = PO_LOG_PODaemonCoreProcess();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PODaemonCoreProcess _pendingSSOTokensForIdentifier:error:];
    }

    v8 = _cachedStashedTokens;
    objc_sync_enter(v8);
    v9 = [_cachedStashedTokens objectForKeyedSubscript:v6];
    objc_sync_exit(v8);
  }

  else
  {
    v10 = [(PODaemonCoreProcess *)self _defaultConfigurationPath];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.PlatformSSO.stashed.%@.txt", v6];
    v8 = [v10 URLByAppendingPathComponent:v11];

    v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v8];
    if (v9)
    {
      if (+[POCoreConfigurationUtil platformSSODevModeEnabled])
      {
        v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
        v13 = PO_LOG_PODaemonCoreProcess();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [PODaemonCoreProcess _stashedSSOTokensForIdentifier:error:];
        }
      }

      v14 = v9;
    }

    else
    {
      v15 = __60__PODaemonCoreProcess__stashedSSOTokensForIdentifier_error___block_invoke();
      if (a4)
      {
        v15 = v15;
        *a4 = v15;
      }
    }
  }

  return v9;
}

id __60__PODaemonCoreProcess__stashedSSOTokensForIdentifier_error___block_invoke()
{
  v0 = [POError errorWithCode:-1004 description:@"no stashed token data to load"];
  v1 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)saveStashedDecryptionContext:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "[PODaemonCoreProcess saveStashedDecryptionContext:identifier:completion:]";
    v18 = 2114;
    v19 = v8;
    v20 = 2112;
    v21 = self;
    _os_log_impl(&dword_25E8B1000, v11, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  v15 = 0;
  v12 = [(PODaemonCoreProcess *)self _saveStashedDecryptionContextData:v10 forIdentifier:v8 error:&v15];

  v13 = v15;
  v9[2](v9, v12, v13);

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_saveStashedDecryptionContextData:(id)a3 forIdentifier:(id)a4 error:(id *)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v28 = "[PODaemonCoreProcess _saveStashedDecryptionContextData:forIdentifier:error:]";
    v29 = 2114;
    v30 = v9;
    v31 = 2112;
    v32 = self;
    _os_log_impl(&dword_25E8B1000, v10, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  if (+[POCoreConfigurationUtil platformSSODevModeEnabled])
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
    v12 = PO_LOG_PODaemonCoreProcess();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PODaemonCoreProcess _saveStashedDecryptionContextData:forIdentifier:error:];
    }
  }

  v13 = [(PODaemonCoreProcess *)self _defaultConfigurationPath];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.PlatformSSO.context.%@.txt", v9];
  v15 = [v13 URLByAppendingPathComponent:v14];

  v26 = 0;
  v16 = [(PODaemonCoreProcess *)self writeData:v8 toPath:v15 saveError:&v26];
  v17 = v26;
  v18 = v17;
  if (v16)
  {
    v19 = PO_LOG_PODaemonCoreProcess();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [v15 path];
      *buf = 138543362;
      v28 = v20;
      _os_log_impl(&dword_25E8B1000, v19, OS_LOG_TYPE_INFO, "stashed context written to file: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __77__PODaemonCoreProcess__saveStashedDecryptionContextData_forIdentifier_error___block_invoke;
    v24[3] = &unk_279A3DC48;
    v25 = v17;
    v21 = __77__PODaemonCoreProcess__saveStashedDecryptionContextData_forIdentifier_error___block_invoke(v24);
    if (a5)
    {
      v21 = v21;
      *a5 = v21;
    }

    v19 = v25;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v16;
}

id __77__PODaemonCoreProcess__saveStashedDecryptionContextData_forIdentifier_error___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to write stashed context to disk"];
  v2 = PO_LOG_PODaemonCoreProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

- (void)initWithXPCConnection:baseSystem:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeData:toPath:saveError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeData:(uint64_t)a3 toPath:(os_log_t)log saveError:.cold.2(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a3;
  *(buf + 6) = 2114;
  *(buf + 14) = a1;
  _os_log_debug_impl(&dword_25E8B1000, log, OS_LOG_TYPE_DEBUG, "Completed saving data to: %{public}@, %{public}@", buf, 0x16u);
}

- (void)_deviceConfigurationForIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_loginConfigurationForIdentifier:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_25E8B1000, v0, v1, "%s data = %{public}@ on %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_userConfigurationForIdentifier:error:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_25E8B1000, v0, v1, "%s data = %{public}@ on %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_userLoginStateListDataWithError:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_25E8B1000, v0, v1, "%s data = %{public}@ on %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void __58__PODaemonCoreProcess__parseUserLoginStateListData_error___block_invoke_55_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 40);
  OUTLINED_FUNCTION_1();
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_25E8B1000, v4, OS_LOG_TYPE_ERROR, "%{public}@, %{public}@", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_stashedUserLoginStateListDataWithError:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_25E8B1000, v0, v1, "%s data = %{public}@ on %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_removeStashedUserLoginStateListDataWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_saveUserLoginStateList:error:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_25E8B1000, v0, v1, "%s stateList = %{public}@ on %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)updateLoginStateForIdentifier:state:loginDate:loginType:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_savePendingSSOTokensData:forIdentifier:error:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_25E8B1000, v0, v1, "%s data = %{public}@ on %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_savePendingSSOTokensData:forIdentifier:error:.cold.2()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_pendingSSOTokensForIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_saveStashedSSOTokensData:forIdentifier:error:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_25E8B1000, v0, v1, "%s data = %{public}@ on %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_stashedSSOTokensForIdentifier:error:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_25E8B1000, v0, v1, "%s data = %{public}@ on %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_saveStashedDecryptionContextData:forIdentifier:error:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_25E8B1000, v0, v1, "%s data = %{public}@ on %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

@end