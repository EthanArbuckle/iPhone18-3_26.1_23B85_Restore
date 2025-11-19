@interface UISocialActivity
+ (id)_activityExtensionItemsForActivityItemValues:(id)a3 extensionItemDataRequest:(id)a4;
- (BOOL)_canBeExcludeWhenMatchingWithContext:(id)a3;
- (BOOL)_wantsAttachmentURLItemData;
- (BOOL)_wantsThumbnailItemData;
- (BOOL)canPerformWithActivityItems:(id)a3;
- (CGSize)_thumbnailSize;
- (UISocialActivity)initWithActivityType:(id)a3;
- (UISocialActivity)initWithApplicationExtension:(id)a3;
- (id)activityType;
- (id)debugDescription;
- (void)_cleanup;
- (void)_prepareComposeViewController:(id)a3 withActivityExtensionItems:(id)a4;
- (void)_prepareComposeViewController:(id)a3 withInjectedExtensionItems:(id)a4;
- (void)_willBePerformedOrPresented;
- (void)prepareWithActivityExtensionItemData:(id)a3;
- (void)setInitialText:(id)a3;
@end

@implementation UISocialActivity

- (UISocialActivity)initWithApplicationExtension:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = UISocialActivity;
  v5 = [(UIApplicationExtensionActivity *)&v13 initWithApplicationExtension:v4];
  if (v5)
  {
    v6 = _UISocialActivityGetActivityTypeForApplicationExtension_once;
    v7 = v4;
    if (v6 != -1)
    {
      [UISocialActivity initWithApplicationExtension:];
    }

    v8 = _UISocialActivityGetActivityTypeForApplicationExtension___activityTypesByApplicationExtensionIdentifiers;
    v9 = [v7 identifier];

    v10 = [v8 objectForKeyedSubscript:v9];

    if (v10)
    {
      [(UISocialActivity *)v5 setBuiltinActivityType:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (UISocialActivity)initWithActivityType:(id)a3
{
  v4 = a3;
  v5 = [(objc_class *)getSLComposeViewControllerClass() extensionIdentifierForActivityType:v4];
  v13 = 0;
  v6 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:v5 error:&v13];
  v7 = v13;
  if (v7)
  {
    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(UISocialActivity *)v4 initWithActivityType:v7, v8];
    }
  }

  v9 = [(UISocialActivity *)self initWithApplicationExtension:v6];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  return v10;
}

- (void)setInitialText:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_initialText isEqualToString:?])
  {
    objc_storeStrong(&self->_initialText, a3);
    v5 = [(UISocialActivity *)self socialComposeViewController];
    [v5 setInitialText:v6];
  }
}

- (id)debugDescription
{
  v3 = [(UISocialActivity *)self builtinActivityType];

  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v9.receiver = self;
    v9.super_class = UISocialActivity;
    v5 = [(UIActivity *)&v9 description];
    v6 = [(UISocialActivity *)self activityType];
    v7 = [v4 stringWithFormat:@"%@ {type = %@}", v5, v6];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UISocialActivity;
    v7 = [(UIApplicationExtensionActivity *)&v10 debugDescription];
  }

  return v7;
}

- (id)activityType
{
  v3 = [(UISocialActivity *)self builtinActivityType];
  if (!v3)
  {
    v4 = [(UIApplicationExtensionActivity *)self applicationExtension];
    v3 = [v4 identifier];
  }

  return v3;
}

