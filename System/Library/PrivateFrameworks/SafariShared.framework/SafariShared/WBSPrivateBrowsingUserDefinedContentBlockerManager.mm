@interface WBSPrivateBrowsingUserDefinedContentBlockerManager
- (BOOL)hasContentBlockerWithActions;
- (WBSUserDefinedContentBlockerManager)normalBrowsingUserDefinedContentBlockerManager;
- (id)cachedGlobalContentBlockerActions;
- (void)_setCachedGlobalContentBlockerActions:(id)a3;
- (void)getGlobalContentBlockerWithCompletionHandler:(id)a3;
- (void)globalContentBlockerWithCompletionHandler:(id)a3;
@end

@implementation WBSPrivateBrowsingUserDefinedContentBlockerManager

- (BOOL)hasContentBlockerWithActions
{
  v6.receiver = self;
  v6.super_class = WBSPrivateBrowsingUserDefinedContentBlockerManager;
  if ([(WBSUserDefinedContentBlockerManager *)&v6 hasContentBlockerWithActions])
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_normalBrowsingUserDefinedContentBlockerManager);
  v3 = [WeakRetained hasContentBlockerWithActions];

  return v3;
}

- (void)globalContentBlockerWithCompletionHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_normalBrowsingUserDefinedContentBlockerManager);
  [WeakRetained globalContentBlockerWithCompletionHandler:v4];
}

- (id)cachedGlobalContentBlockerActions
{
  WeakRetained = objc_loadWeakRetained(&self->_normalBrowsingUserDefinedContentBlockerManager);
  v3 = [WeakRetained cachedGlobalContentBlockerActions];

  return v3;
}

- (void)_setCachedGlobalContentBlockerActions:(id)a3
{
  v3 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [WBSPrivateBrowsingUserDefinedContentBlockerManager _setCachedGlobalContentBlockerActions:];
  }
}

- (void)getGlobalContentBlockerWithCompletionHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_normalBrowsingUserDefinedContentBlockerManager);
  [WeakRetained getGlobalContentBlockerWithCompletionHandler:v4];
}

- (WBSUserDefinedContentBlockerManager)normalBrowsingUserDefinedContentBlockerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_normalBrowsingUserDefinedContentBlockerManager);

  return WeakRetained;
}

@end