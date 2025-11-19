@interface WCRRemotePINEntryViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)getIsPINPresentWithCompletion:(id)a3;
- (void)permitURLWithCompletion:(id)a3;
- (void)setPageTitle:(id)a3;
- (void)setURL:(id)a3;
- (void)viewDidLoad;
@end

@implementation WCRRemotePINEntryViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = WCRRemotePINEntryViewController;
  [(WCRRemotePINEntryViewController *)&v6 viewDidLoad];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = 16;
  }

  else
  {
    v5 = 17;
  }

  [(WCRRemotePINEntryViewController *)self setModalPresentationStyle:v5];
}

- (void)setURL:(id)a3
{
  v4 = a3;
  v5 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v5 setURL:v4];
}

- (void)setPageTitle:(id)a3
{
  v4 = a3;
  v5 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v5 setPageTitle:v4];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)getIsPINPresentWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v5 getIsPINPresentWithCompletion:v4];
}

- (void)permitURLWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v5 permitURLWithCompletion:v4];
}

@end