@interface WBSPrivateBrowsingUserDefinedContentBlockerManager
- (BOOL)hasContentBlockerWithActions;
- (WBSUserDefinedContentBlockerManager)normalBrowsingUserDefinedContentBlockerManager;
- (id)cachedGlobalContentBlockerActions;
- (void)_setCachedGlobalContentBlockerActions:(id)actions;
- (void)getGlobalContentBlockerWithCompletionHandler:(id)handler;
- (void)globalContentBlockerWithCompletionHandler:(id)handler;
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
  hasContentBlockerWithActions = [WeakRetained hasContentBlockerWithActions];

  return hasContentBlockerWithActions;
}

- (void)globalContentBlockerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_normalBrowsingUserDefinedContentBlockerManager);
  [WeakRetained globalContentBlockerWithCompletionHandler:handlerCopy];
}

- (id)cachedGlobalContentBlockerActions
{
  WeakRetained = objc_loadWeakRetained(&self->_normalBrowsingUserDefinedContentBlockerManager);
  cachedGlobalContentBlockerActions = [WeakRetained cachedGlobalContentBlockerActions];

  return cachedGlobalContentBlockerActions;
}

- (void)_setCachedGlobalContentBlockerActions:(id)actions
{
  v3 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [WBSPrivateBrowsingUserDefinedContentBlockerManager _setCachedGlobalContentBlockerActions:];
  }
}

- (void)getGlobalContentBlockerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_normalBrowsingUserDefinedContentBlockerManager);
  [WeakRetained getGlobalContentBlockerWithCompletionHandler:handlerCopy];
}

- (WBSUserDefinedContentBlockerManager)normalBrowsingUserDefinedContentBlockerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_normalBrowsingUserDefinedContentBlockerManager);

  return WeakRetained;
}

@end