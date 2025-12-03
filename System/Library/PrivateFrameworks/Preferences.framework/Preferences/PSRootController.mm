@interface PSRootController
+ (id)readPreferenceValue:(id)value;
+ (void)setPreferenceValue:(id)value specifier:(id)specifier;
+ (void)writePreference:(id)preference;
- (BOOL)_isBridgeBundle;
- (PSRootController)initWithCoder:(id)coder;
- (PSRootController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (PSRootController)initWithRootViewController:(id)controller;
- (PSRootController)initWithTitle:(id)title identifier:(id)identifier;
- (id)aggregateDictionaryPath;
- (id)contentViewForTopController;
- (id)popToRootViewControllerAnimated:(BOOL)animated;
- (id)popToViewController:(id)controller animated:(BOOL)animated;
- (id)popViewControllerAnimated:(BOOL)animated;
- (id)tasksDescription;
- (unint64_t)supportedInterfaceOrientations;
- (void)_delayedControllerReleaseAfterPop:(id)pop;
- (void)addTask:(id)task;
- (void)commonInit;
- (void)dealloc;
- (void)didDismissFormSheetView;
- (void)didDismissPopupView;
- (void)didLock;
- (void)didUnlock;
- (void)didWake;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)logSettingsPath;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)sendWillBecomeActive;
- (void)sendWillResignActive;
- (void)setSpecifier:(id)specifier;
- (void)setViewControllers:(id)controllers animated:(BOOL)animated;
- (void)showController:(id)controller animate:(BOOL)animate;
- (void)showLeftButton:(id)button withStyle:(int64_t)style rightButton:(id)rightButton withStyle:(int64_t)withStyle;
- (void)statusBarWillChangeHeight:(id)height;
- (void)suspend;
- (void)taskFinished:(id)finished;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willDismissFormSheetView;
- (void)willDismissPopupView;
- (void)willUnlock;
@end

@implementation PSRootController

- (void)commonInit
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_sendWillBecomeActive name:*MEMORY[0x1E69DDAB0] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_sendWillResignActive name:*MEMORY[0x1E69DDBC8] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_statusBarWillChangeHeight_ name:*MEMORY[0x1E69DDBB0] object:0];

  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  tasks = self->_tasks;
  self->_tasks = v6;

  [(PSRootController *)self setDelegate:self];
}

- (void)logSettingsPath
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  selfCopy = self;
  _os_log_fault_impl(&dword_18B008000, a2, OS_LOG_TYPE_FAULT, "logSettingsPath %{public}@: PSViewController's PSIDKey == nil AND identifier == nil. This breaks Settings' Search.", &v2, 0xCu);
}

- (void)sendWillBecomeActive
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _PSLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[PSRootController sendWillBecomeActive]";
    _os_log_impl(&dword_18B008000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(PSRootController *)self willBecomeActive];
  viewControllers = [(PSRootController *)self viewControllers];
  [viewControllers enumerateObjectsUsingBlock:&__block_literal_global_149];
}

