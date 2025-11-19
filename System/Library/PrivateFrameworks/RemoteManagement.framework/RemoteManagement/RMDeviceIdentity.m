@interface RMDeviceIdentity
+ (RMDeviceIdentity)sharedDeviceIdentity;
+ (id)deviceIdentityForTesting;
- (BOOL)_validDeviceIdentityCache;
- (RMDeviceIdentity)deviceIdentityWithCompletionHandler:(id)a3;
- (RMDeviceIdentity)init;
- (void)_cachePrivateKey:(__SecKey *)a3 certificates:(id)a4;
- (void)_copyPersistedIdentityWithFileName:(id)a3 isBAA:(BOOL)a4 completionHandler:(id)a5;
- (void)_fetchOrCreateSelfSignedCertificateWithCompletionHandler:(id)a3;
- (void)_issueDeviceIdentityCertificateWithCompletionHandler:(id)a3;
- (void)_persistIdentityWithPrivateKey:(__SecKey *)a3 certificateChain:(id)a4 fileName:(id)a5 isBAA:(BOOL)a6;
@end

@implementation RMDeviceIdentity

+ (RMDeviceIdentity)sharedDeviceIdentity
{
  if (qword_1000E6810 != -1)
  {
    sub_10002916C();
  }

  v3 = qword_1000E6808;

  return v3;
}

+ (id)deviceIdentityForTesting
{
  v2 = objc_opt_new();

  return v2;
}

- (RMDeviceIdentity)init
{
  v8.receiver = self;
  v8.super_class = RMDeviceIdentity;
  v2 = [(RMDeviceIdentity *)&v8 init];
  v3 = v2;
  if (v2)
  {
    certificates = v2->_certificates;
    v2->_privateKey = 0;
    v2->_certificates = 0;

    v5 = objc_opt_new();
    identityLock = v3->_identityLock;
    v3->_identityLock = v5;
  }

  return v3;
}

- (BOOL)_validDeviceIdentityCache
{
  if ([(RMDeviceIdentity *)self privateKey]&& ([(RMDeviceIdentity *)self certificates], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(RMDeviceIdentity *)self certificates];
    v5 = [v4 objectAtIndexedSubscript:0];

    return [RMSecurityUtilities checkValidAfterWithCertificate:v5 interval:3600.0];
  }

  else
  {
    v6 = +[RMLog deviceIdentity];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100029180();
    }

    return 0;
  }
}

- (void)_cachePrivateKey:(__SecKey *)a3 certificates:(id)a4
{
  v6 = a4;
  v7 = +[RMLog deviceIdentity];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000291B4();
  }

  if ([(RMDeviceIdentity *)self privateKey])
  {
    CFRelease([(RMDeviceIdentity *)self privateKey]);
    [(RMDeviceIdentity *)self setPrivateKey:0];
  }

  v8 = [(RMDeviceIdentity *)self certificates];

  if (v8)
  {
    [(RMDeviceIdentity *)self setCertificates:0];
  }

  [(RMDeviceIdentity *)self setPrivateKey:a3];
  CFRetain([(RMDeviceIdentity *)self privateKey]);
  [(RMDeviceIdentity *)self setCertificates:v6];
}

- (RMDeviceIdentity)deviceIdentityWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = self->_identityLock;
  objc_sync_enter(v5);
  v6 = _os_activity_create(&_mh_execute_header, "DeviceIdentity: retrieving", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  v7 = +[RMLog deviceIdentity];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000291E8();
  }

  if ([(RMDeviceIdentity *)self _validDeviceIdentityCache])
  {
    v8 = [(RMDeviceIdentity *)self privateKey];
    v9 = [(RMDeviceIdentity *)self certificates];
    v4[2](v4, v8, v9, 0);
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100028A48;
    v11[3] = &unk_1000D1A10;
    v11[4] = self;
    v12 = v4;
    [(RMDeviceIdentity *)self _fetchDeviceIdentityCertificateWithCompletionHandler:v11];
    v9 = v12;
  }

  os_activity_scope_leave(&state);
  objc_sync_exit(v5);

  return result;
}

- (void)_issueDeviceIdentityCertificateWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[RMLog deviceIdentity];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100029380();
  }

  v5 = [NSMutableDictionary dictionaryWithCapacity:4];
  [v5 setObject:&off_1000D6E80 forKeyedSubscript:kMAOptionsBAAValidity];
  [v5 setObject:&off_1000D6E98 forKeyedSubscript:kMAOptionsBAASCRTAttestation];
  v10 = kMAOptionsBAAOIDUCRTDeviceIdentifiers;
  v6 = [NSArray arrayWithObjects:&v10 count:1];
  [v5 setObject:v6 forKeyedSubscript:kMAOptionsBAAOIDSToInclude];

  [v5 setObject:@"com.apple.remotemanagementd.device-identity" forKeyedSubscript:kMAOptionsBAAKeychainLabel];
  v7 = [v5 copy];
  v9 = v3;
  v8 = v3;
  DeviceIdentityIssueClientCertificateWithCompletion();
}

- (void)_fetchOrCreateSelfSignedCertificateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[RMErrorUtilities createDeviceIdentityNotFoundError];
  (*(a3 + 2))(v4, 0, 0, v5);
}

- (void)_copyPersistedIdentityWithFileName:(id)a3 isBAA:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v13 = a5;
  v7 = a3;
  v8 = [RMLocations identityDirectoryURLCreateIfNeeded:1];
  v9 = +[NSFileManager defaultManager];
  [v9 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:0];

  v10 = [v8 URLByAppendingPathComponent:v7 isDirectory:0];

  v11 = [NSDictionary dictionaryWithContentsOfURL:v10 error:0];
  if (v11)
  {
    if (v5)
    {
      [RMSecurityUtilities deserializeBAAIdentity:v11 completionHandler:v13];
    }

    else
    {
      [RMSecurityUtilities deserializeIdentity:v11 completionHandler:v13];
    }
  }

  else
  {
    v12 = +[RMErrorUtilities createInternalError];
    (*(v13 + 2))(v13, 0, 0, v12);
  }
}

- (void)_persistIdentityWithPrivateKey:(__SecKey *)a3 certificateChain:(id)a4 fileName:(id)a5 isBAA:(BOOL)a6
{
  v6 = a6;
  v9 = a5;
  v10 = a4;
  v11 = [RMLocations identityDirectoryURLCreateIfNeeded:1];
  v12 = +[NSFileManager defaultManager];
  [v12 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:0];

  v13 = [v11 URLByAppendingPathComponent:v9 isDirectory:0];

  if (v6)
  {
    v22 = 0;
    v14 = &v22;
    v15 = [RMSecurityUtilities serializeBAAIdentityWithPrivateKey:a3 certificateChain:v10 error:&v22];
  }

  else
  {
    v21 = 0;
    v14 = &v21;
    v15 = [RMSecurityUtilities serializeIdentityWithPrivateKey:a3 certificateChain:v10 error:&v21];
  }

  v16 = v15;

  v17 = *v14;
  v18 = v17;
  if (v16)
  {
    v20 = v17;
    [v16 writeToURL:v13 error:&v20];
    v19 = v20;

    v18 = v19;
  }
}

@end