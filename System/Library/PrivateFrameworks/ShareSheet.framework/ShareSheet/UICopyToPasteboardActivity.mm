@interface UICopyToPasteboardActivity
+ (unint64_t)_xpcAttributes;
- (BOOL)canPerformWithActivityItems:(id)items;
- (id)activityTitle;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation UICopyToPasteboardActivity

+ (unint64_t)_xpcAttributes
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (id)activityTitle
{
  v2 = _ShareSheetBundle();
  v3 = [v2 localizedStringForKey:@"Copy[Activity]" value:@"Copy" table:@"Localizable"];

  return v3;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v17 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (_UIActivityItemTypes() == 0x4000)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = itemsCopy;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([MEMORY[0x1E69CDE78] isSWYActivityItemProvider:{v9, v12}])
          {
            v10 = 0;
            goto LABEL_14;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v10 = 1;
LABEL_14:
  }

  else
  {
    v10 = (_UIActivityItemTypes() & 0x9F) != 0;
  }

  return v10;
}

- (void)prepareWithActivityItems:(id)items
{
  v49 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (_UIActivityItemTypes() == 0x4000)
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_19];
    v6 = [itemsCopy filteredArrayUsingPredicate:v5];

    pasteboard = [(UICopyToPasteboardActivity *)self pasteboard];
    [pasteboard setItemProviders:v6];

    goto LABEL_49;
  }

  selfCopy = self;
  array = [MEMORY[0x1E695DF70] array];
  [MEMORY[0x1E695DF70] array];
  v37 = v36 = itemsCopy;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v9 = itemsCopy;
  v10 = [v9 countByEnumeratingWithState:&v44 objects:v48 count:16];
  v11 = 0x1E696A000uLL;
  if (!v10)
  {
    goto LABEL_39;
  }

  v12 = v10;
  v13 = *v45;
  inTagClass = *MEMORY[0x1E6963710];
  v38 = *MEMORY[0x1E6963798];
  v40 = array;
  do
  {
    v14 = 0;
    do
    {
      if (*v45 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v44 + 1) + 8 * v14);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) && ([v15 isFileURL] & 1) == 0)
      {
LABEL_19:
        v19 = [objc_alloc(*(v11 + 3232)) initWithObject:v15];
        if (!v19)
        {
          goto LABEL_21;
        }

LABEL_20:
        [array addObject:v19];

        goto LABEL_21;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v15 isFileURL])
      {
        v16 = v15;
        pathExtension = [v16 pathExtension];
        if (!pathExtension || (PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(inTagClass, pathExtension, 0)) == 0)
        {
          PreferredIdentifierForTag = v38;
        }

        v19 = objc_alloc_init(*(v11 + 3232));
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __55__UICopyToPasteboardActivity_prepareWithActivityItems___block_invoke_19;
        v42[3] = &unk_1E71FA530;
        v43 = v16;
        v20 = v16;
        [v19 registerFileRepresentationForTypeIdentifier:PreferredIdentifierForTag fileOptions:0 visibility:0 loadHandler:v42];
        lastPathComponent = [v20 lastPathComponent];
        [v19 setSuggestedName:lastPathComponent];

        v11 = 0x1E696A000;
        array = v40;
LABEL_35:
        if (v19)
        {
          goto LABEL_20;
        }

        goto LABEL_21;
      }

      if ([v15 conformsToProtocol:&unk_1EFF361C8])
      {
        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = [MEMORY[0x1E69DCAB8] imageWithData:v15];
        if (v22)
        {
          v19 = [objc_alloc(*(v11 + 3232)) initWithObject:v22];
        }

        else
        {
          v19 = 0;
        }

        goto LABEL_35;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v37 addObject:v15];
        goto LABEL_21;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v15;
        v23 = +[SHSheetGroupActivity groupActivityType];
        v24 = [v19 hasItemConformingToTypeIdentifier:v23];

        if (v24)
        {
          v25 = share_sheet_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18B359000, v25, OS_LOG_TYPE_DEFAULT, "SharePlay: Filtering out GroupActivity provider from Copy action", buf, 2u);
          }

          v11 = 0x1E696A000;
          goto LABEL_21;
        }

        v11 = 0x1E696A000;
        goto LABEL_35;
      }

LABEL_21:
      ++v14;
    }

    while (v12 != v14);
    v26 = [v9 countByEnumeratingWithState:&v44 objects:v48 count:16];
    v12 = v26;
  }

  while (v26);
LABEL_39:

  if (![array count])
  {
    firstObject = [v9 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      firstObject2 = [v9 firstObject];
      v30 = +[SHSheetGroupActivity groupActivityType];
      if ([firstObject2 hasItemConformingToTypeIdentifier:v30])
      {
        registeredTypeIdentifiers = [firstObject2 registeredTypeIdentifiers];
        v32 = [registeredTypeIdentifiers count];

        if (v32 >= 2)
        {
          [array addObject:firstObject2];
        }
      }

      else
      {
      }
    }
  }

  pasteboard2 = [(UICopyToPasteboardActivity *)selfCopy pasteboard];
  [pasteboard2 setItemProviders:array];

  if ([v37 count])
  {
    pasteboard3 = [(UICopyToPasteboardActivity *)selfCopy pasteboard];
    [pasteboard3 addItems:v37];
  }

  itemsCopy = v36;
LABEL_49:
}

uint64_t __55__UICopyToPasteboardActivity_prepareWithActivityItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SHSheetGroupActivity groupActivityType];
  v4 = [v2 hasItemConformingToTypeIdentifier:v3];

  if (v4)
  {
    v5 = share_sheet_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "SharePlay: Filtering out GroupActivity provider from Copy action", v7, 2u);
    }
  }

  return v4 ^ 1u;
}

@end