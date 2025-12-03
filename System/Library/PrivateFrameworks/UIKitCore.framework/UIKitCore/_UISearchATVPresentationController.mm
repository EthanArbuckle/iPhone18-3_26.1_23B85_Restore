@interface _UISearchATVPresentationController
- (CGRect)finalFrameForContainerView;
- (id)backgroundObscuringView;
- (void)setContentVisible:(BOOL)visible;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation _UISearchATVPresentationController

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

    [(UIView *)self->_blurView setAutoresizingMask:18];
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  [(UIPresentationController *)self traitCollection];

  v5.receiver = self;
  v5.super_class = _UISearchATVPresentationController;
  [(UIPresentationController *)&v5 traitCollectionDidChange:changeCopy];
}

@end