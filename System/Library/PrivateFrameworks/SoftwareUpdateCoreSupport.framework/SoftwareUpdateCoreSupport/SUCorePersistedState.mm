@interface SUCorePersistedState
- (BOOL)isPersistedStateLoaded;
- (BOOL)loadPersistedState;
- (SUCorePersistedState)initWithDispatchQueue:(id)a3 withPersistencePath:(id)a4 forPolicyVersion:(id)a5 issuingDefaultLevelLogging:(BOOL)a6;
- (id)_createEmptyPersistedState;
- (id)description;
- (id)persistedContentsType;
- (id)persistedCoreVersion;
- (id)persistedPolicyVersion;
- (id)secureCodedObjectForKey:(id)a3 ofClass:(Class)a4;
- (id)summary;
- (void)_writePersistedState;
- (void)persistState;
- (void)removePersistedState;
@end

@implementation SUCorePersistedState

- (BOOL)loadPersistedState
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SUCorePersistedState *)self persistedState];

  v5 = [(SUCorePersistedState *)self defaultLevelLogging];
  if (!v4)
  {
    if (v5)
    {
      v9 = +[SUCoreLog sharedLogger];
      v10 = [v9 oslog];

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(SUCorePersistedState *)self summary];
        *buf = 138543362;
        v38 = v11;
        _os_log_impl(&dword_1E0F71000, v10, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] loading persisted state with summary: %{public}@", buf, 0xCu);
      }
    }

    v12 = MEMORY[0x1E695DEF0];
    v13 = [(SUCorePersistedState *)self persistencePath];
    v36 = 0;
    v14 = [v12 dataWithContentsOfFile:v13 options:1 error:&v36];
    v7 = v36;

    if (v7)
    {
      v15 = [v7 domain];
      if ([v15 isEqualToString:*MEMORY[0x1E696A250]])
      {
        if ([v7 code]== 4)
        {

LABEL_27:
          if ([(SUCorePersistedState *)self defaultLevelLogging])
          {
            v26 = +[SUCoreLog sharedLogger];
            v27 = [v26 oslog];

            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1E0F71000, v27, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] no persisted state file found at persistence path", buf, 2u);
            }
          }

          v8 = 1;
          goto LABEL_34;
        }

        v25 = [v7 code];

        if (v25 == 260)
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
          v22 = [v21 oslog];

          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v38 = v17;
            _os_log_impl(&dword_1E0F71000, v22, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] loaded persisted state: %{public}@", buf, 0xCu);
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
    [v24 trackError:@"[PERSISTED_STATE]" forReason:@"unable to serialize contents of persisted state file" withResult:8106 withError:v7];

    v8 = 0;
LABEL_34:
    v28 = [(SUCorePersistedState *)self persistedState];

    if (!v28)
    {
      v29 = [(SUCorePersistedState *)self _createEmptyPersistedState];
      [(SUCorePersistedState *)self setPersistedState:v29];

      if ([(SUCorePersistedState *)self defaultLevelLogging])
      {
        v30 = +[SUCoreLog sharedLogger];
        v31 = [v30 oslog];

        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [(SUCorePersistedState *)self persistedState];
          *buf = 138543362;
          v38 = v32;
          _os_log_impl(&dword_1E0F71000, v31, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] created a new, empty persisted state dictionary: %{public}@", buf, 0xCu);
        }
      }
    }

    goto LABEL_40;
  }

  if (v5)
  {
    v6 = +[SUCoreLog sharedLogger];
    v7 = [v6 oslog];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0F71000, v7, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] attempting to load persisted state, but state is already loaded - no operation to perform", buf, 2u);
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

- (SUCorePersistedState)initWithDispatchQueue:(id)a3 withPersistencePath:(id)a4 forPolicyVersion:(id)a5 issuingDefaultLevelLogging:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v18.receiver = self;
  v18.super_class = SUCorePersistedState;
  v14 = [(SUCorePersistedState *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_persistedStateQueue, a3);
    objc_storeStrong(&v15->_persistencePath, a4);
    objc_storeStrong(&v15->_versionPolicyLayer, a5);
    v15->_defaultLevelLogging = a6;
    objc_storeStrong(&v15->_versionSUCore, @"2.1.0");
    persistedState = v15->_persistedState;
    v15->_persistedState = 0;
  }

  return v15;
}

- (BOOL)isPersistedStateLoaded
{
  v2 = self;
  v3 = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SUCorePersistedState *)v2 persistedState];
  LOBYTE(v2) = v4 != 0;

  return v2;
}

