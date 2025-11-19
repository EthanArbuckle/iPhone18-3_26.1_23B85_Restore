@interface SKUIStatusBarAlertCenter
+ (id)sharedCenter;
+ (void)sharedCenter;
- (BOOL)isVisible;
- (NSString)message;
- (SKUIStatusBarAlertCenter)init;
- (void)dismiss;
- (void)init;
- (void)scheduleDismiss;
- (void)setVisible:(BOOL)a3;
- (void)showMessage:(id)a3 withStyle:(int64_t)a4 forDuration:(double)a5 actionBlock:(id)a6;
- (void)statusBarAlertViewControllerWasTapped:(id)a3;
@end

@implementation SKUIStatusBarAlertCenter

+ (id)sharedCenter
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIStatusBarAlertCenter sharedCenter];
  }

  if (sharedCenter_onceToken != -1)
  {
    +[SKUIStatusBarAlertCenter sharedCenter];
  }

  v2 = sharedCenter_sharedHeadsUp;

  return v2;
}

uint64_t __40__SKUIStatusBarAlertCenter_sharedCenter__block_invoke()
{
  v0 = objc_alloc_init(SKUIStatusBarAlertCenter);
  v1 = sharedCenter_sharedHeadsUp;
  sharedCenter_sharedHeadsUp = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SKUIStatusBarAlertCenter)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIStatusBarAlertCenter init];
  }

  v11.receiver = self;
  v11.super_class = SKUIStatusBarAlertCenter;
  v3 = [(SKUIStatusBarAlertCenter *)&v11 init];
  if (v3)
  {
    v4 = objc_alloc_init(_SKUIStatusBarAlertViewController);
    rootViewController = v3->_rootViewController;
    v3->_rootViewController = v4;

    [(_SKUIStatusBarAlertViewController *)v3->_rootViewController setDelegate:v3];
    v6 = [_SKUIClickThroughWindow alloc];
    v7 = [MEMORY[0x277D759A0] mainScreen];
    [v7 bounds];
    v8 = [(_SKUIClickThroughWindow *)v6 initWithFrame:?];
    window = v3->_window;
    v3->_window = v8;

    [(_SKUIClickThroughWindow *)v3->_window setWindowLevel:*MEMORY[0x277D772B8]];
    [(_SKUIClickThroughWindow *)v3->_window setRootViewController:v3->_rootViewController];
    [(_SKUIClickThroughWindow *)v3->_window _setWindowControlsStatusBarOrientation:0];
    v3->_duration = 3.0;
  }

  return v3;
}

- (void)setVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(SKUIStatusBarAlertCenter *)self window];
  [v4 setHidden:!v3];
}

- (BOOL)isVisible
{
  v2 = [(SKUIStatusBarAlertCenter *)self window];
  v3 = [v2 isHidden];

  return v3 ^ 1;
}

- (NSString)message
{
  v2 = [(SKUIStatusBarAlertCenter *)self rootViewController];
  v3 = [v2 message];

  return v3;
}

