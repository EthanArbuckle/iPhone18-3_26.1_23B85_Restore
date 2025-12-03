@interface PXSelectionContainer
- (BOOL)allowImplicitSelectionForProjectsOrSharing;
- (BOOL)containsAssetsWithNonEditableProperties;
- (BOOL)containsContentSyndicationAssets;
- (BOOL)containsMemories;
- (BOOL)containsNonContentSyndicationAssets;
- (BOOL)containsObjectOfClass:(Class)class passingTest:(id)test;
- (BOOL)containsPeople;
- (BOOL)containsRAWAssets;
- (BOOL)containsRAWPlusJPEGAssets;
- (BOOL)containsReferencedFileAssets;
- (BOOL)containsSensitiveAssets;
- (BOOL)containsSpatialAssets;
- (BOOL)containsSpatialVideoAssets;
- (BOOL)containsUnsavedContentSyndicationAssets;
- (BOOL)hasAnyChangesFromSelection:(id)selection;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSelection:(id)selection;
- (NSString)title;
- (PXDisplayCollectionFetcher)collectionFetcher;
- (PXFastEnumeration)allDataSourceObjects;
- (PXFastEnumeration)selectedContainedAssetsForProjectsOrSharing;
- (PXFastEnumeration)selectedObjects;
- (PXSelectionContainer)init;
- (PXSelectionContainer)initWithCollection:(id)collection collectionFetcher:(id)fetcher undoManager:(id)manager context:(int64_t)context;
- (PXSelectionContainer)initWithContent:(id)content collection:(id)collection undoManager:(id)manager context:(int64_t)context;
- (PXSelectionContainer)initWithDataSection:(id)section collection:(id)collection undoManager:(id)manager context:(int64_t)context;
- (PXSelectionContainer)initWithSelectionSnapshot:(id)snapshot collection:(id)collection undoManager:(id)manager context:(int64_t)context privacyController:(id)controller changeHistory:(id)history;
- (id)description;
- (id)firstSelectedObjectOfClass:(Class)class;
- (id)selectedContainedAssets:(BOOL)assets;
- (id)selectedContainedAssets:(BOOL)assets allowedClasses:(id)classes;
- (id)selectedObjects:(BOOL)objects;
- (id)selectedObjectsOfClass:(Class)class;
- (id)selectedObjectsOrContainerOfClass:(Class)class;
- (id)singleSelectedObjectOfClass:(Class)class;
- (int64_t)selectionCount;
- (unint64_t)hash;
- (void)enumerateSelectedObjectsOfClass:(Class)class usingBlock:(id)block;
@end

@implementation PXSelectionContainer

- (PXDisplayCollectionFetcher)collectionFetcher
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionFetcher);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  context = [(PXSelectionContainer *)self context];
  if ((context - 1) > 0x1E)
  {
    v6 = @"Undefined";
  }

  else
  {
    v6 = off_1E7739BD0[context - 1];
  }

  v7 = v6;
  v8 = [v3 stringWithFormat:@"<%@: %p context = %@>", v4, self, v7];;

  return v8;
}

- (unint64_t)hash
{
  selectionSnapshot = [(PXSelectionContainer *)self selectionSnapshot];
  dataSource = [selectionSnapshot dataSource];
  v5 = [dataSource hash];
  selectionSnapshot2 = [(PXSelectionContainer *)self selectionSnapshot];
  selectedIndexPaths = [selectionSnapshot2 selectedIndexPaths];
  v8 = [selectedIndexPaths hash];

  return v8 ^ v5;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PXSelectionContainer *)self isEqualToSelection:equalCopy];
  }

  return v5;
}

