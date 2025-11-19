@interface UIRemoteKeyboardWindow
+ (id)remoteKeyboardWindowForScreen:(id)a3 create:(BOOL)a4;
- (BOOL)_isFullscreen;
- (BOOL)_isHostedInAnotherProcess;
- (BOOL)_shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (BOOL)isInternalWindow;
- (BOOL)shouldAttachBindable;
- (BOOL)shouldDetachBindable;
- (id)_initBasicWithScreen:(id)a3 options:(id)a4;
- (id)_initWithScreen:(id)a3 options:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (int64_t)_orientationInSceneSpace;
- (void)_configureAlphaIfNecessary;
- (void)_resetScene;
- (void)_setRotatableClient:(id)a3 toOrientation:(int64_t)a4 updateStatusBar:(BOOL)a5 duration:(double)a6 force:(BOOL)a7 isRotating:(BOOL)a8;
- (void)attachBindable;
- (void)dealloc;
- (void)detachBindable;
- (void)endDisablingInterfaceAutorotation;
- (void)resetScene;
- (void)setWindowLevel:(double)a3;
@end

@implementation UIRemoteKeyboardWindow

- (BOOL)_isHostedInAnotherProcess
{
  v2 = objc_opt_class();

  return [v2 _isHostedInAnotherProcess];
}

- (BOOL)shouldDetachBindable
{
  if ([UIApp _isSpringBoard] && !objc_msgSend(UIApp, "disablesFrontBoardImplicitWindowScenes"))
  {
    LOBYTE(keyboardSceneLayer) = 0;
  }

  else
  {
    v3 = objc_opt_class();
    keyboardSceneLayer = [(UIWindow *)self screen];
    v4 = [v3 remoteKeyboardWindowForScreen:keyboardSceneLayer create:0];

    LOBYTE(keyboardSceneLayer) = 1;
    if (v4 != self)
    {
      if (v4)
      {
        keyboardSceneLayer = self->_keyboardSceneLayer;
        if (keyboardSceneLayer)
        {
          v6 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
          v7 = [v6 requiredScene];
          LOBYTE(keyboardSceneLayer) = keyboardSceneLayer != v7;
        }
      }
    }
  }

  return keyboardSceneLayer;
}

- (void)detachBindable
{
  if (*&self->_arePlaceholdersInitialised)
  {
    [(FBSSceneLayer *)self->_keyboardSceneLayer detachLayer:?];
    objc_setAssociatedObject(self, &kKeyboardSceneLayer, 0, 0x301);
    v3 = *&self->_arePlaceholdersInitialised;
    *&self->_arePlaceholdersInitialised = 0;
  }

  keyboardSceneLayer = self->_keyboardSceneLayer;
  self->_keyboardSceneLayer = 0;
}

- (BOOL)shouldAttachBindable
{
  if ([UIApp _isSpringBoard] && !objc_msgSend(UIApp, "disablesFrontBoardImplicitWindowScenes"))
  {
    v6 = 0;
  }

  else
  {
    v3 = objc_opt_class();
    v4 = [(UIWindow *)self screen];
    v5 = [v3 remoteKeyboardWindowForScreen:v4 create:0];

    if (v5 == self)
    {
      v6 = 1;
    }

    else
    {
      v6 = LOBYTE(self->_intendedScreen) ^ 1;
    }
  }

  return v6 & 1;
}

- (void)attachBindable
{
  if (!*&self->_arePlaceholdersInitialised)
  {
    v3 = objc_alloc(MEMORY[0x1E699FB20]);
    v4 = [(UIWindow *)self _boundContext];
    v5 = [v3 initWithTrackingContext:v4];
    v6 = *&self->_arePlaceholdersInitialised;
    *&self->_arePlaceholdersInitialised = v5;

    objc_setAssociatedObject(self, &kKeyboardSceneLayer, *&self->_arePlaceholdersInitialised, 0x301);
  }

  v7 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  obj = [v7 requiredScene];

  keyboardSceneLayer = self->_keyboardSceneLayer;
  if (keyboardSceneLayer)
  {
    v9 = obj == keyboardSceneLayer;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [(FBSSceneLayer *)keyboardSceneLayer detachLayer:*&self->_arePlaceholdersInitialised];
  }

  objc_storeStrong(&self->_keyboardSceneLayer, obj);
  [(FBSSceneLayer *)self->_keyboardSceneLayer detachLayer:*&self->_arePlaceholdersInitialised];
  if (!+[_UIRemoteKeyboards wantsUnassociatedWindowSceneForKeyboardWindow])
  {
    v10 = [UIScene _sceneForFBSScene:self->_keyboardSceneLayer];
    v11 = [(UIWindow *)self windowScene];
    [v11 _setSettingsScene:v10];
  }

  [(FBSSceneLayer *)self->_keyboardSceneLayer attachLayer:*&self->_arePlaceholdersInitialised];
}

