@interface RMManagedKeychainController
+ (BOOL)removeAssetsNotMatchingStoreIdentifiers:(id)identifiers scope:(int64_t)scope personaID:(id)d error:(id *)error;
+ (RMSharedLock)lock;
+ (RMSharedLock)modifierLock;
+ (id)newManagedKeychainControllerForScope:(int64_t)scope personaID:(id)d;
- (BOOL)hasDataForAssetKey:(id)key;
- (BOOL)removedKeychainItemsForAssetKey:(id)key error:(id *)error;
- (BOOL)storeACMEDirectoryURL:(id)l clientIdentifier:(id)identifier keySize:(unint64_t)size keyType:(id)type hardwareBound:(BOOL)bound subject:(id)subject subjectAltName:(id)name usageFlags:(unint64_t)self0 extendedKeyUsage:(id)self1 attest:(BOOL)self2 isUserEnrollment:(BOOL)self3 assetKey:(id)self4 error:(id *)self5;
- (BOOL)storePEMData:(id)data assetKey:(id)key error:(id *)error;
- (BOOL)storePKCS12Data:(id)data password:(id)password assetKey:(id)key error:(id *)error;
- (BOOL)storePKCS1Data:(id)data assetKey:(id)key error:(id *)error;
- (BOOL)storePassword:(id)password userName:(id)name assetKey:(id)key error:(id *)error;
- (BOOL)storeSCEPIdentityURL:(id)l caInstanceName:(id)name caFingerprint:(id)fingerprint caCapabilities:(id)capabilities challenge:(id)challenge subject:(id)subject keySize:(unint64_t)size usageFlags:(unint64_t)self0 subjectAltName:(id)self1 retries:(unint64_t)self2 retryDelay:(unsigned int)self3 assetKey:(id)self4 error:(id *)self5;
- (BOOL)unassignAllAssetsFromConfigurationKey:(id)key error:(id *)error;
- (RMManagedKeychainController)initWithScope:(int64_t)scope personaID:(id)d;
- (id)assetKeysForCertificatesAndReturnError:(id *)error;
- (id)assetKeysForIdentitiesAndReturnError:(id *)error;
- (id)assetKeysForPasswordsAndReturnError:(id *)error;
- (id)assignCertificateForAssetKey:(id)key toConfigurationKey:(id)configurationKey access:(void *)access group:(id)group error:(id *)error;
- (id)assignIdentityForAssetKey:(id)key configurationKey:(id)configurationKey access:(void *)access group:(id)group error:(id *)error;
- (id)assignPasswordForAssetKey:(id)key toConfigurationKey:(id)configurationKey access:(void *)access group:(id)group returnUserName:(id *)name error:(id *)error;
- (id)certificatePersistentRefForAssetKey:(id)key error:(id *)error;
- (id)certificatePersistentRefsForAssetKeys:(id)keys error:(id *)error;
- (id)debugState;
- (void)_postNotification;
- (void)debugState;
- (void)lockBeforeModifyingKeychain;
- (void)unlockAfterModifyingKeychain;
@end

@implementation RMManagedKeychainController

+ (id)newManagedKeychainControllerForScope:(int64_t)scope personaID:(id)d
{
  dCopy = d;
  v6 = [[RMManagedKeychainController alloc] initWithScope:scope personaID:dCopy];

  return v6;
}

- (RMManagedKeychainController)initWithScope:(int64_t)scope personaID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = RMManagedKeychainController;
  v8 = [(RMManagedKeychainController *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_scope = scope == 1;
    objc_storeStrong(&v8->_personaID, d);
    v10 = +[RMLog managedKeychainController];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(RMManagedKeychainController *)dCopy initWithScope:scope personaID:v10];
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

- (BOOL)hasDataForAssetKey:(id)key
{
  keyCopy = key;
  v5 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController hasDataForAssetKey:];
  }

  v6 = +[RMManagedKeychainController lock];
  [v6 lock];

  v7 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  scope = [(RMManagedKeychainController *)self scope];
  personaID = [(RMManagedKeychainController *)self personaID];
  LOBYTE(scope) = [v7 hasAssetForAssetKey:keyCopy scope:scope persona:personaID];

  v10 = +[RMManagedKeychainController lock];
  [v10 unlock];

  return scope;
}

