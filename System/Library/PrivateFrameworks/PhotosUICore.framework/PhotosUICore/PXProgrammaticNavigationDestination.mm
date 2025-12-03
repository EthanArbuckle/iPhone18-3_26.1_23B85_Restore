@interface PXProgrammaticNavigationDestination
+ (id)memoryCreationDestinationWithPrompt:(id)prompt;
- (BOOL)isCollectionsHome;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNavigationDestination:(id)destination;
- (BOOL)isEquivalentToNavigationDestination:(id)destination;
- (BOOL)isLibraryHome;
- (BOOL)isTargetingAlbum;
- (BOOL)isTargetingAsset;
- (NSArray)collectionHierarchy;
- (NSString)importSourceUUID;
- (NSString)publicDescription;
- (PXDisplayAsset)asset;
- (PXDisplayAssetCollection)assetCollection;
- (PXDisplayCollection)collection;
- (PXDisplayCollectionList)collectionList;
- (PXDisplayPerson)person;
- (PXDisplaySocialGroup)socialGroup;
- (PXProgrammaticNavigationDestination)initWithDecoratedSearchQuery:(id)query;
- (PXProgrammaticNavigationDestination)initWithImportSource:(id)source revealMode:(int64_t)mode;
- (PXProgrammaticNavigationDestination)initWithObject:(id)object revealMode:(int64_t)mode routingType:(int64_t)type;
- (PXProgrammaticNavigationDestination)initWithSearchTerm:(id)term;
- (PXProgrammaticNavigationDestination)initWithSearchText:(id)text;
- (PXProgrammaticNavigationDestination)initWithType:(int64_t)type revealMode:(int64_t)mode asset:(id)asset assetCollection:(id)collection;
- (PXProgrammaticNavigationDestination)initWithType:(int64_t)type revealMode:(int64_t)mode assetUUID:(id)d assetCollectionUUID:(id)iD;
- (PXProgrammaticNavigationDestination)initWithURL:(id)l;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXProgrammaticNavigationDestination

- (BOOL)isTargetingAsset
{
  if ([(PXProgrammaticNavigationDestination *)self revealMode]!= 1 && [(PXProgrammaticNavigationDestination *)self revealMode]!= 2)
  {
    return 0;
  }

  if ([(PXProgrammaticNavigationDestination *)self type]== 6)
  {
    return 1;
  }

  assetUUID = [(PXProgrammaticNavigationDestination *)self assetUUID];
  if (assetUUID)
  {
    v3 = 1;
  }

  else
  {
    assetLocalIdentifier = [(PXProgrammaticNavigationDestination *)self assetLocalIdentifier];
    if (assetLocalIdentifier)
    {
      v3 = 1;
    }

    else
    {
      assetCloudIdentifier = [(PXProgrammaticNavigationDestination *)self assetCloudIdentifier];
      v3 = assetCloudIdentifier != 0;
    }
  }

  return v3;
}

- (NSString)publicDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = PXProgrammaticNavigationDestinationTypeDescription([(PXProgrammaticNavigationDestination *)self type]);
  revealMode = [(PXProgrammaticNavigationDestination *)self revealMode];
  if (revealMode > 3)
  {
    v8 = @"?";
  }

  else
  {
    v8 = off_1E77387F0[revealMode];
  }

  v9 = [v3 initWithFormat:@"<%@: %p, type=%@ revealMode=%@", v5, self, v6, v8];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PXProgrammaticNavigationDestination_publicDescription__block_invoke;
  aBlock[3] = &unk_1E77386C0;
  v20 = v9;
  v10 = v9;
  v11 = _Block_copy(aBlock);
  assetLocalIdentifier = [(PXProgrammaticNavigationDestination *)self assetLocalIdentifier];
  if (((v11[2])(v11, @"assetLocalIdentifier", assetLocalIdentifier) & 1) == 0)
  {
    assetUUID = [(PXProgrammaticNavigationDestination *)self assetUUID];
    v11[2](v11, @"assetUUID", assetUUID);
  }

  assetCollectionLocalIdentifier = [(PXProgrammaticNavigationDestination *)self assetCollectionLocalIdentifier];
  if (((v11[2])(v11, @"assetCollectionLocalIdentifier", assetCollectionLocalIdentifier) & 1) == 0)
  {
    assetCollectionUUID = [(PXProgrammaticNavigationDestination *)self assetCollectionUUID];
    v11[2](v11, @"assetCollectionUUID", assetCollectionUUID);
  }

  collectionListUUID = [(PXProgrammaticNavigationDestination *)self collectionListUUID];
  v11[2](v11, @"collectionListUUID", collectionListUUID);

  v17 = [v10 copy];

  return v17;
}

BOOL __56__PXProgrammaticNavigationDestination_publicDescription__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    [*(a1 + 32) appendFormat:@" %@=%@", a2, a3];
  }

  return a3 != 0;
}

