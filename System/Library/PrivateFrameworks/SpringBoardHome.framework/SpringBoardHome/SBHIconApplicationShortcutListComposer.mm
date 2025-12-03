@interface SBHIconApplicationShortcutListComposer
+ (BOOL)sbh_isDestructiveShortcutItem:(id)item;
+ (BOOL)sbh_isShortcutItemDeleteOrRemove:(id)remove;
+ (BOOL)sbh_isShortcutItemSpringBoardOnly:(id)only;
+ (BOOL)supportsMultiwindowShortcut;
+ (BOOL)supportsNewWindowShortcut;
+ (BOOL)supportsProtectedAppsShortcuts;
+ (id)composedShortcutsForApplicationWithBundleIdentifier:(id)identifier iconDisplayName:(id)name staticItems:(id)items dynamicItems:(id)dynamicItems applicationItemID:(unint64_t)d numberOfDisplayItemsInSwitcher:(int64_t)switcher supportsMultipleWindows:(BOOL)windows isSystemApplication:(BOOL)self0 isInternalApplication:(BOOL)self1 isApplicationInBeta:(BOOL)self2 isApplicationHidden:(BOOL)self3 iconManagerAllowsEditing:(BOOL)self4 removeStyle:(int64_t)self5;
+ (id)composedShortcutsForBookmarkIcon:(id)icon withDisplayName:(id)name iconManagerAllowsEditing:(BOOL)editing removeStyle:(int64_t)style;
+ (id)composedShortcutsForDownloadingApplicationWithBundleIdentifier:(id)identifier iconDisplayName:(id)name applicationItemID:(unint64_t)d canModifyDownloadState:(BOOL)state prioritizationIsAvailable:(BOOL)available downloadingInformationAgent:(id)agent iconManagerAllowsEditing:(BOOL)editing removeStyle:(int64_t)self0 canShare:(BOOL)self1;
+ (id)composedShortcutsForFolderIcon:(id)icon iconImageCache:(id)cache iconManagerAllowsEditing:(BOOL)editing removeStyle:(int64_t)style badgeViewGenerator:(id)generator;
+ (id)composedShortcutsForWidgetIcon:(id)icon additionalApplicationShortcutItems:(id)items widgetIconSupportsConfiguration:(BOOL)configuration iconManagerAllowsEditing:(BOOL)editing widgetSettings:(id)settings;
+ (id)filteredApplicationShortcutItemsWithStaticApplicationShortcutItems:(id)items dynamicApplicationShortcutItems:(id)shortcutItems;
+ (id)homeScreenDefaults;
+ (unint64_t)sbh_shortcutSectionForItem:(id)item;
@end

@implementation SBHIconApplicationShortcutListComposer

+ (BOOL)supportsProtectedAppsShortcuts
{
  v2 = _os_feature_enabled_impl();
  tokenForCurrentProcess = [MEMORY[0x1E698E620] tokenForCurrentProcess];
  if ([tokenForCurrentProcess hasEntitlement:@"com.apple.appprotectiond.read.access"] && objc_msgSend(tokenForCurrentProcess, "hasEntitlement:", @"com.apple.appprotectiond.write.access"))
  {
    v4 = [tokenForCurrentProcess hasEntitlement:@"com.apple.appprotectiond.guard.access"];
  }

  else
  {
    v4 = 0;
  }

  return v2 & v4;
}

+ (BOOL)supportsNewWindowShortcut
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

+ (BOOL)supportsMultiwindowShortcut
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

+ (id)homeScreenDefaults
{
  if (homeScreenDefaults_onceToken != -1)
  {
    +[SBHIconApplicationShortcutListComposer homeScreenDefaults];
  }

  v3 = homeScreenDefaults_homeScreenDefaults;

  return v3;
}

uint64_t __60__SBHIconApplicationShortcutListComposer_homeScreenDefaults__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69D4030]);
  v1 = homeScreenDefaults_homeScreenDefaults;
  homeScreenDefaults_homeScreenDefaults = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)filteredApplicationShortcutItemsWithStaticApplicationShortcutItems:(id)items dynamicApplicationShortcutItems:(id)shortcutItems
{
  if (items | shortcutItems)
  {
    v5 = MEMORY[0x1E695DF70];
    shortcutItemsCopy = shortcutItems;
    itemsCopy = items;
    v8 = objc_alloc_init(v5);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __141__SBHIconApplicationShortcutListComposer_filteredApplicationShortcutItemsWithStaticApplicationShortcutItems_dynamicApplicationShortcutItems___block_invoke;
    aBlock[3] = &unk_1E808A320;
    v9 = v8;
    v14 = v9;
    v10 = _Block_copy(aBlock);
    v10[2](v10, itemsCopy);

    v10[2](v10, shortcutItemsCopy);
    if ([v9 count])
    {
      v11 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
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

  return v11;
}

void __141__SBHIconApplicationShortcutListComposer_filteredApplicationShortcutItemsWithStaticApplicationShortcutItems_dynamicApplicationShortcutItems___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) count] <= 3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [v9 localizedTitle];
        v11 = [v10 length];

        if (v11)
        {
          [*(a1 + 32) addObject:v9];
        }

        if ([*(a1 + 32) count] == 4)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

