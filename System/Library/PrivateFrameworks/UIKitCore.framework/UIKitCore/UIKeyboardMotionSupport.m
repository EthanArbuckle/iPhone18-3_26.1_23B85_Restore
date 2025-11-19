@interface UIKeyboardMotionSupport
+ (id)supportForScreen:(id)a3;
+ (id)supportForUIScene:(id)a3;
- (id)_initWithScene:(id)a3 options:(id)a4;
- (id)_initWithScreen:(id)a3 options:(id)a4;
- (void)_disconnectingController:(id)a3;
- (void)setMasterController:(id)a3;
- (void)translateToPlacement:(id)a3 quietly:(BOOL)a4 animated:(BOOL)a5;
@end

@implementation UIKeyboardMotionSupport

+ (id)supportForScreen:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Only subclasses of UIKeyboardMotionSupport should be instantiated"];
  }

  v6 = [_UIObjectPerScreen objectOfClass:a1 forScreen:v4 withOptions:0 createIfNecessary:1];

  return v6;
}

+ (id)supportForUIScene:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Only subclasses of UIKeyboardMotionSupport should be instantiated"];
  }

  v6 = [_UIObjectPerScene objectOfClass:a1 forScene:v4 withOptions:0 createIfNecessary:1];

  return v6;
}

- (id)_initWithScreen:(id)a3 options:(id)a4
{
  v7 = a3;
  if (a4)
  {
    v8 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = UIKeyboardMotionSupport;
    v9 = [(UIKeyboardMotionSupport *)&v12 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_screen, a3);
    }

    self = v10;
    v8 = self;
  }

  return v8;
}

- (id)_initWithScene:(id)a3 options:(id)a4
{
  v7 = a3;
  if (a4)
  {
    v8 = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = UIKeyboardMotionSupport;
    v9 = [(UIKeyboardMotionSupport *)&v14 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_scene, a3);
      v11 = [v7 screen];
      screen = v10->_screen;
      v10->_screen = v11;
    }

    self = v10;
    v8 = self;
  }

  return v8;
}

- (void)_disconnectingController:(id)a3
{
  controller = self->_controller;
  self->_controller = 0;
}

- (void)setMasterController:(id)a3
{
  v4 = a3;
  controller = self->_controller;
  v7 = v4;
  if (controller == v4)
  {
    [(UIKeyboardMotionSupport *)self _updatedController];
    goto LABEL_7;
  }

  v6 = v4;
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

- (void)translateToPlacement:(id)a3 quietly:(BOOL)a4 animated:(BOOL)a5
{
  v34[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(UIKeyboardMotionSupport *)self generateSplitNotificationForNewPlacement:v8];
  if (v8)
  {
    v10 = [(UISplitKeyboardSource *)self->_controller placement];
    v11 = [v10 assistantView];

    if (v11)
    {
      v34[0] = v8;
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
      v8 = v26;
    }
  }

  v27 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __65__UIKeyboardMotionSupport_translateToPlacement_quietly_animated___block_invoke;
  v29[3] = &unk_1E7117960;
  v30 = v8;
  v31 = a4;
  v32 = a5;
  v33 = v9;
  v28 = v8;
  [v27 performOnLocalDistributedControllers:v29];
}

@end