@interface PUPickerSearchBar
- (CGSize)intrinsicContentSize;
- (PUPickerSearchBar)initWithPhotoLibrary:(id)library searchHandler:(id)handler searchContextualVideoThumbnailHandler:(id)thumbnailHandler scopeHandler:(id)scopeHandler;
- (void)updateContainerFromPickerConfiguration:(id)configuration;
- (void)updateContainerFromSuggestion:(id)suggestion;
- (void)updateIsEditing:(BOOL)editing;
- (void)updateSearchText:(id)text;
@end

@implementation PUPickerSearchBar

- (PUPickerSearchBar)initWithPhotoLibrary:(id)library searchHandler:(id)handler searchContextualVideoThumbnailHandler:(id)thumbnailHandler scopeHandler:(id)scopeHandler
{
  v9 = _Block_copy(handler);
  v10 = _Block_copy(thumbnailHandler);
  v11 = _Block_copy(scopeHandler);
  *(swift_allocObject() + 16) = v9;
  *(swift_allocObject() + 16) = v10;
  *(swift_allocObject() + 16) = v11;
  return sub_1B3810438(library);
}

- (void)updateSearchText:(id)text
{
  textCopy = text;
  selfCopy = self;
  sub_1B3810D2C();
}

- (void)updateContainerFromSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  selfCopy = self;
  sub_1B3810DC4(suggestionCopy);
}

- (void)updateContainerFromPickerConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_1B3810E9C(configurationCopy);
}

- (void)updateIsEditing:(BOOL)editing
{
  selfCopy = self;
  sub_1B3810FA8();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_1B3811110();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end