@interface UIColor(PhotosUIFoundation)
- (double)px_contrastRatioToColor:()PhotosUIFoundation;
- (double)px_luminance;
@end

@implementation UIColor(PhotosUIFoundation)

- (double)px_contrastRatioToColor:()PhotosUIFoundation
{
  v4 = a3;
  [self px_luminance];
  v6 = v5;
  [v4 px_luminance];
  v8 = v7;

  if (v6 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v6 >= v8)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  return (v10 + 0.05) / (v9 + 0.05);
}

- (double)px_luminance
{
  v1 = [MEMORY[0x1E695F610] colorWithCGColor:{objc_msgSend(self, "CGColor")}];
  [v1 red];
  if (v2 >= 0.03928)
  {
    v3 = pow((v2 + 0.055) / 1.055, 2.4);
  }

  else
  {
    v3 = v2 / 12.92;
  }

  [v1 green];
  if (v4 >= 0.03928)
  {
    v5 = pow((v4 + 0.055) / 1.055, 2.4);
  }

  else
  {
    v5 = v4 / 12.92;
  }

  [v1 blue];
  if (v6 >= 0.03928)
  {
    v7 = pow((v6 + 0.055) / 1.055, 2.4);
  }

  else
  {
    v7 = v6 / 12.92;
  }

  v8 = v5 * 0.7152 + v3 * 0.2126 + v7 * 0.0722;

  return v8;
}

@end