@interface ICQNDMLiftUIPresenterDelegate
- (ICQNDMLiftUIPresenterDelegate)initWithPresentingViewController:(id)a3;
- (UIViewController)presentingViewController;
- (void)liftUIPresenter:(id)a3 didLoadWithSuccess:(BOOL)a4 error:(id)a5;
- (void)liftUIPresenter:(id)a3 performAction:(int64_t)a4 parameters:(id)a5 completion:(id)a6;
- (void)liftUIPresenterDidCancel:(id)a3;
- (void)liftUIPresenterDidComplete:(id)a3;
@end

@implementation ICQNDMLiftUIPresenterDelegate

- (ICQNDMLiftUIPresenterDelegate)initWithPresentingViewController:(id)a3
{
  v4 = a3;
  v5 = [(ICQNDMLiftUIPresenterDelegate *)self init];
  [(ICQNDMLiftUIPresenterDelegate *)v5 setPresentingViewController:v4];

  return v5;
}

- (void)liftUIPresenterDidCancel:(id)a3
{
  v3 = [(ICQNDMLiftUIPresenterDelegate *)self presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)liftUIPresenterDidComplete:(id)a3
{
  v3 = [(ICQNDMLiftUIPresenterDelegate *)self presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)liftUIPresenter:(id)a3 didLoadWithSuccess:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v13 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = _ICQGetLogSystem();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ICQNDMLiftUIPresenterDelegate liftUIPresenter:v7 didLoadWithSuccess:v9 error:?];
    }

    v9 = [(ICQNDMLiftUIPresenterDelegate *)self presentingViewController];
    [v9 dismissViewControllerAnimated:1 completion:0];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (v5)
    {
      v10 = @"YES";
    }

    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "Loaded NDM LiftUI with success %@", &v11, 0xCu);
  }
}

- (void)liftUIPresenter:(id)a3 performAction:(int64_t)a4 parameters:(id)a5 completion:(id)a6
{
  v10 = a6;
  if (a4 == 101)
  {
    v9 = [(ICQNDMLiftUIPresenterDelegate *)self presentingViewController];
    [v9 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v10[2](v10, [MEMORY[0x277D7F370] performAction:a4 parameters:a5 options:0], 0);
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (void)liftUIPresenter:(uint64_t)a1 didLoadWithSuccess:(NSObject *)a2 error:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "Could not load NDM LiftUI with error %@", &v2, 0xCu);
}

@end