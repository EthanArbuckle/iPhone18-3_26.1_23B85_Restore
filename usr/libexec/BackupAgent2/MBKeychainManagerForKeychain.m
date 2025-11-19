@interface MBKeychainManagerForKeychain
+ (BOOL)addKeybagSecret:(id)a3 forUUID:(id)a4 error:(id *)a5;
+ (BOOL)addValue:(id)a3 forServiceName:(id)a4 accountName:(id)a5 withAccessibility:(id)a6 error:(id *)a7;
+ (BOOL)removeValueWithServiceName:(id)a3 accountName:(id)a4 error:(id *)a5;
+ (BOOL)removeValueWithServiceName:(id)a3 error:(id *)a4;
+ (BOOL)updateKeybagSecret:(id)a3 forUUID:(id)a4 error:(id *)a5;
+ (BOOL)updateValue:(id)a3 forServiceName:(id)a4 accountName:(id)a5 withAccessibility:(id)a6 error:(id *)a7;
+ (id)fetchKeybagSecretForUUID:(id)a3 error:(id *)a4;
+ (id)fetchValueForServiceName:(id)a3 accountName:(id)a4 error:(id *)a5;
@end

@implementation MBKeychainManagerForKeychain

+ (id)fetchValueForServiceName:(id)a3 accountName:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  result = 0;
  v19[0] = kSecClass;
  v19[1] = kSecAttrService;
  v20[0] = kSecClassGenericPassword;
  v20[1] = v7;
  v19[2] = kSecAttrAccount;
  v19[3] = kSecReturnData;
  v20[2] = v8;
  v20[3] = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling SecItemCopyMatching with query: %{public}@", buf, 0xCu);
    _MBLog();
  }

  v11 = SecItemCopyMatching(v9, &result);
  if (!v11 && result)
  {
    v12 = [NSString alloc];
    v13 = [v12 initWithData:result encoding:4];
    CFRelease(result);
    goto LABEL_16;
  }

  if (v11 == -25308)
  {
    if (a5)
    {
      [MBError errorWithCode:208 format:@"Cannot fetch %@:%@ from keychain while device is locked", v7, v8, v15];
      goto LABEL_14;
    }
  }

  else if (v11 == -25300)
  {
    if (a5)
    {
      [MBError errorWithCode:4 format:@"%@:%@ not found in keychain", v7, v8, v15];
LABEL_14:
      *a5 = v13 = 0;
      goto LABEL_16;
    }
  }

  else if (a5)
  {
    [MBError errorWithCode:1 format:@"Error copying %@:%@ from keychain (%d)", v7, v8, v11];
    goto LABEL_14;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

+ (id)fetchKeybagSecretForUUID:(id)a3 error:(id *)a4
{
  v4 = [a1 fetchValueForServiceName:@"BackupKeybagSecret" accountName:a3 error:a4];
  if (v4)
  {
    v5 = [[NSData alloc] initWithBase64EncodedString:v4 options:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)addValue:(id)a3 forServiceName:(id)a4 accountName:(id)a5 withAccessibility:(id)a6 error:(id *)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v23[0] = kSecClass;
  v23[1] = kSecAttrService;
  v24[0] = kSecClassGenericPassword;
  v24[1] = v11;
  v23[2] = kSecAttrAccount;
  v23[3] = kSecAttrAccessible;
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = &__kCFBooleanFalse;
  v23[4] = kSecReturnData;
  v23[5] = kSecValueData;
  v14 = [a3 dataUsingEncoding:4];
  v24[5] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:6];

  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Calling SecItemAdd with query: %{public}@", buf, 0xCu);
    _MBLog();
  }

  v17 = SecItemAdd(v15, 0);
  v18 = v17;
  if (v17)
  {
    if (v17 == -25308)
    {
      if (a7)
      {
        [MBError errorWithCode:208 format:@"Cannot add %@:%@ while device is locked", v11, v12, v20];
        *a7 = LABEL_9:;
      }
    }

    else if (a7)
    {
      [MBError errorWithCode:1 format:@"Error adding %@:%@ to keychain (%d)", v11, v12, v17];
      goto LABEL_9;
    }
  }

  return v18 == 0;
}

