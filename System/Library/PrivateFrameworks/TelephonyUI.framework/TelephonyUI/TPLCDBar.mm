@interface TPLCDBar
+ (double)defaultHeightForOrientation:(int64_t)orientation;
- (TPLCDBar)initWithDefaultSizeForOrientation:(int64_t)orientation;
- (TPLCDBar)initWithFrame:(CGRect)frame;
- (void)setOrientation:(int64_t)orientation updateFrame:(BOOL)frame;
@end

@implementation TPLCDBar

+ (double)defaultHeightForOrientation:(int64_t)orientation
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  result = 100.0;
  if ((orientation - 1) < 2)
  {
    result = 108.0;
  }

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 94.0;
  }

  return result;
}

- (TPLCDBar)initWithDefaultSizeForOrientation:(int64_t)orientation
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
  v15.receiver = self;
  v15.super_class = TPLCDBar;
  v11 = [(TPLCDBar *)&v15 initWithFrame:0.0, 0.0, v7, v10];
  v12 = v11;
  if (v11)
  {
    [(TPLCDBar *)v11 setAutoresizingMask:2];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(TPLCDBar *)v12 setBackgroundColor:clearColor];

    [(TPLCDBar *)v12 setOpaque:0];
  }

  return v12;
}

- (TPLCDBar)initWithFrame:(CGRect)frame
{
  y = frame.origin.y;
  x = frame.origin.x;
  v5 = [(TPLCDBar *)self initWithDefaultSizeForOrientation:1, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(TPLCDBar *)v5 frame];
    [(TPLCDBar *)v6 setFrame:x, y];
  }

  return v6;
}

- (void)setOrientation:(int64_t)orientation updateFrame:(BOOL)frame
{
  frameCopy = frame;
  [(TPLCDBar *)self frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [objc_opt_class() defaultHeightForOrientation:orientation];
  v14 = v13;
  if (frameCopy)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v12 = v16;
    v18 = v17;

    if ((orientation - 1) >= 2)
    {
      v12 = v18;
    }
  }

  [(TPLCDBar *)self setFrame:v8, v10, v12, v14];
}

@end