- (BOOL)hasAnyChangesFromSelection:(id)selection
{
  selectionCopy = selection;
  selectionCount = [(PXSelectionContainer *)self selectionCount];
  if (selectionCount == [selectionCopy selectionCount])
  {
    selectionSnapshot = [selectionCopy selectionSnapshot];
    dataSource = [selectionSnapshot dataSource];
    identifier = [dataSource identifier];

    selectionSnapshot2 = [(PXSelectionContainer *)self selectionSnapshot];
    dataSource2 = [selectionSnapshot2 dataSource];
    identifier2 = [dataSource2 identifier];

    changeHistory = [(PXSelectionContainer *)self changeHistory];
    v13 = [changeHistory coalescedChangeDetailsFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2];

    if (v13 && [(PXSelectionContainer *)self selectionCount])
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 0;
      selectionSnapshot3 = [(PXSelectionContainer *)self selectionSnapshot];
      selectedIndexPaths = [selectionSnapshot3 selectedIndexPaths];

      selectionSnapshot4 = [selectionCopy selectionSnapshot];
      selectedIndexPaths2 = [selectionSnapshot4 selectedIndexPaths];

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __51__PXSelectionContainer_hasAnyChangesFromSelection___block_invoke;
      v21[3] = &unk_1E7739BB0;
      v22 = v13;
      v18 = selectedIndexPaths;
      v23 = v18;
      v24 = &v25;
      [selectedIndexPaths2 enumerateItemIndexPathsUsingBlock:v21];
      v19 = *(v26 + 24);

      _Block_object_dispose(&v25, 8);
    }

    else
    {
      v19 = ![(PXSelectionContainer *)self isEqualToSelection:selectionCopy];
    }
  }

  else
  {
    v19 = 1;
  }

  return v19 & 1;
}

