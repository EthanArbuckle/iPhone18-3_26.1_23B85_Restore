@interface WFHomeScreenController
+ (WFHomeScreenController)sharedInstance;
+ (id)iconImageForIcon:(id)icon;
+ (void)migrateOpenAppWebClipsIfNeededWithDatabaseAccessor:(id)accessor;
+ (void)migratePreYukonWebClipsIfNeeded;
+ (void)migrateWebClipsIfNeededWithDatabaseAccessor:(id)accessor;
- (BOOL)addAppShortcutToHomeScreen:(id)screen withName:(id)name symbolName:(id)symbolName backgroundColor:(id)color error:(id *)error;
- (BOOL)addTopHitToHomeScreen:(id)screen withName:(id)name symbolName:(id)symbolName backgroundColor:(id)color error:(id *)error;
- (BOOL)addWorkflowToHomeScreen:(id)screen withName:(id)name icon:(id)icon error:(id *)error;
- (BOOL)addWorkflowToHomeScreen:(id)screen withName:(id)name symbolName:(id)symbolName backgroundColor:(id)color error:(id *)error;
- (BOOL)createHomeScreenShortcutForAppShortcut:(id)shortcut title:(id)title image:(id)image darkImage:(id)darkImage tintableImage:(id)tintableImage error:(id *)error;
- (BOOL)createHomeScreenShortcutForWorkflow:(id)workflow name:(id)name image:(id)image darkImage:(id)darkImage tintableImage:(id)tintableImage error:(id *)error;
- (WFHomeScreenController)init;
- (void)databaseDidChange:(id)change modified:(id)modified inserted:(id)inserted removed:(id)removed;
- (void)getHomeScreenShortcutIDsWithCompletionHandler:(id)handler;
- (void)startListeningForDatabaseChanges;
- (void)updateWebClipIfNeeded:(id)needed;
@end

@implementation WFHomeScreenController

void __40__WFHomeScreenController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(WFHomeScreenController);
  v1 = sharedInstance_controller;
  sharedInstance_controller = v0;
}

- (WFHomeScreenController)init
{
  v11.receiver = self;
  v11.super_class = WFHomeScreenController;
  v2 = [(WFHomeScreenController *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    homeScreenShortcutIDs = v2->_homeScreenShortcutIDs;
    v2->_homeScreenShortcutIDs = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);

    v7 = dispatch_queue_create("com.apple.shortcuts.WFHomeScreenController", v6);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = v2;
  }

  return v2;
}

- (void)startListeningForDatabaseChanges
{
  v14 = *MEMORY[0x1E69E9840];
  database = [(WFHomeScreenController *)self database];

  if (database)
  {
    v4 = getWFHomescreenLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v13 = "[WFHomeScreenController startListeningForDatabaseChanges]";
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_INFO, "%s Attempted to start database listening, but we are already listening", buf, 0xCu);
    }
  }

  else
  {
    v5 = +[WFDatabase defaultDatabase];
    if (v5)
    {
      v4 = v5;
      objc_storeStrong(&self->_database, v5);
      v6 = getWFHomescreenLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v13 = "[WFHomeScreenController startListeningForDatabaseChanges]";
        _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s Starting to observe database changes", buf, 0xCu);
      }

      queue = [(WFHomeScreenController *)self queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58__WFHomeScreenController_startListeningForDatabaseChanges__block_invoke;
      block[3] = &unk_1E837FA70;
      block[4] = self;
      dispatch_async(queue, block);

      database2 = [(WFHomeScreenController *)self database];
      [database2 addObjectObserver:self];
    }

    else
    {
      v9 = getWFHomescreenLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v13 = "[WFHomeScreenController startListeningForDatabaseChanges]";
        _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, "%s Trying to start observing changes with on a process with no default database", buf, 0xCu);
      }

      v4 = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __58__WFHomeScreenController_startListeningForDatabaseChanges__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(objc_class *)getUIWebClipClass() webClips];
  v2 = [obj countByEnumeratingWithState:&v16 objects:v32 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * i);
        v7 = getWFHomescreenLogObject();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v6 title];
          v9 = [v6 shortcutIdentifier];
          v10 = [v6 pageURL];
          v11 = [v6 applicationBundleIdentifier];
          *buf = 136316418;
          v21 = "[WFHomeScreenController startListeningForDatabaseChanges]_block_invoke";
          v22 = 2112;
          v23 = v6;
          v24 = 2112;
          v25 = v8;
          v26 = 2114;
          v27 = v9;
          v28 = 2112;
          v29 = v10;
          v30 = 2112;
          v31 = v11;
          _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s Considering web clip: %@, title: %@, shortcutIdentifier: %{public}@, pageURL: %@, applicationBundleID: %@", buf, 0x3Eu);
        }

        v12 = [v6 shortcutIdentifier];
        if (v12)
        {
          [*(a1 + 32) updateWebClipIfNeeded:v6];
          v13 = [*(a1 + 32) homeScreenShortcutIDs];
          [v13 addObject:v12];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v16 objects:v32 count:16];
    }

    while (v3);
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (WFHomeScreenController)sharedInstance
{
  if (sharedInstance_onceToken_59057 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_59057, &__block_literal_global_59058);
  }

  v3 = sharedInstance_controller;

  return v3;
}

