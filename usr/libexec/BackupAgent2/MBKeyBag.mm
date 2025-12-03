@interface MBKeyBag
+ (MBKeyBag)keybagWithData:(id)data error:(id *)error;
+ (MBKeyBag)keybagWithPassword:(id)password error:(id *)error;
+ (__MKBAssertion)holdLockAssertion:(id)assertion;
+ (id)OTAKeyBagWithData:(id)data error:(id *)error;
+ (id)randomSecret;
+ (id)sharedOTAKeyBag;
+ (id)unlockedKeyBagWithData:(id)data password:(id)password error:(id *)error;
+ (int)codeWithReturnCode:(int)code;
+ (void)releaseLockAssertion:(__MKBAssertion *)assertion;
+ (void)startOTABackup;
+ (void)startOTABackupForVolumeUUID:(id)d;
+ (void)stopOTABackup;
+ (void)stopOTABackupForVolumeUUID:(id)d;
- (BOOL)changePasswordFrom:(id)from toPassword:(id)password error:(id *)error;
- (BOOL)changeSecretFrom:(id)from toSecret:(id)secret error:(id *)error;
- (BOOL)decryptFileWithPath:(id)path encryptionKey:(id)key size:(unint64_t)size error:(id *)error;
- (BOOL)decryptFileWithPath:(id)path encryptionKey:(id)key size:(unint64_t)size hardwareModel:(id)model error:(id *)error;
- (BOOL)unlockWithPassword:(id)password error:(id *)error;
- (BOOL)unlockWithSecret:(id)secret error:(id *)error;
- (BOOL)validateEncryptionKey:(id)key file:(_mkbfileref *)file path:(id)path error:(id *)error;
- (BOOL)validateWrappedKey:(id)key error:(id *)error;
- (MBKeyBag)initWithHandle:(__MKBKeyBagHandle *)handle OTA:(BOOL)a;
- (MBKeyBag)initWithOTAHandle:(__MKBOTABackupBagHandle *)handle keyBagData:(id)data;
- (_mkbfileref)encryptedFileForRestoreWithPath:(id)path key:(id)key error:(id *)error;
- (id)UUIDWithError:(id *)error;
- (id)dataWithError:(id *)error;
- (id)encryptionKeyForFile:(_mkbfileref *)file path:(id)path error:(id *)error;
- (void)dealloc;
@end

@implementation MBKeyBag

+ (__MKBAssertion)holdLockAssertion:(id)assertion
{
  assertionCopy = assertion;
  valuePtr = 300;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *keys = *&off_1000FE420;
  values[0] = @"Other";
  values[1] = v4;
  v5 = CFDictionaryCreate(0, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v6 = MKBDeviceLockAssertion();
  CFRelease(v5);
  CFRelease(v4);
  v7 = MBGetDefaultLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v12 = assertionCopy;
      v13 = 2048;
      v14 = v6;
      v15 = 1024;
      v16 = valuePtr;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Holding %{public}@ keybag lock assertion (%p) for %ds", buf, 0x1Cu);
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v12 = assertionCopy;
    v13 = 2112;
    v14 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to acquire keybag lock assertion %{public}@: %@", buf, 0x16u);
    _MBLog();
  }

  return v6;
}

+ (void)releaseLockAssertion:(__MKBAssertion *)assertion
{
  if (assertion)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      assertionCopy = assertion;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Releasing keybag lock assertion (%p)", buf, 0xCu);
      _MBLog();
    }

    CFRelease(assertion);
  }
}

+ (int)codeWithReturnCode:(int)code
{
  if (code > -4)
  {
    switch(code)
    {
      case -1:
        return 1;
      case -2:
        return 208;
      case -3:
        return 207;
    }

    goto LABEL_12;
  }

  if (code == -8)
  {
    return 4;
  }

  if (code != -6)
  {
    if (code == -4)
    {
      return 3;
    }

LABEL_12:
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      codeCopy = code;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No code for MobileKeyBag error: %d", buf, 8u);
      _MBLog();
    }

    return 100;
  }

  v6 = *__error();

  return [MBError codeForErrno:v6];
}

