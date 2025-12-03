@interface ICQUILegacyPurchaseFlowController
- (void)beginFlowWithPresenter:(id)presenter action:(id)action completion:(id)completion;
- (void)manager:(id)manager didCompleteWithError:(id)error;
- (void)manager:(id)manager loadDidFailWithError:(id)error;
- (void)managerDidCancel:(id)cancel;
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation ICQUILegacyPurchaseFlowController

- (void)beginFlowWithPresenter:(id)presenter action:(id)action completion:(id)completion
{
  actionCopy = action;
  completionCopy = completion;
  presenterCopy = presenter;
  v11 = _ICQGetLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "Presenting legacy cloud storage offers flow.", v21, 2u);
  }

  offerManager = self->_offerManager;
  if (!offerManager)
  {
    v13 = objc_alloc_init(ICQUICloudStorageOffersManager);
    v14 = self->_offerManager;
    self->_offerManager = v13;

    [(ICQUICloudStorageOffersManager *)self->_offerManager setDelegate:self];
    offerManager = self->_offerManager;
  }

  [(ICQUICloudStorageOffersManager *)offerManager setShouldOfferDeviceOffers:*MEMORY[0x277D3FD48] == actionCopy];
  v15 = [completionCopy copy];

  flowCompletion = self->_flowCompletion;
  self->_flowCompletion = v15;

  v17 = objc_alloc_init(MEMORY[0x277CECAF8]);
  v18 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v17];
  navController = self->_navController;
  self->_navController = v18;

  [(UINavigationController *)self->_navController setModalPresentationStyle:2];
  [(UINavigationController *)self->_navController setModalTransitionStyle:0];
  [presenterCopy presentViewController:self->_navController animated:1 completion:0];

  presentationController = [(UINavigationController *)self->_navController presentationController];
  [presentationController setDelegate:self];

  [(ICQUICloudStorageOffersManager *)self->_offerManager beginFlowWithNavigationController:self->_navController modally:0];
}

- (void)managerDidCancel:(id)cancel
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Cloud storage offers flow did cancel.", v7, 2u);
  }

  if (self->_flowCompletion)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Preferences.cloud-storage-offers" code:1 userInfo:0];
    (*(self->_flowCompletion + 2))();
    flowCompletion = self->_flowCompletion;
    self->_flowCompletion = 0;
  }
}

- (void)manager:(id)manager didCompleteWithError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = errorCopy;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Cloud storage offers flow did complete with error: %@", &v11, 0xCu);
  }

  flowCompletion = self->_flowCompletion;
  if (flowCompletion)
  {
    if (errorCopy)
    {
      domain = [errorCopy domain];
      if ([domain isEqualToString:@"com.apple.Preferences.cloud-storage-offers"])
      {
        v9 = [errorCopy code] == 2;
      }

      else
      {
        v9 = 0;
      }

      flowCompletion = self->_flowCompletion;
    }

    else
    {
      v9 = 1;
    }

    flowCompletion[2](flowCompletion, v9, errorCopy);
    v10 = self->_flowCompletion;
    self->_flowCompletion = 0;
  }
}

- (void)manager:(id)manager loadDidFailWithError:(id)error
{
  v10 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = errorCopy;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Cloud storage offers flow did fail with error: %@", &v8, 0xCu);
  }

  flowCompletion = self->_flowCompletion;
  if (flowCompletion)
  {
    flowCompletion[2](flowCompletion, 0, errorCopy);
  }
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Legacy purchase flow was dismissed.", v5, 2u);
  }

  [(ICQUILegacyPurchaseFlowController *)self managerDidCancel:self->_offerManager];
}

@end