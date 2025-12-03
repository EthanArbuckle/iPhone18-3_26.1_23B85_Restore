@interface UARPAssetManagerServiceMobileAssetDispatcher
- (UARPAssetManagerServiceMobileAssetDispatcher)initWithConnection:(id)connection;
- (void)checkCacheForSubscription:(id)subscription withReply:(id)reply;
- (void)copyCacheWithReply:(id)reply;
- (void)copySubscriptionsWithReply:(id)reply;
- (void)getIsBusyStatusWithReply:(id)reply;
- (void)subscribeForAsset:(id)asset;
@end

@implementation UARPAssetManagerServiceMobileAssetDispatcher

- (UARPAssetManagerServiceMobileAssetDispatcher)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v10.receiver = self;
  v10.super_class = UARPAssetManagerServiceMobileAssetDispatcher;
  v6 = [(UARPAssetManagerServiceMobileAssetDispatcher *)&v10 init];
  if (v6)
  {
    v7 = [[UARPAssetManagerServiceMobileAsset alloc] initWithDelegate:v6];
    assetManager = v6->_assetManager;
    v6->_assetManager = v7;

    objc_storeStrong(&v6->_xpcConnection, connection);
  }

  return v6;
}

- (void)getIsBusyStatusWithReply:(id)reply
{
  assetManager = self->_assetManager;
  replyCopy = reply;
  (*(reply + 2))(replyCopy, [(UARPAssetManagerServiceMobileAsset *)assetManager isBusy]);
}

- (void)subscribeForAsset:(id)asset
{
  assetCopy = asset;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UARPAssetManagerServiceMobileAsset *)self->_assetManager subscribeForAsset:assetCopy];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = assetCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Invalid subscription type: %@", &v5, 0xCu);
  }
}

- (void)checkCacheForSubscription:(id)subscription withReply:(id)reply
{
  subscriptionCopy = subscription;
  replyCopy = reply;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(UARPAssetManagerServiceMobileAsset *)self->_assetManager checkCacheForSubscription:subscriptionCopy];
    replyCopy[2](replyCopy, v8);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = subscriptionCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Invalid subscription type: %@", &v9, 0xCu);
  }
}

- (void)copyCacheWithReply:(id)reply
{
  assetManager = self->_assetManager;
  replyCopy = reply;
  copyCache = [(UARPAssetManagerServiceMobileAsset *)assetManager copyCache];
  replyCopy[2](replyCopy, copyCache);
}

- (void)copySubscriptionsWithReply:(id)reply
{
  assetManager = self->_assetManager;
  replyCopy = reply;
  copySubscriptions = [(UARPAssetManagerServiceMobileAsset *)assetManager copySubscriptions];
  replyCopy[2](replyCopy, copySubscriptions);
}

@end