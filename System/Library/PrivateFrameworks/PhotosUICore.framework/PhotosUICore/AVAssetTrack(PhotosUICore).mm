@interface AVAssetTrack(PhotosUICore)
+ (__n128)px_changeTranslationOfTransform:()PhotosUICore forAssetSize:;
- (double)px_preferredTransformBasedOnNaturalSize;
- (double)px_transformedNaturalSize;
@end

@implementation AVAssetTrack(PhotosUICore)

- (double)px_preferredTransformBasedOnNaturalSize
{
  v4 = objc_opt_class();
  [self preferredTransform];
  [self naturalSize];
  if (v4)
  {
    [v4 px_changeTranslationOfTransform:&v6 forAssetSize:?];
  }

  else
  {
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

- (double)px_transformedNaturalSize
{
  [self naturalSize];
  v5 = v3;
  v6 = v2;
  [self px_preferredTransformBasedOnNaturalSize];
  *&result = *&vabsq_f64(vmlaq_n_f64(vmulq_n_f64(0, v5), 0, v6));
  return result;
}

+ (__n128)px_changeTranslationOfTransform:()PhotosUICore forAssetSize:
{
  v4 = a3;
  v8 = *(self + 16);
  *&v12.a = *self;
  *&v12.c = v8;
  *&v12.tx = *(self + 32);
  v9 = 0;
  *&v8 = 0;
  v13 = CGRectApplyAffineTransform(*(&v4 - 3), &v12);
  y = v13.origin.y;
  *(self + 32) = vsubq_f64(*(self + 32), v13.origin);
  *&v13.origin.y = *(self + 16);
  *a2 = *self;
  *(a2 + 16) = *&v13.origin.y;
  result = *(self + 32);
  *(a2 + 32) = result;
  return result;
}

@end