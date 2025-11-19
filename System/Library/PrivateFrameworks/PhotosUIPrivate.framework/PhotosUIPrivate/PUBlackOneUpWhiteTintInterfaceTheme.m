@interface PUBlackOneUpWhiteTintInterfaceTheme
- (id)tintColorForBarStyle:(int64_t)a3;
@end

@implementation PUBlackOneUpWhiteTintInterfaceTheme

- (id)tintColorForBarStyle:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = PUBlackOneUpWhiteTintInterfaceTheme;
  v4 = [(PUFlatWhiteInterfaceTheme *)&v7 tintColorForBarStyle:?];
  if (a3 == 1)
  {
    v5 = [MEMORY[0x1E69DC888] whiteColor];

    v4 = v5;
  }

  return v4;
}

@end