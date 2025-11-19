@interface _UIActivityItemMapping
+ (BOOL)_canLoadMetadataForActivityItem:(id)a3;
+ (id)_attachmentNameForActivityItem:(id)a3 activityType:(id)a4;
+ (id)_dataTypeIdentifierForActivityItem:(id)a3 activityType:(id)a4;
+ (id)_itemProviderForActivityItem:(id)a3 typeIdentifier:(id)a4 thumbnailSize:(CGSize)a5 activityType:(id)a6;
+ (id)_loadMetadataForActivityItem:(id)a3 activityViewController:(id)a4;
+ (id)_openURLAnnotationForActivityItem:(id)a3 activityType:(id)a4;
+ (id)_subjectForActivityItem:(id)a3 activityType:(id)a4;
+ (id)_thumbnailImageDataForActivityItem:(id)a3 thumbnailSize:(CGSize)a4 activityType:(id)a5;
+ (id)_thumbnailImageForActivityItem:(id)a3 thumbnailSize:(CGSize)a4 activityType:(id)a5;
+ (void)_addActivityItem:(id)a3 activityViewController:(id)a4 originalActivityItem:(id)a5;
+ (void)_addToActiveActivityViewControllers:(id)a3;
+ (void)_clearActivityItems:(id)a3;
+ (void)initialize;
@end

@implementation _UIActivityItemMapping

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:517 capacity:1];
    v3 = __activityViewControllers;
    __activityViewControllers = v2;

    v4 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:512 capacity:1];
    v5 = __originalItems;
    __originalItems = v4;
  }
}

+ (void)_addToActiveActivityViewControllers:(id)a3
{
  v3 = _addToActiveActivityViewControllers__onceToken;
  v4 = a3;
  v6 = v4;
  if (v3 == -1)
  {
    v5 = v4;
  }

  else
  {
    +[_UIActivityItemMapping _addToActiveActivityViewControllers:];
    v5 = v6;
  }

  [_activeActivityViewControllers addObject:v5];
}

+ (void)_addActivityItem:(id)a3 activityViewController:(id)a4 originalActivityItem:(id)a5
{
  v9 = a3;
  v7 = a4;
  v8 = a5;
  if (v8)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0 && ![v8 conformsToProtocol:&unk_1EFF36348])
    {
      goto LABEL_16;
    }

LABEL_15:
    [__activityViewControllers setObject:v7 forKey:v9];
    [__originalItems setObject:v8 forKey:v9];
    goto LABEL_16;
  }

  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || ([v9 conformsToProtocol:&unk_1EFF36348])
  {
    goto LABEL_15;
  }

LABEL_16:
}

+ (void)_clearActivityItems:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = __originalItems;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [__activityViewControllers objectForKey:v10];
        v12 = [v11 isEqual:v3];
        if (v11)
        {
          v13 = v12 == 0;
        }

        else
        {
          v13 = 0;
        }

        if (!v13)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = v4;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v20 + 1) + 8 * j);
        [__activityViewControllers removeObjectForKey:{v19, v20}];
        [__originalItems removeObjectForKey:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }
}

+ (BOOL)_canLoadMetadataForActivityItem:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (id)_loadMetadataForActivityItem:(id)a3 activityViewController:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v5 activityViewControllerLinkPresentationMetadata:v6];
LABEL_5:
    v8 = v7;
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v5 activityViewControllerLinkMetadata:v6];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_alloc_init(getLPLinkMetadataClass());
    [v8 setSummary:v5];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v11 = getLPImageClass_softClass;
    v20 = getLPImageClass_softClass;
    if (!getLPImageClass_softClass)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __getLPImageClass_block_invoke;
      v16[3] = &unk_1E71F91F0;
      v16[4] = &v17;
      __getLPImageClass_block_invoke(v16);
      v11 = v18[3];
    }

    v12 = v11;
    _Block_object_dispose(&v17, 8);
    v13 = [v11 alloc];
    v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"text.cursor"];
    v15 = [v13 initWithPlatformImage:v14];
    [v8 setIcon:v15];
  }

  else
  {
    v8 = 0;
  }

LABEL_6:
  getLPLinkMetadataClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_itemProviderForActivityItem:(id)a3 typeIdentifier:(id)a4 thumbnailSize:(CGSize)a5 activityType:(id)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if ([v11 conformsToProtocol:&unk_1EFEFB658])
  {
    v14 = v11;
    if (v14)
    {
      goto LABEL_5;
    }
  }

  v14 = [__originalItems objectForKey:v11];
  if (([v14 conformsToProtocol:&unk_1EFEFB658] & 1) == 0)
  {

    goto LABEL_8;
  }

  if (!v14)
  {
LABEL_8:
    v32 = a1;
    v33 = v13;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __97___UIActivityItemMapping__itemProviderForActivityItem_typeIdentifier_thumbnailSize_activityType___block_invoke_2;
    v39[3] = &unk_1E71FA320;
    v17 = &v40;
    v18 = v11;
    v40 = v18;
    v15 = MEMORY[0x18CFF58E0](v39);
    v16 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithItem:v18 typeIdentifier:v12];
    v14 = 0;
    v19 = 1;
    goto LABEL_14;
  }