- (id)description
{
  v22[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = MEMORY[0x1E696AEC0];
  v5 = PXProgrammaticNavigationDestinationTypeDescription([(PXProgrammaticNavigationDestination *)self type]);
  v6 = [v4 stringWithFormat:@"type=%@", v5];
  v22[0] = v6;
  v7 = MEMORY[0x1E696AEC0];
  revealMode = [(PXProgrammaticNavigationDestination *)self revealMode];
  if (revealMode > 3)
  {
    v9 = @"?";
  }

  else
  {
    v9 = off_1E77387F0[revealMode];
  }

  v10 = [v7 stringWithFormat:@"revealMode=%@", v9];
  v22[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v12 = [v3 arrayWithArray:v11];

  if (([(PXProgrammaticNavigationDestination *)self type]& 0xFFFFFFFFFFFFFFFELL) == 0x1E)
  {
    shelfSlug = [(PXProgrammaticNavigationDestination *)self shelfSlug];
    if (shelfSlug)
    {
      v14 = shelfSlug;
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"shelfSlug=%@", shelfSlug];
      [v12 addObject:v15];
    }
  }

  v16 = MEMORY[0x1E696AEC0];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = [v12 componentsJoinedByString:{@", "}];
  v20 = [v16 stringWithFormat:@"<%@: %p, %@>", v18, self, v19];

  return v20;
}

- (unint64_t)hash
{
  type = [(PXProgrammaticNavigationDestination *)self type];
  v4 = type ^ (4 * [(PXProgrammaticNavigationDestination *)self revealMode]);
  assetUUID = [(PXProgrammaticNavigationDestination *)self assetUUID];
  v6 = [assetUUID hash];

  assetLocalIdentifier = [(PXProgrammaticNavigationDestination *)self assetLocalIdentifier];
  v8 = v4 ^ v6 ^ [assetLocalIdentifier hash];

  assetCollectionUUID = [(PXProgrammaticNavigationDestination *)self assetCollectionUUID];
  v10 = [assetCollectionUUID hash];

  assetCollectionLocalIdentifier = [(PXProgrammaticNavigationDestination *)self assetCollectionLocalIdentifier];
  v12 = v10 ^ [assetCollectionLocalIdentifier hash];

  collectionListUUID = [(PXProgrammaticNavigationDestination *)self collectionListUUID];
  v14 = v12 ^ [collectionListUUID hash];

  return v8 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PXProgrammaticNavigationDestination *)self isEqualToNavigationDestination:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToNavigationDestination:(id)destination
{
  destinationCopy = destination;
  if ([(PXProgrammaticNavigationDestination *)self isEquivalentToNavigationDestination:destinationCopy])
  {
    revealMode = [(PXProgrammaticNavigationDestination *)self revealMode];
    v6 = revealMode == [destinationCopy revealMode];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEquivalentToNavigationDestination:(id)destination
{
  destinationCopy = destination;
  v5 = destinationCopy;
  if (!destinationCopy)
  {
    goto LABEL_41;
  }

  if (destinationCopy == self)
  {
    v8 = 1;
    goto LABEL_42;
  }

  type = [(PXProgrammaticNavigationDestination *)self type];
  if (type != [(PXProgrammaticNavigationDestination *)v5 type])
  {
    goto LABEL_41;
  }

  type2 = [(PXProgrammaticNavigationDestination *)self type];
  v8 = 1;
  if (type2 > 13)
  {
    if (type2 > 0x21)
    {
      goto LABEL_28;
    }

    if (((1 << type2) & 0x230080000) != 0)
    {
      goto LABEL_15;
    }

    if (type2 == 18)
    {
      collectionListType = [(PXProgrammaticNavigationDestination *)self collectionListType];
      if (collectionListType == [(PXProgrammaticNavigationDestination *)v5 collectionListType])
      {
        collectionListSubtype = [(PXProgrammaticNavigationDestination *)self collectionListSubtype];
        if (collectionListSubtype == [(PXProgrammaticNavigationDestination *)v5 collectionListSubtype])
        {
          collectionListUUID = [(PXProgrammaticNavigationDestination *)self collectionListUUID];
          collectionListUUID2 = [(PXProgrammaticNavigationDestination *)v5 collectionListUUID];
          goto LABEL_52;
        }
      }

      goto LABEL_41;
    }

    if (type2 == 21)
    {
      collectionListUUID = [(PXProgrammaticNavigationDestination *)self importSource];
      importSource = [(PXProgrammaticNavigationDestination *)v5 importSource];
    }

    else
    {
LABEL_28:
      if (type2 != 17)
      {
        if (type2 != 14)
        {
          goto LABEL_42;
        }

        revealMode = [(PXProgrammaticNavigationDestination *)self revealMode];
        if (revealMode == [(PXProgrammaticNavigationDestination *)v5 revealMode])
        {
          collectionListUUID = [(PXProgrammaticNavigationDestination *)self additionalAttributes];
          collectionListUUID2 = [(PXProgrammaticNavigationDestination *)v5 additionalAttributes];
          goto LABEL_52;
        }

        goto LABEL_41;
      }

      collectionListUUID = [(PXProgrammaticNavigationDestination *)self additionalAttributes];
      importSource = [(PXProgrammaticNavigationDestination *)v5 additionalAttributes];
    }

    v34 = importSource;
    if (collectionListUUID == importSource)
    {
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (type2 <= 8)
  {
    if (type2 == 7)
    {
      assetUUID = [(PXProgrammaticNavigationDestination *)self assetUUID];
      assetUUID2 = [(PXProgrammaticNavigationDestination *)v5 assetUUID];
      v25 = assetUUID2;
      if (assetUUID == assetUUID2)
      {
      }

      else
      {
        v26 = [assetUUID isEqual:assetUUID2];

        if ((v26 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      collectionListUUID = [(PXProgrammaticNavigationDestination *)self assetLocalIdentifier];
      collectionListUUID2 = [(PXProgrammaticNavigationDestination *)v5 assetLocalIdentifier];
      goto LABEL_52;
    }

    if (type2 != 8)
    {
      goto LABEL_42;
    }

    assetCollectionType = [(PXProgrammaticNavigationDestination *)self assetCollectionType];
    if (assetCollectionType != [(PXProgrammaticNavigationDestination *)v5 assetCollectionType]|| (v18 = [(PXProgrammaticNavigationDestination *)self assetCollectionSubtype], v18 != [(PXProgrammaticNavigationDestination *)v5 assetCollectionSubtype]))
    {
LABEL_41:
      v8 = 0;
      goto LABEL_42;
    }

LABEL_15:
    assetCollectionUUID = [(PXProgrammaticNavigationDestination *)self assetCollectionUUID];
    assetCollectionUUID2 = [(PXProgrammaticNavigationDestination *)v5 assetCollectionUUID];
    v15 = assetCollectionUUID2;
    if (assetCollectionUUID == assetCollectionUUID2)
    {
    }

    else
    {
      v16 = [assetCollectionUUID isEqual:assetCollectionUUID2];

      if ((v16 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    collectionListUUID = [(PXProgrammaticNavigationDestination *)self assetCollectionLocalIdentifier];
    collectionListUUID2 = [(PXProgrammaticNavigationDestination *)v5 assetCollectionLocalIdentifier];
    goto LABEL_52;
  }

  switch(type2)
  {
    case 9:
      goto LABEL_15;
    case 11:
      personUUID = [(PXProgrammaticNavigationDestination *)self personUUID];
      personUUID2 = [(PXProgrammaticNavigationDestination *)v5 personUUID];
      v29 = personUUID2;
      if (personUUID == personUUID2)
      {

LABEL_49:
        collectionListUUID = [(PXProgrammaticNavigationDestination *)self personLocalIdentifier];
        collectionListUUID2 = [(PXProgrammaticNavigationDestination *)v5 personLocalIdentifier];
        goto LABEL_52;
      }

      v30 = [personUUID isEqual:personUUID2];

      if (v30)
      {
        goto LABEL_49;
      }

      goto LABEL_41;
    case 12:
      socialGroupUUID = [(PXProgrammaticNavigationDestination *)self socialGroupUUID];
      socialGroupUUID2 = [(PXProgrammaticNavigationDestination *)v5 socialGroupUUID];
      v11 = socialGroupUUID2;
      if (socialGroupUUID == socialGroupUUID2)
      {

LABEL_51:
        collectionListUUID = [(PXProgrammaticNavigationDestination *)self socialGroupLocalIdentifier];
        collectionListUUID2 = [(PXProgrammaticNavigationDestination *)v5 socialGroupLocalIdentifier];
LABEL_52:
        v34 = collectionListUUID2;
        if (collectionListUUID == collectionListUUID2)
        {
          v8 = 1;
          goto LABEL_55;
        }

LABEL_53:
        v8 = [collectionListUUID isEqual:v34];
LABEL_55:

        break;
      }

      v12 = [socialGroupUUID isEqual:socialGroupUUID2];

      if (v12)
      {
        goto LABEL_51;
      }

      goto LABEL_41;
  }

LABEL_42:

  return v8;
}

- (NSString)importSourceUUID
{
  importSource = [(PXProgrammaticNavigationDestination *)self importSource];
  uuid = [importSource uuid];

  return uuid;
}

- (PXDisplaySocialGroup)socialGroup
{
  v13[1] = *MEMORY[0x1E69E9840];
  socialGroup = self->_socialGroup;
  if (!socialGroup)
  {
    socialGroupUUID = [(PXProgrammaticNavigationDestination *)self socialGroupUUID];
    socialGroupLocalIdentifier = [(PXProgrammaticNavigationDestination *)self socialGroupLocalIdentifier];
    if (!socialGroupLocalIdentifier && socialGroupUUID)
    {
      socialGroupLocalIdentifier = [MEMORY[0x1E6978AD8] localIdentifierWithUUID:socialGroupUUID];
    }

    if (socialGroupLocalIdentifier)
    {
      px_standardFetchOptions = [MEMORY[0x1E6978830] px_standardFetchOptions];
      v7 = MEMORY[0x1E6978AD8];
      v13[0] = socialGroupLocalIdentifier;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      v9 = [v7 fetchSocialGroupsWithLocalIdentifiers:v8 options:px_standardFetchOptions];
      firstObject = [v9 firstObject];
      v11 = self->_socialGroup;
      self->_socialGroup = firstObject;
    }

    socialGroup = self->_socialGroup;
  }

  return socialGroup;
}

- (PXDisplayPerson)person
{
  v14[1] = *MEMORY[0x1E69E9840];
  person = self->_person;
  if (!person)
  {
    personUUID = [(PXProgrammaticNavigationDestination *)self personUUID];
    personLocalIdentifier = [(PXProgrammaticNavigationDestination *)self personLocalIdentifier];
    if (!personLocalIdentifier && personUUID)
    {
      personLocalIdentifier = [MEMORY[0x1E6978980] localIdentifierWithUUID:personUUID];
    }

    if (personLocalIdentifier)
    {
      px_standardFetchOptions = [MEMORY[0x1E6978830] px_standardFetchOptions];
      px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
      [px_standardFetchOptions setIncludedDetectionTypes:px_defaultDetectionTypes];

      v8 = MEMORY[0x1E6978980];
      v14[0] = personLocalIdentifier;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      v10 = [v8 fetchPersonsWithLocalIdentifiers:v9 options:px_standardFetchOptions];
      firstObject = [v10 firstObject];
      v12 = self->_person;
      self->_person = firstObject;
    }

    person = self->_person;
  }

  return person;
}

- (NSArray)collectionHierarchy
{
  p_collectionHierarchy = &self->_collectionHierarchy;
  v4 = [(NSArray *)self->_collectionHierarchy copy];
  if (!v4)
  {
    collection = [(PXProgrammaticNavigationDestination *)self collection];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v6 = collection;

      if (!v6)
      {
        v4 = 0;
        goto LABEL_8;
      }

      v7 = [v6 px_fetchAncestryIncludingRoot:1];
      v4 = [v7 copy];
    }

    else
    {
      v6 = 0;
      v4 = 0;
      v7 = collection;
    }

LABEL_8:
    objc_storeStrong(p_collectionHierarchy, v4);
  }

  return v4;
}

- (PXDisplayCollection)collection
{
  collection = self->_collection;
  if (!collection)
  {
    assetCollection = [(PXProgrammaticNavigationDestination *)self assetCollection];
    if (!assetCollection)
    {
      assetCollection = [(PXProgrammaticNavigationDestination *)self collectionList];
    }

    v5 = self->_collection;
    self->_collection = assetCollection;

    collection = self->_collection;
  }

  return collection;
}

- (PXDisplayCollectionList)collectionList
{
  v24[1] = *MEMORY[0x1E69E9840];
  collectionList = self->_collectionList;
  if (!collectionList)
  {
    collectionListUUID = [(PXProgrammaticNavigationDestination *)self collectionListUUID];
    collectionListName = [(PXProgrammaticNavigationDestination *)self collectionListName];
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    if (collectionListUUID)
    {
      v7 = [MEMORY[0x1E6978760] localIdentifierWithUUID:collectionListUUID];
      v8 = MEMORY[0x1E6978760];
      v24[0] = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      librarySpecificFetchOptions = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];
      v11 = [v8 fetchCollectionListsWithLocalIdentifiers:v9 options:librarySpecificFetchOptions];
      firstObject = [v11 firstObject];
      v13 = self->_collectionList;
      self->_collectionList = firstObject;
    }

    else
    {
      if (!collectionListName)
      {
        if ([(PXProgrammaticNavigationDestination *)self collectionListType])
        {
          v17 = MEMORY[0x1E6978760];
          collectionListType = [(PXProgrammaticNavigationDestination *)self collectionListType];
          collectionListSubtype = [(PXProgrammaticNavigationDestination *)self collectionListSubtype];
          librarySpecificFetchOptions2 = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];
          v21 = [v17 fetchCollectionListsWithType:collectionListType subtype:collectionListSubtype options:librarySpecificFetchOptions2];
          firstObject2 = [v21 firstObject];
          v23 = self->_collectionList;
          self->_collectionList = firstObject2;
        }

        goto LABEL_9;
      }

      v14 = [MEMORY[0x1E6978760] px_transientIdentifierForWellKnownFolderName:collectionListName];
      v7 = v14;
      if (v14)
      {
        v14 = [px_deprecated_appPhotoLibrary px_collectionListWithTransientIdentifier:v14];
      }

      v15 = self->_collectionList;
      self->_collectionList = v14;
    }

LABEL_9:
    collectionList = self->_collectionList;
  }

  return collectionList;
}

- (PXDisplayAssetCollection)assetCollection
{
  v25[1] = *MEMORY[0x1E69E9840];
  assetCollection = self->_assetCollection;
  if (!assetCollection)
  {
    assetCollectionUUID = [(PXProgrammaticNavigationDestination *)self assetCollectionUUID];
    v5 = objc_opt_class();
    if ([(PXProgrammaticNavigationDestination *)self assetCollectionType]== 12)
    {
      v5 = objc_opt_class();
    }

    assetCollectionLocalIdentifier = [(PXProgrammaticNavigationDestination *)self assetCollectionLocalIdentifier];
    if (!assetCollectionLocalIdentifier && assetCollectionUUID)
    {
      assetCollectionLocalIdentifier = [v5 localIdentifierWithUUID:assetCollectionUUID];
    }

    assetCollectionTransientIdentifier = [(PXProgrammaticNavigationDestination *)self assetCollectionTransientIdentifier];
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    if (assetCollectionLocalIdentifier || ([(PXProgrammaticNavigationDestination *)self assetCollectionCloudIdentifier], (v15 = objc_claimAutoreleasedReturnValue()) != 0) && (v16 = v15, PXProgrammaticNavigationLocalIdentifierForCloudIdentifier(v15, px_deprecated_appPhotoLibrary), assetCollectionLocalIdentifier = objc_claimAutoreleasedReturnValue(), v16, assetCollectionLocalIdentifier))
    {
      librarySpecificFetchOptions = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];
      [librarySpecificFetchOptions setIncludeScreenRecordingsSmartAlbum:1];
      [librarySpecificFetchOptions setIncludeLocalMemories:1];
      [librarySpecificFetchOptions setIncludeStoryMemories:1];
      [librarySpecificFetchOptions setIncludePendingMemories:1];
      [librarySpecificFetchOptions setIncludeProResSmartAlbum:1];
      [librarySpecificFetchOptions setIncludeSharedLibrarySharingSuggestionsSmartAlbum:1];
      v10 = MEMORY[0x1E6978650];
      v25[0] = assetCollectionLocalIdentifier;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
      v12 = [v10 fetchAssetCollectionsWithLocalIdentifiers:v11 options:librarySpecificFetchOptions];
      firstObject = [v12 firstObject];
      v14 = self->_assetCollection;
      self->_assetCollection = firstObject;
    }

    else
    {
      if (assetCollectionTransientIdentifier)
      {
        v17 = [px_deprecated_appPhotoLibrary px_assetCollectionWithTransientIdentifier:assetCollectionTransientIdentifier];
LABEL_19:
        v18 = self->_assetCollection;
        self->_assetCollection = v17;

        goto LABEL_20;
      }

      if ([(PXProgrammaticNavigationDestination *)self utilityCollectionType])
      {
        v17 = [px_deprecated_appPhotoLibrary px_utilityCollectionWithType:{-[PXProgrammaticNavigationDestination utilityCollectionType](self, "utilityCollectionType")}];
        goto LABEL_19;
      }

      if ([(PXProgrammaticNavigationDestination *)self assetCollectionType]== 2)
      {
        v17 = [MEMORY[0x1E6978650] px_smartAlbumWithSubtype:{-[PXProgrammaticNavigationDestination assetCollectionSubtype](self, "assetCollectionSubtype")}];
        goto LABEL_19;
      }

      if ([(PXProgrammaticNavigationDestination *)self assetCollectionType])
      {
        assetCollectionLocalIdentifier = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];
        if ([(PXProgrammaticNavigationDestination *)self assetCollectionType]== 1 && self->_userAlbumName)
        {
          [assetCollectionLocalIdentifier setIncludeAllPhotosSmartAlbum:0];
          v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"title == %@", self->_userAlbumName];
          [assetCollectionLocalIdentifier setPredicate:v20];
        }

        v21 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:-[PXProgrammaticNavigationDestination assetCollectionType](self subtype:"assetCollectionType") options:{-[PXProgrammaticNavigationDestination assetCollectionSubtype](self, "assetCollectionSubtype"), assetCollectionLocalIdentifier}];
      }

      else
      {
        asset = [(PXProgrammaticNavigationDestination *)self asset];
        if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
        {
          assetCollectionLocalIdentifier = asset;
        }

        else
        {
          assetCollectionLocalIdentifier = 0;
        }

        if ([assetCollectionLocalIdentifier sourceType] != 2 && objc_msgSend(assetCollectionLocalIdentifier, "sourceType") != 256)
        {
          goto LABEL_10;
        }

        v21 = [MEMORY[0x1E6978770] fetchAssetCollectionsContainingAsset:assetCollectionLocalIdentifier withType:12 options:0];
      }

      librarySpecificFetchOptions = v21;
      firstObject2 = [v21 firstObject];
      v24 = self->_assetCollection;
      self->_assetCollection = firstObject2;
    }

LABEL_10:
LABEL_20:

    assetCollection = self->_assetCollection;
  }

  return assetCollection;
}

- (BOOL)isTargetingAlbum
{
  assetCollection = [(PXProgrammaticNavigationDestination *)self assetCollection];
  if ([assetCollection px_isUserCreated] & 1) != 0 || (objc_msgSend(assetCollection, "px_isSmartAlbum") & 1) != 0 || (objc_msgSend(assetCollection, "px_isLemonadeUtilitiesAlbum"))
  {
    px_isSharedAlbum = 1;
  }

  else
  {
    px_isSharedAlbum = [assetCollection px_isSharedAlbum];
  }

  return px_isSharedAlbum;
}

- (PXDisplayAsset)asset
{
  v18[1] = *MEMORY[0x1E69E9840];
  asset = self->_asset;
  if (!asset)
  {
    assetUUID = [(PXProgrammaticNavigationDestination *)self assetUUID];
    assetLocalIdentifier = [(PXProgrammaticNavigationDestination *)self assetLocalIdentifier];
    if (!assetLocalIdentifier && assetUUID)
    {
      assetLocalIdentifier = [MEMORY[0x1E6978630] localIdentifierWithUUID:assetUUID];
    }

    if (assetLocalIdentifier || (-[PXProgrammaticNavigationDestination assetCloudIdentifier](self, "assetCloudIdentifier"), (v13 = objc_claimAutoreleasedReturnValue()) != 0) && (v14 = v13, [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary], v15 = objc_claimAutoreleasedReturnValue(), PXProgrammaticNavigationLocalIdentifierForCloudIdentifier(v14, v15), assetLocalIdentifier = objc_claimAutoreleasedReturnValue(), v15, v14, assetLocalIdentifier))
    {
      px_standardFetchOptions = [MEMORY[0x1E6978830] px_standardFetchOptions];
      [px_standardFetchOptions setIncludeHiddenAssets:1];
      [px_standardFetchOptions setIncludeGuestAssets:1];
      [px_standardFetchOptions setIncludeCollectionShareAssets:1];
      v7 = MEMORY[0x1E6978630];
      v18[0] = assetLocalIdentifier;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      v9 = [v7 fetchAssetsWithLocalIdentifiers:v8 options:px_standardFetchOptions];
      firstObject = [v9 firstObject];
      v11 = self->_asset;
      self->_asset = firstObject;
    }

    else
    {
      if ([(PXProgrammaticNavigationDestination *)self type]!= 19)
      {
        goto LABEL_8;
      }

      assetLocalIdentifier = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
      assetCollectionLocalIdentifier = [(PXProgrammaticNavigationDestination *)self assetCollectionLocalIdentifier];
      px_standardFetchOptions = assetCollectionLocalIdentifier;
      if (assetCollectionLocalIdentifier)
      {
        assetCollectionLocalIdentifier = [assetLocalIdentifier px_fetchAssetForSuggestionWithLocalIdentifier:assetCollectionLocalIdentifier];
      }

      v17 = self->_asset;
      self->_asset = assetCollectionLocalIdentifier;
    }

LABEL_8:
    asset = self->_asset;
  }

  return asset;
}

- (BOOL)isCollectionsHome
{
  collection = [(PXProgrammaticNavigationDestination *)self collection];
  px_isCollectionsVirtualCollection = [collection px_isCollectionsVirtualCollection];

  return px_isCollectionsVirtualCollection;
}

- (BOOL)isLibraryHome
{
  if ([(PXProgrammaticNavigationDestination *)self type]== 5 || [(PXProgrammaticNavigationDestination *)self type]== 1 || [(PXProgrammaticNavigationDestination *)self type]== 4 || [(PXProgrammaticNavigationDestination *)self type]== 3 || [(PXProgrammaticNavigationDestination *)self type]== 2)
  {
    return 1;
  }

  assetCollection = [(PXProgrammaticNavigationDestination *)self assetCollection];
  px_isMomentsVirtualCollection = [assetCollection px_isMomentsVirtualCollection];

  return px_isMomentsVirtualCollection;
}

- (PXProgrammaticNavigationDestination)initWithDecoratedSearchQuery:(id)query
{
  queryCopy = query;
  v5 = [(PXProgrammaticNavigationDestination *)self initWithType:14 revealMode:1];
  if (v5)
  {
    v6 = [PXSearchNavigationAttributes attributesWithDecoratedQuery:queryCopy];
    additionalAttributes = v5->_additionalAttributes;
    v5->_additionalAttributes = v6;
  }

  return v5;
}

- (PXProgrammaticNavigationDestination)initWithSearchText:(id)text
{
  textCopy = text;
  v5 = [(PXProgrammaticNavigationDestination *)self initWithType:14 revealMode:1];
  if (v5)
  {
    v6 = [PXSearchNavigationAttributes attributesWithGenericSearchText:textCopy];
    additionalAttributes = v5->_additionalAttributes;
    v5->_additionalAttributes = v6;
  }

  return v5;
}

- (PXProgrammaticNavigationDestination)initWithSearchTerm:(id)term
{
  termCopy = term;
  v5 = [(PXProgrammaticNavigationDestination *)self initWithType:14 revealMode:1];
  if (v5)
  {
    v6 = [PXSearchNavigationAttributes attributesWithGenericSearchTerm:termCopy];
    additionalAttributes = v5->_additionalAttributes;
    v5->_additionalAttributes = v6;
  }

  return v5;
}

- (PXProgrammaticNavigationDestination)initWithImportSource:(id)source revealMode:(int64_t)mode
{
  sourceCopy = source;
  v8 = [(PXProgrammaticNavigationDestination *)self initWithType:21 revealMode:mode];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_importSource, source);
  }

  return v9;
}

- (PXProgrammaticNavigationDestination)initWithType:(int64_t)type revealMode:(int64_t)mode asset:(id)asset assetCollection:(id)collection
{
  assetCopy = asset;
  collectionCopy = collection;
  v13 = [(PXProgrammaticNavigationDestination *)self init];
  v14 = v13;
  if (v13)
  {
    v13->_type = type;
    v13->_revealMode = mode;
    objc_storeStrong(&v13->_asset, asset);
    uuid = [assetCopy uuid];
    assetUUID = v14->_assetUUID;
    v14->_assetUUID = uuid;

    objc_storeStrong(&v14->_assetCollection, collection);
    uuid2 = [collectionCopy uuid];
    assetCollectionUUID = v14->_assetCollectionUUID;
    v14->_assetCollectionUUID = uuid2;
  }

  return v14;
}

- (PXProgrammaticNavigationDestination)initWithType:(int64_t)type revealMode:(int64_t)mode assetUUID:(id)d assetCollectionUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12 = [(PXProgrammaticNavigationDestination *)self init];
  v13 = v12;
  if (v12)
  {
    v12->_type = type;
    v12->_revealMode = mode;
    v14 = [dCopy copy];
    assetUUID = v13->_assetUUID;
    v13->_assetUUID = v14;

    v16 = [iDCopy copy];
    assetCollectionUUID = v13->_assetCollectionUUID;
    v13->_assetCollectionUUID = v16;
  }

  return v13;
}

- (PXProgrammaticNavigationDestination)initWithObject:(id)object revealMode:(int64_t)mode routingType:(int64_t)type
{
  objectCopy = object;
  v11 = [(PXProgrammaticNavigationDestination *)self init];
  v12 = v11;
  if (v11)
  {
    v11->_revealMode = mode;
    v11->_routingType = type;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = objectCopy;
      if ([v13 px_isLibraryVirtualCollection])
      {
        assetCollectionSubtype = 1;
LABEL_18:
        v27 = 80;
LABEL_19:
        *(&v12->super.isa + v27) = assetCollectionSubtype;

        goto LABEL_23;
      }

      if ([v13 px_isPickerVirtualCollection])
      {
        assetCollectionSubtype = 22;
        goto LABEL_18;
      }

      if ([v13 px_isSharedActivityVirtualCollection])
      {
        assetCollectionSubtype = 20;
        goto LABEL_18;
      }

      if ([v13 isTransient])
      {
        transientIdentifier = [v13 transientIdentifier];
        v33 = [transientIdentifier isEqualToString:@"PXPhotosSearchVirtualCollection"];

        if (v33)
        {
          assetCollectionSubtype = 14;
          goto LABEL_18;
        }
      }

      if ([v13 isTransient])
      {
        transientIdentifier2 = [v13 transientIdentifier];
        v35 = [transientIdentifier2 isEqualToString:@"PXPrototypeVirtualCollection"];

        if (v35)
        {
          assetCollectionSubtype = 16;
          goto LABEL_18;
        }
      }

      if ([v13 px_isContentSyndicationAlbum])
      {
        goto LABEL_31;
      }

      assetCollectionType = [v13 assetCollectionType];
      if (assetCollectionType <= 5)
      {
        if (assetCollectionType > 2)
        {
          if (assetCollectionType != 3)
          {
            if (assetCollectionType != 4)
            {
              goto LABEL_33;
            }

            v36 = 9;
            goto LABEL_32;
          }

          goto LABEL_53;
        }

        if ((assetCollectionType - 1) >= 2)
        {
          if (assetCollectionType)
          {
            goto LABEL_33;
          }

          goto LABEL_53;
        }
      }

      else
      {
        if (assetCollectionType > 0xD)
        {
          goto LABEL_39;
        }

        if (((1 << assetCollectionType) & 0xD00) != 0)
        {
          goto LABEL_53;
        }

        if (((1 << assetCollectionType) & 0x2200) == 0 && assetCollectionType != 12)
        {
LABEL_39:
          if (assetCollectionType != 6)
          {
            if (assetCollectionType != 7)
            {
              goto LABEL_33;
            }

            v36 = 33;
LABEL_32:
            v12->_type = v36;
LABEL_33:
            objc_storeStrong(&v12->_assetCollection, object);
            uuid = [v13 uuid];
            assetCollectionUUID = v12->_assetCollectionUUID;
            v12->_assetCollectionUUID = uuid;

            v12->_assetCollectionType = [v13 assetCollectionType];
            assetCollectionSubtype = [v13 assetCollectionSubtype];
            v27 = 184;
            goto LABEL_19;
          }

          if ([v13 px_isEvent])
          {
            v36 = 28;
            goto LABEL_32;
          }

          if ([v13 px_isTrip])
          {
            v36 = 29;
            goto LABEL_32;
          }

LABEL_53:
          v12->_type = 0;
          goto LABEL_33;
        }
      }

LABEL_31:
      v36 = 8;
      goto LABEL_32;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = objectCopy;
      if ([v15 px_isTripsVirtualCollection])
      {
        v16 = 29;
      }

      else
      {
        collectionListType = [v15 collectionListType];
        if ((collectionListType - 1) > 2)
        {
LABEL_15:
          collectionList = v12->_collectionList;
          v12->_collectionList = v15;
          v23 = v15;

          uuid2 = [v23 uuid];
          collectionListUUID = v12->_collectionListUUID;
          v12->_collectionListUUID = uuid2;

          v12->_collectionListType = [v23 collectionListType];
          collectionListSubtype = [v23 collectionListSubtype];

          v12->_collectionListSubtype = collectionListSubtype;
          goto LABEL_23;
        }

        v16 = qword_1A5381BE0[collectionListType - 1];
      }

      v12->_type = v16;
      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12->_type = 11;
      objc_storeStrong(&v12->_person, object);
      uuid3 = [objectCopy uuid];
      personUUID = v12->_personUUID;
      v12->_personUUID = uuid3;

      localIdentifier = [objectCopy localIdentifier];
      personLocalIdentifier = v12->_personLocalIdentifier;
      v12->_personLocalIdentifier = localIdentifier;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v41 = NSStringFromSelector(a2);
        [currentHandler handleFailureInMethod:a2 object:v12 file:@"PXProgrammaticNavigationDestination.m" lineNumber:445 description:{@"%@ currently only supports PHAssetCollection, PHCollectionList, and PHPerson objects.", v41}];

        abort();
      }

      v12->_type = 12;
      objc_storeStrong(&v12->_socialGroup, object);
      uuid4 = [objectCopy uuid];
      socialGroupUUID = v12->_socialGroupUUID;
      v12->_socialGroupUUID = uuid4;

      localIdentifier2 = [objectCopy localIdentifier];
      personLocalIdentifier = v12->_socialGroupLocalIdentifier;
      v12->_socialGroupLocalIdentifier = localIdentifier2;
    }
  }

