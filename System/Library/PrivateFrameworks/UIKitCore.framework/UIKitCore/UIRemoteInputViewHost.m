@interface UIRemoteInputViewHost
- (BOOL)updateAssistantViewIfNecessary;
- (BOOL)updateCustomInputViewIfNecessary;
- (UIEdgeInsets)assistantViewInsets;
- (UIRemoteInputViewInfo)assistantViewInfo;
- (UIRemoteInputViewInfo)inputViewInfo;
- (id)remoteAssistantItemForResponder:(id)a3;
- (id)rtiGroupsForBarButtonItemGroups:(id)a3;
- (id)settingsScene;
- (void)setInputViewSet:(id)a3;
- (void)updateInputViewsIfNecessary;
@end

@implementation UIRemoteInputViewHost

- (void)setInputViewSet:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _UIRemoteInputViewHostLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v4;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "UIRemoteInputViewHost, setInputViewSet: %@", &v17, 0xCu);
  }

  inputView = self->_inputView;
  if (inputView)
  {
    v7 = [(UIInputViewSet *)v4 hostedCustomInputView];

    if (inputView != v7)
    {
      [(UIViewController *)self->_inputViewController willMoveToParentViewController:0];
      v8 = [(UIViewController *)self->_inputRootViewController view];
      v9 = [(UIViewController *)self->_inputRootViewController view];
      v10 = [v9 constraints];
      [v8 removeConstraints:v10];

      [(UIView *)self->_inputView removeFromSuperview];
      [(UIViewController *)self->_inputViewController removeFromParentViewController];
      inputViewController = self->_inputViewController;
      self->_inputViewController = 0;

      v12 = _UIRemoteInputViewHostLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = self->_inputView;
        v17 = 138412290;
        v18 = v13;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "UIRemoteInputViewHost will nil inputView: %@", &v17, 0xCu);
      }

      v14 = self->_inputView;
      self->_inputView = 0;

      inputViewHeightConstraint = self->_inputViewHeightConstraint;
      self->_inputViewHeightConstraint = 0;
    }
  }

  if (!v4)
  {
    [(UIRemoteInputViewHost *)self setShouldShowDockView:0];
  }

  inputViewSet = self->_inputViewSet;
  self->_inputViewSet = v4;
}

- (UIRemoteInputViewInfo)assistantViewInfo
{
  v3 = objc_alloc_init(UIRemoteInputViewInfo);
  [(UIRemoteInputViewInfo *)v3 setContextId:[(UIWindow *)self->_assistantViewWindow _contextId]];
  v4 = [(UIInputViewSet *)self->_inputViewSet assistantViewController];
  v5 = [v4 view];
  [v5 bounds];
  [(UIRemoteInputViewInfo *)v3 setSize:v6, v7];

  if ([objc_opt_class() instancesRespondToSelector:sel_insets])
  {
    v8 = [objc_opt_self() mainScreen];
    [v8 bounds];
    [(UIRemoteInputViewInfo *)v3 setInsets:v9 * 0.5, 0.0, 50.0, 0.0];
  }

  return v3;
}

- (UIEdgeInsets)assistantViewInsets
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 containerRootController];

  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = [v4 currentInputMode];

  +[UIKeyboardImpl deviceSpecificPaddingForInterfaceOrientation:inputMode:](UIKeyboardImpl, "deviceSpecificPaddingForInterfaceOrientation:inputMode:", [v3 keyboardOrientation], v5);
  v7 = v6;
  v9 = v8;
  +[UIKeyboardImpl deviceSpecificStaticHitBufferForInterfaceOrientation:inputMode:](UIKeyboardImpl, "deviceSpecificStaticHitBufferForInterfaceOrientation:inputMode:", [v3 keyboardOrientation], v5);
  v11 = v7 - v10;
  v13 = -(v9 - v12);

  v14 = 0.0;
  v15 = 0.0;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v15;
  result.left = v16;
  result.top = v14;
  return result;
}