uint64_t __51__PXSelectionContainer_hasAnyChangesFromSelection___block_invoke(void *a1, __int128 *a2, _BYTE *a3)
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v5 = a1[4];
  if (v5 && (v6 = a2[1], v9 = *a2, v10 = v6, result = [v5 indexPathAfterApplyingChangesToIndexPath:&v9 hasIncrementalChanges:0 objectChanged:&v13], (v13 & 1) != 0) || (v8 = a1[5], v9 = v11, v10 = v12, result = objc_msgSend(v8, "containsIndexPath:", &v9), (result & 1) == 0))
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (BOOL)isEqualToSelection:(id)selection
{
  selectionCopy = selection;
  selectionCount = [(PXSelectionContainer *)self selectionCount];
  if (selectionCount == [selectionCopy selectionCount] && (v6 = -[PXSelectionContainer context](self, "context"), v6 == objc_msgSend(selectionCopy, "context")) && (-[PXSelectionContainer selectionSnapshot](self, "selectionSnapshot"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "dataSource"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(selectionCopy, "selectionSnapshot"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "dataSource"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "isEqual:", v10), v10, v9, v8, v7, v11))
  {
    selectionSnapshot = [(PXSelectionContainer *)self selectionSnapshot];
    selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
    selectionSnapshot2 = [selectionCopy selectionSnapshot];
    selectedIndexPaths2 = [selectionSnapshot2 selectedIndexPaths];
    v16 = [selectedIndexPaths isEqual:selectedIndexPaths2];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (NSString)title
{
  selectionSnapshot = [(PXSelectionContainer *)self selectionSnapshot];
  dataSource = [selectionSnapshot dataSource];

  selectionSnapshot2 = [(PXSelectionContainer *)self selectionSnapshot];
  selectedIndexPaths = [selectionSnapshot2 selectedIndexPaths];

  if ([(PXSelectionContainer *)self context]== 17)
  {
    selectionSnapshot3 = [(PXSelectionContainer *)self selectionSnapshot];
    firstObject = [selectionSnapshot3 firstObject];

    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = firstObject;
    }

    else
    {
      v9 = 0;
    }

    selectionSnapshot4 = [(PXSelectionContainer *)self selectionSnapshot];
    firstObject2 = [selectionSnapshot4 firstObject];

    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v16 = firstObject2;
    }

    else
    {
      v16 = 0;
    }

    collection = [(PXSelectionContainer *)self collection];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v18 = collection;
    }

    else
    {
      v18 = 0;
    }

    if (v9)
    {
      selectionSnapshot5 = [(PXSelectionContainer *)self selectionSnapshot];
      allItemsEnumerator = [selectionSnapshot5 allItemsEnumerator];
      localizedTitle = [PXPeopleUtilities titleStringForPeople:allItemsEnumerator];
    }

    else if (v16)
    {
      localizedTitle = [PXPeopleUtilities titleStringForSocialGroup:v16];
    }

    else if (v18)
    {
      if ([dataSource totalNumberOfItems])
      {
        [v18 photoLibrary];
        px_peoplePetsHomeVisibility = [objc_claimAutoreleasedReturnValue() px_peoplePetsHomeVisibility];
        PXLocalizedStringForPersonOrPetAndVisibility(0, px_peoplePetsHomeVisibility, @"PXPeopleHomeSummaryQuantityTitle");
        objc_claimAutoreleasedReturnValue();
        PXLocalizedStringWithValidatedFormat();
      }

      localizedTitle = &stru_1F1741150;
    }

    else
    {
      localizedTitle = 0;
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __29__PXSelectionContainer_title__block_invoke;
    aBlock[3] = &unk_1E7739B10;
    v11 = v10;
    v41 = v11;
    v12 = _Block_copy(aBlock);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __29__PXSelectionContainer_title__block_invoke_2;
    v34[3] = &unk_1E7739B88;
    v35 = dataSource;
    v9 = v11;
    v36 = v9;
    v39 = &v42;
    v13 = v12;
    selfCopy = self;
    v38 = v13;
    [selectedIndexPaths enumerateItemIndexSetsUsingBlock:v34];
    if (v43[3] >= 3)
    {
      PXLocalizedStringFromTable(@"PXCollectionPickerAdditionalMomentsFormat", @"PhotosUICore");
      objc_claimAutoreleasedReturnValue();
      PXLocalizedStringWithValidatedFormat();
    }

    v22 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v9];
    array = [v22 array];

    if ([array count])
    {
      v24 = PXLocalizedStringFromTable(@"PXCollectionPickerNewCollectionNameComponentsSeparator", @"PhotosUICore");
      localizedTitle = [array componentsJoinedByString:v24];
    }

    else
    {
      localizedTitle = 0;
    }

    _Block_object_dispose(&v42, 8);
  }

  if (!localizedTitle)
  {
    collection2 = [(PXSelectionContainer *)self collection];
    localizedTitle = [collection2 localizedTitle];

    if (!localizedTitle)
    {
      collection3 = [(PXSelectionContainer *)self collection];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = MEMORY[0x1E69BE3B8];
        v28 = collection3;
        v29 = [[v27 alloc] initWithPreset:2];
        localStartDate = [v28 localStartDate];
        localEndDate = [v28 localEndDate];

        localizedTitle = [v29 stringFromDate:localStartDate toDate:localEndDate];
      }

      else if ([(PXSelectionContainer *)self context]== 23)
      {
        localizedTitle = PXLocalizedStringFromTable(@"SEARCH_TITLE", @"PhotosUICore");
      }

      else
      {
        localizedTitle = 0;
      }
    }
  }

  return localizedTitle;
}

void __29__PXSelectionContainer_title__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 localizedTitle];
  v5 = [v3 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F1741150];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