- (void)endDisablingInterfaceAutorotation
{
  v3.receiver = self;
  v3.super_class = UIRemoteKeyboardWindow;
  [(UIWindow *)&v3 endDisablingInterfaceAutorotation];
  if (LOBYTE(self->_activeScene) == 1)
  {
    [(UIRemoteKeyboardWindow *)self _resetScene];
  }
}

- (void)_configureAlphaIfNecessary
{
  if (qword_1ED499728 != -1)
  {
    dispatch_once(&qword_1ED499728, &__block_literal_global_109_0);
  }

  if (byte_1ED499711 == 1)
  {

    [(UIView *)self setAlpha:0.8];
  }
}

void __52__UIRemoteKeyboardWindow__configureAlphaIfNecessary__block_invoke()
{
  if (qword_1ED4997E0 != -1)
  {
    dispatch_once(&qword_1ED4997E0, &__block_literal_global_1155_0);
  }

  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v1 = [v0 valueForPreferenceKey:@"TranslucentKeyboard"];

  byte_1ED499711 = [v1 BOOLValue];
}

- (int64_t)_orientationInSceneSpace
{
  if (![UIApp isFrontBoard])
  {
    return self->super.super.super.super._viewOrientation;
  }

  v4.receiver = self;
  v4.super_class = UIRemoteKeyboardWindow;
  return [(UIWindow *)&v4 _orientationInSceneSpace];
}

+ (id)remoteKeyboardWindowForScreen:(id)a3 create:(BOOL)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__137;
  v23 = __Block_byref_object_dispose__137;
  v24 = 0;
  v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:&unk_1EFE34478];
  if (dyld_program_sdk_at_least())
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:10000001.0];
    [v7 setObject:v8 forKey:@"Level"];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__UIRemoteKeyboardWindow_remoteKeyboardWindowForScreen_create___block_invoke;
  v13[3] = &unk_1E70FD2A8;
  v16 = &v19;
  v17 = a1;
  v9 = v6;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  v18 = a4;
  [UIView performWithoutAnimation:v13];
  v11 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v11;
}

void __63__UIRemoteKeyboardWindow_remoteKeyboardWindowForScreen_create___block_invoke(uint64_t a1)
{
  v2 = [_UIObjectPerScreen objectOfClass:*(a1 + 56) forScreen:*(a1 + 32) withOptions:*(a1 + 40) createIfNecessary:*(a1 + 64)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 48) + 8) + 40);
  if (v5)
  {
    v6 = [v5 rootViewController];
    if (*(a1 + 64) == 1)
    {
      [*(*(*(a1 + 48) + 8) + 40) setHidden:0];
    }

    if (!v6)
    {
      v6 = objc_alloc_init(UIInputWindowController);
      [(UIInputWindowController *)v6 setShouldNotifyRemoteKeyboards:0];
      [*(*(*(a1 + 48) + 8) + 40) setRootViewController:v6];
    }

    v7 = *(*(*(a1 + 48) + 8) + 40);
    if ((*(v7 + 1232) & 1) == 0)
    {
      *(v7 + 1232) = 1;
      v8 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:0];
      v9 = [v8 rootViewController];

      v12 = MEMORY[0x1E69E9820];
      v13 = v9;
      v14 = v6;
      v10 = v9;
      v11 = [UIInputViewAnimationStyle animationStyleImmediate:v12];
      [(UIInputWindowController *)v14 performOperations:&v12 withAnimationStyle:v11];

      [*(*(*(a1 + 48) + 8) + 40) _matchDeviceOrientation];
    }
  }
}

- (id)_initBasicWithScreen:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = [_UIRemoteKeyboards keyboardWindowSceneForScreen:v5 create:1];
  if (!+[_UIRemoteKeyboards wantsUnassociatedWindowSceneForKeyboardWindow])
  {
    v7 = [UIApp _keyWindowForScreen:v5];
    v8 = [v7 windowScene];

    if (!v8)
    {
      v8 = +[UIWindowScene _keyWindowScene];
      v9 = [v8 screen];

      if (v9 == v5)
      {
        if (v8)
        {
          goto LABEL_7;
        }
      }

      else
      {
      }

      v8 = [_UISceneLifecycleMultiplexer mostActiveWindowSceneOnScreen:v5];
    }

LABEL_7:
    [v6 _setSettingsScene:v8];
  }

  v10 = *MEMORY[0x1E695EFF8];
  v11 = *(MEMORY[0x1E695EFF8] + 8);
  [v5 bounds];
  v15.receiver = self;
  v15.super_class = UIRemoteKeyboardWindow;
  v12 = [(UITextEffectsWindow *)&v15 _initWithFrame:0 debugName:v6 windowScene:v10, v11];
  v13 = v12;
  if (v12)
  {
    [v12 setPriorityLevel:10];
  }

  return v13;
}

