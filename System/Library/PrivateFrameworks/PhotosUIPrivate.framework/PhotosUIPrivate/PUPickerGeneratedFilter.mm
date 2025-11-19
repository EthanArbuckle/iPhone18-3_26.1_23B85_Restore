@interface PUPickerGeneratedFilter
+ (id)_excludingLoopingVideosFilter;
+ (id)_excludingStreamedVideosFilter;
+ (id)_imagesFilter;
+ (id)_loopingVideosFilter;
+ (id)_pu_legacy_filterForUIImagePickerControllerMediaTypes:(id)a3;
+ (id)_videosFilter;
- (PUPickerGeneratedFilter)init;
- (PUPickerGeneratedFilter)initWithFilter:(id)a3;
- (PUPickerGeneratedFilter)initWithUIImagePickerControllerMediaTypes:(id)a3;
- (int64_t)displayAssetMediaType;
- (int64_t)displayAssetMediaTypeConsideringAssetObjectIDs:(id)a3 photoLibrary:(id)a4;
- (int64_t)noContentPlaceholderType;
- (unint64_t)genericAssetTypes;
@end

@implementation PUPickerGeneratedFilter

- (int64_t)displayAssetMediaTypeConsideringAssetObjectIDs:(id)a3 photoLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v7 && v8)
  {
    v9 = objc_alloc(MEMORY[0x1E69788E0]);
    v10 = [v9 initWithOids:v6 photoLibrary:v7 fetchType:*MEMORY[0x1E6978D98] fetchPropertySets:0 identifier:0 registerIfNeeded:0];
    v11 = [v10 countOfAssetsWithMediaType:1];
    v12 = [v10 countOfAssetsWithMediaType:2];
    if (v12)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v11)
    {
      v14 = v13;
    }

    else
    {
      v14 = 2 * (v12 != 0);
    }
  }

  else
  {
    v14 = [(PUPickerGeneratedFilter *)self displayAssetMediaType];
  }

  return v14;
}

- (int64_t)noContentPlaceholderType
{
  v2 = [(PUPickerGeneratedFilter *)self possibleAssetTypes];
  v3 = 2 * ((v2 & 0x3FE) == 0);
  if ((v2 & 0x1FC00) == 0)
  {
    v3 = 1;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (int64_t)displayAssetMediaType
{
  v2 = [(PUPickerGeneratedFilter *)self possibleAssetTypes];
  v3 = 2 * ((v2 & 0x3FE) == 0);
  if ((v2 & 0x1FC00) == 0)
  {
    v3 = 1;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)genericAssetTypes
{
  v2 = [(PUPickerGeneratedFilter *)self possibleAssetTypes];
  v3 = v2 & 4;
  if ((v2 & 0x3FA) != 0)
  {
    ++v3;
  }

  if ((v2 & 0x1FC00) != 0)
  {
    v3 |= 2uLL;
  }

  if (v3 == 7)
  {
    return -1;
  }

  else
  {
    return v3;
  }
}

- (PUPickerGeneratedFilter)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUPickerGeneratedFilter.m" lineNumber:70 description:{@"%s is not available as initializer", "-[PUPickerGeneratedFilter init]"}];

  abort();
}

- (PUPickerGeneratedFilter)initWithUIImagePickerControllerMediaTypes:(id)a3
{
  v4 = a3;
  v5 = [PUPickerGeneratedFilter _pu_legacy_filterForUIImagePickerControllerMediaTypes:v4];
  v6 = [(PUPickerGeneratedFilter *)self initWithFilter:v5];

  v7 = [*MEMORY[0x1E6982E80] identifier];
  v8 = [v4 containsObject:v7];

  v6->_pu_legacy_mediaTypesIncludesLivePhoto = v8;
  return v6;
}

- (PUPickerGeneratedFilter)initWithFilter:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PUPickerGeneratedFilter;
  v5 = [(PUPickerGeneratedFilter *)&v18 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 allowsAlbums];
      v7 = [MEMORY[0x1E69790E8] _stickersFilter];
      v8 = [v7 _puPickerFilter];
      v9 = [v4 containsFilter:v8];

      v10 = [v4 generatedPossibleAssetTypes];
      v11 = [v4 generatedRequiredAssetTypes];
      v12 = 131070;
      if (v11 == 131070)
      {
        v13 = 0;
      }

      else
      {
        v14 = v11;
        v15 = [v4 generatedAssetPredicate];
        v13 = [v15 copy];

        v12 = v14;
      }
    }

    else
    {
      v9 = 0;
      v13 = 0;
      v6 = 1;
      v10 = 131070;
      v12 = 131070;
    }

    v5->_allowsAlbums = v6;
    v5->_containsStickersFilter = v9;
    v5->_possibleAssetTypes = v10;
    v5->_requiredAssetTypes = v12;
    assetPredicate = v5->_assetPredicate;
    v5->_assetPredicate = v13;
  }

  return v5;
}

