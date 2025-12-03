@interface PXStoryDefaultDisplayAssetCroppingContext
- (NSSet)featuredPersonLocalIdentifiers;
- (PXStoryDefaultDisplayAssetCroppingContext)initWithAssetCollection:(id)collection detailedSaliency:(id)saliency;
- (id)adjustOrderedFaces:(id)faces featuredFaceCount:(int64_t *)count;
- (id)adjustOrderedFaces:(id)faces featuredFaceCount:(int64_t *)count forFeaturedPersonWithLocalIdentifiers:(id)identifiers;
- (id)cropContentRectsForMultipartPanoramaAsset:(id)asset axis:(int64_t)axis cropContentsRectsApectRatio:(double)ratio;
- (id)orderFaces:(id)faces;
@end

@implementation PXStoryDefaultDisplayAssetCroppingContext

- (id)cropContentRectsForMultipartPanoramaAsset:(id)asset axis:(int64_t)axis cropContentsRectsApectRatio:(double)ratio
{
  assetCopy = asset;
  detailedSaliency = [(PXStoryDefaultDisplayAssetCroppingContext *)self detailedSaliency];
  v10 = [detailedSaliency saliencyAreasForDisplayAsset:assetCopy];

  v11 = [[PXStoryMultipartPanoramaCropFinder alloc] initWithSaliencyAreas:v10];
  v12 = [(PXStoryMultipartPanoramaCropFinder *)v11 bestCropContentsRectsWithAspectRatio:axis axis:ratio];

  return v12;
}

- (id)adjustOrderedFaces:(id)faces featuredFaceCount:(int64_t *)count
{
  v11.receiver = self;
  v11.super_class = PXStoryDefaultDisplayAssetCroppingContext;
  v12 = 0;
  v6 = [(PXStoryBaseDisplayAssetCroppingContext *)&v11 adjustOrderedFaces:faces featuredFaceCount:&v12];
  v7 = [(PXStoryDefaultDisplayAssetCroppingContext *)self orderFaces:v6];

  featuredPersonLocalIdentifiers = [(PXStoryDefaultDisplayAssetCroppingContext *)self featuredPersonLocalIdentifiers];
  v9 = [(PXStoryDefaultDisplayAssetCroppingContext *)self adjustOrderedFaces:v7 featuredFaceCount:&v12 forFeaturedPersonWithLocalIdentifiers:featuredPersonLocalIdentifiers];

  if (!v12)
  {
    v12 = [v9 count] != 0;
  }

  if (count)
  {
    *count = v12;
  }

  return v9;
}

- (id)adjustOrderedFaces:(id)faces featuredFaceCount:(int64_t *)count forFeaturedPersonWithLocalIdentifiers:(id)identifiers
{
  facesCopy = faces;
  identifiersCopy = identifiers;
  v9 = facesCopy;
  v10 = [v9 count];
  if (v10 < 1 || (v11 = v10, ![identifiersCopy count]))
  {
    v13 = 0;
    v21 = v9;
    if (!count)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  countCopy = count;
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v11];
  v13 = 0;
  for (i = 0; i != v11; ++i)
  {
    v15 = [v9 objectAtIndexedSubscript:i];
    personLocalIdentifier = [v15 personLocalIdentifier];
    v17 = [MEMORY[0x1E6978980] uuidFromLocalIdentifier:personLocalIdentifier];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = personLocalIdentifier;
    }

    v20 = v19;

    if (v20 && [identifiersCopy containsObject:v20])
    {
      [v12 insertObject:v15 atIndex:v13++];
    }

    else
    {
      [v12 addObject:v15];
    }
  }

  v21 = [v12 copy];

  count = countCopy;
  if (countCopy)
  {
LABEL_15:
    *count = v13;
  }

LABEL_16:

  return v21;
}

- (id)orderFaces:(id)faces
{
  facesCopy = faces;
  v4 = [facesCopy count];
  if (v4 < 1)
  {
    v18 = facesCopy;
  }

  else
  {
    v5 = v4;
    v6 = 0;
    v7 = -1.79769313e308;
    do
    {
      v8 = [facesCopy objectAtIndexedSubscript:v6];
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
      v15 = [facesCopy objectAtIndexedSubscript:v11];
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
    v18 = facesCopy;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_featuredPersonLocalIdentifiers)
  {
    assetCollection = [(PXStoryDefaultDisplayAssetCroppingContext *)selfCopy assetCollection];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [assetCollection featuredPersonLocalIdentifiers];
      objc_claimAutoreleasedReturnValue();
      v4 = objc_alloc(MEMORY[0x1E695DFD8]);
      PXMap();
    }

    if (!selfCopy->_featuredPersonLocalIdentifiers)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFD8]);
      featuredPersonLocalIdentifiers = selfCopy->_featuredPersonLocalIdentifiers;
      selfCopy->_featuredPersonLocalIdentifiers = v5;
    }
  }

  objc_sync_exit(selfCopy);

  v7 = selfCopy->_featuredPersonLocalIdentifiers;

  return v7;
}

- (PXStoryDefaultDisplayAssetCroppingContext)initWithAssetCollection:(id)collection detailedSaliency:(id)saliency
{
  collectionCopy = collection;
  saliencyCopy = saliency;
  v12.receiver = self;
  v12.super_class = PXStoryDefaultDisplayAssetCroppingContext;
  v9 = [(PXStoryBaseDisplayAssetCroppingContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetCollection, collection);
    objc_storeStrong(&v10->_detailedSaliency, saliency);
  }

  return v10;
}

@end