+ (void)writePreference:(id)preference
{
  v51[1] = *MEMORY[0x1E69E9840];
  preferenceCopy = preference;
  v4 = [preferenceCopy propertyForKey:@"key"];
  v5 = [preferenceCopy propertyForKey:@"defaults"];
  v6 = [preferenceCopy propertyForKey:@"containerBundleID"];
  if (v5)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = _PSLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B008000, v8, OS_LOG_TYPE_DEFAULT, "writePreference: bad dictionary", buf, 2u);
    }
  }

  else
  {
    v9 = [preferenceCopy propertyForKey:@"value"];
    v8 = v9;
    if (v9 || ([preferenceCopy propertyForKey:@"default"], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = [preferenceCopy propertyForKey:@"negate"];
      bOOLValue = [v10 BOOLValue];

      if (bOOLValue)
      {
        v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject BOOLValue](v8, "BOOLValue") ^ 1}];

        v8 = v12;
      }

      if ([(__CFString *)v5 isEqualToString:@"STANDARD"])
      {
        standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
        [standardUserDefaults setObject:v8 forKey:v4];
        [standardUserDefaults synchronize];
      }

      else
      {
        v14 = [preferenceCopy propertyForKey:@"isPerGizmo"];
        bOOLValue2 = [v14 BOOLValue];

        v41 = bOOLValue2;
        if (bOOLValue2)
        {
          v16 = [objc_alloc(getNPSDomainAccessorClass()) initWithDomain:v5];
          v17 = v16;
          if (v16)
          {
            [v16 setObject:v8 forKey:v4];
            synchronize = [v17 synchronize];
          }

          else
          {
            NSLog(&cfstr_FailedToInstan.isa, v5);
          }
        }

        else
        {
          v19 = [preferenceCopy propertyForKey:@"appGroupBundleID"];

          if (v19 && v6)
          {
            v40 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v5];
            groupContainerURLs = [v40 groupContainerURLs];
            v21 = [preferenceCopy propertyForKey:@"appGroupBundleID"];
            v22 = [groupContainerURLs objectForKey:v21];
            path = [v22 path];

            _CFPreferencesSetAppValueWithContainer();
            _CFPreferencesAppSynchronizeWithContainer();
          }

          else
          {
            if (v6)
            {
              v24 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v6];
              dataContainerURL = [v24 dataContainerURL];
              path2 = [dataContainerURL path];

              _CFPreferencesSetAppValueWithContainer();
              _CFPreferencesAppSynchronizeWithContainer();
            }

            else
            {
              v27 = *MEMORY[0x1E695E8B8];
              v28 = *MEMORY[0x1E695E898];
              CFPreferencesSetValue(v4, v8, v5, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
              CFPreferencesSynchronize(v5, v27, v28);
            }

            GSSendAppPreferencesChanged();
          }
        }

        v29 = [preferenceCopy propertyForKey:@"notifyNano"];
        bOOLValue3 = [v29 BOOLValue];

        if (bOOLValue3)
        {
          v47 = 0;
          v48 = &v47;
          v49 = 0x2050000000;
          v31 = getNPSManagerClass_softClass;
          v50 = getNPSManagerClass_softClass;
          if (!getNPSManagerClass_softClass)
          {
            *buf = MEMORY[0x1E69E9820];
            v43 = 3221225472;
            v44 = __getNPSManagerClass_block_invoke;
            v45 = &unk_1E71DBC78;
            v46 = &v47;
            __getNPSManagerClass_block_invoke(buf);
            v31 = v48[3];
          }

          v32 = v31;
          _Block_object_dispose(&v47, 8);
          v33 = objc_opt_new();
          if (v41)
          {
            v34 = MEMORY[0x1E695DFD8];
            v51[0] = v4;
            v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
            v36 = [v34 setWithArray:v35];
            [v33 synchronizeNanoDomain:v5 keys:v36];
          }

          else
          {
            v35 = [preferenceCopy propertyForKey:@"containerBundleID"];
            v36 = [preferenceCopy propertyForKey:@"appGroupBundleID"];
            v37 = [MEMORY[0x1E695DFD8] setWithObject:v4];
            [v33 synchronizeUserDefaultsDomain:v5 keys:v37 container:v35 appGroupContainer:v36];
          }
        }
      }

      v38 = [preferenceCopy propertyForKey:@"PostNotification"];

      if (v38)
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, [preferenceCopy propertyForKey:@"PostNotification"], 0, 0, 1u);
      }
    }
  }
}

+ (void)setPreferenceValue:(id)value specifier:(id)specifier
{
  valueCopy = value;
  specifierCopy = specifier;
  if (valueCopy)
  {
    v6 = [specifierCopy propertyForKey:@"value"];
    v7 = [valueCopy isEqual:v6];

    if ((v7 & 1) == 0)
    {
      [specifierCopy setProperty:valueCopy forKey:@"value"];
      [PSRootController writePreference:specifierCopy];
    }
  }
}

