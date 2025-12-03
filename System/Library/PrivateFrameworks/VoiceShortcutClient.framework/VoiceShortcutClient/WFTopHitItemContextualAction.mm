@interface WFTopHitItemContextualAction
+ (id)availableCollectionIdentifiers;
+ (id)disambiguationEntriesForCollection:(id)collection limit:(int64_t)limit error:(id *)error;
+ (id)supportedBundleIdentifiers;
+ (void)_unsafeDisambiguationEntriesForCollection:(id)collection limit:(int64_t)limit completionHandler:(id)handler;
+ (void)disambiguationEntriesForCollection:(id)collection limit:(int64_t)limit completionHandler:(id)handler;
+ (void)getTopHitContextualActionsForType:(unint64_t)type limit:(int64_t)limit completion:(id)completion;
- (BOOL)isEqual:(id)equal;
- (WFTopHitItemContextualAction)initWithItem:(id)item identifier:(id)identifier wfActionIdentifier:(id)actionIdentifier associatedAppBundleIdentifier:(id)bundleIdentifier parameters:(id)parameters displayString:(id)string title:(id)title subtitle:(id)self0 primaryColor:(unint64_t)self1 icon:(id)self2 accessoryIcon:(id)self3 namedQueryInfo:(id)self4;
- (unint64_t)hash;
@end

@implementation WFTopHitItemContextualAction

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (v5)
      {
        uniqueIdentifier = [(WFContextualAction *)self uniqueIdentifier];
        uniqueIdentifier2 = [(WFContextualAction *)v5 uniqueIdentifier];
        v8 = uniqueIdentifier;
        v9 = uniqueIdentifier2;
        v10 = v9;
        if (v8 == v9)
        {
          v11 = 1;
        }

        else
        {
          v11 = 0;
          if (v8 && v9)
          {
            v11 = [v8 isEqualToString:v9];
          }
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 combineContentsOfPropertyListObject:v5];

  uniqueIdentifier = [(WFContextualAction *)self uniqueIdentifier];
  v8 = [v3 combineContentsOfPropertyListObject:uniqueIdentifier];

  v9 = [v3 finalize];
  return v9;
}

- (WFTopHitItemContextualAction)initWithItem:(id)item identifier:(id)identifier wfActionIdentifier:(id)actionIdentifier associatedAppBundleIdentifier:(id)bundleIdentifier parameters:(id)parameters displayString:(id)string title:(id)title subtitle:(id)self0 primaryColor:(unint64_t)self1 icon:(id)self2 accessoryIcon:(id)self3 namedQueryInfo:(id)self4
{
  itemCopy = item;
  infoCopy = info;
  v28.receiver = self;
  v28.super_class = WFTopHitItemContextualAction;
  BYTE2(v23) = 0;
  LOWORD(v23) = 0;
  v19 = [WFContextualAction initWithIdentifier:sel_initWithIdentifier_wfActionIdentifier_associatedAppBundleIdentifier_parameters_displayString_title_subtitle_icon_accessoryIcon_actionShowsUserInterface_actionHasResult_isReversible_ wfActionIdentifier:identifier associatedAppBundleIdentifier:actionIdentifier parameters:bundleIdentifier displayString:parameters title:string subtitle:title icon:subtitle accessoryIcon:icon actionShowsUserInterface:accessoryIcon actionHasResult:v23 isReversible:?];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_item, item);
    v20->_primaryColor = color;
    objc_storeStrong(&v20->_namedQueryInfo, info);
    v21 = v20;
  }

  return v20;
}

+ (id)disambiguationEntriesForCollection:(id)collection limit:(int64_t)limit error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"TopHitItemContextualActionError" code:0 userInfo:0];
  }

  return 0;
}

+ (void)_unsafeDisambiguationEntriesForCollection:(id)collection limit:(int64_t)limit completionHandler:(id)handler
{
  v6 = MEMORY[0x1E696ABC0];
  handlerCopy = handler;
  v8 = [v6 errorWithDomain:@"TopHitItemContextualActionError" code:0 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v8);
}

+ (void)disambiguationEntriesForCollection:(id)collection limit:(int64_t)limit completionHandler:(id)handler
{
  collectionCopy = collection;
  handlerCopy = handler;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2810000000;
  v24[3] = &unk_1B1F6ADDD;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __91__WFTopHitItemContextualAction_disambiguationEntriesForCollection_limit_completionHandler___block_invoke;
  v16 = &unk_1E7B02070;
  v19 = v24;
  v20 = v22;
  selfCopy = self;
  v10 = collectionCopy;
  v17 = v10;
  v11 = handlerCopy;
  v18 = v11;
  v12 = _Block_copy(&v13);
  [self _unsafeDisambiguationEntriesForCollection:v10 limit:limit completionHandler:{v12, v13, v14, v15, v16}];

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
}

