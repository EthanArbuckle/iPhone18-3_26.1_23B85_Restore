@interface PXNavigationListAssetCollectionItem
- (BOOL)isDeletable;
- (BOOL)isDraggable;
- (BOOL)isRenamable;
- (BOOL)wantsKeyAssetImage;
- (PXNavigationListAssetCollectionItem)initWithAssetCollection:(id)a3 accessoryTitle:(id)a4 reorderable:(BOOL)a5 topLevelIdentifier:(id)a6;
- (id)accessibilityIdentifier;
- (id)accessoryGlyphImageName;
- (id)accessoryTitle;
- (id)copyWithZone:(_NSZone *)a3;
- (id)glyphImageName;
@end

@implementation PXNavigationListAssetCollectionItem

- (id)accessibilityIdentifier
{
  v4 = [(PXNavigationListAssetCollectionItem *)self collection];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    v15 = [v4 px_descriptionForAssertionMessage];
    [v11 handleFailureInMethod:a2 object:self file:@"PXNavigationListItem.m" lineNumber:460 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.collection", v13, v15}];
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v11 handleFailureInMethod:a2 object:self file:@"PXNavigationListItem.m" lineNumber:460 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.collection", v13}];
  }

LABEL_3:
  if (accessibilityIdentifier_onceToken_489 != -1)
  {
    dispatch_once(&accessibilityIdentifier_onceToken_489, &__block_literal_global_492);
  }

  if ([v4 isTransient])
  {
    v5 = [(PXNavigationListItem *)self identifier];
    v6 = [accessibilityIdentifier_mapping_490 objectForKeyedSubscript:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }

    v9 = v8;
  }

  else if ([v4 assetCollectionType] == 2)
  {
    v9 = [MEMORY[0x1E6978650] descriptionForSubtype:{objc_msgSend(v4, "assetCollectionSubtype")}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __62__PXNavigationListAssetCollectionItem_accessibilityIdentifier__block_invoke()
{
  v3[8] = *MEMORY[0x1E69E9840];
  v2[0] = @"PXMomentsVirtualCollection";
  v2[1] = @"PXEventsVirtualCollection";
  v3[0] = @"days";
  v3[1] = @"events";
  v2[2] = @"PXPeopleVirtualCollection";
  v2[3] = @"PXMemoriesVirtualCollection";
  v3[2] = @"people";
  v3[3] = @"memories";
  v2[4] = @"PXTripsVirtualCollection";
  v2[5] = @"PXFeaturedPhotosVirtualCollection";
  v3[4] = @"trips";
  v3[5] = @"featured-photos";
  v2[6] = @"PXWallpaperSuggestionsVirtualCollection";
  v2[7] = @"PXCollectionsVirtualCollection";
  v3[6] = @"wallpaper-suggestions";
  v3[7] = @"collections";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:8];
  v1 = accessibilityIdentifier_mapping_490;
  accessibilityIdentifier_mapping_490 = v0;
}

- (id)accessoryGlyphImageName
{
  v7.receiver = self;
  v7.super_class = PXNavigationListAssetCollectionItem;
  v3 = [(PXNavigationListItem *)&v7 accessoryGlyphImageName];
  v4 = [(PXNavigationListAssetCollectionItem *)self lockState];
  if (v4 == 1)
  {
    v5 = @"lock.fill";
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_6;
    }

    v5 = @"lock.open.fill";
  }

  v3 = v5;
LABEL_6:

  return v3;
}

- (id)accessoryTitle
{
  v3 = [(PXNavigationListAssetCollectionItem *)self collection];
  v4 = [v3 px_containsPrivateContent];

  if (v4)
  {
    v5 = @" ";
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PXNavigationListAssetCollectionItem;
    v5 = [(PXNavigationListItem *)&v7 accessoryTitle];
  }

  return v5;
}

- (id)glyphImageName
{
  v2 = [(PXNavigationListAssetCollectionItem *)self collection];
  v3 = [v2 px_symbolImageName];

  return v3;
}

- (BOOL)wantsKeyAssetImage
{
  v2 = [(PXNavigationListAssetCollectionItem *)self collection];
  if ([v2 px_isRegularAlbum] & 1) != 0 || (objc_msgSend(v2, "px_isSharedAlbum") & 1) != 0 || (objc_msgSend(v2, "px_isMacSyncedRegularAlbum") & 1) != 0 || (objc_msgSend(v2, "px_isMacSyncedFacesAlbum"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 px_isMomentShare];
  }

  return v3;
}

- (BOOL)isDeletable
{
  v2 = [(PXNavigationListAssetCollectionItem *)self collection];
  v3 = [v2 px_isDeletable];

  return v3;
}

- (BOOL)isRenamable
{
  v2 = [(PXNavigationListAssetCollectionItem *)self collection];
  v3 = [v2 px_isRenamable];

  return v3;
}

- (BOOL)isDraggable
{
  v3 = [(PXNavigationListAssetCollectionItem *)self collection];
  v4 = ([v3 px_isPlacesSmartAlbum] & 1) == 0 && (objc_msgSend(v3, "px_isMyPhotoStreamAlbum") & 1) == 0 && ((objc_msgSend(v3, "px_isLemonadeUtilitiesAlbum") & 1) != 0 || (objc_msgSend(v3, "isTransient") & 1) == 0) && -[PXNavigationListAssetCollectionItem lockState](self, "lockState") != 1;

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v13.receiver = self;
  v13.super_class = PXNavigationListAssetCollectionItem;
  v5 = [(PXNavigationListItem *)&v13 copyWithZone:?];
  v6 = [(PXNavigationListAssetCollectionItem *)self collection];
  v7 = [v6 copyWithZone:a3];
  v8 = v5[6];
  v5[6] = v7;

  v9 = [(PXNavigationListAssetCollectionItem *)self collectionIdentifier];
  v10 = [v9 copyWithZone:a3];
  v11 = v5[7];
  v5[7] = v10;

  return v5;
}

- (PXNavigationListAssetCollectionItem)initWithAssetCollection:(id)a3 accessoryTitle:(id)a4 reorderable:(BOOL)a5 topLevelIdentifier:(id)a6
{
  v7 = a5;
  v11 = a3;
  v12 = a6;
  v13 = a4;
  v14 = PXNavigationListItemCollectionIdentifier(v11);
  v15 = PXNavigationListItemIdentifier(v12, v14);
  v16 = [v11 localizedSmartDescription];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = [v11 localizedTitle];
  }

  v19 = v18;

  v22.receiver = self;
  v22.super_class = PXNavigationListAssetCollectionItem;
  v20 = [(PXNavigationListItem *)&v22 initWithIdentifier:v15 title:v19 accessoryTitle:v13 reorderable:v7 topLevelIdentifier:v12];

  if (v20)
  {
    objc_storeStrong(&v20->_collection, a3);
    objc_storeStrong(&v20->_collectionIdentifier, v14);
  }

  return v20;
}

@end