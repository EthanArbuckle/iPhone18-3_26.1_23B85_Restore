@interface _UILumaTrackingBackdropView
- ($F24F406B2B787EFB06265DBA3D28CBD5)transitionBoundaries;
- (_UILumaTrackingBackdropView)initWithTransitionBoundaries:(id)boundaries delegate:(id)delegate frame:(CGRect)frame;
- (_UILumaTrackingBackdropViewDelegate)delegate;
- (void)backdropLayer:(id)layer didChangeLuma:(double)luma;
- (void)setPaused:(BOOL)paused;
- (void)unpauseAfterSeedingWithLumaLevel:(unint64_t)level;
@end

@implementation _UILumaTrackingBackdropView

- (_UILumaTrackingBackdropView)initWithTransitionBoundaries:(id)boundaries delegate:(id)delegate frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  var1 = boundaries.var1;
  var0 = boundaries.var0;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = _UILumaTrackingBackdropView;
  height = [(UIView *)&v19 initWithFrame:x, y, width, height];
  v14 = height;
  if (height)
  {
    [(UIView *)height setUserInteractionEnabled:0];
    v14->_backgroundLuminanceLevel = 0;
    v14->_transitionBoundaries.minimum = var0;
    v14->_transitionBoundaries.maximum = var1;
    objc_storeWeak(&v14->_delegate, delegateCopy);
    v14->_paused = 1;
    _backdropLayer = [(_UILumaTrackingBackdropView *)v14 _backdropLayer];
    [_backdropLayer setCaptureOnly:1];

    _backdropLayer2 = [(_UILumaTrackingBackdropView *)v14 _backdropLayer];
    [_backdropLayer2 setScale:0.5];

    _backdropLayer3 = [(_UILumaTrackingBackdropView *)v14 _backdropLayer];
    [_backdropLayer3 setHidden:1];
  }

  return v14;
}

- (void)setPaused:(BOOL)paused
{
  if (self->_paused != paused)
  {
    pausedCopy = paused;
    self->_paused = paused;
    _backdropLayer = [(_UILumaTrackingBackdropView *)self _backdropLayer];
    [_backdropLayer setHidden:pausedCopy];

    _backdropLayer2 = [(_UILumaTrackingBackdropView *)self _backdropLayer];
    [_backdropLayer2 setTracksLuma:pausedCopy ^ 1];
  }
}

- (void)unpauseAfterSeedingWithLumaLevel:(unint64_t)level
{
  if (self->_paused)
  {
    if (level && self->_backgroundLuminanceLevel != level)
    {
      self->_backgroundLuminanceLevel = level;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained backgroundLumaView:self didTransitionToLevel:self->_backgroundLuminanceLevel];
    }

    [(_UILumaTrackingBackdropView *)self setPaused:0];
  }
}

- (void)backdropLayer:(id)layer didChangeLuma:(double)luma
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
    [v10 backgroundLumaView:self didChangeLuma:luma];
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