- (BOOL)updateAssistantViewIfNecessary
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_self() mainScreen];
  v4 = [UIWindowScene _keyboardWindowSceneForScreen:v3 create:1];

  v5 = [(UIRemoteInputViewHost *)self settingsScene];
  [v4 _setSettingsScene:v5];

  v6 = [(UIInputViewSet *)self->_inputViewSet inputAssistantView];

  assistantViewWindow = self->_assistantViewWindow;
  if (v6)
  {
    if (assistantViewWindow)
    {
      v8 = [(UIWindow *)assistantViewWindow windowScene];

      if (v8 != v4)
      {
        [(UIWindow *)self->_assistantViewWindow setWindowScene:v4];
        [(UIWindow *)self->_assistantViewWindow setRootViewController:self->_assistantViewController];
      }
    }

    else
    {
      v24 = [[_UIRemoteInputViewHostWindow alloc] initWithWindowScene:v4];
      v25 = self->_assistantViewWindow;
      self->_assistantViewWindow = &v24->super.super.super;

      v26 = objc_alloc_init(_UIRemoteInputViewHostViewController);
      assistantViewController = self->_assistantViewController;
      self->_assistantViewController = &v26->super;

      [(UIWindow *)self->_assistantViewWindow setRootViewController:self->_assistantViewController];
      [(UIWindow *)self->_assistantViewWindow setHidden:0];
    }

    v28 = [(UIInputViewSet *)self->_inputViewSet assistantViewController];
    v29 = [v28 parentViewController];
    v30 = self->_assistantViewController;

    if (v29 != v30)
    {
      v31 = self->_assistantViewController;
      v32 = [(UIInputViewSet *)self->_inputViewSet assistantViewController];
      [(UIViewController *)v31 addChildViewController:v32];

      v33 = [(UIViewController *)self->_assistantViewController view];
      v34 = [(UIInputViewSet *)self->_inputViewSet inputAssistantView];
      [v33 addSubview:v34];

      v35 = [(UIInputViewSet *)self->_inputViewSet assistantViewController];
      [v35 didMoveToParentViewController:self->_assistantViewController];

      v36 = [(UIViewController *)self->_assistantViewController view];
      [v36 setTranslatesAutoresizingMaskIntoConstraints:1];
    }

    v37 = [(UIInputViewSet *)self->_inputViewSet assistantViewController];
    v38 = +[UIKeyboardImpl activeInstance];
    v39 = [v38 delegate];
    [v37 automaticallySetCenterViewControllerBasedOnInputDelegate:v39];

    v40 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v41 = [v40 containerRootController];

    [(UIView *)self->_assistantViewWindow bounds];
    v43 = v42;
    v45 = v44;
    v46 = [(UIInputViewSet *)self->_inputViewSet inputAssistantView];
    v47 = [v46 traitCollection];
    [v37 preferredHeightForTraitCollection:v47];
    v49 = v48;

    v50 = +[UIKeyboardImpl activeInstance];
    if ([v50 isMinimized])
    {
      v51 = +[UIDevice _hasHomeButton];

      if (!v51)
      {
        v49 = v49 + 14.0;
      }
    }

    else
    {
    }

    v52 = [objc_opt_self() mainScreen];
    [v52 bounds];

    v53 = [objc_opt_self() mainScreen];
    [v53 bounds];
    v55 = v54;

    [(UIRemoteInputViewHost *)self assistantViewInsets];
    v58 = v55 - (v56 - v57);
    v59 = [(UIRemoteInputViewHost *)self assistantViewInfo];
    [v59 insets];
    v61 = v60;

    v62 = [(UIViewController *)self->_assistantViewController view];
    [v62 setFrame:{v43, v61, v58, v49}];

    v63 = [(UIInputViewSet *)self->_inputViewSet inputAssistantView];
    [v63 setTranslatesAutoresizingMaskIntoConstraints:1];

    v64 = [(UIInputViewSet *)self->_inputViewSet inputAssistantView];
    [v64 setFrame:{v43, v45, v58, v49}];

    v65 = [v37 view];
    [v65 layoutIfNeeded];

    v66 = [v37 view];
    v23 = [v66 isHidden] ^ 1;
  }

  else
  {
    v9 = [(UIWindow *)assistantViewWindow rootViewController];
    v10 = [v9 childViewControllers];
    v11 = [v10 count];

    if (v11)
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v12 = [(UIWindow *)self->_assistantViewWindow rootViewController];
      v13 = [v12 childViewControllers];

      v14 = [v13 countByEnumeratingWithState:&v68 objects:v72 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v69;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v69 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v68 + 1) + 8 * i);
            [v18 willMoveToParentViewController:0];
            v19 = [v18 view];
            v20 = [v18 view];
            v21 = [v20 constraints];
            [v19 removeConstraints:v21];

            v22 = [v18 view];
            [v22 removeFromSuperview];

            [v18 removeFromParentViewController];
          }

          v15 = [v13 countByEnumeratingWithState:&v68 objects:v72 count:16];
        }

        while (v15);
      }
    }

    LOBYTE(v23) = 0;
  }

  return v23;
}

