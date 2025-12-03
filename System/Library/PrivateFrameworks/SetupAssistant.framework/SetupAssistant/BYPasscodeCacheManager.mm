@interface BYPasscodeCacheManager
- (BOOL)storePasscode:(id)passcode;
- (BYPasscodeCacheManager)initWithFeatureFlags:(id)flags;
- (id)cachedPasscode;
- (int)_passcodeType;
- (unint64_t)_secretTypeCorrespondingToPasscodeType:(int)type;
- (void)_updateCachedLocalSecret:(id)secret;
- (void)cachePasscode:(id)passcode retrievable:(BOOL)retrievable;
- (void)persistPasscodeStash;
- (void)uncachePasscode;
- (void)updateCoreCDPStateControllerWithPasscode:(id)passcode;
@end

@implementation BYPasscodeCacheManager

- (BYPasscodeCacheManager)initWithFeatureFlags:(id)flags
{
  flagsCopy = flags;
  v9.receiver = self;
  v9.super_class = BYPasscodeCacheManager;
  v6 = [(BYPasscodeCacheManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_stashedFd = -1;
    objc_storeStrong(&v6->_featureFlags, flags);
  }

  return v7;
}

- (void)cachePasscode:(id)passcode retrievable:(BOOL)retrievable
{
  retrievableCopy = retrievable;
  v38[1] = *MEMORY[0x1E69E9840];
  passcodeCopy = passcode;
  v7 = passcodeCopy;
  if (!self->_isCached && [passcodeCopy length])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _buddyFinished, @"com.apple.purplebuddy.setupdone", 0, CFNotificationSuspensionBehaviorCoalesce);
    v9 = objc_alloc_init(getSecureBackupClass());
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v10 = getkSecureBackupPassphraseKeySymbolLoc_ptr;
    v36 = getkSecureBackupPassphraseKeySymbolLoc_ptr;
    if (!getkSecureBackupPassphraseKeySymbolLoc_ptr)
    {
      v28 = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __getkSecureBackupPassphraseKeySymbolLoc_block_invoke;
      v31 = &unk_1E7D02730;
      v32 = &v33;
      v11 = CloudServicesLibrary_0();
      v34[3] = dlsym(v11, "kSecureBackupPassphraseKey");
      getkSecureBackupPassphraseKeySymbolLoc_ptr = *(v32[1] + 24);
      v10 = v34[3];
    }

    _Block_object_dispose(&v33, 8);
    if (!v10)
    {
      +[BYSiriUtilities deviceSupportsSystemAssistantExperience];
      __break(1u);
    }

    v37 = *v10;
    v38[0] = v7;
    v12 = MEMORY[0x1E695DF20];
    v13 = v37;
    v14 = [v12 dictionaryWithObjects:v38 forKeys:&v37 count:1];

    v15 = [v9 cachePassphraseWithInfo:v14];
    [v7 dataUsingEncoding:4];
    v16 = MKBKeyBagKeyStashCreateWithMode();
    v17 = _BYLoggingFacility();
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(BYPasscodeCacheManager *)v16 cachePasscode:v18 retrievable:v19, v20, v21, v22, v23, v24];
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_1B862F000, v18, OS_LOG_TYPE_DEFAULT, "Keybag stash created successfully", &v28, 2u);
    }

    if (retrievableCopy)
    {
      self->_retrievable = [(BYPasscodeCacheManager *)self storePasscode:v7];
    }

    v25 = [(BYPasscodeCacheManager *)self featureFlags:v28];
    isUseCDPContextSecretInsteadOfSBDSecretEnabled = [v25 isUseCDPContextSecretInsteadOfSBDSecretEnabled];

    if (isUseCDPContextSecretInsteadOfSBDSecretEnabled)
    {
      [(BYPasscodeCacheManager *)self _updateCachedLocalSecret:v7];
    }

    self->_isCached = 1;
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)uncachePasscode
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4(&dword_1B862F000, a2, a3, "Failed to clear keybag stash with error %d", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)storePasscode:(id)passcode
{
  v49[1] = *MEMORY[0x1E69E9840];
  passcodeCopy = passcode;
  v5 = NSTemporaryDirectory();
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  domain = [v5 stringByAppendingPathComponent:uUIDString];
  fileSystemRepresentation = [domain fileSystemRepresentation];

  v10 = open_dprotected_np(fileSystemRepresentation, 1794, 1, 0, 384);
  if (v10 < 0)
  {
    v14 = _BYLoggingFacility();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
LABEL_15:
      v23 = 0;
LABEL_47:

      goto LABEL_48;
    }

    v20 = __error();
    v21 = strerror(*v20);
    *buf = 136315138;
    v45 = v21;
    v22 = "Failed to open temporary file for caching: %s";
LABEL_14:
    _os_log_impl(&dword_1B862F000, v14, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
    goto LABEL_15;
  }

  v11 = v10;
  if ((unlink(fileSystemRepresentation) & 0x80000000) == 0)
  {
    v48 = @"passcode";
    v49[0] = passcodeCopy;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    v43 = 0;
    v13 = [MEMORY[0x1E696AE40] dataWithPropertyList:v12 format:200 options:0 error:&v43];
    v14 = v43;
    if (v13)
    {
      if (ftruncate(v11, [v13 length]) < 0)
      {
        v30 = _BYLoggingFacility();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = __error();
          v32 = strerror(*v31);
          *buf = 136315138;
          v45 = v32;
          _os_log_impl(&dword_1B862F000, v30, OS_LOG_TYPE_DEFAULT, "Unable to truncate cache file: %s", buf, 0xCu);
        }

        if ((close(v11) & 0x80000000) == 0)
        {
          goto LABEL_45;
        }

        v19 = _BYLoggingFacility();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_44;
        }
      }

      else
      {
        v15 = pwrite(v11, [v13 bytes], objc_msgSend(v13, "length"), 0);
        if (v15 < 0)
        {
          v35 = _BYLoggingFacility();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = __error();
            v37 = strerror(*v36);
            *buf = 136315138;
            v45 = v37;
            _os_log_impl(&dword_1B862F000, v35, OS_LOG_TYPE_DEFAULT, "Unable to write cache file: %s", buf, 0xCu);
          }

          if ((close(v11) & 0x80000000) == 0)
          {
            goto LABEL_45;
          }

          v19 = _BYLoggingFacility();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_44;
          }
        }

        else
        {
          v16 = v15;
          if (v15 >= [v13 length])
          {
            self->_stashedFd = v11;
            v23 = 1;
LABEL_46:

            goto LABEL_47;
          }

          v17 = _BYLoggingFacility();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v13 length];
            *buf = 134218240;
            v45 = v16;
            v46 = 2048;
            v47 = v18;
            _os_log_impl(&dword_1B862F000, v17, OS_LOG_TYPE_DEFAULT, "Incomplete data written to cache file: read %ld, expected %lu", buf, 0x16u);
          }

          if ((close(v11) & 0x80000000) == 0)
          {
LABEL_45:
            v23 = 0;
            goto LABEL_46;
          }

          v19 = _BYLoggingFacility();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
