@interface UINavigationController(PKPaymentSetupProtocols)
- (uint64_t)_pk_popToViewControllerPresentationMarker:()PKPaymentSetupProtocols animated:;
- (void)_pk_popToViewController:()PKPaymentSetupProtocols animated:;
- (void)_pk_popViewControllersFromViewController:()PKPaymentSetupProtocols toViewController:animated:;
- (void)_pk_presentPaymentSetupViewController:()PKPaymentSetupProtocols animated:performPreflight:delay:completion:;
@end

@implementation UINavigationController(PKPaymentSetupProtocols)

- (void)_pk_presentPaymentSetupViewController:()PKPaymentSetupProtocols animated:performPreflight:delay:completion:
{
  v12 = a3;
  v13 = a7;
  v14 = v13;
  if (v12)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v15 = dispatch_group_create();
    v16 = v15;
    if (a6 >= 1)
    {
      dispatch_group_enter(v15);
      v17 = dispatch_time(0, a6);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __132__UINavigationController_PKPaymentSetupProtocols___pk_presentPaymentSetupViewController_animated_performPreflight_delay_completion___block_invoke;
      block[3] = &unk_1E8010970;
      v34 = v16;
      dispatch_after(v17, MEMORY[0x1E69E96A0], block);
    }

    if (a5)
    {
      dispatch_group_enter(v16);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __132__UINavigationController_PKPaymentSetupProtocols___pk_presentPaymentSetupViewController_animated_performPreflight_delay_completion___block_invoke_2;
      v30[3] = &unk_1E8015898;
      v32 = &v35;
      v31 = v16;
      [v12 pk_paymentSetupPreflight:v30];
    }

    else
    {
      *(v36 + 24) = 1;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __132__UINavigationController_PKPaymentSetupProtocols___pk_presentPaymentSetupViewController_animated_performPreflight_delay_completion___block_invoke_3;
    aBlock[3] = &unk_1E8010DD0;
    aBlock[4] = a1;
    v18 = v14;
    v29 = v18;
    v19 = _Block_copy(aBlock);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __132__UINavigationController_PKPaymentSetupProtocols___pk_presentPaymentSetupViewController_animated_performPreflight_delay_completion___block_invoke_4;
    v21[3] = &unk_1E8015D78;
    v26 = &v35;
    v22 = v12;
    v23 = a1;
    v24 = v18;
    v27 = a4;
    v25 = v19;
    v20 = v19;
    dispatch_group_notify(v16, MEMORY[0x1E69E96A0], v21);

    _Block_object_dispose(&v35, 8);
  }

  else if (v13)
  {
    (*(v13 + 2))(v13, 0);
  }
}

- (uint64_t)_pk_popToViewControllerPresentationMarker:()PKPaymentSetupProtocols animated:
{
  v4 = a3;
  v27 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [a1 viewControllers];
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v19 = a4;
      v11 = *v21;
      v12 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
      while (2)
      {
        v13 = 0;
        v14 = v12;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v20 + 1) + 8 * v13);
          if ((objc_opt_respondsToSelector() & 1) != 0 && [v15 paymentSetupMarker] == v4)
          {
            [v7 addObject:v15];

            v4 = 1;
            goto LABEL_15;
          }

          [v7 addObject:v15];

          ++v13;
        }

        while (v10 != v13);
        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        v12 = v14;
        if (v10)
        {
          continue;
        }

        break;
      }

      v4 = 0;
LABEL_15:
      a4 = v19;
    }

    else
    {
      v4 = 0;
    }

    [a1 setViewControllers:v7 animated:a4];
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(a2);
      *buf = 138412290;
      v26 = v17;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "%@ called without specified presentation marker, no-op.", buf, 0xCu);

      v4 = 0;
    }
  }

  return v4;
}

- (void)_pk_popToViewController:()PKPaymentSetupProtocols animated:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [a1 viewControllers];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v15 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v14 + 1) + 8 * v12);
      [v7 addObject:v13];
      if (v13 == v6)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [a1 setViewControllers:v7 animated:a4];
}

- (void)_pk_popViewControllersFromViewController:()PKPaymentSetupProtocols toViewController:animated:
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [a1 viewControllers];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        if (v13)
        {
          if (v16 != v8 || v16 == v7)
          {
            v13 = 1;
          }

          else
          {
            [v9 addObject:*(*(&v19 + 1) + 8 * v15)];
            v13 = 0;
          }
        }

        else
        {
          [v9 addObject:*(*(&v19 + 1) + 8 * v15)];
          v13 = v16 == v7;
        }

        ++v15;
      }

      while (v12 != v15);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  if ((PKEqualObjects() & 1) == 0)
  {
    [a1 setViewControllers:v9 animated:a5];
  }
}

@end