- (BOOL)storePassword:(id)password userName:(id)name assetKey:(id)key error:(id *)error
{
  keyCopy = key;
  nameCopy = name;
  passwordCopy = password;
  v13 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController storePassword:userName:assetKey:error:];
  }

  v14 = +[RMManagedKeychainController lock];
  [v14 lock];

  v15 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  scope = [(RMManagedKeychainController *)self scope];
  personaID = [(RMManagedKeychainController *)self personaID];
  LOBYTE(scope) = [v15 storeWithPassword:passwordCopy userName:nameCopy assetKey:keyCopy scope:scope persona:personaID error:error];

  v18 = +[RMManagedKeychainController lock];
  [v18 unlock];

  [RMErrorUtilities convertSwiftErrorReference:error];
  [(RMManagedKeychainController *)self _postNotification];

  return scope;
}

- (BOOL)storePEMData:(id)data assetKey:(id)key error:(id *)error
{
  keyCopy = key;
  dataCopy = data;
  v10 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController storePEMData:assetKey:error:];
  }

  v11 = +[RMManagedKeychainController lock];
  [v11 lock];

  v12 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  scope = [(RMManagedKeychainController *)self scope];
  personaID = [(RMManagedKeychainController *)self personaID];
  LOBYTE(scope) = [v12 storeWithPemData:dataCopy assetKey:keyCopy scope:scope persona:personaID error:error];

  v15 = +[RMManagedKeychainController lock];
  [v15 unlock];

  [RMErrorUtilities convertSwiftErrorReference:error];
  [(RMManagedKeychainController *)self _postNotification];

  return scope;
}

- (BOOL)storePKCS1Data:(id)data assetKey:(id)key error:(id *)error
{
  keyCopy = key;
  dataCopy = data;
  v10 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController storePKCS1Data:assetKey:error:];
  }

  v11 = +[RMManagedKeychainController lock];
  [v11 lock];

  v12 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  scope = [(RMManagedKeychainController *)self scope];
  personaID = [(RMManagedKeychainController *)self personaID];
  LOBYTE(scope) = [v12 storeWithDerData:dataCopy assetKey:keyCopy scope:scope persona:personaID error:error];

  v15 = +[RMManagedKeychainController lock];
  [v15 unlock];

  [RMErrorUtilities convertSwiftErrorReference:error];
  [(RMManagedKeychainController *)self _postNotification];

  return scope;
}

- (BOOL)storePKCS12Data:(id)data password:(id)password assetKey:(id)key error:(id *)error
{
  keyCopy = key;
  passwordCopy = password;
  dataCopy = data;
  v13 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController storePKCS12Data:password:assetKey:error:];
  }

  v14 = +[RMManagedKeychainController lock];
  [v14 lock];

  v15 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  scope = [(RMManagedKeychainController *)self scope];
  personaID = [(RMManagedKeychainController *)self personaID];
  LOBYTE(scope) = [v15 storeWithPkcs12Data:dataCopy password:passwordCopy assetKey:keyCopy scope:scope persona:personaID error:error];

  v18 = +[RMManagedKeychainController lock];
  [v18 unlock];

  [RMErrorUtilities convertSwiftErrorReference:error];
  [(RMManagedKeychainController *)self _postNotification];

  return scope;
}

