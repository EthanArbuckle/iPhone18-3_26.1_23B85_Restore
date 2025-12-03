@interface _PXAssetLoopUIView
- (void)didMoveToWindow;
- (void)setAlpha:(double)alpha;
- (void)setHidden:(BOOL)hidden;
@end

@implementation _PXAssetLoopUIView

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  isHidden = [(_PXAssetLoopUIView *)self isHidden];
  v8.receiver = self;
  v8.super_class = _PXAssetLoopUIView;
  [(_PXAssetLoopUIView *)&v8 setHidden:hiddenCopy];
  if (isHidden != hiddenCopy)
  {
    visibilityChangeHandler = [(_PXAssetLoopUIView *)self visibilityChangeHandler];

    if (visibilityChangeHandler)
    {
      visibilityChangeHandler2 = [(_PXAssetLoopUIView *)self visibilityChangeHandler];
      visibilityChangeHandler2[2]();
    }
  }
}

- (void)setAlpha:(double)alpha
{
  [(_PXAssetLoopUIView *)self alpha];
  v6 = v5;
  v9.receiver = self;
  v9.super_class = _PXAssetLoopUIView;
  [(_PXAssetLoopUIView *)&v9 setAlpha:alpha];
  if (v6 != alpha && (alpha == 0.0 || v6 == 0.0))
  {
    visibilityChangeHandler = [(_PXAssetLoopUIView *)self visibilityChangeHandler];

    if (visibilityChangeHandler)
    {
      visibilityChangeHandler2 = [(_PXAssetLoopUIView *)self visibilityChangeHandler];
      visibilityChangeHandler2[2]();
    }
  }
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = _PXAssetLoopUIView;
  [(_PXAssetLoopUIView *)&v5 didMoveToWindow];
  visibilityChangeHandler = [(_PXAssetLoopUIView *)self visibilityChangeHandler];

  if (visibilityChangeHandler)
  {
    visibilityChangeHandler2 = [(_PXAssetLoopUIView *)self visibilityChangeHandler];
    visibilityChangeHandler2[2]();
  }
}

@end