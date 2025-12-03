@interface UIRemoteInputViewHost
- (BOOL)updateAssistantViewIfNecessary;
- (BOOL)updateCustomInputViewIfNecessary;
- (UIEdgeInsets)assistantViewInsets;
- (UIRemoteInputViewInfo)assistantViewInfo;
- (UIRemoteInputViewInfo)inputViewInfo;
- (id)remoteAssistantItemForResponder:(id)responder;
- (id)rtiGroupsForBarButtonItemGroups:(id)groups;
- (id)settingsScene;
- (void)setInputViewSet:(id)set;
- (void)updateInputViewsIfNecessary;
@end

@implementation UIRemoteInputViewHost

- (void)setInputViewSet:(id)set
{
  v19 = *MEMORY[0x1E69E9840];
  setCopy = set;
  v5 = _UIRemoteInputViewHostLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = setCopy;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "UIRemoteInputViewHost, setInputViewSet: %@", &v17, 0xCu);
  }

  inputView = self->_inputView;
  if (inputView)
  {
    hostedCustomInputView = [(UIInputViewSet *)setCopy hostedCustomInputView];

    if (inputView != hostedCustomInputView)
    {
      [(UIViewController *)self->_inputViewController willMoveToParentViewController:0];
      view = [(UIViewController *)self->_inputRootViewController view];
      view2 = [(UIViewController *)self->_inputRootViewController view];
      constraints = [view2 constraints];
      [view removeConstraints:constraints];

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

  if (!setCopy)
  {
    [(UIRemoteInputViewHost *)self setShouldShowDockView:0];
  }

  inputViewSet = self->_inputViewSet;
  self->_inputViewSet = setCopy;
}

- (UIRemoteInputViewInfo)assistantViewInfo
{
  v3 = objc_alloc_init(UIRemoteInputViewInfo);
  [(UIRemoteInputViewInfo *)v3 setContextId:[(UIWindow *)self->_assistantViewWindow _contextId]];
  assistantViewController = [(UIInputViewSet *)self->_inputViewSet assistantViewController];
  view = [assistantViewController view];
  [view bounds];
  [(UIRemoteInputViewInfo *)v3 setSize:v6, v7];

  if ([objc_opt_class() instancesRespondToSelector:sel_insets])
  {
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen bounds];
    [(UIRemoteInputViewInfo *)v3 setInsets:v9 * 0.5, 0.0, 50.0, 0.0];
  }

  return v3;
}

