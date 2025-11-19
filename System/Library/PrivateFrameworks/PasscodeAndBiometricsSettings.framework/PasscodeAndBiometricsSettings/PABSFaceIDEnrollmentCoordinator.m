@interface PABSFaceIDEnrollmentCoordinator
- (PABSFaceIDEnrollmentCoordinator)initWithPresentingViewController:(id)a3 configuration:(unint64_t)a4;
- (PABSFaceIDEnrollmentCoordinatorDelegate)delegate;
- (void)enrollmentNavigationControllerDidDismiss:(id)a3;
- (void)enrollmentNavigationControllerWillDismiss:(id)a3;
- (void)pearlEnrollController:(id)a3 finishedEnrollWithError:(id)a4;
- (void)preloadAndCreateEnrollmentControllerWithPasscode:(id)a3 completion:(id)a4;
- (void)startWithPasscode:(id)a3;
@end

@implementation PABSFaceIDEnrollmentCoordinator

- (PABSFaceIDEnrollmentCoordinator)initWithPresentingViewController:(id)a3 configuration:(unint64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = PABSFaceIDEnrollmentCoordinator;
  v8 = [(PABSFaceIDEnrollmentCoordinator *)&v12 init];
  if (v8)
  {
    v9 = objc_alloc_init(PSEnrollmentNavigationController);
    presentedViewController = v8->__presentedViewController;
    v8->__presentedViewController = v9;

    [(PSEnrollmentNavigationController *)v8->__presentedViewController setDismissalDelegate:v8];
    objc_storeStrong(&v8->_presentingViewController, a3);
    v8->_configuration = a4;
  }

  return v8;
}

- (void)startWithPasscode:(id)a3
{
  v38[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PABSFaceIDEnrollmentCoordinator *)self presentedViewController];
  v6 = [v5 navigationBar];
  v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.0];
  v8 = PSPointImageOfColor();
  [v6 setBackgroundImage:v8 forBarMetrics:0];

  v9 = [(PABSFaceIDEnrollmentCoordinator *)self presentedViewController];
  v10 = [v9 navigationBar];
  [v10 _setHidesShadow:1];

  v11 = [(PABSFaceIDEnrollmentCoordinator *)self delegate];
  LODWORD(v10) = [v11 faceIDEnrollmentCoordinatorShouldPresentInModalSheet:self];

  v12 = [(PABSFaceIDEnrollmentCoordinator *)self presentedViewController];
  v13 = v12;
  if (v10)
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  [v12 setModalPresentationStyle:v14];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__PABSFaceIDEnrollmentCoordinator_startWithPasscode___block_invoke;
  aBlock[3] = &unk_279A02FB8;
  aBlock[4] = self;
  v15 = v4;
  v34 = v15;
  objc_copyWeak(&v35, &location);
  v16 = _Block_copy(aBlock);
  v17 = [(PABSFaceIDEnrollmentCoordinator *)self configuration];
  if (v17 < 2)
  {
    v16[2](v16, 1);
  }

  else
  {
    if (v17 == 2)
    {
      v25 = objc_alloc(MEMORY[0x277CF1C40]);
      v19 = v32;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __53__PABSFaceIDEnrollmentCoordinator_startWithPasscode___block_invoke_3;
      v32[3] = &unk_279A02FE0;
      v32[4] = v16;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __53__PABSFaceIDEnrollmentCoordinator_startWithPasscode___block_invoke_4;
      v31[3] = &unk_279A03008;
      v31[4] = self;
      v20 = [v25 initInBuddy:0 bkDevice:0 upsell:0 withEndEnrollmentActionPrimary:v32 enrollmentActionSecondary:v31];
      v38[0] = v20;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
      v27 = [(PABSFaceIDEnrollmentCoordinator *)self presentedViewController];
      [v27 setViewControllers:v26];

      v23 = [(PABSFaceIDEnrollmentCoordinator *)self presentingViewController];
      v24 = [(PABSFaceIDEnrollmentCoordinator *)self presentedViewController];
      [v23 presentViewController:v24 animated:1 completion:0];
      goto LABEL_10;
    }

    if (v17 == 3)
    {
      v18 = objc_alloc(MEMORY[0x277CF1C38]);
      v19 = v30;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __53__PABSFaceIDEnrollmentCoordinator_startWithPasscode___block_invoke_5;
      v30[3] = &unk_279A02FE0;
      v30[4] = v16;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __53__PABSFaceIDEnrollmentCoordinator_startWithPasscode___block_invoke_6;
      v29[3] = &unk_279A03008;
      v29[4] = self;
      v20 = [v18 initInBuddy:0 isDemo:0 bkDevice:0 withEndEnrollmentActionPrimary:v30 enrollmentActionSecondary:v29];
      v37 = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      v22 = [(PABSFaceIDEnrollmentCoordinator *)self presentedViewController];
      [v22 setViewControllers:v21];

      v23 = [(PABSFaceIDEnrollmentCoordinator *)self presentingViewController];
      v24 = [(PABSFaceIDEnrollmentCoordinator *)self presentedViewController];
      [v23 presentViewController:v24 animated:1 completion:0];
LABEL_10:
    }
  }

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);

  v28 = *MEMORY[0x277D85DE8];
}

