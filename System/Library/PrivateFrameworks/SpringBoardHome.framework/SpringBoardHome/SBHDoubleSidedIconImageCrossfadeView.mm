@interface SBHDoubleSidedIconImageCrossfadeView
- (SBHDoubleSidedIconImageCrossfadeView)initWithSource:(id)source crossfadeView:(id)view;
- (void)_applyCornerRadiusToBackgroundView;
- (void)_applyCornerRadiusToCrossfadeView;
- (void)_applyCornerRadiusToIconImageView;
- (void)_applyCornerRadiusToViews;
- (void)_applyCrossfadeScaleX:(double)x scaleY:(double)y;
- (void)_setCornerRadiusEnabled:(BOOL)enabled;
- (void)cleanup;
- (void)layoutSubviews;
- (void)prepareGeometry;
@end

@implementation SBHDoubleSidedIconImageCrossfadeView

- (SBHDoubleSidedIconImageCrossfadeView)initWithSource:(id)source crossfadeView:(id)view
{
  v8.receiver = self;
  v8.super_class = SBHDoubleSidedIconImageCrossfadeView;
  v4 = [(SBIconImageCrossfadeView *)&v8 initWithSource:source crossfadeView:view];
  v5 = v4;
  if (v4)
  {
    iconImageView = [(SBIconImageCrossfadeView *)v4 iconImageView];
    v5->_iconImageViewClipsToBounds = [iconImageView clipsToBounds];
  }

  return v5;
}

- (void)prepareGeometry
{
  v11.receiver = self;
  v11.super_class = SBHDoubleSidedIconImageCrossfadeView;
  [(SBIconImageCrossfadeView *)&v11 prepareGeometry];
  iconImageView = [(SBIconImageCrossfadeView *)self iconImageView];
  layer = [iconImageView layer];

  [layer setZPosition:0.01];
  [layer setDoubleSided:0];
  backgroundView = [(SBIconImageCrossfadeView *)self backgroundView];
  layer2 = [backgroundView layer];
  [layer2 setDoubleSided:0];

  crossfadeContainerView = [(SBIconImageCrossfadeView *)self crossfadeContainerView];
  layer3 = [crossfadeContainerView layer];

  [layer3 setZPosition:-0.01];
  crossfadeView = [(SBIconImageCrossfadeView *)self crossfadeView];
  layer4 = [crossfadeView layer];
  [layer4 setDoubleSided:0];
}

- (void)_applyCrossfadeScaleX:(double)x scaleY:(double)y
{
  self->_scaleX = x;
  self->_scaleY = y;
  memset(&v10, 0, sizeof(v10));
  CATransform3DMakeScale(&v10, x, y, 1.0);
  memset(&v9, 0, sizeof(v9));
  CATransform3DMakeRotation(&v9, -3.14159265, 0.0, 1.0, 0.0);
  crossfadeView = [(SBIconImageCrossfadeView *)self crossfadeView];
  a = v9;
  v6 = v10;
  CATransform3DConcat(&v8, &a, &v6);
  [crossfadeView setTransform3D:&v8];
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
  crossfadeView = [(SBIconImageCrossfadeView *)self crossfadeView];
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
  [crossfadeView setTransform3D:v15];
  iconImageView = [(SBIconImageCrossfadeView *)self iconImageView];
  [iconImageView setClipsToBounds:self->_iconImageViewClipsToBounds];
  layer = [iconImageView layer];
  [layer setZPosition:0.0];
  [layer setDoubleSided:1];
  backgroundView = [(SBIconImageCrossfadeView *)self backgroundView];
  layer2 = [backgroundView layer];
  [layer2 setDoubleSided:1];

  crossfadeContainerView = [(SBIconImageCrossfadeView *)self crossfadeContainerView];
  layer3 = [crossfadeContainerView layer];

  [layer3 setZPosition:0.0];
  layer4 = [crossfadeView layer];
  [layer4 setDoubleSided:1];
}

- (void)_setCornerRadiusEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  iconImageView = [(SBIconImageCrossfadeView *)self iconImageView];
  [iconImageView setClipsToBounds:enabledCopy];

  backgroundView = [(SBIconImageCrossfadeView *)self backgroundView];
  [backgroundView setClipsToBounds:enabledCopy];

  crossfadeView = [(SBIconImageCrossfadeView *)self crossfadeView];
  [crossfadeView setClipsToBounds:enabledCopy];
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
  iconImageView = [(SBIconImageCrossfadeView *)self iconImageView];
  [iconImageView _setContinuousCornerRadius:self->_cornerRadius / v5];
}

- (void)_applyCornerRadiusToBackgroundView
{
  backgroundView = [(SBIconImageCrossfadeView *)self backgroundView];
  [backgroundView _setContinuousCornerRadius:self->_cornerRadius];
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
  crossfadeView = [(SBIconImageCrossfadeView *)self crossfadeView];
  [crossfadeView _setContinuousCornerRadius:self->_cornerRadius / v5];
}

@end