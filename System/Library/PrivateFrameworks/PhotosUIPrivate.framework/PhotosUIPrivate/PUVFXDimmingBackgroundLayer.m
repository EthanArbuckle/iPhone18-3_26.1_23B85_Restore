@interface PUVFXDimmingBackgroundLayer
- (CGImage)backgroundMask;
- (CGImage)foregroundMask;
- (CGImage)sourceImage;
- (void)initialScan;
- (void)layoutSublayers;
- (void)resetMask;
- (void)scanFrom:(CGPoint)a3;
- (void)setBackgroundImage:(id)a3 ctx:(id)a4 format:(int)a5 colorSpace:(CGColorSpace *)a6;
- (void)setBackgroundMask:(CGImage *)a3;
- (void)setBlendImages:(id)a3 ctx:(id)a4 format:(int)a5 colorSpace:(CGColorSpace *)a6;
- (void)setForegroundImage:(id)a3 ctx:(id)a4 format:(int)a5 colorSpace:(CGColorSpace *)a6;
- (void)setForegroundMask:(CGImage *)a3;
- (void)setIsDimmed:(BOOL)a3;
- (void)setIsThrottled:(BOOL)a3;
- (void)setSourceImage:(CGImage *)a3;
@end

@implementation PUVFXDimmingBackgroundLayer

- (void)setIsThrottled:(BOOL)a3
{
  v4 = self;
  sub_1B38777D4(a3);
}

- (void)setIsDimmed:(BOOL)a3
{
  v4 = self;
  sub_1B38779F4(a3);
}

- (CGImage)foregroundMask
{
  v2 = sub_1B3877B64();

  return v2;
}

- (void)setForegroundMask:(CGImage *)a3
{
  v5 = a3;
  v6 = self;
  sub_1B3877BFC(a3);
}

- (CGImage)backgroundMask
{
  v2 = sub_1B3877E78();

  return v2;
}

- (void)setBackgroundMask:(CGImage *)a3
{
  v5 = a3;
  v6 = self;
  sub_1B3877F10(a3);
}

- (CGImage)sourceImage
{
  v2 = sub_1B3878230();

  return v2;
}

- (void)setSourceImage:(CGImage *)a3
{
  v5 = a3;
  v6 = self;
  sub_1B38782C8(a3);
}

- (void)layoutSublayers
{
  v2 = self;
  sub_1B387874C();
}

- (void)resetMask
{
  v2 = self;
  sub_1B3878BE0();
}

- (void)setBlendImages:(id)a3 ctx:(id)a4 format:(int)a5 colorSpace:(CGColorSpace *)a6
{
  v7 = *&a5;
  sub_1B3710718(0, &qword_1EB857820);
  v10 = sub_1B3C9C788();
  v11 = a4;
  v12 = a6;
  v13 = self;
  sub_1B3878CB8(v10, v11, v7, v12);
}

- (void)setForegroundImage:(id)a3 ctx:(id)a4 format:(int)a5 colorSpace:(CGColorSpace *)a6
{
  v7 = *&a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = self;
  sub_1B3878EF4(v10, v11, v7, v12);
}

- (void)setBackgroundImage:(id)a3 ctx:(id)a4 format:(int)a5 colorSpace:(CGColorSpace *)a6
{
  v7 = *&a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = self;
  sub_1B3879288(v10, v11, v7, v12);
}

- (void)scanFrom:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  sub_1B3879984(x, y);
}

- (void)initialScan
{
  v2 = self;
  sub_1B3879AE8();
}

@end