void __91__WFTopHitItemContextualAction_disambiguationEntriesForCollection_limit_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  os_unfair_lock_lock((*(*(a1 + 48) + 8) + 32));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__WFTopHitItemContextualAction_disambiguationEntriesForCollection_limit_completionHandler___block_invoke_2;
  aBlock[3] = &unk_1E7B02C60;
  aBlock[4] = *(a1 + 48);
  v7 = _Block_copy(aBlock);
  v8 = *(*(a1 + 56) + 8);
  if (*(v8 + 24) == 1)
  {
    v9 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = NSStringFromClass(*(a1 + 64));
      v11 = *(a1 + 32);
      *buf = 136315650;
      v15 = "+[WFTopHitItemContextualAction disambiguationEntriesForCollection:limit:completionHandler:]_block_invoke";
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_1B1DE3000, v9, OS_LOG_TYPE_FAULT, "%s Unexpected double completion in disambiguationEntriesForCollection for class: %@, collection: %@", buf, 0x20u);
    }
  }

  else
  {
    *(v8 + 24) = 1;
    (*(*(a1 + 40) + 16))();
  }

  v7[2](v7);

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)availableCollectionIdentifiers
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)supportedBundleIdentifiers
{
  v6[5] = *MEMORY[0x1E69E9840];
  v6[0] = @"com.apple.shortcuts";
  v6[1] = @"com.apple.mobilephone";
  v6[2] = @"com.apple.facetime";
  v6[3] = @"com.apple.Music";
  v6[4] = @"com.apple.podcasts";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:5];
  v3 = [v2 if_objectsPassingTest:&__block_literal_global_15778];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

BOOL __58__WFTopHitItemContextualAction_supportedBundleIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69635F8];
  v3 = a2;
  v4 = [[v2 alloc] initWithBundleIdentifier:v3 allowPlaceholder:0 error:0];

  return v4 != 0;
}

+ (void)getTopHitContextualActionsForType:(unint64_t)type limit:(int64_t)limit completion:(id)completion
{
  completionCopy = completion;
  v8 = +[VCVoiceShortcutClient standardClient];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__WFTopHitItemContextualAction_getTopHitContextualActionsForType_limit_completion___block_invoke;
  aBlock[3] = &unk_1E7B026A8;
  v9 = completionCopy;
  v22 = v9;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (type <= 1)
  {
    if (!type)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TopHitItemContextualActionError" code:0 userInfo:0];
      (v11)[2](v11, 0, v12);
      goto LABEL_12;
    }

    if (type == 1)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __83__WFTopHitItemContextualAction_getTopHitContextualActionsForType_limit_completion___block_invoke_2;
      v19[3] = &unk_1E7B026A8;
      v20 = v10;
      [v8 getSuggestedShortcutsWithLimit:limit completion:v19];
      v12 = v20;
      goto LABEL_12;
    }
  }

  else
  {
    switch(type)
    {
      case 2uLL:
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __83__WFTopHitItemContextualAction_getTopHitContextualActionsForType_limit_completion___block_invoke_4;
        v17[3] = &unk_1E7B026A8;
        v18 = v10;
        [(WFTopHitItemContextualAction *)WFPlayMusicContextualAction disambiguationEntriesForCollection:@"Suggested" limit:limit completionHandler:v17];
        v12 = v18;
        goto LABEL_12;
      case 3uLL:
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __83__WFTopHitItemContextualAction_getTopHitContextualActionsForType_limit_completion___block_invoke_5;
        v15[3] = &unk_1E7B026A8;
        v16 = v10;
        [(WFTopHitItemContextualAction *)WFPlayPodcastEpisodeContextualAction disambiguationEntriesForCollection:@"Suggested" limit:limit completionHandler:v15];
        v12 = v16;
        goto LABEL_12;
      case 4uLL:
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __83__WFTopHitItemContextualAction_getTopHitContextualActionsForType_limit_completion___block_invoke_6;
        v13[3] = &unk_1E7B02028;
        v14 = v10;
        [v8 getLinkActionWithAppBundleIdentifier:@"com.apple.springboard" appIntentIdentifier:@"OpenCamera" expandingParameterName:@"cameraMode" limit:limit completion:v13];
        v12 = v14;
LABEL_12:

        break;
    }
  }
}

