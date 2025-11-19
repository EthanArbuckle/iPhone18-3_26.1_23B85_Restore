@interface _WTView
- (CGRect)platformGetVisibleRect;
- (_WTView)init;
- (_WTView)initWithCoder:(id)a3;
- (_WTView)initWithFrame:(CGRect)a3;
- (id)platformInstalledDisplayLinkWithTarget:(id)a3 selector:(SEL)a4;
- (void)_commonLayoutSubviews;
- (void)layoutSubviews;
@end

@implementation _WTView

- (_WTView)init
{
  v6.receiver = self;
  v6.super_class = _WTView;
  v2 = [(_WTView *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(_WTView *)v2 _commonPlatformViewInit];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_WTView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _WTView;
  v3 = [(_WTView *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(_WTView *)v3 _commonPlatformViewInit];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_WTView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _WTView;
  v3 = [(_WTView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(_WTView *)v3 _commonPlatformViewInit];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _WTView;
  [(_WTView *)&v3 layoutSubviews];
  [(_WTView *)self _commonLayoutSubviews];
}

- (void)_commonLayoutSubviews
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __32___WTView__commonLayoutSubviews__block_invoke;
  v2[3] = &unk_1E8480BF8;
  v2[4] = self;
  [(_WTView *)self platformPerformWithoutAnimation:v2];
}

- (id)platformInstalledDisplayLinkWithTarget:(id)a3 selector:(SEL)a4
{
  v4 = [MEMORY[0x1E6979330] displayLinkWithTarget:a3 selector:a4];
  v5 = [MEMORY[0x1E695DFD0] mainRunLoop];
  [v4 addToRunLoop:v5 forMode:*MEMORY[0x1E695DA28]];

  return v4;
}

- (CGRect)platformGetVisibleRect
{
  [(_WTView *)self frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(_WTView *)self superview];
  [v11 bounds];
  v27.origin.x = v12;
  v27.origin.y = v13;
  v27.size.width = v14;
  v27.size.height = v15;
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  v25 = CGRectIntersection(v24, v27);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

@end