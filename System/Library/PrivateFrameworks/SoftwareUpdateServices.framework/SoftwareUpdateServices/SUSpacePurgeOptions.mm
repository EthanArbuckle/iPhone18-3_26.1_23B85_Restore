@interface SUSpacePurgeOptions
- (SUSpacePurgeOptions)init;
- (SUSpacePurgeOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

- (SUSpacePurgeOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SUSpacePurgeOptions;
  v5 = [(SUSpacePurgeOptions *)&v7 init];
  if (v5)
  {
    -[SUSpacePurgeOptions setNeededBytes:](v5, "setNeededBytes:", [coderCopy decodeInt64ForKey:@"neededBytes"]);
    -[SUSpacePurgeOptions setEnableCacheDelete:](v5, "setEnableCacheDelete:", [coderCopy decodeBoolForKey:@"enableCachDelete"]);
    -[SUSpacePurgeOptions setEnableAppOffload:](v5, "setEnableAppOffload:", [coderCopy decodeBoolForKey:@"enableAppOffload"]);
    -[SUSpacePurgeOptions setCacheDeleteUrgency:](v5, "setCacheDeleteUrgency:", [coderCopy decodeIntForKey:@"cacheDeleteUrgency"]);
    -[SUSpacePurgeOptions setAppOffloadUrgency:](v5, "setAppOffloadUrgency:", [coderCopy decodeIntegerForKey:@"appOffloadUrgency"]);
    -[SUSpacePurgeOptions setEnableMobileAssetSuspend:](v5, "setEnableMobileAssetSuspend:", [coderCopy decodeBoolForKey:@"enableMobileAssetSuspend"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  neededBytes = self->_neededBytes;
  coderCopy = coder;
  [coderCopy encodeInt64:neededBytes forKey:@"neededBytes"];
  [coderCopy encodeBool:self->_enableCacheDelete forKey:@"enableCachDelete"];
  [coderCopy encodeBool:self->_enableAppOffload forKey:@"enableAppOffload"];
  [coderCopy encodeInt:self->_cacheDeleteUrgency forKey:@"cacheDeleteUrgency"];
  [coderCopy encodeInteger:self->_appOffloadUrgency forKey:@"appOffloadUrgency"];
  [coderCopy encodeBool:self->_enableMobileAssetSuspend forKey:@"enableMobileAssetSuspend"];
}

- (id)copyWithZone:(_NSZone *)zone
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