+ (id)readPreferenceValue:(id)value
{
  valueCopy = value;
  v4 = [valueCopy propertyForKey:@"defaults"];
  v5 = [valueCopy propertyForKey:@"containerBundleID"];
  v6 = [valueCopy propertyForKey:@"key"];
  v7 = v6;
  if (v4)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_6;
  }

  if ([(__CFString *)v4 isEqualToString:@"STANDARD"])
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v10 = [standardUserDefaults objectForKey:v7];
    if (v10)
    {
      v11 = v10;
      v12 = [valueCopy propertyForKey:@"negate"];
      bOOLValue = [v12 BOOLValue];

      if (!bOOLValue)
      {
LABEL_11:
        [valueCopy setProperty:v11 forKey:@"value"];

LABEL_30:
        standardUserDefaults = [valueCopy propertyForKey:@"value"];
        goto LABEL_31;
      }

LABEL_10:
      v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v11, "BOOLValue") ^ 1}];

      v11 = v14;
      goto LABEL_11;
    }

    v23 = [valueCopy propertyForKey:@"default"];
    if (v23)
    {
      v11 = v23;
      v24 = [valueCopy propertyForKey:@"negate"];
      bOOLValue2 = [v24 BOOLValue];

      if ((bOOLValue2 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_6:
    standardUserDefaults = 0;
    goto LABEL_31;
  }

  v15 = [valueCopy propertyForKey:@"isPerGizmo"];
  bOOLValue3 = [v15 BOOLValue];

  if (bOOLValue3)
  {
    v17 = [objc_alloc(getNPSDomainAccessorClass()) initWithDomain:v4];
    v18 = v17;
    if (v17)
    {
      standardUserDefaults = [v17 objectForKey:v7];
    }

    else
    {
      NSLog(&cfstr_FailedToInstan.isa, v4);
      standardUserDefaults = 0;
    }

LABEL_26:

    if (standardUserDefaults)
    {
      goto LABEL_27;
    }

    goto LABEL_36;
  }

  v19 = [valueCopy propertyForKey:@"appGroupBundleID"];

  if (v19)
  {
    v20 = v5 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    v18 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v4];
    groupContainerURLs = [v18 groupContainerURLs];
    v27 = [valueCopy propertyForKey:@"appGroupBundleID"];
    v28 = [groupContainerURLs objectForKey:v27];
    path = [v28 path];

    standardUserDefaults = _CFPreferencesCopyAppValueWithContainer();
    goto LABEL_26;
  }

  if (v5)
  {
    v18 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v5 placeholder:0];
    dataContainerURL = [v18 dataContainerURL];
    path2 = [dataContainerURL path];

    standardUserDefaults = _CFPreferencesCopyAppValueWithContainer();
    goto LABEL_26;
  }

  standardUserDefaults = CFPreferencesCopyValue(v7, v4, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (standardUserDefaults)
  {
LABEL_27:
    v30 = [valueCopy propertyForKey:@"negate"];
    bOOLValue4 = [v30 BOOLValue];

    if (!bOOLValue4)
    {
LABEL_29:
      [valueCopy setProperty:standardUserDefaults forKey:@"value"];
      goto LABEL_30;
    }

LABEL_28:
    v32 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(standardUserDefaults, "BOOLValue") ^ 1}];

    standardUserDefaults = v32;
    goto LABEL_29;
  }

