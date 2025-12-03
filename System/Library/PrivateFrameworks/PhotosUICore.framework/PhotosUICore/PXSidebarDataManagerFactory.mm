@interface PXSidebarDataManagerFactory
+ (id)makeBookmarksDataSectionManagerWithLibrary:(id)library topLevelIdentifier:(id)identifier;
+ (id)makeMacSyncedDataSectionManagerWithLibrary:(id)library topLevelIdentifier:(id)identifier;
+ (id)makeMediaTypesDataSectionManagerWithLibrary:(id)library topLevelIdentifier:(id)identifier;
+ (id)makeUtilitiesDataSectionManagerWithLibrary:(id)library topLevelIdentifier:(id)identifier forPicker:(BOOL)picker excludeHiddenAlbum:(BOOL)album;
- (PXSidebarDataManagerFactory)init;
@end

@implementation PXSidebarDataManagerFactory

+ (id)makeBookmarksDataSectionManagerWithLibrary:(id)library topLevelIdentifier:(id)identifier
{
  if (identifier)
  {
    v5 = sub_1A524C674();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  libraryCopy = library;
  v9 = PHPhotoLibrary.lemonadeBookmarksManager.getter();
  type metadata accessor for LemonadeBookmarksDataSectionManager();
  sub_1A46D5FC4(v9, v5, v7);
}

+ (id)makeUtilitiesDataSectionManagerWithLibrary:(id)library topLevelIdentifier:(id)identifier forPicker:(BOOL)picker excludeHiddenAlbum:(BOOL)album
{
  if (identifier)
  {
    v9 = sub_1A524C674();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  sub_1A44DDDC8(library, v9, v11, picker, album);
}

+ (id)makeMediaTypesDataSectionManagerWithLibrary:(id)library topLevelIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_1A524C674();
  }

  type metadata accessor for LemonadePhotoLibraryContext();
  libraryCopy = library;
  v6 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(libraryCopy, 0, 0);
  type metadata accessor for LemonadeMediaTypesItemListManager();
  v7 = libraryCopy;

  v8 = sub_1A3C5A374();
  v9 = sub_1A3C5A374();
  sub_1A3C5A374();
  sub_1A4A19AF0(v7, v6, v8 & 1, v9 & 1);
}

+ (id)makeMacSyncedDataSectionManagerWithLibrary:(id)library topLevelIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_1A524C674();
  }

  type metadata accessor for LemonadePhotoLibraryContext();
  v5 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(library, 0, 0);
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