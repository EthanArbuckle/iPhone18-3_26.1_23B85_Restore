@interface PXPhotosIntelligenceBridge
+ (id)fetchFeaturedPhotoAssetsWithPhotoLibrary:(id)library sharingFilter:(unsigned __int16)filter;
+ (id)fetchFeaturedPhotoSuggestionsWithPhotoLibrary:(id)library sharingFilter:(unsigned __int16)filter fetchLimit:(int64_t)limit;
- (PXPhotosIntelligenceBridge)init;
@end

@implementation PXPhotosIntelligenceBridge

+ (id)fetchFeaturedPhotoSuggestionsWithPhotoLibrary:(id)library sharingFilter:(unsigned __int16)filter fetchLimit:(int64_t)limit
{
  libraryCopy = library;
  v8 = sub_1A45550C4(libraryCopy, filter, limit);

  return v8;
}

+ (id)fetchFeaturedPhotoAssetsWithPhotoLibrary:(id)library sharingFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  libraryCopy = library;
  v6 = sub_1A45550C4(libraryCopy, filterCopy, 0);
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  [librarySpecificFetchOptions setSharingFilter_];
  [librarySpecificFetchOptions setIncludeGuestAssets_];
  result = [objc_opt_self() fetchKeyAssetForEachSuggestion:v6 options:librarySpecificFetchOptions];
  if (result)
  {
    v9 = result;

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (PXPhotosIntelligenceBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PhotosIntelligenceFetcher();
  return [(PXPhotosIntelligenceBridge *)&v3 init];
}

@end