- (void)databaseDidChange:(id)change modified:(id)modified inserted:(id)inserted removed:(id)removed
{
  v16 = *MEMORY[0x1E69E9840];
  modifiedCopy = modified;
  if ([modifiedCopy count])
  {
    queue = [(WFHomeScreenController *)self queue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__WFHomeScreenController_databaseDidChange_modified_inserted_removed___block_invoke;
    v11[3] = &unk_1E837F870;
    v12 = modifiedCopy;
    selfCopy = self;
    dispatch_async(queue, v11);

    v9 = v12;
  }

  else
  {
    v9 = getWFHomescreenLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[WFHomeScreenController databaseDidChange:modified:inserted:removed:]";
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEFAULT, "%s Database did change, but no shortcuts were modified", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __70__WFHomeScreenController_databaseDidChange_modified_inserted_removed___block_invoke(uint64_t a1)
{
  v1 = a1;
  v52 = *MEMORY[0x1E69E9840];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v38 objects:v51 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v39;
    v29 = *v39;
    v30 = v2;
    do
    {
      v6 = 0;
      v31 = v4;
      do
      {
        if (*v39 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v38 + 1) + 8 * v6);
        if (![v7 objectType])
        {
          v8 = [*(v1 + 40) homeScreenShortcutIDs];
          v9 = [v7 identifier];
          v10 = [v8 containsObject:v9];

          if (v10)
          {
            v32 = v6;
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v11 = [(objc_class *)getUIWebClipClass() webClips];
            v12 = [v11 countByEnumeratingWithState:&v34 objects:v50 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v35;
              do
              {
                v15 = 0;
                v33 = v13;
                do
                {
                  if (*v35 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v16 = *(*(&v34 + 1) + 8 * v15);
                  v17 = [v16 shortcutIdentifier];
                  v18 = [v7 identifier];
                  v19 = [v17 isEqualToString:v18];

                  if (v19)
                  {
                    v20 = getWFHomescreenLogObject();
                    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                    {
                      v21 = [v16 title];
                      v22 = [v16 identifier];
                      [v7 identifier];
                      v23 = v14;
                      v24 = v7;
                      v25 = v11;
                      v27 = v26 = v1;
                      *buf = 136315906;
                      v43 = "[WFHomeScreenController databaseDidChange:modified:inserted:removed:]_block_invoke";
                      v44 = 2112;
                      v45 = v21;
                      v46 = 2112;
                      v47 = v22;
                      v48 = 2112;
                      v49 = v27;
                      _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_DEFAULT, "%s Found webclip (title %@, id %@) that matches shortcut %@... Assessing migration", buf, 0x2Au);

                      v1 = v26;
                      v11 = v25;
                      v7 = v24;
                      v14 = v23;
                      v13 = v33;
                    }

                    [*(v1 + 40) updateWebClipIfNeeded:v16];
                  }

                  ++v15;
                }

                while (v13 != v15);
                v13 = [v11 countByEnumeratingWithState:&v34 objects:v50 count:16];
              }

              while (v13);
            }

            v5 = v29;
            v2 = v30;
            v4 = v31;
            v6 = v32;
          }
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v38 objects:v51 count:16];
    }

    while (v4);
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)updateWebClipIfNeeded:(id)needed
{
  v18 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  queue = [(WFHomeScreenController *)self queue];
  dispatch_assert_queue_V2(queue);

  shortcutIdentifier = [neededCopy shortcutIdentifier];
  database = [(WFHomeScreenController *)self database];
  v8 = WFUpdateWebClipForShortcutIfNeeded(neededCopy, shortcutIdentifier, database);

  if (v8)
  {
    v9 = getWFHomescreenLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      identifier = [neededCopy identifier];
      v14 = 136315394;
      v15 = "[WFHomeScreenController updateWebClipIfNeeded:]";
      v16 = 2112;
      v17 = identifier;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_INFO, "%s Updated web clip %@, pinging SpringBoard", &v14, 0x16u);
    }

    SBSWebClipServiceClass = getSBSWebClipServiceClass();
    identifier2 = [neededCopy identifier];
    [(objc_class *)SBSWebClipServiceClass updateWebClipPropertiesWithIdentifier:identifier2];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)getHomeScreenShortcutIDsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(WFHomeScreenController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__WFHomeScreenController_getHomeScreenShortcutIDsWithCompletionHandler___block_invoke;
  block[3] = &unk_1E837F4E8;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, block);
}

void __72__WFHomeScreenController_getHomeScreenShortcutIDsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(objc_class *)getUIWebClipClass() webClips];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) shortcutIdentifier];
        if (v8)
        {
          [v2 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)createHomeScreenShortcutForAppShortcut:(id)shortcut title:(id)title image:(id)image darkImage:(id)darkImage tintableImage:(id)tintableImage error:(id *)error
{
  v51 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  imageCopy = image;
  darkImageCopy = darkImage;
  tintableImageCopy = tintableImage;
  base64ArchivedData = [shortcut base64ArchivedData];
  if ([base64ArchivedData length])
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", *MEMORY[0x1E69E1210], base64ArchivedData];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v21 = [uUIDString stringByReplacingOccurrencesOfString:@"-" withString:&stru_1F4A1C408];

    v22 = objc_alloc_init(getUIWebClipClass());
    [v22 setTitle:titleCopy];
    [v22 setIdentifier:v21];
    [v22 setShortcutIdentifier:v18];
    v23 = [MEMORY[0x1E695DFF8] URLWithString:@"shortcuts://run-app-shortcut"];
    [v22 setPageURL:v23];

    [v22 setApplicationBundleIdentifier:*MEMORY[0x1E69E0F60]];
    [v22 setFullScreen:1];
    if (imageCopy)
    {
      [v22 setIconImage:imageCopy isPrecomposed:0];
    }

    if (darkImageCopy)
    {
      [v22 setDarkIconImage:darkImageCopy];
    }

    if (tintableImageCopy)
    {
      [v22 setTintableIconImage:tintableImageCopy];
    }

    v42 = darkImageCopy;
    v24 = imageCopy;
    if ([v22 createOnDisk])
    {
      v25 = softLinkSBSSpringBoardServerPort();
      v26 = [v21 cStringUsingEncoding:4];
      v27 = softLinkSBAddWebClipToHomeScreen(v25, v26);
      errorCopy = error;
      LOBYTE(error) = v27 == 0;
      if (!errorCopy || !v27)
      {
        goto LABEL_19;
      }

      errorCopy3 = errorCopy;
      v41 = titleCopy;
      v30 = MEMORY[0x1E696ABC0];
      v43 = *MEMORY[0x1E696A578];
      error = WFLocalizedString(@"Unable to add Home Screen icon.");
      errorCopy2 = error;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&errorCopy2 forKeys:&v43 count:1];
      v32 = v30;
      v33 = 2;
    }

    else
    {
      if (!error)
      {
LABEL_19:

        imageCopy = v24;
        darkImageCopy = v42;
        goto LABEL_20;
      }

      errorCopy3 = error;
      v41 = titleCopy;
      v38 = MEMORY[0x1E696ABC0];
      v45 = *MEMORY[0x1E696A578];
      error = WFLocalizedString(@"Unable to save Home Screen icon.");
      errorCopy4 = error;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&errorCopy4 forKeys:&v45 count:1];
      v32 = v38;
      v33 = 1;
    }

    *errorCopy3 = [v32 errorWithDomain:@"WFAddToHomeScreenErrorDomain" code:v33 userInfo:v31];

    LOBYTE(error) = 0;
    titleCopy = v41;
    goto LABEL_19;
  }

  v34 = getWFHomescreenLogObject();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v50 = "[WFHomeScreenController createHomeScreenShortcutForAppShortcut:title:image:darkImage:tintableImage:error:]";
    _os_log_impl(&dword_1CA256000, v34, OS_LOG_TYPE_ERROR, "%s Could not get base64 encoding for the auto shortcut", buf, 0xCu);
  }

  if (error)
  {
    v35 = MEMORY[0x1E696ABC0];
    v47 = *MEMORY[0x1E696A578];
    v18 = WFLocalizedString(@"Unable to add Home Screen icon.");
    v48 = v18;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v36 = [v35 errorWithDomain:@"WFAddToHomeScreenErrorDomain" code:2 userInfo:v21];
    errorCopy5 = error;
    LOBYTE(error) = 0;
    *errorCopy5 = v36;
LABEL_20:
  }

  v39 = *MEMORY[0x1E69E9840];
  return error;
}

