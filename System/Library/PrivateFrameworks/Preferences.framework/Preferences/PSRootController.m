@interface PSRootController
+ (id)readPreferenceValue:(id)a3;
+ (void)setPreferenceValue:(id)a3 specifier:(id)a4;
+ (void)writePreference:(id)a3;
- (BOOL)_isBridgeBundle;
- (PSRootController)initWithCoder:(id)a3;
- (PSRootController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (PSRootController)initWithRootViewController:(id)a3;
- (PSRootController)initWithTitle:(id)a3 identifier:(id)a4;
- (id)aggregateDictionaryPath;
- (id)contentViewForTopController;
- (id)popToRootViewControllerAnimated:(BOOL)a3;
- (id)popToViewController:(id)a3 animated:(BOOL)a4;
- (id)popViewControllerAnimated:(BOOL)a3;
- (id)tasksDescription;
- (unint64_t)supportedInterfaceOrientations;
- (void)_delayedControllerReleaseAfterPop:(id)a3;
- (void)addTask:(id)a3;
- (void)commonInit;
- (void)dealloc;
- (void)didDismissFormSheetView;
- (void)didDismissPopupView;
- (void)didLock;
- (void)didUnlock;
- (void)didWake;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)logSettingsPath;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)sendWillBecomeActive;
- (void)sendWillResignActive;
- (void)setSpecifier:(id)a3;
- (void)setViewControllers:(id)a3 animated:(BOOL)a4;
- (void)showController:(id)a3 animate:(BOOL)a4;
- (void)showLeftButton:(id)a3 withStyle:(int64_t)a4 rightButton:(id)a5 withStyle:(int64_t)a6;
- (void)statusBarWillChangeHeight:(id)a3;
- (void)suspend;
- (void)taskFinished:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willDismissFormSheetView;
- (void)willDismissPopupView;
- (void)willUnlock;
@end

@implementation PSRootController

- (void)commonInit
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_sendWillBecomeActive name:*MEMORY[0x1E69DDAB0] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel_sendWillResignActive name:*MEMORY[0x1E69DDBC8] object:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel_statusBarWillChangeHeight_ name:*MEMORY[0x1E69DDBB0] object:0];

  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  tasks = self->_tasks;
  self->_tasks = v6;

  [(PSRootController *)self setDelegate:self];
}

- (void)logSettingsPath
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
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
  v4 = [(PSRootController *)self viewControllers];
  [v4 enumerateObjectsUsingBlock:&__block_literal_global_149];
}

+ (void)writePreference:(id)a3
{
  v51[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 propertyForKey:@"key"];
  v5 = [v3 propertyForKey:@"defaults"];
  v6 = [v3 propertyForKey:@"containerBundleID"];
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
    v9 = [v3 propertyForKey:@"value"];
    v8 = v9;
    if (v9 || ([v3 propertyForKey:@"default"], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = [v3 propertyForKey:@"negate"];
      v11 = [v10 BOOLValue];

      if (v11)
      {
        v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject BOOLValue](v8, "BOOLValue") ^ 1}];

        v8 = v12;
      }

      if ([(__CFString *)v5 isEqualToString:@"STANDARD"])
      {
        v13 = [MEMORY[0x1E695E000] standardUserDefaults];
        [v13 setObject:v8 forKey:v4];
        [v13 synchronize];
      }

      else
      {
        v14 = [v3 propertyForKey:@"isPerGizmo"];
        v15 = [v14 BOOLValue];

        v41 = v15;
        if (v15)
        {
          v16 = [objc_alloc(getNPSDomainAccessorClass()) initWithDomain:v5];
          v17 = v16;
          if (v16)
          {
            [v16 setObject:v8 forKey:v4];
            v18 = [v17 synchronize];
          }

          else
          {
            NSLog(&cfstr_FailedToInstan.isa, v5);
          }
        }

        else
        {
          v19 = [v3 propertyForKey:@"appGroupBundleID"];

          if (v19 && v6)
          {
            v40 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v5];
            v20 = [v40 groupContainerURLs];
            v21 = [v3 propertyForKey:@"appGroupBundleID"];
            v22 = [v20 objectForKey:v21];
            v23 = [v22 path];

            _CFPreferencesSetAppValueWithContainer();
            _CFPreferencesAppSynchronizeWithContainer();
          }

          else
          {
            if (v6)
            {
              v24 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v6];
              v25 = [v24 dataContainerURL];
              v26 = [v25 path];

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

        v29 = [v3 propertyForKey:@"notifyNano"];
        v30 = [v29 BOOLValue];

        if (v30)
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
            v35 = [v3 propertyForKey:@"containerBundleID"];
            v36 = [v3 propertyForKey:@"appGroupBundleID"];
            v37 = [MEMORY[0x1E695DFD8] setWithObject:v4];
            [v33 synchronizeUserDefaultsDomain:v5 keys:v37 container:v35 appGroupContainer:v36];
          }
        }
      }

      v38 = [v3 propertyForKey:@"PostNotification"];

      if (v38)
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, [v3 propertyForKey:@"PostNotification"], 0, 0, 1u);
      }
    }
  }
}