LABEL_36:
  standardUserDefaults = [valueCopy propertyForKey:@"default"];
  if (standardUserDefaults)
  {
    v34 = [valueCopy propertyForKey:@"negate"];
    bOOLValue5 = [v34 BOOLValue];

    if ((bOOLValue5 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_31:

  return standardUserDefaults;
}

- (PSRootController)initWithCoder:(id)coder
{
  v11 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = _PSLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[PSRootController initWithCoder:]";
    _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = PSRootController;
  v6 = [(PSRootController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
    [(PSRootController *)v6 commonInit];
  }

  return v6;
}

- (PSRootController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = _PSLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[PSRootController initWithNavigationBarClass:toolbarClass:]";
    _os_log_impl(&dword_18B008000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v11.receiver = self;
  v11.super_class = PSRootController;
  v8 = [(PSRootController *)&v11 initWithNavigationBarClass:class toolbarClass:toolbarClass];
  v9 = v8;
  if (v8)
  {
    [(PSRootController *)v8 commonInit];
  }

  return v9;
}

- (PSRootController)initWithRootViewController:(id)controller
{
  v11 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v5 = _PSLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[PSRootController initWithRootViewController:]";
    _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = PSRootController;
  v6 = [(PSRootController *)&v8 initWithRootViewController:controllerCopy];

  if (v6)
  {
    [(PSRootController *)v6 commonInit];
  }

  return v6;
}

- (PSRootController)initWithTitle:(id)title identifier:(id)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  v6 = _PSLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[PSRootController initWithTitle:identifier:]";
    _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = PSRootController;
  v7 = [(PSRootController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(PSRootController *)v7 setTitle:titleCopy];
    [(PSRootController *)v8 commonInit];
  }

  return v8;
}

- (id)tasksDescription
{
  v16 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_tasks;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) description];
        [string appendFormat:@"%@\n", v9];
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return string;
}

- (void)addTask:(id)task
{
  taskCopy = task;
  [(PSRootController *)self busy];
  [(NSMutableSet *)self->_tasks addObject:taskCopy];
}

- (void)taskFinished:(id)finished
{
  [(NSMutableSet *)self->_tasks removeObject:finished];
  if (![(PSRootController *)self busy])
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
      [mEMORY[0x1E69DC668]2 performSelector:sel_controllerFinished_ withObject:self afterDelay:0.001];
    }
  }
}

- (id)contentViewForTopController
{
  selfCopy = [(PSRootController *)self topViewController];
  v4 = selfCopy;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  view = [selfCopy view];

  return view;
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (self->_specifier != specifierCopy)
  {
    v6 = specifierCopy;
    objc_storeStrong(&self->_specifier, specifier);
    specifierCopy = v6;
  }
}

- (void)showController:(id)controller animate:(BOOL)animate
{
  animateCopy = animate;
  controllerCopy = controller;
  childViewControllers = [(PSRootController *)self childViewControllers];
  if ([childViewControllers containsObject:controllerCopy])
  {
    v8 = _PSLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PSRootController showController:v8 animate:?];
    }

    v9 = _PSLoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PSRootController showController:animate:];
    }

    v10 = _PSLoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PSRootController showController:animate:];
    }
  }

  if ([controllerCopy conformsToProtocol:&unk_1EFE6C730])
  {
    [controllerCopy setParentController:self];
    [controllerCopy setRootController:self];
  }

  if (animateCopy)
  {
    [(PSRootController *)self showViewController:controllerCopy sender:self];
  }

  else
  {
    [(PSRootController *)self pushViewController:controllerCopy animated:0];
  }
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  completionCopy = completion;
  [(PSRootController *)self handleURL:l];
  v6 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v6 = completionCopy;
  }
}

- (void)showLeftButton:(id)button withStyle:(int64_t)style rightButton:(id)rightButton withStyle:(int64_t)withStyle
{
  v10 = MEMORY[0x1E69DC708];
  rightButtonCopy = rightButton;
  buttonCopy = button;
  v18 = objc_alloc_init(v10);
  [v18 setTitle:buttonCopy];

  [v18 setStyle:style];
  v13 = objc_alloc_init(MEMORY[0x1E69DC708]);
  [v13 setTitle:rightButtonCopy];

  [v13 setStyle:withStyle];
  navigationBar = [(PSRootController *)self navigationBar];
  topItem = [navigationBar topItem];
  [topItem setRightBarButtonItem:v13];

  navigationBar2 = [(PSRootController *)self navigationBar];
  topItem2 = [navigationBar2 topItem];
  [topItem2 setLeftBarButtonItem:v18];
}

