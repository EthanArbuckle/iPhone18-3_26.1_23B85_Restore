@interface _UISearchCarPlayPresentationController
- (CGRect)finalFrameForContainerView;
- (id)backgroundObscuringView;
- (void)containerViewWillLayoutSubviews;
- (void)setContentVisible:(BOOL)visible;
@end

@implementation _UISearchCarPlayPresentationController

- (id)backgroundObscuringView
{
  blurView = self->_blurView;
  if (!blurView)
  {
    v4 = [UIVisualEffectView alloc];
    presentedViewController = [(UIPresentationController *)self presentedViewController];
    searchBar = [presentedViewController searchBar];
    traitCollection = [(UIPresentationController *)self traitCollection];
    v8 = [searchBar _presentationBackgroundBlurEffectForTraitCollection:traitCollection];
    v9 = [(UIVisualEffectView *)v4 initWithEffect:v8];
    v10 = self->_blurView;
    self->_blurView = v9;

    presentedViewController2 = [(UIPresentationController *)self presentedViewController];
    view = [presentedViewController2 view];
    [view bounds];
    [(UIView *)self->_blurView setFrame:?];

    [(UIView *)self->_blurView setAutoresizingMask:26];
    blurView = self->_blurView;
  }

  return blurView;
}

- (CGRect)finalFrameForContainerView
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setContentVisible:(BOOL)visible
{
  visibleCopy = visible;
  presentedView = [(UIPresentationController *)self presentedView];
  [presentedView setHidden:!visibleCopy];
}

- (void)containerViewWillLayoutSubviews
{
  blurView = [(_UISearchCarPlayPresentationController *)self blurView];
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  searchBar = [presentedViewController searchBar];
  traitCollection = [(UIPresentationController *)self traitCollection];
  v6 = [searchBar _presentationBackgroundBlurEffectForTraitCollection:traitCollection];
  [blurView setEffect:v6];
}

@end