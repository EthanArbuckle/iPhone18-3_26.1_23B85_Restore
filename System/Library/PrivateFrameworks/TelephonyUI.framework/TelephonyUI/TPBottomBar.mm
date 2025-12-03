@interface TPBottomBar
+ (double)defaultHeightForOrientation:(int64_t)orientation;
+ (double)defaultHeightForStyle:(int64_t)style orientation:(int64_t)orientation;
+ (int64_t)fullscreenStyle;
+ (int64_t)overlayStyle;
- (TPBottomBar)init;
- (TPBottomBar)initWithDefaultSizeForOrientation:(int64_t)orientation;
- (TPBottomBar)initWithFrame:(CGRect)frame;
- (TPBottomBar)initWithFrame:(CGRect)frame style:(int64_t)style;
- (void)setOrientation:(int64_t)orientation updateFrame:(BOOL)frame;
@end

@implementation TPBottomBar

+ (double)defaultHeightForStyle:(int64_t)style orientation:(int64_t)orientation
{
  result = 0.0;
  if (style <= 1)
  {
    if (style)
    {
      if (style == 1)
      {
        return 178.0;
      }

      return result;
    }

    return 109.0;
  }

  if (style == 2)
  {
    return 109.0;
  }

  v5 = 96.0;
  if ((orientation - 1) < 2)
  {
    v5 = 128.0;
  }

  if (style == 3)
  {
    return v5;
  }

  return result;
}

+ (double)defaultHeightForOrientation:(int64_t)orientation
{
  v5 = +[TPBottomBar fullscreenStyle];

  [self defaultHeightForStyle:v5 orientation:orientation];
  return result;
}

- (TPBottomBar)initWithDefaultSizeForOrientation:(int64_t)orientation
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v7 = v6;
  v9 = v8;

  if ((orientation - 1) >= 2)
  {
    v7 = v9;
  }

  [objc_opt_class() defaultHeightForOrientation:orientation];
  result = [(TPBottomBar *)self initWithFrame:0.0, 0.0, v7, v10];
  if (result)
  {
    result->_orientation = orientation;
  }

  return result;
}

+ (int64_t)fullscreenStyle
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return 2 * ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1);
}

- (TPBottomBar)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = +[TPBottomBar fullscreenStyle];

  return [(TPBottomBar *)self initWithFrame:v8 style:x, y, width, height];
}

- (TPBottomBar)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v8.receiver = self;
  v8.super_class = TPBottomBar;
  v5 = [(TPBottomBar *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_style = style;
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

- (void)setOrientation:(int64_t)orientation updateFrame:(BOOL)frame
{
  if (self->_orientation != orientation)
  {
    frameCopy = frame;
    self->_orientation = orientation;
    [(TPBottomBar *)self frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [objc_opt_class() defaultHeightForOrientation:orientation];
    v17 = v16 - v15;
    v18 = v15 + v17;
    if (frameCopy)
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen bounds];
      v21 = v20;
      v23 = v22;

      if ((orientation - 1) >= 2)
      {
        v13 = v23;
      }

      else
      {
        v13 = v21;
      }

      if ((orientation - 1) >= 2)
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