- (void)statusBarWillChangeHeight:(id)height
{
  v30 = *MEMORY[0x1E69E9840];
  userInfo = [height userInfo];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  statusBar = [mEMORY[0x1E69DC668] statusBar];

  v7 = [userInfo objectForKey:*MEMORY[0x1E69DDB90]];
  v8 = v7;
  if (statusBar)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v24 = userInfo;
    [statusBar frame];
    v11 = v10;
    [statusBar frame];
    if (v11 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    [v8 CGRectValue];
    v15 = v14;
    [v8 CGRectValue];
    v25 = 0u;
    v26 = 0u;
    if (v15 >= v16)
    {
      v15 = v16;
    }

    v27 = 0uLL;
    v28 = 0uLL;
    viewControllers = [(PSRootController *)self viewControllers];
    v18 = [viewControllers countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = v13 - v15;
      v21 = *v26;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(viewControllers);
          }

          v23 = *(*(&v25 + 1) + 8 * i);
          if ([v23 conformsToProtocol:&unk_1EFE6C730] && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v23 statusBarWillAnimateByHeight:v20];
          }
        }

        v19 = [viewControllers countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v19);
    }

    userInfo = v24;
  }
}

- (void)sendWillResignActive
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _PSLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[PSRootController sendWillResignActive]";
    _os_log_impl(&dword_18B008000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(PSRootController *)self willResignActive];
  viewControllers = [(PSRootController *)self viewControllers];
  [viewControllers enumerateObjectsUsingBlock:&__block_literal_global_12];
}

void __40__PSRootController_sendWillResignActive__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_1EFE6C730] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v2 willResignActive];
  }
}

void __40__PSRootController_sendWillBecomeActive__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_1EFE6C730] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v2 willBecomeActive];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  result = self->_supportedOrientationsOverride;
  if (!result)
  {
    return PSSupportedOrientations();
  }

  return result;
}

- (void)suspend
{
  viewControllers = [(PSRootController *)self viewControllers];
  [viewControllers enumerateObjectsUsingBlock:&__block_literal_global_152];
}

void __27__PSRootController_suspend__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_1EFE6C730] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v2 suspend];
  }
}

- (void)didLock
{
  viewControllers = [(PSRootController *)self viewControllers];
  [viewControllers enumerateObjectsUsingBlock:&__block_literal_global_155];
}

void __27__PSRootController_didLock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_1EFE6C730] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v2 didLock];
  }
}

- (void)willUnlock
{
  viewControllers = [(PSRootController *)self viewControllers];
  [viewControllers enumerateObjectsUsingBlock:&__block_literal_global_158];
}

void __30__PSRootController_willUnlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_1EFE6C730] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v2 willUnlock];
  }
}

- (void)didUnlock
{
  viewControllers = [(PSRootController *)self viewControllers];
  [viewControllers enumerateObjectsUsingBlock:&__block_literal_global_161];
}

void __29__PSRootController_didUnlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_1EFE6C730] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v2 didUnlock];
  }
}

- (void)didWake
{
  viewControllers = [(PSRootController *)self viewControllers];
  [viewControllers enumerateObjectsUsingBlock:&__block_literal_global_164];
}

void __27__PSRootController_didWake__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_1EFE6C730] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v2 didWake];
  }
}

- (void)dealloc
{
  v19 = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  self->_deallocating = 1;
  if ([(PSRootController *)self isViewLoaded])
  {
    view = [(PSRootController *)self view];
    firstResponder = [view firstResponder];
    [firstResponder resignFirstResponder];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  viewControllers = [(PSRootController *)self viewControllers];
  v7 = [viewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(viewControllers);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 conformsToProtocol:&unk_1EFE6C730])
        {
          [v11 setRootController:0];
        }
      }

      v8 = [viewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self];

  v13.receiver = self;
  v13.super_class = PSRootController;
  [(PSRootController *)&v13 dealloc];
}

