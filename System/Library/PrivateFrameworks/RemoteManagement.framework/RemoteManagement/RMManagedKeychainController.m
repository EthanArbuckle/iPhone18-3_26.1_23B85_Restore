@interface RMManagedKeychainController
+ (BOOL)removeAssetsNotMatchingStoreIdentifiers:(id)a3 scope:(int64_t)a4 personaID:(id)a5 error:(id *)a6;
+ (RMSharedLock)lock;
+ (RMSharedLock)modifierLock;
+ (id)newManagedKeychainControllerForScope:(int64_t)a3 personaID:(id)a4;
- (BOOL)hasDataForAssetKey:(id)a3;
- (BOOL)removedKeychainItemsForAssetKey:(id)a3 error:(id *)a4;
- (BOOL)storeACMEDirectoryURL:(id)a3 clientIdentifier:(id)a4 keySize:(unint64_t)a5 keyType:(id)a6 hardwareBound:(BOOL)a7 subject:(id)a8 subjectAltName:(id)a9 usageFlags:(unint64_t)a10 extendedKeyUsage:(id)a11 attest:(BOOL)a12 isUserEnrollment:(BOOL)a13 assetKey:(id)a14 error:(id *)a15;
- (BOOL)storePEMData:(id)a3 assetKey:(id)a4 error:(id *)a5;
- (BOOL)storePKCS12Data:(id)a3 password:(id)a4 assetKey:(id)a5 error:(id *)a6;
- (BOOL)storePKCS1Data:(id)a3 assetKey:(id)a4 error:(id *)a5;
- (BOOL)storePassword:(id)a3 userName:(id)a4 assetKey:(id)a5 error:(id *)a6;
- (BOOL)storeSCEPIdentityURL:(id)a3 caInstanceName:(id)a4 caFingerprint:(id)a5 caCapabilities:(id)a6 challenge:(id)a7 subject:(id)a8 keySize:(unint64_t)a9 usageFlags:(unint64_t)a10 subjectAltName:(id)a11 retries:(unint64_t)a12 retryDelay:(unsigned int)a13 assetKey:(id)a14 error:(id *)a15;
- (BOOL)unassignAllAssetsFromConfigurationKey:(id)a3 error:(id *)a4;
- (RMManagedKeychainController)initWithScope:(int64_t)a3 personaID:(id)a4;
- (id)assetKeysForCertificatesAndReturnError:(id *)a3;
- (id)assetKeysForIdentitiesAndReturnError:(id *)a3;
- (id)assetKeysForPasswordsAndReturnError:(id *)a3;
- (id)assignCertificateForAssetKey:(id)a3 toConfigurationKey:(id)a4 access:(void *)a5 group:(id)a6 error:(id *)a7;
- (id)assignIdentityForAssetKey:(id)a3 configurationKey:(id)a4 access:(void *)a5 group:(id)a6 error:(id *)a7;
- (id)assignPasswordForAssetKey:(id)a3 toConfigurationKey:(id)a4 access:(void *)a5 group:(id)a6 returnUserName:(id *)a7 error:(id *)a8;
- (id)certificatePersistentRefForAssetKey:(id)a3 error:(id *)a4;
- (id)certificatePersistentRefsForAssetKeys:(id)a3 error:(id *)a4;
- (id)debugState;
- (void)_postNotification;
- (void)debugState;
- (void)lockBeforeModifyingKeychain;
- (void)unlockAfterModifyingKeychain;
@end

@implementation RMManagedKeychainController

+ (id)newManagedKeychainControllerForScope:(int64_t)a3 personaID:(id)a4
{
  v5 = a4;
  v6 = [[RMManagedKeychainController alloc] initWithScope:a3 personaID:v5];

  return v6;
}

- (RMManagedKeychainController)initWithScope:(int64_t)a3 personaID:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = RMManagedKeychainController;
  v8 = [(RMManagedKeychainController *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_scope = a3 == 1;
    objc_storeStrong(&v8->_personaID, a4);
    v10 = +[RMLog managedKeychainController];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(RMManagedKeychainController *)v7 initWithScope:a3 personaID:v10];
    }
  }

  return v9;
}

+ (RMSharedLock)lock
{
  if (lock_onceToken != -1)
  {
    +[RMManagedKeychainController lock];
  }

  v3 = lock_lock;

  return v3;
}

