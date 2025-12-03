@interface ICQUIPreferencesLiftUIDelegate
- (ICQUIPreferencesLiftUIDelegate)initWithNavigationController:(id)controller account:(id)account;
- (PreferencesRemoteUIDelegateProtocol)delegate;
- (void)liftUIPresenterDidCancel:(id)cancel;
- (void)liftUIPresenterDidComplete:(id)complete;
- (void)loadURL:(id)l;
@end

@implementation ICQUIPreferencesLiftUIDelegate

- (ICQUIPreferencesLiftUIDelegate)initWithNavigationController:(id)controller account:(id)account
{
  controllerCopy = controller;
  accountCopy = account;
  v12.receiver = self;
  v12.super_class = ICQUIPreferencesLiftUIDelegate;
  v9 = [(ICQUIPreferencesLiftUIDelegate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_navigation, controller);
    objc_storeStrong(&v10->_account, account);
  }

  return v10;
}

- (void)loadURL:(id)l
{
  lCopy = l;
  v5 = [ICQLiftUIPresenter alloc];
  account = [(ICQUIPreferencesLiftUIDelegate *)self account];
  v7 = [(ICQLiftUIPresenter *)v5 initWithURL:lCopy account:account data:0];

  [(ICQUIPreferencesLiftUIDelegate *)self setPresenter:v7];
  presenter = [(ICQUIPreferencesLiftUIDelegate *)self presenter];
  [presenter setDelegate:self];

  presenter2 = [(ICQUIPreferencesLiftUIDelegate *)self presenter];
  navigation = [(ICQUIPreferencesLiftUIDelegate *)self navigation];
  [presenter2 pushInNavigationController:navigation animated:1];
}

- (void)liftUIPresenterDidCancel:(id)cancel
{
  navigation = [(ICQUIPreferencesLiftUIDelegate *)self navigation];
  v3 = [navigation popViewControllerAnimated:1];
}

- (void)liftUIPresenterDidComplete:(id)complete
{
  navigation = [(ICQUIPreferencesLiftUIDelegate *)self navigation];
  v5 = [navigation popViewControllerAnimated:1];

  delegate = [(ICQUIPreferencesLiftUIDelegate *)self delegate];
  [delegate reloadTopControllerWithAdditionalHeaders:0];
}

- (PreferencesRemoteUIDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end