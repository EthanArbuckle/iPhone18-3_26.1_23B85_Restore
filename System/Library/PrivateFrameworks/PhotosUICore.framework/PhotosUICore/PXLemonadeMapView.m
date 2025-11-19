@interface PXLemonadeMapView
+ (id)makeViewWithPhotoLibrary:(id)a3 collection:(id)a4 libraryFilterViewMode:(int64_t)a5 initialCenterCoordinate:(CLLocationCoordinate2D)a6 wantsDismissButton:(BOOL)a7 wantsNearbyAssetsAffordance:(BOOL)a8 enableGridView:(BOOL)a9;
- (_TtC12PhotosUICore17PXLemonadeMapView)init;
@end

@implementation PXLemonadeMapView

+ (id)makeViewWithPhotoLibrary:(id)a3 collection:(id)a4 libraryFilterViewMode:(int64_t)a5 initialCenterCoordinate:(CLLocationCoordinate2D)a6 wantsDismissButton:(BOOL)a7 wantsNearbyAssetsAffordance:(BOOL)a8 enableGridView:(BOOL)a9
{
  v9 = a9;
  v11 = a7;
  longitude = a6.longitude;
  latitude = a6.latitude;
  v16 = a3;
  v17 = a4;
  v18 = _s12PhotosUICore17PXLemonadeMapViewC04makeE012photoLibrary10collection013libraryFilterE4Mode23initialCenterCoordinate18wantsDismissButton0P22NearbyAssetsAffordance010enableGridE0So16UIViewControllerCSo07PHPhotoH0C_So17PHAssetCollectionCSgSo09PXLibrarykeL0VSo22CLLocationCoordinate2DVS3btFZ_0(v16, a4, a5, v11, a8, v9, latitude, longitude);

  return v18;
}

- (_TtC12PhotosUICore17PXLemonadeMapView)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PXLemonadeMapView();
  return [(PXLemonadeMapView *)&v3 init];
}

@end