void __29__PXSelectionContainer_title__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, BOOL *a5)
{
  v9 = a4;
  if ([v9 count])
  {
    v10 = *(a1 + 32);
    v31[0] = a2;
    v31[1] = a3;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v32 = vnegq_f64(v11);
    v12 = [v10 objectAtIndexPath:v31];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
      if ([v13 assetCollectionType] != 2 || objc_msgSend(v13, "assetCollectionSubtype") == 1000000204)
      {
        v14 = [v13 localizedSubtitle];
        if (v14 || ([v13 localizedTitle], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v15 = v14;
          [*(a1 + 40) addObject:v14];
        }

        ++*(*(*(a1 + 64) + 8) + 24);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v12;
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __29__PXSelectionContainer_title__block_invoke_3;
        v27[3] = &unk_1E7739B38;
        v28 = v16;
        v17 = *(a1 + 56);
        v18 = *(a1 + 64);
        v29 = v17;
        v30 = v18;
        [v9 enumerateIndexesUsingBlock:v27];

        v13 = v28;
      }

      else
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __29__PXSelectionContainer_title__block_invoke_4;
        v21[3] = &unk_1E7739B60;
        v22 = *(a1 + 32);
        v25 = a2;
        v26 = a3;
        v19 = *(a1 + 56);
        v20 = *(a1 + 64);
        v23 = v19;
        v24 = v20;
        [v9 enumerateIndexesUsingBlock:v21];

        v13 = v22;
      }
    }

    *a5 = [*(a1 + 48) context] == 6;
  }
}

void __29__PXSelectionContainer_title__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) memories];
  v5 = [v4 objectAtIndex:a2];

  (*(*(a1 + 40) + 16))();
  ++*(*(*(a1 + 48) + 8) + 24);
}

void __29__PXSelectionContainer_title__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = a2;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = [v3 objectAtIndexPath:&v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 40) + 16))();
    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

- (PXFastEnumeration)allDataSourceObjects
{
  if (!self->_allDataSourceObjects)
  {
    selectionSnapshot = [(PXSelectionContainer *)self selectionSnapshot];
    dataSource = [selectionSnapshot dataSource];

    fetchAllItemObjects = [dataSource fetchAllItemObjects];
    allDataSourceObjects = self->_allDataSourceObjects;
    self->_allDataSourceObjects = fetchAllItemObjects;
  }

  privacyController = [(PXSelectionContainer *)self privacyController];
  isLocked = [privacyController isLocked];

  if (isLocked)
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v9 = self->_allDataSourceObjects;
  }

  return v9;
}

- (PXFastEnumeration)selectedContainedAssetsForProjectsOrSharing
{
  allowImplicitSelectionForProjectsOrSharing = [(PXSelectionContainer *)self allowImplicitSelectionForProjectsOrSharing];

  return [(PXSelectionContainer *)self selectedContainedAssets:allowImplicitSelectionForProjectsOrSharing];
}

- (BOOL)allowImplicitSelectionForProjectsOrSharing
{
  context = [(PXSelectionContainer *)self context];
  if (context > 0x1C)
  {
    return 0;
  }

  if (((1 << context) & 0x1808008) != 0)
  {
    return 1;
  }

  if (((1 << context) & 0x18000000) == 0)
  {
    return 0;
  }

  collection = [(PXSelectionContainer *)self collection];
  px_allowsImplicitSelectionForProjectOrSharingAction = [collection px_allowsImplicitSelectionForProjectOrSharingAction];

  return px_allowsImplicitSelectionForProjectOrSharingAction;
}

- (id)selectedContainedAssets:(BOOL)assets
{
  assetsCopy = assets;
  v5 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v6 = [(PXSelectionContainer *)self selectedContainedAssets:assetsCopy allowedClasses:v5];

  return v6;
}

- (id)selectedContainedAssets:(BOOL)assets allowedClasses:(id)classes
{
  assetsCopy = assets;
  v8 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  [(PXSelectionContainer *)self selectedObjects:assetsCopy];
  objc_claimAutoreleasedReturnValue();
  PXFilter();
}

BOOL __63__PXSelectionContainer_selectedContainedAssets_allowedClasses___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3 == 0;
}