+ (void)setPreferenceValue:(id)a3 specifier:(id)a4
{
  v8 = a3;
  v5 = a4;
  if (v8)
  {
    v6 = [v5 propertyForKey:@"value"];
    v7 = [v8 isEqual:v6];

    if ((v7 & 1) == 0)
    {
      [v5 setProperty:v8 forKey:@"value"];
      [PSRootController writePreference:v5];
    }
  }
}

+ (id)readPreferenceValue:(id)a3
{
  v3 = a3;
  v4 = [v3 propertyForKey:@"defaults"];
  v5 = [v3 propertyForKey:@"containerBundleID"];
  v6 = [v3 propertyForKey:@"key"];
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
    v9 = [MEMORY[0x1E695E000] standardUserDefaults];
    v10 = [v9 objectForKey:v7];
    if (v10)
    {
      v11 = v10;
      v12 = [v3 propertyForKey:@"negate"];
      v13 = [v12 BOOLValue];

      if (!v13)
      {
LABEL_11:
        [v3 setProperty:v11 forKey:@"value"];

LABEL_30:
        v9 = [v3 propertyForKey:@"value"];
        goto LABEL_31;
      }

LABEL_10:
      v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v11, "BOOLValue") ^ 1}];

      v11 = v14;
      goto LABEL_11;
    }

    v23 = [v3 propertyForKey:@"default"];
    if (v23)
    {
      v11 = v23;
      v24 = [v3 propertyForKey:@"negate"];
      v25 = [v24 BOOLValue];

      if ((v25 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_31;
  }

  v15 = [v3 propertyForKey:@"isPerGizmo"];
  v16 = [v15 BOOLValue];

  if (v16)
  {
    v17 = [objc_alloc(getNPSDomainAccessorClass()) initWithDomain:v4];
    v18 = v17;
    if (v17)
    {
      v9 = [v17 objectForKey:v7];
    }

    else
    {
      NSLog(&cfstr_FailedToInstan.isa, v4);
      v9 = 0;
    }

LABEL_26:

    if (v9)
    {
      goto LABEL_27;
    }

    goto LABEL_36;
  }

  v19 = [v3 propertyForKey:@"appGroupBundleID"];

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
    v26 = [v18 groupContainerURLs];
    v27 = [v3 propertyForKey:@"appGroupBundleID"];
    v28 = [v26 objectForKey:v27];
    v29 = [v28 path];

    v9 = _CFPreferencesCopyAppValueWithContainer();
    goto LABEL_26;
  }

  if (v5)
  {
    v18 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v5 placeholder:0];
    v21 = [v18 dataContainerURL];
    v22 = [v21 path];

    v9 = _CFPreferencesCopyAppValueWithContainer();
    goto LABEL_26;
  }

  v9 = CFPreferencesCopyValue(v7, v4, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v9)
  {
LABEL_27:
    v30 = [v3 propertyForKey:@"negate"];
    v31 = [v30 BOOLValue];

    if (!v31)
    {
LABEL_29:
      [v3 setProperty:v9 forKey:@"value"];
      goto LABEL_30;
    }

LABEL_28:
    v32 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "BOOLValue") ^ 1}];

    v9 = v32;
    goto LABEL_29;
  }

