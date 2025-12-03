@interface UIImage(PRLikenessView)
+ (id)pr_imageWithCGImage:()PRLikenessView cropRect:;
- (id)pr_circleImageOfDiameter:()PRLikenessView cropRect:;
- (uint64_t)pr_circleImageWithCropRect:()PRLikenessView;
- (uint64_t)pr_imageRef;
@end

@implementation UIImage(PRLikenessView)

+ (id)pr_imageWithCGImage:()PRLikenessView cropRect:
{
  v7 = PRImageCreateWithImageInRect(a7, self, a2, a3, a4);
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
  selfCopy = self;

  return [selfCopy CGImage];
}

- (id)pr_circleImageOfDiameter:()PRLikenessView cropRect:
{
  pr_imageRef = [self pr_imageRef];
  if (pr_imageRef && (CircularImageInRect = PRImageCreateCircularImageInRect(pr_imageRef, a3, a4, a5, a6)) != 0)
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
    [self size];
    v11 = v10;
    [self size];
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

  return [self pr_circleImageOfDiameter:v13 cropRect:{a2, a3, a4, a5}];
}

@end