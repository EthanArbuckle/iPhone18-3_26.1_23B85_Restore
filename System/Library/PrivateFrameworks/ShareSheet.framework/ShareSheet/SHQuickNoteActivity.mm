@interface SHQuickNoteActivity
+ (unint64_t)_xpcAttributes;
- (BOOL)_dismissActivityFromViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (BOOL)_presentActivityOnViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (BOOL)canPerformWithActivityItems:(id)a3;
- (SHQuickNoteActivity)init;
- (id)activityTitle;
- (void)_configureQuickNotePresentationDelegateWithPresenterViewController:(id)a3;
- (void)prepareWithActivityItems:(id)a3;
- (void)systemPaperDidFinishWithError:(id)a3;
@end

@implementation SHQuickNoteActivity

void __27__SHQuickNoteActivity_init__block_invoke(uint64_t a1)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v2 = getMCProfileConnectionClass_softClass;
  v21 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __getMCProfileConnectionClass_block_invoke;
    v16 = &unk_1E71F91F0;
    v17 = &v18;
    __getMCProfileConnectionClass_block_invoke(&v13);
    v2 = v19[3];
  }

  v3 = v2;
  _Block_object_dispose(&v18, 8);
  v4 = [v2 sharedConnection];
  atomic_store([v4 mayOpenFromManagedToUnmanaged], (*(a1 + 32) + 145));
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v5 = get_EXQueryClass_softClass;
  v21 = get_EXQueryClass_softClass;
  if (!get_EXQueryClass_softClass)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __get_EXQueryClass_block_invoke;
    v16 = &unk_1E71F91F0;
    v17 = &v18;
    __get_EXQueryClass_block_invoke(&v13);
    v5 = v19[3];
  }

  v6 = v5;
  _Block_object_dispose(&v18, 8);
  v7 = [v5 alloc];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bundleIdentifier == %@", @"com.apple.mobilenotes.EditorExtension"];
  v9 = [v7 initWithExtensionPointIdentifier:@"com.apple.private.system-paper" predicate:v8];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v10 = get_EXQueryControllerClass_softClass;
  v21 = get_EXQueryControllerClass_softClass;
  if (!get_EXQueryControllerClass_softClass)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __get_EXQueryControllerClass_block_invoke;
    v16 = &unk_1E71F91F0;
    v17 = &v18;
    __get_EXQueryControllerClass_block_invoke(&v13);
    v10 = v19[3];
  }

  v11 = v10;
  _Block_object_dispose(&v18, 8);
  v12 = [v10 executeQuery:v9];
  atomic_store([v12 count] != 0, (*(a1 + 32) + 144));
}

- (SHQuickNoteActivity)init
{
  v18.receiver = self;
  v18.super_class = SHQuickNoteActivity;
  v2 = [(UIActivity *)&v18 init];
  v3 = v2;
  if (v2)
  {
    atomic_store(1u, &v2->_isQuickNoteExtensionInstalled);
    atomic_store(0, &v2->_canOpenFromManagedToUnmanaged);
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);

    v6 = dispatch_queue_create("com.apple.sharing.QuickNote", v5);
    queryQueue = v3->_queryQueue;
    v3->_queryQueue = v6;

    v8 = v3->_queryQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__SHQuickNoteActivity_init__block_invoke;
    block[3] = &unk_1E71F9510;
    v9 = v3;
    v17 = v9;
    dispatch_async(v8, block);
    v10 = [MEMORY[0x1E69636A8] _currentUserActivityUUID];
    v9->__hasUserActivityCurrent = v10 != 0;
    if (v10)
    {
      objc_initWeak(&location, v9);
      v11 = MEMORY[0x1E69636A8];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __27__SHQuickNoteActivity_init__block_invoke_2;
      v13[3] = &unk_1E71FA9B0;
      objc_copyWeak(&v14, &location);
      [v11 _fetchUserActivityWithUUID:v10 completionHandler:v13];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }

  return v3;
}

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

