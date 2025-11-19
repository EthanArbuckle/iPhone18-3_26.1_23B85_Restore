@interface _UISearchATVPresentationController
- (CGRect)finalFrameForContainerView;
- (id)backgroundObscuringView;
- (void)setContentVisible:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation _UISearchATVPresentationController

- (id)backgroundObscuringView
{
  blurView = self->_blurView;
  if (!blurView)
  {
    v4 = [UIVisualEffectView alloc];
    v5 = [(UIPresentationController *)self presentedViewController];
    v6 = [v5 searchBar];
    v7 = [(UIPresentationController *)self traitCollection];
    v8 = [v6 _presentationBackgroundBlurEffectForTraitCollection:v7];
    v9 = [(UIVisualEffectView *)v4 initWithEffect:v8];
    v10 = self->_blurView;
    self->_blurView = v9;

    v11 = [(UIPresentationController *)self presentedViewController];
    v12 = [v11 view];
    [v12 bounds];
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

- (void)setContentVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIPresentationController *)self presentedView];
  [v4 setHidden:!v3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  [(UIPresentationController *)self traitCollection];

  v5.receiver = self;
  v5.super_class = _UISearchATVPresentationController;
  [(UIPresentationController *)&v5 traitCollectionDidChange:v4];
}

@end