+ (MBKeyBag)keybagWithData:(id)data error:(id *)error
{
  dataCopy = data;
  if (!dataCopy)
  {
    sub_10009F2D4();
  }

  v6 = MKBKeyBagCreateWithData();
  v7 = MBGetDefaultLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MKBKeyBagCreateWithData: %d", buf, 8u);
      _MBLog();
    }

    if (error)
    {
      [MBKeyBag errorWithReturnCode:v6 description:@"MKBKeyBagCreateWithData error"];
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v12 = 0;
      v13 = 2048;
      v14 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "MKBKeyBagCreateWithData: %d %p", buf, 0x12u);
      _MBLog();
    }

    sub_10009F340();
    v9 = [[MBKeyBag alloc] initWithHandle:0 OTA:0];
    CFRelease(0);
  }

  return v9;
}

+ (id)unlockedKeyBagWithData:(id)data password:(id)password error:(id *)error
{
  passwordCopy = password;
  v8 = [MBKeyBag keybagWithData:data error:error];
  v9 = v8;
  if (v8 && [v8 unlockWithPassword:passwordCopy error:error])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (MBKeyBag)keybagWithPassword:(id)password error:(id *)error
{
  [password dataUsingEncoding:4];
  Backup = MKBKeyBagCreateBackup();
  v6 = MBGetDefaultLog();
  v7 = v6;
  if (Backup)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v11 = Backup;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "MKBKeyBagCreateBackup: %d", buf, 8u);
      _MBLog();
    }

    if (error)
    {
      [MBKeyBag errorWithReturnCode:Backup description:@"MKBKeyBagCreateBackup error"];
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v11 = 0;
      v12 = 2048;
      v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MKBKeyBagCreateBackup: %d %p", buf, 0x12u);
      _MBLog();
    }

    sub_10009F39C();
    v8 = [[MBKeyBag alloc] initWithHandle:0 OTA:0];
    CFRelease(0);
  }

  return v8;
}

+ (id)OTAKeyBagWithData:(id)data error:(id *)error
{
  v4 = [MBKeyBag keybagWithData:data error:error];
  [v4 setOTA:1];

  return v4;
}

+ (id)sharedOTAKeyBag
{
  if (qword_10011E490 != -1)
  {
    sub_10009F3F8();
  }

  v3 = qword_10011E488;

  return v3;
}

+ (void)startOTABackup
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MKBOTABackupStart", buf, 2u);
    _MBLog();
  }

  v3 = MKBOTABackupStart();
  if (v3)
  {
    v4 = v3;
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "MKBOTABackupStart failed: %d", buf, 8u);
      _MBLog();
    }
  }
}

+ (void)stopOTABackup
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MKBOTABackupStop", buf, 2u);
    _MBLog();
  }

  v3 = MKBOTABackupStop();
  if (v3)
  {
    v4 = v3;
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "MKBOTABackupStop failed: %d", buf, 8u);
      _MBLog();
    }
  }
}

+ (void)startOTABackupForVolumeUUID:(id)d
{
  dCopy = d;
  uUIDString = [dCopy UUIDString];
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = uUIDString;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MKBOTABackupStartForVolume %{public}@", buf, 0xCu);
    _MBLog();
  }

  v15[0] = 0;
  v15[1] = 0;
  [dCopy getUUIDBytes:v15];
  v6 = [NSData dataWithBytes:v15 length:16];
  if (!v6)
  {
    sub_10009F40C();
  }

  v7 = v6;
  v8 = MKBOTABackupStartForVolume();
  if (v8)
  {
    v9 = v8;
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v12 = uUIDString;
      v13 = 1024;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "MKBOTABackupStartForVolume %{public}@ failed: %d", buf, 0x12u);
      _MBLog();
    }
  }
}

