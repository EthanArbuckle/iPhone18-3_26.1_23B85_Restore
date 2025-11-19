@interface PXNavigationListGroupItem
+ (id)titleForIdentifier:(id)a3;
- (BOOL)canRearrangeContent;
- (PXNavigationListGroupItem)initWithCollectionList:(id)a3;
- (PXNavigationListGroupItem)initWithIdentifier:(id)a3 defaultsToExpanded:(BOOL)a4;
- (PXNavigationListGroupItem)initWithIdentifier:(id)a3 displayInline:(BOOL)a4;
- (id)accessibilityIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PXNavigationListGroupItem

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = PXNavigationListGroupItem;
  v4 = [(PXNavigationListItem *)&v8 copyWithZone:a3];
  v4[48] = [(PXNavigationListGroupItem *)self isGroup];
  v4[49] = [(PXNavigationListGroupItem *)self isDraggable];
  v4[50] = [(PXNavigationListGroupItem *)self isExpandable];
  v5 = [(PXNavigationListGroupItem *)self collection];
  v6 = *(v4 + 7);
  *(v4 + 7) = v5;

  v4[51] = [(PXNavigationListGroupItem *)self displayInline];
  return v4;
}

- (BOOL)canRearrangeContent
{
  v2 = [(PXNavigationListGroupItem *)self collection];
  v3 = [v2 px_canRearrangeContent];

  return v3;
}

- (id)accessibilityIdentifier
{
  if (accessibilityIdentifier_onceToken != -1)
  {
    dispatch_once(&accessibilityIdentifier_onceToken, &__block_literal_global_451);
  }

  v3 = [(PXNavigationListItem *)self identifier];
  v4 = [accessibilityIdentifier_mapping objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v6;
}

void __52__PXNavigationListGroupItem_accessibilityIdentifier__block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v2[0] = @"PXBookmarksVirtualCollection";
  v2[1] = @"PXTransientCollectionIdentifierUtilities";
  v3[0] = @"listItem.bookmarks";
  v3[1] = @"listItem.utilities";
  v2[2] = @"PXMediaTypesVirtualCollection";
  v2[3] = @"PXSharedAlbumsVirtualCollection";
  v3[2] = @"listItem.media-types";
  v3[3] = @"listItem.shared-albums";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = accessibilityIdentifier_mapping;
  accessibilityIdentifier_mapping = v0;
}

- (PXNavigationListGroupItem)initWithCollectionList:(id)a3
{
  v5 = a3;
  v6 = [v5 transientIdentifier];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v5 localIdentifier];
  }

  v9 = v8;

  v10 = [v5 px_localizedTitle];
  v16.receiver = self;
  v16.super_class = PXNavigationListGroupItem;
  v11 = [(PXNavigationListItem *)&v16 initWithIdentifier:v9 title:v10 accessoryTitle:0 reorderable:1 topLevelIdentifier:0];
  v12 = v11;
  if (v11)
  {
    v11->_expandable = 1;
    v11->_group = 1;
    objc_storeStrong(&v11->_collection, a3);
    v13 = PXNavigationListItemCollectionIdentifier(v5);
    collectionIdentifier = v12->_collectionIdentifier;
    v12->_collectionIdentifier = v13;

    v12->_defaultsToExpanded = [v5 px_isBookmarksFolder];
  }

  return v12;
}

- (PXNavigationListGroupItem)initWithIdentifier:(id)a3 defaultsToExpanded:(BOOL)a4
{
  v6 = a3;
  v7 = [objc_opt_class() titleForIdentifier:v6];
  v10.receiver = self;
  v10.super_class = PXNavigationListGroupItem;
  v8 = [(PXNavigationListItem *)&v10 initWithIdentifier:v6 title:v7 accessoryTitle:0 reorderable:1 topLevelIdentifier:0];

  if (v8)
  {
    v8->_expandable = 1;
    v8->_group = 1;
    v8->_defaultsToExpanded = a4;
  }

  return v8;
}

- (PXNavigationListGroupItem)initWithIdentifier:(id)a3 displayInline:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [objc_opt_class() titleForIdentifier:v6];
  v10.receiver = self;
  v10.super_class = PXNavigationListGroupItem;
  v8 = [(PXNavigationListItem *)&v10 initWithIdentifier:v6 title:v7 accessoryTitle:0 reorderable:!v4 topLevelIdentifier:0];

  if (v8)
  {
    v8->_expandable = 1;
    v8->_group = 1;
    v8->_displayInline = v4;
  }

  return v8;
}

+ (id)titleForIdentifier:(id)a3
{
  v3 = titleForIdentifier__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&titleForIdentifier__onceToken, &__block_literal_global_84617);
  }

  v5 = [titleForIdentifier__titles objectForKeyedSubscript:v4];

  return v5;
}

void __48__PXNavigationListGroupItem_titleForIdentifier___block_invoke()
{
  v13[10] = *MEMORY[0x1E69E9840];
  v12[0] = @"PXNavigationListGroupItemTypePhotos";
  v0 = PXLocalizedStringFromTable(@"PXPhotosOutlineTitle", @"PhotosUICore");
  v13[0] = v0;
  v12[1] = @"PXNavigationListGroupItemTypeSharing";
  v1 = PXLocalizedStringFromTable(@"PXSharingOutlineTitle", @"PhotosUICore");
  v13[1] = v1;
  v12[2] = @"PXNavigationListGroupItemTypeCollections";
  v2 = PXLocalizedStringFromTable(@"PXCollectionsOutlineTitle", @"PhotosUICore");
  v13[2] = v2;
  v12[3] = @"PXNavigationListGroupItemTypeDevices";
  v3 = PXLocalizedStringFromTable(@"PXDevicesOutlineTitle", @"PhotosUICore");
  v13[3] = v3;
  v12[4] = @"PXAllSharedAlbumsVirtualCollection";
  v4 = PXLocalizedStringFromTable(@"PXSharedAlbumsOutlineTitle", @"PhotosUICore");
  v13[4] = v4;
  v12[5] = @"PXBookmarksVirtualCollection";
  v5 = PXLocalizedStringFromTable(@"LemonadeBookmarksSectionHeaderTitle", @"LemonadeLocalizable");
  v13[5] = v5;
  v12[6] = @"PXBookmarksVirtualCollectionList";
  v6 = PXLocalizedStringFromTable(@"PXCollectionBookmarksTitle", @"PhotosUICore");
  v13[6] = v6;
  v12[7] = @"PXMediaTypesVirtualCollection";
  v7 = PXLocalizedStringFromTable(@"PXMediaTypesOutlineTitle", @"PhotosUICore");
  v13[7] = v7;
  v12[8] = @"PXTransientCollectionIdentifierUtilities";
  v8 = PXLocalizedStringFromTable(@"PXOtherAlbumsOutlineTitle", @"PhotosUICore");
  v13[8] = v8;
  v12[9] = @"PXMacSyncedAlbumsVirtualCollection";
  v9 = PXLocalizedStringFromTable(@"PXSyncedFromMacOutlineTitle", @"PhotosUICore");
  v13[9] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:10];
  v11 = titleForIdentifier__titles;
  titleForIdentifier__titles = v10;
}

@end