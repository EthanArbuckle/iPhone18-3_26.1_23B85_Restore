@interface PXPhotosPlaceholderSearchBarButtonItem
- (PXPhotosPlaceholderSearchBarButtonItem)initWithAction:(id)action;
@end

@implementation PXPhotosPlaceholderSearchBarButtonItem

- (PXPhotosPlaceholderSearchBarButtonItem)initWithAction:(id)action
{
  v3 = _Block_copy(action);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return PhotosPlaceholderSearchBarButtonItem.init(action:)(sub_1A3F3D540, v4);
}

@end