+ (id)_excludingStreamedVideosFilter
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E6979128]) initWithFilterType:5];
  v3 = objc_alloc(MEMORY[0x1E6979140]);
  v7[0] = v2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v3 initWithFilterType:2 subfilters:v4];

  return v5;
}

+ (id)_excludingLoopingVideosFilter
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E6979140]);
  v4 = [a1 _loopingVideosFilter];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [v3 initWithFilterType:2 subfilters:v5];

  return v6;
}

+ (id)_loopingVideosFilter
{
  v2 = [objc_alloc(MEMORY[0x1E6979138]) initWithPlaybackStyle:5];

  return v2;
}

+ (id)_videosFilter
{
  v2 = [objc_alloc(MEMORY[0x1E6979130]) initWithMediaType:2];

  return v2;
}

+ (id)_imagesFilter
{
  v2 = [objc_alloc(MEMORY[0x1E6979130]) initWithMediaType:1];

  return v2;
}

+ (id)_pu_legacy_filterForUIImagePickerControllerMediaTypes:(id)a3
{
  v35[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [[v4 alloc] initWithArray:v5];

  v7 = [*MEMORY[0x1E6982E30] identifier];
  v8 = [v6 containsObject:v7];

  v9 = [*MEMORY[0x1E6982EE8] identifier];
  v10 = [v6 containsObject:v9];

  if (v8)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v16 = objc_alloc(MEMORY[0x1E6979140]);
    v17 = [a1 _imagesFilter];
    v35[0] = v17;
    v18 = [a1 _videosFilter];
    v35[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    v20 = [v16 initWithFilterType:0 subfilters:v19];

    v21 = objc_alloc(MEMORY[0x1E6979140]);
    v34[0] = v20;
    v22 = [a1 _excludingStreamedVideosFilter];
    v34[1] = v22;
    v23 = MEMORY[0x1E695DEC8];
    v24 = v34;
LABEL_8:
    v13 = [v23 arrayWithObjects:v24 count:2];
    v14 = v21;
    v15 = v13;
    goto LABEL_9;
  }

  if (v8)
  {
    v12 = objc_alloc(MEMORY[0x1E6979140]);
    v22 = [a1 _imagesFilter];
    v33[0] = v22;
    v13 = [a1 _excludingLoopingVideosFilter];
    v33[1] = v13;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    v14 = v12;
    v15 = v20;
LABEL_9:
    v25 = [v14 initWithFilterType:1 subfilters:v15];

    goto LABEL_10;
  }

  if (v10)
  {
    v27 = objc_alloc(MEMORY[0x1E6979140]);
    v28 = [a1 _videosFilter];
    v32[0] = v28;
    v29 = [a1 _loopingVideosFilter];
    v32[1] = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    v20 = [v27 initWithFilterType:0 subfilters:v30];

    v21 = objc_alloc(MEMORY[0x1E6979140]);
    v31[0] = v20;
    v22 = [a1 _excludingStreamedVideosFilter];
    v31[1] = v22;
    v23 = MEMORY[0x1E695DEC8];
    v24 = v31;
    goto LABEL_8;
  }

  v25 = 0;
LABEL_10:

  return v25;
}

@end