- (BOOL)containsSensitiveAssets
{
  shouldCheckAssetSensitivity = [(PXSelectionContainer *)self shouldCheckAssetSensitivity];
  if (shouldCheckAssetSensitivity)
  {
    shouldCheckAssetSensitivity = [MEMORY[0x1E6978AB0] sensitiveContentAnalysisEnabled];
    if (shouldCheckAssetSensitivity)
    {
      if ([(PXSelectionContainer *)self hasExplicitSelection])
      {
        v4 = objc_opt_class();

        LOBYTE(shouldCheckAssetSensitivity) = [(PXSelectionContainer *)self containsObjectOfClass:v4 passingTest:&__block_literal_global_330_110560];
      }

      else
      {
        LOBYTE(shouldCheckAssetSensitivity) = 1;
      }
    }
  }

  return shouldCheckAssetSensitivity;
}

- (BOOL)containsMemories
{
  v3 = objc_opt_class();

  return [(PXSelectionContainer *)self containsObjectOfClass:v3 passingTest:&__block_literal_global_327_110564];
}

- (BOOL)containsPeople
{
  v3 = objc_opt_class();

  return [(PXSelectionContainer *)self containsObjectOfClass:v3 passingTest:&__block_literal_global_323];
}

- (BOOL)containsAssetsWithNonEditableProperties
{
  v3 = objc_opt_class();

  return [(PXSelectionContainer *)self containsObjectOfClass:v3 passingTest:&__block_literal_global_319_110568];
}

- (BOOL)containsNonContentSyndicationAssets
{
  v3 = objc_opt_class();

  return [(PXSelectionContainer *)self containsObjectOfClass:v3 passingTest:&__block_literal_global_317];
}

- (BOOL)containsContentSyndicationAssets
{
  v3 = objc_opt_class();

  return [(PXSelectionContainer *)self containsObjectOfClass:v3 passingTest:&__block_literal_global_315];
}

- (BOOL)containsUnsavedContentSyndicationAssets
{
  v3 = objc_opt_class();

  return [(PXSelectionContainer *)self containsObjectOfClass:v3 passingTest:&__block_literal_global_313];
}

- (BOOL)containsSpatialVideoAssets
{
  v3 = objc_opt_class();

  return [(PXSelectionContainer *)self containsObjectOfClass:v3 passingTest:&__block_literal_global_311];
}

BOOL __50__PXSelectionContainer_containsSpatialVideoAssets__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isSpatialMedia])
  {
    v3 = [v2 mediaType] == 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)containsSpatialAssets
{
  v3 = objc_opt_class();

  return [(PXSelectionContainer *)self containsObjectOfClass:v3 passingTest:&__block_literal_global_309];
}

- (BOOL)containsRAWAssets
{
  v3 = objc_opt_class();

  return [(PXSelectionContainer *)self containsObjectOfClass:v3 passingTest:&__block_literal_global_307];
}

uint64_t __41__PXSelectionContainer_containsRAWAssets__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isRAW])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isRAWPlusJPEG];
  }

  return v3;
}

- (BOOL)containsRAWPlusJPEGAssets
{
  v3 = objc_opt_class();

  return [(PXSelectionContainer *)self containsObjectOfClass:v3 passingTest:&__block_literal_global_305];
}

- (BOOL)containsReferencedFileAssets
{
  v3 = objc_opt_class();

  return [(PXSelectionContainer *)self containsObjectOfClass:v3 passingTest:&__block_literal_global_110570];
}

- (BOOL)containsObjectOfClass:(Class)class passingTest:(id)test
{
  testCopy = test;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__PXSelectionContainer_containsObjectOfClass_passingTest___block_invoke;
  v9[3] = &unk_1E7739A40;
  v11 = &v12;
  v7 = testCopy;
  v10 = v7;
  [(PXSelectionContainer *)self enumerateSelectedObjectsOfClass:class usingBlock:v9];
  LOBYTE(class) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return class;
}

uint64_t __58__PXSelectionContainer_containsObjectOfClass_passingTest___block_invoke(uint64_t a1, uint64_t a2, char *a3)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v6 = 1;
  }

  else
  {
    v6 = *a3;
  }

  *a3 = v6 & 1;
  return result;
}