void __53__PABSFaceIDEnrollmentCoordinator_startWithPasscode___block_invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__PABSFaceIDEnrollmentCoordinator_startWithPasscode___block_invoke_2;
  v5[3] = &unk_279A02F90;
  objc_copyWeak(&v6, (a1 + 48));
  v7 = a2;
  [v3 preloadAndCreateEnrollmentControllerWithPasscode:v4 completion:v5];
  objc_destroyWeak(&v6);
}

void __53__PABSFaceIDEnrollmentCoordinator_startWithPasscode___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained configuration];
  if (v4 <= 3)
  {
    [v8 setEnrollmentConfiguration:qword_25E11FF70[v4]];
  }

  v5 = [WeakRetained presentedViewController];
  [v5 pushViewController:v8 animated:(*(a1 + 40) & 1) == 0];

  if (*(a1 + 40) == 1)
  {
    v6 = [WeakRetained presentingViewController];
    v7 = [WeakRetained presentedViewController];
    [v6 presentViewController:v7 animated:1 completion:0];
  }
}

void __53__PABSFaceIDEnrollmentCoordinator_startWithPasscode___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) presentedViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

void __53__PABSFaceIDEnrollmentCoordinator_startWithPasscode___block_invoke_6(uint64_t a1)
{
  v1 = [*(a1 + 32) presentedViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (void)preloadAndCreateEnrollmentControllerWithPasscode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277CF1C30];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __95__PABSFaceIDEnrollmentCoordinator_preloadAndCreateEnrollmentControllerWithPasscode_completion___block_invoke;
  v11[3] = &unk_279A03058;
  objc_copyWeak(&v14, &location);
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [v8 preloadWithCompletion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __95__PABSFaceIDEnrollmentCoordinator_preloadAndCreateEnrollmentControllerWithPasscode_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __95__PABSFaceIDEnrollmentCoordinator_preloadAndCreateEnrollmentControllerWithPasscode_completion___block_invoke_2;
  v5[3] = &unk_279A03030;
  objc_copyWeak(&v9, a1 + 6);
  v6 = v3;
  v7 = a1[4];
  v8 = a1[5];
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v9);
}

void __95__PABSFaceIDEnrollmentCoordinator_preloadAndCreateEnrollmentControllerWithPasscode_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [objc_alloc(MEMORY[0x277CF1C30]) initWithPreloadedState:*(a1 + 32)];
  [v2 setDelegate:WeakRetained];
  v3 = [WeakRetained delegate];
  [v2 setInSheet:{objc_msgSend(v3, "faceIDEnrollmentCoordinatorShouldPresentInModalSheet:", WeakRetained)}];

  [v2 primeWithPasscode:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

- (void)pearlEnrollController:(id)a3 finishedEnrollWithError:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = PABSLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      v7 = [v5 description];
    }

    else
    {
      v7 = &stru_286FD1EF8;
    }

    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_25E0E9000, v6, OS_LOG_TYPE_DEFAULT, "Finished Pearl enroll %@", &v10, 0xCu);
    if (v5)
    {
    }
  }

  v8 = [(PABSFaceIDEnrollmentCoordinator *)self delegate];
  [v8 faceIDEnrollmentCoordinator:self finishedEnrollmentWithError:v5];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)enrollmentNavigationControllerWillDismiss:(id)a3
{
  v4 = [(PABSFaceIDEnrollmentCoordinator *)self delegate];
  [v4 faceIDEnrollmentCoordinatorWillDismiss:self];
}

- (void)enrollmentNavigationControllerDidDismiss:(id)a3
{
  [(PABSFaceIDEnrollmentCoordinator *)self set_presentedViewController:0];
  v4 = [(PABSFaceIDEnrollmentCoordinator *)self delegate];
  [v4 faceIDEnrollmentCoordinatorDidDismiss:self];
}

- (PABSFaceIDEnrollmentCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end