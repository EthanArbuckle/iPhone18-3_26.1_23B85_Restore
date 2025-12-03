@interface PLInterLibraryTransferOptions
+ (id)newTransferOptionsForAssetsFromSyndicationToSystem;
+ (id)newTransferOptionsForFaceCropFromSyndicationToSystem;
+ (id)newTransferOptionsForPersonFromSystemToSyndication;
- (PLInterLibraryTransferOptions)initWithCoder:(id)coder;
- (id)_sortedEntityNamesAsString;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLInterLibraryTransferOptions

- (PLInterLibraryTransferOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PLInterLibraryTransferOptions;
  v5 = [(PLInterLibraryTransferOptions *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"excludedEntityNames"];
    if (v6)
    {
      v7 = [MEMORY[0x1E695DFD8] setWithArray:v6];
      excludedEntityNames = v5->_excludedEntityNames;
      v5->_excludedEntityNames = v7;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  excludedEntityNames = [(PLInterLibraryTransferOptions *)self excludedEntityNames];
  allObjects = [excludedEntityNames allObjects];
  [coderCopy encodeObject:allObjects forKey:@"excludedEntityNames"];
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  _sortedEntityNamesAsString = [(PLInterLibraryTransferOptions *)self _sortedEntityNamesAsString];
  v6 = [v3 stringWithFormat:@"<%@:%p> (excluding %@)", v4, self, _sortedEntityNamesAsString];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  _sortedEntityNamesAsString = [(PLInterLibraryTransferOptions *)self _sortedEntityNamesAsString];
  v6 = [v3 stringWithFormat:@"%@ (excluding %@)", v4, _sortedEntityNamesAsString];

  return v6;
}

- (id)_sortedEntityNamesAsString
{
  excludedEntityNames = [(PLInterLibraryTransferOptions *)self excludedEntityNames];
  allObjects = [excludedEntityNames allObjects];
  v4 = [allObjects sortedArrayUsingSelector:sel_compare_];
  v5 = [v4 componentsJoinedByString:{@", "}];

  return v5;
}

+ (id)newTransferOptionsForFaceCropFromSyndicationToSystem
{
  v2 = objc_alloc_init(self);
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = +[PLDetectedFace entityName];
  v5 = +[PLManagedAsset entityName];
  v6 = +[PLPerson entityName];
  v7 = [v3 initWithObjects:{v4, v5, v6, 0}];
  [v2 setExcludedEntityNames:v7];

  v8 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  [v2 setExcludedAttributeNames:v8];

  [v2 setUpdateExistingObjects:0];
  v9 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  [v2 setKeysForDeDupe:v9];

  return v2;
}

+ (id)newTransferOptionsForPersonFromSystemToSyndication
{
  v16 = objc_alloc_init(self);
  v17 = objc_alloc(MEMORY[0x1E695DFD8]);
  v18 = +[PLDetectedFace entityName];
  v14 = +[PLDetectedFaceGroup entityName];
  v2 = +[PLFaceCrop entityName];
  v15 = +[PLGraphEdge entityName];
  v13 = +[PLManagedAsset entityName];
  v3 = +[PLManagedKeyword entityName];
  v4 = +[PLPerson entityName];
  v5 = +[PLPersonReference entityName];
  v6 = +[PLPhotosHighlight entityName];
  v7 = +[PLShareParticipant entityName];
  v8 = +[PLUserFeedback entityName];
  v9 = [v17 initWithObjects:{v18, v14, v2, v15, v13, v3, v4, v5, v6, v7, v8, 0}];
  [v16 setExcludedEntityNames:v9];

  v10 = [MEMORY[0x1E695DFD8] setWithObjects:{@"faceCount", 0}];
  [v16 setExcludedAttributeNames:v10];

  [v16 setUpdateExistingObjects:1];
  v11 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  [v16 setKeysForDeDupe:v11];

  return v16;
}

+ (id)newTransferOptionsForAssetsFromSyndicationToSystem
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(self);
  v19 = objc_alloc(MEMORY[0x1E695DFD8]);
  v24 = +[PLGenericAlbum entityName];
  v18 = +[PLCloudSharedComment entityName];
  v23 = +[PLDetectedFace entityName];
  v17 = +[PLFaceCrop entityName];
  v22 = +[PLGraphEdge entityName];
  v16 = +[PLManagedAlbum entityName];
  v21 = +[PLManagedAsset entityName];
  v20 = +[PLManagedKeyword entityName];
  v15 = +[PLMemory entityName];
  v14 = +[PLMoment entityName];
  v13 = +[PLMomentShare entityName];
  v3 = +[PLCollectionShare entityName];
  v12 = +[PLPerson entityName];
  v4 = +[PLPersonReference entityName];
  v5 = +[PLPhotosHighlight entityName];
  v6 = +[PLShareParticipant entityName];
  v7 = +[PLSuggestion entityName];
  v8 = [v19 initWithObjects:{v24, v18, v23, v17, v22, v16, v21, v20, v15, v14, v13, v3, v12, v4, v5, v6, v7, 0}];
  [v2 setExcludedEntityNames:v8];

  v9 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  [v2 setExcludedAttributeNames:v9];

  [v2 setUpdateExistingObjects:1];
  [v2 setAllowSavedAssetTypeChanges:0];
  [v2 setIgnoreMissingSourceFiles:1];
  [v2 setIgnoreMissingSourceFileURLs:1];
  v25[0] = @"additionalAttributes.syndicationIdentifier";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  [v2 setKeysForDeDupe:v10];

  [v2 setAllowDeleteOfSavedAssetTypes:{objc_msgSend(MEMORY[0x1E69BF328], "maskForGuestAsset")}];
  return v2;
}

@end