@interface PXPhotosPlaceholderSearchBarButtonItem
- (PXPhotosPlaceholderSearchBarButtonItem)initWithAction:(id)a3;
@end

@implementation PXPhotosPlaceholderSearchBarButtonItem

- (PXPhotosPlaceholderSearchBarButtonItem)initWithAction:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return PhotosPlaceholderSearchBarButtonItem.init(action:)(sub_1A3F3D540, v4);
}

@end