uint64_t __35__RMManagedKeychainController_lock__block_invoke()
{
  lock_lock = [RMSharedLock newSharedLockWithDescription:@"RMManagedKeychainController-internal"];

  return MEMORY[0x1EEE66BB8]();
}

+ (RMSharedLock)modifierLock
{
  if (modifierLock_onceToken != -1)
  {
    +[RMManagedKeychainController modifierLock];
  }

  v3 = modifierLock_lock;

  return v3;
}

uint64_t __43__RMManagedKeychainController_modifierLock__block_invoke()
{
  modifierLock_lock = [RMSharedLock newSharedLockWithDescription:@"RMManagedKeychainController-modifier"];

  return MEMORY[0x1EEE66BB8]();
}

- (void)lockBeforeModifyingKeychain
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)unlockAfterModifyingKeychain
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (BOOL)hasDataForAssetKey:(id)a3
{
  v4 = a3;
  v5 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController hasDataForAssetKey:];
  }

  v6 = +[RMManagedKeychainController lock];
  [v6 lock];

  v7 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  v8 = [(RMManagedKeychainController *)self scope];
  v9 = [(RMManagedKeychainController *)self personaID];
  LOBYTE(v8) = [v7 hasAssetForAssetKey:v4 scope:v8 persona:v9];

  v10 = +[RMManagedKeychainController lock];
  [v10 unlock];

  return v8;
}

- (BOOL)storePassword:(id)a3 userName:(id)a4 assetKey:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController storePassword:userName:assetKey:error:];
  }

  v14 = +[RMManagedKeychainController lock];
  [v14 lock];

  v15 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  v16 = [(RMManagedKeychainController *)self scope];
  v17 = [(RMManagedKeychainController *)self personaID];
  LOBYTE(v16) = [v15 storeWithPassword:v12 userName:v11 assetKey:v10 scope:v16 persona:v17 error:a6];

  v18 = +[RMManagedKeychainController lock];
  [v18 unlock];

  [RMErrorUtilities convertSwiftErrorReference:a6];
  [(RMManagedKeychainController *)self _postNotification];

  return v16;
}

- (BOOL)storePEMData:(id)a3 assetKey:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController storePEMData:assetKey:error:];
  }

  v11 = +[RMManagedKeychainController lock];
  [v11 lock];

  v12 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  v13 = [(RMManagedKeychainController *)self scope];
  v14 = [(RMManagedKeychainController *)self personaID];
  LOBYTE(v13) = [v12 storeWithPemData:v9 assetKey:v8 scope:v13 persona:v14 error:a5];

  v15 = +[RMManagedKeychainController lock];
  [v15 unlock];

  [RMErrorUtilities convertSwiftErrorReference:a5];
  [(RMManagedKeychainController *)self _postNotification];

  return v13;
}

- (BOOL)storePKCS1Data:(id)a3 assetKey:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController storePKCS1Data:assetKey:error:];
  }

  v11 = +[RMManagedKeychainController lock];
  [v11 lock];

  v12 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  v13 = [(RMManagedKeychainController *)self scope];
  v14 = [(RMManagedKeychainController *)self personaID];
  LOBYTE(v13) = [v12 storeWithDerData:v9 assetKey:v8 scope:v13 persona:v14 error:a5];

  v15 = +[RMManagedKeychainController lock];
  [v15 unlock];

  [RMErrorUtilities convertSwiftErrorReference:a5];
  [(RMManagedKeychainController *)self _postNotification];

  return v13;
}

- (BOOL)storePKCS12Data:(id)a3 password:(id)a4 assetKey:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController storePKCS12Data:password:assetKey:error:];
  }

  v14 = +[RMManagedKeychainController lock];
  [v14 lock];

  v15 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  v16 = [(RMManagedKeychainController *)self scope];
  v17 = [(RMManagedKeychainController *)self personaID];
  LOBYTE(v16) = [v15 storeWithPkcs12Data:v12 password:v11 assetKey:v10 scope:v16 persona:v17 error:a6];

  v18 = +[RMManagedKeychainController lock];
  [v18 unlock];

  [RMErrorUtilities convertSwiftErrorReference:a6];
  [(RMManagedKeychainController *)self _postNotification];

  return v16;
}

