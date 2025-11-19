@interface BKDisplayAnnotationCrosshatchedBackgroundStyle
- (void)applyToLayer:(id)a3 forContent:(id)a4;
@end

@implementation BKDisplayAnnotationCrosshatchedBackgroundStyle

- (void)applyToLayer:(id)a3 forContent:(id)a4
{
  v4 = a3;
  [v4 bk_setBackgroundColorRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  *&v10.version = unk_1000FA9D8;
  v10.releaseInfo = 0;
  CGAffineTransformMakeRotation(&matrix, 1.0);
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = 16.0;
  v12.size.height = 16.0;
  v5 = CGPatternCreate(0, v12, &matrix, 16.0, 16.0, kCGPatternTilingConstantSpacing, 1, &v10);
  Pattern = CGColorSpaceCreatePattern(0);
  if (Pattern)
  {
    v7 = Pattern;
    matrix.a = 1.0;
    v8 = CGColorCreateWithPattern(Pattern, v5, &matrix.a);
    if (v8)
    {
      v9 = v8;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v4 setFillColor:{v9, *&v10.version, v10.releaseInfo}];
      }

      else
      {
        [v4 setBackgroundColor:{v9, *&v10.version, v10.releaseInfo}];
      }

      CFRelease(v9);
    }

    CFRelease(v7);
  }
}

@end