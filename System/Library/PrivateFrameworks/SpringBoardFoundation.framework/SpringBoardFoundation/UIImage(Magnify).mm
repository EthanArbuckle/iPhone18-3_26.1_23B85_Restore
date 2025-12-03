@interface UIImage(Magnify)
- (id)sbf_resizedImageForCurrentMagnifyMode;
@end

@implementation UIImage(Magnify)

- (id)sbf_resizedImageForCurrentMagnifyMode
{
  v2 = +[SBFMagnifyMode currentMagnifyMode];
  [v2 zoomFactor];
  *&v3 = fabsf(*&v3 + -1.0);
  if (v2)
  {
    v4 = *&v3 < 2.2204e-16;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    selfCopy = self;
  }

  else
  {
    [v2 zoomFactor];
    v6 = 1.0 / v5;
    [self size];
    v12 = v8;
    v13 = v7;
    CGAffineTransformMakeScale(&v14, v6, v6);
    selfCopy = [self sbf_resizeImageToSize:{vmlaq_n_f64(vmulq_n_f64(*&v14.c, v12), *&v14.a, v13)}];
  }

  v10 = selfCopy;

  return v10;
}

@end