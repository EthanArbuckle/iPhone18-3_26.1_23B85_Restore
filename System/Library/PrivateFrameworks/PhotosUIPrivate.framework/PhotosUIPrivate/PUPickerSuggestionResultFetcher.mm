@interface PUPickerSuggestionResultFetcher
- (PUPickerSuggestion)currentSuggestion;
- (PUPickerSuggestionResultFetcher)initWithPhotoLibrary:(id)library isProcessing:(BOOL)processing isDeviceAspectRatioContentMode:(BOOL)mode contentHasSpecialFilter:(BOOL)filter updateHandler:(id)handler;
- (void)photoLibraryDidChange:(id)change;
- (void)setCurrentSuggestion:(id)suggestion;
@end

@implementation PUPickerSuggestionResultFetcher

- (PUPickerSuggestion)currentSuggestion
{
  selfCopy = self;
  v3 = sub_1B37D4524();

  return v3;
}

- (void)setCurrentSuggestion:(id)suggestion
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B37D46E0(suggestion);
}

- (PUPickerSuggestionResultFetcher)initWithPhotoLibrary:(id)library isProcessing:(BOOL)processing isDeviceAspectRatioContentMode:(BOOL)mode contentHasSpecialFilter:(BOOL)filter updateHandler:(id)handler
{
  v8 = _Block_copy(handler);
  *(swift_allocObject() + 16) = v8;
  libraryCopy = library;
  return PickerSuggestionResultFetcher.init(photoLibrary:isProcessing:isDeviceAspectRatioContentMode:contentHasSpecialFilter:updateHandler:)();
}

- (void)photoLibraryDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1B37D5DD4(changeCopy);
}

@end