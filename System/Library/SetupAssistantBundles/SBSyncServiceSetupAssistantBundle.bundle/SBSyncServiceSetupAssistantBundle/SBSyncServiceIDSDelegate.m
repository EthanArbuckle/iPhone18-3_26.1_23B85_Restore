@interface SBSyncServiceIDSDelegate
- (SBSyncServiceIDSDelegate)init;
- (void)completeSetupWithResponseParameters:(id)a3 handler:(id)a4;
- (void)setupOperationFailed;
@end

@implementation SBSyncServiceIDSDelegate

- (SBSyncServiceIDSDelegate)init
{
  v5.receiver = self;
  v5.super_class = SBSyncServiceIDSDelegate;
  v2 = [(SBSyncServiceIDSDelegate *)&v5 init];
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "*** Initializing IDS Setup Delegate %p", buf, 0xCu);
  }

  return v2;
}

- (void)completeSetupWithResponseParameters:(id)a3 handler:(id)a4
{
  v6 = +[IMRGLog registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "completeSetupWithResponseParameters", buf, 2u);
  }

  IDSAuthenticationDelegatePrintLoginDelegatesBag();
  [a4 copy];
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_F14;
  block[3] = &unk_4148;
  block[4] = a3;
  dispatch_async(global_queue, block);
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Dispatching deferred completion...", buf, 2u);
  }

  im_dispatch_after();
}

- (void)setupOperationFailed
{
  self->_setupOperationCancelled = 1;
  v2 = +[IMRGLog registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "setupOperationFailed", v3, 2u);
  }
}

@end