+ (void)stopOTABackupForVolumeUUID:(id)d
{
  dCopy = d;
  uUIDString = [dCopy UUIDString];
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = uUIDString;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MKBOTABackupStopForVolume %{public}@", buf, 0xCu);
    _MBLog();
  }

  v15[0] = 0;
  v15[1] = 0;
  [dCopy getUUIDBytes:v15];
  v6 = [NSData dataWithBytes:v15 length:16];
  if (!v6)
  {
    sub_10009F438();
  }

  v7 = v6;
  v8 = MKBOTABackupStopForVolume();
  if (v8)
  {
    v9 = v8;
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v12 = uUIDString;
      v13 = 1024;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "MKBOTABackupStopForVolume %{public}@ failed: %d", buf, 0x12u);
      _MBLog();
    }
  }
}

+ (id)randomSecret
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Generating random keybag secret", v5, 2u);
    _MBLog();
  }

  v3 = MBRandomDataWithLength();

  return v3;
}

- (MBKeyBag)initWithHandle:(__MKBKeyBagHandle *)handle OTA:(BOOL)a
{
  if (!handle)
  {
    sub_10009F464();
  }

  v9.receiver = self;
  v9.super_class = MBKeyBag;
  v7 = [(MBKeyBag *)&v9 init];
  if (v7)
  {
    v7->_handle = CFRetain(handle);
    v7->_OTA = a;
  }

  return v7;
}

- (MBKeyBag)initWithOTAHandle:(__MKBOTABackupBagHandle *)handle keyBagData:(id)data
{
  dataCopy = data;
  if (!handle)
  {
    sub_10009F4D0();
  }

  v11.receiver = self;
  v11.super_class = MBKeyBag;
  v8 = [(MBKeyBag *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_OTAHandle = handle;
    *&v8->_OTA = 257;
    objc_storeStrong(&v8->_keyBagData, data);
  }

  return v9;
}

- (void)dealloc
{
  if (self->_OTAHandle)
  {
    MKBOTABackupBagClose();
  }

  handle = self->_handle;
  if (handle)
  {
    CFRelease(handle);
  }

  v4.receiver = self;
  v4.super_class = MBKeyBag;
  [(MBKeyBag *)&v4 dealloc];
}

- (BOOL)unlockWithPassword:(id)password error:(id *)error
{
  v6 = [password dataUsingEncoding:4];
  LOBYTE(error) = [(MBKeyBag *)self unlockWithSecret:v6 error:error];

  return error;
}

- (BOOL)unlockWithSecret:(id)secret error:(id *)error
{
  secretCopy = secret;
  if (self->_OTAHandle)
  {
    if (!self->_isUnlocked)
    {
      sub_10009F53C();
    }

    v7 = 1;
  }

  else
  {
    handle = self->_handle;
    v10 = MKBKeyBagUnlock();
    v11 = MBGetDefaultLog();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = self->_handle;
        *buf = 134218240;
        v18 = v13;
        v19 = 1024;
        v20 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "MKBKeyBagUnlock(%p): %d", buf, 0x12u);
        v15 = self->_handle;
        _MBLog();
      }

      if (error)
      {
        [MBKeyBag errorWithReturnCode:v10 description:@"MKBKeyBagUnlock error"];
        *error = v7 = 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 1;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = self->_handle;
        *buf = 134218240;
        v18 = v14;
        v19 = 1024;
        v20 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "MKBKeyBagUnlock(%p): %d", buf, 0x12u);
        v16 = self->_handle;
        _MBLog();
      }

      self->_isUnlocked = 1;
    }
  }

  return v7;
}

- (BOOL)changePasswordFrom:(id)from toPassword:(id)password error:(id *)error
{
  passwordCopy = password;
  v9 = [from dataUsingEncoding:4];
  v10 = [passwordCopy dataUsingEncoding:4];

  LOBYTE(error) = [(MBKeyBag *)self changeSecretFrom:v9 toSecret:v10 error:error];
  return error;
}

