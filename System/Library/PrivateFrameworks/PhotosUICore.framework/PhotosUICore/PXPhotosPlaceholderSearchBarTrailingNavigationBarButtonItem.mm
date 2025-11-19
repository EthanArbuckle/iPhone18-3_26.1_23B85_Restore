@interface PXPhotosPlaceholderSearchBarTrailingNavigationBarButtonItem
- (PXPhotosPlaceholderSearchBarTrailingNavigationBarButtonItem)initWithAction:(id)a3;
- (PXPhotosPlaceholderSearchBarTrailingNavigationBarButtonItem)initWithContainer:(id)a3 action:(id)a4;
@end

@implementation PXPhotosPlaceholderSearchBarTrailingNavigationBarButtonItem

- (PXPhotosPlaceholderSearchBarTrailingNavigationBarButtonItem)initWithAction:(id)a3
{
  v3 = _Block_copy(a3);
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

- (PXPhotosPlaceholderSearchBarTrailingNavigationBarButtonItem)initWithContainer:(id)a3 action:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = a3;
  return PhotosPlaceholderSearchBarTrailingNavigationBarButtonItem.init(container:action:)(a3, sub_1A3F3D4CC, v6);
}

@end