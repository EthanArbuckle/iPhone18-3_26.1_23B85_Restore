@interface TSUImage(TSDAdditions)
- (uint64_t)CGImageForSize:()TSDAdditions inContext:orLayer:;
@end

@implementation TSUImage(TSDAdditions)

- (uint64_t)CGImageForSize:()TSDAdditions inContext:orLayer:
{
  if (a5)
  {
    if (a6)
    {
      v11 = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUImage(TSDAdditions) CGImageForSize:inContext:orLayer:]"];
      [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSUImage-TSDAdditions.m"), 20, @"using context to determine requested image size. layer should be nil"}];
    }

    if ((TSDCGContextIsPrintContext(a5) & 1) != 0 || TSDCGContextIsPDFContext(a5))
    {

      return [a1 CGImageForContentsScale:2.0];
    }

    v16 = TSDCGContextAssociatedScreenScale(a5);
    v17 = TSDMultiplySizeScalar(a2, a3, v16);
    v19 = v18;
    CGContextGetCTM(&v25, a5);
    v20 = TSDTransformScale(&v25.a);
    a2 = TSDMultiplySizeScalar(v17, v19, v20);
    a3 = v21;
  }

  else if (a6)
  {
    [a6 contentsScale];
    a2 = a2 * v14;
    [a6 contentsScale];
    a3 = a3 * v15;
  }

  [a1 size];
  if (a2 <= v22 && ([a1 size], a3 <= v23))
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 2.0;
  }

  return [a1 CGImageForContentsScale:v24];
}

@end