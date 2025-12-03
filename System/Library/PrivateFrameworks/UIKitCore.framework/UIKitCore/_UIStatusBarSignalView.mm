@interface _UIStatusBarSignalView
+ (CGSize)_intrinsicContentSizeForNumberOfBars:(int64_t)bars iconSize:(int64_t)size;
- (void)_iconSizeDidChange;
- (void)_updateBars;
- (void)applyStyleAttributes:(id)attributes;
- (void)setActiveColor:(id)color;
- (void)setInactiveColor:(id)color;
- (void)setNumberOfActiveBars:(int64_t)bars;
- (void)setNumberOfBars:(int64_t)bars;
- (void)setSignalMode:(int64_t)mode;
- (void)setSmallSize:(BOOL)size;
@end

@implementation _UIStatusBarSignalView

- (void)setNumberOfBars:(int64_t)bars
{
  if (self->_numberOfBars != bars)
  {
    self->_numberOfBars = bars;
    [(_UIStatusBarSignalView *)self _updateBars];
    [(UIView *)self setNeedsLayout];

    [(UIView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setNumberOfActiveBars:(int64_t)bars
{
  if (self->_numberOfActiveBars != bars)
  {
    numberOfBars = self->_numberOfBars;
    if (numberOfBars >= (bars & ~(bars >> 63)))
    {
      numberOfBars = bars & ~(bars >> 63);
    }

    self->_numberOfActiveBars = numberOfBars;
    if ([(_UIStatusBarSignalView *)self signalMode]== 2)
    {

      [(_UIStatusBarSignalView *)self _updateActiveBars];
    }
  }
}

- (void)setSignalMode:(int64_t)mode
{
  signalMode = self->_signalMode;
  if (signalMode != mode)
  {
    self->_signalMode = mode;
    [(_UIStatusBarSignalView *)self _updateFromMode:signalMode];
  }
}

- (void)setSmallSize:(BOOL)size
{
  if (self->_smallSize != size)
  {
    self->_smallSize = size;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)setInactiveColor:(id)color
{
  colorCopy = color;
  if (self->_inactiveColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_inactiveColor, color);
    [(_UIStatusBarSignalView *)self _colorsDidChange];
    colorCopy = v6;
  }
}

- (void)setActiveColor:(id)color
{
  colorCopy = color;
  if (self->_activeColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_activeColor, color);
    [(_UIStatusBarSignalView *)self _colorsDidChange];
    colorCopy = v6;
  }
}

- (void)_iconSizeDidChange
{
  [(_UIStatusBarSignalView *)self _updateBars];
  [(UIView *)self setNeedsLayout];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)_updateBars
{
  layer = [(UIView *)self layer];
  sublayers = [layer sublayers];
  [sublayers makeObjectsPerformSelector:sel_removeFromSuperlayer];
}

- (void)applyStyleAttributes:(id)attributes
{
  attributesCopy = attributes;
  isRounded = [attributesCopy isRounded];
  iconSize = [attributesCopy iconSize];

  if (self->_iconSize == iconSize)
  {
    rounded = self->_rounded;
    [(_UIStatusBarSignalView *)self setRounded:isRounded];
    [(_UIStatusBarSignalView *)self setIconSize:iconSize];
    if (rounded == isRounded)
    {
      return;
    }
  }

  else
  {
    [(_UIStatusBarSignalView *)self setRounded:isRounded];
    [(_UIStatusBarSignalView *)self setIconSize:iconSize];
  }

  [(_UIStatusBarSignalView *)self _iconSizeDidChange];
}

+ (CGSize)_intrinsicContentSizeForNumberOfBars:(int64_t)bars iconSize:(int64_t)size
{
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

@end