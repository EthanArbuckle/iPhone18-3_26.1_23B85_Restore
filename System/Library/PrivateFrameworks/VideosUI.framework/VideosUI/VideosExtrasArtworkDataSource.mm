@interface VideosExtrasArtworkDataSource
- (BOOL)areRepresentationsAvailableForCatalog:(id)catalog;
- (VideosExtrasArtworkDataSource)init;
- (id)cacheKeyForCatalog:(id)catalog size:(CGSize)size;
- (id)requestForCatalog:(id)catalog size:(CGSize)size;
- (id)supportedSizesForCatalog:(id)catalog;
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
    uRLSessionConfiguration = [(MPAbstractNetworkArtworkDataSource *)v2 URLSessionConfiguration];
    uRLCache = [uRLSessionConfiguration URLCache];
    [uRLCache setMemoryCapacity:524288000];

    uRLSessionConfiguration2 = [(MPAbstractNetworkArtworkDataSource *)v3 URLSessionConfiguration];
    uRLCache2 = [uRLSessionConfiguration2 URLCache];
    [uRLCache2 setDiskCapacity:524288000];
  }

  return v3;
}

- (BOOL)areRepresentationsAvailableForCatalog:(id)catalog
{
  token = [catalog token];
  srcset = [token srcset];
  if ([srcset count])
  {
    v5 = 1;
  }

  else
  {
    v6 = [token url];
    v5 = v6 != 0;
  }

  return v5;
}

- (id)supportedSizesForCatalog:(id)catalog
{
  v41[1] = *MEMORY[0x1E69E9840];
  token = [catalog token];
  array = [MEMORY[0x1E695DF70] array];
  [token width];
  v33 = v5;
  [token height];
  v34 = v6;
  if (*&v33 != *MEMORY[0x1E695F060] || v6 != *(MEMORY[0x1E695F060] + 8))
  {
    v8 = MEMORY[0x1E696B098];
    [token width];
    v10 = v9;
    [token height];
    v12 = [v8 valueWithCGSize:{v10, v11}];
    [array addObject:v12];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v31 = token;
    srcset = [token srcset];
    v14 = [srcset countByEnumeratingWithState:&v36 objects:v40 count:16];
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
          objc_enumerationMutation(srcset);
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
        [array addObject:v27];
      }

      v15 = [srcset countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (!v15)
      {
LABEL_20:

        v28 = array;
        token = v31;
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

- (id)requestForCatalog:(id)catalog size:(CGSize)size
{
  height = size.height;
  width = size.width;
  catalogCopy = catalog;
  token = [catalogCopy token];
  srcset = [token srcset];
  if (![srcset count])
  {

    goto LABEL_9;
  }

  v9 = *MEMORY[0x1E695F060];
  v10 = *(MEMORY[0x1E695F060] + 8);

  if (width == v9 && height == v10)
  {
LABEL_9:
    v16 = [token url];
    if (v16)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  [catalogCopy destinationScale];
  if (fabs(v12 + -1.0) < 0.00000011920929)
  {
    srcset2 = [token srcset];
    v14 = srcset2;
    v15 = MEMORY[0x1E69A87B0];
LABEL_13:
    v17 = *v15;
    goto LABEL_14;
  }

  if (fabs(v12 + -2.0) < 0.00000011920929)
  {
    srcset2 = [token srcset];
    v14 = srcset2;
    v15 = MEMORY[0x1E69A87B8];
    goto LABEL_13;
  }

  if (fabs(v12 + -3.0) < 0.00000011920929)
  {
    srcset2 = [token srcset];
    v14 = srcset2;
    v17 = @"3x";
LABEL_14:
    v16 = [srcset2 objectForKeyedSubscript:v17];

    if (v16)
    {
      goto LABEL_22;
    }
  }

LABEL_18:
  v18 = [token url];
  if (v18)
  {
    v16 = v18;
  }

  else
  {
    srcset3 = [token srcset];
    v16 = [srcset3 objectForKeyedSubscript:*MEMORY[0x1E69A87A8]];

    if (!v16)
    {
      srcset4 = [token srcset];
      v16 = [srcset4 objectForKeyedSubscript:*MEMORY[0x1E69A87C0]];
    }
  }

LABEL_22:
  v21 = [MEMORY[0x1E696AF68] requestWithURL:v16 cachePolicy:0 timeoutInterval:60.0];

  return v21;
}

- (id)cacheKeyForCatalog:(id)catalog size:(CGSize)size
{
  token = [catalog token];
  cachePath = [token cachePath];

  return cachePath;
}

@end