LABEL_5:
  if ([v14 conformsToProtocol:&unk_1EFF36348])
  {
    v15 = [a1 _activityViewControllerForActivityItem:v11];
    v16 = [v14 activityViewControllerApplicationExtensionItem:v15];
    goto LABEL_28;
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __97___UIActivityItemMapping__itemProviderForActivityItem_typeIdentifier_thumbnailSize_activityType___block_invoke;
  v41[3] = &unk_1E71FAE78;
  v17 = &v42;
  v14 = v14;
  v42 = v14;
  v32 = a1;
  v45 = a1;
  v20 = v11;
  v43 = v20;
  v21 = v13;
  v44 = v21;
  v15 = MEMORY[0x18CFF58E0](v41);
  v16 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithItem:0 typeIdentifier:0];
  [v16 registerItemForTypeIdentifier:v12 loadHandler:v15];
  if (objc_opt_respondsToSelector())
  {
    v22 = [v32 _activityViewControllerForActivityItem:v20];
    v23 = [v14 activityViewController:v22 attachmentNameForActivityType:v21];

    if ([v23 length])
    {
      [v16 setSuggestedName:v23];
    }
  }

  v33 = v13;

  v19 = 0;
LABEL_14:

  v24 = *MEMORY[0x1E69638B8];
  v25 = UTTypeConformsTo(v12, *MEMORY[0x1E69638B8]);
  v26 = v24;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || v25)
  {
    if ((v19 & 1) == 0)
    {
      v28 = [v32 _activityViewControllerForActivityItem:v11];
      v29 = [v14 activityViewControllerPlaceholderItem:v28];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && !v25)
      {
        if ([v29 isFileURL])
        {
          v30 = *MEMORY[0x1E69637C0];

          v26 = v30;
        }

        [v16 registerItemForTypeIdentifier:v26 loadHandler:{v15, v32}];
      }
    }

    v13 = v33;
  }

  else
  {
    if ([v11 isFileURL])
    {
      v27 = *MEMORY[0x1E69637C0];

      v26 = v27;
    }

    v13 = v33;
    [v16 registerItemForTypeIdentifier:v26 loadHandler:{v15, v32}];
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __97___UIActivityItemMapping__itemProviderForActivityItem_typeIdentifier_thumbnailSize_activityType___block_invoke_3;
  v34[3] = &unk_1E71FAEA0;
  v35 = v11;
  v37 = width;
  v38 = height;
  v36 = v13;
  [v16 setPreviewImageHandler:v34];

LABEL_28:

  return v16;
}

+ (id)_subjectForActivityItem:(id)a3 activityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = [a1 _activityViewControllerForActivityItem:v6];
    v9 = [v6 activityViewController:v8 subjectForActivityType:v7];
  }

  else
  {
    v8 = [__originalItems objectForKey:v6];
    if (objc_opt_respondsToSelector())
    {
      v10 = [a1 _activityViewControllerForActivityItem:v6];
      v9 = [v8 activityViewController:v10 subjectForActivityType:v7];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)_dataTypeIdentifierForActivityItem:(id)a3 activityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = [a1 _activityViewControllerForActivityItem:v6];
    v9 = [v6 activityViewController:v8 dataTypeIdentifierForActivityType:v7];
  }

  else
  {
    v8 = [__originalItems objectForKey:v6];
    if (objc_opt_respondsToSelector())
    {
      v10 = [a1 _activityViewControllerForActivityItem:v6];
      v9 = [v8 activityViewController:v10 dataTypeIdentifierForActivityType:v7];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)_thumbnailImageForActivityItem:(id)a3 thumbnailSize:(CGSize)a4 activityType:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
  if (height <= 0.0)
  {
    v12 = 0;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [a1 _activityViewControllerForActivityItem:v9];
      v12 = [v9 activityViewController:v11 thumbnailImageForActivityType:v10 suggestedSize:{width, height}];
    }

    else
    {
      v11 = [__originalItems objectForKey:v9];
      if (objc_opt_respondsToSelector())
      {
        v13 = [a1 _activityViewControllerForActivityItem:v9];
        v12 = [v11 activityViewController:v13 thumbnailImageForActivityType:v10 suggestedSize:{width, height}];
      }

      else
      {
        v12 = 0;
      }
    }
  }

  return v12;
}

+ (id)_thumbnailImageDataForActivityItem:(id)a3 thumbnailSize:(CGSize)a4 activityType:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
  if (height <= 0.0)
  {
    v12 = 0;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [a1 _activityViewControllerForActivityItem:v9];
      v12 = [v9 activityViewController:v11 thumbnailImageDataForActivityType:v10 suggestedSize:{width, height}];
    }

    else
    {
      v11 = [__originalItems objectForKey:v9];
      if (objc_opt_respondsToSelector())
      {
        v13 = [a1 _activityViewControllerForActivityItem:v9];
        v12 = [v11 activityViewController:v13 thumbnailImageDataForActivityType:v10 suggestedSize:{width, height}];
      }

      else
      {
        v12 = 0;
      }
    }
  }

  return v12;
}

+ (id)_attachmentNameForActivityItem:(id)a3 activityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = [a1 _activityViewControllerForActivityItem:v6];
    v9 = [v6 activityViewController:v8 attachmentNameForActivityType:v7];
  }

  else
  {
    v8 = [__originalItems objectForKey:v6];
    if (objc_opt_respondsToSelector())
    {
      v10 = [a1 _activityViewControllerForActivityItem:v6];
      v9 = [v8 activityViewController:v10 attachmentNameForActivityType:v7];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)_openURLAnnotationForActivityItem:(id)a3 activityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = [a1 _activityViewControllerForActivityItem:v6];
    v9 = [v6 activityViewController:v8 openURLAnnotationForActivityType:v7];
  }

  else
  {
    v8 = [__originalItems objectForKey:v6];
    if (objc_opt_respondsToSelector())
    {
      v10 = [a1 _activityViewControllerForActivityItem:v6];
      v9 = [v8 activityViewController:v10 openURLAnnotationForActivityType:v7];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end