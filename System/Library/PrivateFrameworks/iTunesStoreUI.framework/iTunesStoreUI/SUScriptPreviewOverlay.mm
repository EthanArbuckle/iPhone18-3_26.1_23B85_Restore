@interface SUScriptPreviewOverlay
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (id)scriptAttributeKeys;
@end

@implementation SUScriptPreviewOverlay

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_73 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptPreviewOverlay;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_56, 3);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptPreviewOverlay;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptPreviewOverlay;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_73 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_56 = sel_hide_;
    *algn_1EBF3B8E8 = @"hide";
    qword_1EBF3B8F0 = sel_loadURLRequest_;
    unk_1EBF3B8F8 = @"loadURLRequest";
    qword_1EBF3B900 = sel_show_;
    unk_1EBF3B908 = @"show";
    __KeyMapping_73 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"height", @"isVisible", @"isVisible", @"right", @"right", @"top", @"top", @"userInfo", @"userInfo", @"width", @"width", 0}];
  }
}

@end