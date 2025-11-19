@interface SBHDoubleSidedIconImageCrossfadeView
- (SBHDoubleSidedIconImageCrossfadeView)initWithSource:(id)a3 crossfadeView:(id)a4;
- (void)_applyCornerRadiusToBackgroundView;
- (void)_applyCornerRadiusToCrossfadeView;
- (void)_applyCornerRadiusToIconImageView;
- (void)_applyCornerRadiusToViews;
- (void)_applyCrossfadeScaleX:(double)a3 scaleY:(double)a4;
- (void)_setCornerRadiusEnabled:(BOOL)a3;
- (void)cleanup;
- (void)layoutSubviews;
- (void)prepareGeometry;
@end

@implementation SBHDoubleSidedIconImageCrossfadeView

- (SBHDoubleSidedIconImageCrossfadeView)initWithSource:(id)a3 crossfadeView:(id)a4
{
  v8.receiver = self;
  v8.super_class = SBHDoubleSidedIconImageCrossfadeView;
  v4 = [(SBIconImageCrossfadeView *)&v8 initWithSource:a3 crossfadeView:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(SBIconImageCrossfadeView *)v4 iconImageView];
    v5->_iconImageViewClipsToBounds = [v6 clipsToBounds];
  }

  return v5;
}

- (void)prepareGeometry
{
  v11.receiver = self;
  v11.super_class = SBHDoubleSidedIconImageCrossfadeView;
  [(SBIconImageCrossfadeView *)&v11 prepareGeometry];
  v3 = [(SBIconImageCrossfadeView *)self iconImageView];
  v4 = [v3 layer];

  [v4 setZPosition:0.01];
  [v4 setDoubleSided:0];
  v5 = [(SBIconImageCrossfadeView *)self backgroundView];
  v6 = [v5 layer];
  [v6 setDoubleSided:0];

  v7 = [(SBIconImageCrossfadeView *)self crossfadeContainerView];
  v8 = [v7 layer];

  [v8 setZPosition:-0.01];
  v9 = [(SBIconImageCrossfadeView *)self crossfadeView];
  v10 = [v9 layer];
  [v10 setDoubleSided:0];
}

- (void)_applyCrossfadeScaleX:(double)a3 scaleY:(double)a4
{
  self->_scaleX = a3;
  self->_scaleY = a4;
  memset(&v10, 0, sizeof(v10));
  CATransform3DMakeScale(&v10, a3, a4, 1.0);
  memset(&v9, 0, sizeof(v9));
  CATransform3DMakeRotation(&v9, -3.14159265, 0.0, 1.0, 0.0);
  v5 = [(SBIconImageCrossfadeView *)self crossfadeView];
  a = v9;
  v6 = v10;
  CATransform3DConcat(&v8, &a, &v6);
  [v5 setTransform3D:&v8];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBHDoubleSidedIconImageCrossfadeView;
  [(SBIconImageCrossfadeView *)&v3 layoutSubviews];
  [(SBHDoubleSidedIconImageCrossfadeView *)self _applyCornerRadiusToViews];
}

- (void)cleanup
{
  v16.receiver = self;
  v16.super_class = SBHDoubleSidedIconImageCrossfadeView;
  [(SBIconImageCrossfadeView *)&v16 cleanup];
  v3 = [(SBIconImageCrossfadeView *)self crossfadeView];
  v4 = *(MEMORY[0x1E69792E8] + 80);
  v15[4] = *(MEMORY[0x1E69792E8] + 64);
  v15[5] = v4;
  v5 = *(MEMORY[0x1E69792E8] + 112);
  v15[6] = *(MEMORY[0x1E69792E8] + 96);
  v15[7] = v5;
  v6 = *(MEMORY[0x1E69792E8] + 16);
  v15[0] = *MEMORY[0x1E69792E8];
  v15[1] = v6;
  v7 = *(MEMORY[0x1E69792E8] + 48);
  v15[2] = *(MEMORY[0x1E69792E8] + 32);
  v15[3] = v7;
  [v3 setTransform3D:v15];
  v8 = [(SBIconImageCrossfadeView *)self iconImageView];
  [v8 setClipsToBounds:self->_iconImageViewClipsToBounds];
  v9 = [v8 layer];
  [v9 setZPosition:0.0];
  [v9 setDoubleSided:1];
  v10 = [(SBIconImageCrossfadeView *)self backgroundView];
  v11 = [v10 layer];
  [v11 setDoubleSided:1];

  v12 = [(SBIconImageCrossfadeView *)self crossfadeContainerView];
  v13 = [v12 layer];

  [v13 setZPosition:0.0];
  v14 = [v3 layer];
  [v14 setDoubleSided:1];
}

- (void)_setCornerRadiusEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBIconImageCrossfadeView *)self iconImageView];
  [v5 setClipsToBounds:v3];

  v6 = [(SBIconImageCrossfadeView *)self backgroundView];
  [v6 setClipsToBounds:v3];

  v7 = [(SBIconImageCrossfadeView *)self crossfadeView];
  [v7 setClipsToBounds:v3];
}

- (void)_applyCornerRadiusToViews
{
  [(SBHDoubleSidedIconImageCrossfadeView *)self _applyCornerRadiusToIconImageView];
  [(SBHDoubleSidedIconImageCrossfadeView *)self _applyCornerRadiusToBackgroundView];

  [(SBHDoubleSidedIconImageCrossfadeView *)self _applyCornerRadiusToCrossfadeView];
}

- (void)_applyCornerRadiusToIconImageView
{
  if (1.0 / self->_scaleX <= 1.0 / self->_scaleY)
  {
    v3 = 1.0 / self->_scaleX;
  }

  else
  {
    v3 = 1.0 / self->_scaleY;
  }

  [(SBIconImageCrossfadeView *)self morphFraction];
  v5 = 1.0 - v4 * (1.0 - v3);
  v6 = [(SBIconImageCrossfadeView *)self iconImageView];
  [v6 _setContinuousCornerRadius:self->_cornerRadius / v5];
}

- (void)_applyCornerRadiusToBackgroundView
{
  v3 = [(SBIconImageCrossfadeView *)self backgroundView];
  [v3 _setContinuousCornerRadius:self->_cornerRadius];
}

- (void)_applyCornerRadiusToCrossfadeView
{
  if (self->_scaleX <= self->_scaleY)
  {
    scaleX = self->_scaleX;
  }

  else
  {
    scaleX = self->_scaleY;
  }

  [(SBIconImageCrossfadeView *)self morphFraction];
  v5 = 1.0 - (1.0 - v4) * (1.0 - scaleX);
  v6 = [(SBIconImageCrossfadeView *)self crossfadeView];
  [v6 _setContinuousCornerRadius:self->_cornerRadius / v5];
}

@end