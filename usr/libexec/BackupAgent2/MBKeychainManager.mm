@interface MBKeychainManager
+ (BOOL)addKeybagSecret:(id)a3 forUUID:(id)a4 error:(id *)a5;
+ (BOOL)addLocalBackupPassword:(id)a3 error:(id *)a4;
+ (BOOL)removeKeybagSecretForUUID:(id)a3 error:(id *)a4;
+ (BOOL)removeKeybagSecretsWithError:(id *)a3;
+ (BOOL)removeLocalBackupPasswordAndReturnError:(id *)a3;
+ (BOOL)updateKeybagSecret:(id)a3 forUUID:(id)a4 error:(id *)a5;
+ (BOOL)updateLocalBackupPassword:(id)a3 error:(id *)a4;
+ (id)fetchKeybagSecretForUUID:(id)a3 error:(id *)a4;
+ (id)fetchLocalBackupPasswordAndReturnError:(id *)a3;
@end

@implementation MBKeychainManager

+ (id)fetchLocalBackupPasswordAndReturnError:(id *)a3
{
  v4 = [a1 managerToUse];

  return [v4 fetchLocalBackupPassword:a3];
}

+ (id)fetchKeybagSecretForUUID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_msgSend(a1 "managerToUse")];

  return v7;
}

+ (BOOL)addLocalBackupPassword:(id)a3 error:(id *)a4
{
  v6 = a3;
  LOBYTE(a4) = [objc_msgSend(a1 "managerToUse")];

  return a4;
}

+ (BOOL)addKeybagSecret:(id)a3 forUUID:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  LOBYTE(a5) = [objc_msgSend(a1 "managerToUse")];

  return a5;
}

+ (BOOL)updateLocalBackupPassword:(id)a3 error:(id *)a4
{
  v6 = a3;
  LOBYTE(a4) = [objc_msgSend(a1 "managerToUse")];

  return a4;
}

+ (BOOL)updateKeybagSecret:(id)a3 forUUID:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  LOBYTE(a5) = [objc_msgSend(a1 "managerToUse")];

  return a5;
}

+ (BOOL)removeLocalBackupPasswordAndReturnError:(id *)a3
{
  v4 = [a1 managerToUse];

  return [v4 removeLocalBackupPassword:a3];
}

+ (BOOL)removeKeybagSecretsWithError:(id *)a3
{
  v4 = [a1 managerToUse];

  return [v4 removeKeybagSecretsWithError:a3];
}

+ (BOOL)removeKeybagSecretForUUID:(id)a3 error:(id *)a4
{
  v6 = a3;
  LOBYTE(a4) = [objc_msgSend(a1 "managerToUse")];

  return a4;
}

@end