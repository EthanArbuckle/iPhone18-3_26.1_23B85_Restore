@interface TPLCDBar
+ (double)defaultHeightForOrientation:(int64_t)a3;
- (TPLCDBar)initWithDefaultSizeForOrientation:(int64_t)a3;
- (TPLCDBar)initWithFrame:(CGRect)a3;
- (void)setOrientation:(int64_t)a3 updateFrame:(BOOL)a4;
@end

@implementation TPLCDBar

+ (double)defaultHeightForOrientation:(int64_t)a3
{
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  result = 100.0;
  if ((a3 - 1) < 2)
  {
    result = 108.0;
  }

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 94.0;
  }

  return result;
}

- (TPLCDBar)initWithDefaultSizeForOrientation:(int64_t)a3
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
  v15.receiver = self;
  v15.super_class = TPLCDBar;
  v11 = [(TPLCDBar *)&v15 initWithFrame:0.0, 0.0, v7, v10];
  v12 = v11;
  if (v11)
  {
    [(TPLCDBar *)v11 setAutoresizingMask:2];
    v13 = [MEMORY[0x1E69DC888] clearColor];
    [(TPLCDBar *)v12 setBackgroundColor:v13];

    [(TPLCDBar *)v12 setOpaque:0];
  }

  return v12;
}

- (TPLCDBar)initWithFrame:(CGRect)a3
{
  y = a3.origin.y;
  x = a3.origin.x;
  v5 = [(TPLCDBar *)self initWithDefaultSizeForOrientation:1, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [(TPLCDBar *)v5 frame];
    [(TPLCDBar *)v6 setFrame:x, y];
  }

  return v6;
}

- (void)setOrientation:(int64_t)a3 updateFrame:(BOOL)a4
{
  v4 = a4;
  [(TPLCDBar *)self frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [objc_opt_class() defaultHeightForOrientation:a3];
  v14 = v13;
  if (v4)
  {
    v15 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v15 bounds];
    v12 = v16;
    v18 = v17;

    if ((a3 - 1) >= 2)
    {
      v12 = v18;
    }
  }

  [(TPLCDBar *)self setFrame:v8, v10, v12, v14];
}

@end