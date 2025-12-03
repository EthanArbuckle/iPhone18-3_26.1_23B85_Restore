@interface SUCorePersistedState
- (BOOL)isPersistedStateLoaded;
- (BOOL)loadPersistedState;
- (SUCorePersistedState)initWithDispatchQueue:(id)queue withPersistencePath:(id)path forPolicyVersion:(id)version issuingDefaultLevelLogging:(BOOL)logging;
- (id)_createEmptyPersistedState;
- (id)description;
- (id)persistedContentsType;
- (id)persistedCoreVersion;
- (id)persistedPolicyVersion;
- (id)secureCodedObjectForKey:(id)key ofClass:(Class)class;
- (id)summary;
- (void)_writePersistedState;
- (void)persistState;
- (void)removePersistedState;
@end

@implementation SUCorePersistedState

- (BOOL)loadPersistedState
{
  v39 = *MEMORY[0x1E69E9840];
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)self persistedState];

  defaultLevelLogging = [(SUCorePersistedState *)self defaultLevelLogging];
  if (!persistedState)
  {
    if (defaultLevelLogging)
    {
      v9 = +[SUCoreLog sharedLogger];
      oslog = [v9 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        summary = [(SUCorePersistedState *)self summary];
        *buf = 138543362;
        v38 = summary;
        _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] loading persisted state with summary: %{public}@", buf, 0xCu);
      }
    }

    v12 = MEMORY[0x1E695DEF0];
    persistencePath = [(SUCorePersistedState *)self persistencePath];
    v36 = 0;
    v14 = [v12 dataWithContentsOfFile:persistencePath options:1 error:&v36];
    oslog5 = v36;

    if (oslog5)
    {
      domain = [oslog5 domain];
      if ([domain isEqualToString:*MEMORY[0x1E696A250]])
      {
        if ([oslog5 code]== 4)
        {

LABEL_27:
          if ([(SUCorePersistedState *)self defaultLevelLogging])
          {
            v26 = +[SUCoreLog sharedLogger];
            oslog2 = [v26 oslog];

            if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1E0F71000, oslog2, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] no persisted state file found at persistence path", buf, 2u);
            }
          }

          v8 = 1;
          goto LABEL_34;
        }

        code = [oslog5 code];

        if (code == 260)
        {
          goto LABEL_27;
        }
      }

      else
      {
      }
    }

    else if (v14)
    {
      v16 = objc_autoreleasePoolPush();
      v35 = 0;
      v17 = [MEMORY[0x1E696AE40] propertyListWithData:v14 options:0 format:0 error:&v35];
      v18 = v35;
      v19 = v18;
      v8 = v17 != 0;
      if (v17)
      {
        if (v18)
        {
          v20 = +[SUCoreDiag sharedDiag];
          [v20 trackAnomaly:@"[PERSISTED_STATE]" forReason:@"an error occurred when loading the persisted state withResult:but the state was still loaded" withError:{8251, v19}];
        }

        if ([(SUCorePersistedState *)self defaultLevelLogging])
        {
          v21 = +[SUCoreLog sharedLogger];
          oslog3 = [v21 oslog];

          if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v38 = v17;
            _os_log_impl(&dword_1E0F71000, oslog3, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] loaded persisted state: %{public}@", buf, 0xCu);
          }
        }

        DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v17, 1uLL);

        [(SUCorePersistedState *)self setPersistedState:DeepCopy];
      }

      else
      {
        DeepCopy = +[SUCoreDiag sharedDiag];
        [DeepCopy trackError:@"[PERSISTED_STATE]" forReason:@"unable to load persisted state as dictionary" withResult:8106 withError:v19];
      }

      objc_autoreleasePoolPop(v16);
      goto LABEL_34;
    }

    v24 = +[SUCoreDiag sharedDiag];
    [v24 trackError:@"[PERSISTED_STATE]" forReason:@"unable to serialize contents of persisted state file" withResult:8106 withError:oslog5];

    v8 = 0;
LABEL_34:
    persistedState2 = [(SUCorePersistedState *)self persistedState];

    if (!persistedState2)
    {
      _createEmptyPersistedState = [(SUCorePersistedState *)self _createEmptyPersistedState];
      [(SUCorePersistedState *)self setPersistedState:_createEmptyPersistedState];

      if ([(SUCorePersistedState *)self defaultLevelLogging])
      {
        v30 = +[SUCoreLog sharedLogger];
        oslog4 = [v30 oslog];

        if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
        {
          persistedState3 = [(SUCorePersistedState *)self persistedState];
          *buf = 138543362;
          v38 = persistedState3;
          _os_log_impl(&dword_1E0F71000, oslog4, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] created a new, empty persisted state dictionary: %{public}@", buf, 0xCu);
        }
      }
    }

    goto LABEL_40;
  }

  if (defaultLevelLogging)
  {
    v6 = +[SUCoreLog sharedLogger];
    oslog5 = [v6 oslog];

    if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0F71000, oslog5, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] attempting to load persisted state, but state is already loaded - no operation to perform", buf, 2u);
    }

    v8 = 1;