- (id)selectedObjectsOrContainerOfClass:(Class)class
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [(PXSelectionContainer *)self selectedObjectsOfClass:?];
  if (![v4 count])
  {
    assetsContainer = [(PXSelectionContainer *)self assetsContainer];
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      assetsContainer2 = [(PXSelectionContainer *)self assetsContainer];
      v10[0] = assetsContainer2;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

      v4 = v8;
    }
  }

  return v4;
}

- (id)selectedObjectsOfClass:(Class)class
{
  array = [MEMORY[0x1E695DF70] array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__PXSelectionContainer_selectedObjectsOfClass___block_invoke;
  v8[3] = &unk_1E773F900;
  v6 = array;
  v9 = v6;
  [(PXSelectionContainer *)self enumerateSelectedObjectsOfClass:class usingBlock:v8];

  return v6;
}

- (void)enumerateSelectedObjectsOfClass:(Class)class usingBlock:(id)block
{
  blockCopy = block;
  selectionSnapshot = [(PXSelectionContainer *)self selectionSnapshot];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__PXSelectionContainer_enumerateSelectedObjectsOfClass_usingBlock___block_invoke;
  v9[3] = &unk_1E7739A18;
  v10 = blockCopy;
  classCopy = class;
  v8 = blockCopy;
  [selectionSnapshot enumerateSelectedObjectsUsingBlock:v9];
}

void __67__PXSelectionContainer_enumerateSelectedObjectsOfClass_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)singleSelectedObjectOfClass:(Class)class
{
  if ([(PXSelectionContainer *)self selectionCount]== 1)
  {
    v5 = [(PXSelectionContainer *)self firstSelectedObjectOfClass:class];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)firstSelectedObjectOfClass:(Class)class
{
  selectionSnapshot = [(PXSelectionContainer *)self selectionSnapshot];
  firstObject = [selectionSnapshot firstObject];

  if (objc_opt_isKindOfClass())
  {
    v5 = firstObject;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (PXFastEnumeration)selectedObjects
{
  if (!self->_selectedObjects)
  {
    selectionSnapshot = [(PXSelectionContainer *)self selectionSnapshot];
    fetchSelectedObjects = [selectionSnapshot fetchSelectedObjects];
    selectedObjects = self->_selectedObjects;
    self->_selectedObjects = fetchSelectedObjects;
  }

  privacyController = [(PXSelectionContainer *)self privacyController];
  if ([privacyController isLocked])
  {
    v7 = [(PXSelectionContainer *)self firstSelectedObjectOfClass:objc_opt_class()];

    if (v7)
    {
      v8 = MEMORY[0x1E695E0F0];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v8 = self->_selectedObjects;
LABEL_8:

  return v8;
}

- (id)selectedObjects:(BOOL)objects
{
  if (objects && ![(PXSelectionContainer *)self hasExplicitSelection])
  {
    allDataSourceObjects = [(PXSelectionContainer *)self allDataSourceObjects];
  }

  else
  {
    allDataSourceObjects = [(PXSelectionContainer *)self selectedObjects];
  }

  return allDataSourceObjects;
}

- (int64_t)selectionCount
{
  privacyController = [(PXSelectionContainer *)self privacyController];
  isLocked = [privacyController isLocked];

  if (isLocked)
  {
    return 0;
  }

  selectionSnapshot = [(PXSelectionContainer *)self selectionSnapshot];
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  v8 = [selectedIndexPaths count];

  return v8;
}

- (PXSelectionContainer)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSelectionContainer.m" lineNumber:168 description:{@"%s is not available as initializer", "-[PXSelectionContainer init]"}];

  abort();
}

- (PXSelectionContainer)initWithCollection:(id)collection collectionFetcher:(id)fetcher undoManager:(id)manager context:(int64_t)context
{
  fetcherCopy = fetcher;
  v11 = [(PXSelectionContainer *)self initWithContent:MEMORY[0x1E695E0F0] collection:collection undoManager:manager context:context];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_collectionFetcher, fetcherCopy);
  }

  return v12;
}

- (PXSelectionContainer)initWithContent:(id)content collection:(id)collection undoManager:(id)manager context:(int64_t)context
{
  managerCopy = manager;
  collectionCopy = collection;
  contentCopy = content;
  v13 = [[PXArrayDataSection alloc] initWithSectionContent:contentCopy];

  v14 = [(PXSelectionContainer *)self initWithDataSection:v13 collection:collectionCopy undoManager:managerCopy context:context];
  return v14;
}

- (PXSelectionContainer)initWithDataSection:(id)section collection:(id)collection undoManager:(id)manager context:(int64_t)context
{
  v26[1] = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  collectionCopy = collection;
  managerCopy = manager;
  v10 = [PXStackedDataSource alloc];
  v26[0] = sectionCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v12 = [(PXStackedDataSource *)v10 initWithDataSections:v11];

  v13 = objc_alloc_init(off_1E77217C8);
  if ([sectionCopy count] >= 1)
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v25[0] = [(PXStackedDataSource *)v12 identifier];
      v25[1] = 0;
      v25[2] = v15;
      v25[3] = 0x7FFFFFFFFFFFFFFFLL;
      [v13 addIndexPath:v25];
      if (!v14)
      {
        break;
      }

LABEL_14:
      if (++v15 >= [sectionCopy count])
      {
        goto LABEL_18;
      }
    }

    v16 = [sectionCopy objectAtIndex:v15];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v17 = v16;

      if (!v17)
      {
        v14 = 0;
        goto LABEL_13;
      }

      v18 = [PXContentPrivacyController privacyControllerForCollection:v17];
      v16 = v18;
      if (v18 && [v18 isLocked])
      {
        v16 = v16;
        v14 = v16;
LABEL_12:

LABEL_13:
        goto LABEL_14;
      }
    }

    else
    {
      v17 = 0;
    }

    v14 = 0;
    goto LABEL_12;
  }

  v14 = 0;
