@interface AVAssetTrack(PhotosUICore)
+ (__n128)px_changeTranslationOfTransform:()PhotosUICore forAssetSize:;
- (double)px_preferredTransformBasedOnNaturalSize;
- (double)px_transformedNaturalSize;
@end

@implementation AVAssetTrack(PhotosUICore)

- (double)px_preferredTransformBasedOnNaturalSize
{
  v4 = objc_opt_class();
  [a1 preferredTransform];
  [a1 naturalSize];
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
  [a1 naturalSize];
  v5 = v3;
  v6 = v2;
  [a1 px_preferredTransformBasedOnNaturalSize];
  *&result = *&vabsq_f64(vmlaq_n_f64(vmulq_n_f64(0, v5), 0, v6));
  return result;
}

+ (__n128)px_changeTranslationOfTransform:()PhotosUICore forAssetSize:
{
  v4 = a3;
  v8 = *(a1 + 16);
  *&v12.a = *a1;
  *&v12.c = v8;
  *&v12.tx = *(a1 + 32);
  v9 = 0;
  *&v8 = 0;
  v13 = CGRectApplyAffineTransform(*(&v4 - 3), &v12);
  y = v13.origin.y;
  *(a1 + 32) = vsubq_f64(*(a1 + 32), v13.origin);
  *&v13.origin.y = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = *&v13.origin.y;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

@end