LABEL_36:
  v9 = [v3 propertyForKey:@"default"];
  if (v9)
  {
    v34 = [v3 propertyForKey:@"negate"];
    v35 = [v34 BOOLValue];

    if ((v35 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_31:

  return v9;
}

- (PSRootController)initWithCoder:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _PSLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[PSRootController initWithCoder:]";
    _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = PSRootController;
  v6 = [(PSRootController *)&v8 initWithCoder:v4];

  if (v6)
  {
    [(PSRootController *)v6 commonInit];
  }

  return v6;
}

- (PSRootController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
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
  v8 = [(PSRootController *)&v11 initWithNavigationBarClass:a3 toolbarClass:a4];
  v9 = v8;
  if (v8)
  {
    [(PSRootController *)v8 commonInit];
  }

  return v9;
}

- (PSRootController)initWithRootViewController:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _PSLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[PSRootController initWithRootViewController:]";
    _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = PSRootController;
  v6 = [(PSRootController *)&v8 initWithRootViewController:v4];

  if (v6)
  {
    [(PSRootController *)v6 commonInit];
  }

  return v6;
}

- (PSRootController)initWithTitle:(id)a3 identifier:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
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
    [(PSRootController *)v7 setTitle:v5];
    [(PSRootController *)v8 commonInit];
  }

  return v8;
}

- (id)tasksDescription
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] string];
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
        [v3 appendFormat:@"%@\n", v9];
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)addTask:(id)a3
{
  v4 = a3;
  [(PSRootController *)self busy];
  [(NSMutableSet *)self->_tasks addObject:v4];
}

- (void)taskFinished:(id)a3
{
  [(NSMutableSet *)self->_tasks removeObject:a3];
  if (![(PSRootController *)self busy])
  {
    v4 = [MEMORY[0x1E69DC668] sharedApplication];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [MEMORY[0x1E69DC668] sharedApplication];
      [v6 performSelector:sel_controllerFinished_ withObject:self afterDelay:0.001];
    }
  }
}

- (id)contentViewForTopController
{
  v3 = [(PSRootController *)self topViewController];
  v4 = v3;
  if (!v3)
  {
    v3 = self;
  }

  v5 = [v3 view];

  return v5;
}

- (void)setSpecifier:(id)a3
{
  v5 = a3;
  if (self->_specifier != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_specifier, a3);
    v5 = v6;
  }
}

- (void)showController:(id)a3 animate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PSRootController *)self childViewControllers];
  if ([v7 containsObject:v6])
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

  if ([v6 conformsToProtocol:&unk_1EFE6C730])
  {
    [v6 setParentController:self];
    [v6 setRootController:self];
  }

  if (v4)
  {
    [(PSRootController *)self showViewController:v6 sender:self];
  }

  else
  {
    [(PSRootController *)self pushViewController:v6 animated:0];
  }
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  [(PSRootController *)self handleURL:a3];
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
    v6 = v7;
  }
}

- (void)showLeftButton:(id)a3 withStyle:(int64_t)a4 rightButton:(id)a5 withStyle:(int64_t)a6
{
  v10 = MEMORY[0x1E69DC708];
  v11 = a5;
  v12 = a3;
  v18 = objc_alloc_init(v10);
  [v18 setTitle:v12];

  [v18 setStyle:a4];
  v13 = objc_alloc_init(MEMORY[0x1E69DC708]);
  [v13 setTitle:v11];

  [v13 setStyle:a6];
  v14 = [(PSRootController *)self navigationBar];
  v15 = [v14 topItem];
  [v15 setRightBarButtonItem:v13];

  v16 = [(PSRootController *)self navigationBar];
  v17 = [v16 topItem];
  [v17 setLeftBarButtonItem:v18];
}

