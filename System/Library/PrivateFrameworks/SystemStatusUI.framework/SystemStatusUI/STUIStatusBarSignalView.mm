@interface STUIStatusBarSignalView
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

@implementation STUIStatusBarSignalView

- (void)_updateBars
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  layer = [(STUIStatusBarSignalView *)self layer];
  sublayers = [layer sublayers];
  v4 = [sublayers copy];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) removeFromSuperlayer];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_iconSizeDidChange
{
  [(STUIStatusBarSignalView *)self _updateBars];
  [(STUIStatusBarSignalView *)self setNeedsLayout];

  [(STUIStatusBarSignalView *)self invalidateIntrinsicContentSize];
}

- (void)setNumberOfBars:(int64_t)bars
{
  if (self->_numberOfBars != bars)
  {
    self->_numberOfBars = bars;
    [(STUIStatusBarSignalView *)self _updateBars];
    [(STUIStatusBarSignalView *)self setNeedsLayout];

    [(STUIStatusBarSignalView *)self invalidateIntrinsicContentSize];
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
    if ([(STUIStatusBarSignalView *)self signalMode]== 2)
    {

      [(STUIStatusBarSignalView *)self _updateActiveBars];
    }
  }
}

- (void)setSignalMode:(int64_t)mode
{
  signalMode = self->_signalMode;
  if (signalMode != mode)
  {
    self->_signalMode = mode;
    [(STUIStatusBarSignalView *)self _updateFromMode:signalMode];
  }
}

- (void)setSmallSize:(BOOL)size
{
  if (self->_smallSize != size)
  {
    self->_smallSize = size;
    [(STUIStatusBarSignalView *)self setNeedsLayout];
  }
}

- (void)setInactiveColor:(id)color
{
  colorCopy = color;
  if (self->_inactiveColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_inactiveColor, color);
    [(STUIStatusBarSignalView *)self _colorsDidChange];
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
    [(STUIStatusBarSignalView *)self _colorsDidChange];
    colorCopy = v6;
  }
}

- (void)applyStyleAttributes:(id)attributes
{
  attributesCopy = attributes;
  isRounded = [attributesCopy isRounded];
  iconSize = [attributesCopy iconSize];

  if (self->_iconSize == iconSize)
  {
    rounded = self->_rounded;
    [(STUIStatusBarSignalView *)self setRounded:isRounded];
    [(STUIStatusBarSignalView *)self setIconSize:iconSize];
    if (rounded == isRounded)
    {
      return;
    }
  }

  else
  {
    [(STUIStatusBarSignalView *)self setRounded:isRounded];
    [(STUIStatusBarSignalView *)self setIconSize:iconSize];
  }

  [(STUIStatusBarSignalView *)self _iconSizeDidChange];
}

+ (CGSize)_intrinsicContentSizeForNumberOfBars:(int64_t)bars iconSize:(int64_t)size
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

@end