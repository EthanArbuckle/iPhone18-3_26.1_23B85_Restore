@interface SUScriptCarrierBundlingController
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (id)scriptAttributeKeys;
- (void)updateLastKnownStatus:(id)status;
@end

@implementation SUScriptCarrierBundlingController

- (void)updateLastKnownStatus:(id)status
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E69E2F88];

    [v3 throwException:@"Invalid argument"];
  }
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_23 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptCarrierBundlingController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_18, 1);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptCarrierBundlingController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptCarrierBundlingController;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_23 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_18 = sel_updateLastKnownStatus_;
    unk_1EBF3AC40 = @"updateLastKnownStatus";
    __KeyMapping_23 = &unk_1F41EA9C0;
  }
}

@end