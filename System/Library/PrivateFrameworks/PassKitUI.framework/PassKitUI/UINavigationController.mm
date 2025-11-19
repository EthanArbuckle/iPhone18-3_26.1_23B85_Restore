@interface UINavigationController
@end

@implementation UINavigationController

uint64_t __132__UINavigationController_PKPaymentSetupProtocols___pk_presentPaymentSetupViewController_animated_performPreflight_delay_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationBar];
  [v2 setUserInteractionEnabled:1];

  v3 = [*(a1 + 32) interactivePopGestureRecognizer];
  [v3 setEnabled:1];

  v4 = [*(a1 + 32) view];
  [v4 setUserInteractionEnabled:1];

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void __132__UINavigationController_PKPaymentSetupProtocols___pk_presentPaymentSetupViewController_animated_performPreflight_delay_completion___block_invoke_4(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    v2 = objc_opt_respondsToSelector();
    v3 = *(a1 + 32);
    if (v2)
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 72);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __132__UINavigationController_PKPaymentSetupProtocols___pk_presentPaymentSetupViewController_animated_performPreflight_delay_completion___block_invoke_72;
      v38[3] = &unk_1E8010B50;
      v39 = *(a1 + 56);
      [v3 presentWithNavigationController:v4 animated:v5 completion:v38];

      return;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_33;
    }

    v10 = [*(a1 + 32) onPresentationRemoveViewControllersAfterMarker];
    if (!v10)
    {
      goto LABEL_33;
    }

    v11 = v10;
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138412546;
      v43 = v14;
      v44 = 2048;
      v45 = v11;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "%@ asked to remove view controllers after marker: %lu", buf, 0x16u);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v15 = [*(a1 + 40) viewControllers];
    v16 = [v15 countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      oslog = v12;
      v18 = 0;
      v19 = *v35;
      while (2)
      {
        v20 = 0;
        v21 = v18;
        v18 += v17;
        do
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v22 = *(*(&v34 + 1) + 8 * v20);
          if ((objc_opt_respondsToSelector() & 1) != 0 && v11 == [v22 paymentSetupMarker])
          {
            if ((objc_opt_respondsToSelector() & 1) != 0 && [v22 paymentSetupMarkerRemovalIsInclusive])
            {
              if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v43 = v22;
                _os_log_impl(&dword_1BD026000, oslog, OS_LOG_TYPE_DEFAULT, "Removal is inclusive of marked view controller: %@", buf, 0xCu);
              }

              v18 = v21;
            }

            else
            {
              v18 = v21 + 1;
            }

            goto LABEL_28;
          }

          ++v21;
          ++v20;
        }

        while (v17 != v20);
        v17 = [v15 countByEnumeratingWithState:&v34 objects:v41 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }

LABEL_28:

      v12 = oslog;
      if (v18)
      {
        v23 = [*(a1 + 40) viewControllers];
        v24 = [v23 count];

        if (v18 != v24)
        {
          v27 = [*(a1 + 40) viewControllers];
          v28 = [v27 subarrayWithRange:{0, v18}];
          v29 = [v28 mutableCopy];

          [v29 addObject:*(a1 + 32)];
          [*(a1 + 40) setViewControllers:v29 animated:*(a1 + 72)];

          goto LABEL_39;
        }

        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, oslog, OS_LOG_TYPE_DEFAULT, "No target or mark found, pushing new view controller onto existing stack. This may be an error.", buf, 2u);
        }

LABEL_33:
        [*(a1 + 40) pushViewController:*(a1 + 32) animated:{*(a1 + 72), oslog}];
LABEL_39:
        v30 = [*(a1 + 40) transitionCoordinator];
        if (v30)
        {
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __132__UINavigationController_PKPaymentSetupProtocols___pk_presentPaymentSetupViewController_animated_performPreflight_delay_completion___block_invoke_79;
          v32[3] = &unk_1E8015D28;
          v33 = *(a1 + 56);
          [v30 animateAlongsideTransition:0 completion:v32];
        }

        else
        {
          (*(*(a1 + 56) + 16))();
        }

        return;
      }
    }

    else
    {
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "No view controllers remain, setting new view controller as root", buf, 2u);
    }

    v25 = *(a1 + 40);
    v40 = *(a1 + 32);
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
    [v25 setViewControllers:v26 animated:*(a1 + 72)];

    goto LABEL_39;
  }

  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138412290;
    v43 = v8;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Error: Preflight failed for view controller: %@", buf, 0xCu);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, 0);
  }
}

@end