- (BOOL)updateCustomInputViewIfNecessary
{
  v3 = [objc_opt_self() mainScreen];
  v4 = [UIWindowScene _keyboardWindowSceneForScreen:v3 create:1];

  v5 = [(UIRemoteInputViewHost *)self settingsScene];
  [v4 _setSettingsScene:v5];

  v6 = [(UIInputViewSet *)self->_inputViewSet hostedCustomInputView];

  if (!v6)
  {
    v12 = 0;
    goto LABEL_31;
  }

  v7 = [(UIInputViewSet *)self->_inputViewSet hostedCustomInputView];
  v8 = [UICompatibilityInputViewController inputViewControllerWithView:v7];
  inputViewController = self->_inputViewController;
  self->_inputViewController = v8;

  inputViewWindow = self->_inputViewWindow;
  if (inputViewWindow)
  {
    v11 = [(UIWindow *)self->_inputViewWindow windowScene];

    if (v11 != v4)
    {
      [(UIWindow *)self->_inputViewWindow setWindowScene:v4];
      v12 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v13 = [[_UIRemoteInputViewHostWindow alloc] initWithWindowScene:v4];
    v14 = self->_inputViewWindow;
    self->_inputViewWindow = &v13->super.super.super;

    v15 = objc_alloc_init(_UIRemoteInputViewHostViewController);
    inputRootViewController = self->_inputRootViewController;
    self->_inputRootViewController = &v15->super;

    [(UIWindow *)self->_inputViewWindow setHostWindowDelegate:self];
    [(UIWindow *)self->_inputViewWindow setRootViewController:self->_inputRootViewController];
    [(UIWindow *)self->_inputViewWindow setHidden:0];
    v17 = [(UIViewController *)self->_inputRootViewController view];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    v18 = [(UIViewController *)self->_inputRootViewController view];
    v19 = [v18 layer];
    [v19 setHitTestsAsOpaque:1];
  }

  v12 = 0;
LABEL_8:
  inputView = self->_inputView;
  v21 = [(UIViewController *)self->_inputViewController view];

  if (inputView != v21)
  {
    v22 = [UIViewController viewControllerForView:self->_inputView];
    [v22 willMoveToParentViewController:0];
    v23 = [(UIViewController *)self->_inputRootViewController view];
    v24 = [(UIViewController *)self->_inputRootViewController view];
    v25 = [v24 constraints];
    [v23 removeConstraints:v25];

    [(UIView *)self->_inputView removeFromSuperview];
    [v22 removeFromParentViewController];
    v26 = [(UIViewController *)self->_inputViewController view];
    v27 = self->_inputView;
    self->_inputView = v26;

    v12 = 1;
  }

  v28 = [objc_opt_self() mainScreen];
  [v28 bounds];
  v30 = v29;

  if (+[UIKeyboardImpl isFloating])
  {
    +[UIKeyboardImpl floatingWidth];
    v30 = v31;
  }

  v32 = [(UIView *)self->_inputView superview];
  v33 = [(UIViewController *)self->_inputRootViewController view];

  if (v32 != v33)
  {
    [(UIViewController *)self->_inputViewController willMoveToParentViewController:0];
    v34 = [(UIViewController *)self->_inputRootViewController view];
    v35 = [(UIViewController *)self->_inputRootViewController view];
    v36 = [v35 constraints];
    [v34 removeConstraints:v36];

    [(UIView *)self->_inputView removeFromSuperview];
    [(UIViewController *)self->_inputViewController removeFromParentViewController];
    [(UIViewController *)self->_inputRootViewController addChildViewController:self->_inputViewController];
    v37 = [(UIViewController *)self->_inputRootViewController view];
    [v37 addSubview:self->_inputView];

    [(UIViewController *)self->_inputViewController didMoveToParentViewController:self->_inputRootViewController];
    v38 = [(UIViewController *)self->_inputRootViewController view];
    v39 = [v38 widthAnchor];
    v40 = [v39 constraintEqualToConstant:v30];
    inputViewWidthConstraint = self->_inputViewWidthConstraint;
    self->_inputViewWidthConstraint = v40;

    v12 = 1;
    [(NSLayoutConstraint *)self->_inputViewWidthConstraint setActive:1];
    v42 = [(UIViewController *)self->_inputRootViewController view];
    v43 = [v42 topAnchor];
    v44 = [(UIView *)self->_inputView topAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];
    [v45 setActive:1];

    v46 = [(UIViewController *)self->_inputRootViewController view];
    v47 = [v46 bottomAnchor];
    v48 = [(UIView *)self->_inputView bottomAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];
    inputViewBottomConstraint = self->_inputViewBottomConstraint;
    self->_inputViewBottomConstraint = v49;

    [(NSLayoutConstraint *)self->_inputViewBottomConstraint setActive:1];
    v51 = [(UIViewController *)self->_inputRootViewController view];
    v52 = [v51 leadingAnchor];
    v53 = [(UIView *)self->_inputView leadingAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];
    [v54 setActive:1];

    v55 = [(UIViewController *)self->_inputRootViewController view];
    v56 = [v55 trailingAnchor];
    v57 = [(UIView *)self->_inputView trailingAnchor];
    v58 = [v56 constraintEqualToAnchor:v57];
    [v58 setActive:1];

    v59 = [(UIViewController *)self->_inputRootViewController view];
    v60 = [v59 bottomAnchor];
    v61 = [(UIView *)self->_inputViewWindow bottomAnchor];
    v62 = [v60 constraintEqualToAnchor:v61];
    [v62 setActive:1];
  }

  if (SubviewUsesClassicLayout(self->_inputView))
  {
    v63 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v64 = [v63 containerRootController];
    [v64 sizeForInputViewController:self->_inputViewController inputView:self->_inputView];
    v66 = v65;

    inputViewHeightConstraint = self->_inputViewHeightConstraint;
    if (inputViewHeightConstraint)
    {
      [(NSLayoutConstraint *)inputViewHeightConstraint setConstant:v66];
    }

    else
    {
      v70 = [MEMORY[0x1E69977A0] constraintWithItem:self->_inputView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:v66];
      LODWORD(v71) = 1148846080;
      [(NSLayoutConstraint *)v70 setPriority:v71];
      [(NSLayoutConstraint *)v70 setIdentifier:@"inputHeight"];
      v72 = self->_inputViewHeightConstraint;
      self->_inputViewHeightConstraint = v70;
    }

    v68 = self->_inputViewHeightConstraint;
    v12 = 1;
    v69 = 1;
    goto LABEL_21;
  }

  v68 = self->_inputViewHeightConstraint;
  if (v68)
  {
    v69 = 0;
LABEL_21:
    [(NSLayoutConstraint *)v68 setActive:v69];
  }

  v73 = [(UIRemoteInputViewHost *)self shouldShowDockView];
  v74 = 75.0;
  if (!v73)
  {
    v74 = 0.0;
  }

  [(NSLayoutConstraint *)self->_inputViewBottomConstraint setConstant:v74];
  [(NSLayoutConstraint *)self->_inputViewWidthConstraint setConstant:v30];
  v75 = [(UIRemoteInputViewHost *)self inputViewSet];
  v76 = [v75 hostedCustomInputView];
  [v76 frame];
  v78 = v77;
  v80 = v79;

  if (self->_previousInputViewSize.width == v78 && self->_previousInputViewSize.height == v80)
  {
    if (!inputViewWindow)
    {
      goto LABEL_30;
    }
  }

  else
  {
    self->_previousInputViewSize.width = v78;
    self->_previousInputViewSize.height = v80;
    v12 = 1;
    if (!inputViewWindow)
    {
LABEL_30:
      [(UIView *)self->_inputViewWindow layoutIfNeeded];
      v12 = 1;
      goto LABEL_31;
    }
  }

  [(UIView *)self->_inputView frame];
  if (v81 == 0.0)
  {
    goto LABEL_30;
  }

LABEL_31:

  return v12;
}

- (void)updateInputViewsIfNecessary
{
  v13 = *MEMORY[0x1E69E9840];
  if (+[UIKeyboard usesLocalKeyboard])
  {
    v3 = [(UIInputViewSet *)self->_inputViewSet inputAssistantView];
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v4 = _UIRemoteInputViewHostLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 67109120;
      v10 = +[UIKeyboard usesLocalKeyboard];
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "UIRemoteInputViewHost, updateInputViewsIfNecessary useLocal %d", &v9, 8u);
    }

    goto LABEL_8;
  }

  v5 = [(UIRemoteInputViewHost *)self updateAssistantViewIfNecessary];
  v6 = [(UIRemoteInputViewHost *)self updateCustomInputViewIfNecessary];
  v7 = _UIRemoteInputViewHostLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 67109376;
    v10 = v5;
    v11 = 1024;
    v12 = v6;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "UIRemoteInputViewHost, assistantViewNeedsUpdate: %d, customInputViewNeedsUpdate: %d", &v9, 0xEu);
  }

  if (v5 || v6)
  {
    v4 = +[UIKeyboardImpl activeInstance];
    v8 = [v4 remoteTextInputPartner];
    [v8 documentTraitsChanged];

LABEL_8:
  }
}