void __27__SHQuickNoteActivity_init__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__SHQuickNoteActivity_init__block_invoke_3;
  block[3] = &unk_1E71FA988;
  v10 = v5;
  v7 = v5;
  objc_copyWeak(&v12, (a1 + 32));
  v11 = v6;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __27__SHQuickNoteActivity_init__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v4 = getSYIsLinkableUserActivitySymbolLoc_ptr;
    v13 = getSYIsLinkableUserActivitySymbolLoc_ptr;
    if (!getSYIsLinkableUserActivitySymbolLoc_ptr)
    {
      v5 = SynapseLibrary();
      v11[3] = dlsym(v5, "SYIsLinkableUserActivity");
      getSYIsLinkableUserActivitySymbolLoc_ptr = v11[3];
      v4 = v11[3];
    }

    _Block_object_dispose(&v10, 8);
    if (!v4)
    {
      v9 = [SHSheetRemoteSceneViewController reloadMetadata:];
      _Block_object_dispose(&v10, 8);
      _Unwind_Resume(v9);
    }

    v6 = v4(v3);

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained set_hasUserActivityCurrent:v6];
  }

  else
  {
    v8 = (a1 + 40);
    if (!*(a1 + 40))
    {
      return;
    }

    WeakRetained = SHQuickNoteLog();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      __27__SHQuickNoteActivity_init__block_invoke_3_cold_2(v8, WeakRetained);
    }
  }
}

- (id)activityTitle
{
  if ([(SHQuickNoteActivity *)self _hasSupportedShareableItems]|| [(SHQuickNoteActivity *)self _hasUserActivityCurrent])
  {
    v3 = _ShareSheetBundle();
    v4 = v3;
    v5 = @"AddToNewQuickNote[Activity]";
    v6 = @"Add to New Quick Note";
  }

  else
  {
    v3 = _ShareSheetBundle();
    v4 = v3;
    v5 = @"NewQuickNote[Activity]";
    v6 = @"New Quick Note";
  }

  v7 = [v3 localizedStringForKey:v5 value:v6 table:@"Localizable"];

  return v7;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 count])
  {
    goto LABEL_22;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([MEMORY[0x1E69CDE78] isSWYActivityItemProvider:v10])
        {

          goto LABEL_22;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (![(SHQuickNoteActivity *)self canOpenFromManagedToUnmanaged])
  {
    v24 = SHQuickNoteLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *v26 = 0;
      _os_log_impl(&dword_18B359000, v24, OS_LOG_TYPE_INFO, "Can't perform Quick Note activity from managed app.", v26, 2u);
    }

    goto LABEL_22;
  }

  v11 = [MEMORY[0x1E69DC938] currentDevice];
  v12 = [v11 userInterfaceIdiom];

  v13 = _os_feature_enabled_impl();
  v14 = [MEMORY[0x1E696AAE8] mainBundle];
  v15 = [v14 bundleIdentifier];
  v16 = [v15 lowercaseString];
  v17 = [v16 isEqualToString:@"com.apple.mobilesafari"];

  v18 = [MEMORY[0x1E696AAE8] mainBundle];
  v19 = [v18 bundleIdentifier];
  v20 = [v19 lowercaseString];
  v21 = [v20 isEqualToString:@"com.apple.mobilenotes"];

  v22 = 0;
  if (!v12 && v13)
  {
    if (!(v17 & 1 | ![(SHQuickNoteActivity *)self isQuickNoteExtensionInstalled]| v21 & 1))
    {
      v23 = _UIActivityItemCountOfType(v5, 2);
      if (v23 <= 5)
      {
        [(SHQuickNoteActivity *)self set_hasSupportedShareableItems:(v23 > 0) | _UIActivityHasAtMoreThan(v5, 4, 0)];
        v22 = -[SHQuickNoteActivity _hasUserActivityCurrent](self, "_hasUserActivityCurrent") || [v5 count] != 0;
        goto LABEL_23;
      }
    }

LABEL_22:
    v22 = 0;
  }

LABEL_23:

  return v22;
}