LABEL_23:

  return v12;
}

- (PXProgrammaticNavigationDestination)initWithURL:(id)l
{
  lCopy = l;
  v5 = [(PXProgrammaticNavigationDestination *)self init];
  if (!v5)
  {
    goto LABEL_59;
  }

  v6 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:lCopy resolvingAgainstBaseURL:0];
  host = [v6 host];
  v8 = PXProgrammaticNavigationPathComponentsForURLComponents(v6);
  v9 = PXProgrammaticNavigationQueryValuesForComponents(v6);
  scheme = [v6 scheme];
  v11 = [scheme isEqualToString:@"photos"];

  if (v11)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__PXProgrammaticNavigationDestination_initWithURL___block_invoke;
    aBlock[3] = &unk_1E774C648;
    v130 = lCopy;
    v12 = _Block_copy(aBlock);
    obj = [v9 objectForKeyedSubscript:@"identifier"];
    v13 = [v9 objectForKeyedSubscript:@"uuid"];
    v14 = [v9 objectForKeyedSubscript:@"name"];
    v5->_openMode = 0;
    v15 = [v9 objectForKeyedSubscript:@"source"];
    source = v5->_source;
    v5->_source = v15;

    if ([host isEqualToString:@"contentmode"])
    {
      v115 = lCopy;
      v118 = v14;
      v121 = v12;
      v17 = [v9 objectForKeyedSubscript:@"id"];
      v18 = [v9 objectForKeyedSubscript:@"assetuuid"];
      if (![v18 length])
      {
        [v9 objectForKeyedSubscript:@"assetUUID"];
        v20 = v19 = v8;

        v18 = v20;
        v8 = v19;
      }

      v21 = v8;
      v22 = v13;
      if (![v18 length])
      {
        v23 = MEMORY[0x1E6978958];
        v24 = [v9 objectForKeyedSubscript:@"assetidentifier"];
        v25 = [v23 uuidFromLocalIdentifier:v24];

        v18 = v25;
      }

      v26 = [v9 objectForKeyedSubscript:@"oneUp"];
      bOOLValue = [v26 BOOLValue];

      if ([v17 isEqualToString:@"photos"])
      {
        v5->_type = 5;
        v13 = v22;
        if (v18)
        {
          v28 = 1;
          if (!bOOLValue)
          {
            v28 = 2;
          }

          v5->_revealMode = v28;
          objc_storeStrong(&v5->_assetUUID, v18);
        }

        else
        {
          v5->_revealMode = 3;
        }

        v8 = v21;
        v58 = [v9 objectForKeyedSubscript:@"libraryViewMode"];
        libraryViewMode = v5->_libraryViewMode;
        v5->_libraryViewMode = v58;
      }

      else
      {
        v13 = v22;
        if ([v17 isEqualToString:@"search"])
        {
          *&v5->_type = xmmword_1A5381020;
          v8 = v21;
        }

        else
        {
          v8 = v21;
          if ([v17 isEqualToString:@"albums"])
          {
            *&v5->_type = xmmword_1A5380F20;
          }
        }
      }

      v12 = v121;
      lCopy = v115;
      goto LABEL_38;
    }

    if (([host isEqualToString:@"asset"] & 1) != 0 || objc_msgSend(host, "isEqualToString:", @"sharedalbumasset"))
    {
      v116 = v13;
      v119 = v14;
      v122 = v12;
      v110 = host;
      v33 = v8;
      *&v5->_type = xmmword_1A5326B20;
      v34 = [v9 objectForKeyedSubscript:@"prefersSpatialPresentation"];
      v35 = [v9 objectForKeyedSubscript:@"prefersImmersiveMode"];
      v36 = [v9 objectForKeyedSubscript:@"wantsSharePlay"];
      bOOLValue2 = [v36 BOOLValue];

      LODWORD(v36) = [v34 BOOLValue];
      v38 = [v35 BOOLValue] + v36;
      v39 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue2];
      v40 = v38 + [v39 BOOLValue];

      if (v40 >= 2)
      {
        PXAssertGetLog();
      }

      v125[0] = MEMORY[0x1E69E9820];
      v125[1] = 3221225472;
      v125[2] = __51__PXProgrammaticNavigationDestination_initWithURL___block_invoke_412;
      v125[3] = &unk_1E7738698;
      v41 = v34;
      v126 = v41;
      v42 = v35;
      v127 = v42;
      v128 = bOOLValue2;
      v5->_openMode = __51__PXProgrammaticNavigationDestination_initWithURL___block_invoke_412(v125);
      objc_storeStrong(&v5->_assetLocalIdentifier, obj);
      v13 = v116;
      objc_storeStrong(&v5->_assetUUID, v116);
      assetUUID = v5->_assetUUID;
      v113 = v33;
      if (assetUUID)
      {
        v44 = assetUUID;
        v45 = v5->_assetUUID;
        v5->_assetUUID = v44;
        host = v110;
        v14 = v119;
      }

      else
      {
        v46 = [v9 objectForKeyedSubscript:@"assetuuid"];
        v45 = v46;
        if (v46)
        {
          v47 = v46;
        }

        else
        {
          v47 = [v9 objectForKeyedSubscript:@"assetUUID"];
        }

        v14 = v119;
        v61 = v5->_assetUUID;
        v5->_assetUUID = v47;

        host = v110;
      }

      v62 = PXProgrammaticNavigationCloudIdentifierForURLQueryValues(v9);
      assetCloudIdentifier = v5->_assetCloudIdentifier;
      v5->_assetCloudIdentifier = v62;

      v64 = [v9 objectForKeyedSubscript:@"albumuuid"];
      assetCollectionUUID = v5->_assetCollectionUUID;
      v5->_assetCollectionUUID = v64;

      if (!-[NSString length](v5->_assetCollectionUUID, "length") && [host isEqualToString:@"asset"])
      {
        v66 = MEMORY[0x1E6978650];
        v67 = [v9 objectForKeyedSubscript:@"albumname"];
        [v66 px_getType:&v5->_assetCollectionType subtype:&v5->_assetCollectionSubtype forBuiltInAlbumName:v67];

        v13 = v116;
      }

      v12 = v122;
      v8 = v113;
      goto LABEL_49;
    }

    if ([host isEqualToString:@"edit"])
    {
      [v8 firstObject];
      v114 = v8;
      v48 = v14;
      v49 = lCopy;
      v51 = v50 = v12;
      v52 = [v51 isEqualToString:@"enter"];

      v12 = v50;
      lCopy = v49;
      v14 = v48;
      v8 = v114;
      if (v52)
      {
        *&v5->_type = xmmword_1A5326B20;
        v53 = [v9 objectForKeyedSubscript:@"assetUUID"];
        v54 = v5->_assetUUID;
        v5->_assetUUID = v53;

        v5->_wantsEditMode = 1;
        v55 = [v9 objectForKeyedSubscript:@"completionKey"];
        completionKey = v5->_completionKey;
        v5->_completionKey = v55;

LABEL_49:
        v32 = v130;
        goto LABEL_50;
      }
    }

    if ([host isEqualToString:@"lastasset"])
    {
      *&v5->_type = xmmword_1A5317AE0;
      goto LABEL_49;
    }

    if ([host isEqualToString:@"allphotos"])
    {
      v5->_type = 5;
      goto LABEL_49;
    }

    if ([host isEqualToString:@"collections"])
    {
      v5->_type = 8;
      objc_storeStrong(&v5->_assetCollectionTransientIdentifier, @"PXCollectionsVirtualCollection");
      goto LABEL_49;
    }

    if ([host isEqualToString:@"folder"])
    {
      v5->_type = 18;
      objc_storeStrong(&v5->_collectionListUUID, v13);
      objc_storeStrong(&v5->_collectionListName, v14);
      *&v5->_collectionListType = xmmword_1A5381010;
      v5->_revealMode = 3;
      goto LABEL_49;
    }

    if (([host isEqualToString:@"album"] & 1) != 0 || objc_msgSend(host, "isEqualToString:", @"sharedalbum"))
    {
      v73 = [v9 objectForKeyedSubscript:@"revealassetuuid"];
      v120 = v73;
      v123 = v12;
      if (v73)
      {
        *&v5->_type = xmmword_1A5380FF0;
        objc_storeStrong(&v5->_assetUUID, v73);
      }

      else
      {
        *&v5->_type = xmmword_1A5380F20;
      }

      v111 = [v9 objectForKeyedSubscript:@"show-options"];
      lowercaseString = [v111 lowercaseString];
      v75 = [lowercaseString isEqualToString:@"true"];

      if (v75)
      {
        v5->_displayAlbumOptions = 1;
      }

      v76 = v13;
      if (v76 | obj)
      {
        objc_storeStrong(&v5->_assetCollectionUUID, v13);
        objc_storeStrong(&v5->_assetCollectionLocalIdentifier, obj);
      }

      v13 = v76;
      if ([host isEqualToString:@"album"])
      {
        if (!v5->_assetCollectionUUID && !v5->_assetCollectionLocalIdentifier)
        {
          v117 = v76;
          v77 = v14;
          v78 = [MEMORY[0x1E69789A8] px_transientIdentifierForWellKnownAssetCollectionName:v77];
          if (v78)
          {
            objc_storeStrong(&v5->_assetCollectionTransientIdentifier, v78);
          }

          else
          {
            v5->_utilityCollectionType = [MEMORY[0x1E6978B10] px_utilityCollectionTypeforBuiltInAlbumName:v77];
            [MEMORY[0x1E6978650] px_getType:&v5->_assetCollectionType subtype:&v5->_assetCollectionSubtype forBuiltInAlbumName:v77];
          }

          v13 = v117;
        }

        v87 = [v9 objectForKeyedSubscript:@"render"];
        bOOLValue3 = [v87 BOOLValue];

        if (bOOLValue3)
        {
          v5->_renderAlbumAssetsWithDeferredProcessing = 1;
        }
      }

      else if ([host isEqualToString:@"sharedalbum"])
      {
        *&v5->_assetCollectionType = xmmword_1A5381000;
      }

      v89 = PXProgrammaticNavigationCloudIdentifierForURLQueryValues(v9);
      assetCollectionCloudIdentifier = v5->_assetCollectionCloudIdentifier;
      v5->_assetCollectionCloudIdentifier = v89;

      v12 = v123;
      goto LABEL_49;
    }

    if ([host isEqualToString:@"userAlbum"])
    {
      *&v5->_type = xmmword_1A5380F20;
      objc_storeStrong(&v5->_userAlbumName, v14);
      *&v5->_assetCollectionType = xmmword_1A52F8E10;
      goto LABEL_49;
    }

    v118 = v14;
    if ([host isEqual:@"memory"])
    {
      v79 = lCopy;
      if (!(obj | v13) || obj && v13)
      {
        v12[2](v12);
      }

      v80 = v12;
      if (obj)
      {
        if (!v13)
        {
          v13 = [MEMORY[0x1E6978958] uuidFromLocalIdentifier:obj];
        }
      }

      else
      {
        obj = [MEMORY[0x1E69788F0] localIdentifierWithUUID:v13];
      }

      objc_storeStrong(&v5->_assetCollectionLocalIdentifier, obj);
      objc_storeStrong(&v5->_assetCollectionUUID, v13);
      v5->_assetCollectionType = 4;
      *&v5->_type = xmmword_1A5380F30;
      v86 = [v9 objectForKeyedSubscript:@"play"];
      v5->_wantsPlaybackMode = [v86 BOOLValue];

      v12 = v80;
      lCopy = v79;
      goto LABEL_38;
    }

    v81 = v12;
    if ([host isEqual:@"shelf"])
    {
      v82 = [v9 objectForKeyedSubscript:@"id"];
      if (!v82)
      {
        v81[2](v81);
      }

      *&v5->_type = xmmword_1A5380FE0;
      shelfSlug = v5->_shelfSlug;
      v5->_shelfSlug = v82;

      goto LABEL_129;
    }

    v112 = host;
    if ([host isEqual:@"shelf-details"])
    {
      v84 = [v9 objectForKeyedSubscript:@"id"];
      if (!v84)
      {
        v81[2](v81);
      }

      *&v5->_type = xmmword_1A5380FD0;
      memoryCreationLaunchType = v5->_shelfSlug;
      v5->_shelfSlug = v84;
      goto LABEL_100;
    }

    if ([host isEqual:@"memoryfeed"])
    {
      v91 = xmmword_1A535F3E0;
      goto LABEL_110;
    }

    if ([host isEqual:@"events"])
    {
      v92 = xmmword_1A5333B80;
    }

    else
    {
      if (![host isEqual:@"trips"])
      {
        if ([host isEqual:@"people"])
        {
          *&v5->_type = xmmword_1A5380FC0;
          objc_storeStrong(&v5->_personLocalIdentifier, obj);
          p_personUUID = &v5->_personUUID;
        }

        else
        {
          if (![host isEqual:@"social-groups"])
          {
            if ([host isEqual:@"places"])
            {
              v91 = xmmword_1A5380FA0;
              goto LABEL_110;
            }

            if ([host isEqual:@"icloud-links"])
            {
              v91 = xmmword_1A5380F90;
              goto LABEL_110;
            }

            if ([host isEqualToString:@"profile"])
            {
              v91 = xmmword_1A5380F80;
              goto LABEL_110;
            }

            if ([host isEqual:@"photoschallenge"])
            {
              v99 = xmmword_1A534D4F0;
            }

            else
            {
              if (![host isEqual:@"photoschallengesubmission"])
              {
                if (![host isEqual:@"spatial"])
                {
                  if ([host isEqualToString:@"featuredPhoto"])
                  {
                    *&v5->_type = xmmword_1A5380F60;
                    objc_storeStrong(&v5->_assetCollectionLocalIdentifier, obj);
                    v5->_assetCollectionType = 8;
                    goto LABEL_128;
                  }

                  if ([host isEqualToString:@"forYou"])
                  {
                    v101 = [v9 objectForKeyedSubscript:@"type"];
                    if ([v101 isEqualToString:@"sharedLibrarySuggestions"])
                    {
                      *&v5->_type = xmmword_1A5380F50;
                    }
                  }

                  else
                  {
                    if (![host isEqualToString:@"library"])
                    {
                      if ([host isEqualToString:@"memory-generation"])
                      {
                        *&v5->_type = xmmword_1A53192D0;
                        v103 = [v9 objectForKeyedSubscript:@"query"];
                        memoryCreationText = v5->_memoryCreationText;
                        v5->_memoryCreationText = v103;

                        v105 = [v9 objectForKeyedSubscript:@"launchType"];
                        memoryCreationLaunchType = v5->_memoryCreationLaunchType;
                        v5->_memoryCreationLaunchType = v105;
                      }

                      else
                      {
                        if ([host isEqualToString:@"oneyearago"])
                        {
                          *&v5->_type = xmmword_1A5380F40;
                          v106 = PXLocalizedStringFromTable(@"SEARCH_SUGGESTION_LAST_YEAR", @"PhotosUICore");
                          v107 = [PXSearchNavigationAttributes attributesWithGenericSearchText:v106];
                          additionalAttributes = v5->_additionalAttributes;
                          v5->_additionalAttributes = v107;

                          goto LABEL_128;
                        }

                        if ([host isEqualToString:@"cloudfeed"])
                        {
                          v5->_type = 20;
                          queryItems = [PXSharedAlbumNavigationAttributes attributesForURLComponents:v6];
                        }

                        else
                        {
                          if (![host isEqualToString:@"performanceBaselineEnvironment"])
                          {
                            goto LABEL_128;
                          }

                          v5->_type = 17;
                          queryItems = [v6 queryItems];
                        }

                        memoryCreationLaunchType = v5->_additionalAttributes;
                        v5->_additionalAttributes = queryItems;
                      }

                      goto LABEL_100;
                    }

                    v101 = [v9 objectForKeyedSubscript:@"zoomLevel"];
                    if ([v101 isEqualToString:@"all-photos"])
                    {
                      v102 = 5;
                    }

                    else if ([v101 isEqualToString:@"days"])
                    {
                      v102 = 4;
                    }

                    else if ([v101 isEqualToString:@"months"])
                    {
                      v102 = 3;
                    }

                    else if ([v101 isEqualToString:@"years"])
                    {
                      v102 = 2;
                    }

                    else
                    {
                      v102 = 1;
                    }

                    v5->_type = v102;
                    v5->_revealMode = 1;
                  }

                  goto LABEL_128;
                }

                v91 = xmmword_1A5380F70;
LABEL_110:
                *&v5->_type = v91;
                goto LABEL_128;
              }

              v99 = xmmword_1A5328F30;
            }

            *&v5->_type = v99;
            v100 = +[PXLemonadeShelfIdentifierHelper photosChallengeShelfSlug];
            memoryCreationLaunchType = v5->_shelfSlug;
            v5->_shelfSlug = v100;
LABEL_100:

LABEL_128:
            host = v112;
LABEL_129:
            v12 = v81;
LABEL_38:
            v14 = v118;
            goto LABEL_49;
          }

          *&v5->_type = xmmword_1A5380FB0;
          objc_storeStrong(&v5->_socialGroupLocalIdentifier, obj);
          p_personUUID = &v5->_socialGroupUUID;
        }

        v96 = v13;
LABEL_127:
        objc_storeStrong(p_personUUID, v96);
        goto LABEL_128;
      }

      v92 = xmmword_1A5333B90;
    }

    *&v5->_type = v92;
    v5->_assetCollectionType = 6;
    if (v13 || !obj)
    {
      objc_storeStrong(&v5->_assetCollectionUUID, v13);
      if (!obj && v13)
      {
        v97 = [MEMORY[0x1E69789F0] localIdentifierWithUUID:v13];
        assetCollectionLocalIdentifier = v5->_assetCollectionLocalIdentifier;
        v5->_assetCollectionLocalIdentifier = v97;

        obj = 0;
        goto LABEL_128;
      }
    }

    else
    {
      v93 = [MEMORY[0x1E6978958] uuidFromLocalIdentifier:obj];
      v94 = v5->_assetCollectionUUID;
      v5->_assetCollectionUUID = v93;
    }

    p_personUUID = &v5->_assetCollectionLocalIdentifier;
    v96 = obj;
    goto LABEL_127;
  }

  scheme2 = [v6 scheme];
  v30 = [scheme2 isEqualToString:@"photos-navigation"];

  if (v30)
  {
    if ([host isEqualToString:@"search"])
    {
      *&v5->_type = xmmword_1A5380F40;
      v31 = [PXSearchNavigationAttributes attributesForURLComponents:v6];
      v32 = v5->_additionalAttributes;
      v5->_additionalAttributes = v31;
LABEL_50:

      goto LABEL_51;
    }

    if ([host isEqualToString:@"memories"])
    {
      *&v5->_type = xmmword_1A5380F30;
    }

    else
    {
      if ([host isEqualToString:@"asset"])
      {
        *&v5->_type = xmmword_1A5326B20;
        v57 = PXProgrammaticNavigationCloudIdentifierForURLQueryValues(v9);
        v32 = v5->_assetCloudIdentifier;
        v5->_assetCloudIdentifier = v57;
        goto LABEL_50;
      }

      if ([host isEqualToString:@"album"])
      {
        *&v5->_type = xmmword_1A5380F20;
        v60 = PXProgrammaticNavigationCloudIdentifierForURLQueryValues(v9);
        v32 = v5->_assetCollectionCloudIdentifier;
        v5->_assetCollectionCloudIdentifier = v60;
        goto LABEL_50;
      }
    }
  }