- (BOOL)storeSCEPIdentityURL:(id)l caInstanceName:(id)name caFingerprint:(id)fingerprint caCapabilities:(id)capabilities challenge:(id)challenge subject:(id)subject keySize:(unint64_t)size usageFlags:(unint64_t)self0 subjectAltName:(id)self1 retries:(unint64_t)self2 retryDelay:(unsigned int)self3 assetKey:(id)self4 error:(id *)self5
{
  keyCopy = key;
  altNameCopy = altName;
  subjectCopy = subject;
  challengeCopy = challenge;
  capabilitiesCopy = capabilities;
  fingerprintCopy = fingerprint;
  nameCopy = name;
  lCopy = l;
  v25 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController storeSCEPIdentityURL:caInstanceName:caFingerprint:caCapabilities:challenge:subject:keySize:usageFlags:subjectAltName:retries:retryDelay:assetKey:error:];
  }

  v26 = +[RMManagedKeychainController lock];
  [v26 lock];

  v27 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  scope = [(RMManagedKeychainController *)self scope];
  personaID = [(RMManagedKeychainController *)self personaID];
  LODWORD(v32) = delay;
  v37 = [v27 storeSCEPIdentityWithUrl:lCopy caInstanceName:nameCopy caFingerprint:fingerprintCopy caCapabilities:capabilitiesCopy challenge:challengeCopy subject:subjectCopy keySize:size usageFlags:flags subjectAltName:altNameCopy retries:retries retryDelay:v32 assetKey:keyCopy scope:scope persona:personaID error:error];

  v30 = +[RMManagedKeychainController lock];
  [v30 unlock];

  [RMErrorUtilities convertSwiftErrorReference:error];
  [(RMManagedKeychainController *)self _postNotification];

  return v37;
}

- (BOOL)storeACMEDirectoryURL:(id)l clientIdentifier:(id)identifier keySize:(unint64_t)size keyType:(id)type hardwareBound:(BOOL)bound subject:(id)subject subjectAltName:(id)name usageFlags:(unint64_t)self0 extendedKeyUsage:(id)self1 attest:(BOOL)self2 isUserEnrollment:(BOOL)self3 assetKey:(id)self4 error:(id *)self5
{
  boundCopy = bound;
  keyCopy = key;
  usageCopy = usage;
  nameCopy = name;
  subjectCopy = subject;
  typeCopy = type;
  identifierCopy = identifier;
  lCopy = l;
  v21 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController storeACMEDirectoryURL:clientIdentifier:keySize:keyType:hardwareBound:subject:subjectAltName:usageFlags:extendedKeyUsage:attest:isUserEnrollment:assetKey:error:];
  }

  v22 = +[RMManagedKeychainController lock];
  [v22 lock];

  v23 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  scope = [(RMManagedKeychainController *)self scope];
  personaID = [(RMManagedKeychainController *)self personaID];
  LOWORD(v28) = __PAIR16__(enrollment, attest);
  v35 = [v23 storeACMEIdentityWithDirectoryURL:lCopy clientIdentifier:identifierCopy keySize:size keyType:typeCopy hardwareBound:boundCopy subject:subjectCopy subjectAltName:nameCopy usageFlags:flags extendedKeyUsage:usageCopy attest:v28 isUserEnrollment:keyCopy assetKey:scope scope:personaID persona:error error:?];

  v26 = +[RMManagedKeychainController lock];
  [v26 unlock];

  [RMErrorUtilities convertSwiftErrorReference:error];
  [(RMManagedKeychainController *)self _postNotification];

  return v35;
}

- (id)assignPasswordForAssetKey:(id)key toConfigurationKey:(id)configurationKey access:(void *)access group:(id)group returnUserName:(id *)name error:(id *)error
{
  keyCopy = key;
  configurationKeyCopy = configurationKey;
  groupCopy = group;
  v17 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController assignPasswordForAssetKey:toConfigurationKey:access:group:returnUserName:error:];
  }

  v18 = +[RMManagedKeychainController lock];
  [v18 lock];

  v19 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  scope = [(RMManagedKeychainController *)self scope];
  personaID = [(RMManagedKeychainController *)self personaID];
  v22 = [v19 assignPasswordWithAssetKey:keyCopy scope:scope persona:personaID toConfigurationKey:configurationKeyCopy accessibility:access accessGroup:groupCopy returnUserName:name error:error];

  v23 = +[RMManagedKeychainController lock];
  [v23 unlock];

  [RMErrorUtilities convertSwiftErrorReference:error];

  return v22;
}