- (void)prepareWithActivityItems:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _UIActivityItemsGetWebURLs(v4, 0);
  [(SHQuickNoteActivity *)self set_urls:v5];

  v6 = _UIActivityItemsGetImages(v4, 0, 0);
  [(SHQuickNoteActivity *)self set_images:v6];

  v19 = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    v11 = *MEMORY[0x1E69637F8];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (isKindOfClass)
        {
          if (isKindOfClass)
          {
            v15 = [MEMORY[0x1E695DFF8] URLWithString:v13];
          }

          else
          {
            v15 = v13;
          }

          v16 = v15;
          v17 = _UIActivityUTIForURL(v15);
          v18 = v17;
          if (v17 && UTTypeConformsTo(v17, v11))
          {
            [v19 addObject:v13];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  [(SHQuickNoteActivity *)self set_imageFileURLs:v19];
}

- (BOOL)_presentActivityOnViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = [(SHQuickNoteActivity *)self isQuickNoteExtensionInstalled];
  v45 = 0;
  v46 = &v45;
  v47 = 0x2050000000;
  v10 = getSYNotesActivationRequestClass_softClass;
  v48 = getSYNotesActivationRequestClass_softClass;
  if (!getSYNotesActivationRequestClass_softClass)
  {
    v40 = MEMORY[0x1E69E9820];
    v41 = 3221225472;
    v42 = __getSYNotesActivationRequestClass_block_invoke;
    v43 = &unk_1E71F91F0;
    v44 = &v45;
    __getSYNotesActivationRequestClass_block_invoke(&v40);
    v10 = v46[3];
  }

  v11 = v10;
  _Block_object_dispose(&v45, 8);
  v12 = objc_alloc_init(v10);
  [v12 setShouldAutoInsertLinkToCurrentActivity:{-[SHQuickNoteActivity _hasUserActivityCurrent](self, "_hasUserActivityCurrent")}];
  if (v9)
  {
    v13 = [(SHQuickNoteActivity *)self _urls];
    v14 = [v13 count] == 0;

    if (!v14)
    {
      v15 = [(SHQuickNoteActivity *)self _urls];
      [v12 addURLs:v15];
    }

    v16 = [(SHQuickNoteActivity *)self _images];
    v17 = [v16 count] == 0;

    if (!v17)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v18 = [(SHQuickNoteActivity *)self _images];
      v19 = [v18 countByEnumeratingWithState:&v36 objects:v49 count:16];
      if (v19)
      {
        v20 = *v37;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v37 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v36 + 1) + 8 * i);
            if ([(UIImage *)v22 imageOrientation])
            {
              UIImageJPEGRepresentation(v22, 0.9);
            }

            else
            {
              UIImagePNGRepresentation(v22);
            }
            v23 = ;
            if (v23)
            {
              [v12 addImageData:v23];
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v36 objects:v49 count:16];
        }

        while (v19);
      }
    }

    v24 = [(SHQuickNoteActivity *)self _imageFileURLs];
    v25 = [v24 count] == 0;

    if (!v25)
    {
      v26 = [(SHQuickNoteActivity *)self _imageFileURLs];
      [v12 addImageFileURLs:v26];
    }
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x2050000000;
  v27 = getSYNotesActivationCommandClass_softClass;
  v48 = getSYNotesActivationCommandClass_softClass;
  if (!getSYNotesActivationCommandClass_softClass)
  {
    v40 = MEMORY[0x1E69E9820];
    v41 = 3221225472;
    v42 = __getSYNotesActivationCommandClass_block_invoke;
    v43 = &unk_1E71F91F0;
    v44 = &v45;
    __getSYNotesActivationCommandClass_block_invoke(&v40);
    v27 = v46[3];
  }

  v28 = v27;
  _Block_object_dispose(&v45, 8);
  v29 = objc_alloc_init(v27);
  [v29 setActivationRequest:v12];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __76__SHQuickNoteActivity__presentActivityOnViewController_animated_completion___block_invoke;
  v33[3] = &unk_1E71FA9D8;
  v33[4] = self;
  v34 = v7;
  v35 = v8;
  v30 = v8;
  v31 = v7;
  [v29 activateWithCompletion:v33];

  return 1;
}

