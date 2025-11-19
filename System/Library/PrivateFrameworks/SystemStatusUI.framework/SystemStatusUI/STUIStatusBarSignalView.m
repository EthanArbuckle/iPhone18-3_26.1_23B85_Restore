@interface STUIStatusBarSignalView
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

@implementation STUIStatusBarSignalView

- (void)_updateBars
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(STUIStatusBarSignalView *)self layer];
  v3 = [v2 sublayers];
  v4 = [v3 copy];

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

- (void)setNumberOfBars:(int64_t)a3
{
  if (self->_numberOfBars != a3)
  {
    self->_numberOfBars = a3;
    [(STUIStatusBarSignalView *)self _updateBars];
    [(STUIStatusBarSignalView *)self setNeedsLayout];

    [(STUIStatusBarSignalView *)self invalidateIntrinsicContentSize];
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
    if ([(STUIStatusBarSignalView *)self signalMode]== 2)
    {

      [(STUIStatusBarSignalView *)self _updateActiveBars];
    }
  }
}

- (void)setSignalMode:(int64_t)a3
{
  signalMode = self->_signalMode;
  if (signalMode != a3)
  {
    self->_signalMode = a3;
    [(STUIStatusBarSignalView *)self _updateFromMode:signalMode];
  }
}

- (void)setSmallSize:(BOOL)a3
{
  if (self->_smallSize != a3)
  {
    self->_smallSize = a3;
    [(STUIStatusBarSignalView *)self setNeedsLayout];
  }
}

- (void)setInactiveColor:(id)a3
{
  v5 = a3;
  if (self->_inactiveColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_inactiveColor, a3);
    [(STUIStatusBarSignalView *)self _colorsDidChange];
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
    [(STUIStatusBarSignalView *)self _colorsDidChange];
    v5 = v6;
  }
}

- (void)applyStyleAttributes:(id)a3
{
  v4 = a3;
  v5 = [v4 isRounded];
  v6 = [v4 iconSize];

  if (self->_iconSize == v6)
  {
    rounded = self->_rounded;
    [(STUIStatusBarSignalView *)self setRounded:v5];
    [(STUIStatusBarSignalView *)self setIconSize:v6];
    if (rounded == v5)
    {
      return;
    }
  }

  else
  {
    [(STUIStatusBarSignalView *)self setRounded:v5];
    [(STUIStatusBarSignalView *)self setIconSize:v6];
  }

  [(STUIStatusBarSignalView *)self _iconSizeDidChange];
}

+ (CGSize)_intrinsicContentSizeForNumberOfBars:(int64_t)a3 iconSize:(int64_t)a4
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

@end