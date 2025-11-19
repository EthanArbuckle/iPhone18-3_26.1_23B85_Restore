@interface _UITextServiceSession
+ (BOOL)_canShowTextServices;
+ (BOOL)shouldPresentServiceInSameWindowAsView:(id)a3;
+ (BOOL)textServiceIsDisplaying;
+ (id)showServiceForText:(id)a3 type:(int64_t)a4 fromRect:(CGRect)a5 inView:(id)a6;
+ (id)showServiceForType:(int64_t)a3 withContext:(id)a4;
+ (id)textServiceSessionForType:(int64_t)a3;
+ (int64_t)availableTextServices;
- (_UITextServiceSession)initWithType:(int64_t)a3;
- (void)_endSession;
- (void)dismissTextServiceAnimated:(BOOL)a3;
- (void)sessionDidDismiss;
@end

@implementation _UITextServiceSession

+ (BOOL)_canShowTextServices
{
  if ([UIApp _isSpringBoard])
  {
    return 0;
  }

  v3 = MKBGetDeviceLockState();
  return !v3 || v3 == 3;
}

+ (int64_t)availableTextServices
{
  if (![a1 _canShowTextServices])
  {
    return 0;
  }

  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  if ([v2 isDefinitionLookupAllowed])
  {
    v3 = 18;
  }

  else
  {
    v3 = 0;
  }

  if ([v2 isSelectedTextSharingAllowed])
  {
    v3 |= 8uLL;
  }

  if ([v2 isSpellCheckAllowed])
  {
    v3 |= 4uLL;
  }

  if ([v2 isTranslationLookupAllowed])
  {
    v3 |= 0x20uLL;
  }

  if ((v3 & 0x20) != 0 && ![getLTUITranslationViewControllerClass() isAvailable])
  {
    v3 &= ~0x20uLL;
  }

  return v3;
}

+ (BOOL)shouldPresentServiceInSameWindowAsView:(id)a3
{
  v3 = [a3 _window];
  if ([v3 _isTextEffectsWindow])
  {
    v4 = 0;
  }

  else
  {
    v4 = dyld_program_sdk_at_least();
  }

  return v4;
}