void __76__SHQuickNoteActivity__presentActivityOnViewController_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SHQuickNoteLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __76__SHQuickNoteActivity__presentActivityOnViewController_animated_completion___block_invoke_cold_1(v3, v4);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__SHQuickNoteActivity__presentActivityOnViewController_animated_completion___block_invoke_48;
  block[3] = &unk_1E71F9958;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v5;
  v8 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __76__SHQuickNoteActivity__presentActivityOnViewController_animated_completion___block_invoke_48(uint64_t a1)
{
  [*(a1 + 32) _configureQuickNotePresentationDelegateWithPresenterViewController:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)_configureQuickNotePresentationDelegateWithPresenterViewController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    while (1)
    {
      NSClassFromString(&cfstr_Icsystempapere.isa);
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v6 = [v5 presentedViewController];

      v5 = v6;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    [(SHQuickNoteActivity *)self setSystemPaperViewController:v5];
  }

LABEL_7:
  v7 = [(SHQuickNoteActivity *)self systemPaperViewController];
  if (v7 && (v8 = v7, -[SHQuickNoteActivity systemPaperViewController](self, "systemPaperViewController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isBeingDismissed], v9, v8, (v10 & 1) == 0))
  {
    v11 = [(SHQuickNoteActivity *)self systemPaperViewController];
    [v11 setPresentationDelegate:self];
  }

  else
  {

    [(UIActivity *)self activityDidFinish:0];
  }
}

- (BOOL)_dismissActivityFromViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __78__SHQuickNoteActivity__dismissActivityFromViewController_animated_completion___block_invoke;
  v18 = &unk_1E71FA0F0;
  v19 = self;
  v20 = v8;
  v9 = v8;
  v10 = MEMORY[0x18CFF58E0](&v15);
  if (v7)
  {
    v11 = 1;
    [v7 dismissViewControllerAnimated:1 completion:{v10, v15, v16, v17, v18, v19, v20}];
  }

  else
  {
    v12 = [(SHQuickNoteActivity *)self systemPaperViewController:v15];

    if (v12)
    {
      v13 = [(SHQuickNoteActivity *)self systemPaperViewController];
      v11 = 1;
      [v13 dismissViewControllerAnimated:1 completion:v10];
    }

    else
    {
      v10[2](v10);
      v11 = 0;
    }
  }

  return v11;
}

uint64_t __78__SHQuickNoteActivity__dismissActivityFromViewController_animated_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSystemPaperViewController:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)systemPaperDidFinishWithError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  v6 = v5;
  if (v5 == *MEMORY[0x1E696A250])
  {
    v7 = [v4 code];

    if (v7 == 3072)
    {
      v8 = SHQuickNoteLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [SHQuickNoteActivity systemPaperDidFinishWithError:v8];
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  if (v4)
  {
    v8 = SHQuickNoteLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SHQuickNoteActivity *)v4 systemPaperDidFinishWithError:v8];
    }

LABEL_9:
  }

  [(UIActivity *)self activityDidFinish:v4 == 0];
}

void __27__SHQuickNoteActivity_init__block_invoke_3_cold_2(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_18B359000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch local user activity: %@", &v3, 0xCu);
}

void __76__SHQuickNoteActivity__presentActivityOnViewController_animated_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18B359000, a2, OS_LOG_TYPE_ERROR, "Quick Note invocation failed with error: %@", &v2, 0xCu);
}

- (void)systemPaperDidFinishWithError:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_18B359000, a2, OS_LOG_TYPE_ERROR, "Quick Note presentation finished with error: %@", &v4, 0xCu);
}

@end