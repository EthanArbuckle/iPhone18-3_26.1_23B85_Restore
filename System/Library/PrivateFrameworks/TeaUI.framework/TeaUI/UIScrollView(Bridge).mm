@interface UIScrollView(Bridge)
- (uint64_t)ts_isScrolling;
- (uint64_t)ts_scrollToTop:()Bridge;
- (uint64_t)ts_scrollToTop:()Bridge dismissKeyboard:;
@end

@implementation UIScrollView(Bridge)

- (uint64_t)ts_isScrolling
{
  if ([a1 isDragging] & 1) != 0 || (objc_msgSend(a1, "isDecelerating") & 1) != 0 || (objc_msgSend(a1, "_isAnimatingScrollTest"))
  {
    return 1;
  }

  return [a1 _isAnimatingScroll];
}

- (uint64_t)ts_scrollToTop:()Bridge
{
  v5 = [a1 scrollsToTop];
  [a1 setScrollsToTop:1];
  v6 = [a1 _scrollToTopIfPossible:a3];
  [a1 setScrollsToTop:v5];
  if ((v6 & 1) == 0)
  {
    [a1 adjustedContentInset];
    [a1 setContentOffset:a3 animated:{0.0, -v7}];
  }

  return v6;
}

- (uint64_t)ts_scrollToTop:()Bridge dismissKeyboard:
{
  if ([MEMORY[0x1E69DCBB8] isOnScreen])
  {
    v7 = [MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode];
    if (a4)
    {
      if ((v7 & 1) == 0)
      {
        v8 = [MEMORY[0x1E69DC668] sharedApplication];
        [v8 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
      }
    }
  }

  return [a1 ts_scrollToTop:a3];
}

@end