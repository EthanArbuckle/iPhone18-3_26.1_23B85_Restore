@interface PUPickerSuggestionResultFetcher
- (PUPickerSuggestion)currentSuggestion;
- (PUPickerSuggestionResultFetcher)initWithPhotoLibrary:(id)a3 isProcessing:(BOOL)a4 isDeviceAspectRatioContentMode:(BOOL)a5 contentHasSpecialFilter:(BOOL)a6 updateHandler:(id)a7;
- (void)photoLibraryDidChange:(id)a3;
- (void)setCurrentSuggestion:(id)a3;
@end

@implementation PUPickerSuggestionResultFetcher

- (PUPickerSuggestion)currentSuggestion
{
  v2 = self;
  v3 = sub_1B37D4524();

  return v3;
}

- (void)setCurrentSuggestion:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1B37D46E0(a3);
}

- (PUPickerSuggestionResultFetcher)initWithPhotoLibrary:(id)a3 isProcessing:(BOOL)a4 isDeviceAspectRatioContentMode:(BOOL)a5 contentHasSpecialFilter:(BOOL)a6 updateHandler:(id)a7
{
  v8 = _Block_copy(a7);
  *(swift_allocObject() + 16) = v8;
  v9 = a3;
  return PickerSuggestionResultFetcher.init(photoLibrary:isProcessing:isDeviceAspectRatioContentMode:contentHasSpecialFilter:updateHandler:)();
}

- (void)photoLibraryDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B37D5DD4(v4);
}

@end