@interface VUIStorePlaybackLaunchShroud
+ (id)sharedShroud;
- (VUIStorePlaybackLaunchShroud)init;
- (void)_hideWithFadeAnimation:(BOOL)animation withCompletionHandler:(id)handler;
- (void)_showWithFadeAnimation:(BOOL)animation withCompletionHandler:(id)handler;
- (void)setHidden:(BOOL)hidden animated:(BOOL)animated withCompletionHandler:(id)handler;
@end

@implementation VUIStorePlaybackLaunchShroud

+ (id)sharedShroud
{
  if (sharedShroud_onceToken != -1)
  {
    +[VUIStorePlaybackLaunchShroud sharedShroud];
  }

  v3 = sharedShroud_sharedShroud;

  return v3;
}

void __44__VUIStorePlaybackLaunchShroud_sharedShroud__block_invoke()
{
  v0 = objc_alloc_init(VUIStorePlaybackLaunchShroud);
  v1 = sharedShroud_sharedShroud;
  sharedShroud_sharedShroud = v0;
}

- (VUIStorePlaybackLaunchShroud)init
{
  v12.receiver = self;
  v12.super_class = VUIStorePlaybackLaunchShroud;
  v2 = [(VUIStorePlaybackLaunchShroud *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_hidden = 1;
    v4 = [VUIStorePlaybackLaunchShroudWindow alloc];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v6 = [(VUIStorePlaybackLaunchShroudWindow *)v4 initWithFrame:?];

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(VUIStorePlaybackLaunchShroudWindow *)v6 setBackgroundColor:blackColor];

    [(VUIStorePlaybackLaunchShroudWindow *)v6 setWindowLevel:*MEMORY[0x1E69DE7D8]];
    v8 = objc_alloc_init(MEMORY[0x1E69DD258]);
    view = [v8 view];
    blackColor2 = [MEMORY[0x1E69DC888] blackColor];
    [view setBackgroundColor:blackColor2];

    [(VUIStorePlaybackLaunchShroudWindow *)v6 setRootViewController:v8];
    [(VUIStorePlaybackLaunchShroud *)v3 setWindow:v6];
  }

  return v3;
}

- (void)_showWithFadeAnimation:(BOOL)animation withCompletionHandler:(id)handler
{
  animationCopy = animation;
  handlerCopy = handler;
  [VUIStorePlaybackLaunchShroud cancelPreviousPerformRequestsWithTarget:self selector:sel_fadeOut object:0];
  window = [(VUIStorePlaybackLaunchShroud *)self window];
  v8 = window;
  if (animationCopy)
  {
    [window setAlpha:0.0];
    [v8 setHidden:0];
    v9 = MEMORY[0x1E69DD250];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__VUIStorePlaybackLaunchShroud__showWithFadeAnimation_withCompletionHandler___block_invoke;
    v15[3] = &unk_1E872D768;
    v16 = v8;
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __77__VUIStorePlaybackLaunchShroud__showWithFadeAnimation_withCompletionHandler___block_invoke_2;
    v13 = &unk_1E872D790;
    v14 = handlerCopy;
    [v9 animateWithDuration:0x10000 delay:v15 options:&v10 animations:0.3 completion:0.0];
  }

  else
  {
    [window setHidden:0];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  [(VUIStorePlaybackLaunchShroud *)self performSelector:sel_fadeOut withObject:0 afterDelay:10.0, v10, v11, v12, v13];
}

uint64_t __77__VUIStorePlaybackLaunchShroud__showWithFadeAnimation_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_hideWithFadeAnimation:(BOOL)animation withCompletionHandler:(id)handler
{
  animationCopy = animation;
  handlerCopy = handler;
  [VUIStorePlaybackLaunchShroud cancelPreviousPerformRequestsWithTarget:self selector:sel_fadeOut object:0];
  window = [(VUIStorePlaybackLaunchShroud *)self window];
  v8 = window;
  if (animationCopy)
  {
    v9 = MEMORY[0x1E69DD250];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77__VUIStorePlaybackLaunchShroud__hideWithFadeAnimation_withCompletionHandler___block_invoke;
    v13[3] = &unk_1E872D768;
    v14 = window;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__VUIStorePlaybackLaunchShroud__hideWithFadeAnimation_withCompletionHandler___block_invoke_2;
    v10[3] = &unk_1E872D7B8;
    v11 = v14;
    v12 = handlerCopy;
    [v9 animateWithDuration:0x20000 delay:v13 options:v10 animations:0.3 completion:0.0];
  }

  else
  {
    [window setHidden:1];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

uint64_t __77__VUIStorePlaybackLaunchShroud__hideWithFadeAnimation_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setHidden:1];
  [*(a1 + 32) setAlpha:1.0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)setHidden:(BOOL)hidden animated:(BOOL)animated withCompletionHandler:(id)handler
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (self->_hidden != hiddenCopy)
  {
    self->_hidden = hiddenCopy;
    v10 = handlerCopy;
    if (hiddenCopy)
    {
      [(VUIStorePlaybackLaunchShroud *)self _hideWithFadeAnimation:animatedCopy withCompletionHandler:handlerCopy];
    }

    else
    {
      [(VUIStorePlaybackLaunchShroud *)self _showWithFadeAnimation:animatedCopy withCompletionHandler:handlerCopy];
    }

    v9 = v10;
  }
}

@end