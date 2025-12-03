@interface PXPhotosPlaceholderSearchBarTrailingNavigationBarButtonItem
- (PXPhotosPlaceholderSearchBarTrailingNavigationBarButtonItem)initWithAction:(id)action;
- (PXPhotosPlaceholderSearchBarTrailingNavigationBarButtonItem)initWithContainer:(id)container action:(id)action;
@end

@implementation PXPhotosPlaceholderSearchBarTrailingNavigationBarButtonItem

- (PXPhotosPlaceholderSearchBarTrailingNavigationBarButtonItem)initWithAction:(id)action
{
  v3 = _Block_copy(action);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  swift_getObjectType();
  v12 = 0;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v5 = PhotosSearchBarLocalizedPlaceholder(_:)(v10);
  v7 = v6;
  sub_1A3C30A8C(v10, &qword_1EB129AC0, sub_1A3C295A0);
  v8 = PhotosPlaceholderSearchBarButtonItem.__allocating_init(placement:placeholder:action:)(&v12, v5, v7, sub_1A3F3D540, v4);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

- (PXPhotosPlaceholderSearchBarTrailingNavigationBarButtonItem)initWithContainer:(id)container action:(id)action
{
  v5 = _Block_copy(action);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  containerCopy = container;
  return PhotosPlaceholderSearchBarTrailingNavigationBarButtonItem.init(container:action:)(container, sub_1A3F3D4CC, v6);
}

@end