- (BOOL)storeSCEPIdentityURL:(id)a3 caInstanceName:(id)a4 caFingerprint:(id)a5 caCapabilities:(id)a6 challenge:(id)a7 subject:(id)a8 keySize:(unint64_t)a9 usageFlags:(unint64_t)a10 subjectAltName:(id)a11 retries:(unint64_t)a12 retryDelay:(unsigned int)a13 assetKey:(id)a14 error:(id *)a15
{
  v21 = a14;
  v36 = a11;
  v35 = a8;
  v34 = a7;
  v33 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController storeSCEPIdentityURL:caInstanceName:caFingerprint:caCapabilities:challenge:subject:keySize:usageFlags:subjectAltName:retries:retryDelay:assetKey:error:];
  }

  v26 = +[RMManagedKeychainController lock];
  [v26 lock];

  v27 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  v28 = [(RMManagedKeychainController *)self scope];
  v29 = [(RMManagedKeychainController *)self personaID];
  LODWORD(v32) = a13;
  v37 = [v27 storeSCEPIdentityWithUrl:v24 caInstanceName:v23 caFingerprint:v22 caCapabilities:v33 challenge:v34 subject:v35 keySize:a9 usageFlags:a10 subjectAltName:v36 retries:a12 retryDelay:v32 assetKey:v21 scope:v28 persona:v29 error:a15];

  v30 = +[RMManagedKeychainController lock];
  [v30 unlock];

  [RMErrorUtilities convertSwiftErrorReference:a15];
  [(RMManagedKeychainController *)self _postNotification];

  return v37;
}

- (BOOL)storeACMEDirectoryURL:(id)a3 clientIdentifier:(id)a4 keySize:(unint64_t)a5 keyType:(id)a6 hardwareBound:(BOOL)a7 subject:(id)a8 subjectAltName:(id)a9 usageFlags:(unint64_t)a10 extendedKeyUsage:(id)a11 attest:(BOOL)a12 isUserEnrollment:(BOOL)a13 assetKey:(id)a14 error:(id *)a15
{
  v34 = a7;
  v37 = a14;
  v32 = a11;
  v31 = a9;
  v30 = a8;
  v29 = a6;
  v19 = a4;
  v20 = a3;
  v21 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController storeACMEDirectoryURL:clientIdentifier:keySize:keyType:hardwareBound:subject:subjectAltName:usageFlags:extendedKeyUsage:attest:isUserEnrollment:assetKey:error:];
  }

  v22 = +[RMManagedKeychainController lock];
  [v22 lock];

  v23 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  v24 = [(RMManagedKeychainController *)self scope];
  v25 = [(RMManagedKeychainController *)self personaID];
  LOWORD(v28) = __PAIR16__(a13, a12);
  v35 = [v23 storeACMEIdentityWithDirectoryURL:v20 clientIdentifier:v19 keySize:a5 keyType:v29 hardwareBound:v34 subject:v30 subjectAltName:v31 usageFlags:a10 extendedKeyUsage:v32 attest:v28 isUserEnrollment:v37 assetKey:v24 scope:v25 persona:a15 error:?];

  v26 = +[RMManagedKeychainController lock];
  [v26 unlock];

  [RMErrorUtilities convertSwiftErrorReference:a15];
  [(RMManagedKeychainController *)self _postNotification];

  return v35;
}

- (id)assignPasswordForAssetKey:(id)a3 toConfigurationKey:(id)a4 access:(void *)a5 group:(id)a6 returnUserName:(id *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController assignPasswordForAssetKey:toConfigurationKey:access:group:returnUserName:error:];
  }

  v18 = +[RMManagedKeychainController lock];
  [v18 lock];

  v19 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  v20 = [(RMManagedKeychainController *)self scope];
  v21 = [(RMManagedKeychainController *)self personaID];
  v22 = [v19 assignPasswordWithAssetKey:v14 scope:v20 persona:v21 toConfigurationKey:v15 accessibility:a5 accessGroup:v16 returnUserName:a7 error:a8];

  v23 = +[RMManagedKeychainController lock];
  [v23 unlock];

  [RMErrorUtilities convertSwiftErrorReference:a8];

  return v22;
}

- (id)assignCertificateForAssetKey:(id)a3 toConfigurationKey:(id)a4 access:(void *)a5 group:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController assignCertificateForAssetKey:toConfigurationKey:access:group:error:];
  }

  v16 = +[RMManagedKeychainController lock];
  [v16 lock];

  v17 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  v18 = [(RMManagedKeychainController *)self scope];
  v19 = [(RMManagedKeychainController *)self personaID];
  v20 = [v17 assignCertWithAssetKey:v12 scope:v18 persona:v19 toConfigurationKey:v13 accessibility:a5 accessGroup:v14 error:a7];

  v21 = +[RMManagedKeychainController lock];
  [v21 unlock];

  [RMErrorUtilities convertSwiftErrorReference:a7];

  return v20;
}

