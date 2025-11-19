@interface TPBottomBar
+ (double)defaultHeightForOrientation:(int64_t)a3;
+ (double)defaultHeightForStyle:(int64_t)a3 orientation:(int64_t)a4;
+ (int64_t)fullscreenStyle;
+ (int64_t)overlayStyle;
- (TPBottomBar)init;
- (TPBottomBar)initWithDefaultSizeForOrientation:(int64_t)a3;
- (TPBottomBar)initWithFrame:(CGRect)a3;
- (TPBottomBar)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (void)setOrientation:(int64_t)a3 updateFrame:(BOOL)a4;
@end

@implementation TPBottomBar

+ (double)defaultHeightForStyle:(int64_t)a3 orientation:(int64_t)a4
{
  result = 0.0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        return 178.0;
      }

      return result;
    }

    return 109.0;
  }

  if (a3 == 2)
  {
    return 109.0;
  }

  v5 = 96.0;
  if ((a4 - 1) < 2)
  {
    v5 = 128.0;
  }

  if (a3 == 3)
  {
    return v5;
  }

  return result;
}

+ (double)defaultHeightForOrientation:(int64_t)a3
{
  v5 = +[TPBottomBar fullscreenStyle];

  [a1 defaultHeightForStyle:v5 orientation:a3];
  return result;
}

- (TPBottomBar)initWithDefaultSizeForOrientation:(int64_t)a3
{
  v5 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  if ((a3 - 1) >= 2)
  {
    v7 = v9;
  }

  [objc_opt_class() defaultHeightForOrientation:a3];
  result = [(TPBottomBar *)self initWithFrame:0.0, 0.0, v7, v10];
  if (result)
  {
    result->_orientation = a3;
  }

  return result;
}

+ (int64_t)fullscreenStyle
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)overlayStyle
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return 2 * ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1);
}

- (TPBottomBar)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = +[TPBottomBar fullscreenStyle];

  return [(TPBottomBar *)self initWithFrame:v8 style:x, y, width, height];
}

- (TPBottomBar)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = TPBottomBar;
  v5 = [(TPBottomBar *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_style = a4;
    [(TPBottomBar *)v5 setOpaque:0];
    [(TPBottomBar *)v6 setNeedsDisplayOnBoundsChange:1];
    [(TPBottomBar *)v6 setAutoresizingMask:2];
    v6->_orientation = 1;
  }

  return v6;
}

- (TPBottomBar)init
{
  v4.receiver = self;
  v4.super_class = TPBottomBar;
  v2 = [(TPBottomBar *)&v4 init];
  if (v2)
  {
    v2->_style = +[TPBottomBar fullscreenStyle];
  }

  return v2;
}

- (void)setOrientation:(int64_t)a3 updateFrame:(BOOL)a4
{
  if (self->_orientation != a3)
  {
    v5 = a4;
    self->_orientation = a3;
    [(TPBottomBar *)self frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [objc_opt_class() defaultHeightForOrientation:a3];
    v17 = v16 - v15;
    v18 = v15 + v17;
    if (v5)
    {
      v19 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v19 bounds];
      v21 = v20;
      v23 = v22;

      if ((a3 - 1) >= 2)
      {
        v13 = v23;
      }

      else
      {
        v13 = v21;
      }

      if ((a3 - 1) >= 2)
      {
        v24 = v21;
      }

      else
      {
        v24 = v23;
      }

      v25 = v24 - v18;
    }

    else
    {
      v25 = v11 - v17;
    }

    [(TPBottomBar *)self setFrame:v9, v25, v13, v18];
  }
}

@end