@interface EscrowProxySyncOperation
- (EscrowProxySyncOperation)initWithDSID:(id)d;
- (void)main;
@end

@implementation EscrowProxySyncOperation

- (EscrowProxySyncOperation)initWithDSID:(id)d
{
  dCopy = d;
  v8.receiver = self;
  v8.super_class = EscrowProxySyncOperation;
  v5 = [(EscrowProxySyncOperation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(EscrowProxySyncOperation *)v5 setDsid:dCopy];
  }

  return v6;
}

- (void)main
{
  v3 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Synchronize keys with escrow proxy", buf, 2u);
  }

  dsid = [(EscrowProxySyncOperation *)self dsid];
  v5 = PCSCurrentPersonaMatchesDSID();

  if (v5)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:kPCSSetupForceLogging];
    dsid2 = [(EscrowProxySyncOperation *)self dsid];
    [v6 setObject:dsid2 forKeyedSubscript:kPCSSetupDSID];

    v8 = +[PCSMetrics metrics];
    keyRegistryCallback = [v8 keyRegistryCallback];
    v10 = objc_retainBlock(keyRegistryCallback);
    [v6 setObject:v10 forKeyedSubscript:kPCSSetupCallbackKeyRegistry];

    if ((PCSIdentitySynchronizeKeys() & 1) == 0)
    {
      v12 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Fail to synchronize keys: %@", buf, 0xCu);
      }
    }

    completionBlockWithError = [(EscrowProxySyncOperation *)self completionBlockWithError];
    completionBlockWithError[2]();

    v14 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Synchronize keys complete", buf, 2u);
    }
  }

  else
  {
    v11 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Current persona doesn't match dsid", buf, 2u);
    }
  }
}

@end