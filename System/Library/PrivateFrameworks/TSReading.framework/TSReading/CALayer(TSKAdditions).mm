@interface CALayer(TSKAdditions)
- (uint64_t)makeStretchableLayerWithImage:()TSKAdditions leftCap:rightCap:topCap:bottomCap:;
- (uint64_t)makeStretchableLayerWithUIImage:()TSKAdditions leftCap:rightCap:topCap:bottomCap:;
- (uint64_t)makeStretchableLayerWithoutImage:()TSKAdditions leftCap:rightCap:topCap:bottomCap:;
@end

@implementation CALayer(TSKAdditions)

- (uint64_t)makeStretchableLayerWithImage:()TSKAdditions leftCap:rightCap:topCap:bottomCap:
{
  [self makeStretchableLayerWithoutImage:? leftCap:? rightCap:? topCap:? bottomCap:?];

  return [self setContents:a3];
}

- (uint64_t)makeStretchableLayerWithoutImage:()TSKAdditions leftCap:rightCap:topCap:bottomCap:
{
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v15 = a7 / Height;
  v16 = (Height - (a6 + a7)) / Height;
  [self setContentsGravity:*MEMORY[0x277CDA700]];

  return [self setContentsCenter:{a4 / Width, v15, (Width - (a4 + a5)) / Width, v16}];
}

- (uint64_t)makeStretchableLayerWithUIImage:()TSKAdditions leftCap:rightCap:topCap:bottomCap:
{
  [a7 scale];
  v14 = v13;
  [self makeStretchableLayerWithImage:objc_msgSend(a7 leftCap:"CGImage") rightCap:v14 * a2 topCap:v14 * a3 bottomCap:{v14 * a4, v14 * a5}];

  return [self setContentsScale:v14];
}

@end