- (BOOL)_canBeExcludeWhenMatchingWithContext:(id)a3
{
  v4 = a3;
  v5 = [(UISocialActivity *)self builtinActivityType];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UISocialActivity;
    v6 = [(UIApplicationExtensionActivity *)&v8 _canBeExcludeWhenMatchingWithContext:v4];
  }

  return v6;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v4 = a3;
  v5 = [(UISocialActivity *)self sourceApplicationBundleID];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [MEMORY[0x1E696AAE8] mainBundle];
    v7 = [v8 bundleIdentifier];
  }

  v9 = [(UIApplicationExtensionActivity *)self applicationExtension];
  v10 = v7;
  if (_UIComposeViewControllerIsAvailable_once != -1)
  {
    [UISocialActivity canPerformWithActivityItems:];
  }

  v11 = [v9 _plugIn];
  v12 = [v11 supersededBy];

  if (v12)
  {
    goto LABEL_7;
  }

  v15 = [v9 identifier];
  if ([_UIComposeViewControllerIsAvailable_legacySocialActivityTypes containsObject:v15])
  {
    v16 = [(objc_class *)getSLComposeViewControllerClass() isAvailableForExtension:v9 inHostApplicationBundleID:v10];
  }

  else
  {
    v17 = [_UIComposeViewControllerIsAvailable_mediaShareExtension extensionIdentifier];
    v18 = [v15 isEqualToString:v17];

    if (!v18)
    {

LABEL_7:
      goto LABEL_8;
    }

    v19 = _UIComposeViewControllerIsAvailable_mediaShareExtension;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v20 = dispatch_semaphore_create(0);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___UIMediaShareExtensionIsAvailable_block_invoke;
    v23[3] = &unk_1E71FB640;
    v25 = &v26;
    v21 = v20;
    v24 = v21;
    [v19 getVisibilityWithCompletionBlock:v23];
    dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
    v16 = *(v27 + 24);

    _Block_object_dispose(&v26, 8);
  }

  if ((v16 & 1) == 0)
  {
    v13 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v22.receiver = self;
  v22.super_class = UISocialActivity;
  v13 = [(UIApplicationExtensionActivity *)&v22 canPerformWithActivityItems:v4];
LABEL_9:

  return v13;
}

- (void)prepareWithActivityExtensionItemData:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  SLComposeViewControllerClass = getSLComposeViewControllerClass();
  v6 = [(UIApplicationExtensionActivity *)self applicationExtension];
  v7 = [(objc_class *)SLComposeViewControllerClass composeViewControllerForExtension:v6];

  v8 = [(UISocialActivity *)self initialText];

  if (v8)
  {
    v9 = [(UISocialActivity *)self initialText];
    [v7 setInitialText:v9];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__UISocialActivity_prepareWithActivityExtensionItemData___block_invoke;
  v13[3] = &unk_1E71FB618;
  v13[4] = self;
  [v7 setCompletionHandler:v13];
  v10 = [(UIApplicationExtensionActivity *)self _injectedExtensionItem];

  if (v10)
  {
    v11 = [(UIApplicationExtensionActivity *)self _injectedExtensionItem];
    v14[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [(UISocialActivity *)self _prepareComposeViewController:v7 withInjectedExtensionItems:v12];
  }

  else
  {
    v11 = [v4 extensionItems];
    [(UISocialActivity *)self _prepareComposeViewController:v7 withActivityExtensionItems:v11];
  }

  [(UISocialActivity *)self setSocialComposeViewController:v7];
}

- (void)_willBePerformedOrPresented
{
  v3 = [(UISocialActivity *)self socialComposeViewController];
  [v3 _instantiateAndBeginExtensionIfNeeded];

  v4 = [(UIApplicationExtensionActivity *)self applicationExtension];
  v5 = [v4 infoDictionary];
  v22 = [v5 objectForKeyedSubscript:@"NSExtension"];

  v6 = [(UIApplicationExtensionActivity *)self applicationExtension];
  v7 = [_UIActivityBundleHelper activityBundleHelperForExtension:v6];

  v8 = [v7 bundleProxy];
  v9 = [v8 sdkVersion];
  v10 = v9;
  v11 = @"1.0";
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = [v22 objectForKeyedSubscript:@"NSExtensionShareWantsFullScreenPresentation"];
  if ([v13 BOOLValue])
  {
    goto LABEL_6;
  }

  v14 = [v22 objectForKeyedSubscript:@"NSExtensionAttributes"];
  v15 = [v14 objectForKeyedSubscript:@"NSExtensionShareWantsFullScreenPresentation"];
  if ([v15 BOOLValue])
  {

LABEL_6:
LABEL_7:
    v16 = 1;
    v17 = 5;
    goto LABEL_8;
  }

  v20 = [MEMORY[0x1E6963608] defaultWorkspace];
  v21 = [v20 isVersion:v12 greaterThanOrEqualToVersion:@"13.0"];

  if ((v21 & 1) == 0)
  {
    goto LABEL_7;
  }

  v16 = 0;
  v17 = -2;
LABEL_8:
  v18 = [(UISocialActivity *)self socialComposeViewController];
  [v18 setModalPresentationStyle:v17];

  v19 = [(UISocialActivity *)self socialComposeViewController];
  [v19 setShouldForceNonAnimatedTransition:v16];
}

- (void)_prepareComposeViewController:(id)a3 withInjectedExtensionItems:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v12 = [v11 attachments];
        v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v18;
          do
          {
            v16 = 0;
            do
            {
              if (*v18 != v15)
              {
                objc_enumerationMutation(v12);
              }

              [v5 addItemProvider:*(*(&v17 + 1) + 8 * v16++)];
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v14);
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }
}

