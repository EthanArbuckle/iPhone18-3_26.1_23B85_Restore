@interface _UITextServiceSession
+ (BOOL)_canShowTextServices;
+ (BOOL)shouldPresentServiceInSameWindowAsView:(id)view;
+ (BOOL)textServiceIsDisplaying;
+ (id)showServiceForText:(id)text type:(int64_t)type fromRect:(CGRect)rect inView:(id)view;
+ (id)showServiceForType:(int64_t)type withContext:(id)context;
+ (id)textServiceSessionForType:(int64_t)type;
+ (int64_t)availableTextServices;
- (_UITextServiceSession)initWithType:(int64_t)type;
- (void)_endSession;
- (void)dismissTextServiceAnimated:(BOOL)animated;
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
  if (![self _canShowTextServices])
  {
    return 0;
  }

  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  if ([mEMORY[0x1E69ADFB8] isDefinitionLookupAllowed])
  {
    v3 = 18;
  }

  else
  {
    v3 = 0;
  }

  if ([mEMORY[0x1E69ADFB8] isSelectedTextSharingAllowed])
  {
    v3 |= 8uLL;
  }

  if ([mEMORY[0x1E69ADFB8] isSpellCheckAllowed])
  {
    v3 |= 4uLL;
  }

  if ([mEMORY[0x1E69ADFB8] isTranslationLookupAllowed])
  {
    v3 |= 0x20uLL;
  }

  if ((v3 & 0x20) != 0 && ![getLTUITranslationViewControllerClass() isAvailable])
  {
    v3 &= ~0x20uLL;
  }

  return v3;
}

+ (BOOL)shouldPresentServiceInSameWindowAsView:(id)view
{
  _window = [view _window];
  if ([_window _isTextEffectsWindow])
  {
    v4 = 0;
  }

  else
  {
    v4 = dyld_program_sdk_at_least();
  }

  return v4;
}