LABEL_44:

            goto LABEL_45;
          }
        }
      }
    }

    else
    {
      v27 = _BYLoggingFacility();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        if (_BYIsInternalInstall())
        {
          v28 = 0;
          v29 = v14;
        }

        else if (v14)
        {
          v38 = MEMORY[0x1E696AEC0];
          domain = [v14 domain];
          v29 = [v38 stringWithFormat:@"<Error domain: %@, code %ld>", domain, -[NSObject code](v14, "code")];
          v28 = 1;
        }

        else
        {
          v28 = 0;
          v29 = 0;
        }

        *buf = 138543362;
        v45 = v29;
        _os_log_impl(&dword_1B862F000, v27, OS_LOG_TYPE_DEFAULT, "Unable to serialize cache data: %{public}@", buf, 0xCu);
        if (v28)
        {
        }
      }

      if ((close(v11) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      v19 = _BYLoggingFacility();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }
    }

    v39 = __error();
    v40 = strerror(*v39);
    *buf = 136315138;
    v45 = v40;
    _os_log_impl(&dword_1B862F000, v19, OS_LOG_TYPE_DEFAULT, "Failed closing temporary file: %s", buf, 0xCu);
    goto LABEL_44;
  }

  v24 = _BYLoggingFacility();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = __error();
    v26 = strerror(*v25);
    *buf = 136315138;
    v45 = v26;
    _os_log_impl(&dword_1B862F000, v24, OS_LOG_TYPE_DEFAULT, "Failed to unlink temporary file for caching: %s", buf, 0xCu);
  }

  if (close(v11) < 0)
  {
    v14 = _BYLoggingFacility();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v33 = __error();
    v34 = strerror(*v33);
    *buf = 136315138;
    v45 = v34;
    v22 = "Failed closing temporary file: %s";
    goto LABEL_14;
  }

  v23 = 0;
