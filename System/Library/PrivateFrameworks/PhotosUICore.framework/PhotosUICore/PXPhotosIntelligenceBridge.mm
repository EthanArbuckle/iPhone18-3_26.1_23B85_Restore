@interface PXPhotosIntelligenceBridge
+ (id)fetchFeaturedPhotoAssetsWithPhotoLibrary:(id)a3 sharingFilter:(unsigned __int16)a4;
+ (id)fetchFeaturedPhotoSuggestionsWithPhotoLibrary:(id)a3 sharingFilter:(unsigned __int16)a4 fetchLimit:(int64_t)a5;
- (PXPhotosIntelligenceBridge)init;
@end

@implementation PXPhotosIntelligenceBridge

+ (id)fetchFeaturedPhotoSuggestionsWithPhotoLibrary:(id)a3 sharingFilter:(unsigned __int16)a4 fetchLimit:(int64_t)a5
{
  v7 = a3;
  v8 = sub_1A45550C4(v7, a4, a5);

  return v8;
}

+ (id)fetchFeaturedPhotoAssetsWithPhotoLibrary:(id)a3 sharingFilter:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  v6 = sub_1A45550C4(v5, v4, 0);
  v7 = [v5 librarySpecificFetchOptions];
  [v7 setSharingFilter_];
  [v7 setIncludeGuestAssets_];
  result = [objc_opt_self() fetchKeyAssetForEachSuggestion:v6 options:v7];
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