- (id)aggregateDictionaryPath
{
  v37 = *MEMORY[0x1E69E9840];
  if (PSIsRunningInAssistant())
  {
    v3 = 0;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = MEMORY[0x1E695DF70];
    viewControllers = [(PSRootController *)self viewControllers];
    v7 = [v5 arrayWithArray:viewControllers];

    letterCharacterSet = [MEMORY[0x1E696AB08] letterCharacterSet];
    invertedSet = [letterCharacterSet invertedSet];

    firstObject = [v7 firstObject];
    v10 = &selRef_observer_removeBulletin_;
    v11 = [firstObject conformsToProtocol:&unk_1EFE6C730];

    if (v11)
    {
      firstObject2 = [v7 firstObject];
      specifier = [firstObject2 specifier];
      v14 = [specifier objectForKeyedSubscript:@"id"];

      if (!v14)
      {
        [v7 removeObject:firstObject2];
      }
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = v7;
    v16 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v33;
      v30 = @"id";
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v32 + 1) + 8 * i);
          if ([v20 conformsToProtocol:{v10[204], v30}])
          {
            v21 = v4;
            v22 = v20;
            specifier2 = [v22 specifier];
            v24 = [specifier2 objectForKeyedSubscript:v30];

            lastPathComponent = [v24 lastPathComponent];

            if (!lastPathComponent || [lastPathComponent rangeOfString:@"[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}" options:1025] != 0x7FFFFFFFFFFFFFFFLL)
            {

              v3 = 0;
              v4 = v21;
              goto LABEL_20;
            }

            v26 = [lastPathComponent stringByReplacingCharactersInSet:invertedSet withCharacter:95];
            [v26 lowercaseString];
            v28 = v27 = v10;

            v4 = v21;
            [v21 addObject:v28];

            v10 = v27;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v3 = [v4 componentsJoinedByString:@"."];
LABEL_20:
  }

  return v3;
}

