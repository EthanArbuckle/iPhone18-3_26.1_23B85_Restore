@interface PXNavigationListAssetCollectionItem
- (BOOL)isDeletable;
- (BOOL)isDraggable;
- (BOOL)isRenamable;
- (BOOL)wantsKeyAssetImage;
- (PXNavigationListAssetCollectionItem)initWithAssetCollection:(id)collection accessoryTitle:(id)title reorderable:(BOOL)reorderable topLevelIdentifier:(id)identifier;
- (id)accessibilityIdentifier;
- (id)accessoryGlyphImageName;
- (id)accessoryTitle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)glyphImageName;
@end

@implementation PXNavigationListAssetCollectionItem

- (id)accessibilityIdentifier
{
  collection = [(PXNavigationListAssetCollectionItem *)self collection];
  if (collection)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    px_descriptionForAssertionMessage = [collection px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXNavigationListItem.m" lineNumber:460 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.collection", v13, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXNavigationListItem.m" lineNumber:460 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.collection", v13}];
  }

LABEL_3:
  if (accessibilityIdentifier_onceToken_489 != -1)
  {
    dispatch_once(&accessibilityIdentifier_onceToken_489, &__block_literal_global_492);
  }

  if ([collection isTransient])
  {
    identifier = [(PXNavigationListItem *)self identifier];
    v6 = [accessibilityIdentifier_mapping_490 objectForKeyedSubscript:identifier];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = identifier;
    }

    v9 = v8;
  }

  else if ([collection assetCollectionType] == 2)
  {
    v9 = [MEMORY[0x1E6978650] descriptionForSubtype:{objc_msgSend(collection, "assetCollectionSubtype")}];
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
  accessoryGlyphImageName = [(PXNavigationListItem *)&v7 accessoryGlyphImageName];
  lockState = [(PXNavigationListAssetCollectionItem *)self lockState];
  if (lockState == 1)
  {
    v5 = @"lock.fill";
  }

  else
  {
    if (lockState != 2)
    {
      goto LABEL_6;
    }

    v5 = @"lock.open.fill";
  }

  accessoryGlyphImageName = v5;
LABEL_6:

  return accessoryGlyphImageName;
}

- (id)accessoryTitle
{
  collection = [(PXNavigationListAssetCollectionItem *)self collection];
  px_containsPrivateContent = [collection px_containsPrivateContent];

  if (px_containsPrivateContent)
  {
    accessoryTitle = @" ";
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PXNavigationListAssetCollectionItem;
    accessoryTitle = [(PXNavigationListItem *)&v7 accessoryTitle];
  }

  return accessoryTitle;
}

- (id)glyphImageName
{
  collection = [(PXNavigationListAssetCollectionItem *)self collection];
  px_symbolImageName = [collection px_symbolImageName];

  return px_symbolImageName;
}

- (BOOL)wantsKeyAssetImage
{
  collection = [(PXNavigationListAssetCollectionItem *)self collection];
  if ([collection px_isRegularAlbum] & 1) != 0 || (objc_msgSend(collection, "px_isSharedAlbum") & 1) != 0 || (objc_msgSend(collection, "px_isMacSyncedRegularAlbum") & 1) != 0 || (objc_msgSend(collection, "px_isMacSyncedFacesAlbum"))
  {
    px_isMomentShare = 1;
  }

  else
  {
    px_isMomentShare = [collection px_isMomentShare];
  }

  return px_isMomentShare;
}

- (BOOL)isDeletable
{
  collection = [(PXNavigationListAssetCollectionItem *)self collection];
  px_isDeletable = [collection px_isDeletable];

  return px_isDeletable;
}

- (BOOL)isRenamable
{
  collection = [(PXNavigationListAssetCollectionItem *)self collection];
  px_isRenamable = [collection px_isRenamable];

  return px_isRenamable;
}

- (BOOL)isDraggable
{
  collection = [(PXNavigationListAssetCollectionItem *)self collection];
  v4 = ([collection px_isPlacesSmartAlbum] & 1) == 0 && (objc_msgSend(collection, "px_isMyPhotoStreamAlbum") & 1) == 0 && ((objc_msgSend(collection, "px_isLemonadeUtilitiesAlbum") & 1) != 0 || (objc_msgSend(collection, "isTransient") & 1) == 0) && -[PXNavigationListAssetCollectionItem lockState](self, "lockState") != 1;

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13.receiver = self;
  v13.super_class = PXNavigationListAssetCollectionItem;
  v5 = [(PXNavigationListItem *)&v13 copyWithZone:?];
  collection = [(PXNavigationListAssetCollectionItem *)self collection];
  v7 = [collection copyWithZone:zone];
  v8 = v5[6];
  v5[6] = v7;

  collectionIdentifier = [(PXNavigationListAssetCollectionItem *)self collectionIdentifier];
  v10 = [collectionIdentifier copyWithZone:zone];
  v11 = v5[7];
  v5[7] = v10;

  return v5;
}

- (PXNavigationListAssetCollectionItem)initWithAssetCollection:(id)collection accessoryTitle:(id)title reorderable:(BOOL)reorderable topLevelIdentifier:(id)identifier
{
  reorderableCopy = reorderable;
  collectionCopy = collection;
  identifierCopy = identifier;
  titleCopy = title;
  v14 = PXNavigationListItemCollectionIdentifier(collectionCopy);
  v15 = PXNavigationListItemIdentifier(identifierCopy, v14);
  localizedSmartDescription = [collectionCopy localizedSmartDescription];
  v17 = localizedSmartDescription;
  if (localizedSmartDescription)
  {
    localizedTitle = localizedSmartDescription;
  }

  else
  {
    localizedTitle = [collectionCopy localizedTitle];
  }

  v19 = localizedTitle;

  v22.receiver = self;
  v22.super_class = PXNavigationListAssetCollectionItem;
  v20 = [(PXNavigationListItem *)&v22 initWithIdentifier:v15 title:v19 accessoryTitle:titleCopy reorderable:reorderableCopy topLevelIdentifier:identifierCopy];

  if (v20)
  {
    objc_storeStrong(&v20->_collection, collection);
    objc_storeStrong(&v20->_collectionIdentifier, v14);
  }

  return v20;
}

@end