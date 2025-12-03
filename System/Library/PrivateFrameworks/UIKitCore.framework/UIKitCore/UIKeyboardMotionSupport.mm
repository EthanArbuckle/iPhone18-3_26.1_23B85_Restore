@interface UIKeyboardMotionSupport
+ (id)supportForScreen:(id)screen;
+ (id)supportForUIScene:(id)scene;
- (id)_initWithScene:(id)scene options:(id)options;
- (id)_initWithScreen:(id)screen options:(id)options;
- (void)_disconnectingController:(id)controller;
- (void)setMasterController:(id)controller;
- (void)translateToPlacement:(id)placement quietly:(BOOL)quietly animated:(BOOL)animated;
@end

@implementation UIKeyboardMotionSupport

+ (id)supportForScreen:(id)screen
{
  screenCopy = screen;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Only subclasses of UIKeyboardMotionSupport should be instantiated"];
  }

  v6 = [_UIObjectPerScreen objectOfClass:self forScreen:screenCopy withOptions:0 createIfNecessary:1];

  return v6;
}

+ (id)supportForUIScene:(id)scene
{
  sceneCopy = scene;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Only subclasses of UIKeyboardMotionSupport should be instantiated"];
  }

  v6 = [_UIObjectPerScene objectOfClass:self forScene:sceneCopy withOptions:0 createIfNecessary:1];

  return v6;
}

- (id)_initWithScreen:(id)screen options:(id)options
{
  screenCopy = screen;
  if (options)
  {
    selfCopy = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = UIKeyboardMotionSupport;
    v9 = [(UIKeyboardMotionSupport *)&v12 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_screen, screen);
    }

    self = v10;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)_initWithScene:(id)scene options:(id)options
{
  sceneCopy = scene;
  if (options)
  {
    selfCopy = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = UIKeyboardMotionSupport;
    v9 = [(UIKeyboardMotionSupport *)&v14 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_scene, scene);
      screen = [sceneCopy screen];
      screen = v10->_screen;
      v10->_screen = screen;
    }

    self = v10;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)_disconnectingController:(id)controller
{
  controller = self->_controller;
  self->_controller = 0;
}

- (void)setMasterController:(id)controller
{
  controllerCopy = controller;
  controller = self->_controller;
  v7 = controllerCopy;
  if (controller == controllerCopy)
  {
    [(UIKeyboardMotionSupport *)self _updatedController];
    goto LABEL_7;
  }

  v6 = controllerCopy;
  if (controller)
  {
    [(UIKeyboardMotionSupport *)self _disconnectingController:?];
    v6 = v7;
  }

  if (v6)
  {
    [(UIKeyboardMotionSupport *)self _connectController:v6];
LABEL_7:
    v6 = v7;
  }
}

- (void)translateToPlacement:(id)placement quietly:(BOOL)quietly animated:(BOOL)animated
{
  v34[1] = *MEMORY[0x1E69E9840];
  placementCopy = placement;
  v9 = [(UIKeyboardMotionSupport *)self generateSplitNotificationForNewPlacement:placementCopy];
  if (placementCopy)
  {
    placement = [(UISplitKeyboardSource *)self->_controller placement];
    assistantView = [placement assistantView];

    if (assistantView)
    {
      v34[0] = placementCopy;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
      +[UIKeyboardImpl normalizedPersistentOffset];
      v14 = v13;
      v16 = v15;
      +[UIPeripheralHost floatingChromeBuffer];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      +[UIKeyboardImpl floatingWidth];
      v26 = [UIInputViewSetPlacementFloating placementWithUndockedOffset:v14 chromeBuffer:v16 floatingWidth:v18, v20, v22, v24, v25];

      [v26 setSubPlacements:v12];
      placementCopy = v26;
    }
  }

  v27 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __65__UIKeyboardMotionSupport_translateToPlacement_quietly_animated___block_invoke;
  v29[3] = &unk_1E7117960;
  v30 = placementCopy;
  quietlyCopy = quietly;
  animatedCopy = animated;
  v33 = v9;
  v28 = placementCopy;
  [v27 performOnLocalDistributedControllers:v29];
}

@end