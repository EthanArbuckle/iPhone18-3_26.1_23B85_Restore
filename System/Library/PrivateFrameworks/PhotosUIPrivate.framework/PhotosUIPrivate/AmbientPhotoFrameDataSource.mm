@interface AmbientPhotoFrameDataSource
+ (id)suggestionPredicateForSmartAlbumTypes:(unint64_t)a3;
- (_TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource)initWithPhotoLibrary:(id)a3 changeObserver:(id)a4;
- (id)fetchSuggestionsForPersonLocalIdentifier:(id)a3;
- (id)keyAssetFetchOptions;
- (void)fetchSuggestions;
- (void)setupPreviewAssets;
@end

@implementation AmbientPhotoFrameDataSource

- (_TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource)initWithPhotoLibrary:(id)a3 changeObserver:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  return sub_1B3809CB0(v5, a4);
}

- (void)fetchSuggestions
{
  v2 = self;
  sub_1B3809E9C();
}

- (id)fetchSuggestionsForPersonLocalIdentifier:(id)a3
{
  v4 = sub_1B3C9C5E8();
  v6 = v5;
  v7 = self;
  v8 = sub_1B380ABD4(v4, v6);

  return v8;
}

- (id)keyAssetFetchOptions
{
  v2 = self;
  v3 = sub_1B380ACF0();

  return v3;
}

- (void)setupPreviewAssets
{
  v2 = self;
  sub_1B380AE20();
}

+ (id)suggestionPredicateForSmartAlbumTypes:(unint64_t)a3
{
  sub_1B380BF18();

  return v3;
}

@end