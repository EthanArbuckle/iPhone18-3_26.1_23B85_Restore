@interface SUScriptActivityViewController
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (SUScriptActivityViewController)initWithScriptItemProviders:(id)providers applicationActivities:(id)activities;
- (id)excludedActivityTypes;
- (id)newNativeViewController;
- (id)scriptAttributeKeys;
- (void)dealloc;
- (void)setExcludedActivityTypes:(id)types;
- (void)setTitle:(id)title forActivityType:(id)type;
@end

@implementation SUScriptActivityViewController

- (SUScriptActivityViewController)initWithScriptItemProviders:(id)providers applicationActivities:(id)activities
{
  v10.receiver = self;
  v10.super_class = SUScriptActivityViewController;
  v6 = [(SUScriptObject *)&v10 init];
  if (v6)
  {
    v7 = [activities copy];
    v6->_applicationActivities = v7;
    if (v7)
    {
      [(SUScriptObject *)v6 checkInScriptObjects:v7];
    }

    v8 = [providers copy];
    v6->_providers = v8;
    if (v8)
    {
      [(SUScriptObject *)v6 checkInScriptObjects:v8];
    }
  }

  return v6;
}

- (void)dealloc
{
  if (self->_applicationActivities)
  {
    [(SUScriptObject *)self checkOutScriptObjects:?];
    applicationActivities = self->_applicationActivities;
  }

  else
  {
    applicationActivities = 0;
  }

  if (self->_providers)
  {
    [(SUScriptObject *)self checkOutScriptObjects:?];
    providers = self->_providers;
  }

  else
  {
    providers = 0;
  }

  v5.receiver = self;
  v5.super_class = SUScriptActivityViewController;
  [(SUScriptViewController *)&v5 dealloc];
}

- (id)newNativeViewController
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  applicationActivities = self->_applicationActivities;
  v6 = [(NSArray *)applicationActivities countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(applicationActivities);
        }

        nativeActivity = [*(*(&v23 + 1) + 8 * i) nativeActivity];
        if (nativeActivity)
        {
          [v3 addObject:nativeActivity];
        }
      }

      v7 = [(NSArray *)applicationActivities countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  providers = self->_providers;
  v12 = [(NSArray *)providers countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(providers);
        }

        nativeActivityItemProvider = [*(*(&v19 + 1) + 8 * j) nativeActivityItemProvider];
        if (nativeActivityItemProvider)
        {
          [v4 addObject:nativeActivityItemProvider];
        }
      }

      v13 = [(NSArray *)providers countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  v17 = [[SUActivityViewController alloc] initWithActivityItems:v4 applicationActivities:v3];

  return v17;
}

- (void)setTitle:(id)title forActivityType:(id)type
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !title) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v6 = MEMORY[0x1E69E2F88];

    [v6 throwException:@"Invalid argument"];
  }
}

uint64_t __59__SUScriptActivityViewController_setTitle_forActivityType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeViewController];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 setTitle:v3 forActivityType:v4];
}

- (id)excludedActivityTypes
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = __Block_byref_object_copy__46;
  v8 = __Block_byref_object_dispose__46;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);
  return v2;
}

id __55__SUScriptActivityViewController_excludedActivityTypes__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "nativeViewController")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setExcludedActivityTypes:(id)types
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (!types || (isKindOfClass & 1) != 0 || (objc_opt_class(), v5 = types, (objc_opt_isKindOfClass() & 1) != 0))
  {
LABEL_3:
    globalContext = [(WebFrame *)[(SUScriptObject *)self webFrame] globalContext];
    if (globalContext)
    {
      v7 = [v5 copyArrayOrDictionaryWithContext:globalContext];
      if (v7)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
LABEL_15:

          return;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    WebThreadRunOnMainThread();
    goto LABEL_15;
  }

  v9 = MEMORY[0x1E69E2F88];

  [v9 throwException:@"Invalid argument"];
}

uint64_t __59__SUScriptActivityViewController_setExcludedActivityTypes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeViewController];
  v3 = *(a1 + 40);

  return [v2 setExcludedActivityTypes:v3];
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_61 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptActivityViewController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_47, 1);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptActivityViewController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptActivityViewController;
  scriptAttributeKeys = [(SUScriptViewController *)&v4 scriptAttributeKeys];
  [scriptAttributeKeys addObjectsFromArray:{objc_msgSend(__KeyMapping_61, "allKeys")}];
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_47 = sel_setTitle_forActivityType_;
    *algn_1EBF3B678 = @"setActivityTitle";
    __KeyMapping_61 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"excludedActivityTypes", @"ACTIVITY_TYPE_ADD_TO_READING_LIST", @"activityTypeAddToReadingList", @"ACTIVITY_TYPE_ASSIGN_TO_CONTACT", @"activityTypeAssignToContact", @"ACTIVITY_TYPE_COPY_TO_PASTEBOARD", @"activityTypeCopyToPasteboard", @"ACTIVITY_TYPE_MAIL", @"activityTypeMail", @"ACTIVITY_TYPE_MESSAGE", @"activityTypeMessage", @"ACTIVITY_TYPE_POST_TO_FACEBOOK", @"activityTypePostToFacebook", @"ACTIVITY_TYPE_POST_TO_FLICKR", @"activityTypePostToFlickr", @"ACTIVITY_TYPE_POST_TO_TWITTER", @"activityTypePostToTwitter", @"ACTIVITY_TYPE_POST_TO_VIMEO", @"activityTypePostToVimeo", @"ACTIVITY_TYPE_POST_TO_WEIBO", @"activityTypePostToWeibo", @"ACTIVITY_TYPE_PRINT", @"activityTypePrint", @"ACTIVITY_TYPE_SAVE_TO_CAMERA_ROLL", @"activityTypeSaveToCameraRoll", 0}];
  }
}

@end