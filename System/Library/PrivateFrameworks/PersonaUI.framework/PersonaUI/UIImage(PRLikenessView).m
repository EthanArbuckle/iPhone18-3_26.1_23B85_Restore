@interface UIImage(PRLikenessView)
+ (id)pr_imageWithCGImage:()PRLikenessView cropRect:;
- (id)pr_circleImageOfDiameter:()PRLikenessView cropRect:;
- (uint64_t)pr_circleImageWithCropRect:()PRLikenessView;
- (uint64_t)pr_imageRef;
@end

@implementation UIImage(PRLikenessView)

+ (id)pr_imageWithCGImage:()PRLikenessView cropRect:
{
  v7 = PRImageCreateWithImageInRect(a7, a1, a2, a3, a4);
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x277D755B8] pr_imageWithCGImage:v7];
    CGImageRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)pr_imageRef
{
  v1 = a1;

  return [v1 CGImage];
}

- (id)pr_circleImageOfDiameter:()PRLikenessView cropRect:
{
  v10 = [a1 pr_imageRef];
  if (v10 && (CircularImageInRect = PRImageCreateCircularImageInRect(v10, a3, a4, a5, a6)) != 0)
  {
    v12 = CircularImageInRect;
    v13 = [MEMORY[0x277D755B8] pr_imageWithCGImage:CircularImageInRect];
    CGImageRelease(v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (uint64_t)pr_circleImageWithCropRect:()PRLikenessView
{
  if (CGRectIsEmpty(*&a2))
  {
    [a1 size];
    v11 = v10;
    [a1 size];
    if (v11 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }
  }

  else
  {
    v13 = a4;
  }

  return [a1 pr_circleImageOfDiameter:v13 cropRect:{a2, a3, a4, a5}];
}

@end