- (id)_initWithScreen:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(UIRemoteKeyboardWindow *)self _initBasicWithScreen:v7 options:v8];
  v10 = v9;
  if (v9)
  {
    [v9 setScreen:v7];
    objc_storeStrong(v10 + 153, a3);
    objc_storeStrong(v10 + 152, a4);
    v11 = [v8 objectForKey:0x1EFB7BDD0];
    *(v10 + 960) = [v11 BOOLValue];

    [v10 _commonInitWithOptions:v8];
    [v10 _configureAlphaIfNecessary];
    v12 = v10;
  }

  return v10;
}

- (BOOL)isInternalWindow
{
  if (qword_1ED499720 != -1)
  {
    dispatch_once(&qword_1ED499720, &__block_literal_global_398);
  }

  return _MergedGlobals_51_0;
}

void __42__UIRemoteKeyboardWindow_isInternalWindow__block_invoke()
{
  if (dyld_program_sdk_at_least())
  {
    _MergedGlobals_51_0 = 1;
  }

  else
  {
    if (qword_1ED4997D8 != -1)
    {
      dispatch_once(&qword_1ED4997D8, &__block_literal_global_1144);
    }

    v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
    v1 = [v0 valueForPreferenceKey:@"HideRemoteKeyboardWindow"];

    _MergedGlobals_51_0 = [v1 BOOLValue];
  }
}

- (BOOL)_isFullscreen
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D940];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v2 raise:v3 format:{@"%@ is in a separate scene, and cannot deduce this value", v5}];

  return 1;
}

- (void)setWindowLevel:(double)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a3 = -10000001.0;
  }

  else
  {
    v5 = dyld_program_sdk_at_least();
    v6 = a3 >= 10000001.0 || v5 == 0;
    if (!v6 && ![UIApp _isSpringBoard])
    {
      a3 = 10000001.0;
    }
  }

  v7.receiver = self;
  v7.super_class = UIRemoteKeyboardWindow;
  [(UIWindow *)&v7 setWindowLevel:a3];
}

- (void)_setRotatableClient:(id)a3 toOrientation:(int64_t)a4 updateStatusBar:(BOOL)a5 duration:(double)a6 force:(BOOL)a7 isRotating:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v11 = a5;
  v14 = a3;
  v15 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  v16 = [v15 snapshotting];

  if ((v16 & 1) == 0)
  {
    v17 = [(UITextEffectsWindow *)self rootViewController];
    v18 = [v17 inhibitRotationAnimation];
    v19 = 0.0;
    if (!v18)
    {
      v19 = a6;
    }

    v20.receiver = self;
    v20.super_class = UIRemoteKeyboardWindow;
    [(UIWindow *)&v20 _setRotatableClient:v14 toOrientation:a4 updateStatusBar:v11 duration:v9 force:v8 isRotating:v19];
  }
}

- (BOOL)_shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  v4 = +[UIWindow _applicationKeyWindow];
  if ([UIApp isFrontBoard])
  {
    v5 = [v4 _overriddenInterfaceOrientation];
  }

  else
  {
    v5 = [v4 interfaceOrientation];
  }

  if (v5 == a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 _shouldAutorotateToInterfaceOrientation:a3];
  }

  return v6;
}

- (void)_resetScene
{
  if ([(UIRemoteKeyboardWindow *)self shouldDetachBindable])
  {
    [(UIRemoteKeyboardWindow *)self detachBindable];
  }

  if ([(UIRemoteKeyboardWindow *)self shouldAttachBindable])
  {
    [(UIRemoteKeyboardWindow *)self attachBindable];
  }

  LOBYTE(self->_activeScene) = 0;
}

- (void)resetScene
{
  if ([(UIWindow *)self isRotating])
  {
    LOBYTE(self->_activeScene) = 1;
  }

  else
  {

    [(UIRemoteKeyboardWindow *)self _resetScene];
  }
}

- (void)dealloc
{
  v3 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  [v3 _lostWindow:self];

  v4 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  v5 = [v4 keyboardWindow];
  v6 = v5;
  if (v5 == self)
  {
    v7 = objc_opt_class();
    v8 = [(UIWindow *)self screen];
    v9 = [v7 remoteKeyboardWindowForScreen:v8 create:0];

    if (v9)
    {
      goto LABEL_5;
    }

    v4 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    [v4 setWindowEnabled:0];
  }

  else
  {
  }

LABEL_5:
  v10.receiver = self;
  v10.super_class = UIRemoteKeyboardWindow;
  [(UITextEffectsWindow *)&v10 dealloc];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = UIRemoteKeyboardWindow;
  v5 = [(UIAutoRotatingWindow *)&v8 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 == self && _UIApplicationIsStickerPickerService() && +[UIKeyboard canShowEmojiKeyboardInsideStickerPickerService])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

@end