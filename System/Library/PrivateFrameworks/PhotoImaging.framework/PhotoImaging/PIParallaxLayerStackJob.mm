@interface PIParallaxLayerStackJob
@end

@implementation PIParallaxLayerStackJob

uint64_t __35___PIParallaxLayerStackJob_render___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained isCanceled];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

BOOL __36___PIParallaxLayerStackJob_prepare___block_invoke(uint64_t a1, __int128 *a2)
{
  v24 = *a2;
  v25 = a2[1];
  NUPixelRectToCGRect();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [*(a1 + 32) extent];
  v29.origin.x = v11;
  v29.origin.y = v12;
  v29.size.width = v13;
  v29.size.height = v14;
  v26.origin.x = v4;
  v26.origin.y = v6;
  v26.size.width = v8;
  v26.size.height = v10;
  v27 = CGRectUnion(v26, v29);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  [*(a1 + 32) extent];
  v30.origin.x = v19;
  v30.origin.y = v20;
  v30.size.width = v21;
  v30.size.height = v22;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  return !CGRectEqualToRect(v28, v30);
}

@end