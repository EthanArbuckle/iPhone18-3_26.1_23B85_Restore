@interface SUScriptCarrierBundlingController
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (id)scriptAttributeKeys;
- (void)updateLastKnownStatus:(id)a3;
@end

@implementation SUScriptCarrierBundlingController

- (void)updateLastKnownStatus:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x1E69E2F88];

    [v3 throwException:@"Invalid argument"];
  }
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_23 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptCarrierBundlingController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_18, 1);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptCarrierBundlingController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptCarrierBundlingController;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_23 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_18 = sel_updateLastKnownStatus_;
    unk_1EBF3AC40 = @"updateLastKnownStatus";
    __KeyMapping_23 = &unk_1F41EA9C0;
  }
}

@end