+ (id)showServiceForType:(int64_t)type withContext:(id)context
{
  v109[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (![self _canShowTextServiceForType:type])
  {
    v9 = 0;
    goto LABEL_78;
  }

  textWithContext = [contextCopy textWithContext];
  rvItemWithContext = [contextCopy rvItemWithContext];
  if (type == 16 && !textWithContext && !rvItemWithContext)
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

  selectedRange = [contextCopy selectedRange];
  v12 = v11;
  v74 = [textWithContext substringWithRange:{selectedRange, v11}];
  view = [contextCopy view];
  v14 = view;
  if (view)
  {
    textInputView = view;
  }

  else
  {
    textInput = [contextCopy textInput];
    textInputView = [textInput textInputView];
  }

  [contextCopy presentationRect];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [[self alloc] initWithType:type];
  objc_storeStrong((v25 + 24), textInputView);
  v9 = 0;
  if (type <= 7)
  {
    if (type == 2)
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
      if (type != 4)
      {
        goto LABEL_76;
      }

      v34 = _shortcutEditorController(v74);
      if (v34)
      {
        v26 = [[UINavigationController alloc] initWithRootViewController:v34];
        v35 = +[UIDevice currentDevice];
        userInterfaceIdiom = [v35 userInterfaceIdiom];

        if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
    switch(type)
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
        if (!rvItemWithContext || (v41 = [objc_alloc(DataDetectorsUIGetClass(@"DDParsecCollectionViewController")) initWithRVItem:rvItemWithContext]) == 0)
        {
          v41 = [objc_alloc(DataDetectorsUIGetClass(@"DDParsecCollectionViewController")) initWithString:textWithContext range:{selectedRange, v12}];
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
        textInput2 = [contextCopy textInput];
        if (textInput2 && (v29 = [textInputView isEditable], textInput2, v29))
        {
          textInput3 = [contextCopy textInput];
          selectedTextRange = [textInput3 selectedTextRange];

          textInput4 = [contextCopy textInput];
          objc_initWeak(buf, textInput4);

          [(UIReferenceLibraryViewController *)v26 setIsSourceEditable:1];
          v87[0] = MEMORY[0x1E69E9820];
          v87[1] = 3221225472;
          v87[2] = __56___UITextServiceSession_showServiceForType_withContext___block_invoke_6;
          v87[3] = &unk_1E71277E0;
          objc_copyWeak(&v89, buf);
          v33 = selectedTextRange;
          v88 = v33;
          [(UIReferenceLibraryViewController *)v26 setReplacementHandler:v87];

          objc_destroyWeak(&v89);
          objc_destroyWeak(buf);
        }

        else if ([textInputView conformsToProtocolCached:&unk_1F016C810])
        {
          v42 = objc_initWeak(buf, textInputView);
          isReplaceAllowed = [textInputView isReplaceAllowed];

          if (isReplaceAllowed)
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

        else if ([textInputView conformsToProtocol:&unk_1F016C7B0])
        {
          v44 = objc_initWeak(buf, textInputView);
          isReplaceAllowed2 = [textInputView isReplaceAllowed];

          if (isReplaceAllowed2)
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

        else if ([textInputView conformsToProtocol:&unk_1F016CC30])
        {
          v46 = objc_initWeak(buf, textInputView);
          isReplaceAllowed3 = [textInputView isReplaceAllowed];

          if (isReplaceAllowed3)
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

        textInput5 = [contextCopy textInput];
        v49 = textInput5;
        if (textInput5)
        {
          v50 = textInput5;
        }

        else
        {
          v50 = textInputView;
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
    _window = [textInputView _window];
    if ([_window _isTextEffectsWindow])
    {
      v56 = (type < 0x21) & (0x100010010uLL >> type);
      if (type == 8)
      {
        v57 = 1;
      }

      else
      {
        v57 = (type < 0x21) & (0x100010010uLL >> type);
      }

      if (!v57)
      {
LABEL_67:
        presentationController = [(UIViewController *)v26 presentationController];
        [presentationController setDelegate:v25];

        popoverPresentationController = [(UIViewController *)v26 popoverPresentationController];
        [popoverPresentationController setSourceView:textInputView];

        popoverPresentationController2 = [(UIViewController *)v26 popoverPresentationController];
        [popoverPresentationController2 setSourceRect:{v18, v20, v22, v24}];

        objc_storeStrong((v25 + 16), v26);
        if ([self shouldPresentServiceInSameWindowAsView:textInputView])
        {
          _viewControllerForAncestor = [textInputView _viewControllerForAncestor];
          presentedViewController = [(UIViewController *)_viewControllerForAncestor presentedViewController];

          if (presentedViewController)
          {
            do
            {
              presentedViewController2 = [(UIViewController *)_viewControllerForAncestor presentedViewController];

              v69PresentedViewController = [(UIViewController *)presentedViewController2 presentedViewController];

              _viewControllerForAncestor = presentedViewController2;
            }

            while (v69PresentedViewController);
          }

          else
          {
            presentedViewController2 = _viewControllerForAncestor;
          }

          [(UIViewController *)presentedViewController2 presentViewController:v26 animated:1 completion:0];
        }

        else
        {
          presentedViewController2 = objc_alloc_init(_UIFallbackPresentationViewController);
          [(UIApplicationRotationFollowingController *)presentedViewController2 setSizesWindowToScene:1];
          popoverPresentationController3 = [(UIViewController *)v26 popoverPresentationController];
          [popoverPresentationController3 _setAllowsSourceViewInDifferentWindowThanInitialPresentationViewController:1];

          [(_UIFallbackPresentationViewController *)presentedViewController2 _presentViewController:v26 sendingView:textInputView animated:1];
        }

        [_MergedGlobals_1336 addObject:v25];
        v9 = v25;

        goto LABEL_76;
      }

      if (v56)
      {
        keyboardSceneDelegate = [textInputView keyboardSceneDelegate];
        v59 = *(v25 + 40);
        *(v25 + 40) = keyboardSceneDelegate;

        view2 = [(UIViewController *)v26 view];
        v61 = *(v25 + 32);
        *(v25 + 32) = view2;

        [*(v25 + 40) _beginPinningInputViewsOnBehalfOfResponder:*(v25 + 32)];
      }

      _window = [textInputView keyboardSceneDelegate];
      passthroughViews = [_window passthroughViews];
      popoverPresentationController4 = [(UIViewController *)v26 popoverPresentationController];
      [popoverPresentationController4 setPassthroughViews:passthroughViews];
    }

    goto LABEL_67;
  }

  v9 = 0;
LABEL_76:

LABEL_77:
LABEL_78:

  return v9;
}

+ (id)showServiceForText:(id)text type:(int64_t)type fromRect:(CGRect)rect inView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  textCopy = text;
  v14 = +[_UITextServiceSession showServiceForText:selectedTextRange:type:fromRect:inView:](_UITextServiceSession, "showServiceForText:selectedTextRange:type:fromRect:inView:", textCopy, 0, [textCopy length], type, viewCopy, x, y, width, height);

  return v14;
}

- (_UITextServiceSession)initWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = _UITextServiceSession;
  result = [(_UITextServiceSession *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

+ (id)textServiceSessionForType:(int64_t)type
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
        if ([v9 type] == type)
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

- (void)dismissTextServiceAnimated:(BOOL)animated
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
    dismissCompletionHandler = [(UIViewController *)v8 dismissCompletionHandler];
    [(UIViewController *)v8 dismissViewControllerAnimated:1 completion:dismissCompletionHandler];

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