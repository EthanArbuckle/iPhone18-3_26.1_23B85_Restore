@interface WFRemotePINEntryViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)dealloc;
- (void)getIsPINPresentWithCompletion:(id)a3;
- (void)permitURLWithCompletion:(id)a3;
- (void)setPageTitle:(id)a3;
- (void)setURL:(id)a3;
- (void)viewDidLoad;
@end

@implementation WFRemotePINEntryViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = WFRemotePINEntryViewController;
  [(WFRemotePINEntryViewController *)&v4 viewDidLoad];
  if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v3 = 16;
  }

  else
  {
    v3 = 17;
  }

  [(WFRemotePINEntryViewController *)self setModalPresentationStyle:v3];
}

- (void)dealloc
{
  [(WFRemotePINEntryViewController *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = WFRemotePINEntryViewController;
  [(WFRemotePINEntryViewController *)&v3 dealloc];
}

- (void)setURL:(id)a3
{
  v4 = [(_UIRemoteViewController *)self serviceViewControllerProxy];

  [v4 setURL:a3];
}

- (void)setPageTitle:(id)a3
{
  v4 = [(_UIRemoteViewController *)self serviceViewControllerProxy];

  [v4 setPageTitle:a3];
}

- (unint64_t)supportedInterfaceOrientations
{
  if ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] == 1)
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
  v4 = [(_UIRemoteViewController *)self serviceViewControllerProxy];

  [v4 getIsPINPresentWithCompletion:a3];
}

- (void)permitURLWithCompletion:(id)a3
{
  v4 = [(_UIRemoteViewController *)self serviceViewControllerProxy];

  [v4 permitURLWithCompletion:a3];
}

@end