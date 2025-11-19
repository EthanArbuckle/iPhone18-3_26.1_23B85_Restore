@interface ICQUILegacyPurchaseFlowController
- (void)beginFlowWithPresenter:(id)a3 action:(id)a4 completion:(id)a5;
- (void)manager:(id)a3 didCompleteWithError:(id)a4;
- (void)manager:(id)a3 loadDidFailWithError:(id)a4;
- (void)managerDidCancel:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
@end

@implementation ICQUILegacyPurchaseFlowController

- (void)beginFlowWithPresenter:(id)a3 action:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
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

  [(ICQUICloudStorageOffersManager *)offerManager setShouldOfferDeviceOffers:*MEMORY[0x277D3FD48] == v8];
  v15 = [v9 copy];

  flowCompletion = self->_flowCompletion;
  self->_flowCompletion = v15;

  v17 = objc_alloc_init(MEMORY[0x277CECAF8]);
  v18 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v17];
  navController = self->_navController;
  self->_navController = v18;

  [(UINavigationController *)self->_navController setModalPresentationStyle:2];
  [(UINavigationController *)self->_navController setModalTransitionStyle:0];
  [v10 presentViewController:self->_navController animated:1 completion:0];

  v20 = [(UINavigationController *)self->_navController presentationController];
  [v20 setDelegate:self];

  [(ICQUICloudStorageOffersManager *)self->_offerManager beginFlowWithNavigationController:self->_navController modally:0];
}

- (void)managerDidCancel:(id)a3
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

- (void)manager:(id)a3 didCompleteWithError:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Cloud storage offers flow did complete with error: %@", &v11, 0xCu);
  }

  flowCompletion = self->_flowCompletion;
  if (flowCompletion)
  {
    if (v5)
    {
      v8 = [v5 domain];
      if ([v8 isEqualToString:@"com.apple.Preferences.cloud-storage-offers"])
      {
        v9 = [v5 code] == 2;
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

    flowCompletion[2](flowCompletion, v9, v5);
    v10 = self->_flowCompletion;
    self->_flowCompletion = 0;
  }
}

- (void)manager:(id)a3 loadDidFailWithError:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Cloud storage offers flow did fail with error: %@", &v8, 0xCu);
  }

  flowCompletion = self->_flowCompletion;
  if (flowCompletion)
  {
    flowCompletion[2](flowCompletion, 0, v5);
  }
}

- (void)presentationControllerDidDismiss:(id)a3
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