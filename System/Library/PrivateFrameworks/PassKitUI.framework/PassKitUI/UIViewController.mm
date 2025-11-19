@interface UIViewController
@end

@implementation UIViewController

uint64_t __139__UIViewController_PKPaymentSetupProtocols___pk_presentViewController_animated_transition_popToViewControllerAfterPresentation_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) navigationController];
    [v2 _pk_popToViewController:*(a1 + 32) animated:0];
  }

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __139__UIViewController_PKPaymentSetupProtocols___pk_presentViewController_animated_transition_popToViewControllerAfterPresentation_completion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 60) == 1 && *(a1 + 56))
  {
    [*(a1 + 32) presentViewController:*(a1 + 40) withTransition:*(a1 + 56) completion:0];
  }

  else
  {
    [*(a1 + 32) presentViewController:*(a1 + 40) animated:? completion:?];
  }

  v2 = [*(a1 + 32) transitionCoordinator];
  if (v2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __139__UIViewController_PKPaymentSetupProtocols___pk_presentViewController_animated_transition_popToViewControllerAfterPresentation_completion___block_invoke_4;
    v3[3] = &unk_1E8015D28;
    v4 = *(a1 + 48);
    [v2 animateAlongsideTransition:0 completion:v3];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

@end