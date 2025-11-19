@interface VideosExtrasArtworkDataSource
- (BOOL)areRepresentationsAvailableForCatalog:(id)a3;
- (VideosExtrasArtworkDataSource)init;
- (id)cacheKeyForCatalog:(id)a3 size:(CGSize)a4;
- (id)requestForCatalog:(id)a3 size:(CGSize)a4;
- (id)supportedSizesForCatalog:(id)a3;
@end

@implementation VideosExtrasArtworkDataSource

- (VideosExtrasArtworkDataSource)init
{
  v9.receiver = self;
  v9.super_class = VideosExtrasArtworkDataSource;
  v2 = [(MPAbstractNetworkArtworkDataSource *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(MPAbstractNetworkArtworkDataSource *)v2 URLSessionConfiguration];
    v5 = [v4 URLCache];
    [v5 setMemoryCapacity:524288000];

    v6 = [(MPAbstractNetworkArtworkDataSource *)v3 URLSessionConfiguration];
    v7 = [v6 URLCache];
    [v7 setDiskCapacity:524288000];
  }

  return v3;
}

- (BOOL)areRepresentationsAvailableForCatalog:(id)a3
{
  v3 = [a3 token];
  v4 = [v3 srcset];
  if ([v4 count])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 url];
    v5 = v6 != 0;
  }

  return v5;
}

- (id)supportedSizesForCatalog:(id)a3
{
  v41[1] = *MEMORY[0x1E69E9840];
  v3 = [a3 token];
  v4 = [MEMORY[0x1E695DF70] array];
  [v3 width];
  v33 = v5;
  [v3 height];
  v34 = v6;
  if (*&v33 != *MEMORY[0x1E695F060] || v6 != *(MEMORY[0x1E695F060] + 8))
  {
    v8 = MEMORY[0x1E696B098];
    [v3 width];
    v10 = v9;
    [v3 height];
    v12 = [v8 valueWithCGSize:{v10, v11}];
    [v4 addObject:v12];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v31 = v3;
    v13 = [v3 srcset];
    v14 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (!v14)
    {
      goto LABEL_20;
    }

    v15 = v14;
    v16 = *v37;
    v17 = *MEMORY[0x1E69A87B0];
    v18 = *MEMORY[0x1E69A87B8];
    v32 = vdupq_lane_s64(v33, 0);
    while (1)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v36 + 1) + 8 * i);
        if ([v20 isEqualToString:v17])
        {
          v21 = MEMORY[0x1E696B098];
          *&v22.f64[0] = v33;
          v23 = v34;
        }

        else
        {
          if ([v20 isEqualToString:v18])
          {
            v24 = MEMORY[0x1E696B098];
            v25 = 2.0;
            v26 = 2.0;
          }

          else
          {
            if (![v20 isEqualToString:@"3x"])
            {
              continue;
            }

            v24 = MEMORY[0x1E696B098];
            v25 = 3.0;
            v26 = 3.0;
          }

          CGAffineTransformMakeScale(&v35, v25, v26);
          v22 = vmlaq_f64(vmulq_n_f64(*&v35.c, v34), v32, *&v35.a);
          v23 = v22.f64[1];
          v21 = v24;
        }

        v27 = [v21 valueWithCGSize:{v22.f64[0], v23}];
        [v4 addObject:v27];
      }

      v15 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (!v15)
      {
LABEL_20:

        v28 = v4;
        v3 = v31;
        goto LABEL_22;
      }
    }
  }

  v29 = [MEMORY[0x1E696B098] valueWithCGSize:?];
  v41[0] = v29;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];

LABEL_22:

  return v28;
}

- (id)requestForCatalog:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v7 = [v6 token];
  v8 = [v7 srcset];
  if (![v8 count])
  {

    goto LABEL_9;
  }

  v9 = *MEMORY[0x1E695F060];
  v10 = *(MEMORY[0x1E695F060] + 8);

  if (width == v9 && height == v10)
  {
LABEL_9:
    v16 = [v7 url];
    if (v16)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  [v6 destinationScale];
  if (fabs(v12 + -1.0) < 0.00000011920929)
  {
    v13 = [v7 srcset];
    v14 = v13;
    v15 = MEMORY[0x1E69A87B0];
LABEL_13:
    v17 = *v15;
    goto LABEL_14;
  }

  if (fabs(v12 + -2.0) < 0.00000011920929)
  {
    v13 = [v7 srcset];
    v14 = v13;
    v15 = MEMORY[0x1E69A87B8];
    goto LABEL_13;
  }

  if (fabs(v12 + -3.0) < 0.00000011920929)
  {
    v13 = [v7 srcset];
    v14 = v13;
    v17 = @"3x";
LABEL_14:
    v16 = [v13 objectForKeyedSubscript:v17];

    if (v16)
    {
      goto LABEL_22;
    }
  }

LABEL_18:
  v18 = [v7 url];
  if (v18)
  {
    v16 = v18;
  }

  else
  {
    v19 = [v7 srcset];
    v16 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69A87A8]];

    if (!v16)
    {
      v20 = [v7 srcset];
      v16 = [v20 objectForKeyedSubscript:*MEMORY[0x1E69A87C0]];
    }
  }

LABEL_22:
  v21 = [MEMORY[0x1E696AF68] requestWithURL:v16 cachePolicy:0 timeoutInterval:60.0];

  return v21;
}

- (id)cacheKeyForCatalog:(id)a3 size:(CGSize)a4
{
  v4 = [a3 token];
  v5 = [v4 cachePath];

  return v5;
}

@end