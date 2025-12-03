@interface _UIPopoverStandardChromeView
+ (Class)standardChromeViewClass;
+ (UIEdgeInsets)contentViewInsets;
- (BOOL)isRightArrowPinnedToBottom;
- (BOOL)isRightArrowPinnedToTop;
- (BOOL)wouldPinForOffset:(double)offset;
- (CGRect)_contentViewFrame;
- (UIEdgeInsets)safeAreaInsetsForContentView;
- (UIView)viewToMaskWhenContentExtendsOverArrow;
- (_UIPopoverStandardChromeView)initWithFrame:(CGRect)frame;
@end

@implementation _UIPopoverStandardChromeView

+ (Class)standardChromeViewClass
{
  _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_ShapeLayerPopoverChromeView, @"ShapeLayerPopoverChromeView");
  v2 = objc_opt_class();

  return v2;
}

+ (UIEdgeInsets)contentViewInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (_UIPopoverStandardChromeView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _UIPopoverStandardChromeView;
  result = [(UIPopoverBackgroundView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_arrowDirection = -1;
  }

  return result;
}

- (BOOL)wouldPinForOffset:(double)offset
{
  if (offset >= 0.0)
  {
    [(_UIPopoverStandardChromeView *)self maxNonPinnedOffset];
    return v6 < offset;
  }

  else
  {
    [(_UIPopoverStandardChromeView *)self minNonPinnedOffset];
    return v4 > offset;
  }
}

- (BOOL)isRightArrowPinnedToTop
{
  isPinned = [(_UIPopoverStandardChromeView *)self isPinned];
  if (isPinned)
  {
    LOBYTE(isPinned) = self->_arrowOffset < 0.0;
  }

  return isPinned;
}

- (BOOL)isRightArrowPinnedToBottom
{
  isPinned = [(_UIPopoverStandardChromeView *)self isPinned];
  if (isPinned)
  {
    LOBYTE(isPinned) = self->_arrowOffset > 0.0;
  }

  return isPinned;
}

- (UIEdgeInsets)safeAreaInsetsForContentView
{
  viewToMaskWhenContentExtendsOverArrow = [(_UIPopoverStandardChromeView *)self viewToMaskWhenContentExtendsOverArrow];

  if (viewToMaskWhenContentExtendsOverArrow)
  {
    [objc_opt_class() arrowHeight];
    v5 = v4;
    _shouldUseEqualContentInsetsOnAllSides = [(_UIPopoverStandardChromeView *)self _shouldUseEqualContentInsetsOnAllSides];
    v7 = v5;
    v8 = v5;
    v9 = v5;
    if (!_shouldUseEqualContentInsetsOnAllSides)
    {
      v10 = [(_UIPopoverStandardChromeView *)self arrowDirection:v5];
      v9 = 0.0;
      if (v10 == 8)
      {
        v11 = v5;
      }

      else
      {
        v11 = 0.0;
      }

      if (v10 == 4)
      {
        v11 = 0.0;
        v12 = v5;
      }

      else
      {
        v12 = 0.0;
      }

      if (v10 == 2)
      {
        v7 = v5;
      }

      else
      {
        v7 = 0.0;
      }

      if (v10 == 1)
      {
        v7 = 0.0;
        v13 = v5;
      }

      else
      {
        v13 = 0.0;
      }

      if (v10 <= 3)
      {
        v5 = 0.0;
      }

      else
      {
        v5 = v11;
      }

      if (v10 <= 3)
      {
        v8 = 0.0;
      }

      else
      {
        v7 = 0.0;
        v8 = v12;
      }

      if (v10 <= 3)
      {
        v9 = v13;
      }
    }
  }

  else
  {
    v5 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
  }

  v14 = v5;
  result.right = v14;
  result.bottom = v7;
  result.left = v8;
  result.top = v9;
  return result;
}

- (CGRect)_contentViewFrame
{
  viewToMaskWhenContentExtendsOverArrow = [(_UIPopoverStandardChromeView *)self viewToMaskWhenContentExtendsOverArrow];

  if (viewToMaskWhenContentExtendsOverArrow)
  {
    v24.receiver = self;
    v24.super_class = _UIPopoverStandardChromeView;
    [(UIPopoverBackgroundView *)&v24 _contentViewFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(_UIPopoverStandardChromeView *)self safeAreaInsetsForContentView];
    v13 = v12;
    v15 = v14;
    v17 = -v16;
    v19 = v5 - v14;
    v20 = v7 - v13;
    v21 = v9 - (-v18 - v15);
    v22 = v11 - (v17 - v13);
  }

  else
  {
    v23.receiver = self;
    v23.super_class = _UIPopoverStandardChromeView;
    [(UIPopoverBackgroundView *)&v23 _contentViewFrame];
  }

  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (UIView)viewToMaskWhenContentExtendsOverArrow
{
  WeakRetained = objc_loadWeakRetained(&self->viewToMaskWhenContentExtendsOverArrow);

  return WeakRetained;
}

@end