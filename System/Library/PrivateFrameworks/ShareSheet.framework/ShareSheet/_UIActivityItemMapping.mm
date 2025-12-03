@interface _UIActivityItemMapping
+ (BOOL)_canLoadMetadataForActivityItem:(id)item;
+ (id)_attachmentNameForActivityItem:(id)item activityType:(id)type;
+ (id)_dataTypeIdentifierForActivityItem:(id)item activityType:(id)type;
+ (id)_itemProviderForActivityItem:(id)item typeIdentifier:(id)identifier thumbnailSize:(CGSize)size activityType:(id)type;
+ (id)_loadMetadataForActivityItem:(id)item activityViewController:(id)controller;
+ (id)_openURLAnnotationForActivityItem:(id)item activityType:(id)type;
+ (id)_subjectForActivityItem:(id)item activityType:(id)type;
+ (id)_thumbnailImageDataForActivityItem:(id)item thumbnailSize:(CGSize)size activityType:(id)type;
+ (id)_thumbnailImageForActivityItem:(id)item thumbnailSize:(CGSize)size activityType:(id)type;
+ (void)_addActivityItem:(id)item activityViewController:(id)controller originalActivityItem:(id)activityItem;
+ (void)_addToActiveActivityViewControllers:(id)controllers;
+ (void)_clearActivityItems:(id)items;
+ (void)initialize;
@end

@implementation _UIActivityItemMapping

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:517 capacity:1];
    v3 = __activityViewControllers;
    __activityViewControllers = v2;

    v4 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:512 capacity:1];
    v5 = __originalItems;
    __originalItems = v4;
  }
}

+ (void)_addToActiveActivityViewControllers:(id)controllers
{
  v3 = _addToActiveActivityViewControllers__onceToken;
  controllersCopy = controllers;
  v6 = controllersCopy;
  if (v3 == -1)
  {
    v5 = controllersCopy;
  }

  else
  {
    +[_UIActivityItemMapping _addToActiveActivityViewControllers:];
    v5 = v6;
  }

  [_activeActivityViewControllers addObject:v5];
}

+ (void)_addActivityItem:(id)item activityViewController:(id)controller originalActivityItem:(id)activityItem
{
  itemCopy = item;
  controllerCopy = controller;
  activityItemCopy = activityItem;
  if (activityItemCopy)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0 && ![activityItemCopy conformsToProtocol:&unk_1EFF36348])
    {
      goto LABEL_16;
    }

LABEL_15:
    [__activityViewControllers setObject:controllerCopy forKey:itemCopy];
    [__originalItems setObject:activityItemCopy forKey:itemCopy];
    goto LABEL_16;
  }

  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || ([itemCopy conformsToProtocol:&unk_1EFF36348])
  {
    goto LABEL_15;
  }

LABEL_16:
}

