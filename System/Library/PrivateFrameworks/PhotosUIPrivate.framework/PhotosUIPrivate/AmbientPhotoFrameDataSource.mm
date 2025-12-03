@interface AmbientPhotoFrameDataSource
+ (id)suggestionPredicateForSmartAlbumTypes:(unint64_t)types;
- (_TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource)initWithPhotoLibrary:(id)library changeObserver:(id)observer;
- (id)fetchSuggestionsForPersonLocalIdentifier:(id)identifier;
- (id)keyAssetFetchOptions;
- (void)fetchSuggestions;
- (void)setupPreviewAssets;
@end

@implementation AmbientPhotoFrameDataSource

- (_TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource)initWithPhotoLibrary:(id)library changeObserver:(id)observer
{
  libraryCopy = library;
  swift_unknownObjectRetain();
  return sub_1B3809CB0(libraryCopy, observer);
}

- (void)fetchSuggestions
{
  selfCopy = self;
  sub_1B3809E9C();
}

- (id)fetchSuggestionsForPersonLocalIdentifier:(id)identifier
{
  v4 = sub_1B3C9C5E8();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1B380ABD4(v4, v6);

  return v8;
}

- (id)keyAssetFetchOptions
{
  selfCopy = self;
  v3 = sub_1B380ACF0();

  return v3;
}

- (void)setupPreviewAssets
{
  selfCopy = self;
  sub_1B380AE20();
}

+ (id)suggestionPredicateForSmartAlbumTypes:(unint64_t)types
{
  sub_1B380BF18();

  return v3;
}

@end