- (BOOL)addAppShortcutToHomeScreen:(id)screen withName:(id)name symbolName:(id)symbolName backgroundColor:(id)color error:(id *)error
{
  colorCopy = color;
  symbolNameCopy = symbolName;
  nameCopy = name;
  screenCopy = screen;
  v16 = [objc_opt_class() iconImageWithSymbolName:symbolNameCopy backgroundColor:colorCopy roundCorners:0];

  LOBYTE(error) = [(WFHomeScreenController *)self addAppShortcutToHomeScreen:screenCopy withName:nameCopy image:v16 error:error];
  return error;
}

- (BOOL)addTopHitToHomeScreen:(id)screen withName:(id)name symbolName:(id)symbolName backgroundColor:(id)color error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  screenCopy = screen;
  nameCopy = name;
  symbolNameCopy = symbolName;
  colorCopy = color;
  if (error)
  {
    v15 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v16 = WFLocalizedString(@"An internal error occurred.");
    v24[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    *error = [v15 errorWithDomain:@"WFAddToHomeScreenErrorDomain" code:2 userInfo:v17];
  }

  v18 = getWFAppIntentsLogObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    v21 = 136315138;
    v22 = "[WFHomeScreenController addTopHitToHomeScreen:withName:symbolName:backgroundColor:error:]";
    _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_FAULT, "%s WFHomeScreenController does not yet support WFTopHitItemContextualAction", &v21, 0xCu);
  }

  v19 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)createHomeScreenShortcutForWorkflow:(id)workflow name:(id)name image:(id)image darkImage:(id)darkImage tintableImage:(id)tintableImage error:(id *)error
{
  v59[1] = *MEMORY[0x1E69E9840];
  workflowCopy = workflow;
  nameCopy = name;
  imageCopy = image;
  darkImageCopy = darkImage;
  tintableImageCopy = tintableImage;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v19 = [uUIDString stringByReplacingOccurrencesOfString:@"-" withString:&stru_1F4A1C408];

  v20 = +[WFDatabase defaultDatabase];
  v21 = [WFWorkflow workflowWithReference:workflowCopy database:v20 error:error];

  if (v21)
  {
    v22 = WFFastPathBundleIdentifierIfApplicable(v21);
    identifier = [workflowCopy identifier];
    v24 = objc_alloc_init(getUIWebClipClass());
    [v24 setTitle:nameCopy];
    [v24 setIdentifier:v19];
    v51 = identifier;
    [v24 setShortcutIdentifier:identifier];
    if (v22)
    {
      [v24 setPageURL:0];
    }

    else
    {
      [workflowCopy externalURLForRunningWithSource:*MEMORY[0x1E69E1398]];
      selfCopy = self;
      errorCopy = error;
      v27 = v19;
      v28 = tintableImageCopy;
      v30 = v29 = imageCopy;
      [v24 setPageURL:v30];

      imageCopy = v29;
      tintableImageCopy = v28;
      v19 = v27;
      error = errorCopy;
      self = selfCopy;
    }

    v31 = *MEMORY[0x1E69E0F60];
    if (v22)
    {
      v32 = v22;
    }

    else
    {
      v32 = *MEMORY[0x1E69E0F60];
    }

    [v24 setApplicationBundleIdentifier:v32];
    [v24 setFullScreen:1];
    [v24 setIconImage:imageCopy isPrecomposed:0];
    if (darkImageCopy)
    {
      [v24 setDarkIconImage:darkImageCopy];
    }

    if (tintableImageCopy)
    {
      [v24 setTintableIconImage:tintableImageCopy];
    }

    if ([v24 createOnDisk])
    {
      v49 = imageCopy;
      v33 = softLinkSBSSpringBoardServerPort();
      v34 = [v19 cStringUsingEncoding:4];
      if (softLinkSBAddWebClipToHomeScreen(v33, v34))
      {
        if (error)
        {
          v35 = MEMORY[0x1E696ABC0];
          v56 = *MEMORY[0x1E696A578];
          WFLocalizedString(@"Unable to add Home Screen icon.");
          v36 = v48 = tintableImageCopy;
          v57 = v36;
          v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          *error = [v35 errorWithDomain:@"WFAddToHomeScreenErrorDomain" code:2 userInfo:v37];

          tintableImageCopy = v48;
          LOBYTE(error) = 0;
        }
      }

      else
      {
        queue = [(WFHomeScreenController *)self queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __103__WFHomeScreenController_createHomeScreenShortcutForWorkflow_name_image_darkImage_tintableImage_error___block_invoke;
        block[3] = &unk_1E837F870;
        block[4] = self;
        v55 = v51;
        dispatch_async(queue, block);

        LOBYTE(error) = 1;
      }

      imageCopy = v49;
    }

    else if (error)
    {
      v50 = imageCopy;
      v38 = MEMORY[0x1E696ABC0];
      v58 = *MEMORY[0x1E696A578];
      v39 = WFLocalizedString(@"Unable to save Home Screen icon.");
      v59[0] = v39;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:&v58 count:1];
      v40 = workflowCopy;
      v41 = v19;
      v43 = v42 = tintableImageCopy;
      v44 = v38;
      imageCopy = v50;
      *error = [v44 errorWithDomain:@"WFAddToHomeScreenErrorDomain" code:1 userInfo:v43];

      tintableImageCopy = v42;
      v19 = v41;
      workflowCopy = v40;

      LOBYTE(error) = 0;
    }
  }

  else
  {
    LOBYTE(error) = 0;
  }

  v46 = *MEMORY[0x1E69E9840];
  return error;
}