LABEL_48:

  v41 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)cachedPasscode
{
  v36 = *MEMORY[0x1E69E9840];
  featureFlags = [(BYPasscodeCacheManager *)self featureFlags];
  if ([featureFlags isUseCDPContextSecretInsteadOfSBDSecretEnabled])
  {
    cachedLocalSecret = [(BYPasscodeCacheManager *)self cachedLocalSecret];
    validatedSecret = [cachedLocalSecret validatedSecret];

    if (validatedSecret)
    {
      v7 = _BYLoggingFacility();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        buf.st_dev = 136315138;
        *&buf.st_mode = "[BYPasscodeCacheManager cachedPasscode]";
        _os_log_impl(&dword_1B862F000, v7, OS_LOG_TYPE_DEFAULT, "%s: Returning property value.", &buf, 0xCu);
      }

      cachedLocalSecret2 = [(BYPasscodeCacheManager *)self cachedLocalSecret];
      validatedSecret2 = [cachedLocalSecret2 validatedSecret];
      goto LABEL_36;
    }
  }

  else
  {
  }

  stashedFd = self->_stashedFd;
  if (stashedFd < 0)
  {
    validatedSecret2 = 0;
    goto LABEL_37;
  }

  memset(&buf, 0, sizeof(buf));
  if (fstat(stashedFd, &buf) < 0)
  {
    cachedLocalSecret2 = _BYLoggingFacility();
    if (os_log_type_enabled(cachedLocalSecret2, OS_LOG_TYPE_DEFAULT))
    {
      v20 = self->_stashedFd;
      v21 = __error();
      v22 = strerror(*v21);
      *v33 = 67109378;
      *v34 = v20;
      *&v34[4] = 2080;
      *&v34[6] = v22;
      _os_log_impl(&dword_1B862F000, cachedLocalSecret2, OS_LOG_TYPE_DEFAULT, "Failed to stat file (%d): %s", v33, 0x12u);
    }

    validatedSecret2 = 0;
    goto LABEL_36;
  }

  v11 = objc_alloc(MEMORY[0x1E695DF88]);
  cachedLocalSecret2 = [v11 initWithLength:buf.st_size];
  v12 = self->_stashedFd;
  mutableBytes = [cachedLocalSecret2 mutableBytes];
  v14 = pread(v12, mutableBytes, buf.st_size, 0);
  if (v14 < 0)
  {
    v16 = _BYLoggingFacility();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v23 = __error();
      v24 = strerror(*v23);
      *v33 = 136315138;
      *v34 = v24;
      v17 = "Unable to read secure file: %s";
      v18 = v16;
      v19 = 12;
      goto LABEL_19;
    }
  }

  else
  {
    v15 = v14;
    if (v14 >= buf.st_size)
    {
      v32 = 0;
      v25 = [MEMORY[0x1E696AE40] propertyListWithData:cachedLocalSecret2 options:0 format:0 error:&v32];
      v16 = v32;
      if (v25)
      {
        validatedSecret2 = [v25 objectForKeyedSubscript:@"passcode"];
      }

      else
      {
        if ([cachedLocalSecret2 length])
        {
          v26 = _BYLoggingFacility();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            if (_BYIsInternalInstall())
            {
              v27 = 0;
              v28 = v16;
            }

            else if (v16)
            {
              v29 = MEMORY[0x1E696AEC0];
              domain = [v16 domain];
              v28 = [v29 stringWithFormat:@"<Error domain: %@, code %ld>", domain, -[NSObject code](v16, "code")];
              v27 = 1;
            }

            else
            {
              v27 = 0;
              v28 = 0;
            }

            *v33 = 138543362;
            *v34 = v28;
            _os_log_impl(&dword_1B862F000, v26, OS_LOG_TYPE_DEFAULT, "Unable to decode secure file: %{public}@", v33, 0xCu);
            if (v27)
            {
            }
          }
        }

        validatedSecret2 = 0;
      }

      goto LABEL_35;
    }

    v16 = _BYLoggingFacility();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 134218240;
      *v34 = v15;
      *&v34[8] = 2048;
      *&v34[10] = buf.st_size;
      v17 = "Unable to read secure file; read %ld, expected %lld";
      v18 = v16;
      v19 = 22;
LABEL_19:
      _os_log_impl(&dword_1B862F000, v18, OS_LOG_TYPE_DEFAULT, v17, v33, v19);
    }
  }

  validatedSecret2 = 0;
LABEL_35:

LABEL_36:
LABEL_37:
  v30 = *MEMORY[0x1E69E9840];

  return validatedSecret2;
}