LABEL_40:

    goto LABEL_41;
  }

  v8 = 1;
LABEL_41:
  v33 = *MEMORY[0x1E69E9840];
  return v8;
}

- (SUCorePersistedState)initWithDispatchQueue:(id)queue withPersistencePath:(id)path forPolicyVersion:(id)version issuingDefaultLevelLogging:(BOOL)logging
{
  queueCopy = queue;
  pathCopy = path;
  versionCopy = version;
  v18.receiver = self;
  v18.super_class = SUCorePersistedState;
  v14 = [(SUCorePersistedState *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_persistedStateQueue, queue);
    objc_storeStrong(&v15->_persistencePath, path);
    objc_storeStrong(&v15->_versionPolicyLayer, version);
    v15->_defaultLevelLogging = logging;
    objc_storeStrong(&v15->_versionSUCore, @"2.1.0");
    persistedState = v15->_persistedState;
    v15->_persistedState = 0;
  }

  return v15;
}

- (BOOL)isPersistedStateLoaded
{
  selfCopy = self;
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)selfCopy persistedState];
  LOBYTE(selfCopy) = persistedState != 0;

  return selfCopy;
}

- (id)persistedContentsType
{
  v14 = *MEMORY[0x1E69E9840];
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)self persistedState];

  if (persistedState)
  {
    persistedState2 = [(SUCorePersistedState *)self persistedState];
    v6 = [persistedState2 safeStringForKey:@"SUCorePersistedStateContentsType"];

    if ([(SUCorePersistedState *)self defaultLevelLogging])
    {
      v7 = +[SUCoreLog sharedLogger];
      oslog = [v7 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = v6;
        _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] returning persisted contents type with string value: %{public}@", &v12, 0xCu);
      }
    }
  }

  else
  {
    v9 = +[SUCoreDiag sharedDiag];
    [v9 trackError:@"[PERSISTED_STATE]" forReason:@"persisted state is not loaded withResult:unable to load core contents type string" withError:{8250, 0}];

    v6 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)persistedCoreVersion
{
  v14 = *MEMORY[0x1E69E9840];
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)self persistedState];

  if (persistedState)
  {
    persistedState2 = [(SUCorePersistedState *)self persistedState];
    v6 = [persistedState2 safeStringForKey:@"SUCorePersistedStateCoreVersion"];

    if ([(SUCorePersistedState *)self defaultLevelLogging])
    {
      v7 = +[SUCoreLog sharedLogger];
      oslog = [v7 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = v6;
        _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] returning persisted core version with string value: %{public}@", &v12, 0xCu);
      }
    }
  }

  else
  {
    v9 = +[SUCoreDiag sharedDiag];
    [v9 trackError:@"[PERSISTED_STATE]" forReason:@"persisted state is not loaded withResult:unable to load core version string" withError:{8250, 0}];

    v6 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)persistedPolicyVersion
{
  v14 = *MEMORY[0x1E69E9840];
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)self persistedState];

  if (persistedState)
  {
    persistedState2 = [(SUCorePersistedState *)self persistedState];
    v6 = [persistedState2 safeStringForKey:@"SUCorePersistedStatePolicyVersion"];

    if ([(SUCorePersistedState *)self defaultLevelLogging])
    {
      v7 = +[SUCoreLog sharedLogger];
      oslog = [v7 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = v6;
        _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] returning persisted policy version with string value: %{public}@", &v12, 0xCu);
      }
    }
  }

  else
  {
    v9 = +[SUCoreDiag sharedDiag];
    [v9 trackError:@"[PERSISTED_STATE]" forReason:@"persisted state is not loaded withResult:unable to load policy version string" withError:{8250, 0}];

    v6 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)removePersistedState
{
  v20 = *MEMORY[0x1E69E9840];
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  if ([(SUCorePersistedState *)self defaultLevelLogging])
  {
    v4 = +[SUCoreLog sharedLogger];
    oslog = [v4 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      summary = [(SUCorePersistedState *)self summary];
      *buf = 138543362;
      v19 = summary;
      _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "attempting to remove persisted state with summary: %{public}@", buf, 0xCu);
    }
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  persistencePath = [(SUCorePersistedState *)self persistencePath];
  v17 = 0;
  v9 = [defaultManager removeItemAtPath:persistencePath error:&v17];
  v10 = v17;
  v11 = v10;
  if (v9)
  {
  }

  else
  {
    code = [v10 code];

    if (code != 4)
    {
      v15 = +[SUCoreDiag sharedDiag];
      [v15 trackError:@"[PERSISTED_STATE]" forReason:@"failed to remove persisted state file" withResult:8110 withError:v11];

      goto LABEL_14;
    }
  }

  if ([(SUCorePersistedState *)self defaultLevelLogging])
  {
    v13 = +[SUCoreLog sharedLogger];
    oslog2 = [v13 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0F71000, oslog2, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] successfully removed persisted state file", buf, 2u);
    }
  }

  [(SUCorePersistedState *)self setPersistedState:0];
LABEL_14:

  v16 = *MEMORY[0x1E69E9840];
}