void __103__WFHomeScreenController_createHomeScreenShortcutForWorkflow_name_image_darkImage_tintableImage_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homeScreenShortcutIDs];
  [v2 addObject:*(a1 + 40)];
}

- (BOOL)addWorkflowToHomeScreen:(id)screen withName:(id)name symbolName:(id)symbolName backgroundColor:(id)color error:(id *)error
{
  colorCopy = color;
  symbolNameCopy = symbolName;
  nameCopy = name;
  screenCopy = screen;
  v16 = [objc_opt_class() iconImageWithSymbolName:symbolNameCopy backgroundColor:colorCopy roundCorners:0];

  LOBYTE(error) = [(WFHomeScreenController *)self createHomeScreenShortcutForWorkflow:screenCopy name:nameCopy image:v16 darkImage:0 tintableImage:0 error:error];
  return error;
}

- (BOOL)addWorkflowToHomeScreen:(id)screen withName:(id)name icon:(id)icon error:(id *)error
{
  iconCopy = icon;
  nameCopy = name;
  screenCopy = screen;
  v13 = [objc_opt_class() iconImageForIcon:iconCopy];

  LOBYTE(error) = [(WFHomeScreenController *)self createHomeScreenShortcutForWorkflow:screenCopy name:nameCopy image:v13 darkImage:0 tintableImage:0 error:error];
  return error;
}

