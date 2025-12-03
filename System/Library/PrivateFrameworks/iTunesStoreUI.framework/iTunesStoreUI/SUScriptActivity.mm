@interface SUScriptActivity
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (NSString)activityTitle;
- (NSString)activityType;
- (WebScriptObject)actionFunction;
- (id)_nativeActivity;
- (id)scriptAttributeKeys;
- (void)_performActionFunctionWithItems:(id)items;
- (void)dealloc;
- (void)setActionFunction:(id)function;
- (void)setActivityImageWithName:(id)name;
- (void)setActivityImageWithURL:(id)l scale:(id)scale;
- (void)setActivityTitle:(id)title;
- (void)setActivityType:(id)type;
@end

@implementation SUScriptActivity

- (void)dealloc
{
  [(SUScriptFunction *)self->_actionFunction setThisObject:0];

  v3.receiver = self;
  v3.super_class = SUScriptActivity;
  [(SUScriptObject *)&v3 dealloc];
}

- (WebScriptObject)actionFunction
{
  [(SUScriptObject *)self lock];
  scriptObject = [(SUScriptFunction *)self->_actionFunction scriptObject];
  [(SUScriptObject *)self unlock];
  return scriptObject;
}

- (NSString)activityTitle
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = __Block_byref_object_copy__47;
  v8 = __Block_byref_object_dispose__47;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);
  return v2;
}

id __33__SUScriptActivity_activityTitle__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_nativeActivity")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSString)activityType
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = __Block_byref_object_copy__47;
  v8 = __Block_byref_object_dispose__47;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);
  return v2;
}

id __32__SUScriptActivity_activityType__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_nativeActivity")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setActionFunction:(id)function
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    functionCopy = 0;
    v6 = 1;
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  functionCopy = 0;
  v6 = 1;
  if (!function || (isKindOfClass & 1) != 0)
  {
LABEL_3:
    [(SUScriptObject *)self lock];
    [(SUScriptFunction *)self->_actionFunction setThisObject:0];

    if (v6)
    {
      self->_actionFunction = 0;
    }

    else
    {
      v8 = [[SUScriptFunction alloc] initWithScriptObject:functionCopy];
      self->_actionFunction = v8;
      [(SUScriptFunction *)v8 setThisObject:self];
    }

    [(SUScriptObject *)self unlock];
    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = 0;
    functionCopy = function;
    goto LABEL_3;
  }

  v9 = MEMORY[0x1E69E2F88];

  [v9 throwException:@"Invalid argument"];
}

- (void)setActivityTitle:(id)title
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !title) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __37__SUScriptActivity_setActivityTitle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _nativeActivity];
  v3 = *(a1 + 40);

  return [v2 setActivityTitle:v3];
}

- (void)setActivityType:(id)type
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !type) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __36__SUScriptActivity_setActivityType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _nativeActivity];
  v3 = *(a1 + 40);

  return [v2 setActivityType:v3];
}

- (void)setActivityImageWithName:(id)name
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !name) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __45__SUScriptActivity_setActivityImageWithName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _nativeActivity];
  if (*(a1 + 40))
  {
    v3 = [MEMORY[0x1E69DCAB8] imageNamed:*(a1 + 40) inBundle:{objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class())}];
  }

  else
  {
    v3 = 0;
  }

  return [v2 setActivityImage:v3];
}

- (void)setActivityImageWithURL:(id)l scale:(id)scale
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    l = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    scale = 0;
  }

  if (l && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || scale && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v9 = MEMORY[0x1E69E2F88];

    [v9 throwException:@"Invalid argument"];
  }

  else
  {
    if (l && (l = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:l]) != 0)
    {
      if (scale)
      {
        [scale floatValue];
        v8 = v7;
      }

      else
      {
        [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
      }

      v10 = [(SUScriptObject *)self newImageWithURL:l scale:v8];
    }

    else
    {
      v10 = 0;
    }

    WebThreadRunOnMainThread();
  }
}

uint64_t __50__SUScriptActivity_setActivityImageWithURL_scale___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _nativeActivity];
  v3 = *(a1 + 40);

  return [v2 setActivityImage:v3];
}

- (id)_nativeActivity
{
  object = [(SUScriptNativeObject *)[(SUScriptObject *)self nativeObject] object];
  if (!object)
  {
    object = objc_alloc_init(SUActivity);
    [(SUScriptObject *)self setNativeObject:[(SUScriptNativeObject *)SUScriptActivityNativeObject objectWithNativeObject:object]];
    v4 = object;
  }

  return object;
}

- (void)_performActionFunctionWithItems:(id)items
{
  v19 = *MEMORY[0x1E69E9840];
  [(SUScriptObject *)self lock];
  v5 = self->_actionFunction;
  [(SUScriptObject *)self unlock];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [items countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = v7;
    v9 = *v15;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(items);
        }

        ImageURL = *(*(&v14 + 1) + 8 * v10);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_13;
            }

            goto LABEL_11;
          }

          ImageURL = SUScriptObjectGetImageURL(ImageURL);
        }

        ImageURL = [ImageURL absoluteString];
LABEL_11:
        if (ImageURL)
        {
          [v6 addObject:ImageURL];
        }

LABEL_13:
        ++v10;
      }

      while (v8 != v10);
      v12 = [items countByEnumeratingWithState:&v14 objects:v18 count:16];
      v8 = v12;
      if (!v12)
      {
LABEL_18:
        v13 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v6, 0}];
        [(SUScriptFunction *)v5 callWithArguments:v13];

        return;
      }
    }
  }
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_65 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptActivity;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_49, 2);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptActivity;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptActivity;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_65 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_49 = sel_setActivityImageWithName_;
    *algn_1EBF3B6E8 = @"setNamedActivityImage";
    qword_1EBF3B6F0 = sel_setActivityImageWithURL_scale_;
    unk_1EBF3B6F8 = @"setActivityImage";
    __KeyMapping_65 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"actionFunction", @"activityTitle", @"activityTitle", @"activityType", @"activityType", @"IMAGE_NAME_GIFT_APP_STORE", @"activityImageNameGiftAppStore", @"IMAGE_NAME_GIFT_MUSIC_STORE", @"activityImageNameGiftMusicStore", @"IMAGE_NAME_PING_APP_STORE", @"activityImageNamePingAppStore", @"IMAGE_NAME_PING_MUSIC_STORE", @"activityImageNamePingMusicStore", @"IMAGE_NAME_WISHLIST_APP_STORE", @"activityImageNameWishlistAppStore", @"IMAGE_NAME_WISHLIST_MUSIC_STORE", @"activityImageNameWishlistMusicStore", 0}];
  }
}

@end