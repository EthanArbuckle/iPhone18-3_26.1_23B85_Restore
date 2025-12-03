@interface PUPhotoEditBoostContainerView
- (void)_constrainSubview:(id)subview;
- (void)_updateViewLayering;
- (void)setEdrGain:(double)gain;
- (void)setViewToBoost:(id)boost;
- (void)willMoveToWindow:(id)window;
@end

@implementation PUPhotoEditBoostContainerView

- (void)_constrainSubview:(id)subview
{
  subviewCopy = subview;
  leftAnchor = [(PUPhotoEditBoostContainerView *)self leftAnchor];
  leftAnchor2 = [subviewCopy leftAnchor];
  v7 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v7 setActive:1];

  rightAnchor = [(PUPhotoEditBoostContainerView *)self rightAnchor];
  rightAnchor2 = [subviewCopy rightAnchor];
  v10 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v10 setActive:1];

  topAnchor = [(PUPhotoEditBoostContainerView *)self topAnchor];
  topAnchor2 = [subviewCopy topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v13 setActive:1];

  bottomAnchor = [(PUPhotoEditBoostContainerView *)self bottomAnchor];
  bottomAnchor2 = [subviewCopy bottomAnchor];

  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v15 setActive:1];
}

- (void)_updateViewLayering
{
  viewToBoost = [(PUPhotoEditBoostContainerView *)self viewToBoost];

  if (viewToBoost)
  {
    subviews = [(PUPhotoEditBoostContainerView *)self subviews];
    viewToBoost2 = [(PUPhotoEditBoostContainerView *)self viewToBoost];
    v6 = [subviews containsObject:viewToBoost2];

    if ((v6 & 1) == 0)
    {
      viewToBoost3 = [(PUPhotoEditBoostContainerView *)self viewToBoost];
      [(PUPhotoEditBoostContainerView *)self addSubview:viewToBoost3];

      viewToBoost4 = [(PUPhotoEditBoostContainerView *)self viewToBoost];
      [viewToBoost4 setTranslatesAutoresizingMaskIntoConstraints:0];

      viewToBoost5 = [(PUPhotoEditBoostContainerView *)self viewToBoost];
      [(PUPhotoEditBoostContainerView *)self _constrainSubview:viewToBoost5];
    }

    boostView = [(PUPhotoEditBoostContainerView *)self boostView];
    [(PUPhotoEditBoostContainerView *)self bringSubviewToFront:boostView];
  }
}

- (void)setEdrGain:(double)gain
{
  self->_edrGain = gain;
  boostView = [(PUPhotoEditBoostContainerView *)self boostView];
  [boostView setEdrGain:gain];
}

- (void)setViewToBoost:(id)boost
{
  boostCopy = boost;
  viewToBoost = self->_viewToBoost;
  if (viewToBoost)
  {
    [(UIView *)viewToBoost removeFromSuperview];
    v6 = self->_viewToBoost;
  }

  else
  {
    v6 = 0;
  }

  self->_viewToBoost = boostCopy;

  [(PUPhotoEditBoostContainerView *)self _updateViewLayering];
}

- (void)willMoveToWindow:(id)window
{
  boostView = [(PUPhotoEditBoostContainerView *)self boostView];

  if (!boostView)
  {
    v5 = objc_alloc(MEMORY[0x1E69C44E0]);
    v9 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    layer = [v9 layer];
    [layer setMasksToBounds:1];

    v7 = *MEMORY[0x1E69796E8];
    layer2 = [v9 layer];
    [layer2 setCornerCurve:v7];

    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUPhotoEditBoostContainerView *)self addSubview:v9];
    [(PUPhotoEditBoostContainerView *)self _constrainSubview:v9];
    [(PUPhotoEditBoostContainerView *)self edrGain];
    [v9 setEdrGain:?];
    [(PUPhotoEditBoostContainerView *)self setBoostView:v9];
  }
}

@end