- (void)showMessage:(id)a3 withStyle:(int64_t)a4 forDuration:(double)a5 actionBlock:(id)a6
{
  v10 = a6;
  if (a5 < 2.22044605e-16)
  {
    a5 = 3.0;
  }

  v11 = a3;
  v12 = [(SKUIStatusBarAlertCenter *)self rootViewController];
  [v12 setMessage:v11];

  [(SKUIStatusBarAlertCenter *)self setDuration:a5];
  v13 = [(SKUIStatusBarAlertCenter *)self rootViewController];
  [v13 endAllAnimations];

  if ([(SKUIStatusBarAlertCenter *)self isVisible])
  {
    [(SKUIStatusBarAlertCenter *)self unscheduleDismiss];
    v14 = MEMORY[0x277D75D18];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __74__SKUIStatusBarAlertCenter_showMessage_withStyle_forDuration_actionBlock___block_invoke;
    v28[3] = &unk_2781FD878;
    v28[4] = self;
    v30 = a4;
    v29 = v10;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __74__SKUIStatusBarAlertCenter_showMessage_withStyle_forDuration_actionBlock___block_invoke_2;
    v27[3] = &unk_2781F84A0;
    v27[4] = self;
    [v14 animateWithDuration:v28 animations:v27 completion:0.2];
  }

  else
  {
    v15 = [MEMORY[0x277D75DA0] keyWindow];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 rootViewController];
      v18 = [v17 supportedInterfaceOrientations];
    }

    else
    {
      v17 = [(SKUIStatusBarAlertCenter *)self rootViewController];
      v18 = [v17 defaultInterfaceOrientations];
    }

    v19 = v18;
    v20 = [(SKUIStatusBarAlertCenter *)self rootViewController];
    [v20 setSupportedInterfaceOrientations:v19];

    v21 = [(SKUIStatusBarAlertCenter *)self rootViewController];
    [v21 setStyle:a4];

    [(SKUIStatusBarAlertCenter *)self setActionBlock:v10];
    v22 = [(SKUIStatusBarAlertCenter *)self rootViewController];
    v23 = [v22 statusBarView];
    v24 = [(SKUIStatusBarAlertCenter *)self window];
    [v24 setInteractionView:v23];

    [(SKUIStatusBarAlertCenter *)self setVisible:1];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __74__SKUIStatusBarAlertCenter_showMessage_withStyle_forDuration_actionBlock___block_invoke_3;
    v26[3] = &unk_2781F80F0;
    v26[4] = self;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __74__SKUIStatusBarAlertCenter_showMessage_withStyle_forDuration_actionBlock___block_invoke_4;
    v25[3] = &unk_2781F84A0;
    v25[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v26 animations:v25 completion:0.2];
  }
}

uint64_t __74__SKUIStatusBarAlertCenter_showMessage_withStyle_forDuration_actionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) rootViewController];
  [v2 setOnScreen:1];

  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) rootViewController];
  [v4 setStyle:v3];

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v5 setActionBlock:v6];
}

uint64_t __74__SKUIStatusBarAlertCenter_showMessage_withStyle_forDuration_actionBlock___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) scheduleDismiss];
  }

  return result;
}

void __74__SKUIStatusBarAlertCenter_showMessage_withStyle_forDuration_actionBlock___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) rootViewController];
  [v1 setOnScreen:1];
}

uint64_t __74__SKUIStatusBarAlertCenter_showMessage_withStyle_forDuration_actionBlock___block_invoke_4(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) scheduleDismiss];
  }

  return result;
}

- (void)scheduleDismiss
{
  [(SKUIStatusBarAlertCenter *)self duration];

  [(SKUIStatusBarAlertCenter *)self performSelector:sel_dismiss withObject:0 afterDelay:?];
}

- (void)dismiss
{
  [(SKUIStatusBarAlertCenter *)self unscheduleDismiss];
  if ([(SKUIStatusBarAlertCenter *)self isVisible])
  {
    v3 = [(SKUIStatusBarAlertCenter *)self rootViewController];
    [v3 endAllAnimations];

    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __35__SKUIStatusBarAlertCenter_dismiss__block_invoke;
    v5[3] = &unk_2781F80F0;
    v5[4] = self;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __35__SKUIStatusBarAlertCenter_dismiss__block_invoke_2;
    v4[3] = &unk_2781F84A0;
    v4[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v5 animations:v4 completion:0.2];
  }
}

void __35__SKUIStatusBarAlertCenter_dismiss__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) rootViewController];
  [v1 setOnScreen:0];
}

uint64_t __35__SKUIStatusBarAlertCenter_dismiss__block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) setVisible:0];
    v3 = [*(v2 + 32) rootViewController];
    [v3 setMessage:0];

    v4 = *(v2 + 32);

    return [v4 setActionBlock:0];
  }

  return result;
}

- (void)statusBarAlertViewControllerWasTapped:(id)a3
{
  [(SKUIStatusBarAlertCenter *)self dismiss];
  v4 = [(SKUIStatusBarAlertCenter *)self actionBlock];

  if (v4)
  {
    v5 = [(SKUIStatusBarAlertCenter *)self actionBlock];
    v5[2]();
  }
}

+ (void)sharedCenter
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIStatusBarAlertCenter sharedCenter]";
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStatusBarAlertCenter init]";
}

@end