@interface PXSidebarDataManagerFactory
+ (id)makeBookmarksDataSectionManagerWithLibrary:(id)a3 topLevelIdentifier:(id)a4;
+ (id)makeMacSyncedDataSectionManagerWithLibrary:(id)a3 topLevelIdentifier:(id)a4;
+ (id)makeMediaTypesDataSectionManagerWithLibrary:(id)a3 topLevelIdentifier:(id)a4;
+ (id)makeUtilitiesDataSectionManagerWithLibrary:(id)a3 topLevelIdentifier:(id)a4 forPicker:(BOOL)a5 excludeHiddenAlbum:(BOOL)a6;
- (PXSidebarDataManagerFactory)init;
@end

@implementation PXSidebarDataManagerFactory

+ (id)makeBookmarksDataSectionManagerWithLibrary:(id)a3 topLevelIdentifier:(id)a4
{
  if (a4)
  {
    v5 = sub_1A524C674();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v9 = PHPhotoLibrary.lemonadeBookmarksManager.getter();
  type metadata accessor for LemonadeBookmarksDataSectionManager();
  sub_1A46D5FC4(v9, v5, v7);
}

+ (id)makeUtilitiesDataSectionManagerWithLibrary:(id)a3 topLevelIdentifier:(id)a4 forPicker:(BOOL)a5 excludeHiddenAlbum:(BOOL)a6
{
  if (a4)
  {
    v9 = sub_1A524C674();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  sub_1A44DDDC8(a3, v9, v11, a5, a6);
}

+ (id)makeMediaTypesDataSectionManagerWithLibrary:(id)a3 topLevelIdentifier:(id)a4
{
  if (a4)
  {
    sub_1A524C674();
  }

  type metadata accessor for LemonadePhotoLibraryContext();
  v5 = a3;
  v6 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v5, 0, 0);
  type metadata accessor for LemonadeMediaTypesItemListManager();
  v7 = v5;

  v8 = sub_1A3C5A374();
  v9 = sub_1A3C5A374();
  sub_1A3C5A374();
  sub_1A4A19AF0(v7, v6, v8 & 1, v9 & 1);
}

+ (id)makeMacSyncedDataSectionManagerWithLibrary:(id)a3 topLevelIdentifier:(id)a4
{
  if (a4)
  {
    sub_1A524C674();
  }

  type metadata accessor for LemonadePhotoLibraryContext();
  v5 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(a3, 0, 0);
  v6 = sub_1A3C5A374();
  v7 = sub_1A43D7BB4(v5, 0, v6 & 1, 0, 1);
  sub_1A44DE1D8();
  v9 = objc_allocWithZone(v8);
  sub_1A44DB9A8(v7);
}

- (PXSidebarDataManagerFactory)init
{
  v3.receiver = self;
  v3.super_class = PXSidebarDataManagerFactory;
  return [(PXSidebarDataManagerFactory *)&v3 init];
}

@end