- (void)statusBarWillChangeHeight:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  v6 = [v5 statusBar];

  v7 = [v4 objectForKey:*MEMORY[0x1E69DDB90]];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v24 = v4;
    [v6 frame];
    v11 = v10;
    [v6 frame];
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
    v17 = [(PSRootController *)self viewControllers];
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v25 + 1) + 8 * i);
          if ([v23 conformsToProtocol:&unk_1EFE6C730] && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v23 statusBarWillAnimateByHeight:v20];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v19);
    }

    v4 = v24;
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
  v4 = [(PSRootController *)self viewControllers];
  [v4 enumerateObjectsUsingBlock:&__block_literal_global_12];
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
  v2 = [(PSRootController *)self viewControllers];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_152];
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
  v2 = [(PSRootController *)self viewControllers];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_155];
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
  v2 = [(PSRootController *)self viewControllers];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_158];
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
  v2 = [(PSRootController *)self viewControllers];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_161];
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
  v2 = [(PSRootController *)self viewControllers];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_164];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  self->_deallocating = 1;
  if ([(PSRootController *)self isViewLoaded])
  {
    v4 = [(PSRootController *)self view];
    v5 = [v4 firstResponder];
    [v5 resignFirstResponder];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(PSRootController *)self viewControllers];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 conformsToProtocol:&unk_1EFE6C730])
        {
          [v11 setRootController:0];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  [v12 removeObserver:self];

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
    v6 = [(PSRootController *)self viewControllers];
    v7 = [v5 arrayWithArray:v6];

    v8 = [MEMORY[0x1E696AB08] letterCharacterSet];
    v31 = [v8 invertedSet];

    v9 = [v7 firstObject];
    v10 = &selRef_observer_removeBulletin_;
    v11 = [v9 conformsToProtocol:&unk_1EFE6C730];

    if (v11)
    {
      v12 = [v7 firstObject];
      v13 = [v12 specifier];
      v14 = [v13 objectForKeyedSubscript:@"id"];

      if (!v14)
      {
        [v7 removeObject:v12];
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
            v23 = [v22 specifier];
            v24 = [v23 objectForKeyedSubscript:v30];

            v25 = [v24 lastPathComponent];

            if (!v25 || [v25 rangeOfString:@"[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}" options:1025] != 0x7FFFFFFFFFFFFFFFLL)
            {

              v3 = 0;
              v4 = v21;
              goto LABEL_20;
            }

            v26 = [v25 stringByReplacingCharactersInSet:v31 withCharacter:95];
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
  v2 = [(PSRootController *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 popupViewWillDisappear];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 childViewControllers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
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
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)didDismissPopupView
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(PSRootController *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 popupViewDidDisappear];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 childViewControllers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
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
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)willDismissFormSheetView
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(PSRootController *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 formSheetViewWillDisappear];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 childViewControllers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
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
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)didDismissFormSheetView
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(PSRootController *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 formSheetViewDidDisappear];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 childViewControllers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
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
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_delayedControllerReleaseAfterPop:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 mutableCopy];
  v5 = dispatch_time(0, 360000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PSRootController__delayedControllerReleaseAfterPop___block_invoke;
  block[3] = &unk_1E71DBE20;
  v6 = v4;
  v24 = v6;
  dispatch_after(v5, MEMORY[0x1E69E96A0], block);
  v7 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v3;
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

        [v7 addPointer:*(*(&v19 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v10);
  }

  v13 = [MEMORY[0x1E69DC938] currentDevice];
  v14 = [v13 sf_isInternalInstall];

  if (v14)
  {
    v15 = dispatch_time(0, 15000000000);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __54__PSRootController__delayedControllerReleaseAfterPop___block_invoke_188;
    v17[3] = &unk_1E71DBE20;
    v18 = v7;
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

- (id)popViewControllerAnimated:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = PSRootController;
  v4 = [(PSRootController *)&v13 popViewControllerAnimated:a3];
  if ([v4 conformsToProtocol:&unk_1EFE6C730])
  {
    v5 = [v4 parentController];
    v6 = [v4 rootController];
    [v4 setParentController:0];
    [v4 setRootController:0];
    v7 = [(PSRootController *)self transitionCoordinator];
    if (v7)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __46__PSRootController_popViewControllerAnimated___block_invoke;
      v9[3] = &unk_1E71DC9C0;
      v10 = v4;
      v11 = v5;
      v12 = v6;
      [v7 notifyWhenInteractionChangesUsingBlock:v9];
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

- (id)popToViewController:(id)a3 animated:(BOOL)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = PSRootController;
  v5 = [(PSRootController *)&v16 popToViewController:a3 animated:a4];
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

- (id)popToRootViewControllerAnimated:(BOOL)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PSRootController;
  v4 = [(PSRootController *)&v15 popToRootViewControllerAnimated:a3];
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

- (void)setViewControllers:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [(PSRootController *)self viewControllers];
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        if ([v12 conformsToProtocol:&unk_1EFE6C730])
        {
          [v12 setRootController:0];
          [v12 setParentController:0];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v9);
  }

  v13 = self;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  v16 = v13;
  if (v15)
  {
    v17 = v15;
    v18 = *v25;
    v16 = v13;
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
          [v20 setRootController:v13];
          [v20 setParentController:v16];
          v21 = v20;

          v16 = v21;
        }
      }

      v17 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v17);
  }

  v22 = [(PSRootController *)v13 viewControllers];
  [(PSRootController *)v13 _delayedControllerReleaseAfterPop:v22];

  v23.receiver = v13;
  v23.super_class = PSRootController;
  [(PSRootController *)&v23 setViewControllers:v14 animated:v4];
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v20 = a4;
  v7 = MEMORY[0x1E696AD80];
  v8 = MEMORY[0x1E695DF20];
  v9 = a3;
  v10 = [v9 disappearingViewController];
  v11 = MEMORY[0x1E696AD98];
  v12 = [v9 lastOperation];

  v13 = [v11 numberWithInt:v12];
  v14 = [v8 dictionaryWithObjectsAndKeys:{v20, @"appearing", v10, @"disappearing", v13, @"operation", 0}];
  v15 = [v7 notificationWithName:@"PSNavigationControllerWillShow" object:self userInfo:v14];

  v16 = [MEMORY[0x1E696AD88] defaultCenter];
  [v16 postNotification:v15];

  v17 = [(PSRootController *)self viewControllers];
  LODWORD(v7) = [v17 containsObject:v20];

  if (v7)
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [MEMORY[0x1E69CA9B0] trackingViewControllersVisitedInRootController:v19];
    [(PSRootController *)self logSettingsPath];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  if ([(PSRootController *)self isMovingFromParentViewController]&& !v3)
  {
    v5 = [(PSRootController *)self topViewController];
    v6 = [v5 navigationItem];
    [v6 setSearchController:0];
  }

  v7.receiver = self;
  v7.super_class = PSRootController;
  [(PSRootController *)&v7 viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  if (![(PSRootController *)self _isBridgeBundle]&& [(PSRootController *)self isMovingFromParentViewController])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(PSRootController *)self viewControllers];
    v6 = [v5 reverseObjectEnumerator];

    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * v10++) viewDidDisappear:v3];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [(PSRootController *)self setViewControllers:MEMORY[0x1E695E0F0]];
  }

  v11.receiver = self;
  v11.super_class = PSRootController;
  [(PSRootController *)&v11 viewDidDisappear:v3];
}

- (BOOL)_isBridgeBundle
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.Bridge"];

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