+ (id)showServiceForType:(int64_t)a3 withContext:(id)a4
{
  v109[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (![a1 _canShowTextServiceForType:a3])
  {
    v9 = 0;
    goto LABEL_78;
  }

  v7 = [v6 textWithContext];
  v75 = [v6 rvItemWithContext];
  if (a3 == 16 && !v7 && !v75)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v73 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v73, OS_LOG_TYPE_FAULT, "Cannot show text service when there isn't text; _UITextServiceSessionContext.textWithContext is nil.", buf, 2u);
      }
    }

    else
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A23E0) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Cannot show text service when there isn't text; _UITextServiceSessionContext.textWithContext is nil.", buf, 2u);
      }
    }

    v9 = 0;
    goto LABEL_77;
  }

  if (qword_1ED4A23E8 != -1)
  {
    dispatch_once(&qword_1ED4A23E8, &__block_literal_global_632);
  }

  v10 = [v6 selectedRange];
  v12 = v11;
  v74 = [v7 substringWithRange:{v10, v11}];
  v13 = [v6 view];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v16 = [v6 textInput];
    v15 = [v16 textInputView];
  }

  [v6 presentationRect];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [[a1 alloc] initWithType:a3];
  objc_storeStrong((v25 + 24), v15);
  v9 = 0;
  if (a3 <= 7)
  {
    if (a3 == 2)
    {
      v26 = [[UIReferenceLibraryViewController alloc] initWithTerm:v74];
      v97[0] = MEMORY[0x1E69E9820];
      v97[1] = 3221225472;
      v97[2] = __56___UITextServiceSession_showServiceForType_withContext___block_invoke_2;
      v97[3] = &unk_1E70F3590;
      v98 = v25;
      [(UIReferenceLibraryViewController *)v26 setDismissCompletionHandler:v97];
    }

    else
    {
      if (a3 != 4)
      {
        goto LABEL_76;
      }

      v34 = _shortcutEditorController(v74);
      if (v34)
      {
        v26 = [[UINavigationController alloc] initWithRootViewController:v34];
        v35 = +[UIDevice currentDevice];
        v36 = [v35 userInterfaceIdiom];

        if ((v36 & 0xFFFFFFFFFFFFFFFBLL) == 1)
        {
          v37 = 7;
        }

        else
        {
          v37 = -2;
        }

        [(UIViewController *)v26 setModalPresentationStyle:v37];
        v95[0] = MEMORY[0x1E69E9820];
        v95[1] = 3221225472;
        v95[2] = __56___UITextServiceSession_showServiceForType_withContext___block_invoke_3;
        v95[3] = &unk_1E70F3590;
        v96 = v25;
        _swapInCompletionForShortcutEditor(v26, v95);
      }

      else
      {
        v26 = 0;
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 8:
        v38 = objc_alloc(MEMORY[0x1E69CD9F8]);
        v109[0] = v74;
        v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:1];
        v26 = [v38 initWithActivityItems:v39 applicationActivities:0];

        v108 = *MEMORY[0x1E69CDB18];
        v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
        [(UIReferenceLibraryViewController *)v26 setExcludedActivityTypes:v40];

        objc_initWeak(buf, v26);
        v92[0] = MEMORY[0x1E69E9820];
        v92[1] = 3221225472;
        v92[2] = __56___UITextServiceSession_showServiceForType_withContext___block_invoke_4;
        v92[3] = &unk_1E71277B8;
        objc_copyWeak(&v94, buf);
        v93 = v25;
        [(UIReferenceLibraryViewController *)v26 setCompletionWithItemsHandler:v92];

        objc_destroyWeak(&v94);
        objc_destroyWeak(buf);
        break;
      case 16:
        if (!v75 || (v41 = [objc_alloc(DataDetectorsUIGetClass(@"DDParsecCollectionViewController")) initWithRVItem:v75]) == 0)
        {
          v41 = [objc_alloc(DataDetectorsUIGetClass(@"DDParsecCollectionViewController")) initWithString:v7 range:{v10, v12}];
        }

        v90[0] = MEMORY[0x1E69E9820];
        v90[1] = 3221225472;
        v90[2] = __56___UITextServiceSession_showServiceForType_withContext___block_invoke_5;
        v90[3] = &unk_1E70F3590;
        v91 = v25;
        v26 = v41;
        [(UIReferenceLibraryViewController *)v26 setDismissCompletionHandler:v90];

        break;
      case 32:
        v26 = objc_alloc_init(getLTUITranslationViewControllerClass());
        [(UIViewController *)v26 setModalPresentationStyle:7];
        v27 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v74];
        [(UIReferenceLibraryViewController *)v26 setText:v27];

        [(UIReferenceLibraryViewController *)v26 setIsSourceEditable:0];
        v28 = [v6 textInput];
        if (v28 && (v29 = [v15 isEditable], v28, v29))
        {
          v30 = [v6 textInput];
          v31 = [v30 selectedTextRange];

          v32 = [v6 textInput];
          objc_initWeak(buf, v32);

          [(UIReferenceLibraryViewController *)v26 setIsSourceEditable:1];
          v87[0] = MEMORY[0x1E69E9820];
          v87[1] = 3221225472;
          v87[2] = __56___UITextServiceSession_showServiceForType_withContext___block_invoke_6;
          v87[3] = &unk_1E71277E0;
          objc_copyWeak(&v89, buf);
          v33 = v31;
          v88 = v33;
          [(UIReferenceLibraryViewController *)v26 setReplacementHandler:v87];

          objc_destroyWeak(&v89);
          objc_destroyWeak(buf);
        }

        else if ([v15 conformsToProtocolCached:&unk_1F016C810])
        {
          v42 = objc_initWeak(buf, v15);
          v43 = [v15 isReplaceAllowed];

          if (v43)
          {
            [(UIReferenceLibraryViewController *)v26 setIsSourceEditable:1];
            v84[0] = MEMORY[0x1E69E9820];
            v84[1] = 3221225472;
            v84[2] = __56___UITextServiceSession_showServiceForType_withContext___block_invoke_7;
            v84[3] = &unk_1E71277E0;
            objc_copyWeak(&v86, buf);
            v85 = v74;
            [(UIReferenceLibraryViewController *)v26 setReplacementHandler:v84];

            objc_destroyWeak(&v86);
          }

          objc_destroyWeak(buf);
        }

        else if ([v15 conformsToProtocol:&unk_1F016C7B0])
        {
          v44 = objc_initWeak(buf, v15);
          v45 = [v15 isReplaceAllowed];

          if (v45)
          {
            [(UIReferenceLibraryViewController *)v26 setIsSourceEditable:1];
            v81[0] = MEMORY[0x1E69E9820];
            v81[1] = 3221225472;
            v81[2] = __56___UITextServiceSession_showServiceForType_withContext___block_invoke_8;
            v81[3] = &unk_1E71277E0;
            objc_copyWeak(&v83, buf);
            v82 = v74;
            [(UIReferenceLibraryViewController *)v26 setReplacementHandler:v81];

            objc_destroyWeak(&v83);
          }

          objc_destroyWeak(buf);
        }

        else if ([v15 conformsToProtocol:&unk_1F016CC30])
        {
          v46 = objc_initWeak(buf, v15);
          v47 = [v15 isReplaceAllowed];

          if (v47)
          {
            [(UIReferenceLibraryViewController *)v26 setIsSourceEditable:1];
            v78[0] = MEMORY[0x1E69E9820];
            v78[1] = 3221225472;
            v78[2] = __56___UITextServiceSession_showServiceForType_withContext___block_invoke_9;
            v78[3] = &unk_1E71277E0;
            objc_copyWeak(&v80, buf);
            v79 = v74;
            [(UIReferenceLibraryViewController *)v26 setReplacementHandler:v78];

            objc_destroyWeak(&v80);
          }

          objc_destroyWeak(buf);
        }

        v48 = [v6 textInput];
        v49 = v48;
        if (v48)
        {
          v50 = v48;
        }

        else
        {
          v50 = v15;
        }

        v51 = v50;

        if ([v51 conformsToProtocol:&unk_1F016DE90])
        {
          v104 = 0;
          v105 = &v104;
          v106 = 0x2050000000;
          v52 = qword_1ED4A23F0;
          v107 = qword_1ED4A23F0;
          if (!qword_1ED4A23F0)
          {
            *buf = MEMORY[0x1E69E9820];
            v100 = 3221225472;
            v101 = __getLTUISourceMetaClass_block_invoke;
            v102 = &unk_1E70F2F20;
            v103 = &v104;
            __getLTUISourceMetaClass_block_invoke(buf);
            v52 = v105[3];
          }

          v53 = v52;
          _Block_object_dispose(&v104, 8);
          v54 = objc_alloc_init(v52);
          [v54 setOrigin:{objc_msgSend(v51, "isImageBacked")}];
          [(UIReferenceLibraryViewController *)v26 setSourceMeta:v54];
        }

        v76[0] = MEMORY[0x1E69E9820];
        v76[1] = 3221225472;
        v76[2] = __56___UITextServiceSession_showServiceForType_withContext___block_invoke_10;
        v76[3] = &unk_1E70F3590;
        v77 = v25;
        [(UIReferenceLibraryViewController *)v26 setDismissCompletionHandler:v76];

        break;
      default:
        goto LABEL_76;
    }
  }

  if (v26)
  {
    v55 = [v15 _window];
    if ([v55 _isTextEffectsWindow])
    {
      v56 = (a3 < 0x21) & (0x100010010uLL >> a3);
      if (a3 == 8)
      {
        v57 = 1;
      }

      else
      {
        v57 = (a3 < 0x21) & (0x100010010uLL >> a3);
      }

      if (!v57)
      {
LABEL_67:
        v64 = [(UIViewController *)v26 presentationController];
        [v64 setDelegate:v25];

        v65 = [(UIViewController *)v26 popoverPresentationController];
        [v65 setSourceView:v15];

        v66 = [(UIViewController *)v26 popoverPresentationController];
        [v66 setSourceRect:{v18, v20, v22, v24}];

        objc_storeStrong((v25 + 16), v26);
        if ([a1 shouldPresentServiceInSameWindowAsView:v15])
        {
          v67 = [v15 _viewControllerForAncestor];
          v68 = [(UIViewController *)v67 presentedViewController];

          if (v68)
          {
            do
            {
              v69 = [(UIViewController *)v67 presentedViewController];

              v70 = [(UIViewController *)v69 presentedViewController];

              v67 = v69;
            }

            while (v70);
          }

          else
          {
            v69 = v67;
          }

          [(UIViewController *)v69 presentViewController:v26 animated:1 completion:0];
        }

        else
        {
          v69 = objc_alloc_init(_UIFallbackPresentationViewController);
          [(UIApplicationRotationFollowingController *)v69 setSizesWindowToScene:1];
          v71 = [(UIViewController *)v26 popoverPresentationController];
          [v71 _setAllowsSourceViewInDifferentWindowThanInitialPresentationViewController:1];

          [(_UIFallbackPresentationViewController *)v69 _presentViewController:v26 sendingView:v15 animated:1];
        }

        [_MergedGlobals_1336 addObject:v25];
        v9 = v25;

        goto LABEL_76;
      }

      if (v56)
      {
        v58 = [v15 keyboardSceneDelegate];
        v59 = *(v25 + 40);
        *(v25 + 40) = v58;

        v60 = [(UIViewController *)v26 view];
        v61 = *(v25 + 32);
        *(v25 + 32) = v60;

        [*(v25 + 40) _beginPinningInputViewsOnBehalfOfResponder:*(v25 + 32)];
      }

      v55 = [v15 keyboardSceneDelegate];
      v62 = [v55 passthroughViews];
      v63 = [(UIViewController *)v26 popoverPresentationController];
      [v63 setPassthroughViews:v62];
    }

    goto LABEL_67;
  }

  v9 = 0;