- (BOOL)changeSecretFrom:(id)from toSecret:(id)secret error:(id *)error
{
  handle = self->_handle;
  v8 = MKBKeyBagChangeSecret();
  v9 = MBGetDefaultLog();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = self->_handle;
      *buf = 134218240;
      v17 = v11;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "MKBKeyBagChangeSecret(%p): %d", buf, 0x12u);
      v14 = self->_handle;
      _MBLog();
    }

    if (error)
    {
      *error = [MBKeyBag errorWithReturnCode:v8 description:@"MKBKeyBagChangeSecret error"];
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = self->_handle;
      *buf = 134218240;
      v17 = v12;
      v18 = 1024;
      v19 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "MKBKeyBagChangeSecret(%p): %d", buf, 0x12u);
      v15 = self->_handle;
      _MBLog();
    }
  }

  return v8 == 0;
}

- (BOOL)validateWrappedKey:(id)key error:(id *)error
{
  keyCopy = key;
  if (!keyCopy)
  {
    if (error)
    {
      [MBError errorWithCode:205 format:@"Invalid encryption key (key is nil)", v13, v14];
      goto LABEL_9;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_14;
  }

  handle = self->_handle;
  v8 = MKBBackupValidateKeyUUID();
  v9 = MBGetDefaultLog();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = keyCopy;
      v17 = 1024;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "MKBBackupValidateKeyUUID(%@): %d", buf, 0x12u);
      v14 = v8;
      _MBLog();
    }

    if (error)
    {
      [MBError errorWithCode:205 format:@"Encryption key is invalid: %d", v8, v14];
LABEL_9:
      *error = v11 = 0;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v16 = keyCopy;
    v17 = 1024;
    v18 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "MKBBackupValidateKeyUUID(%@): %d", buf, 0x12u);
    _MBLog();
  }

  v11 = 1;
LABEL_14:

  return v11;
}

- (id)dataWithError:(id *)error
{
  keyBagData = self->_keyBagData;
  if (keyBagData)
  {
    v4 = keyBagData;
  }

  else
  {
    handle = self->_handle;
    v9 = MKBKeyBagCopyData();
    if (v9)
    {
      v10 = v9;
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = self->_handle;
        *buf = 134218240;
        v18 = v12;
        v19 = 1024;
        v20 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "MKBKeyBagCopyData(%p): %d", buf, 0x12u);
        v16 = self->_handle;
        _MBLog();
      }

      if (error)
      {
        [MBKeyBag errorWithReturnCode:v10 description:@"MKBKeyBagCopyData error"];
        *error = v4 = 0;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = self->_handle;
        *buf = 134218496;
        v18 = v14;
        v19 = 1024;
        v20 = 0;
        v21 = 2048;
        v22 = [0 length];
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "MKBKeyBagCopyData(%p): %d, size:%lu", buf, 0x1Cu);
        v15 = self->_handle;
        [0 length];
        _MBLog();
      }

      sub_10009F568();
    }
  }

  return v4;
}

- (id)UUIDWithError:(id *)error
{
  if (self->_OTAHandle)
  {
    v6 = MKBOTABackupBagCopyUUID();
    if (v6)
    {
      v7 = v6;
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        OTAHandle = self->_OTAHandle;
        *buf = 134218240;
        *&buf[4] = OTAHandle;
        v21 = 1024;
        v22 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MKBOTABackupBagCopyUUID(%p): %d", buf, 0x12u);
        v18 = self->_OTAHandle;
        v19 = v7;
        _MBLog();
      }

      if (error)
      {
        v10 = @"MKBOTABackupBagCopyUUID error";
LABEL_12:
        v15 = [MBKeyBag errorWithReturnCode:v7 description:v10, v18, v19];
        v16 = v15;
        *error = v15;
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    sub_10009F5C4(a2, self, buf);
LABEL_19:

    goto LABEL_16;
  }

  handle = self->_handle;
  v12 = MKBKeyBagCopyUUID();
  if (!v12)
  {
    sub_10009F628(a2, self, buf);
    goto LABEL_19;
  }

  v7 = v12;
  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = self->_handle;
    *buf = 134218240;
    *&buf[4] = v14;
    v21 = 1024;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "MKBKeyBagCopyUUID(%p): %d", buf, 0x12u);
    v18 = self->_handle;
    v19 = v7;
    _MBLog();
  }

  if (error)
  {
    v10 = @"MKBKeyBagCopyUUID error";
    goto LABEL_12;
  }