- (id)assignIdentityForAssetKey:(id)a3 configurationKey:(id)a4 access:(void *)a5 group:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController assignIdentityForAssetKey:configurationKey:access:group:error:];
  }

  v16 = +[RMManagedKeychainController lock];
  [v16 lock];

  v17 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  v18 = [(RMManagedKeychainController *)self scope];
  v19 = [(RMManagedKeychainController *)self personaID];
  v20 = [v17 assignIdentityWithAssetKey:v12 scope:v18 persona:v19 toConfigurationKey:v13 accessibility:a5 accessGroup:v14 error:a7];

  v21 = +[RMManagedKeychainController lock];
  [v21 unlock];

  [RMErrorUtilities convertSwiftErrorReference:a7];

  return v20;
}

- (BOOL)unassignAllAssetsFromConfigurationKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController unassignAllAssetsFromConfigurationKey:error:];
  }

  v8 = +[RMManagedKeychainController lock];
  [v8 lock];

  v9 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  v10 = [(RMManagedKeychainController *)self scope];
  v11 = [(RMManagedKeychainController *)self personaID];
  LOBYTE(v10) = [v9 unassignAllAssetsFromConfigurationKey:v6 scope:v10 persona:v11 error:a4];

  v12 = +[RMManagedKeychainController lock];
  [v12 unlock];

  [RMErrorUtilities convertSwiftErrorReference:a4];
  return v10;
}

- (BOOL)removedKeychainItemsForAssetKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController removedKeychainItemsForAssetKey:error:];
  }

  v8 = +[RMManagedKeychainController lock];
  [v8 lock];

  v9 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  v10 = [(RMManagedKeychainController *)self scope];
  v11 = [(RMManagedKeychainController *)self personaID];
  LOBYTE(v10) = [v9 deleteWithAssetKey:v6 scope:v10 persona:v11 error:a4];

  v12 = +[RMManagedKeychainController lock];
  [v12 unlock];

  [RMErrorUtilities convertSwiftErrorReference:a4];
  [(RMManagedKeychainController *)self _postNotification];

  return v10;
}

- (id)assetKeysForCertificatesAndReturnError:(id *)a3
{
  v5 = +[RMManagedKeychainController lock];
  [v5 lock];

  v6 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  v7 = [(RMManagedKeychainController *)self scope];
  v8 = [(RMManagedKeychainController *)self personaID];
  v9 = [v6 assetKeysForCertificatesWithScope:v7 persona:v8 error:a3];

  v10 = +[RMManagedKeychainController lock];
  [v10 unlock];

  [RMErrorUtilities convertSwiftErrorReference:a3];

  return v9;
}

- (id)assetKeysForIdentitiesAndReturnError:(id *)a3
{
  v5 = +[RMManagedKeychainController lock];
  [v5 lock];

  v6 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  v7 = [(RMManagedKeychainController *)self scope];
  v8 = [(RMManagedKeychainController *)self personaID];
  v9 = [v6 assetKeysForIdentitiesWithScope:v7 persona:v8 error:a3];

  v10 = +[RMManagedKeychainController lock];
  [v10 unlock];

  [RMErrorUtilities convertSwiftErrorReference:a3];

  return v9;
}

- (id)assetKeysForPasswordsAndReturnError:(id *)a3
{
  v5 = +[RMManagedKeychainController lock];
  [v5 lock];

  v6 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  v7 = [(RMManagedKeychainController *)self scope];
  v8 = [(RMManagedKeychainController *)self personaID];
  v9 = [v6 assetKeysForPasswordsWithScope:v7 persona:v8 error:a3];

  v10 = +[RMManagedKeychainController lock];
  [v10 unlock];

  [RMErrorUtilities convertSwiftErrorReference:a3];

  return v9;
}

- (id)certificatePersistentRefForAssetKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[RMManagedKeychainController lock];
  [v7 lock];

  v8 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  v9 = [(RMManagedKeychainController *)self scope];
  v10 = [(RMManagedKeychainController *)self personaID];
  v11 = [v8 certificatePersistentRefWithAssetKey:v6 scope:v9 persona:v10 error:a4];

  v12 = +[RMManagedKeychainController lock];
  [v12 unlock];

  [RMErrorUtilities convertSwiftErrorReference:a4];

  return v11;
}

