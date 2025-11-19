@interface _PXAssetLoopUIView
- (void)didMoveToWindow;
- (void)setAlpha:(double)a3;
- (void)setHidden:(BOOL)a3;
@end

@implementation _PXAssetLoopUIView

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(_PXAssetLoopUIView *)self isHidden];
  v8.receiver = self;
  v8.super_class = _PXAssetLoopUIView;
  [(_PXAssetLoopUIView *)&v8 setHidden:v3];
  if (v5 != v3)
  {
    v6 = [(_PXAssetLoopUIView *)self visibilityChangeHandler];

    if (v6)
    {
      v7 = [(_PXAssetLoopUIView *)self visibilityChangeHandler];
      v7[2]();
    }
  }
}

- (void)setAlpha:(double)a3
{
  [(_PXAssetLoopUIView *)self alpha];
  v6 = v5;
  v9.receiver = self;
  v9.super_class = _PXAssetLoopUIView;
  [(_PXAssetLoopUIView *)&v9 setAlpha:a3];
  if (v6 != a3 && (a3 == 0.0 || v6 == 0.0))
  {
    v7 = [(_PXAssetLoopUIView *)self visibilityChangeHandler];

    if (v7)
    {
      v8 = [(_PXAssetLoopUIView *)self visibilityChangeHandler];
      v8[2]();
    }
  }
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = _PXAssetLoopUIView;
  [(_PXAssetLoopUIView *)&v5 didMoveToWindow];
  v3 = [(_PXAssetLoopUIView *)self visibilityChangeHandler];

  if (v3)
  {
    v4 = [(_PXAssetLoopUIView *)self visibilityChangeHandler];
    v4[2]();
  }
}

@end