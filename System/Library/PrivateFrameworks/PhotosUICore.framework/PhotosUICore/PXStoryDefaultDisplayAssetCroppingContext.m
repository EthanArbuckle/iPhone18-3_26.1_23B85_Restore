@interface PXStoryDefaultDisplayAssetCroppingContext
- (NSSet)featuredPersonLocalIdentifiers;
- (PXStoryDefaultDisplayAssetCroppingContext)initWithAssetCollection:(id)a3 detailedSaliency:(id)a4;
- (id)adjustOrderedFaces:(id)a3 featuredFaceCount:(int64_t *)a4;
- (id)adjustOrderedFaces:(id)a3 featuredFaceCount:(int64_t *)a4 forFeaturedPersonWithLocalIdentifiers:(id)a5;
- (id)cropContentRectsForMultipartPanoramaAsset:(id)a3 axis:(int64_t)a4 cropContentsRectsApectRatio:(double)a5;
- (id)orderFaces:(id)a3;
@end

@implementation PXStoryDefaultDisplayAssetCroppingContext

- (id)cropContentRectsForMultipartPanoramaAsset:(id)a3 axis:(int64_t)a4 cropContentsRectsApectRatio:(double)a5
{
  v8 = a3;
  v9 = [(PXStoryDefaultDisplayAssetCroppingContext *)self detailedSaliency];
  v10 = [v9 saliencyAreasForDisplayAsset:v8];

  v11 = [[PXStoryMultipartPanoramaCropFinder alloc] initWithSaliencyAreas:v10];
  v12 = [(PXStoryMultipartPanoramaCropFinder *)v11 bestCropContentsRectsWithAspectRatio:a4 axis:a5];

  return v12;
}

- (id)adjustOrderedFaces:(id)a3 featuredFaceCount:(int64_t *)a4
{
  v11.receiver = self;
  v11.super_class = PXStoryDefaultDisplayAssetCroppingContext;
  v12 = 0;
  v6 = [(PXStoryBaseDisplayAssetCroppingContext *)&v11 adjustOrderedFaces:a3 featuredFaceCount:&v12];
  v7 = [(PXStoryDefaultDisplayAssetCroppingContext *)self orderFaces:v6];

  v8 = [(PXStoryDefaultDisplayAssetCroppingContext *)self featuredPersonLocalIdentifiers];
  v9 = [(PXStoryDefaultDisplayAssetCroppingContext *)self adjustOrderedFaces:v7 featuredFaceCount:&v12 forFeaturedPersonWithLocalIdentifiers:v8];

  if (!v12)
  {
    v12 = [v9 count] != 0;
  }

  if (a4)
  {
    *a4 = v12;
  }

  return v9;
}

- (id)adjustOrderedFaces:(id)a3 featuredFaceCount:(int64_t *)a4 forFeaturedPersonWithLocalIdentifiers:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v7;
  v10 = [v9 count];
  if (v10 < 1 || (v11 = v10, ![v8 count]))
  {
    v13 = 0;
    v21 = v9;
    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v23 = a4;
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v11];
  v13 = 0;
  for (i = 0; i != v11; ++i)
  {
    v15 = [v9 objectAtIndexedSubscript:i];
    v16 = [v15 personLocalIdentifier];
    v17 = [MEMORY[0x1E6978980] uuidFromLocalIdentifier:v16];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = v16;
    }

    v20 = v19;

    if (v20 && [v8 containsObject:v20])
    {
      [v12 insertObject:v15 atIndex:v13++];
    }

    else
    {
      [v12 addObject:v15];
    }
  }

  v21 = [v12 copy];

  a4 = v23;
  if (v23)
  {
LABEL_15:
    *a4 = v13;
  }

LABEL_16:

  return v21;
}

- (id)orderFaces:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (v4 < 1)
  {
    v18 = v3;
  }

  else
  {
    v5 = v4;
    v6 = 0;
    v7 = -1.79769313e308;
    do
    {
      v8 = [v3 objectAtIndexedSubscript:v6];
      [v8 size];
      v10 = v9;

      if (v7 < v10)
      {
        v7 = v10;
      }

      ++v6;
    }

    while (v5 != v6);
    v11 = 0;
    v12 = v7 * 0.9;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    v14 = -1.79769313e308;
    do
    {
      v15 = [v3 objectAtIndexedSubscript:v11];
      [v15 size];
      if (v16 >= v12)
      {
        [v15 quality];
        if (v17 > v14)
        {
          v14 = v17;
          v13 = v11;
        }
      }

      ++v11;
    }

    while (v5 != v11);
    v18 = v3;
    if (v13 && v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
      for (i = 0; i != v5; ++i)
      {
        v21 = [v18 objectAtIndexedSubscript:i];
        if (v13 == i)
        {
          [v19 insertObject:v21 atIndex:0];
        }

        else
        {
          [v19 addObject:v21];
        }
      }

      v22 = [v19 copy];

      v18 = v22;
    }
  }

  return v18;
}

- (NSSet)featuredPersonLocalIdentifiers
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_featuredPersonLocalIdentifiers)
  {
    v3 = [(PXStoryDefaultDisplayAssetCroppingContext *)v2 assetCollection];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 featuredPersonLocalIdentifiers];
      objc_claimAutoreleasedReturnValue();
      v4 = objc_alloc(MEMORY[0x1E695DFD8]);
      PXMap();
    }

    if (!v2->_featuredPersonLocalIdentifiers)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFD8]);
      featuredPersonLocalIdentifiers = v2->_featuredPersonLocalIdentifiers;
      v2->_featuredPersonLocalIdentifiers = v5;
    }
  }

  objc_sync_exit(v2);

  v7 = v2->_featuredPersonLocalIdentifiers;

  return v7;
}

- (PXStoryDefaultDisplayAssetCroppingContext)initWithAssetCollection:(id)a3 detailedSaliency:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXStoryDefaultDisplayAssetCroppingContext;
  v9 = [(PXStoryBaseDisplayAssetCroppingContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetCollection, a3);
    objc_storeStrong(&v10->_detailedSaliency, a4);
  }

  return v10;
}

@end