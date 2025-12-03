@interface PUBlackOneUpWhiteTintInterfaceTheme
- (id)tintColorForBarStyle:(int64_t)style;
@end

@implementation PUBlackOneUpWhiteTintInterfaceTheme

- (id)tintColorForBarStyle:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = PUBlackOneUpWhiteTintInterfaceTheme;
  v4 = [(PUFlatWhiteInterfaceTheme *)&v7 tintColorForBarStyle:?];
  if (style == 1)
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];

    v4 = whiteColor;
  }

  return v4;
}

@end