- (void)willDismissPopupView
{
  v14 = *MEMORY[0x1E69E9840];
  topViewController = [(PSRootController *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [topViewController popupViewWillDisappear];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  childViewControllers = [topViewController childViewControllers];
  v4 = [childViewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(childViewControllers);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 popupViewWillDisappear];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [childViewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)didDismissPopupView
{
  v14 = *MEMORY[0x1E69E9840];
  topViewController = [(PSRootController *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [topViewController popupViewDidDisappear];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  childViewControllers = [topViewController childViewControllers];
  v4 = [childViewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(childViewControllers);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 popupViewDidDisappear];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [childViewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)willDismissFormSheetView
{
  v14 = *MEMORY[0x1E69E9840];
  topViewController = [(PSRootController *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [topViewController formSheetViewWillDisappear];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  childViewControllers = [topViewController childViewControllers];
  v4 = [childViewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(childViewControllers);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 formSheetViewWillDisappear];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [childViewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)didDismissFormSheetView
{
  v14 = *MEMORY[0x1E69E9840];
  topViewController = [(PSRootController *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [topViewController formSheetViewDidDisappear];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  childViewControllers = [topViewController childViewControllers];
  v4 = [childViewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(childViewControllers);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 formSheetViewDidDisappear];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [childViewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_delayedControllerReleaseAfterPop:(id)pop
{
  v26 = *MEMORY[0x1E69E9840];
  popCopy = pop;
  v4 = [popCopy mutableCopy];
  v5 = dispatch_time(0, 360000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PSRootController__delayedControllerReleaseAfterPop___block_invoke;
  block[3] = &unk_1E71DBE20;
  v6 = v4;
  v24 = v6;
  dispatch_after(v5, MEMORY[0x1E69E96A0], block);
  weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = popCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [weakObjectsPointerArray addPointer:*(*(&v19 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v10);
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  sf_isInternalInstall = [currentDevice sf_isInternalInstall];

  if (sf_isInternalInstall)
  {
    v15 = dispatch_time(0, 15000000000);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __54__PSRootController__delayedControllerReleaseAfterPop___block_invoke_188;
    v17[3] = &unk_1E71DBE20;
    v18 = weakObjectsPointerArray;
    v16 = MEMORY[0x1E69E96A0];
    dispatch_after(v15, MEMORY[0x1E69E96A0], v17);
  }
}

uint64_t __54__PSRootController__delayedControllerReleaseAfterPop___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) count];
  if (result)
  {
    *&v3 = 138543362;
    v8 = v3;
    do
    {
      v4 = [*(a1 + 32) lastObject];
      v5 = _PSLoggingFacility();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_opt_class();
        *buf = v8;
        v10 = v6;
        v7 = v6;
        _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "Delayed release after nav pop: %{public}@", buf, 0xCu);
      }

      [*(a1 + 32) removeLastObject];
      result = [*(a1 + 32) count];
    }

    while (result);
  }

  return result;
}

void __54__PSRootController__delayedControllerReleaseAfterPop___block_invoke_188(uint64_t a1)
{
  v1 = MEMORY[0x1E69DD258];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __54__PSRootController__delayedControllerReleaseAfterPop___block_invoke_2;
  v2[3] = &unk_1E71DC998;
  v3 = *(a1 + 32);
  [v1 _traverseViewControllerHierarchy:v2];
}

void __54__PSRootController__delayedControllerReleaseAfterPop___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [*(a1 + 32) allObjects];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if (*(*(&v13 + 1) + 8 * v10) == v5)
          {
            v11 = _PSLoggingFacility();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v18 = "[PSRootController _delayedControllerReleaseAfterPop:]_block_invoke_2";
              v19 = 2112;
              v20 = v5;
              _os_log_error_impl(&dword_18B008000, v11, OS_LOG_TYPE_ERROR, "%s: View controller %@ still exists 15s after being popped from nav stack.", buf, 0x16u);
            }

            v12 = _PSLoggingFacility();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315394;
              v18 = "[PSRootController _delayedControllerReleaseAfterPop:]_block_invoke";
              v19 = 2112;
              v20 = v5;
              _os_log_fault_impl(&dword_18B008000, v12, OS_LOG_TYPE_FAULT, "%s: View controller %@ still exists 15s after being popped from nav stack.", buf, 0x16u);
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v21 count:16];
      }

      while (v8);
    }
  }
}

- (id)popViewControllerAnimated:(BOOL)animated
{
  v13.receiver = self;
  v13.super_class = PSRootController;
  v4 = [(PSRootController *)&v13 popViewControllerAnimated:animated];
  if ([v4 conformsToProtocol:&unk_1EFE6C730])
  {
    parentController = [v4 parentController];
    rootController = [v4 rootController];
    [v4 setParentController:0];
    [v4 setRootController:0];
    transitionCoordinator = [(PSRootController *)self transitionCoordinator];
    if (transitionCoordinator)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __46__PSRootController_popViewControllerAnimated___block_invoke;
      v9[3] = &unk_1E71DC9C0;
      v10 = v4;
      v11 = parentController;
      v12 = rootController;
      [transitionCoordinator notifyWhenInteractionChangesUsingBlock:v9];
    }
  }

  return v4;
}

uint64_t __46__PSRootController_popViewControllerAnimated___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    [*(a1 + 32) setParentController:*(a1 + 40)];
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);

    return [v4 setRootController:v5];
  }

  return result;
}

- (id)popToViewController:(id)controller animated:(BOOL)animated
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = PSRootController;
  v5 = [(PSRootController *)&v16 popToViewController:controller animated:animated];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 conformsToProtocol:&unk_1EFE6C730])
        {
          [v10 setRootController:0];
          [v10 setParentController:0];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  [(PSRootController *)self _delayedControllerReleaseAfterPop:v5];

  return v5;
}

- (id)popToRootViewControllerAnimated:(BOOL)animated
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PSRootController;
  v4 = [(PSRootController *)&v15 popToRootViewControllerAnimated:animated];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 conformsToProtocol:&unk_1EFE6C730])
        {
          [v9 setRootController:0];
          [v9 setParentController:0];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  [(PSRootController *)self _delayedControllerReleaseAfterPop:v4];

  return v4;
}