LABEL_16:

  return 0;
}

- (id)encryptionKeyForFile:(_mkbfileref *)file path:(id)path error:(id *)error
{
  pathCopy = path;
  handle = self->_handle;
  v9 = MKBFileCopyWrappedKey();
  v10 = MBGetDefaultLog();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = self->_handle;
      *buf = 138412802;
      v18 = pathCopy;
      v19 = 2048;
      v20 = v12;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "MKBFileCopyWrappedKey(%@, %p, ...): %d", buf, 0x1Cu);
      v15 = self->_handle;
      _MBLog();
    }

    if (error)
    {
      *error = [MBKeyBag errorWithReturnCode:v9 path:pathCopy description:@"MKBFileCopyWrappedKey error"];
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = self->_handle;
      *buf = 138412802;
      v18 = pathCopy;
      v19 = 2048;
      v20 = v13;
      v21 = 1024;
      v22 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "MKBFileCopyWrappedKey(%@, %p, ...): %d", buf, 0x1Cu);
      v16 = self->_handle;
      _MBLog();
    }

    sub_10009F68C();
  }

  return 0;
}

- (BOOL)validateEncryptionKey:(id)key file:(_mkbfileref *)file path:(id)path error:(id *)error
{
  pathCopy = path;
  handle = self->_handle;
  v10 = MKBFileValidateWrappedKey();
  v11 = MBGetDefaultLog();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = self->_handle;
      *buf = 138412802;
      v19 = pathCopy;
      v20 = 2048;
      v21 = v13;
      v22 = 1024;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "MKBFileValidateWrappedKey(%@, %p, ...): %d", buf, 0x1Cu);
      v16 = self->_handle;
      _MBLog();
    }

    if (error)
    {
      *error = [MBKeyBag errorWithReturnCode:v10 path:pathCopy description:@"MKBFileValidateWrappedKey error"];
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = self->_handle;
      *buf = 138412802;
      v19 = pathCopy;
      v20 = 2048;
      v21 = v14;
      v22 = 1024;
      v23 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "MKBFileValidateWrappedKey(%@, %p, ...): %d", buf, 0x1Cu);
      v17 = self->_handle;
      _MBLog();
    }
  }

  return v10 == 0;
}

- (_mkbfileref)encryptedFileForRestoreWithPath:(id)path key:(id)key error:(id *)error
{
  pathCopy = path;
  keyCopy = key;
  if (!keyCopy)
  {
    sub_10009F6E8();
  }

  v9 = keyCopy;
  handle = self->_handle;
  v11 = MKBFileCreateForRestore();
  v12 = MBGetDefaultLog();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = pathCopy;
      v17 = 1024;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "MKBFileCreateForRestore(%@, ...): %d", buf, 0x12u);
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v16 = pathCopy;
    v17 = 1024;
    v18 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "MKBFileCreateForRestore(%@, ...): %d", buf, 0x12u);
    _MBLog();
  }

  return 0;
}