+ (BOOL)addKeybagSecret:(id)a3 forUUID:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 base64EncodedStringWithOptions:0];
  LOBYTE(a5) = [a1 addValue:v9 forServiceName:@"BackupKeybagSecret" accountName:v8 withAccessibility:kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly error:a5];

  return a5;
}

+ (BOOL)updateValue:(id)a3 forServiceName:(id)a4 accountName:(id)a5 withAccessibility:(id)a6 error:(id *)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v29[0] = kSecClass;
  v29[1] = kSecAttrService;
  v30[0] = kSecClassGenericPassword;
  v30[1] = v11;
  v29[2] = kSecAttrAccount;
  v29[3] = kSecReturnData;
  v30[2] = v12;
  v30[3] = &__kCFBooleanFalse;
  v14 = a3;
  v15 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:4];
  v27[0] = kSecValueData;
  v16 = [v14 dataUsingEncoding:4];

  v27[1] = kSecAttrAccessible;
  v28[0] = v16;
  v28[1] = v13;
  v17 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];

  v18 = MBGetDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = v15;
    v25 = 2114;
    v26 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Calling SecItemUpdate with query:%{public}@ attributes:%{public}@", buf, 0x16u);
    _MBLog();
  }

  v19 = SecItemUpdate(v15, v17);
  v20 = v19;
  if (v19)
  {
    if (v19 == -25308)
    {
      if (a7)
      {
        [MBError errorWithCode:208 format:@"Cannot update %@:%@ while device is locked", v11, v12, v22];
        *a7 = LABEL_9:;
      }
    }

    else if (a7)
    {
      [MBError errorWithCode:1 format:@"Error updating %@:%@ in keychain (%d)", v11, v12, v19];
      goto LABEL_9;
    }
  }

  return v20 == 0;
}

+ (BOOL)updateKeybagSecret:(id)a3 forUUID:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 base64EncodedStringWithOptions:0];
  LOBYTE(a5) = [a1 updateValue:v9 forServiceName:@"BackupKeybagSecret" accountName:v8 withAccessibility:kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly error:a5];

  return a5;
}

+ (BOOL)removeValueWithServiceName:(id)a3 accountName:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v17[0] = kSecClass;
  v17[1] = kSecAttrService;
  v18[0] = kSecClassGenericPassword;
  v18[1] = v7;
  v17[2] = kSecAttrAccount;
  v17[3] = kSecReturnData;
  v18[2] = v8;
  v18[3] = &__kCFBooleanFalse;
  v9 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling SecItemDelete with query:%{public}@", buf, 0xCu);
    _MBLog();
  }

  v11 = SecItemDelete(v9);
  v12 = v11;
  if (v11)
  {
    if (v11 == -25308)
    {
      if (a5)
      {
        [MBError errorWithCode:208 format:@"Cannot remove %@:%@ while device is locked", v7, v8, v14];
        *a5 = LABEL_9:;
      }
    }

    else if (a5)
    {
      [MBError errorWithCode:1 format:@"Error removing %@:%@ from keychain (%d)", v7, v8, v11];
      goto LABEL_9;
    }
  }

  return v12 == 0;
}

+ (BOOL)removeValueWithServiceName:(id)a3 error:(id *)a4
{
  v5 = a3;
  v14[0] = kSecClass;
  v14[1] = kSecAttrService;
  v15[0] = kSecClassGenericPassword;
  v15[1] = v5;
  v14[2] = kSecReturnData;
  v15[2] = &__kCFBooleanFalse;
  v6 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Calling SecItemDelete without accountName for query:%{public}@", buf, 0xCu);
    _MBLog();
  }

  v8 = SecItemDelete(v6);
  v9 = v8;
  if (v8)
  {
    if (v8 == -25308)
    {
      if (a4)
      {
        [MBError errorWithCode:208 format:@"Cannot remove %@ while device is locked", v5, v11];
        *a4 = LABEL_9:;
      }
    }

    else if (a4)
    {
      [MBError errorWithCode:1 format:@"Error removing %@ from keychain (%d)", v5, v8];
      goto LABEL_9;
    }
  }

  return v9 == 0;
}

@end