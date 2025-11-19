@interface _UILumaTrackingBackdropView
- ($F24F406B2B787EFB06265DBA3D28CBD5)transitionBoundaries;
- (_UILumaTrackingBackdropView)initWithTransitionBoundaries:(id)a3 delegate:(id)a4 frame:(CGRect)a5;
- (_UILumaTrackingBackdropViewDelegate)delegate;
- (void)backdropLayer:(id)a3 didChangeLuma:(double)a4;
- (void)setPaused:(BOOL)a3;
- (void)unpauseAfterSeedingWithLumaLevel:(unint64_t)a3;
@end

@implementation _UILumaTrackingBackdropView

- (_UILumaTrackingBackdropView)initWithTransitionBoundaries:(id)a3 delegate:(id)a4 frame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  var1 = a3.var1;
  var0 = a3.var0;
  v12 = a4;
  v19.receiver = self;
  v19.super_class = _UILumaTrackingBackdropView;
  v13 = [(UIView *)&v19 initWithFrame:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    [(UIView *)v13 setUserInteractionEnabled:0];
    v14->_backgroundLuminanceLevel = 0;
    v14->_transitionBoundaries.minimum = var0;
    v14->_transitionBoundaries.maximum = var1;
    objc_storeWeak(&v14->_delegate, v12);
    v14->_paused = 1;
    v15 = [(_UILumaTrackingBackdropView *)v14 _backdropLayer];
    [v15 setCaptureOnly:1];

    v16 = [(_UILumaTrackingBackdropView *)v14 _backdropLayer];
    [v16 setScale:0.5];

    v17 = [(_UILumaTrackingBackdropView *)v14 _backdropLayer];
    [v17 setHidden:1];
  }

  return v14;
}

- (void)setPaused:(BOOL)a3
{
  if (self->_paused != a3)
  {
    v4 = a3;
    self->_paused = a3;
    v6 = [(_UILumaTrackingBackdropView *)self _backdropLayer];
    [v6 setHidden:v4];

    v7 = [(_UILumaTrackingBackdropView *)self _backdropLayer];
    [v7 setTracksLuma:v4 ^ 1];
  }
}

- (void)unpauseAfterSeedingWithLumaLevel:(unint64_t)a3
{
  if (self->_paused)
  {
    if (a3 && self->_backgroundLuminanceLevel != a3)
    {
      self->_backgroundLuminanceLevel = a3;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained backgroundLumaView:self didTransitionToLevel:self->_backgroundLuminanceLevel];
    }

    [(_UILumaTrackingBackdropView *)self setPaused:0];
  }
}

- (void)backdropLayer:(id)a3 didChangeLuma:(double)a4
{
  if (!self)
  {
    return;
  }

  backgroundLuminanceLevel = self->_backgroundLuminanceLevel;
  if (BSFloatGreaterThanOrEqualToFloat())
  {
    goto LABEL_3;
  }

  if (BSFloatLessThanOrEqualToFloat())
  {
    goto LABEL_5;
  }

  if (self->_backgroundLuminanceLevel)
  {
    goto LABEL_7;
  }

  if (BSFloatGreaterThanOrEqualToFloat())
  {
LABEL_3:
    v7 = 1;
  }

  else
  {
LABEL_5:
    v7 = 2;
  }

  self->_backgroundLuminanceLevel = v7;
LABEL_7:
  WeakRetained = objc_loadWeakRetained(&self->_groupDelegate);

  if (WeakRetained)
  {
    v10 = objc_loadWeakRetained(&self->_groupDelegate);
    [v10 backgroundLumaView:self didChangeLuma:a4];
  }

  else
  {
    if (self->_backgroundLuminanceLevel == backgroundLuminanceLevel)
    {
      return;
    }

    v9 = objc_loadWeakRetained(&self->_delegate);

    if (!v9)
    {
      return;
    }

    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 backgroundLumaView:self didTransitionToLevel:self->_backgroundLuminanceLevel];
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)transitionBoundaries
{
  minimum = self->_transitionBoundaries.minimum;
  maximum = self->_transitionBoundaries.maximum;
  result.var1 = maximum;
  result.var0 = minimum;
  return result;
}

- (_UILumaTrackingBackdropViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end