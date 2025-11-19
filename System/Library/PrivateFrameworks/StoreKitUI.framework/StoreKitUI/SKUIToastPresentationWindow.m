@interface SKUIToastPresentationWindow
- (SKUIToastPresentationWindow)init;
- (id)_presentationViewController;
- (void)init;
- (void)presentAlertController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation SKUIToastPresentationWindow

- (SKUIToastPresentationWindow)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIToastPresentationWindow init];
  }

  v8.receiver = self;
  v8.super_class = SKUIToastPresentationWindow;
  v3 = [(UIApplicationRotationFollowingWindow *)&v8 init];
  v4 = v3;
  if (v3)
  {
    [(SKUIToastPresentationWindow *)v3 setOpaque:0];
    v5 = [MEMORY[0x277D75348] clearColor];
    [(SKUIToastPresentationWindow *)v4 setBackgroundColor:v5];

    v6 = [MEMORY[0x277D759A0] mainScreen];
    [(SKUIToastPresentationWindow *)v4 setScreen:v6];

    [(SKUIToastPresentationWindow *)v4 setWindowLevel:*MEMORY[0x277D772A8]];
    [(SKUIToastPresentationWindow *)v4 setHidden:1];
  }

  return v4;
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(SKUIToastPresentationWindow *)self _presentationViewController];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__SKUIToastPresentationWindow_presentViewController_animated_completion___block_invoke;
  v12[3] = &unk_2781F9990;
  v13 = v8;
  v11 = v8;
  [v10 presentViewController:v9 animated:v5 completion:v12];
}

uint64_t __73__SKUIToastPresentationWindow_presentViewController_animated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)presentAlertController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v11 = a3;
  v8 = a5;
  v9 = [(SKUIToastPresentationWindow *)self _presentationViewController];
  v10 = [v9 presentedViewController];
  if (v10)
  {
    if (v8)
    {
      v8[2](v8, v10 == v11);
    }
  }

  else
  {
    [(SKUIToastPresentationWindow *)self presentViewController:v11 animated:v6 completion:v8];
  }
}

- (id)_presentationViewController
{
  v3 = [(SKUIToastPresentationWindow *)self rootViewController];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75150]);
    [v4 setSizesWindowToScene:1];
    [(SKUIToastPresentationWindow *)self setRootViewController:v4];
  }

  return [(SKUIToastPresentationWindow *)self rootViewController];
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIToastPresentationWindow init]";
}

@end