LABEL_51:
  if ([(NSString *)v5->_source isEqualToString:@"widget"])
  {
    type = v5->_type;
    v69 = type == 9 || type == 19;
    v70 = 1;
    if (!v69)
    {
      v70 = 2;
    }

    v5->_routingType = v70;
  }

  v71 = [v9 objectForKeyedSubscript:@"shouldExcludeSidebar"];
  v5->_shouldExcludeSidebar = [v71 BOOLValue];

LABEL_59:
  return v5;
}

void __51__PXProgrammaticNavigationDestination_initWithURL___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_ERROR, "destination URL is malformed: %@", &v4, 0xCu);
  }
}

uint64_t __51__PXProgrammaticNavigationDestination_initWithURL___block_invoke_412(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = [*(a1 + 32) BOOLValue] == 0;
    v2 = 3;
    goto LABEL_5;
  }

  if (*(a1 + 40))
  {
    v1 = [*(a1 + 40) BOOLValue] == 0;
    v2 = 1;
LABEL_5:
    if (v1)
    {
      return v2 + 1;
    }

    else
    {
      return v2;
    }
  }

  if (*(a1 + 48))
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

+ (id)memoryCreationDestinationWithPrompt:(id)prompt
{
  promptCopy = prompt;
  v5 = [[self alloc] initWithType:32 revealMode:1];
  v6 = [promptCopy copy];

  v7 = v5[34];
  v5[34] = v6;

  return v5;
}

@end