- (void)persistPasscodeStash
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4(&dword_1B862F000, a2, a3, "Failed to persist keybag stash with error %d", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_updateCachedLocalSecret:(id)secret
{
  v13 = *MEMORY[0x1E69E9840];
  secretCopy = secret;
  v5 = [(BYPasscodeCacheManager *)self _secretTypeCorrespondingToPasscodeType:[(BYPasscodeCacheManager *)self _passcodeType]];
  v6 = _BYLoggingFacility();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (secretCopy)
  {
    if (v7)
    {
      v11 = 136315138;
      v12 = "[BYPasscodeCacheManager _updateCachedLocalSecret:]";
      _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "%s: Caching secret", &v11, 0xCu);
    }

    v8 = [objc_alloc(MEMORY[0x1E69977F8]) initWithValidatedSecret:secretCopy secretType:v5];
  }

  else
  {
    if (v7)
    {
      v11 = 136315138;
      v12 = "[BYPasscodeCacheManager _updateCachedLocalSecret:]";
      _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "%s: Removing saved CDP local secret", &v11, 0xCu);
    }

    v8 = 0;
  }

  cachedLocalSecret = self->_cachedLocalSecret;
  self->_cachedLocalSecret = v8;

  v10 = *MEMORY[0x1E69E9840];
}

- (int)_passcodeType
{
  v4 = 0;
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  [mEMORY[0x1E69ADFB8] unlockScreenTypeWithOutSimplePasscodeType:&v4];

  return v4;
}

- (unint64_t)_secretTypeCorrespondingToPasscodeType:(int)type
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = _BYLoggingFacility();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (type == -1)
  {
    if (v5)
    {
      v9 = 136315138;
      v10 = "[BYPasscodeCacheManager _secretTypeCorrespondingToPasscodeType:]";
      _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "%s: Saving complex device secret type", &v9, 0xCu);
    }

    v6 = 3;
  }

  else
  {
    if (v5)
    {
      v9 = 136315138;
      v10 = "[BYPasscodeCacheManager _secretTypeCorrespondingToPasscodeType:]";
      _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "%s: Saving simple device secret type", &v9, 0xCu);
    }

    v6 = 2;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)updateCoreCDPStateControllerWithPasscode:(id)passcode
{
  passcodeCopy = passcode;
  v5 = _BYLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "Updating CDP StateController", &v15, 2u);
  }

  featureFlags = [(BYPasscodeCacheManager *)self featureFlags];
  isUseCDPContextSecretInsteadOfSBDSecretEnabled = [featureFlags isUseCDPContextSecretInsteadOfSBDSecretEnabled];

  if (isUseCDPContextSecretInsteadOfSBDSecretEnabled)
  {
    v8 = [(BYPasscodeCacheManager *)self _secretTypeCorrespondingToPasscodeType:[(BYPasscodeCacheManager *)self _passcodeType]];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v9 = getCDPContextClass_softClass_0;
    v23 = getCDPContextClass_softClass_0;
    if (!getCDPContextClass_softClass_0)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __getCDPContextClass_block_invoke_0;
      v18 = &unk_1E7D02730;
      v19 = &v20;
      __getCDPContextClass_block_invoke_0(&v15);
      v9 = v21[3];
    }

    v10 = v9;
    _Block_object_dispose(&v20, 8);
    v11 = objc_alloc_init(v9);
    [v11 setType:6];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v12 = getCDPStateControllerClass_softClass_0;
    v23 = getCDPStateControllerClass_softClass_0;
    if (!getCDPStateControllerClass_softClass_0)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __getCDPStateControllerClass_block_invoke_0;
      v18 = &unk_1E7D02730;
      v19 = &v20;
      __getCDPStateControllerClass_block_invoke_0(&v15);
      v12 = v21[3];
    }

    v13 = v12;
    _Block_object_dispose(&v20, 8);
    v14 = [[v12 alloc] initWithContext:v11];
    [v14 localSecretChangedTo:passcodeCopy secretType:v8 completion:&__block_literal_global_26];
  }
}

void __67__BYPasscodeCacheManager_updateCoreCDPStateControllerWithPasscode___block_invoke(uint64_t a1, int a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _BYLoggingFacility();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __67__BYPasscodeCacheManager_updateCoreCDPStateControllerWithPasscode___block_invoke_cold_1(v4, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "Updated local secret: %d", v8, 8u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)cachePasscode:(uint64_t)a3 retrievable:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4(&dword_1B862F000, a2, a3, "Failed to create keybag stash with error %d", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

void __67__BYPasscodeCacheManager_updateCoreCDPStateControllerWithPasscode___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = _BYIsInternalInstall();
  if ((v5 & 1) == 0)
  {
    v6 = MEMORY[0x1E696AEC0];
    v2 = [a1 domain];
    a1 = [v6 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(a1, "code")];
  }

  *buf = 138412290;
  v9 = a1;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Failed to update local secret: %@", buf, 0xCu);
  if (!v5)
  {
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end