- (UIRemoteInputViewInfo)inputViewInfo
{
  if ([(UIInputViewSet *)self->_inputViewSet isCustomInputView])
  {
    v3 = objc_alloc_init(UIRemoteInputViewInfo);
    [(UIRemoteInputViewInfo *)v3 setContextId:[(UIWindow *)self->_inputViewWindow _contextId]];
    v4 = [(UIViewController *)self->_inputViewController view];
    [v4 frame];
    v6 = v5;
    v8 = v7;

    if ([(UIRemoteInputViewHost *)self shouldShowDockView])
    {
      v8 = v8 + 75.0;
    }

    [(UIRemoteInputViewInfo *)v3 setSize:v6, v8];
    [(UIView *)self->_inputViewWindow frame];
    [(UIRemoteInputViewInfo *)v3 setInsets:v9 - v8, 0.0, 0.0, 0.0];
    [(UIRemoteInputViewInfo *)v3 setShouldShowDockView:[(UIRemoteInputViewHost *)self shouldShowDockView]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)rtiGroupsForBarButtonItemGroups:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2050000000;
  v4 = qword_1ED49C870;
  v50 = qword_1ED49C870;
  if (!qword_1ED49C870)
  {
    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = __getTUIAssistantButtonSizeProviderClass_block_invoke;
    v45 = &unk_1E70F2F20;
    v46 = &v47;
    __getTUIAssistantButtonSizeProviderClass_block_invoke(&v42);
    v4 = v48[3];
  }

  v5 = v4;
  _Block_object_dispose(&v47, 8);
  v6 = objc_alloc_init(v4);
  if (v6)
  {
    v28 = [(UIInputViewSet *)self->_inputViewSet assistantViewController];
    v27 = [v28 styleFromAssistantBarStyle:{objc_msgSend(v28, "assistantBarStyle")}];
    [v27 barButtonWidth];
    [v6 setBarButtonWidth:?];
    v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v29, "count")}];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v29;
    v33 = [obj countByEnumeratingWithState:&v38 objects:v52 count:16];
    if (v33)
    {
      v32 = *v39;
      while (2)
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v39 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v38 + 1) + 8 * i);
          if (([v8 isHidden] & 1) == 0)
          {
            v9 = objc_alloc(MEMORY[0x1E695DF70]);
            v10 = [v8 barButtonItems];
            v11 = [v9 initWithCapacity:{objc_msgSend(v10, "count")}];

            v47 = 0;
            v48 = &v47;
            v49 = 0x2050000000;
            v12 = qword_1ED49C880;
            v50 = qword_1ED49C880;
            if (!qword_1ED49C880)
            {
              v42 = MEMORY[0x1E69E9820];
              v43 = 3221225472;
              v44 = __getRTIBarButtonGroupClass_block_invoke;
              v45 = &unk_1E70F2F20;
              v46 = &v47;
              __getRTIBarButtonGroupClass_block_invoke(&v42);
              v12 = v48[3];
            }

            v13 = v12;
            _Block_object_dispose(&v47, 8);
            v14 = objc_alloc_init(v12);
            if (!v14)
            {

              v25 = 0;
              v24 = v30;
              goto LABEL_28;
            }

            v15 = [v8 representativeItem];
            [v6 preferredSizeForButtonBarItem:v15];
            *&v16 = v16;
            [v14 setRepresentativeItemWidth:v16];

            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v17 = [v8 barButtonItems];
            v18 = [v17 countByEnumeratingWithState:&v34 objects:v51 count:16];
            if (v18)
            {
              v19 = *v35;
              do
              {
                for (j = 0; j != v18; ++j)
                {
                  if (*v35 != v19)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v21 = *(*(&v34 + 1) + 8 * j);
                  if (([v21 isHidden] & 1) == 0)
                  {
                    [v6 preferredSizeForButtonBarItem:v21];
                    *&v22 = v22;
                    v23 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
                    [v11 addObject:v23];
                  }
                }

                v18 = [v17 countByEnumeratingWithState:&v34 objects:v51 count:16];
              }

              while (v18);
            }

            [v14 setItemWidths:v11];
            [v30 addObject:v14];
          }
        }

        v33 = [obj countByEnumeratingWithState:&v38 objects:v52 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }
    }

    v24 = v30;
    v25 = v30;
