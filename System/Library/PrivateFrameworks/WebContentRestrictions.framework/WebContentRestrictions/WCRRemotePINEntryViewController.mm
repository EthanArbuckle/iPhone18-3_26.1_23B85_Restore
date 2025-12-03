@interface WCRRemotePINEntryViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)getIsPINPresentWithCompletion:(id)completion;
- (void)permitURLWithCompletion:(id)completion;
- (void)setPageTitle:(id)title;
- (void)setURL:(id)l;
- (void)viewDidLoad;
@end

@implementation WCRRemotePINEntryViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = WCRRemotePINEntryViewController;
  [(WCRRemotePINEntryViewController *)&v6 viewDidLoad];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = 16;
  }

  else
  {
    v5 = 17;
  }

  [(WCRRemotePINEntryViewController *)self setModalPresentationStyle:v5];
}

- (void)setURL:(id)l
{
  lCopy = l;
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy setURL:lCopy];
}

- (void)setPageTitle:(id)title
{
  titleCopy = title;
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy setPageTitle:titleCopy];
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
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
  completionCopy = completion;
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy getIsPINPresentWithCompletion:completionCopy];
}

- (void)permitURLWithCompletion:(id)completion
{
  completionCopy = completion;
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy permitURLWithCompletion:completionCopy];
}

@end