- (id)secureCodedObjectForKey:(id)key ofClass:(Class)class
{
  v6 = MEMORY[0x1E695DFD8];
  keyCopy = key;
  v8 = [[v6 alloc] initWithObjects:{class, 0}];
  v9 = [(SUCorePersistedState *)self secureCodedObjectForKey:keyCopy ofClass:class encodeClasses:v8 forType:3];

  return v9;
}

- (void)persistState
{
  v16 = *MEMORY[0x1E69E9840];
  persistedStateQueue = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(persistedStateQueue);

  persistedState = [(SUCorePersistedState *)self persistedState];

  if (persistedState)
  {
    if ([(SUCorePersistedState *)self defaultLevelLogging])
    {
      v5 = +[SUCoreLog sharedLogger];
      oslog = [v5 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(SUCorePersistedState *)self description];
        *buf = 138543362;
        v15 = v7;
        _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] persisting the state %{public}@", buf, 0xCu);
      }
    }

    [(SUCorePersistedState *)self _writePersistedState];
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v13 = +[SUCoreDiag sharedDiag];
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = [(SUCorePersistedState *)self description];
    v11 = [v9 initWithFormat:@"unable to persist state: %@", v10];
    [v13 trackError:@"[PERSISTED_STATE]" forReason:v11 withResult:8250 withError:0];

    v12 = *MEMORY[0x1E69E9840];
  }
}

- (id)summary
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  persistencePath = [(SUCorePersistedState *)self persistencePath];
  versionPolicyLayer = [(SUCorePersistedState *)self versionPolicyLayer];
  versionSUCore = [(SUCorePersistedState *)self versionSUCore];
  v7 = [v3 initWithFormat:@"persistencePath:%@, versionPolicyLayer:%@, versionSUCore:%@", persistencePath, versionPolicyLayer, versionSUCore];

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  persistencePath = [(SUCorePersistedState *)self persistencePath];
  versionPolicyLayer = [(SUCorePersistedState *)self versionPolicyLayer];
  versionSUCore = [(SUCorePersistedState *)self versionSUCore];
  persistedState = [(SUCorePersistedState *)self persistedState];
  v8 = [v3 initWithFormat:@"\n[>>>\n    persistencePath: %@\n versionPolicyLayer: %@\n      versionSUCore: %@\n     persistedState: %@\n<<<]", persistencePath, versionPolicyLayer, versionSUCore, persistedState];

  return v8;
}

- (void)_writePersistedState
{
  v3 = MEMORY[0x1E696AE40];
  persistedState = [(SUCorePersistedState *)self persistedState];
  v19 = 0;
  v5 = [v3 dataWithPropertyList:persistedState format:200 options:0 error:&v19];
  v6 = v19;

  if (v5)
  {
    persistencePath = [(SUCorePersistedState *)self persistencePath];
    v18 = v6;
    v8 = [v5 writeToFile:persistencePath options:268435457 error:&v18];
    v9 = v18;

    if (v8)
    {
      v10 = MEMORY[0x1E696AC00];
      persistencePath2 = [(SUCorePersistedState *)self persistencePath];
      v12 = [v10 fileHandleForUpdatingAtPath:persistencePath2];

      if (v12)
      {
        [v12 synchronizeFile];
        [v12 closeFile];
      }

      else
      {
        v13 = +[SUCoreDiag sharedDiag];
        v14 = objc_alloc(MEMORY[0x1E696AEC0]);
        v15 = *__error();
        v16 = __error();
        v17 = [v14 initWithFormat:@"failed to open persistence file: %d - message: %s", v15, strerror(*v16)];
        [v13 trackError:@"[PERSISTED_STATE]" forReason:v17 withResult:8121 withError:0];
      }
    }

    else
    {
      v12 = +[SUCoreDiag sharedDiag];
      [v12 trackError:@"[PERSISTED_STATE]" forReason:@"failed to write persistence file" withResult:8109 withError:v9];
    }

    v6 = v9;
  }

  else
  {
    v12 = +[SUCoreDiag sharedDiag];
    [v12 trackError:@"[PERSISTED_STATE]" forReason:@"failed to serialize persisted state to plist" withResult:8106 withError:v6];
  }
}

- (id)_createEmptyPersistedState
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setValue:@"SoftwareUpdateCorePersistedStateFile" forKey:@"SUCorePersistedStateContentsType"];
  versionSUCore = [(SUCorePersistedState *)self versionSUCore];
  [v3 setValue:versionSUCore forKey:@"SUCorePersistedStateCoreVersion"];

  versionPolicyLayer = [(SUCorePersistedState *)self versionPolicyLayer];
  [v3 setValue:versionPolicyLayer forKey:@"SUCorePersistedStatePolicyVersion"];

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:0];
  [v3 setValue:v6 forKey:v7];

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:1];
  [v3 setValue:v8 forKey:v9];

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:2];
  [v3 setValue:v10 forKey:v11];

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = [(SUCorePersistedState *)self _keyNameForPersistedStateType:3];
  [v3 setValue:v12 forKey:v13];

  return v3;
}

@end