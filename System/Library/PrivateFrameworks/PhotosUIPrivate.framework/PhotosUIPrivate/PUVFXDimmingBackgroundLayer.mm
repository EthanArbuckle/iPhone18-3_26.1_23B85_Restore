@interface PUVFXDimmingBackgroundLayer
- (CGImage)backgroundMask;
- (CGImage)foregroundMask;
- (CGImage)sourceImage;
- (void)initialScan;
- (void)layoutSublayers;
- (void)resetMask;
- (void)scanFrom:(CGPoint)from;
- (void)setBackgroundImage:(id)image ctx:(id)ctx format:(int)format colorSpace:(CGColorSpace *)space;
- (void)setBackgroundMask:(CGImage *)mask;
- (void)setBlendImages:(id)images ctx:(id)ctx format:(int)format colorSpace:(CGColorSpace *)space;
- (void)setForegroundImage:(id)image ctx:(id)ctx format:(int)format colorSpace:(CGColorSpace *)space;
- (void)setForegroundMask:(CGImage *)mask;
- (void)setIsDimmed:(BOOL)dimmed;
- (void)setIsThrottled:(BOOL)throttled;
- (void)setSourceImage:(CGImage *)image;
@end

@implementation PUVFXDimmingBackgroundLayer

- (void)setIsThrottled:(BOOL)throttled
{
  selfCopy = self;
  sub_1B38777D4(throttled);
}

- (void)setIsDimmed:(BOOL)dimmed
{
  selfCopy = self;
  sub_1B38779F4(dimmed);
}

- (CGImage)foregroundMask
{
  v2 = sub_1B3877B64();

  return v2;
}

- (void)setForegroundMask:(CGImage *)mask
{
  maskCopy = mask;
  selfCopy = self;
  sub_1B3877BFC(mask);
}

- (CGImage)backgroundMask
{
  v2 = sub_1B3877E78();

  return v2;
}

- (void)setBackgroundMask:(CGImage *)mask
{
  maskCopy = mask;
  selfCopy = self;
  sub_1B3877F10(mask);
}

- (CGImage)sourceImage
{
  v2 = sub_1B3878230();

  return v2;
}

- (void)setSourceImage:(CGImage *)image
{
  imageCopy = image;
  selfCopy = self;
  sub_1B38782C8(image);
}

- (void)layoutSublayers
{
  selfCopy = self;
  sub_1B387874C();
}

- (void)resetMask
{
  selfCopy = self;
  sub_1B3878BE0();
}

- (void)setBlendImages:(id)images ctx:(id)ctx format:(int)format colorSpace:(CGColorSpace *)space
{
  v7 = *&format;
  sub_1B3710718(0, &qword_1EB857820);
  v10 = sub_1B3C9C788();
  ctxCopy = ctx;
  spaceCopy = space;
  selfCopy = self;
  sub_1B3878CB8(v10, ctxCopy, v7, spaceCopy);
}

- (void)setForegroundImage:(id)image ctx:(id)ctx format:(int)format colorSpace:(CGColorSpace *)space
{
  v7 = *&format;
  imageCopy = image;
  ctxCopy = ctx;
  spaceCopy = space;
  selfCopy = self;
  sub_1B3878EF4(imageCopy, ctxCopy, v7, spaceCopy);
}

- (void)setBackgroundImage:(id)image ctx:(id)ctx format:(int)format colorSpace:(CGColorSpace *)space
{
  v7 = *&format;
  imageCopy = image;
  ctxCopy = ctx;
  spaceCopy = space;
  selfCopy = self;
  sub_1B3879288(imageCopy, ctxCopy, v7, spaceCopy);
}

- (void)scanFrom:(CGPoint)from
{
  y = from.y;
  x = from.x;
  selfCopy = self;
  sub_1B3879984(x, y);
}

- (void)initialScan
{
  selfCopy = self;
  sub_1B3879AE8();
}

@end