@interface NCRevealWalletPassActionRunner
- (id)initWithCardItem:(id *)item;
- (void)didPresentLockScreenPlugin:(id)plugin;
- (void)executeAction:(id)action fromOrigin:(id)origin endpoint:(id)endpoint withParameters:(id)parameters completion:(id)completion;
- (void)setPluginCompletionBlock:(void *)block;
@end

@implementation NCRevealWalletPassActionRunner

- (id)initWithCardItem:(id *)item
{
  v4 = a2;
  if (item)
  {
    v7.receiver = item;
    v7.super_class = NCRevealWalletPassActionRunner;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    item = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
    }
  }

  return item;
}

- (void)executeAction:(id)action fromOrigin:(id)origin endpoint:(id)endpoint withParameters:(id)parameters completion:(id)completion
{
  newValue = completion;
  if (self)
  {
    cardItem = self->_cardItem;
  }

  else
  {
    cardItem = 0;
  }

  v9 = cardItem;
  userInfo = [(SBSCardItem *)v9 userInfo];
  v11 = MEMORY[0x277D67958];
  bundleName = [(SBSCardItem *)v9 bundleName];

  v13 = [v11 contextWithName:bundleName];

  [v13 setUserInfo:userInfo];
  [v13 setObserver:self];
  if (self && newValue)
  {
    objc_setProperty_nonatomic_copy(self, newValue, newValue, 24);
  }

  v14 = +[SBLockScreenManager sharedInstance];
  lockScreenEnvironment = [v14 lockScreenEnvironment];
  pluginPresenter = [lockScreenEnvironment pluginPresenter];
  [pluginPresenter enableLockScreenPluginWithContext:v13];
}

- (void)setPluginCompletionBlock:(void *)block
{
  if (block)
  {
    objc_setProperty_nonatomic_copy(block, newValue, newValue, 24);
  }
}

- (void)didPresentLockScreenPlugin:(id)plugin
{
  if (self && self->_pluginCompletionBlock)
  {
    (*(self->_pluginCompletionBlock + 2))();

    objc_setProperty_nonatomic_copy(self, v4, 0, 24);
  }
}

@end