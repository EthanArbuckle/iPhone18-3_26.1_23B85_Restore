@interface UARPAssetManagerServiceMobileAssetDispatcher
- (UARPAssetManagerServiceMobileAssetDispatcher)initWithConnection:(id)a3;
- (void)checkCacheForSubscription:(id)a3 withReply:(id)a4;
- (void)copyCacheWithReply:(id)a3;
- (void)copySubscriptionsWithReply:(id)a3;
- (void)getIsBusyStatusWithReply:(id)a3;
- (void)subscribeForAsset:(id)a3;
@end

@implementation UARPAssetManagerServiceMobileAssetDispatcher

- (UARPAssetManagerServiceMobileAssetDispatcher)initWithConnection:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = UARPAssetManagerServiceMobileAssetDispatcher;
  v6 = [(UARPAssetManagerServiceMobileAssetDispatcher *)&v10 init];
  if (v6)
  {
    v7 = [[UARPAssetManagerServiceMobileAsset alloc] initWithDelegate:v6];
    assetManager = v6->_assetManager;
    v6->_assetManager = v7;

    objc_storeStrong(&v6->_xpcConnection, a3);
  }

  return v6;
}

- (void)getIsBusyStatusWithReply:(id)a3
{
  assetManager = self->_assetManager;
  v5 = a3;
  (*(a3 + 2))(v5, [(UARPAssetManagerServiceMobileAsset *)assetManager isBusy]);
}

- (void)subscribeForAsset:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UARPAssetManagerServiceMobileAsset *)self->_assetManager subscribeForAsset:v4];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Invalid subscription type: %@", &v5, 0xCu);
  }
}

- (void)checkCacheForSubscription:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(UARPAssetManagerServiceMobileAsset *)self->_assetManager checkCacheForSubscription:v6];
    v7[2](v7, v8);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Invalid subscription type: %@", &v9, 0xCu);
  }
}

- (void)copyCacheWithReply:(id)a3
{
  assetManager = self->_assetManager;
  v4 = a3;
  v5 = [(UARPAssetManagerServiceMobileAsset *)assetManager copyCache];
  v4[2](v4, v5);
}

- (void)copySubscriptionsWithReply:(id)a3
{
  assetManager = self->_assetManager;
  v4 = a3;
  v5 = [(UARPAssetManagerServiceMobileAsset *)assetManager copySubscriptions];
  v4[2](v4, v5);
}

@end