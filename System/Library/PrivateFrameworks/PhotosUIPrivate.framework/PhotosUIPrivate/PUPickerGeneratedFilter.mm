@interface PUPickerGeneratedFilter
+ (id)_excludingLoopingVideosFilter;
+ (id)_excludingStreamedVideosFilter;
+ (id)_imagesFilter;
+ (id)_loopingVideosFilter;
+ (id)_pu_legacy_filterForUIImagePickerControllerMediaTypes:(id)types;
+ (id)_videosFilter;
- (PUPickerGeneratedFilter)init;
- (PUPickerGeneratedFilter)initWithFilter:(id)filter;
- (PUPickerGeneratedFilter)initWithUIImagePickerControllerMediaTypes:(id)types;
- (int64_t)displayAssetMediaType;
- (int64_t)displayAssetMediaTypeConsideringAssetObjectIDs:(id)ds photoLibrary:(id)library;
- (int64_t)noContentPlaceholderType;
- (unint64_t)genericAssetTypes;
@end

@implementation PUPickerGeneratedFilter

- (int64_t)displayAssetMediaTypeConsideringAssetObjectIDs:(id)ds photoLibrary:(id)library
{
  dsCopy = ds;
  libraryCopy = library;
  v8 = [dsCopy count];
  if (libraryCopy && v8)
  {
    v9 = objc_alloc(MEMORY[0x1E69788E0]);
    v10 = [v9 initWithOids:dsCopy photoLibrary:libraryCopy fetchType:*MEMORY[0x1E6978D98] fetchPropertySets:0 identifier:0 registerIfNeeded:0];
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
      displayAssetMediaType = v13;
    }

    else
    {
      displayAssetMediaType = 2 * (v12 != 0);
    }
  }

  else
  {
    displayAssetMediaType = [(PUPickerGeneratedFilter *)self displayAssetMediaType];
  }

  return displayAssetMediaType;
}

- (int64_t)noContentPlaceholderType
{
  possibleAssetTypes = [(PUPickerGeneratedFilter *)self possibleAssetTypes];
  v3 = 2 * ((possibleAssetTypes & 0x3FE) == 0);
  if ((possibleAssetTypes & 0x1FC00) == 0)
  {
    v3 = 1;
  }

  if (possibleAssetTypes)
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
  possibleAssetTypes = [(PUPickerGeneratedFilter *)self possibleAssetTypes];
  v3 = 2 * ((possibleAssetTypes & 0x3FE) == 0);
  if ((possibleAssetTypes & 0x1FC00) == 0)
  {
    v3 = 1;
  }

  if (possibleAssetTypes)
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
  possibleAssetTypes = [(PUPickerGeneratedFilter *)self possibleAssetTypes];
  v3 = possibleAssetTypes & 4;
  if ((possibleAssetTypes & 0x3FA) != 0)
  {
    ++v3;
  }

  if ((possibleAssetTypes & 0x1FC00) != 0)
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerGeneratedFilter.m" lineNumber:70 description:{@"%s is not available as initializer", "-[PUPickerGeneratedFilter init]"}];

  abort();
}

- (PUPickerGeneratedFilter)initWithUIImagePickerControllerMediaTypes:(id)types
{
  typesCopy = types;
  v5 = [PUPickerGeneratedFilter _pu_legacy_filterForUIImagePickerControllerMediaTypes:typesCopy];
  v6 = [(PUPickerGeneratedFilter *)self initWithFilter:v5];

  identifier = [*MEMORY[0x1E6982E80] identifier];
  v8 = [typesCopy containsObject:identifier];

  v6->_pu_legacy_mediaTypesIncludesLivePhoto = v8;
  return v6;
}

- (PUPickerGeneratedFilter)initWithFilter:(id)filter
{
  filterCopy = filter;
  v18.receiver = self;
  v18.super_class = PUPickerGeneratedFilter;
  v5 = [(PUPickerGeneratedFilter *)&v18 init];
  if (v5)
  {
    if (filterCopy)
    {
      allowsAlbums = [filterCopy allowsAlbums];
      _stickersFilter = [MEMORY[0x1E69790E8] _stickersFilter];
      _puPickerFilter = [_stickersFilter _puPickerFilter];
      v9 = [filterCopy containsFilter:_puPickerFilter];

      generatedPossibleAssetTypes = [filterCopy generatedPossibleAssetTypes];
      generatedRequiredAssetTypes = [filterCopy generatedRequiredAssetTypes];
      v12 = 131070;
      if (generatedRequiredAssetTypes == 131070)
      {
        v13 = 0;
      }

      else
      {
        v14 = generatedRequiredAssetTypes;
        generatedAssetPredicate = [filterCopy generatedAssetPredicate];
        v13 = [generatedAssetPredicate copy];

        v12 = v14;
      }
    }

    else
    {
      v9 = 0;
      v13 = 0;
      allowsAlbums = 1;
      generatedPossibleAssetTypes = 131070;
      v12 = 131070;
    }

    v5->_allowsAlbums = allowsAlbums;
    v5->_containsStickersFilter = v9;
    v5->_possibleAssetTypes = generatedPossibleAssetTypes;
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
  _loopingVideosFilter = [self _loopingVideosFilter];
  v8[0] = _loopingVideosFilter;
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

+ (id)_pu_legacy_filterForUIImagePickerControllerMediaTypes:(id)types
{
  v35[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  typesCopy = types;
  v6 = [[v4 alloc] initWithArray:typesCopy];

  identifier = [*MEMORY[0x1E6982E30] identifier];
  v8 = [v6 containsObject:identifier];

  identifier2 = [*MEMORY[0x1E6982EE8] identifier];
  v10 = [v6 containsObject:identifier2];

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
    _imagesFilter = [self _imagesFilter];
    v35[0] = _imagesFilter;
    _videosFilter = [self _videosFilter];
    v35[1] = _videosFilter;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    v20 = [v16 initWithFilterType:0 subfilters:v19];

    v21 = objc_alloc(MEMORY[0x1E6979140]);
    v34[0] = v20;
    _excludingStreamedVideosFilter = [self _excludingStreamedVideosFilter];
    v34[1] = _excludingStreamedVideosFilter;
    v23 = MEMORY[0x1E695DEC8];
    v24 = v34;
LABEL_8:
    _excludingLoopingVideosFilter = [v23 arrayWithObjects:v24 count:2];
    v14 = v21;
    v15 = _excludingLoopingVideosFilter;
    goto LABEL_9;
  }

  if (v8)
  {
    v12 = objc_alloc(MEMORY[0x1E6979140]);
    _excludingStreamedVideosFilter = [self _imagesFilter];
    v33[0] = _excludingStreamedVideosFilter;
    _excludingLoopingVideosFilter = [self _excludingLoopingVideosFilter];
    v33[1] = _excludingLoopingVideosFilter;
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
    _videosFilter2 = [self _videosFilter];
    v32[0] = _videosFilter2;
    _loopingVideosFilter = [self _loopingVideosFilter];
    v32[1] = _loopingVideosFilter;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    v20 = [v27 initWithFilterType:0 subfilters:v30];

    v21 = objc_alloc(MEMORY[0x1E6979140]);
    v31[0] = v20;
    _excludingStreamedVideosFilter = [self _excludingStreamedVideosFilter];
    v31[1] = _excludingStreamedVideosFilter;
    v23 = MEMORY[0x1E695DEC8];
    v24 = v31;
    goto LABEL_8;
  }

  v25 = 0;
LABEL_10:

  return v25;
}

@end