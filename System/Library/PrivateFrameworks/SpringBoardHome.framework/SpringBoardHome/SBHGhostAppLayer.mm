@interface SBHGhostAppLayer
- (SBHGhostAppLayer)init;
- (void)updateForUserInterfaceStyle:(int64_t)style;
@end

@implementation SBHGhostAppLayer

- (SBHGhostAppLayer)init
{
  v5.receiver = self;
  v5.super_class = SBHGhostAppLayer;
  v2 = [(SBHGhostAppLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SBHGhostAppLayer *)v2 updateForUserInterfaceStyle:2];
  }

  return v3;
}

- (void)updateForUserInterfaceStyle:(int64_t)style
{
  if (style == 1)
  {
    v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.12];
    v5 = MEMORY[0x1E6979CE8];
  }

  else
  {
    if (style != 2)
    {
      return;
    }

    v4 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.07];
    v5 = MEMORY[0x1E6979CF8];
  }

  -[SBHGhostAppLayer setBackgroundColor:](self, "setBackgroundColor:", [v4 CGColor]);

  v6 = [MEMORY[0x1E6979378] filterWithType:*v5];
  [(SBHGhostAppLayer *)self setCompositingFilter:v6];
}

@end