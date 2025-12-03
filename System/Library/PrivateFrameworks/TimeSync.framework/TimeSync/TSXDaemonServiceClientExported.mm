@interface TSXDaemonServiceClientExported
- (TSXDaemonServiceClient)object;
- (void)daemonClientRefresh;
- (void)msgServiceNotification:(unsigned __int16)notification arguments:(const ScalarArgsArrayUserReference *)arguments;
@end

@implementation TSXDaemonServiceClientExported

- (void)daemonClientRefresh
{
  +[_TSF_IODConnection daemonClientRefresh];
  v2 = _dispatchQueue_0;

  dispatch_async(v2, &__block_literal_global_173);
}

void __53__TSXDaemonServiceClientExported_daemonClientRefresh__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[TSMSGService sharedMSGService];
  [v1 daemonClientRefresh];

  objc_autoreleasePoolPop(v0);
}

- (void)msgServiceNotification:(unsigned __int16)notification arguments:(const ScalarArgsArrayUserReference *)arguments
{
  v4 = *&arguments->var0[10];
  v14 = *&arguments->var0[8];
  v15 = v4;
  v5 = *&arguments->var0[14];
  v16 = *&arguments->var0[12];
  v17 = v5;
  v6 = *arguments->var0;
  v7 = *&arguments->var0[4];
  v8 = *&arguments->var0[6];
  v11 = *&arguments->var0[2];
  v12 = v7;
  v13 = v8;
  v18 = *&arguments->var1;
  v10 = v6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__TSXDaemonServiceClientExported_msgServiceNotification_arguments___block_invoke;
  block[3] = &__block_descriptor_178_e5_v8__0l;
  block[4] = arguments;
  notificationCopy = notification;
  dispatch_async(_dispatchQueue_0, block);
}

void __67__TSXDaemonServiceClientExported_msgServiceNotification_arguments___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[TSMSGService sharedMSGService];
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = *(a1 + 168);
    v6 = a1 + 40;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  [v3 dispatchMSGNotification:*(a1 + 176) args:v6 numArgs:v5];

  objc_autoreleasePoolPop(v2);
}

- (TSXDaemonServiceClient)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end