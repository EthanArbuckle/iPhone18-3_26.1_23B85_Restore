@interface UIScrollView(Bridge)
- (uint64_t)ts_isScrolling;
- (uint64_t)ts_scrollToTop:()Bridge;
- (uint64_t)ts_scrollToTop:()Bridge dismissKeyboard:;
@end

@implementation UIScrollView(Bridge)

- (uint64_t)ts_isScrolling
{
  if ([self isDragging] & 1) != 0 || (objc_msgSend(self, "isDecelerating") & 1) != 0 || (objc_msgSend(self, "_isAnimatingScrollTest"))
  {
    return 1;
  }

  return [self _isAnimatingScroll];
}

- (uint64_t)ts_scrollToTop:()Bridge
{
  scrollsToTop = [self scrollsToTop];
  [self setScrollsToTop:1];
  v6 = [self _scrollToTopIfPossible:a3];
  [self setScrollsToTop:scrollsToTop];
  if ((v6 & 1) == 0)
  {
    [self adjustedContentInset];
    [self setContentOffset:a3 animated:{0.0, -v7}];
  }

  return v6;
}

- (uint64_t)ts_scrollToTop:()Bridge dismissKeyboard:
{
  if ([MEMORY[0x1E69DCBB8] isOnScreen])
  {
    isInHardwareKeyboardMode = [MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode];
    if (a4)
    {
      if ((isInHardwareKeyboardMode & 1) == 0)
      {
        mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
        [mEMORY[0x1E69DC668] sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
      }
    }
  }

  return [self ts_scrollToTop:a3];
}

@end