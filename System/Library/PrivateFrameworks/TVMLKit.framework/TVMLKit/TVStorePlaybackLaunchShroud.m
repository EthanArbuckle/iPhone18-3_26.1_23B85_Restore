@interface TVStorePlaybackLaunchShroud
+ (id)sharedShroud;
- (TVStorePlaybackLaunchShroud)init;
- (void)_hideWithFadeAnimation:(BOOL)a3 withCompletionHandler:(id)a4;
- (void)_showWithFadeAnimation:(BOOL)a3 withCompletionHandler:(id)a4;
- (void)setHidden:(BOOL)a3 animated:(BOOL)a4 withCompletionHandler:(id)a5;
@end

@implementation TVStorePlaybackLaunchShroud

+ (id)sharedShroud
{
  if (sharedShroud_onceToken != -1)
  {
    +[TVStorePlaybackLaunchShroud sharedShroud];
  }

  v3 = sharedShroud_sharedShroud;

  return v3;
}

uint64_t __43__TVStorePlaybackLaunchShroud_sharedShroud__block_invoke()
{
  v0 = objc_alloc_init(TVStorePlaybackLaunchShroud);
  v1 = sharedShroud_sharedShroud;
  sharedShroud_sharedShroud = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (TVStorePlaybackLaunchShroud)init
{
  v12.receiver = self;
  v12.super_class = TVStorePlaybackLaunchShroud;
  v2 = [(TVStorePlaybackLaunchShroud *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_hidden = 1;
    v4 = [TVStorePlaybackLaunchShroudWindow alloc];
    v5 = [MEMORY[0x277D759A0] mainScreen];
    [v5 bounds];
    v6 = [(TVStorePlaybackLaunchShroudWindow *)v4 initWithFrame:?];

    v7 = [MEMORY[0x277D75348] blackColor];
    [(TVStorePlaybackLaunchShroudWindow *)v6 setBackgroundColor:v7];

    [(TVStorePlaybackLaunchShroudWindow *)v6 setWindowLevel:*MEMORY[0x277D772A8]];
    v8 = objc_alloc_init(MEMORY[0x277D75D28]);
    v9 = [v8 view];
    v10 = [MEMORY[0x277D75348] blackColor];
    [v9 setBackgroundColor:v10];

    [(TVStorePlaybackLaunchShroudWindow *)v6 setRootViewController:v8];
    [(TVStorePlaybackLaunchShroud *)v3 setWindow:v6];
  }

  return v3;
}

- (void)_showWithFadeAnimation:(BOOL)a3 withCompletionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  [TVStorePlaybackLaunchShroud cancelPreviousPerformRequestsWithTarget:self selector:sel_fadeOut object:0];
  v7 = [(TVStorePlaybackLaunchShroud *)self window];
  v8 = v7;
  if (v4)
  {
    [v7 setAlpha:0.0];
    [v8 setHidden:0];
    v9 = MEMORY[0x277D75D18];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __76__TVStorePlaybackLaunchShroud__showWithFadeAnimation_withCompletionHandler___block_invoke;
    v15[3] = &unk_279D6E7F8;
    v16 = v8;
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __76__TVStorePlaybackLaunchShroud__showWithFadeAnimation_withCompletionHandler___block_invoke_2;
    v13 = &unk_279D6EF50;
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

  [(TVStorePlaybackLaunchShroud *)self performSelector:sel_fadeOut withObject:0 afterDelay:10.0, v10, v11, v12, v13];
}

uint64_t __76__TVStorePlaybackLaunchShroud__showWithFadeAnimation_withCompletionHandler___block_invoke_2(uint64_t a1)
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
  [TVStorePlaybackLaunchShroud cancelPreviousPerformRequestsWithTarget:self selector:sel_fadeOut object:0];
  v7 = [(TVStorePlaybackLaunchShroud *)self window];
  v8 = v7;
  if (v4)
  {
    v9 = MEMORY[0x277D75D18];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __76__TVStorePlaybackLaunchShroud__hideWithFadeAnimation_withCompletionHandler___block_invoke;
    v13[3] = &unk_279D6E7F8;
    v14 = v7;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __76__TVStorePlaybackLaunchShroud__hideWithFadeAnimation_withCompletionHandler___block_invoke_2;
    v10[3] = &unk_279D6F090;
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

uint64_t __76__TVStorePlaybackLaunchShroud__hideWithFadeAnimation_withCompletionHandler___block_invoke_2(uint64_t a1)
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
      v8 = [(TVStorePlaybackLaunchShroud *)self _hideWithFadeAnimation:v5 withCompletionHandler:v8];
    }

    else
    {
      v8 = [(TVStorePlaybackLaunchShroud *)self _showWithFadeAnimation:v5 withCompletionHandler:v8];
    }

    v9 = v10;
  }

  MEMORY[0x2821F96F8](v8, v9);
}

@end