- (UIEdgeInsets)assistantViewInsets
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  containerRootController = [v2 containerRootController];

  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v4 currentInputMode];

  +[UIKeyboardImpl deviceSpecificPaddingForInterfaceOrientation:inputMode:](UIKeyboardImpl, "deviceSpecificPaddingForInterfaceOrientation:inputMode:", [containerRootController keyboardOrientation], currentInputMode);
  v7 = v6;
  v9 = v8;
  +[UIKeyboardImpl deviceSpecificStaticHitBufferForInterfaceOrientation:inputMode:](UIKeyboardImpl, "deviceSpecificStaticHitBufferForInterfaceOrientation:inputMode:", [containerRootController keyboardOrientation], currentInputMode);
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
  mainScreen = [objc_opt_self() mainScreen];
  v4 = [UIWindowScene _keyboardWindowSceneForScreen:mainScreen create:1];

  settingsScene = [(UIRemoteInputViewHost *)self settingsScene];
  [v4 _setSettingsScene:settingsScene];

  inputAssistantView = [(UIInputViewSet *)self->_inputViewSet inputAssistantView];

  assistantViewWindow = self->_assistantViewWindow;
  if (inputAssistantView)
  {
    if (assistantViewWindow)
    {
      windowScene = [(UIWindow *)assistantViewWindow windowScene];

      if (windowScene != v4)
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

    assistantViewController = [(UIInputViewSet *)self->_inputViewSet assistantViewController];
    parentViewController = [assistantViewController parentViewController];
    v30 = self->_assistantViewController;

    if (parentViewController != v30)
    {
      v31 = self->_assistantViewController;
      assistantViewController2 = [(UIInputViewSet *)self->_inputViewSet assistantViewController];
      [(UIViewController *)v31 addChildViewController:assistantViewController2];

      view = [(UIViewController *)self->_assistantViewController view];
      inputAssistantView2 = [(UIInputViewSet *)self->_inputViewSet inputAssistantView];
      [view addSubview:inputAssistantView2];

      assistantViewController3 = [(UIInputViewSet *)self->_inputViewSet assistantViewController];
      [assistantViewController3 didMoveToParentViewController:self->_assistantViewController];

      view2 = [(UIViewController *)self->_assistantViewController view];
      [view2 setTranslatesAutoresizingMaskIntoConstraints:1];
    }

    assistantViewController4 = [(UIInputViewSet *)self->_inputViewSet assistantViewController];
    v38 = +[UIKeyboardImpl activeInstance];
    delegate = [v38 delegate];
    [assistantViewController4 automaticallySetCenterViewControllerBasedOnInputDelegate:delegate];

    v40 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    containerRootController = [v40 containerRootController];

    [(UIView *)self->_assistantViewWindow bounds];
    v43 = v42;
    v45 = v44;
    inputAssistantView3 = [(UIInputViewSet *)self->_inputViewSet inputAssistantView];
    traitCollection = [inputAssistantView3 traitCollection];
    [assistantViewController4 preferredHeightForTraitCollection:traitCollection];
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

    mainScreen2 = [objc_opt_self() mainScreen];
    [mainScreen2 bounds];

    mainScreen3 = [objc_opt_self() mainScreen];
    [mainScreen3 bounds];
    v55 = v54;

    [(UIRemoteInputViewHost *)self assistantViewInsets];
    v58 = v55 - (v56 - v57);
    assistantViewInfo = [(UIRemoteInputViewHost *)self assistantViewInfo];
    [assistantViewInfo insets];
    v61 = v60;

    view3 = [(UIViewController *)self->_assistantViewController view];
    [view3 setFrame:{v43, v61, v58, v49}];

    inputAssistantView4 = [(UIInputViewSet *)self->_inputViewSet inputAssistantView];
    [inputAssistantView4 setTranslatesAutoresizingMaskIntoConstraints:1];

    inputAssistantView5 = [(UIInputViewSet *)self->_inputViewSet inputAssistantView];
    [inputAssistantView5 setFrame:{v43, v45, v58, v49}];

    view4 = [assistantViewController4 view];
    [view4 layoutIfNeeded];

    view5 = [assistantViewController4 view];
    v23 = [view5 isHidden] ^ 1;
  }

  else
  {
    rootViewController = [(UIWindow *)assistantViewWindow rootViewController];
    childViewControllers = [rootViewController childViewControllers];
    v11 = [childViewControllers count];

    if (v11)
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      rootViewController2 = [(UIWindow *)self->_assistantViewWindow rootViewController];
      childViewControllers2 = [rootViewController2 childViewControllers];

      v14 = [childViewControllers2 countByEnumeratingWithState:&v68 objects:v72 count:16];
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
              objc_enumerationMutation(childViewControllers2);
            }

            v18 = *(*(&v68 + 1) + 8 * i);
            [v18 willMoveToParentViewController:0];
            view6 = [v18 view];
            view7 = [v18 view];
            constraints = [view7 constraints];
            [view6 removeConstraints:constraints];

            view8 = [v18 view];
            [view8 removeFromSuperview];

            [v18 removeFromParentViewController];
          }

          v15 = [childViewControllers2 countByEnumeratingWithState:&v68 objects:v72 count:16];
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
  mainScreen = [objc_opt_self() mainScreen];
  v4 = [UIWindowScene _keyboardWindowSceneForScreen:mainScreen create:1];

  settingsScene = [(UIRemoteInputViewHost *)self settingsScene];
  [v4 _setSettingsScene:settingsScene];

  hostedCustomInputView = [(UIInputViewSet *)self->_inputViewSet hostedCustomInputView];

  if (!hostedCustomInputView)
  {
    v12 = 0;
    goto LABEL_31;
  }

  hostedCustomInputView2 = [(UIInputViewSet *)self->_inputViewSet hostedCustomInputView];
  v8 = [UICompatibilityInputViewController inputViewControllerWithView:hostedCustomInputView2];
  inputViewController = self->_inputViewController;
  self->_inputViewController = v8;

  inputViewWindow = self->_inputViewWindow;
  if (inputViewWindow)
  {
    windowScene = [(UIWindow *)self->_inputViewWindow windowScene];

    if (windowScene != v4)
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
    view = [(UIViewController *)self->_inputRootViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    view2 = [(UIViewController *)self->_inputRootViewController view];
    layer = [view2 layer];
    [layer setHitTestsAsOpaque:1];
  }

  v12 = 0;
LABEL_8:
  inputView = self->_inputView;
  view3 = [(UIViewController *)self->_inputViewController view];

  if (inputView != view3)
  {
    v22 = [UIViewController viewControllerForView:self->_inputView];
    [v22 willMoveToParentViewController:0];
    view4 = [(UIViewController *)self->_inputRootViewController view];
    view5 = [(UIViewController *)self->_inputRootViewController view];
    constraints = [view5 constraints];
    [view4 removeConstraints:constraints];

    [(UIView *)self->_inputView removeFromSuperview];
    [v22 removeFromParentViewController];
    view6 = [(UIViewController *)self->_inputViewController view];
    v27 = self->_inputView;
    self->_inputView = view6;

    v12 = 1;
  }

  mainScreen2 = [objc_opt_self() mainScreen];
  [mainScreen2 bounds];
  v30 = v29;

  if (+[UIKeyboardImpl isFloating])
  {
    +[UIKeyboardImpl floatingWidth];
    v30 = v31;
  }

  superview = [(UIView *)self->_inputView superview];
  view7 = [(UIViewController *)self->_inputRootViewController view];

  if (superview != view7)
  {
    [(UIViewController *)self->_inputViewController willMoveToParentViewController:0];
    view8 = [(UIViewController *)self->_inputRootViewController view];
    view9 = [(UIViewController *)self->_inputRootViewController view];
    constraints2 = [view9 constraints];
    [view8 removeConstraints:constraints2];

    [(UIView *)self->_inputView removeFromSuperview];
    [(UIViewController *)self->_inputViewController removeFromParentViewController];
    [(UIViewController *)self->_inputRootViewController addChildViewController:self->_inputViewController];
    view10 = [(UIViewController *)self->_inputRootViewController view];
    [view10 addSubview:self->_inputView];

    [(UIViewController *)self->_inputViewController didMoveToParentViewController:self->_inputRootViewController];
    view11 = [(UIViewController *)self->_inputRootViewController view];
    widthAnchor = [view11 widthAnchor];
    v40 = [widthAnchor constraintEqualToConstant:v30];
    inputViewWidthConstraint = self->_inputViewWidthConstraint;
    self->_inputViewWidthConstraint = v40;

    v12 = 1;
    [(NSLayoutConstraint *)self->_inputViewWidthConstraint setActive:1];
    view12 = [(UIViewController *)self->_inputRootViewController view];
    topAnchor = [view12 topAnchor];
    topAnchor2 = [(UIView *)self->_inputView topAnchor];
    v45 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v45 setActive:1];

    view13 = [(UIViewController *)self->_inputRootViewController view];
    bottomAnchor = [view13 bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_inputView bottomAnchor];
    v49 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    inputViewBottomConstraint = self->_inputViewBottomConstraint;
    self->_inputViewBottomConstraint = v49;

    [(NSLayoutConstraint *)self->_inputViewBottomConstraint setActive:1];
    view14 = [(UIViewController *)self->_inputRootViewController view];
    leadingAnchor = [view14 leadingAnchor];
    leadingAnchor2 = [(UIView *)self->_inputView leadingAnchor];
    v54 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v54 setActive:1];

    view15 = [(UIViewController *)self->_inputRootViewController view];
    trailingAnchor = [view15 trailingAnchor];
    trailingAnchor2 = [(UIView *)self->_inputView trailingAnchor];
    v58 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v58 setActive:1];

    view16 = [(UIViewController *)self->_inputRootViewController view];
    bottomAnchor3 = [view16 bottomAnchor];
    bottomAnchor4 = [(UIView *)self->_inputViewWindow bottomAnchor];
    v62 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [v62 setActive:1];
  }

  if (SubviewUsesClassicLayout(self->_inputView))
  {
    v63 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    containerRootController = [v63 containerRootController];
    [containerRootController sizeForInputViewController:self->_inputViewController inputView:self->_inputView];
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

  shouldShowDockView = [(UIRemoteInputViewHost *)self shouldShowDockView];
  v74 = 75.0;
  if (!shouldShowDockView)
  {
    v74 = 0.0;
  }

  [(NSLayoutConstraint *)self->_inputViewBottomConstraint setConstant:v74];
  [(NSLayoutConstraint *)self->_inputViewWidthConstraint setConstant:v30];
  inputViewSet = [(UIRemoteInputViewHost *)self inputViewSet];
  hostedCustomInputView3 = [inputViewSet hostedCustomInputView];
  [hostedCustomInputView3 frame];
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
    inputAssistantView = [(UIInputViewSet *)self->_inputViewSet inputAssistantView];
    [inputAssistantView setTranslatesAutoresizingMaskIntoConstraints:0];

    v4 = _UIRemoteInputViewHostLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 67109120;
      v10 = +[UIKeyboard usesLocalKeyboard];
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "UIRemoteInputViewHost, updateInputViewsIfNecessary useLocal %d", &v9, 8u);
    }

    goto LABEL_8;
  }

  updateAssistantViewIfNecessary = [(UIRemoteInputViewHost *)self updateAssistantViewIfNecessary];
  updateCustomInputViewIfNecessary = [(UIRemoteInputViewHost *)self updateCustomInputViewIfNecessary];
  v7 = _UIRemoteInputViewHostLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 67109376;
    v10 = updateAssistantViewIfNecessary;
    v11 = 1024;
    v12 = updateCustomInputViewIfNecessary;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "UIRemoteInputViewHost, assistantViewNeedsUpdate: %d, customInputViewNeedsUpdate: %d", &v9, 0xEu);
  }

  if (updateAssistantViewIfNecessary || updateCustomInputViewIfNecessary)
  {
    v4 = +[UIKeyboardImpl activeInstance];
    remoteTextInputPartner = [v4 remoteTextInputPartner];
    [remoteTextInputPartner documentTraitsChanged];

LABEL_8:
  }
}