LABEL_28:
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)remoteAssistantItemForResponder:(id)a3
{
  v4 = a3;
  v5 = [v4 _responderWindow];
  v6 = [v5 windowScene];
  v7 = [v6 keyboardSceneDelegate];
  v8 = [v7 systemInputAssistantViewController];

  if ([v8 _assistantItemsVisibleForResponder:v4] && (objc_msgSend(v8, "observedInputAssistantItem"), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = [v8 observedInputAssistantItem];
  }

  else
  {
    v11 = [v4 inputAssistantItem];
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v12 = getRTIAssistantItemClass_softClass;
  v34 = getRTIAssistantItemClass_softClass;
  if (!getRTIAssistantItemClass_softClass)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __getRTIAssistantItemClass_block_invoke;
    v30[3] = &unk_1E70F2F20;
    v30[4] = &v31;
    __getRTIAssistantItemClass_block_invoke(v30);
    v12 = v32[3];
  }

  v13 = v12;
  _Block_object_dispose(&v31, 8);
  v14 = objc_alloc_init(v12);
  if (v14)
  {
    [v14 setShowsBarButtonItemsInline:{objc_msgSend(v11, "_showsBarButtonItemsInline")}];
    if (objc_opt_respondsToSelector())
    {
      v15 = [v4 inputDashboardViewController];
      [v14 setShowsInputDashboardViewController:v15 != 0];
    }

    else
    {
      [v14 setShowsInputDashboardViewController:0];
    }

    if ([v14 showsInputDashboardViewController])
    {
      v16 = [v4 inputDashboardViewController];
      v17 = objc_opt_respondsToSelector();

      if (v17)
      {
        v18 = [v4 inputDashboardViewController];
        v19 = [v4 inputDashboardViewController];
        v20 = [v19 traitCollection];
        [v18 preferredWidthForTraitCollection:v20];
        *&v21 = v21;
        [v14 setCenterViewPreferredWidth:v21];
      }
    }

    v22 = [v11 _detachedTintColor];
    [v14 setDetachedTintColor:v22];

    v23 = [v11 _detachedBackgroundColor];
    [v14 setDetachedBackgroundColor:v23];

    [v14 setVisibleWhenMinimized:{objc_msgSend(v11, "_isVisibleWhenMinimized")}];
    v24 = [v11 leadingBarButtonGroups];
    v25 = [(UIRemoteInputViewHost *)self rtiGroupsForBarButtonItemGroups:v24];
    [v14 setLeadingBarButtonGroups:v25];

    v26 = [v11 trailingBarButtonGroups];
    v27 = [(UIRemoteInputViewHost *)self rtiGroupsForBarButtonItemGroups:v26];
    [v14 setTrailingBarButtonGroups:v27];

    v28 = v14;
  }

  return v14;
}

- (id)settingsScene
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 scene];
  if (!v3)
  {
    v4 = [v2 responder];
    v5 = [v4 _responderWindow];
    v3 = [v5 windowScene];
  }

  return v3;
}

@end