+ (id)iconImageForIcon:(id)icon
{
  v3 = getISImageDescriptorClass;
  iconCopy = icon;
  v5 = v3();
  v6 = getkISImageDescriptorHomeScreen();
  v7 = [(objc_class *)v5 imageDescriptorNamed:v6];

  [v7 size];
  v15 = v9;
  v16 = v8;
  [v7 scale];
  CGAffineTransformMakeScale(&v18, v10, v10);
  v17 = vmlaq_n_f64(vmulq_n_f64(*&v18.c, v15), *&v18.a, v16);
  v11 = [objc_alloc(MEMORY[0x1E69E0E08]) initWithHomeScreenIcon:iconCopy];

  [v11 setRounded:0];
  v12 = [v11 imageWithSize:*&v17];
  uIImage = [v12 UIImage];

  return uIImage;
}

+ (void)migrateOpenAppWebClipsIfNeededWithDatabaseAccessor:(id)accessor
{
  v56 = *MEMORY[0x1E69E9840];
  accessorCopy = accessor;
  systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  v5 = [systemShortcutsUserDefaults BOOLForKey:@"WFOpenAppWebClipsMigratedToFastPath"];

  if ((v5 & 1) == 0)
  {
    v6 = getWFHomescreenLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v50 = "+[WFHomeScreenController migrateOpenAppWebClipsIfNeededWithDatabaseAccessor:]";
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s Migrating Open App web clips to the fast path...", buf, 0xCu);
    }

    v40 = accessorCopy[2](accessorCopy);
    if (v40)
    {
      v39 = accessorCopy;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      obj = [(objc_class *)getUIWebClipClass() webClips];
      v7 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
      if (!v7)
      {
        goto LABEL_42;
      }

      v8 = v7;
      v9 = *v46;
      v10 = *MEMORY[0x1E69E0F60];
      v42 = *MEMORY[0x1E69E0F60];
      while (1)
      {
        v11 = 0;
        v43 = v8;
        do
        {
          if (*v46 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v45 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          v14 = getWFHomescreenLogObject();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            title = [v12 title];
            pageURL = [v12 pageURL];
            *buf = 136315650;
            v50 = "+[WFHomeScreenController migrateOpenAppWebClipsIfNeededWithDatabaseAccessor:]";
            v51 = 2112;
            v52 = title;
            v53 = 2112;
            v54 = pageURL;
            _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_INFO, "%s Considering web clip with title, URL: %@, %@", buf, 0x20u);
          }

          applicationBundleIdentifier = [v12 applicationBundleIdentifier];
          v18 = applicationBundleIdentifier;
          if (applicationBundleIdentifier == v10)
          {
          }

          else
          {
            if (applicationBundleIdentifier)
            {
              v19 = v10 == 0;
            }

            else
            {
              v19 = 1;
            }

            if (v19)
            {

LABEL_39:
              goto LABEL_40;
            }

            v20 = [applicationBundleIdentifier isEqualToString:v10];

            if (!v20)
            {
              goto LABEL_39;
            }
          }

          pageURL2 = [v12 pageURL];
          scheme = [pageURL2 scheme];
          v23 = scheme;
          if (scheme != @"shortcuts")
          {
            if (!scheme || (v24 = [(__CFString *)scheme isEqualToString:@"shortcuts"], v23, !v24))
            {

              goto LABEL_39;
            }
          }

          v25 = v9;
          pageURL3 = [v12 pageURL];
          host = [pageURL3 host];
          if (host == @"x-callback-url")
          {

            v10 = v42;
LABEL_30:
            v29 = getWFHomescreenLogObject();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              title2 = [v12 title];
              pageURL4 = [v12 pageURL];
              *buf = 136315650;
              v50 = "+[WFHomeScreenController migrateOpenAppWebClipsIfNeededWithDatabaseAccessor:]";
              v51 = 2112;
              v52 = title2;
              v53 = 2112;
              v54 = pageURL4;
              _os_log_impl(&dword_1CA256000, v29, OS_LOG_TYPE_INFO, "%s Web clip with title, URL is coming from shortcuts, checking if we need to migrate: %@, %@", buf, 0x20u);
            }

            pageURL5 = [v12 pageURL];
            dc_queryDictionary = [pageURL5 dc_queryDictionary];
            v18 = [dc_queryDictionary objectForKeyedSubscript:@"id"];

            if (v18)
            {
              WFUpdateWebClipForShortcutIfNeeded(v12, v18, v40);
            }

            else
            {
              v34 = getWFHomescreenLogObject();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                pageURL6 = [v12 pageURL];
                *buf = 136315394;
                v50 = "+[WFHomeScreenController migrateOpenAppWebClipsIfNeededWithDatabaseAccessor:]";
                v51 = 2112;
                v52 = pageURL6;
                _os_log_impl(&dword_1CA256000, v34, OS_LOG_TYPE_ERROR, "%s Can't migrate web clip with page URL %@ -- couldn't extract shortcut identifier", buf, 0x16u);
              }

              v18 = 0;
            }

            goto LABEL_38;
          }

          v28 = host;
          if (!host)
          {

            v9 = v25;
            v10 = v42;
LABEL_38:
            v8 = v43;
            goto LABEL_39;
          }

          v41 = [(__CFString *)host isEqualToString:@"x-callback-url"];

          v9 = v25;
          v10 = v42;
          v8 = v43;
          if (v41)
          {
            goto LABEL_30;
          }

LABEL_40:
          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v8 != v11);
        v8 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
        if (!v8)
        {
LABEL_42:

          v36 = getWFHomescreenLogObject();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v50 = "+[WFHomeScreenController migrateOpenAppWebClipsIfNeededWithDatabaseAccessor:]";
            _os_log_impl(&dword_1CA256000, v36, OS_LOG_TYPE_DEFAULT, "%s Open App web clip fast path migration complete.", buf, 0xCu);
          }

          systemShortcutsUserDefaults2 = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
          [systemShortcutsUserDefaults2 setBool:1 forKey:@"WFOpenAppWebClipsMigratedToFastPath"];
          accessorCopy = v39;
          goto LABEL_47;
        }
      }
    }

    systemShortcutsUserDefaults2 = getWFHomescreenLogObject();
    if (os_log_type_enabled(systemShortcutsUserDefaults2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v50 = "+[WFHomeScreenController migrateOpenAppWebClipsIfNeededWithDatabaseAccessor:]";
      _os_log_impl(&dword_1CA256000, systemShortcutsUserDefaults2, OS_LOG_TYPE_ERROR, "%s Couldn't access database for Open App migration... bailing out", buf, 0xCu);
    }

LABEL_47:
  }

  v38 = *MEMORY[0x1E69E9840];
}

