@interface PXLemonadeMapView
+ (id)makeViewWithPhotoLibrary:(id)library collection:(id)collection libraryFilterViewMode:(int64_t)mode initialCenterCoordinate:(CLLocationCoordinate2D)coordinate wantsDismissButton:(BOOL)button wantsNearbyAssetsAffordance:(BOOL)affordance enableGridView:(BOOL)view;
- (_TtC12PhotosUICore17PXLemonadeMapView)init;
@end

@implementation PXLemonadeMapView

+ (id)makeViewWithPhotoLibrary:(id)library collection:(id)collection libraryFilterViewMode:(int64_t)mode initialCenterCoordinate:(CLLocationCoordinate2D)coordinate wantsDismissButton:(BOOL)button wantsNearbyAssetsAffordance:(BOOL)affordance enableGridView:(BOOL)view
{
  viewCopy = view;
  buttonCopy = button;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  libraryCopy = library;
  collectionCopy = collection;
  v18 = _s12PhotosUICore17PXLemonadeMapViewC04makeE012photoLibrary10collection013libraryFilterE4Mode23initialCenterCoordinate18wantsDismissButton0P22NearbyAssetsAffordance010enableGridE0So16UIViewControllerCSo07PHPhotoH0C_So17PHAssetCollectionCSgSo09PXLibrarykeL0VSo22CLLocationCoordinate2DVS3btFZ_0(libraryCopy, collection, mode, buttonCopy, affordance, viewCopy, latitude, longitude);

  return v18;
}

- (_TtC12PhotosUICore17PXLemonadeMapView)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PXLemonadeMapView();
  return [(PXLemonadeMapView *)&v3 init];
}

@end