void __83__WFTopHitItemContextualAction_getTopHitContextualActionsForType_limit_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = MEMORY[0x1E695DFB8];
    v6 = a3;
    v7 = [v5 orderedSetWithArray:a2];
    v10 = [v7 array];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    v10 = a3;
    v9(v8, 0);
  }
}

void __83__WFTopHitItemContextualAction_getTopHitContextualActionsForType_limit_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [WFAppShortcutNamedQueryInfo alloc];
    v5 = WFLocalizedString(@"My Shortcuts");
    v6 = [(WFAppShortcutNamedQueryInfo *)v4 initWithName:v5 symbolName:@"app.2.stack.3d"];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __83__WFTopHitItemContextualAction_getTopHitContextualActionsForType_limit_completion___block_invoke_3;
    v9[3] = &unk_1E7B01FC8;
    v10 = v6;
    v7 = v6;
    v8 = [v3 if_map:v9];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __83__WFTopHitItemContextualAction_getTopHitContextualActionsForType_limit_completion___block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    if ([v8 count])
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __83__WFTopHitItemContextualAction_getTopHitContextualActionsForType_limit_completion___block_invoke_7;
      v20[3] = &unk_1E7B02000;
      v21 = v7;
      v10 = [v8 if_map:v20];
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v11 = [[WFContextualActionIcon alloc] initWithSystemName:@"camera"];
      v12 = [WFAppIntentBasedTopHitContextualAction alloc];
      v13 = WFLocalizedString(@"Open Camera");
      v14 = WFLocalizedString(@"Open Camera");
      v15 = WFLocalizedString(@"Open Camera");
      v16 = [(WFAppIntentBasedTopHitContextualAction *)v12 initWithAction:v7 appBundleIdentifier:@"com.apple.springboard" extensionBundleIdentifier:0 authenticationPolicy:0 associatedAppBundleIdentifier:@"com.apple.camera" parameterValue:0 displayString:v13 title:v14 subtitle:v15 primaryColor:12 icon:v11 accessoryIcon:0 namedQueryInfo:0];

      v17 = *(a1 + 32);
      v22[0] = v16;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      (*(v17 + 16))(v17, v18, 0);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v19 = *MEMORY[0x1E69E9840];
}

WFAppIntentBasedTopHitContextualAction *__83__WFTopHitItemContextualAction_getTopHitContextualActionsForType_limit_completion___block_invoke_7(uint64_t a1, void *a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v26[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v25 = [v4 actionWithParameters:v5];

  v22 = [WFAppIntentBasedTopHitContextualAction alloc];
  v24 = WFLocalizedString(@"Open Camera");
  v6 = WFLocalizedString(@"Open Camera");
  v23 = [v3 value];
  v7 = [v23 displayRepresentation];
  v8 = [v7 title];
  v9 = [v8 localizedStringWithPluralizationNumber:&unk_1F2931320 forLocaleIdentifier:0];
  v10 = [v3 value];
  v11 = [v10 displayRepresentation];
  v12 = [v11 image];
  objc_opt_class();
  LOBYTE(v5) = objc_opt_isKindOfClass();

  if (v5)
  {
    v13 = [v10 displayRepresentation];
    v14 = [v13 image];
    v15 = [v14 systemName];
  }

  else
  {
    v16 = [v10 value];
    if (v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v13 = v17;

    v15 = @"camera";
    if (([v13 isEqualToString:@"rearPhoto"] & 1) == 0)
    {
      if ([v13 isEqualToString:@"frontPhoto"])
      {
        v15 = @"iphone";
      }

      else if ([v13 isEqualToString:@"rearVideo"])
      {
        v15 = @"video";
      }

      else if ([v13 isEqualToString:@"rearPortrait"])
      {
        v15 = @"f.cursive";
      }
    }
  }

  v18 = [[WFContextualActionIcon alloc] initWithSystemName:v15];
  v19 = [(WFAppIntentBasedTopHitContextualAction *)v22 initWithAction:v25 appBundleIdentifier:@"com.apple.springboard" extensionBundleIdentifier:0 authenticationPolicy:0 associatedAppBundleIdentifier:@"com.apple.camera" parameterValue:v3 displayString:v24 title:v6 subtitle:v9 primaryColor:12 icon:v18 accessoryIcon:0 namedQueryInfo:0];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

WFRunShortcutContextualAction *__83__WFTopHitItemContextualAction_getTopHitContextualActionsForType_limit_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [WFRunShortcutContextualAction alloc];
  v5 = [v3 descriptor];
  v6 = [v3 serializedRepresentation];

  v7 = [(WFRunShortcutContextualAction *)v4 initWithDescriptor:v5 serializedRepresentation:v6 namedQueryInfo:*(a1 + 32)];

  return v7;
}

@end