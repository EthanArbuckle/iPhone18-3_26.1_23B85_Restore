@interface MBEngine
+ (id)stringForEngineMode:(int)a3;
+ (id)stringForEngineType:(int)a3;
+ (id)stringForRestoreType:(int)a3;
- (BOOL)backsUpPrimaryAccount;
- (BOOL)cancelWithError:(id)a3;
- (BOOL)cancelWithReason:(int64_t)a3;
- (BOOL)isBackgroundRestore;
- (BOOL)isDriveEngine;
- (BOOL)isForegroundRestore;
- (MBEngine)initWithSettingsContext:(id)a3 debugContext:(id)a4 domainManager:(id)a5;
- (NSString)engineModeString;
- (NSString)restoreTypeString;
- (unint64_t)enginePolicy;
@end

@implementation MBEngine

+ (id)stringForEngineType:(int)a3
{
  if ((a3 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_1000FE790 + (a3 - 1));
  }
}

+ (id)stringForEngineMode:(int)a3
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1000FE7B0 + (a3 - 1));
  }
}

+ (id)stringForRestoreType:(int)a3
{
  v3 = @"Background";
  if (a3 != 2)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return @"Foreground";
  }

  else
  {
    return v3;
  }
}

- (MBEngine)initWithSettingsContext:(id)a3 debugContext:(id)a4 domainManager:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v22.receiver = self;
  v22.super_class = MBEngine;
  v13 = [(MBEngine *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_settingsContext, a3);
    objc_storeStrong(&v14->_debugContext, a4);
    objc_storeStrong(&v14->_domainManager, a5);
    v15 = voucher_copy();
    clientVoucher = v14->_clientVoucher;
    v14->_clientVoucher = v15;

    v21 = 0;
    v17 = [MBPersona personalPersonaWithError:&v21];
    v18 = v21;
    personalPersona = v14->_personalPersona;
    v14->_personalPersona = v17;

    if (!v14->_personalPersona)
    {
      sub_1000A09BC(a2, v14, v18);
    }
  }

  return v14;
}

- (BOOL)isDriveEngine
{
  v3 = [(MBEngine *)self engineType];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(MBEngine *)self engineType]== 4;
  }

  return v3;
}

- (NSString)engineModeString
{
  v2 = [(MBEngine *)self engineMode];

  return [MBEngine stringForEngineMode:v2];
}

- (NSString)restoreTypeString
{
  v2 = [(MBEngine *)self restoreType];

  return [MBEngine stringForRestoreType:v2];
}

- (BOOL)isForegroundRestore
{
  v3 = [(MBEngine *)self isRestoreEngine];
  if (v3)
  {
    LOBYTE(v3) = [(MBEngine *)self restoreType]== 1;
  }

  return v3;
}

- (BOOL)isBackgroundRestore
{
  v3 = [(MBEngine *)self isRestoreEngine];
  if (v3)
  {
    LOBYTE(v3) = [(MBEngine *)self restoreType]== 2;
  }

  return v3;
}

- (BOOL)cancelWithError:(id)a3
{
  v4 = a3;
  v5 = atomic_load(&self->_canceled);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v15 = self;
      v16 = 2114;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Canceling %{public}@: %{public}@", buf, 0x16u);
      v12 = self;
      v13 = v4;
      _MBLog();
    }

    v8 = [(MBEngine *)self cancelError];

    if (!v8)
    {
      if (!v4)
      {
        v9 = [(MBEngine *)self engineModeString];
        v4 = [MBError errorWithCode:202 format:@"%@ cancelled", v9];
      }

      [(MBEngine *)self setCancelError:v4, v12, v13];
    }

    v6 = atomic_exchange(&self->_canceled, 1u);
    v10 = [(MBEngine *)self cancelError];
    if (!v10)
    {
      sub_1000A0A30();
    }
  }

  return v6 & 1;
}

- (BOOL)cancelWithReason:(int64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v4 = @"%@ cancelled (XPC connection invalidated)";
  }

  else
  {
    v4 = @"%@ cancelled";
  }

  v5 = [(MBEngine *)self engineModeString];
  v6 = [MBError errorWithCode:202 format:v4, v5];

LABEL_7:
  v7 = [(MBEngine *)self cancelWithError:v6];

  return v7;
}

- (BOOL)backsUpPrimaryAccount
{
  if ([(MBEngine *)self isDriveEngine])
  {
    return 1;
  }

  return [(MBEngine *)self isServiceEngine];
}

- (unint64_t)enginePolicy
{
  v3 = [(MBEngine *)self isCloudKitEngine];
  if ([(MBEngine *)self isDriveEngine])
  {
    v3 |= 2uLL;
  }

  if ([(MBEngine *)self isDeviceTransferEngine])
  {
    v3 |= 4uLL;
  }

  if ([(MBEngine *)self encrypted])
  {
    v3 |= 0x10uLL;
  }

  if ([(MBEngine *)self isServiceEngine])
  {
    v3 |= 8uLL;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(MBEngine *)self shouldCommitIfPossible])
  {
    v3 |= 0x40uLL;
  }

  if ([(MBEngine *)self backupPolicy]== 1)
  {
    v3 |= 0x20uLL;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(MBEngine *)self isRestoringToSameDevice])
  {
    v3 |= 0x80uLL;
  }

  return v3;
}

@end