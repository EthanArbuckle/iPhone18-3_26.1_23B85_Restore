@interface UIContextMenuPresentation
@end

@implementation UIContextMenuPresentation

void __66___UIContextMenuPresentation_setAlongsideAnimatorForPresentation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) uiController];
  v2 = [v3 platterContainerView];
  (*(v1 + 16))(v1, 1, v2);
}

void __63___UIContextMenuPresentation_setAlongsideAnimatorForDismissal___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) uiController];
  [v1 dismissalTransitionDidEnd];
}

void __63___UIContextMenuPresentation_setAlongsideAnimatorForDismissal___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) uiController];
  v2 = [v3 platterContainerView];
  (*(v1 + 16))(v1, 0, v2);
}

@end