- (BOOL)decryptFileWithPath:(id)path encryptionKey:(id)key size:(unint64_t)size error:(id *)error
{
  pathCopy = path;
  keyCopy = key;
  if (!self->_OTAHandle)
  {
    handle = self->_handle;
    [pathCopy fileSystemRepresentation];
    v12 = MKBBackupDecryptInPlace();
    v18 = MBGetDefaultLog();
    v14 = v18;
    if (v12)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = self->_handle;
        *buf = 134219010;
        v32 = v19;
        v33 = 2112;
        v34 = pathCopy;
        v35 = 2048;
        sizeCopy5 = size;
        v37 = 2112;
        v38 = keyCopy;
        v39 = 1024;
        v40 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "MKBBackupDecryptInPlace(%p, %@, %llu, %@): %d", buf, 0x30u);
        v29 = keyCopy;
        v30 = v12;
        v27 = pathCopy;
        sizeCopy6 = size;
        v24 = self->_handle;
        _MBLog();
      }

      if (error)
      {
        v16 = @"MKBBackupDecryptInPlace error";
        goto LABEL_12;
      }

LABEL_15:
      v20 = 0;
      goto LABEL_20;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v22 = self->_handle;
      *buf = 134219010;
      v32 = v22;
      v33 = 2112;
      v34 = pathCopy;
      v35 = 2048;
      sizeCopy5 = size;
      v37 = 2112;
      v38 = keyCopy;
      v39 = 1024;
      v40 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "MKBBackupDecryptInPlace(%p, %@, %llu, %@): %d", buf, 0x30u);
      v26 = self->_handle;
      goto LABEL_18;
    }

LABEL_19:

    v20 = 1;
    goto LABEL_20;
  }

  [pathCopy fileSystemRepresentation];
  v12 = MKBOTABackupDecryptInPlace();
  v13 = MBGetDefaultLog();
  v14 = v13;
  if (!v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      OTAHandle = self->_OTAHandle;
      *buf = 134219010;
      v32 = OTAHandle;
      v33 = 2112;
      v34 = pathCopy;
      v35 = 2048;
      sizeCopy5 = size;
      v37 = 2112;
      v38 = keyCopy;
      v39 = 1024;
      v40 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "MKBOTABackupDecryptInPlace(%p, %@, %llu, %@): %d", buf, 0x30u);
      v25 = self->_OTAHandle;
LABEL_18:
      _MBLog();
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v15 = self->_OTAHandle;
    *buf = 134219010;
    v32 = v15;
    v33 = 2112;
    v34 = pathCopy;
    v35 = 2048;
    sizeCopy5 = size;
    v37 = 2112;
    v38 = keyCopy;
    v39 = 1024;
    v40 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "MKBOTABackupDecryptInPlace(%p, %@, %llu, %@): %d", buf, 0x30u);
    v29 = keyCopy;
    v30 = v12;
    v27 = pathCopy;
    sizeCopy6 = size;
    v24 = self->_OTAHandle;
    _MBLog();
  }

  if (!error)
  {
    goto LABEL_15;
  }

  v16 = @"MKBOTABackupDecryptInPlace error";
LABEL_12:
  [MBKeyBag errorWithReturnCode:v12 path:pathCopy description:v16, v24, v27, sizeCopy6, v29, v30];
  *error = v20 = 0;
LABEL_20:

  return v20;
}

- (BOOL)decryptFileWithPath:(id)path encryptionKey:(id)key size:(unint64_t)size hardwareModel:(id)model error:(id *)error
{
  pathCopy = path;
  keyCopy = key;
  modelCopy = model;
  if (([modelCopy hasPrefix:@"N66"] & 1) != 0 || (objc_msgSend(modelCopy, "hasPrefix:", @"N71") & 1) != 0 || (objc_msgSend(modelCopy, "hasPrefix:", @"J98") & 1) != 0 || objc_msgSend(modelCopy, "hasPrefix:", @"J99"))
  {
    v15 = [keyCopy mutableCopy];
    if (MKBBackupSetKeyEncryptionModeToXTS())
    {
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v21 = pathCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to set encryption mode to XTS for: %{public}@", buf, 0xCu);
        v19 = pathCopy;
        _MBLog();
      }
    }

    keyCopy = v15;
  }

  v17 = [(MBKeyBag *)self decryptFileWithPath:pathCopy encryptionKey:keyCopy size:size error:error, v19];

  return v17;
}

@end