LABEL_76:

LABEL_77:
LABEL_78:

  return v9;
}

+ (id)showServiceForText:(id)a3 type:(int64_t)a4 fromRect:(CGRect)a5 inView:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a6;
  v13 = a3;
  v14 = +[_UITextServiceSession showServiceForText:selectedTextRange:type:fromRect:inView:](_UITextServiceSession, "showServiceForText:selectedTextRange:type:fromRect:inView:", v13, 0, [v13 length], a4, v12, x, y, width, height);

  return v14;
}

- (_UITextServiceSession)initWithType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = _UITextServiceSession;
  result = [(_UITextServiceSession *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

+ (id)textServiceSessionForType:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = _MergedGlobals_1336;
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
        if ([v9 type] == a3)
        {
          v10 = v9;
          goto LABEL_11;
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

  v10 = 0;
LABEL_11:

  return v10;
}

+ (BOOL)textServiceIsDisplaying
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = _MergedGlobals_1336;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isDisplaying])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)dismissTextServiceAnimated:(BOOL)a3
{
  type = self->_type;
  if (type <= 7)
  {
    if (type == 2)
    {
      modalViewController = self->_modalViewController;

      [(UIViewController *)modalViewController _dismissModalReferenceView:0];
    }

    else if (type == 4)
    {
      v5 = self->_modalViewController;

      _dismissShortcutEditorController(v5);
    }
  }

  else if (type == 8 || type == 16)
  {
    v8 = self->_modalViewController;
    v6 = [(UIViewController *)v8 dismissCompletionHandler];
    [(UIViewController *)v8 dismissViewControllerAnimated:1 completion:v6];

    [(UIViewController *)v8 setDismissCompletionHandler:0];
  }

  else if (type == 32)
  {
    v4 = self->_modalViewController;

    [(UIViewController *)v4 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_endSession
{
  if (!self->_dismissed)
  {
    v11 = v2;
    if (self->_pinnedResponder)
    {
      [(UIKeyboardSceneDelegate *)self->_keyboardSceneDelegate _stopPinningInputViewsOnBehalfOfResponder:?];
      keyboardSceneDelegate = self->_keyboardSceneDelegate;
      self->_keyboardSceneDelegate = 0;

      pinnedResponder = self->_pinnedResponder;
      self->_pinnedResponder = 0;
    }

    [(_UITextServiceSession *)self sessionDidDismiss:v3];
    modalViewController = self->_modalViewController;
    self->_modalViewController = 0;

    v10 = _MergedGlobals_1336;

    [v10 removeObject:self];
  }
}

- (void)sessionDidDismiss
{
  if (!self->_dismissed)
  {
    dismissedHandler = self->_dismissedHandler;
    if (dismissedHandler)
    {
      dismissedHandler[2](dismissedHandler, self);
      [(_UITextServiceSession *)self setDismissedHandler:0];
    }

    self->_dismissed = 1;
  }
}

@end