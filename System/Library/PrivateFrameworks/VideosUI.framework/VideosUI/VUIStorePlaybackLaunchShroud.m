@interface VUIStorePlaybackLaunchShroud
+ (id)sharedShroud;
- (VUIStorePlaybackLaunchShroud)init;
- (void)_hideWithFadeAnimation:(BOOL)a3 withCompletionHandler:(id)a4;
- (void)_showWithFadeAnimation:(BOOL)a3 withCompletionHandler:(id)a4;
- (void)setHidden:(BOOL)a3 animated:(BOOL)a4 withCompletionHandler:(id)a5;
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
    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v5 bounds];
    v6 = [(VUIStorePlaybackLaunchShroudWindow *)v4 initWithFrame:?];

    v7 = [MEMORY[0x1E69DC888] blackColor];
    [(VUIStorePlaybackLaunchShroudWindow *)v6 setBackgroundColor:v7];

    [(VUIStorePlaybackLaunchShroudWindow *)v6 setWindowLevel:*MEMORY[0x1E69DE7D8]];
    v8 = objc_alloc_init(MEMORY[0x1E69DD258]);
    v9 = [v8 view];
    v10 = [MEMORY[0x1E69DC888] blackColor];
    [v9 setBackgroundColor:v10];

    [(VUIStorePlaybackLaunchShroudWindow *)v6 setRootViewController:v8];
    [(VUIStorePlaybackLaunchShroud *)v3 setWindow:v6];
  }

  return v3;
}

- (void)_showWithFadeAnimation:(BOOL)a3 withCompletionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  [VUIStorePlaybackLaunchShroud cancelPreviousPerformRequestsWithTarget:self selector:sel_fadeOut object:0];
  v7 = [(VUIStorePlaybackLaunchShroud *)self window];
  v8 = v7;
  if (v4)
  {
    [v7 setAlpha:0.0];
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
    v14 = v6;
    [v9 animateWithDuration:0x10000 delay:v15 options:&v10 animations:0.3 completion:0.0];
  }

  else
  {
    [v7 setHidden:0];
    if (v6)
    {
      v6[2](v6);
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

- (void)_hideWithFadeAnimation:(BOOL)a3 withCompletionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  [VUIStorePlaybackLaunchShroud cancelPreviousPerformRequestsWithTarget:self selector:sel_fadeOut object:0];
  v7 = [(VUIStorePlaybackLaunchShroud *)self window];
  v8 = v7;
  if (v4)
  {
    v9 = MEMORY[0x1E69DD250];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77__VUIStorePlaybackLaunchShroud__hideWithFadeAnimation_withCompletionHandler___block_invoke;
    v13[3] = &unk_1E872D768;
    v14 = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__VUIStorePlaybackLaunchShroud__hideWithFadeAnimation_withCompletionHandler___block_invoke_2;
    v10[3] = &unk_1E872D7B8;
    v11 = v14;
    v12 = v6;
    [v9 animateWithDuration:0x20000 delay:v13 options:v10 animations:0.3 completion:0.0];
  }

  else
  {
    [v7 setHidden:1];
    if (v6)
    {
      v6[2](v6);
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

- (void)setHidden:(BOOL)a3 animated:(BOOL)a4 withCompletionHandler:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = v8;
  if (self->_hidden != v6)
  {
    self->_hidden = v6;
    v10 = v8;
    if (v6)
    {
      [(VUIStorePlaybackLaunchShroud *)self _hideWithFadeAnimation:v5 withCompletionHandler:v8];
    }

    else
    {
      [(VUIStorePlaybackLaunchShroud *)self _showWithFadeAnimation:v5 withCompletionHandler:v8];
    }

    v9 = v10;
  }
}

@end