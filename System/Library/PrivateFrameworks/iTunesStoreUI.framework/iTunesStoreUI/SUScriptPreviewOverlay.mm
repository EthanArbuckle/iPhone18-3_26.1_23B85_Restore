@interface SUScriptPreviewOverlay
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (id)scriptAttributeKeys;
@end

@implementation SUScriptPreviewOverlay

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_73 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptPreviewOverlay;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_56, 3);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptPreviewOverlay;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptPreviewOverlay;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_73 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
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