- (id)assignCertificateForAssetKey:(id)key toConfigurationKey:(id)configurationKey access:(void *)access group:(id)group error:(id *)error
{
  keyCopy = key;
  configurationKeyCopy = configurationKey;
  groupCopy = group;
  v15 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController assignCertificateForAssetKey:toConfigurationKey:access:group:error:];
  }

  v16 = +[RMManagedKeychainController lock];
  [v16 lock];

  v17 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  scope = [(RMManagedKeychainController *)self scope];
  personaID = [(RMManagedKeychainController *)self personaID];
  v20 = [v17 assignCertWithAssetKey:keyCopy scope:scope persona:personaID toConfigurationKey:configurationKeyCopy accessibility:access accessGroup:groupCopy error:error];

  v21 = +[RMManagedKeychainController lock];
  [v21 unlock];

  [RMErrorUtilities convertSwiftErrorReference:error];

  return v20;
}

- (id)assignIdentityForAssetKey:(id)key configurationKey:(id)configurationKey access:(void *)access group:(id)group error:(id *)error
{
  keyCopy = key;
  configurationKeyCopy = configurationKey;
  groupCopy = group;
  v15 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController assignIdentityForAssetKey:configurationKey:access:group:error:];
  }

  v16 = +[RMManagedKeychainController lock];
  [v16 lock];

  v17 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  scope = [(RMManagedKeychainController *)self scope];
  personaID = [(RMManagedKeychainController *)self personaID];
  v20 = [v17 assignIdentityWithAssetKey:keyCopy scope:scope persona:personaID toConfigurationKey:configurationKeyCopy accessibility:access accessGroup:groupCopy error:error];

  v21 = +[RMManagedKeychainController lock];
  [v21 unlock];

  [RMErrorUtilities convertSwiftErrorReference:error];

  return v20;
}

- (BOOL)unassignAllAssetsFromConfigurationKey:(id)key error:(id *)error
{
  keyCopy = key;
  v7 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController unassignAllAssetsFromConfigurationKey:error:];
  }

  v8 = +[RMManagedKeychainController lock];
  [v8 lock];

  v9 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  scope = [(RMManagedKeychainController *)self scope];
  personaID = [(RMManagedKeychainController *)self personaID];
  LOBYTE(scope) = [v9 unassignAllAssetsFromConfigurationKey:keyCopy scope:scope persona:personaID error:error];

  v12 = +[RMManagedKeychainController lock];
  [v12 unlock];

  [RMErrorUtilities convertSwiftErrorReference:error];
  return scope;
}

- (BOOL)removedKeychainItemsForAssetKey:(id)key error:(id *)error
{
  keyCopy = key;
  v7 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController removedKeychainItemsForAssetKey:error:];
  }

  v8 = +[RMManagedKeychainController lock];
  [v8 lock];

  v9 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  scope = [(RMManagedKeychainController *)self scope];
  personaID = [(RMManagedKeychainController *)self personaID];
  LOBYTE(scope) = [v9 deleteWithAssetKey:keyCopy scope:scope persona:personaID error:error];

  v12 = +[RMManagedKeychainController lock];
  [v12 unlock];

  [RMErrorUtilities convertSwiftErrorReference:error];
  [(RMManagedKeychainController *)self _postNotification];

  return scope;
}

- (id)assetKeysForCertificatesAndReturnError:(id *)error
{
  v5 = +[RMManagedKeychainController lock];
  [v5 lock];

  v6 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  scope = [(RMManagedKeychainController *)self scope];
  personaID = [(RMManagedKeychainController *)self personaID];
  v9 = [v6 assetKeysForCertificatesWithScope:scope persona:personaID error:error];

  v10 = +[RMManagedKeychainController lock];
  [v10 unlock];

  [RMErrorUtilities convertSwiftErrorReference:error];

  return v9;
}

