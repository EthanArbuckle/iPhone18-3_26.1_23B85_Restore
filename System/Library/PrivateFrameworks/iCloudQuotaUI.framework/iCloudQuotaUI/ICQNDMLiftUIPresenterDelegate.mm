@interface ICQNDMLiftUIPresenterDelegate
- (ICQNDMLiftUIPresenterDelegate)initWithPresentingViewController:(id)controller;
- (UIViewController)presentingViewController;
- (void)liftUIPresenter:(id)presenter didLoadWithSuccess:(BOOL)success error:(id)error;
- (void)liftUIPresenter:(id)presenter performAction:(int64_t)action parameters:(id)parameters completion:(id)completion;
- (void)liftUIPresenterDidCancel:(id)cancel;
- (void)liftUIPresenterDidComplete:(id)complete;
@end

@implementation ICQNDMLiftUIPresenterDelegate

- (ICQNDMLiftUIPresenterDelegate)initWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [(ICQNDMLiftUIPresenterDelegate *)self init];
  [(ICQNDMLiftUIPresenterDelegate *)v5 setPresentingViewController:controllerCopy];

  return v5;
}

- (void)liftUIPresenterDidCancel:(id)cancel
{
  presentingViewController = [(ICQNDMLiftUIPresenterDelegate *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)liftUIPresenterDidComplete:(id)complete
{
  presentingViewController = [(ICQNDMLiftUIPresenterDelegate *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)liftUIPresenter:(id)presenter didLoadWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v8 = _ICQGetLogSystem();
  presentingViewController = v8;
  if (errorCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ICQNDMLiftUIPresenterDelegate liftUIPresenter:errorCopy didLoadWithSuccess:presentingViewController error:?];
    }

    presentingViewController = [(ICQNDMLiftUIPresenterDelegate *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (successCopy)
    {
      v10 = @"YES";
    }

    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&dword_275623000, presentingViewController, OS_LOG_TYPE_DEFAULT, "Loaded NDM LiftUI with success %@", &v11, 0xCu);
  }
}

- (void)liftUIPresenter:(id)presenter performAction:(int64_t)action parameters:(id)parameters completion:(id)completion
{
  completionCopy = completion;
  if (action == 101)
  {
    presentingViewController = [(ICQNDMLiftUIPresenterDelegate *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    completionCopy[2](completionCopy, [MEMORY[0x277D7F370] performAction:action parameters:parameters options:0], 0);
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