- (void)_prepareComposeViewController:(id)a3 withActivityExtensionItems:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addExtensionItem:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (CGSize)_thumbnailSize
{
  v2 = 70.0;
  v3 = 70.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_cleanup
{
  [(UISocialActivity *)self setSocialComposeViewController:0];
  v3.receiver = self;
  v3.super_class = UISocialActivity;
  [(UIApplicationExtensionActivity *)&v3 _cleanup];
}

- (BOOL)_wantsThumbnailItemData
{
  v3 = [(UISocialActivity *)self activityType];
  if ([v3 isEqualToString:@"com.apple.UIKit.activity.PostToFacebook"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(UISocialActivity *)self activityType];
    if ([v5 isEqualToString:@"com.apple.UIKit.activity.PostToTwitter"])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(UISocialActivity *)self activityType];
      v4 = [v6 isEqualToString:@"com.apple.UIKit.activity.PostToWeibo"];
    }
  }

  return v4;
}

- (BOOL)_wantsAttachmentURLItemData
{
  v3 = [(UISocialActivity *)self activityType];
  if ([v3 isEqualToString:@"com.apple.UIKit.activity.PostToFacebook"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(UISocialActivity *)self activityType];
    if ([v5 isEqualToString:@"com.apple.UIKit.activity.PostToTwitter"])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(UISocialActivity *)self activityType];
      v4 = [v6 isEqualToString:@"com.apple.UIKit.activity.PostToWeibo"];
    }
  }

  return v4;
}

+ (id)_activityExtensionItemsForActivityItemValues:(id)a3 extensionItemDataRequest:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v25 = a4;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_17;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v31;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v31 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v30 + 1) + 8 * i);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          continue;
        }
      }

      if (v8)
      {
        v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
        [v8 appendAttributedString:v13];

        if (isKindOfClass)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v8 = objc_alloc_init(MEMORY[0x1E696AD40]);
        if (isKindOfClass)
        {
LABEL_10:
          v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11];
          [v8 appendAttributedString:v14];

          continue;
        }
      }

      [v8 appendAttributedString:v11];
    }

    v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  }

  while (v7);
LABEL_17:
  v15 = _NSExtensionItemsFromActivityItemValuesForExtensionItemDataRequest(v5, v25);
  v16 = v15;
  if (v8)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      while (2)
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v26 + 1) + 8 * j);
          if (([v5 containsObject:v22] & 1) == 0)
          {
            [v22 setAttributedContentText:v8];
            v16 = v17;
            goto LABEL_28;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v23 = objc_alloc_init(MEMORY[0x1E696ABE0]);
    [v23 setAttributedContentText:v8];
    v16 = [v17 arrayByAddingObject:v23];

    v17 = v23;
LABEL_28:
  }

  return v16;
}

- (void)initWithActivityType:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_18B359000, log, OS_LOG_TYPE_ERROR, "Cannot find application extension for activity type %{public}@: %{public}@", &v3, 0x16u);
}

@end