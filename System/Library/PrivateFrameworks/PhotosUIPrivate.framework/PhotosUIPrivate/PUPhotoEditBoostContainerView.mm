@interface PUPhotoEditBoostContainerView
- (void)_constrainSubview:(id)a3;
- (void)_updateViewLayering;
- (void)setEdrGain:(double)a3;
- (void)setViewToBoost:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation PUPhotoEditBoostContainerView

- (void)_constrainSubview:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotoEditBoostContainerView *)self leftAnchor];
  v6 = [v4 leftAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v7 setActive:1];

  v8 = [(PUPhotoEditBoostContainerView *)self rightAnchor];
  v9 = [v4 rightAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = [(PUPhotoEditBoostContainerView *)self topAnchor];
  v12 = [v4 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v16 = [(PUPhotoEditBoostContainerView *)self bottomAnchor];
  v14 = [v4 bottomAnchor];

  v15 = [v16 constraintEqualToAnchor:v14];
  [v15 setActive:1];
}

- (void)_updateViewLayering
{
  v3 = [(PUPhotoEditBoostContainerView *)self viewToBoost];

  if (v3)
  {
    v4 = [(PUPhotoEditBoostContainerView *)self subviews];
    v5 = [(PUPhotoEditBoostContainerView *)self viewToBoost];
    v6 = [v4 containsObject:v5];

    if ((v6 & 1) == 0)
    {
      v7 = [(PUPhotoEditBoostContainerView *)self viewToBoost];
      [(PUPhotoEditBoostContainerView *)self addSubview:v7];

      v8 = [(PUPhotoEditBoostContainerView *)self viewToBoost];
      [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

      v9 = [(PUPhotoEditBoostContainerView *)self viewToBoost];
      [(PUPhotoEditBoostContainerView *)self _constrainSubview:v9];
    }

    v10 = [(PUPhotoEditBoostContainerView *)self boostView];
    [(PUPhotoEditBoostContainerView *)self bringSubviewToFront:v10];
  }
}

- (void)setEdrGain:(double)a3
{
  self->_edrGain = a3;
  v4 = [(PUPhotoEditBoostContainerView *)self boostView];
  [v4 setEdrGain:a3];
}

- (void)setViewToBoost:(id)a3
{
  v4 = a3;
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

  self->_viewToBoost = v4;

  [(PUPhotoEditBoostContainerView *)self _updateViewLayering];
}

- (void)willMoveToWindow:(id)a3
{
  v4 = [(PUPhotoEditBoostContainerView *)self boostView];

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69C44E0]);
    v9 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = [v9 layer];
    [v6 setMasksToBounds:1];

    v7 = *MEMORY[0x1E69796E8];
    v8 = [v9 layer];
    [v8 setCornerCurve:v7];

    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUPhotoEditBoostContainerView *)self addSubview:v9];
    [(PUPhotoEditBoostContainerView *)self _constrainSubview:v9];
    [(PUPhotoEditBoostContainerView *)self edrGain];
    [v9 setEdrGain:?];
    [(PUPhotoEditBoostContainerView *)self setBoostView:v9];
  }
}

@end