+ (id)composedShortcutsForApplicationWithBundleIdentifier:(id)identifier iconDisplayName:(id)name staticItems:(id)items dynamicItems:(id)dynamicItems applicationItemID:(unint64_t)d numberOfDisplayItemsInSwitcher:(int64_t)switcher supportsMultipleWindows:(BOOL)windows isSystemApplication:(BOOL)self0 isInternalApplication:(BOOL)self1 isApplicationInBeta:(BOOL)self2 isApplicationHidden:(BOOL)self3 iconManagerAllowsEditing:(BOOL)self4 removeStyle:(int64_t)self5
{
  hiddenCopy2 = hidden;
  LODWORD(v69) = internalApplication;
  HIDWORD(v69) = application;
  v71[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  nameCopy = name;
  itemsCopy = items;
  dynamicItemsCopy = dynamicItems;
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v66 = dynamicItemsCopy;
  v67 = itemsCopy;
  v24 = [objc_opt_class() filteredApplicationShortcutItemsWithStaticApplicationShortcutItems:itemsCopy dynamicApplicationShortcutItems:dynamicItemsCopy];
  [v23 addObjectsFromArray:v24];

  if (editing)
  {
    v25 = objc_alloc_init(MEMORY[0x1E69D41B8]);
    [v25 setType:@"com.apple.springboardhome.application-shortcut-item.change-widget-size"];
    [v23 addObject:v25];
  }

  if (!os_variant_has_internal_content())
  {
    goto LABEL_12;
  }

  if (composedShortcutsForApplicationWithBundleIdentifier_iconDisplayName_staticItems_dynamicItems_applicationItemID_numberOfDisplayItemsInSwitcher_supportsMultipleWindows_isSystemApplication_isInternalApplication_isApplicationInBeta_isApplicationHidden_iconManagerAllowsEditing_removeStyle__onceToken != -1)
  {
    +[SBHIconApplicationShortcutListComposer composedShortcutsForApplicationWithBundleIdentifier:iconDisplayName:staticItems:dynamicItems:applicationItemID:numberOfDisplayItemsInSwitcher:supportsMultipleWindows:isSystemApplication:isInternalApplication:isApplicationInBeta:isApplicationHidden:iconManagerAllowsEditing:removeStyle:];
  }

  if ([composedShortcutsForApplicationWithBundleIdentifier_iconDisplayName_staticItems_dynamicItems_applicationItemID_numberOfDisplayItemsInSwitcher_supportsMultipleWindows_isSystemApplication_isInternalApplication_isApplicationInBeta_isApplicationHidden_iconManagerAllowsEditing_removeStyle__homeScreenDefaults shouldFudgeShortcutsToCauseMaximumPain])
  {
    if (!d)
    {
      d = 10000;
    }

    if ([v23 count] > 3)
    {
      v69 = 0;
      beta = 0;
    }

    else
    {
      do
      {
        v26 = objc_alloc_init(MEMORY[0x1E69D41B8]);
        v27 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithType:18];
        [v26 setIcon:v27];

        [v26 setLocalizedTitle:@"QA TEST"];
        [v26 setType:@"com.apple.springboardhome.application-shortcut-item.cancel-download"];
        [v23 addObject:v26];
      }

      while ([v23 count] < 4);
      v69 = 0;
      beta = 0;
    }
  }

  else
  {
LABEL_12:
    if (!windows)
    {
      goto LABEL_20;
    }
  }

  if ([objc_opt_class() supportsNewWindowShortcut])
  {
    v28 = SBHBundle();
    [v28 localizedStringForKey:@"ADD_NEW_WINDOW_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v30 = v29 = identifierCopy;
    v31 = objc_alloc_init(MEMORY[0x1E69D41B8]);
    v32 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"plus.rectangle"];
    [v31 setIcon:v32];

    [v31 setLocalizedTitle:v30];
    [v31 setType:@"com.apple.springboardhome.application-shortcut-item.new-window"];
    [v23 addObject:v31];

    identifierCopy = v29;
  }

  supportsMultiwindowShortcut = [objc_opt_class() supportsMultiwindowShortcut];
  if (switcher >= 1 && supportsMultiwindowShortcut)
  {
    v34 = SBHBundle();
    v35 = [v34 localizedStringForKey:@"SHOW_ALL_WINDOWS_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v36 = objc_alloc_init(MEMORY[0x1E69D41B8]);
    v37 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"rectangle.grid.2x2"];
    [v36 setIcon:v37];

    [v36 setLocalizedTitle:v35];
    [v36 setType:@"com.apple.springboardhome.application-shortcut-item.show-all-windows"];
    [v23 addObject:v36];

    hiddenCopy2 = hidden;
  }

LABEL_20:
  if (editing)
  {
    v38 = SBHBundle();
    v39 = [v38 localizedStringForKey:@"REARRANGE_ICONS_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    _SBCreateRearrangeAppsApplicationShortcutItemWithLocalizedTitle(v39);
    v41 = v40 = hiddenCopy2;
    [v23 addObject:v41];

    hiddenCopy2 = v40;
  }

  if (hiddenCopy2)
  {
    v42 = objc_alloc_init(MEMORY[0x1E69D41B8]);
    v43 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"plus.app"];
    [v42 setIcon:v43];

    v44 = SBHBundle();
    v45 = [v44 localizedStringForKey:@"ADD_TO_HOMESCREEN_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    [v42 setLocalizedTitle:v45];

    [v42 setType:@"com.apple.springboardhome.application-shortcut-item.add-to-home-screen"];
    [v23 addObject:v42];
  }

  v46 = v69;
  if (!d)
  {
    v46 = 1;
  }

  if (((HIDWORD(v69) | v46) & 1) == 0)
  {
    if (beta)
    {
      v47 = objc_alloc_init(MEMORY[0x1E69D41B8]);
      [v47 setActivationMode:0];
      [v47 setBundleIdentifierToLaunch:@"com.apple.TestFlight"];
      v48 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"square.and.pencil"];
      [v47 setIcon:v48];

      v49 = SBHBundle();
      v50 = [v49 localizedStringForKey:@"SEND_BETA_FEEDBACK_APPLICATION_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      [v47 setLocalizedTitle:v50];

      [v47 setType:*MEMORY[0x1E69D4558]];
      v70 = *MEMORY[0x1E69D4560];
      v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:d];
      v71[0] = v51;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:&v70 count:1];
      [v47 setUserInfo:v52];

      [v23 addObject:v47];
    }

    else
    {
      v53 = MEMORY[0x1E696AEC0];
      v47 = SBHBundle();
      v54 = [v47 localizedStringForKey:@"SHARE_APPLICATION_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      nameCopy = [v53 localizedStringWithFormat:v54, nameCopy];
      v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:d];
      v57 = _SBCreateShareApplicationShortcutItemWithLocalizedTitle(nameCopy, v56);
      [v23 addObject:v57];
    }
  }

  if ([objc_opt_class() supportsProtectedAppsShortcuts])
  {
    v58 = _SBCreateAppProtectionApplicationShortcutItemForBundleIdentifier(identifierCopy);
    if (v58)
    {
      [v23 addObject:v58];
    }
  }

  switch(style)
  {
    case 1:
      v59 = SBHBundle();
      v60 = [v59 localizedStringForKey:@"HIDE_APP_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      v61 = _SBCreateHideAppSuggestionApplicationShortcutItemWithLocalizedTitle(v60);
      break;
    case 2:
      v59 = SBHBundle();
      v60 = [v59 localizedStringForKey:@"REMOVE_APP_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      v61 = _SBCreateRemoveAppApplicationShortcutItemWithLocalizedTitle(v60);
      break;
    case 3:
      v59 = SBHBundle();
      v60 = [v59 localizedStringForKey:@"DELETE_APP_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      v61 = _SBCreateDeleteAppApplicationShortcutItemWithLocalizedTitle(v60);
      break;
    default:
      goto LABEL_42;
  }

  v62 = v61;
  [v23 addObject:v61];

LABEL_42:

  return v23;
}

uint64_t __327__SBHIconApplicationShortcutListComposer_composedShortcutsForApplicationWithBundleIdentifier_iconDisplayName_staticItems_dynamicItems_applicationItemID_numberOfDisplayItemsInSwitcher_supportsMultipleWindows_isSystemApplication_isInternalApplication_isApplicationInBeta_isApplicationHidden_iconManagerAllowsEditing_removeStyle___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69D4030]);
  v1 = composedShortcutsForApplicationWithBundleIdentifier_iconDisplayName_staticItems_dynamicItems_applicationItemID_numberOfDisplayItemsInSwitcher_supportsMultipleWindows_isSystemApplication_isInternalApplication_isApplicationInBeta_isApplicationHidden_iconManagerAllowsEditing_removeStyle__homeScreenDefaults;
  composedShortcutsForApplicationWithBundleIdentifier_iconDisplayName_staticItems_dynamicItems_applicationItemID_numberOfDisplayItemsInSwitcher_supportsMultipleWindows_isSystemApplication_isInternalApplication_isApplicationInBeta_isApplicationHidden_iconManagerAllowsEditing_removeStyle__homeScreenDefaults = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)composedShortcutsForBookmarkIcon:(id)icon withDisplayName:(id)name iconManagerAllowsEditing:(BOOL)editing removeStyle:(int64_t)style
{
  editingCopy = editing;
  v53[1] = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (editingCopy)
  {
    v10 = SBHBundle();
    v11 = [v10 localizedStringForKey:@"REARRANGE_ICONS_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v12 = _SBCreateRearrangeAppsApplicationShortcutItemWithLocalizedTitle(v11);
    [v9 addObject:v12];
  }

  if ([iconCopy displaysShareBookmarkShortcutItem])
  {
    isAppClipIcon = [iconCopy isAppClipIcon];
    v14 = SBHBundle();
    v15 = v14;
    if (isAppClipIcon)
    {
      v16 = @"SHARE_APPCLIP_APPLICATION_SHORTCUT_ITEM_TITLE";
      v17 = @"SpringBoardHome-AppClips";
    }

    else
    {
      v16 = @"SHARE_BOOKMARK_APPLICATION_SHORTCUT_ITEM_TITLE";
      v17 = @"SpringBoardHome";
    }

    v18 = [v14 localizedStringForKey:v16 value:&stru_1F3D472A8 table:v17];

    v19 = _SBCreateShareApplicationShortcutItemWithLocalizedTitle(v18, 0);
    [v9 addObject:v19];
  }

  if ([iconCopy displaysAppStoreURLShortcutItem])
  {
    appClip = [iconCopy appClip];
    fullAppStoreURL = [appClip fullAppStoreURL];

    if (fullAppStoreURL)
    {
      v22 = SBHBundle();
      v23 = [v22 localizedStringForKey:@"APPSTORE_URL_APPCLIP" value:&stru_1F3D472A8 table:@"SpringBoardHome-AppClips"];

      v24 = MEMORY[0x1E69D41B8];
      v25 = v23;
      v26 = fullAppStoreURL;
      v27 = objc_alloc_init(v24);
      v28 = [objc_alloc(MEMORY[0x1E69D41D0]) initWithSystemImageName:@"appstore"];
      [v27 setIcon:v28];

      [v27 setType:@"com.apple.springboardhome.application-shortcut-item.appStoreLink"];
      [v27 setLocalizedTitle:v25];

      v52 = kSBHIconAppStoreURLUserInfoKey;
      absoluteString = [v26 absoluteString];

      v53[0] = absoluteString;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
      [v27 setUserInfo:v30];

      [v9 addObject:v27];
    }
  }

  if (style == 1)
  {
    webClip = [iconCopy webClip];
    isAppClip = [webClip isAppClip];

    v44 = SBHBundle();
    v45 = v44;
    if (isAppClip)
    {
      v46 = @"HIDE_APPCLIP_SHORTCUT_ITEM_TITLE";
      v47 = @"SpringBoardHome-AppClips";
    }

    else
    {
      v46 = @"HIDE_BOOKMARK_SHORTCUT_ITEM_TITLE";
      v47 = @"SpringBoardHome";
    }

    v33 = [v44 localizedStringForKey:v46 value:&stru_1F3D472A8 table:v47];

    v48 = _SBCreateHideAppSuggestionApplicationShortcutItemWithLocalizedTitle(v33);
    goto LABEL_24;
  }

  if (style == 2)
  {
    webClip2 = [iconCopy webClip];
    isAppClip2 = [webClip2 isAppClip];

    v38 = SBHBundle();
    v39 = v38;
    if (isAppClip2)
    {
      v40 = @"HIDE_APPCLIP_SHORTCUT_ITEM_TITLE";
      v41 = @"SpringBoardHome-AppClips";
    }

    else
    {
      v40 = @"REMOVE_BOOKMARK_SHORTCUT_ITEM_TITLE";
      v41 = @"SpringBoardHome";
    }

    v33 = [v38 localizedStringForKey:v40 value:&stru_1F3D472A8 table:v41];

    v48 = _SBCreateRemoveAppApplicationShortcutItemWithLocalizedTitle(v33);
LABEL_24:
    v49 = v48;
    [v9 addObject:v48];
    goto LABEL_27;
  }

  if (style != 3)
  {
    goto LABEL_28;
  }

  isAppClipIcon2 = [iconCopy isAppClipIcon];
  v32 = SBHBundle();
  v33 = v32;
  if (isAppClipIcon2)
  {
    v34 = @"DELETE_APPCLIP_SHORTCUT_ITEM_TITLE";
    v35 = @"SpringBoardHome-AppClips";
  }

  else
  {
    v34 = @"DELETE_BOOKMARK_SHORTCUT_ITEM_TITLE";
    v35 = @"SpringBoardHome";
  }

  v49 = [v32 localizedStringForKey:v34 value:&stru_1F3D472A8 table:v35];
  v50 = _SBCreateDeleteAppApplicationShortcutItemWithLocalizedTitle(v49);
  [v9 addObject:v50];

LABEL_27:
LABEL_28:

  return v9;
}

+ (id)composedShortcutsForDownloadingApplicationWithBundleIdentifier:(id)identifier iconDisplayName:(id)name applicationItemID:(unint64_t)d canModifyDownloadState:(BOOL)state prioritizationIsAvailable:(BOOL)available downloadingInformationAgent:(id)agent iconManagerAllowsEditing:(BOOL)editing removeStyle:(int64_t)self0 canShare:(BOOL)self1
{
  availableCopy = available;
  stateCopy = state;
  styleCopy5 = style;
  editingCopy4 = editing;
  identifierCopy = identifier;
  nameCopy = name;
  agentCopy = agent;
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (stateCopy && ((objc_opt_respondsToSelector() & 1) == 0 || ([agentCopy isCloudDemoted] & 1) == 0))
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && [agentCopy isPrioritizable] && availableCopy)
    {
      v21 = objc_alloc_init(MEMORY[0x1E69D41B8]);
      v22 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithType:33];
      [v21 setIcon:v22];

      v23 = SBHBundle();
      v24 = [v23 localizedStringForKey:@"PRIORITIZE_DOWNLOAD_APPLICATION_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      [v21 setLocalizedTitle:v24];

      styleCopy5 = style;
      [v21 setType:@"com.apple.springboardhome.application-shortcut-item.prioritize-download"];
      [v20 addObject:v21];
    }

    if (objc_opt_respondsToSelector())
    {
      v25 = [agentCopy isPausable] ^ 1;
    }

    else
    {
      v25 = 1;
    }

    if (objc_opt_respondsToSelector())
    {
      isPaused = [agentCopy isPaused];
    }

    else
    {
      isPaused = 0;
    }

    if (((v25 | isPaused) & 1) == 0)
    {
      v27 = objc_alloc_init(MEMORY[0x1E69D41B8]);
      v28 = objc_alloc(MEMORY[0x1E69D41B0]);
      [MEMORY[0x1E69DCAB8] imageNamed:@"PauseDownloadApplicationShortcutItemIcon"];
      v29 = nameCopy;
      v31 = v30 = identifierCopy;
      v32 = UIImagePNGRepresentation(v31);
      v33 = [v28 initWithImageData:v32 dataType:0 isTemplate:1];
      [v27 setIcon:v33];

      identifierCopy = v30;
      nameCopy = v29;
      v34 = SBHBundle();
      v35 = [v34 localizedStringForKey:@"PAUSE_DOWNLOAD_APPLICATION_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      [v27 setLocalizedTitle:v35];

      styleCopy5 = style;
      editingCopy4 = editing;
      [v27 setType:@"com.apple.springboardhome.application-shortcut-item.pause-download"];
      [v20 addObject:v27];
    }

    if (!(v25 & 1 | ((isPaused & 1) == 0)))
    {
      v36 = objc_alloc_init(MEMORY[0x1E69D41B8]);
      v37 = objc_alloc(MEMORY[0x1E69D41B0]);
      v38 = [MEMORY[0x1E69DCAB8] imageNamed:@"ResumeDownloadApplicationShortcutItemIcon"];
      v39 = UIImagePNGRepresentation(v38);
      v40 = [v37 initWithImageData:v39 dataType:0 isTemplate:1];
      [v36 setIcon:v40];

      styleCopy5 = style;
      v41 = SBHBundle();
      v42 = [v41 localizedStringForKey:@"RESUME_DOWNLOAD_APPLICATION_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      [v36 setLocalizedTitle:v42];

      editingCopy4 = editing;
      [v36 setType:@"com.apple.springboardhome.application-shortcut-item.resume-download"];
      [v20 addObject:v36];
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [agentCopy isCancelable])
    {
      v43 = objc_alloc_init(MEMORY[0x1E69D41B8]);
      v44 = objc_alloc(MEMORY[0x1E69D41B0]);
      v45 = [MEMORY[0x1E69DCAB8] imageNamed:@"CancelDownloadApplicationShortcutItemIcon"];
      v46 = UIImagePNGRepresentation(v45);
      v47 = [v44 initWithImageData:v46 dataType:0 isTemplate:1];
      [v43 setIcon:v47];

      styleCopy5 = style;
      v48 = SBHBundle();
      v49 = [v48 localizedStringForKey:@"CANCEL_DOWNLOAD_APPLICATION_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      [v43 setLocalizedTitle:v49];

      editingCopy4 = editing;
      [v43 setType:@"com.apple.springboardhome.application-shortcut-item.cancel-download"];
      [v20 addObject:v43];
    }
  }

  if (editingCopy4)
  {
    v50 = SBHBundle();
    v51 = [v50 localizedStringForKey:@"REARRANGE_ICONS_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v52 = _SBCreateRearrangeAppsApplicationShortcutItemWithLocalizedTitle(v51);
    [v20 addObject:v52];
  }

  if (d && share)
  {
    v53 = MEMORY[0x1E696AEC0];
    v54 = SBHBundle();
    v55 = [v54 localizedStringForKey:@"SHARE_APPLICATION_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    nameCopy = [v53 localizedStringWithFormat:v55, nameCopy];

    v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:d];
    v58 = _SBCreateShareApplicationShortcutItemWithLocalizedTitle(nameCopy, v57);
    [v20 addObject:v58];
  }

  if ([objc_opt_class() supportsProtectedAppsShortcuts])
  {
    v59 = _SBCreateAppProtectionApplicationShortcutItemForBundleIdentifier(identifierCopy);
    if (v59)
    {
      [v20 addObject:v59];
    }
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [agentCopy isCloudDemoted])
  {
    if (styleCopy5 == 2)
    {
      v60 = SBHBundle();
      v61 = [v60 localizedStringForKey:@"REMOVE_APP_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      v62 = _SBCreateRemoveAppApplicationShortcutItemWithLocalizedTitle(v61);
    }

    else
    {
      if (styleCopy5 != 3)
      {
        goto LABEL_37;
      }

      v60 = SBHBundle();
      v61 = [v60 localizedStringForKey:@"DELETE_APP_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      v62 = _SBCreateDeleteAppApplicationShortcutItemWithLocalizedTitle(v61);
    }

    v63 = v62;
    [v20 addObject:v62];
  }

LABEL_37:

  return v20;
}

+ (id)composedShortcutsForFolderIcon:(id)icon iconImageCache:(id)cache iconManagerAllowsEditing:(BOOL)editing removeStyle:(int64_t)style badgeViewGenerator:(id)generator
{
  editingCopy = editing;
  v63 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  cacheCopy = cache;
  generatorCopy = generator;
  v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [cacheCopy iconImageInfo];
  v12 = v11;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v45 = iconCopy;
  leafIconsWithBadgesSortedByImportance = [iconCopy leafIconsWithBadgesSortedByImportance];
  objectEnumerator = [leafIconsWithBadgesSortedByImportance objectEnumerator];

  obj = objectEnumerator;
  v49 = [objectEnumerator countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v49)
  {
    v47 = *v59;
    v48 = cacheCopy;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v59 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v58 + 1) + 8 * v15);
      if (cacheCopy)
      {
        [cacheCopy imageForIcon:*(*(&v58 + 1) + 8 * v15)];
      }

      else
      {
        [*(*(&v58 + 1) + 8 * v15) iconImageWithInfo:0 traitCollection:1 options:{v12 * 29.0 / v12, v12 * 29.0 / v12, v12, 0.0}];
      }
      v17 = ;
      v18 = generatorCopy[2](generatorCopy, v16);
      badgeBackgroundColor = [v18 badgeBackgroundColor];
      v20 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v12 * 29.0, v12 * 29.0}];
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __144__SBHIconApplicationShortcutListComposer_composedShortcutsForFolderIcon_iconImageCache_iconManagerAllowsEditing_removeStyle_badgeViewGenerator___block_invoke;
      v52[3] = &unk_1E808A348;
      v55 = v12 * 29.0;
      v56 = v12 * 6.0;
      v53 = v17;
      v54 = badgeBackgroundColor;
      v57 = v12 * 10.0;
      v21 = badgeBackgroundColor;
      v22 = v17;
      v23 = [v20 imageWithActions:v52];
      v24 = objc_alloc(MEMORY[0x1E69D41B0]);
      v25 = UIImagePNGRepresentation(v23);
      v26 = [v24 initWithImageData:v25 dataType:0 isTemplate:0];

      v27 = objc_alloc_init(MEMORY[0x1E69D41B8]);
      [v27 setBadgeView:v18];
      applicationBundleID = [v16 applicationBundleID];
      [v27 setBundleIdentifierToLaunch:applicationBundleID];

      [v27 setIcon:v26];
      displayName = [v16 displayName];
      [v27 setLocalizedTitle:displayName];

      [v27 setType:@"com.apple.springboardhome.application-shortcut-item.unread-notifications"];
      [v51 addObject:v27];
      v30 = [v51 count];

      cacheCopy = v48;
      if (v30 == 4)
      {
        break;
      }

      if (v49 == ++v15)
      {
        v49 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
        if (v49)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (editingCopy)
  {
    v31 = objc_alloc_init(MEMORY[0x1E69D41B8]);
    v32 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"pencil"];
    [v31 setIcon:v32];

    v33 = SBHBundle();
    v34 = [v33 localizedStringForKey:@"RENAME_FOLDER_APPLICATION_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    [v31 setLocalizedTitle:v34];

    [v31 setType:@"com.apple.springboardhome.application-shortcut-item.rename-folder"];
    [v51 addObject:v31];

    v35 = SBHBundle();
    v36 = [v35 localizedStringForKey:@"REARRANGE_ICONS_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v37 = _SBCreateRearrangeAppsApplicationShortcutItemWithLocalizedTitle(v36);
    [v51 addObject:v37];

    if (style == 2)
    {
      v38 = objc_alloc_init(MEMORY[0x1E69D41B8]);
      v39 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"minus.circle"];
      [v38 setIcon:v39];

      v40 = SBHBundle();
      v41 = [v40 localizedStringForKey:@"REMOVE_FOLDER_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      [v38 setLocalizedTitle:v41];

      [v38 setType:@"com.apple.springboardhome.application-shortcut-item.hide-folder"];
      [v51 addObject:v38];
    }
  }

  return v51;
}

void __144__SBHIconApplicationShortcutListComposer_composedShortcutsForFolderIcon_iconImageCache_iconManagerAllowsEditing_removeStyle_badgeViewGenerator___block_invoke(uint64_t a1)
{
  v8.origin.x = *MEMORY[0x1E695EFF8];
  v8.origin.y = *(MEMORY[0x1E695EFF8] + 8);
  v2 = *(a1 + 48);
  v8.size.width = v2;
  v8.size.height = v2;
  v9 = CGRectInset(v8, *(a1 + 56) * 0.5, *(a1 + 56) * 0.5);
  v10 = CGRectIntegral(v9);
  [*(a1 + 32) drawInRect:{v10.origin.x, v10.origin.y, v10.size.width, v10.size.height}];
  [*(a1 + 40) set];
  v3 = *(a1 + 64);
  v4 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v5 = v2 - v3;
  if (v4 == 1)
  {
    v5 = 0.0;
  }

  v6 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{v5, 0.0, v3, v3}];
  [v6 fill];
}

+ (id)composedShortcutsForWidgetIcon:(id)icon additionalApplicationShortcutItems:(id)items widgetIconSupportsConfiguration:(BOOL)configuration iconManagerAllowsEditing:(BOOL)editing widgetSettings:(id)settings
{
  editingCopy = editing;
  configurationCopy = configuration;
  iconCopy = icon;
  itemsCopy = items;
  settingsCopy = settings;
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!editingCopy)
  {
    goto LABEL_28;
  }

  v16 = objc_alloc_init(MEMORY[0x1E69D41B8]);
  [v16 setType:@"com.apple.springboardhome.application-shortcut-item.change-widget-size"];
  [v15 addObject:v16];

  if ([iconCopy isWidgetStackIcon])
  {
    selfCopy = self;
    activeDataSource = [iconCopy activeDataSource];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([activeDataSource suggestionSource] == 1)
      {
LABEL_5:
        v18 = MEMORY[0x1E696AEC0];
        v51 = SBHBundle();
        v19 = [v51 localizedStringForKey:@"HIDE_STACK_SUGGESTION_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
        displayName = [iconCopy displayName];
        v21 = [v18 stringWithFormat:v19, displayName];
        v22 = objc_alloc_init(MEMORY[0x1E69D41B8]);
        v23 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"hand.thumbsdown"];
        [v22 setIcon:v23];

        [v22 setLocalizedTitle:v21];
        [v22 setType:@"com.apple.springboardhome.application-shortcut-item.hide-stack-suggestion"];
        [v15 addObject:v22];

LABEL_6:
        iconDataSourceCount = [iconCopy iconDataSourceCount];
        if (iconDataSourceCount >= [settingsCopy maximumWidgetsInAStack])
        {
          goto LABEL_17;
        }

        v25 = MEMORY[0x1E696AEC0];
        v52 = SBHBundle();
        v26 = [v52 localizedStringForKey:@"ADD_TO_STACK_WITH_NAME_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
        displayName2 = [iconCopy displayName];
        v28 = [v25 stringWithFormat:v26, displayName2];
        v29 = objc_alloc_init(MEMORY[0x1E69D41B8]);
        v30 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"rectangle.stack.badge.plus"];
        [v29 setIcon:v30];

        [v29 setLocalizedTitle:v28];
        [v29 setType:@"com.apple.springboardhome.application-shortcut-item.add-to-stack"];
        goto LABEL_16;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        suggestionSource = [activeDataSource suggestionSource];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (suggestionSource == 1)
        {
          if (isKindOfClass)
          {
            goto LABEL_6;
          }

          goto LABEL_5;
        }
      }
    }

    if (!configurationCopy)
    {
      goto LABEL_17;
    }

    v35 = MEMORY[0x1E696AEC0];
    v52 = SBHBundle();
    v26 = [v52 localizedStringForKey:@"CONFIGURE_WIDGET_WITH_NAME_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    displayName2 = [iconCopy displayName];
    v28 = [v35 stringWithFormat:v26, displayName2];
    v29 = _SBCreateConfigureWidgetApplicationShortcutItemWithLocalizedTitle(v28);
LABEL_16:
    [v15 addObject:v29];

LABEL_17:
    v36 = SBHBundle();
    v37 = [v36 localizedStringForKey:@"EDIT_STACK_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v38 = _SBCreateConfigureStackApplicationShortcutItemWithLocalizedTitle(v37);
    [v15 addObject:v38];

    if (!os_variant_has_internal_content())
    {
      goto LABEL_21;
    }

    homeScreenDefaults = [selfCopy homeScreenDefaults];
    shouldHideReportWidgetStackRotationQuickAction = [homeScreenDefaults shouldHideReportWidgetStackRotationQuickAction];

    if (shouldHideReportWidgetStackRotationQuickAction)
    {
      goto LABEL_21;
    }

    v31 = objc_alloc_init(MEMORY[0x1E69D41B8]);
    v41 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"ant.fill"];
    [v31 setIcon:v41];

    [v31 setLocalizedTitle:@"Report Rotation Issue"];
    [v31 setLocalizedSubtitle:@"[Internal]"];
    [v31 setType:@"com.apple.springboardhome.application-shortcut-item.debug-feedback-stack"];
    [v15 addObject:v31];
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  if (configurationCopy)
  {
    activeDataSource = SBHBundle();
    v31 = [activeDataSource localizedStringForKey:@"CONFIGURE_WIDGET_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v32 = _SBCreateConfigureWidgetApplicationShortcutItemWithLocalizedTitle(v31);
    [v15 addObject:v32];

    goto LABEL_20;
  }

LABEL_22:
  if (itemsCopy)
  {
    [v15 addObjectsFromArray:itemsCopy];
  }

  v42 = SBHBundle();
  v43 = [v42 localizedStringForKey:@"REARRANGE_ICONS_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v44 = _SBCreateRearrangeAppsApplicationShortcutItemWithLocalizedTitle(v43);
  [v15 addObject:v44];

  LODWORD(v42) = [iconCopy isWidgetStackIcon];
  v45 = SBHBundle();
  v46 = v45;
  if (v42)
  {
    v47 = @"REMOVE_STACK_SHORTCUT_ITEM_TITLE";
  }

  else
  {
    v47 = @"REMOVE_WIDGET_SHORTCUT_ITEM_TITLE";
  }

  v48 = [v45 localizedStringForKey:v47 value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v49 = _SBCreateRemoveWidgetApplicationShortcutItemWithLocalizedTitle(v48);
  [v15 addObject:v49];

LABEL_28:

  return v15;
}

+ (unint64_t)sbh_shortcutSectionForItem:(id)item
{
  itemCopy = item;
  if (sbh_shortcutSectionForItem__systemActionTypesOnceToken != -1)
  {
    +[SBHIconApplicationShortcutListComposer sbh_shortcutSectionForItem:];
  }

  if (sbh_shortcutSectionForItem__widgetActionTypesOnceToken != -1)
  {
    +[SBHIconApplicationShortcutListComposer sbh_shortcutSectionForItem:];
  }

  if (sbh_shortcutSectionForItem__widgetResizeActionTypesOnceToken != -1)
  {
    +[SBHIconApplicationShortcutListComposer sbh_shortcutSectionForItem:];
  }

  if (sbh_shortcutSectionForItem__appExposeActionTypesOnceToken != -1)
  {
    +[SBHIconApplicationShortcutListComposer sbh_shortcutSectionForItem:];
  }

  type = [itemCopy type];
  if ([sbh_shortcutSectionForItem__systemActionTypes containsObject:type])
  {
    v5 = 2;
  }

  else if ([sbh_shortcutSectionForItem__widgetActionTypes containsObject:type])
  {
    v5 = 1;
  }

  else if ([sbh_shortcutSectionForItem__widgetResizeActionTypes containsObject:type])
  {
    v5 = 3;
  }

  else if ([sbh_shortcutSectionForItem__appExposeActionTypes containsObject:type])
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __69__SBHIconApplicationShortcutListComposer_sbh_shortcutSectionForItem___block_invoke()
{
  v4[11] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"com.apple.springboardhome.application-shortcut-item.share";
  v4[1] = @"com.apple.springboardhome.application-shortcut-item.rearrange-icons";
  v4[2] = @"com.apple.springboardhome.application-shortcut-item.rename-folder";
  v4[3] = @"com.apple.springboardhome.application-shortcut-item.hide-folder";
  v4[4] = @"com.apple.springboardhome.application-shortcut-item.delete-app";
  v4[5] = @"com.apple.springboardhome.application-shortcut-item.remove-app";
  v4[6] = @"com.apple.springboardhome.application-shortcut-item.remove-widget";
  v4[7] = @"com.apple.springboardhome.application-shortcut-item.hide-app-suggestion";
  v4[8] = @"com.apple.springboardhome.application-shortcut-item.add-to-home-screen";
  v4[9] = @"com.apple.springboardhome.application-shortcut-item.appStoreLink";
  v4[10] = @"com.apple.springboardhome.application-shortcut-item.app-protection";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:11];
  v2 = [v0 setWithArray:v1];
  v3 = sbh_shortcutSectionForItem__systemActionTypes;
  sbh_shortcutSectionForItem__systemActionTypes = v2;
}

void __69__SBHIconApplicationShortcutListComposer_sbh_shortcutSectionForItem___block_invoke_2()
{
  v4[5] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"com.apple.springboardhome.application-shortcut-item.configure-widget";
  v4[1] = @"com.apple.springboardhome.application-shortcut-item.hide-stack-suggestion";
  v4[2] = @"com.apple.springboardhome.application-shortcut-item.hide-siri-suggestions-item";
  v4[3] = @"com.apple.springboardhome.application-shortcut-item.configure-stack";
  v4[4] = @"com.apple.springboardhome.application-shortcut-item.add-to-stack";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:5];
  v2 = [v0 setWithArray:v1];
  v3 = sbh_shortcutSectionForItem__widgetActionTypes;
  sbh_shortcutSectionForItem__widgetActionTypes = v2;
}

void __69__SBHIconApplicationShortcutListComposer_sbh_shortcutSectionForItem___block_invoke_3()
{
  v4[7] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"com.apple.springboardhome.application-shortcut-item.change-widget-size";
  v4[1] = @"com.apple.springboardhome.application-shortcut-item.change-widget-size-small";
  v4[2] = @"com.apple.springboardhome.application-shortcut-item.change-widget-size-medium";
  v4[3] = @"com.apple.springboardhome.application-shortcut-item.change-widget-size-large";
  v4[4] = @"com.apple.springboardhome.application-shortcut-item.change-widget-size-extralarge";
  v4[5] = @"com.apple.springboardhome.application-shortcut-item.change-widget-size-newsLargeTall";
  v4[6] = @"com.apple.springboardhome.application-shortcut-item.change-widget-to-app-icon";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:7];
  v2 = [v0 setWithArray:v1];
  v3 = sbh_shortcutSectionForItem__widgetResizeActionTypes;
  sbh_shortcutSectionForItem__widgetResizeActionTypes = v2;
}

void __69__SBHIconApplicationShortcutListComposer_sbh_shortcutSectionForItem___block_invoke_4()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"com.apple.springboardhome.application-shortcut-item.show-all-windows";
  v4[1] = @"com.apple.springboardhome.application-shortcut-item.new-window";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = sbh_shortcutSectionForItem__appExposeActionTypes;
  sbh_shortcutSectionForItem__appExposeActionTypes = v2;
}

+ (BOOL)sbh_isShortcutItemSpringBoardOnly:(id)only
{
  v3 = sbh_isShortcutItemSpringBoardOnly__onceToken;
  onlyCopy = only;
  if (v3 != -1)
  {
    +[SBHIconApplicationShortcutListComposer sbh_isShortcutItemSpringBoardOnly:];
  }

  type = [onlyCopy type];

  v6 = [sbh_isShortcutItemSpringBoardOnly__springBoardOnlyShortcutTypes containsObject:type];
  return v6;
}

void __76__SBHIconApplicationShortcutListComposer_sbh_isShortcutItemSpringBoardOnly___block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.rearrange-icons"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.hide-app-suggestion"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.delete-app"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.remove-app"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.remove-widget"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.configure-widget"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.configure-stack"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.hide-stack-suggestion"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.hide-siri-suggestions-item"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.add-to-stack"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.change-widget-size"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.change-widget-size-small"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.change-widget-size-medium"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.change-widget-size-large"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.change-widget-size-newsLargeTall"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.change-widget-size-extralarge"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.change-widget-to-app-icon"];
  v0 = [v2 copy];
  v1 = sbh_isShortcutItemSpringBoardOnly__springBoardOnlyShortcutTypes;
  sbh_isShortcutItemSpringBoardOnly__springBoardOnlyShortcutTypes = v0;
}

+ (BOOL)sbh_isDestructiveShortcutItem:(id)item
{
  v3 = sbh_isDestructiveShortcutItem__onceToken;
  itemCopy = item;
  if (v3 != -1)
  {
    +[SBHIconApplicationShortcutListComposer sbh_isDestructiveShortcutItem:];
  }

  type = [itemCopy type];

  v6 = [sbh_isDestructiveShortcutItem__isDestructive containsObject:type];
  return v6;
}

void __72__SBHIconApplicationShortcutListComposer_sbh_isDestructiveShortcutItem___block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.delete-app"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.remove-app"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.remove-widget"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.hide-folder"];
  v0 = [v2 copy];
  v1 = sbh_isDestructiveShortcutItem__isDestructive;
  sbh_isDestructiveShortcutItem__isDestructive = v0;
}

+ (BOOL)sbh_isShortcutItemDeleteOrRemove:(id)remove
{
  v3 = sbh_isShortcutItemDeleteOrRemove__onceToken;
  removeCopy = remove;
  if (v3 != -1)
  {
    +[SBHIconApplicationShortcutListComposer sbh_isShortcutItemDeleteOrRemove:];
  }

  type = [removeCopy type];

  v6 = [sbh_isShortcutItemDeleteOrRemove__springBoardOnlyShortcutTypes containsObject:type];
  return v6;
}

void __75__SBHIconApplicationShortcutListComposer_sbh_isShortcutItemDeleteOrRemove___block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.delete-app"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.remove-app"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.remove-widget"];
  v0 = [v2 copy];
  v1 = sbh_isShortcutItemDeleteOrRemove__springBoardOnlyShortcutTypes;
  sbh_isShortcutItemDeleteOrRemove__springBoardOnlyShortcutTypes = v0;
}

@end