+ (void)migratePreYukonWebClipsIfNeeded
{
  v57 = *MEMORY[0x1E69E9840];
  workflowUserDefaults = [MEMORY[0x1E695E000] workflowUserDefaults];
  v3 = [workflowUserDefaults BOOLForKey:@"WFWebClipsMigratedToDirectLaunch"];

  if ((v3 & 1) == 0)
  {
    v4 = getWFHomescreenLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v51 = "+[WFHomeScreenController migratePreYukonWebClipsIfNeeded]";
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s Migrating web clips to directly launch the Shortcuts app...", buf, 0xCu);
    }

    v5 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"<a id=jump href=(.*?)>" options:0 error:0];
    [(objc_class *)getUIWebClipClass() webClips];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v6 = v49 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v47;
      v44 = *v47;
      v45 = *MEMORY[0x1E69E0F60];
      v40 = v5;
      v42 = v6;
      while (2)
      {
        v10 = 0;
        v43 = v8;
        do
        {
          if (*v47 != v44)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v46 + 1) + 8 * v10);
          v12 = objc_autoreleasePoolPush();
          applicationBundleIdentifier = [v11 applicationBundleIdentifier];
          v14 = [applicationBundleIdentifier isEqualToString:v45];

          if (v14)
          {
            v36 = getWFHomescreenLogObject();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v51 = "+[WFHomeScreenController migratePreYukonWebClipsIfNeeded]";
              _os_log_impl(&dword_1CA256000, v36, OS_LOG_TYPE_DEFAULT, "%s Web clip migration is stopping because it found an already migrated web clip.", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v12);
            goto LABEL_40;
          }

          pageURL = [v11 pageURL];
          absoluteString = [pageURL absoluteString];

          if ([absoluteString hasPrefix:{@"data:text/html;base64, "}])
          {
            v17 = [absoluteString substringFromIndex:{objc_msgSend(@"data:text/htmlbase64, ", "length")}];;
            v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v17 options:1];
            if (v18)
            {
              v19 = v18;
              v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v18 encoding:4];
              if ([v20 containsString:@"/webclips/images/"])
              {
                v21 = [v5 firstMatchInString:v20 options:0 range:{0, objc_msgSend(v20, "length")}];
                v22 = v21;
                if (v21)
                {
                  v23 = [v21 rangeAtIndex:1];
                  v25 = [v20 substringWithRange:{v23, v24}];
                  if (([v25 hasPrefix:@"shortcuts"]& 1) != 0 || ([v25 hasPrefix:@"workflow"]& 1) != 0)
                  {
                    v41 = v22;
                    v26 = getWFHomescreenLogObject();
                    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                    {
                      identifier = [v11 identifier];
                      *buf = 136315394;
                      v51 = "+[WFHomeScreenController migratePreYukonWebClipsIfNeeded]";
                      v52 = 2114;
                      v53 = identifier;
                      _os_log_impl(&dword_1CA256000, v26, OS_LOG_TYPE_DEFAULT, "%s Updating page URL and bundle ID for web clip: %{public}@", buf, 0x16u);
                    }

                    v28 = [MEMORY[0x1E695DFF8] URLWithString:v25];
                    [v11 setPageURL:v28];

                    [v11 setApplicationBundleIdentifier:v45];
                    [v11 updateOnDisk];
                    v5 = v40;
                    v22 = v41;
                  }

                  else
                  {
                    v34 = getWFHomescreenLogObject();
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                    {
                      identifier2 = [v11 identifier];
                      *buf = 136315650;
                      v51 = "+[WFHomeScreenController migratePreYukonWebClipsIfNeeded]";
                      v52 = 2114;
                      v53 = identifier2;
                      v54 = 2112;
                      v55 = v25;
                      _os_log_impl(&dword_1CA256000, v34, OS_LOG_TYPE_DEFAULT, "%s Skipping web clip migration for web clip: %{public}@, with link: %@", buf, 0x20u);
                    }

                    v5 = v40;
                  }
                }

                else
                {
                  v25 = getWFHomescreenLogObject();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                  {
                    identifier3 = [v11 identifier];
                    *buf = 136315394;
                    v51 = "+[WFHomeScreenController migratePreYukonWebClipsIfNeeded]";
                    v52 = 2114;
                    v53 = identifier3;
                    _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_DEFAULT, "%s Skipping web clip migration due to no regex match for web clip: %{public}@", buf, 0x16u);
                  }
                }
              }

              else
              {
                v22 = getWFHomescreenLogObject();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  identifier4 = [v11 identifier];
                  *buf = 136315394;
                  v51 = "+[WFHomeScreenController migratePreYukonWebClipsIfNeeded]";
                  v52 = 2114;
                  v53 = identifier4;
                  _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_DEFAULT, "%s Skipping web clip migration because it was not created by shortcuts: %{public}@", buf, 0x16u);
                }
              }

              v6 = v42;
            }

            else
            {
              v30 = getWFHomescreenLogObject();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                identifier5 = [v11 identifier];
                *buf = 136315394;
                v51 = "+[WFHomeScreenController migratePreYukonWebClipsIfNeeded]";
                v52 = 2114;
                v53 = identifier5;
                _os_log_impl(&dword_1CA256000, v30, OS_LOG_TYPE_DEFAULT, "%s Skipping web clip migration because it contained invalid base64-encoded data in its URL: %{public}@", buf, 0x16u);
              }
            }

            v8 = v43;
          }

          else
          {
            v17 = getWFHomescreenLogObject();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              identifier6 = [v11 identifier];
              *buf = 136315394;
              v51 = "+[WFHomeScreenController migratePreYukonWebClipsIfNeeded]";
              v52 = 2114;
              v53 = identifier6;
              _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_DEFAULT, "%s Skipping web clip migration because it isn't a base64-encoded data URL: %{public}@", buf, 0x16u);
            }
          }

          objc_autoreleasePoolPop(v12);
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v46 objects:v56 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_40:

    v37 = getWFHomescreenLogObject();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v51 = "+[WFHomeScreenController migratePreYukonWebClipsIfNeeded]";
      _os_log_impl(&dword_1CA256000, v37, OS_LOG_TYPE_DEFAULT, "%s Web clip migration complete.", buf, 0xCu);
    }

    workflowUserDefaults2 = [MEMORY[0x1E695E000] workflowUserDefaults];
    [workflowUserDefaults2 setBool:1 forKey:@"WFWebClipsMigratedToDirectLaunch"];
  }

  v39 = *MEMORY[0x1E69E9840];
}

+ (void)migrateWebClipsIfNeededWithDatabaseAccessor:(id)accessor
{
  accessorCopy = accessor;
  [self migratePreYukonWebClipsIfNeeded];
  [self migrateOpenAppWebClipsIfNeededWithDatabaseAccessor:accessorCopy];
}

@end