- (UIRemoteInputViewInfo)inputViewInfo
{
  if ([(UIInputViewSet *)self->_inputViewSet isCustomInputView])
  {
    v3 = objc_alloc_init(UIRemoteInputViewInfo);
    [(UIRemoteInputViewInfo *)v3 setContextId:[(UIWindow *)self->_inputViewWindow _contextId]];
    view = [(UIViewController *)self->_inputViewController view];
    [view frame];
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

- (id)rtiGroupsForBarButtonItemGroups:(id)groups
{
  v53 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
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
    assistantViewController = [(UIInputViewSet *)self->_inputViewSet assistantViewController];
    v27 = [assistantViewController styleFromAssistantBarStyle:{objc_msgSend(assistantViewController, "assistantBarStyle")}];
    [v27 barButtonWidth];
    [v6 setBarButtonWidth:?];
    v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(groupsCopy, "count")}];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = groupsCopy;
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
            barButtonItems = [v8 barButtonItems];
            v11 = [v9 initWithCapacity:{objc_msgSend(barButtonItems, "count")}];

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

            representativeItem = [v8 representativeItem];
            [v6 preferredSizeForButtonBarItem:representativeItem];
            *&v16 = v16;
            [v14 setRepresentativeItemWidth:v16];

            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            barButtonItems2 = [v8 barButtonItems];
            v18 = [barButtonItems2 countByEnumeratingWithState:&v34 objects:v51 count:16];
            if (v18)
            {
              v19 = *v35;
              do
              {
                for (j = 0; j != v18; ++j)
                {
                  if (*v35 != v19)
                  {
                    objc_enumerationMutation(barButtonItems2);
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

                v18 = [barButtonItems2 countByEnumeratingWithState:&v34 objects:v51 count:16];
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

- (id)remoteAssistantItemForResponder:(id)responder
{
  responderCopy = responder;
  _responderWindow = [responderCopy _responderWindow];
  windowScene = [_responderWindow windowScene];
  keyboardSceneDelegate = [windowScene keyboardSceneDelegate];
  systemInputAssistantViewController = [keyboardSceneDelegate systemInputAssistantViewController];

  if ([systemInputAssistantViewController _assistantItemsVisibleForResponder:responderCopy] && (objc_msgSend(systemInputAssistantViewController, "observedInputAssistantItem"), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    observedInputAssistantItem = [systemInputAssistantViewController observedInputAssistantItem];
  }

  else
  {
    observedInputAssistantItem = [responderCopy inputAssistantItem];
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
    [v14 setShowsBarButtonItemsInline:{objc_msgSend(observedInputAssistantItem, "_showsBarButtonItemsInline")}];
    if (objc_opt_respondsToSelector())
    {
      inputDashboardViewController = [responderCopy inputDashboardViewController];
      [v14 setShowsInputDashboardViewController:inputDashboardViewController != 0];
    }

    else
    {
      [v14 setShowsInputDashboardViewController:0];
    }

    if ([v14 showsInputDashboardViewController])
    {
      inputDashboardViewController2 = [responderCopy inputDashboardViewController];
      v17 = objc_opt_respondsToSelector();

      if (v17)
      {
        inputDashboardViewController3 = [responderCopy inputDashboardViewController];
        inputDashboardViewController4 = [responderCopy inputDashboardViewController];
        traitCollection = [inputDashboardViewController4 traitCollection];
        [inputDashboardViewController3 preferredWidthForTraitCollection:traitCollection];
        *&v21 = v21;
        [v14 setCenterViewPreferredWidth:v21];
      }
    }

    _detachedTintColor = [observedInputAssistantItem _detachedTintColor];
    [v14 setDetachedTintColor:_detachedTintColor];

    _detachedBackgroundColor = [observedInputAssistantItem _detachedBackgroundColor];
    [v14 setDetachedBackgroundColor:_detachedBackgroundColor];

    [v14 setVisibleWhenMinimized:{objc_msgSend(observedInputAssistantItem, "_isVisibleWhenMinimized")}];
    leadingBarButtonGroups = [observedInputAssistantItem leadingBarButtonGroups];
    v25 = [(UIRemoteInputViewHost *)self rtiGroupsForBarButtonItemGroups:leadingBarButtonGroups];
    [v14 setLeadingBarButtonGroups:v25];

    trailingBarButtonGroups = [observedInputAssistantItem trailingBarButtonGroups];
    v27 = [(UIRemoteInputViewHost *)self rtiGroupsForBarButtonItemGroups:trailingBarButtonGroups];
    [v14 setTrailingBarButtonGroups:v27];

    v28 = v14;
  }

  return v14;
}

- (id)settingsScene
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  scene = [v2 scene];
  if (!scene)
  {
    responder = [v2 responder];
    _responderWindow = [responder _responderWindow];
    scene = [_responderWindow windowScene];
  }

  return scene;
}

@end