@interface SUSpacePurgeOptions
- (SUSpacePurgeOptions)init;
- (SUSpacePurgeOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUSpacePurgeOptions

- (SUSpacePurgeOptions)init
{
  v6.receiver = self;
  v6.super_class = SUSpacePurgeOptions;
  v2 = [(SUSpacePurgeOptions *)&v6 init];
  v3 = v2;
  if (v2)
  {
    completionQueue = v2->_completionQueue;
    v2->_completionQueue = 0;

    *&v3->_enableCacheDelete = 1;
    v3->_cacheDeleteUrgency = -1;
    v3->_neededBytes = 0;
    v3->_appOffloadUrgency = 1;
    v3->_enableMobileAssetSuspend = 0;
  }

  return v3;
}

- (SUSpacePurgeOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SUSpacePurgeOptions;
  v5 = [(SUSpacePurgeOptions *)&v7 init];
  if (v5)
  {
    -[SUSpacePurgeOptions setNeededBytes:](v5, "setNeededBytes:", [v4 decodeInt64ForKey:@"neededBytes"]);
    -[SUSpacePurgeOptions setEnableCacheDelete:](v5, "setEnableCacheDelete:", [v4 decodeBoolForKey:@"enableCachDelete"]);
    -[SUSpacePurgeOptions setEnableAppOffload:](v5, "setEnableAppOffload:", [v4 decodeBoolForKey:@"enableAppOffload"]);
    -[SUSpacePurgeOptions setCacheDeleteUrgency:](v5, "setCacheDeleteUrgency:", [v4 decodeIntForKey:@"cacheDeleteUrgency"]);
    -[SUSpacePurgeOptions setAppOffloadUrgency:](v5, "setAppOffloadUrgency:", [v4 decodeIntegerForKey:@"appOffloadUrgency"]);
    -[SUSpacePurgeOptions setEnableMobileAssetSuspend:](v5, "setEnableMobileAssetSuspend:", [v4 decodeBoolForKey:@"enableMobileAssetSuspend"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  neededBytes = self->_neededBytes;
  v5 = a3;
  [v5 encodeInt64:neededBytes forKey:@"neededBytes"];
  [v5 encodeBool:self->_enableCacheDelete forKey:@"enableCachDelete"];
  [v5 encodeBool:self->_enableAppOffload forKey:@"enableAppOffload"];
  [v5 encodeInt:self->_cacheDeleteUrgency forKey:@"cacheDeleteUrgency"];
  [v5 encodeInteger:self->_appOffloadUrgency forKey:@"appOffloadUrgency"];
  [v5 encodeBool:self->_enableMobileAssetSuspend forKey:@"enableMobileAssetSuspend"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setCompletionQueue:self->_completionQueue];
  [v4 setNeededBytes:self->_neededBytes];
  [v4 setEnableCacheDelete:self->_enableCacheDelete];
  [v4 setEnableAppOffload:self->_enableAppOffload];
  [v4 setCacheDeleteUrgency:self->_cacheDeleteUrgency];
  [v4 setAppOffloadUrgency:self->_appOffloadUrgency];
  [v4 setEnableMobileAssetSuspend:self->_enableMobileAssetSuspend];
  return v4;
}

@end