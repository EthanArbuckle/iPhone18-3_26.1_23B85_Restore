@interface PUPickerSearchBar
- (CGSize)intrinsicContentSize;
- (PUPickerSearchBar)initWithPhotoLibrary:(id)a3 searchHandler:(id)a4 searchContextualVideoThumbnailHandler:(id)a5 scopeHandler:(id)a6;
- (void)updateContainerFromPickerConfiguration:(id)a3;
- (void)updateContainerFromSuggestion:(id)a3;
- (void)updateIsEditing:(BOOL)a3;
- (void)updateSearchText:(id)a3;
@end

@implementation PUPickerSearchBar

- (PUPickerSearchBar)initWithPhotoLibrary:(id)a3 searchHandler:(id)a4 searchContextualVideoThumbnailHandler:(id)a5 scopeHandler:(id)a6
{
  v9 = _Block_copy(a4);
  v10 = _Block_copy(a5);
  v11 = _Block_copy(a6);
  *(swift_allocObject() + 16) = v9;
  *(swift_allocObject() + 16) = v10;
  *(swift_allocObject() + 16) = v11;
  return sub_1B3810438(a3);
}

- (void)updateSearchText:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B3810D2C();
}

- (void)updateContainerFromSuggestion:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B3810DC4(v4);
}

- (void)updateContainerFromPickerConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B3810E9C(v4);
}

- (void)updateIsEditing:(BOOL)a3
{
  v3 = self;
  sub_1B3810FA8();
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
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