LABEL_18:
  v19 = [[off_1E77218D8 alloc] initWithDataSource:v12 selectedIndexPaths:v13];
  v20 = [(PXSelectionContainer *)self initWithSelectionSnapshot:v19 collection:collectionCopy undoManager:managerCopy context:context privacyController:v14 changeHistory:0];

  return v20;
}

- (PXSelectionContainer)initWithSelectionSnapshot:(id)snapshot collection:(id)collection undoManager:(id)manager context:(int64_t)context privacyController:(id)controller changeHistory:(id)history
{
  snapshotCopy = snapshot;
  collectionCopy = collection;
  managerCopy = manager;
  controllerCopy = controller;
  historyCopy = history;
  v32.receiver = self;
  v32.super_class = PXSelectionContainer;
  v18 = [(PXSelectionContainer *)&v32 init];
  if (v18)
  {
    v28 = managerCopy;
    v29 = snapshotCopy;
    container = collectionCopy;
    containerCollection = container;
    if (!container)
    {
      dataSource = [snapshotCopy dataSource];
      if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v22 = dataSource;
      }

      else
      {
        v22 = 0;
      }

      containerCollection = [v22 containerCollection];
      container = [v22 container];
    }

    objc_storeStrong(&v18->_selectionSnapshot, snapshot);
    objc_storeStrong(&v18->_undoManager, manager);
    v18->_context = context;
    collection = v18->_collection;
    v18->_collection = containerCollection;
    v24 = containerCollection;

    assetsContainer = v18->_assetsContainer;
    v18->_assetsContainer = container;
    v26 = container;

    objc_storeStrong(&v18->_privacyController, controller);
    objc_storeStrong(&v18->_changeHistory, history);

    managerCopy = v28;
    snapshotCopy = v29;
  }

  return v18;
}

@end