- (id)persistedContentsType
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SUCorePersistedState *)self persistedState];

  if (v4)
  {
    v5 = [(SUCorePersistedState *)self persistedState];
    v6 = [v5 safeStringForKey:@"SUCorePersistedStateContentsType"];

    if ([(SUCorePersistedState *)self defaultLevelLogging])
    {
      v7 = +[SUCoreLog sharedLogger];
      v8 = [v7 oslog];

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = v6;
        _os_log_impl(&dword_1E0F71000, v8, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] returning persisted contents type with string value: %{public}@", &v12, 0xCu);
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
  v3 = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SUCorePersistedState *)self persistedState];

  if (v4)
  {
    v5 = [(SUCorePersistedState *)self persistedState];
    v6 = [v5 safeStringForKey:@"SUCorePersistedStateCoreVersion"];

    if ([(SUCorePersistedState *)self defaultLevelLogging])
    {
      v7 = +[SUCoreLog sharedLogger];
      v8 = [v7 oslog];

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = v6;
        _os_log_impl(&dword_1E0F71000, v8, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] returning persisted core version with string value: %{public}@", &v12, 0xCu);
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
  v3 = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SUCorePersistedState *)self persistedState];

  if (v4)
  {
    v5 = [(SUCorePersistedState *)self persistedState];
    v6 = [v5 safeStringForKey:@"SUCorePersistedStatePolicyVersion"];

    if ([(SUCorePersistedState *)self defaultLevelLogging])
    {
      v7 = +[SUCoreLog sharedLogger];
      v8 = [v7 oslog];

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = v6;
        _os_log_impl(&dword_1E0F71000, v8, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] returning persisted policy version with string value: %{public}@", &v12, 0xCu);
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
  v3 = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(v3);

  if ([(SUCorePersistedState *)self defaultLevelLogging])
  {
    v4 = +[SUCoreLog sharedLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(SUCorePersistedState *)self summary];
      *buf = 138543362;
      v19 = v6;
      _os_log_impl(&dword_1E0F71000, v5, OS_LOG_TYPE_DEFAULT, "attempting to remove persisted state with summary: %{public}@", buf, 0xCu);
    }
  }

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [(SUCorePersistedState *)self persistencePath];
  v17 = 0;
  v9 = [v7 removeItemAtPath:v8 error:&v17];
  v10 = v17;
  v11 = v10;
  if (v9)
  {
  }

  else
  {
    v12 = [v10 code];

    if (v12 != 4)
    {
      v15 = +[SUCoreDiag sharedDiag];
      [v15 trackError:@"[PERSISTED_STATE]" forReason:@"failed to remove persisted state file" withResult:8110 withError:v11];

      goto LABEL_14;
    }
  }

  if ([(SUCorePersistedState *)self defaultLevelLogging])
  {
    v13 = +[SUCoreLog sharedLogger];
    v14 = [v13 oslog];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0F71000, v14, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] successfully removed persisted state file", buf, 2u);
    }
  }

  [(SUCorePersistedState *)self setPersistedState:0];
LABEL_14:

  v16 = *MEMORY[0x1E69E9840];
}

- (id)secureCodedObjectForKey:(id)a3 ofClass:(Class)a4
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a3;
  v8 = [[v6 alloc] initWithObjects:{a4, 0}];
  v9 = [(SUCorePersistedState *)self secureCodedObjectForKey:v7 ofClass:a4 encodeClasses:v8 forType:3];

  return v9;
}

- (void)persistState
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(SUCorePersistedState *)self persistedStateQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SUCorePersistedState *)self persistedState];

  if (v4)
  {
    if ([(SUCorePersistedState *)self defaultLevelLogging])
    {
      v5 = +[SUCoreLog sharedLogger];
      v6 = [v5 oslog];

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(SUCorePersistedState *)self description];
        *buf = 138543362;
        v15 = v7;
        _os_log_impl(&dword_1E0F71000, v6, OS_LOG_TYPE_DEFAULT, "[PERSISTED_STATE] persisting the state %{public}@", buf, 0xCu);
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
  v4 = [(SUCorePersistedState *)self persistencePath];
  v5 = [(SUCorePersistedState *)self versionPolicyLayer];
  v6 = [(SUCorePersistedState *)self versionSUCore];
  v7 = [v3 initWithFormat:@"persistencePath:%@, versionPolicyLayer:%@, versionSUCore:%@", v4, v5, v6];

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(SUCorePersistedState *)self persistencePath];
  v5 = [(SUCorePersistedState *)self versionPolicyLayer];
  v6 = [(SUCorePersistedState *)self versionSUCore];
  v7 = [(SUCorePersistedState *)self persistedState];
  v8 = [v3 initWithFormat:@"\n[>>>\n    persistencePath: %@\n versionPolicyLayer: %@\n      versionSUCore: %@\n     persistedState: %@\n<<<]", v4, v5, v6, v7];

  return v8;
}

- (void)_writePersistedState
{
  v3 = MEMORY[0x1E696AE40];
  v4 = [(SUCorePersistedState *)self persistedState];
  v19 = 0;
  v5 = [v3 dataWithPropertyList:v4 format:200 options:0 error:&v19];
  v6 = v19;

  if (v5)
  {
    v7 = [(SUCorePersistedState *)self persistencePath];
    v18 = v6;
    v8 = [v5 writeToFile:v7 options:268435457 error:&v18];
    v9 = v18;

    if (v8)
    {
      v10 = MEMORY[0x1E696AC00];
      v11 = [(SUCorePersistedState *)self persistencePath];
      v12 = [v10 fileHandleForUpdatingAtPath:v11];

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
  v4 = [(SUCorePersistedState *)self versionSUCore];
  [v3 setValue:v4 forKey:@"SUCorePersistedStateCoreVersion"];

  v5 = [(SUCorePersistedState *)self versionPolicyLayer];
  [v3 setValue:v5 forKey:@"SUCorePersistedStatePolicyVersion"];

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