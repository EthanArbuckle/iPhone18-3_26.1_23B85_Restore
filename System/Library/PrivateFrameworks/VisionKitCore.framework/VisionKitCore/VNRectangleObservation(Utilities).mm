@interface VNRectangleObservation(Utilities)
- (VKQuad)vkQuad;
- (id)vk_quadConvertedToView:()Utilities withContentsRect:;
@end

@implementation VNRectangleObservation(Utilities)

- (VKQuad)vkQuad
{
  v2 = objc_opt_class();
  v3 = VKDynamicCast(v2, self);
  v4 = v3;
  if (v3)
  {
    [v3 topLeft];
    VKMFlipPoint();
    v19 = v6;
    v20 = v5;
    [v4 topRight];
    VKMFlipPoint();
    v8 = v7;
    v10 = v9;
    [v4 bottomLeft];
    VKMFlipPoint();
    v12 = v11;
    v14 = v13;
    [v4 bottomRight];
    VKMFlipPoint();
    v17 = [[VKQuad alloc] initWithBottomLeft:v12 bottomRight:v14 topLeft:v15 topRight:v16, v20, v19, v8, v10];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)vk_quadConvertedToView:()Utilities withContentsRect:
{
  v12 = a7;
  vkQuad = [self vkQuad];
  v14 = [vkQuad quadByConvertingFromNormalizedRectToView:v12 contentsRect:{a2, a3, a4, a5}];

  return v14;
}

@end