+ (void)_clearActivityItems:(id)items
{
  v30 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  array = [MEMORY[0x1E695DF70] array];
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
        v12 = [v11 isEqual:itemsCopy];
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
          [array addObject:v10];
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
  v14 = array;
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

+ (BOOL)_canLoadMetadataForActivityItem:(id)item
{
  itemCopy = item;
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

+ (id)_loadMetadataForActivityItem:(id)item activityViewController:(id)controller
{
  itemCopy = item;
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    v7 = [itemCopy activityViewControllerLinkPresentationMetadata:controllerCopy];
LABEL_5:
    v8 = v7;
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [itemCopy activityViewControllerLinkMetadata:controllerCopy];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_alloc_init(getLPLinkMetadataClass());
    [v8 setSummary:itemCopy];
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

+ (id)_itemProviderForActivityItem:(id)item typeIdentifier:(id)identifier thumbnailSize:(CGSize)size activityType:(id)type
{
  height = size.height;
  width = size.width;
  itemCopy = item;
  identifierCopy = identifier;
  typeCopy = type;
  if ([itemCopy conformsToProtocol:&unk_1EFEFB658])
  {
    v14 = itemCopy;
    if (v14)
    {
      goto LABEL_5;
    }
  }

  v14 = [__originalItems objectForKey:itemCopy];
  if (([v14 conformsToProtocol:&unk_1EFEFB658] & 1) == 0)
  {

    goto LABEL_8;
  }

  if (!v14)
  {
LABEL_8:
    selfCopy2 = self;
    v33 = typeCopy;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __97___UIActivityItemMapping__itemProviderForActivityItem_typeIdentifier_thumbnailSize_activityType___block_invoke_2;
    v39[3] = &unk_1E71FA320;
    v17 = &v40;
    v18 = itemCopy;
    v40 = v18;
    v15 = MEMORY[0x18CFF58E0](v39);
    v16 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithItem:v18 typeIdentifier:identifierCopy];
    v14 = 0;
    v19 = 1;
    goto LABEL_14;
  }

LABEL_5:
  if ([v14 conformsToProtocol:&unk_1EFF36348])
  {
    v15 = [self _activityViewControllerForActivityItem:itemCopy];
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
  selfCopy2 = self;
  selfCopy3 = self;
  v20 = itemCopy;
  v43 = v20;
  v21 = typeCopy;
  v44 = v21;
  v15 = MEMORY[0x18CFF58E0](v41);
  v16 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithItem:0 typeIdentifier:0];
  [v16 registerItemForTypeIdentifier:identifierCopy loadHandler:v15];
  if (objc_opt_respondsToSelector())
  {
    v22 = [selfCopy2 _activityViewControllerForActivityItem:v20];
    v23 = [v14 activityViewController:v22 attachmentNameForActivityType:v21];

    if ([v23 length])
    {
      [v16 setSuggestedName:v23];
    }
  }

  v33 = typeCopy;

  v19 = 0;
LABEL_14:

  v24 = *MEMORY[0x1E69638B8];
  v25 = UTTypeConformsTo(identifierCopy, *MEMORY[0x1E69638B8]);
  v26 = v24;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || v25)
  {
    if ((v19 & 1) == 0)
    {
      v28 = [selfCopy2 _activityViewControllerForActivityItem:itemCopy];
      v29 = [v14 activityViewControllerPlaceholderItem:v28];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && !v25)
      {
        if ([v29 isFileURL])
        {
          v30 = *MEMORY[0x1E69637C0];

          v26 = v30;
        }

        [v16 registerItemForTypeIdentifier:v26 loadHandler:{v15, selfCopy2}];
      }
    }

    typeCopy = v33;
  }

  else
  {
    if ([itemCopy isFileURL])
    {
      v27 = *MEMORY[0x1E69637C0];

      v26 = v27;
    }

    typeCopy = v33;
    [v16 registerItemForTypeIdentifier:v26 loadHandler:{v15, selfCopy2}];
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __97___UIActivityItemMapping__itemProviderForActivityItem_typeIdentifier_thumbnailSize_activityType___block_invoke_3;
  v34[3] = &unk_1E71FAEA0;
  v35 = itemCopy;
  v37 = width;
  v38 = height;
  v36 = typeCopy;
  [v16 setPreviewImageHandler:v34];

LABEL_28:

  return v16;
}

+ (id)_subjectForActivityItem:(id)item activityType:(id)type
{
  itemCopy = item;
  typeCopy = type;
  if (objc_opt_respondsToSelector())
  {
    v8 = [self _activityViewControllerForActivityItem:itemCopy];
    v9 = [itemCopy activityViewController:v8 subjectForActivityType:typeCopy];
  }

  else
  {
    v8 = [__originalItems objectForKey:itemCopy];
    if (objc_opt_respondsToSelector())
    {
      v10 = [self _activityViewControllerForActivityItem:itemCopy];
      v9 = [v8 activityViewController:v10 subjectForActivityType:typeCopy];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)_dataTypeIdentifierForActivityItem:(id)item activityType:(id)type
{
  itemCopy = item;
  typeCopy = type;
  if (objc_opt_respondsToSelector())
  {
    v8 = [self _activityViewControllerForActivityItem:itemCopy];
    v9 = [itemCopy activityViewController:v8 dataTypeIdentifierForActivityType:typeCopy];
  }

  else
  {
    v8 = [__originalItems objectForKey:itemCopy];
    if (objc_opt_respondsToSelector())
    {
      v10 = [self _activityViewControllerForActivityItem:itemCopy];
      v9 = [v8 activityViewController:v10 dataTypeIdentifierForActivityType:typeCopy];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)_thumbnailImageForActivityItem:(id)item thumbnailSize:(CGSize)size activityType:(id)type
{
  height = size.height;
  width = size.width;
  itemCopy = item;
  typeCopy = type;
  if (height <= 0.0)
  {
    v12 = 0;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [self _activityViewControllerForActivityItem:itemCopy];
      v12 = [itemCopy activityViewController:v11 thumbnailImageForActivityType:typeCopy suggestedSize:{width, height}];
    }

    else
    {
      v11 = [__originalItems objectForKey:itemCopy];
      if (objc_opt_respondsToSelector())
      {
        v13 = [self _activityViewControllerForActivityItem:itemCopy];
        v12 = [v11 activityViewController:v13 thumbnailImageForActivityType:typeCopy suggestedSize:{width, height}];
      }

      else
      {
        v12 = 0;
      }
    }
  }

  return v12;
}

+ (id)_thumbnailImageDataForActivityItem:(id)item thumbnailSize:(CGSize)size activityType:(id)type
{
  height = size.height;
  width = size.width;
  itemCopy = item;
  typeCopy = type;
  if (height <= 0.0)
  {
    v12 = 0;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [self _activityViewControllerForActivityItem:itemCopy];
      v12 = [itemCopy activityViewController:v11 thumbnailImageDataForActivityType:typeCopy suggestedSize:{width, height}];
    }

    else
    {
      v11 = [__originalItems objectForKey:itemCopy];
      if (objc_opt_respondsToSelector())
      {
        v13 = [self _activityViewControllerForActivityItem:itemCopy];
        v12 = [v11 activityViewController:v13 thumbnailImageDataForActivityType:typeCopy suggestedSize:{width, height}];
      }

      else
      {
        v12 = 0;
      }
    }
  }

  return v12;
}

+ (id)_attachmentNameForActivityItem:(id)item activityType:(id)type
{
  itemCopy = item;
  typeCopy = type;
  if (objc_opt_respondsToSelector())
  {
    v8 = [self _activityViewControllerForActivityItem:itemCopy];
    v9 = [itemCopy activityViewController:v8 attachmentNameForActivityType:typeCopy];
  }

  else
  {
    v8 = [__originalItems objectForKey:itemCopy];
    if (objc_opt_respondsToSelector())
    {
      v10 = [self _activityViewControllerForActivityItem:itemCopy];
      v9 = [v8 activityViewController:v10 attachmentNameForActivityType:typeCopy];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)_openURLAnnotationForActivityItem:(id)item activityType:(id)type
{
  itemCopy = item;
  typeCopy = type;
  if (objc_opt_respondsToSelector())
  {
    v8 = [self _activityViewControllerForActivityItem:itemCopy];
    v9 = [itemCopy activityViewController:v8 openURLAnnotationForActivityType:typeCopy];
  }

  else
  {
    v8 = [__originalItems objectForKey:itemCopy];
    if (objc_opt_respondsToSelector())
    {
      v10 = [self _activityViewControllerForActivityItem:itemCopy];
      v9 = [v8 activityViewController:v10 openURLAnnotationForActivityType:typeCopy];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end