- (id)assetKeysForIdentitiesAndReturnError:(id *)error
{
  v5 = +[RMManagedKeychainController lock];
  [v5 lock];

  v6 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  scope = [(RMManagedKeychainController *)self scope];
  personaID = [(RMManagedKeychainController *)self personaID];
  v9 = [v6 assetKeysForIdentitiesWithScope:scope persona:personaID error:error];

  v10 = +[RMManagedKeychainController lock];
  [v10 unlock];

  [RMErrorUtilities convertSwiftErrorReference:error];

  return v9;
}

- (id)assetKeysForPasswordsAndReturnError:(id *)error
{
  v5 = +[RMManagedKeychainController lock];
  [v5 lock];

  v6 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  scope = [(RMManagedKeychainController *)self scope];
  personaID = [(RMManagedKeychainController *)self personaID];
  v9 = [v6 assetKeysForPasswordsWithScope:scope persona:personaID error:error];

  v10 = +[RMManagedKeychainController lock];
  [v10 unlock];

  [RMErrorUtilities convertSwiftErrorReference:error];

  return v9;
}

- (id)certificatePersistentRefForAssetKey:(id)key error:(id *)error
{
  keyCopy = key;
  v7 = +[RMManagedKeychainController lock];
  [v7 lock];

  v8 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  scope = [(RMManagedKeychainController *)self scope];
  personaID = [(RMManagedKeychainController *)self personaID];
  v11 = [v8 certificatePersistentRefWithAssetKey:keyCopy scope:scope persona:personaID error:error];

  v12 = +[RMManagedKeychainController lock];
  [v12 unlock];

  [RMErrorUtilities convertSwiftErrorReference:error];

  return v11;
}

- (id)certificatePersistentRefsForAssetKeys:(id)keys error:(id *)error
{
  keysCopy = keys;
  v7 = +[RMManagedKeychainController lock];
  [v7 lock];

  v8 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  scope = [(RMManagedKeychainController *)self scope];
  personaID = [(RMManagedKeychainController *)self personaID];
  v11 = [v8 certificatePersistentRefsWithAssetKeys:keysCopy scope:scope persona:personaID error:error];

  v12 = +[RMManagedKeychainController lock];
  [v12 unlock];

  [RMErrorUtilities convertSwiftErrorReference:error];

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
  scope = [(RMManagedKeychainController *)self scope];
  personaID = [(RMManagedKeychainController *)self personaID];
  v7 = [v4 debugStateWithScope:scope persona:personaID];

  return v7;
}

+ (BOOL)removeAssetsNotMatchingStoreIdentifiers:(id)identifiers scope:(int64_t)scope personaID:(id)d error:(id *)error
{
  identifiersCopy = identifiers;
  dCopy = d;
  v11 = +[RMLog managedKeychainController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [RMManagedKeychainController removeAssetsNotMatchingStoreIdentifiers:identifiersCopy scope:v11 personaID:? error:?];
  }

  v12 = +[RMManagedKeychainController lock];
  [v12 lock];

  v13 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
  v14 = scope == 1;
  v15 = [v13 removeAssetsNotMatchingStoreIdentifiers:identifiersCopy scope:v14 persona:dCopy error:error];

  if (v15)
  {
    v16 = +[_TtC16RemoteManagement15ManagedKeychain sharedInstance];
    v17 = [v16 unassignAssetsNotMatchingStoreIdentifiers:identifiersCopy scope:v14 persona:dCopy error:error];
  }

  else
  {
    v17 = 0;
  }

  v18 = +[RMManagedKeychainController lock];
  [v18 unlock];

  [RMErrorUtilities convertSwiftErrorReference:error];
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