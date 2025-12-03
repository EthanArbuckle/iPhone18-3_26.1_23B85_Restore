@interface SUScriptSubscriptionStatusCoordinator
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (id)scriptAttributeKeys;
- (void)invalidateLastKnownStatus;
@end

@implementation SUScriptSubscriptionStatusCoordinator

- (void)invalidateLastKnownStatus
{
  autoupdatingActiveAccount = [(objc_class *)getICUserIdentityClass() autoupdatingActiveAccount];
  v3 = [(objc_class *)getICMusicSubscriptionStatusMonitorClass() sharedMonitorForIdentity:autoupdatingActiveAccount];

  [v3 refreshSubscriptionStatus];
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_1 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptSubscriptionStatusCoordinator;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping, 1);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptSubscriptionStatusCoordinator;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptSubscriptionStatusCoordinator;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_1 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping = sel_invalidateLastKnownStatus;
    unk_1EBF39CD0 = @"invalidateLastKnownStatus";
    __KeyMapping_1 = MEMORY[0x1E695E0F8];
  }
}

@end