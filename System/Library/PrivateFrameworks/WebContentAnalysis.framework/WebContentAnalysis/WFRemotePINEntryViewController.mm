@interface WFRemotePINEntryViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)dealloc;
- (void)getIsPINPresentWithCompletion:(id)completion;
- (void)permitURLWithCompletion:(id)completion;
- (void)setPageTitle:(id)title;
- (void)setURL:(id)l;
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

- (void)setURL:(id)l
{
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];

  [serviceViewControllerProxy setURL:l];
}

- (void)setPageTitle:(id)title
{
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];

  [serviceViewControllerProxy setPageTitle:title];
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

- (void)getIsPINPresentWithCompletion:(id)completion
{
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];

  [serviceViewControllerProxy getIsPINPresentWithCompletion:completion];
}

- (void)permitURLWithCompletion:(id)completion
{
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];

  [serviceViewControllerProxy permitURLWithCompletion:completion];
}

@end