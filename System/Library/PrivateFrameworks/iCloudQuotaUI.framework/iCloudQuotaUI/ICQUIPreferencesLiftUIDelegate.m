@interface ICQUIPreferencesLiftUIDelegate
- (ICQUIPreferencesLiftUIDelegate)initWithNavigationController:(id)a3 account:(id)a4;
- (PreferencesRemoteUIDelegateProtocol)delegate;
- (void)liftUIPresenterDidCancel:(id)a3;
- (void)liftUIPresenterDidComplete:(id)a3;
- (void)loadURL:(id)a3;
@end

@implementation ICQUIPreferencesLiftUIDelegate

- (ICQUIPreferencesLiftUIDelegate)initWithNavigationController:(id)a3 account:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICQUIPreferencesLiftUIDelegate;
  v9 = [(ICQUIPreferencesLiftUIDelegate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_navigation, a3);
    objc_storeStrong(&v10->_account, a4);
  }

  return v10;
}

- (void)loadURL:(id)a3
{
  v4 = a3;
  v5 = [ICQLiftUIPresenter alloc];
  v6 = [(ICQUIPreferencesLiftUIDelegate *)self account];
  v7 = [(ICQLiftUIPresenter *)v5 initWithURL:v4 account:v6 data:0];

  [(ICQUIPreferencesLiftUIDelegate *)self setPresenter:v7];
  v8 = [(ICQUIPreferencesLiftUIDelegate *)self presenter];
  [v8 setDelegate:self];

  v10 = [(ICQUIPreferencesLiftUIDelegate *)self presenter];
  v9 = [(ICQUIPreferencesLiftUIDelegate *)self navigation];
  [v10 pushInNavigationController:v9 animated:1];
}

- (void)liftUIPresenterDidCancel:(id)a3
{
  v4 = [(ICQUIPreferencesLiftUIDelegate *)self navigation];
  v3 = [v4 popViewControllerAnimated:1];
}

- (void)liftUIPresenterDidComplete:(id)a3
{
  v4 = [(ICQUIPreferencesLiftUIDelegate *)self navigation];
  v5 = [v4 popViewControllerAnimated:1];

  v6 = [(ICQUIPreferencesLiftUIDelegate *)self delegate];
  [v6 reloadTopControllerWithAdditionalHeaders:0];
}

- (PreferencesRemoteUIDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end