- (id)certificatePersistentRefsForAssetKeys:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[RMManagedKeychainController lock];
  [v7 lock];

  v8 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  v9 = [(RMManagedKeychainController *)self scope];
  v10 = [(RMManagedKeychainController *)self personaID];
  v11 = [v8 certificatePersistentRefsWithAssetKeys:v6 scope:v9 persona:v10 error:a4];

  v12 = +[RMManagedKeychainController lock];
  [v12 unlock];

  [RMErrorUtilities convertSwiftErrorReference:a4];

  return v11;
}

- (void)_postNotification
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)debugState
{
  v3 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController debugState];
  }

  v4 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  v5 = [(RMManagedKeychainController *)self scope];
  v6 = [(RMManagedKeychainController *)self personaID];
  v7 = [v4 debugStateWithScope:v5 persona:v6];

  return v7;
}

+ (BOOL)removeAssetsNotMatchingStoreIdentifiers:(id)a3 scope:(int64_t)a4 personaID:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  v11 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController removeAssetsNotMatchingStoreIdentifiers:v9 scope:v11 personaID:? error:?];
  }

  v12 = +[RMManagedKeychainController lock];
  [v12 lock];

  v13 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  v14 = a4 == 1;
  v15 = [v13 removeAssetsNotMatchingStoreIdentifiers:v9 scope:v14 persona:v10 error:a6];

  if (v15)
  {
    v16 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
    v17 = [v16 unassignAssetsNotMatchingStoreIdentifiers:v9 scope:v14 persona:v10 error:a6];
  }

  else
  {
    v17 = 0;
  }

  v18 = +[RMManagedKeychainController lock];
  [v18 unlock];

  [RMErrorUtilities convertSwiftErrorReference:a6];
  return v17;
}

- (void)initWithScope:(NSObject *)a3 personaID:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 134218242;
  *&v4[4] = a2;
  *&v4[12] = 2114;
  *&v4[14] = a1;
  OUTLINED_FUNCTION_4_0(&dword_1E1168000, a2, a3, "Created with scope: %ld personaID: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)hasDataForAssetKey:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_1E1168000, v0, v1, "hasDataForAssetKey: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)storePassword:userName:assetKey:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_1E1168000, v0, v1, "storePassword: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)storePEMData:assetKey:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_1E1168000, v0, v1, "storePEMData: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)storePKCS1Data:assetKey:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_1E1168000, v0, v1, "storePKCS1Data: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)storePKCS12Data:password:assetKey:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_1E1168000, v0, v1, "storePKCS12Data identity: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)storeSCEPIdentityURL:caInstanceName:caFingerprint:caCapabilities:challenge:subject:keySize:usageFlags:subjectAltName:retries:retryDelay:assetKey:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_1E1168000, v0, v1, "storeSCEPIdentity identity: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)storeACMEDirectoryURL:clientIdentifier:keySize:keyType:hardwareBound:subject:subjectAltName:usageFlags:extendedKeyUsage:attest:isUserEnrollment:assetKey:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_1E1168000, v0, v1, "storeACMEIdentity identity: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)assignPasswordForAssetKey:toConfigurationKey:access:group:returnUserName:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_0(&dword_1E1168000, v0, v1, "assignPasswordForAssetKey: %{public}@ configuration: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)assignCertificateForAssetKey:toConfigurationKey:access:group:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_0(&dword_1E1168000, v0, v1, "assignCertificateForAssetKey: %{public}@ configuration: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)assignIdentityForAssetKey:configurationKey:access:group:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_0(&dword_1E1168000, v0, v1, "assignIdentityForAssetKey: %{public}@ configuration: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)unassignAllAssetsFromConfigurationKey:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_1E1168000, v0, v1, "unassignAllAssetsFromConfigurationKey: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)removedKeychainItemsForAssetKey:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_1E1168000, v0, v1, "removedKeychainItemsForAssetKey: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)debugState
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)removeAssetsNotMatchingStoreIdentifiers:(void *)a1 scope:(NSObject *)a2 personaID:error:.cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1E1168000, a2, OS_LOG_TYPE_DEBUG, "removeAssetsNotMatchingStoreIdentifiers with %lu store identifiers", v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end