- (void)setViewControllers:(id)controllers animated:(BOOL)animated
{
  animatedCopy = animated;
  v34 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  viewControllers = [(PSRootController *)self viewControllers];
  v8 = [viewControllers countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(viewControllers);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        if ([v12 conformsToProtocol:&unk_1EFE6C730])
        {
          [v12 setRootController:0];
          [v12 setParentController:0];
        }
      }

      v9 = [viewControllers countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v9);
  }

  selfCopy = self;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = controllersCopy;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  v16 = selfCopy;
  if (v15)
  {
    v17 = v15;
    v18 = *v25;
    v16 = selfCopy;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v24 + 1) + 8 * j);
        if ([v20 conformsToProtocol:&unk_1EFE6C730])
        {
          [v20 setRootController:selfCopy];
          [v20 setParentController:v16];
          v21 = v20;

          v16 = v21;
        }
      }

      v17 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v17);
  }

  viewControllers2 = [(PSRootController *)selfCopy viewControllers];
  [(PSRootController *)selfCopy _delayedControllerReleaseAfterPop:viewControllers2];

  v23.receiver = selfCopy;
  v23.super_class = PSRootController;
  [(PSRootController *)&v23 setViewControllers:v14 animated:animatedCopy];
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  v7 = MEMORY[0x1E696AD80];
  v8 = MEMORY[0x1E695DF20];
  controllerCopy = controller;
  disappearingViewController = [controllerCopy disappearingViewController];
  v11 = MEMORY[0x1E696AD98];
  lastOperation = [controllerCopy lastOperation];

  v13 = [v11 numberWithInt:lastOperation];
  v14 = [v8 dictionaryWithObjectsAndKeys:{viewControllerCopy, @"appearing", disappearingViewController, @"disappearing", v13, @"operation", 0}];
  v15 = [v7 notificationWithName:@"PSNavigationControllerWillShow" object:self userInfo:v14];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotification:v15];

  viewControllers = [(PSRootController *)self viewControllers];
  LODWORD(v7) = [viewControllers containsObject:viewControllerCopy];

  if (v7)
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [MEMORY[0x1E69CA9B0] trackingViewControllersVisitedInRootController:v19];
    [(PSRootController *)self logSettingsPath];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if ([(PSRootController *)self isMovingFromParentViewController]&& !disappearCopy)
  {
    topViewController = [(PSRootController *)self topViewController];
    navigationItem = [topViewController navigationItem];
    [navigationItem setSearchController:0];
  }

  v7.receiver = self;
  v7.super_class = PSRootController;
  [(PSRootController *)&v7 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v17 = *MEMORY[0x1E69E9840];
  if (![(PSRootController *)self _isBridgeBundle]&& [(PSRootController *)self isMovingFromParentViewController])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    viewControllers = [(PSRootController *)self viewControllers];
    reverseObjectEnumerator = [viewControllers reverseObjectEnumerator];

    v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          [*(*(&v12 + 1) + 8 * v10++) viewDidDisappear:disappearCopy];
        }

        while (v8 != v10);
        v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [(PSRootController *)self setViewControllers:MEMORY[0x1E695E0F0]];
  }

  v11.receiver = self;
  v11.super_class = PSRootController;
  [(PSRootController *)&v11 viewDidDisappear:disappearCopy];
}

- (BOOL)_isBridgeBundle
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.Bridge"];

  return v4;
}

- (void)showController:(os_log_t)log animate:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[PSRootController showController:animate:]";
  _os_log_error_impl(&dword_18B008000, log, OS_LOG_TYPE_ERROR, "%s: pushing a view controller that's already in the stack.", &v1, 0xCu);
}

- (void)showController:animate:.cold.2()
{
  v0 = [MEMORY[0x1E69DD258] _printHierarchy];
  OUTLINED_FUNCTION_0_2(&dword_18B008000, v1, v2, "%{public}@", v3, v4, v5, v6, 2u);
}

- (void)showController:animate:.cold.3()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  OUTLINED_FUNCTION_0_2(&dword_18B008000, v1, v2, "%{public}@", v3, v4, v5, v6, 2u);
}

@end