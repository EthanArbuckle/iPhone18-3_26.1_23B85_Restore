@interface _UIStatusBarSignalView
+ (CGSize)_intrinsicContentSizeForNumberOfBars:(int64_t)a3 iconSize:(int64_t)a4;
- (void)_iconSizeDidChange;
- (void)_updateBars;
- (void)applyStyleAttributes:(id)a3;
- (void)setActiveColor:(id)a3;
- (void)setInactiveColor:(id)a3;
- (void)setNumberOfActiveBars:(int64_t)a3;
- (void)setNumberOfBars:(int64_t)a3;
- (void)setSignalMode:(int64_t)a3;
- (void)setSmallSize:(BOOL)a3;
@end

@implementation _UIStatusBarSignalView

- (void)setNumberOfBars:(int64_t)a3
{
  if (self->_numberOfBars != a3)
  {
    self->_numberOfBars = a3;
    [(_UIStatusBarSignalView *)self _updateBars];
    [(UIView *)self setNeedsLayout];

    [(UIView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setNumberOfActiveBars:(int64_t)a3
{
  if (self->_numberOfActiveBars != a3)
  {
    numberOfBars = self->_numberOfBars;
    if (numberOfBars >= (a3 & ~(a3 >> 63)))
    {
      numberOfBars = a3 & ~(a3 >> 63);
    }

    self->_numberOfActiveBars = numberOfBars;
    if ([(_UIStatusBarSignalView *)self signalMode]== 2)
    {

      [(_UIStatusBarSignalView *)self _updateActiveBars];
    }
  }
}

- (void)setSignalMode:(int64_t)a3
{
  signalMode = self->_signalMode;
  if (signalMode != a3)
  {
    self->_signalMode = a3;
    [(_UIStatusBarSignalView *)self _updateFromMode:signalMode];
  }
}

- (void)setSmallSize:(BOOL)a3
{
  if (self->_smallSize != a3)
  {
    self->_smallSize = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)setInactiveColor:(id)a3
{
  v5 = a3;
  if (self->_inactiveColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_inactiveColor, a3);
    [(_UIStatusBarSignalView *)self _colorsDidChange];
    v5 = v6;
  }
}

- (void)setActiveColor:(id)a3
{
  v5 = a3;
  if (self->_activeColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_activeColor, a3);
    [(_UIStatusBarSignalView *)self _colorsDidChange];
    v5 = v6;
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
  v3 = [(UIView *)self layer];
  v2 = [v3 sublayers];
  [v2 makeObjectsPerformSelector:sel_removeFromSuperlayer];
}

- (void)applyStyleAttributes:(id)a3
{
  v4 = a3;
  v5 = [v4 isRounded];
  v6 = [v4 iconSize];

  if (self->_iconSize == v6)
  {
    rounded = self->_rounded;
    [(_UIStatusBarSignalView *)self setRounded:v5];
    [(_UIStatusBarSignalView *)self setIconSize:v6];
    if (rounded == v5)
    {
      return;
    }
  }

  else
  {
    [(_UIStatusBarSignalView *)self setRounded:v5];
    [(_UIStatusBarSignalView *)self setIconSize:v6];
  }

  [(_UIStatusBarSignalView *)self _iconSizeDidChange];
}

+ (CGSize)_intrinsicContentSizeForNumberOfBars:(int64_t)a3 iconSize:(int64_t)a4
{
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

@end