@interface PUPickerSearchCoordinator
- (BOOL)isCompact;
- (BOOL)isEditing;
- (NSAttributedString)searchText;
- (PUPickerSearchCoordinator)initWithPhotoLibrary:(id)a3 configuration:(id)a4 isCompact:(BOOL)a5 searchHandler:(id)a6 contextualVideoThumbnailsHandler:(id)a7 scopeHandler:(id)a8 editingHandler:(id)a9;
- (UIBarButtonItem)compactSearchBarButtonItem;
- (UIViewController)suggestionViewContainerController;
- (void)setContainerFromPickerConfiguration:(id)a3;
- (void)setContainerFromSuggestion:(id)a3;
- (void)setIsCompact:(BOOL)a3;
- (void)setIsEditing:(BOOL)a3;
- (void)setIsVisible:(BOOL)a3;
- (void)setSearchText:(id)a3;
- (void)setSuggestionViewContainerController:(id)a3;
@end

@implementation PUPickerSearchCoordinator

- (PUPickerSearchCoordinator)initWithPhotoLibrary:(id)a3 configuration:(id)a4 isCompact:(BOOL)a5 searchHandler:(id)a6 contextualVideoThumbnailsHandler:(id)a7 scopeHandler:(id)a8 editingHandler:(id)a9
{
  v14 = _Block_copy(a6);
  v15 = _Block_copy(a7);
  v16 = _Block_copy(a8);
  v17 = _Block_copy(a9);
  *(swift_allocObject() + 16) = v14;
  *(swift_allocObject() + 16) = v15;
  *(swift_allocObject() + 16) = v16;
  *(swift_allocObject() + 16) = v17;
  return sub_1B380E600(a3, a4, a5);
}

- (UIBarButtonItem)compactSearchBarButtonItem
{
  v2 = self;
  v3 = sub_1B380ED54();

  return v3;
}

- (UIViewController)suggestionViewContainerController
{
  v2 = self;
  v3 = sub_1B380EF48();

  return v3;
}

- (void)setSuggestionViewContainerController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B380EFD0();
}

- (void)setIsVisible:(BOOL)a3
{
  v4 = self;
  sub_1B380F088(a3);
}

- (BOOL)isCompact
{
  v2 = self;
  v3 = sub_1B380F0CC();

  return v3;
}

- (void)setIsCompact:(BOOL)a3
{
  v4 = self;
  sub_1B380F244(a3);
}

- (BOOL)isEditing
{
  v2 = self;
  v3 = sub_1B380F374();

  return v3 & 1;
}

- (void)setIsEditing:(BOOL)a3
{
  v3 = self;
  sub_1B380F3F8();
}

- (NSAttributedString)searchText
{
  v2 = self;
  v3 = sub_1B380F468();

  return v3;
}

- (void)setSearchText:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B380F4F0();
}

- (void)setContainerFromSuggestion:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B380F51C(v4);
}

- (void)setContainerFromPickerConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B380F5DC(v4);
}

@end