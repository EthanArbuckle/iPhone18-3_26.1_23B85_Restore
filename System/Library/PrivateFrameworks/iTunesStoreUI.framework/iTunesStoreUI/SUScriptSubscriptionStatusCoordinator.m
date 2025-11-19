@interface SUScriptSubscriptionStatusCoordinator
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (id)scriptAttributeKeys;
- (void)invalidateLastKnownStatus;
@end

@implementation SUScriptSubscriptionStatusCoordinator

- (void)invalidateLastKnownStatus
{
  v2 = [(objc_class *)getICUserIdentityClass() autoupdatingActiveAccount];
  v3 = [(objc_class *)getICMusicSubscriptionStatusMonitorClass() sharedMonitorForIdentity:v2];

  [v3 refreshSubscriptionStatus];
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_1 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptSubscriptionStatusCoordinator;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping, 1);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptSubscriptionStatusCoordinator;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptSubscriptionStatusCoordinator;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_1 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping = sel_invalidateLastKnownStatus;
    unk_1EBF39CD0 = @"invalidateLastKnownStatus";
    __KeyMapping_1 = MEMORY[0x1E695E0F8];
  }
}

@end