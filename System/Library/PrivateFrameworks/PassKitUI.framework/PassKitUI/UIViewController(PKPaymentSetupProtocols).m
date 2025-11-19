@interface UIViewController(PKPaymentSetupProtocols)
- (uint64_t)pk_paymentSetupSetHideSetupLaterButton:()PKPaymentSetupProtocols;
- (void)_pk_presentViewController:()PKPaymentSetupProtocols animated:transition:popToViewControllerAfterPresentation:completion:;
- (void)pk_paymentSetupPreflight:()PKPaymentSetupProtocols;
@end

@implementation UIViewController(PKPaymentSetupProtocols)

- (uint64_t)pk_paymentSetupSetHideSetupLaterButton:()PKPaymentSetupProtocols
{
  result = [a1 conformsToProtocol:&unk_1F3D16350];
  if (result)
  {

    return [a1 setHideSetupLaterButton:a3];
  }

  return result;
}

- (void)pk_paymentSetupPreflight:()PKPaymentSetupProtocols
{
  v4 = a3;
  if ([a1 conformsToProtocol:&unk_1F3D131A0])
  {
    [a1 preflightWithCompletion:v4];
  }

  else
  {
    v4[2](v4, 1);
  }
}

- (void)_pk_presentViewController:()PKPaymentSetupProtocols animated:transition:popToViewControllerAfterPresentation:completion:
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __139__UIViewController_PKPaymentSetupProtocols___pk_presentViewController_animated_transition_popToViewControllerAfterPresentation_completion___block_invoke;
  aBlock[3] = &unk_1E8012300;
  v30 = v13;
  v31 = a1;
  v32 = v14;
  v15 = v14;
  v16 = v13;
  v17 = _Block_copy(aBlock);
  v18 = dispatch_group_create();
  dispatch_group_enter(v18);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __139__UIViewController_PKPaymentSetupProtocols___pk_presentViewController_animated_transition_popToViewControllerAfterPresentation_completion___block_invoke_2;
  v27[3] = &unk_1E8011D28;
  v28 = v18;
  v19 = v18;
  [v12 pk_paymentSetupPreflight:v27];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __139__UIViewController_PKPaymentSetupProtocols___pk_presentViewController_animated_transition_popToViewControllerAfterPresentation_completion___block_invoke_3;
  v22[3] = &unk_1E8015D50;
  v26 = a4;
  v25 = a5;
  v22[4] = a1;
  v23 = v12;
  v24 = v17;
  v20 = v17;
  v21 = v12;
  dispatch_group_notify(v19, MEMORY[0x1E69E96A0], v22);
}

@end