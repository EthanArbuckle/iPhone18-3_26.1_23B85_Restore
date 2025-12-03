@interface TVStorePlaybackLaunchShroud
+ (id)sharedShroud;
- (TVStorePlaybackLaunchShroud)init;
- (void)_hideWithFadeAnimation:(BOOL)animation withCompletionHandler:(id)handler;
- (void)_showWithFadeAnimation:(BOOL)animation withCompletionHandler:(id)handler;
- (void)setHidden:(BOOL)hidden animated:(BOOL)animated withCompletionHandler:(id)handler;
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
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v6 = [(TVStorePlaybackLaunchShroudWindow *)v4 initWithFrame:?];

    blackColor = [MEMORY[0x277D75348] blackColor];
    [(TVStorePlaybackLaunchShroudWindow *)v6 setBackgroundColor:blackColor];

    [(TVStorePlaybackLaunchShroudWindow *)v6 setWindowLevel:*MEMORY[0x277D772A8]];
    v8 = objc_alloc_init(MEMORY[0x277D75D28]);
    view = [v8 view];
    blackColor2 = [MEMORY[0x277D75348] blackColor];
    [view setBackgroundColor:blackColor2];

    [(TVStorePlaybackLaunchShroudWindow *)v6 setRootViewController:v8];
    [(TVStorePlaybackLaunchShroud *)v3 setWindow:v6];
  }

  return v3;
}

- (void)_showWithFadeAnimation:(BOOL)animation withCompletionHandler:(id)handler
{
  animationCopy = animation;
  handlerCopy = handler;
  [TVStorePlaybackLaunchShroud cancelPreviousPerformRequestsWithTarget:self selector:sel_fadeOut object:0];
  window = [(TVStorePlaybackLaunchShroud *)self window];
  v8 = window;
  if (animationCopy)
  {
    [window setAlpha:0.0];
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

- (void)_hideWithFadeAnimation:(BOOL)animation withCompletionHandler:(id)handler
{
  animationCopy = animation;
  handlerCopy = handler;
  [TVStorePlaybackLaunchShroud cancelPreviousPerformRequestsWithTarget:self selector:sel_fadeOut object:0];
  window = [(TVStorePlaybackLaunchShroud *)self window];
  v8 = window;
  if (animationCopy)
  {
    v9 = MEMORY[0x277D75D18];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __76__TVStorePlaybackLaunchShroud__hideWithFadeAnimation_withCompletionHandler___block_invoke;
    v13[3] = &unk_279D6E7F8;
    v14 = window;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __76__TVStorePlaybackLaunchShroud__hideWithFadeAnimation_withCompletionHandler___block_invoke_2;
    v10[3] = &unk_279D6F090;
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
      handlerCopy = [(TVStorePlaybackLaunchShroud *)self _hideWithFadeAnimation:animatedCopy withCompletionHandler:handlerCopy];
    }

    else
    {
      handlerCopy = [(TVStorePlaybackLaunchShroud *)self _showWithFadeAnimation:animatedCopy withCompletionHandler:handlerCopy];
    }

    v9 = v10;
  }

  MEMORY[0x2821F96F8](handlerCopy, v9);
}

@end