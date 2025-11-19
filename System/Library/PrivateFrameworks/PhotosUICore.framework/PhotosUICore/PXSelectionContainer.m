@interface PXSelectionContainer
- (BOOL)allowImplicitSelectionForProjectsOrSharing;
- (BOOL)containsAssetsWithNonEditableProperties;
- (BOOL)containsContentSyndicationAssets;
- (BOOL)containsMemories;
- (BOOL)containsNonContentSyndicationAssets;
- (BOOL)containsObjectOfClass:(Class)a3 passingTest:(id)a4;
- (BOOL)containsPeople;
- (BOOL)containsRAWAssets;
- (BOOL)containsRAWPlusJPEGAssets;
- (BOOL)containsReferencedFileAssets;
- (BOOL)containsSensitiveAssets;
- (BOOL)containsSpatialAssets;
- (BOOL)containsSpatialVideoAssets;
- (BOOL)containsUnsavedContentSyndicationAssets;
- (BOOL)hasAnyChangesFromSelection:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSelection:(id)a3;
- (NSString)title;
- (PXDisplayCollectionFetcher)collectionFetcher;
- (PXFastEnumeration)allDataSourceObjects;
- (PXFastEnumeration)selectedContainedAssetsForProjectsOrSharing;
- (PXFastEnumeration)selectedObjects;
- (PXSelectionContainer)init;
- (PXSelectionContainer)initWithCollection:(id)a3 collectionFetcher:(id)a4 undoManager:(id)a5 context:(int64_t)a6;
- (PXSelectionContainer)initWithContent:(id)a3 collection:(id)a4 undoManager:(id)a5 context:(int64_t)a6;
- (PXSelectionContainer)initWithDataSection:(id)a3 collection:(id)a4 undoManager:(id)a5 context:(int64_t)a6;
- (PXSelectionContainer)initWithSelectionSnapshot:(id)a3 collection:(id)a4 undoManager:(id)a5 context:(int64_t)a6 privacyController:(id)a7 changeHistory:(id)a8;
- (id)description;
- (id)firstSelectedObjectOfClass:(Class)a3;
- (id)selectedContainedAssets:(BOOL)a3;
- (id)selectedContainedAssets:(BOOL)a3 allowedClasses:(id)a4;
- (id)selectedObjects:(BOOL)a3;
- (id)selectedObjectsOfClass:(Class)a3;
- (id)selectedObjectsOrContainerOfClass:(Class)a3;
- (id)singleSelectedObjectOfClass:(Class)a3;
- (int64_t)selectionCount;
- (unint64_t)hash;
- (void)enumerateSelectedObjectsOfClass:(Class)a3 usingBlock:(id)a4;
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
  v5 = [(PXSelectionContainer *)self context];
  if ((v5 - 1) > 0x1E)
  {
    v6 = @"Undefined";
  }

  else
  {
    v6 = off_1E7739BD0[v5 - 1];
  }

  v7 = v6;
  v8 = [v3 stringWithFormat:@"<%@: %p context = %@>", v4, self, v7];;

  return v8;
}

- (unint64_t)hash
{
  v3 = [(PXSelectionContainer *)self selectionSnapshot];
  v4 = [v3 dataSource];
  v5 = [v4 hash];
  v6 = [(PXSelectionContainer *)self selectionSnapshot];
  v7 = [v6 selectedIndexPaths];
  v8 = [v7 hash];

  return v8 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PXSelectionContainer *)self isEqualToSelection:v4];
  }

  return v5;
}

- (BOOL)hasAnyChangesFromSelection:(id)a3
{
  v4 = a3;
  v5 = [(PXSelectionContainer *)self selectionCount];
  if (v5 == [v4 selectionCount])
  {
    v6 = [v4 selectionSnapshot];
    v7 = [v6 dataSource];
    v8 = [v7 identifier];

    v9 = [(PXSelectionContainer *)self selectionSnapshot];
    v10 = [v9 dataSource];
    v11 = [v10 identifier];

    v12 = [(PXSelectionContainer *)self changeHistory];
    v13 = [v12 coalescedChangeDetailsFromDataSourceIdentifier:v8 toDataSourceIdentifier:v11];

    if (v13 && [(PXSelectionContainer *)self selectionCount])
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 0;
      v14 = [(PXSelectionContainer *)self selectionSnapshot];
      v15 = [v14 selectedIndexPaths];

      v16 = [v4 selectionSnapshot];
      v17 = [v16 selectedIndexPaths];

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __51__PXSelectionContainer_hasAnyChangesFromSelection___block_invoke;
      v21[3] = &unk_1E7739BB0;
      v22 = v13;
      v18 = v15;
      v23 = v18;
      v24 = &v25;
      [v17 enumerateItemIndexPathsUsingBlock:v21];
      v19 = *(v26 + 24);

      _Block_object_dispose(&v25, 8);
    }

    else
    {
      v19 = ![(PXSelectionContainer *)self isEqualToSelection:v4];
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

- (BOOL)isEqualToSelection:(id)a3
{
  v4 = a3;
  v5 = [(PXSelectionContainer *)self selectionCount];
  if (v5 == [v4 selectionCount] && (v6 = -[PXSelectionContainer context](self, "context"), v6 == objc_msgSend(v4, "context")) && (-[PXSelectionContainer selectionSnapshot](self, "selectionSnapshot"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "dataSource"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "selectionSnapshot"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "dataSource"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "isEqual:", v10), v10, v9, v8, v7, v11))
  {
    v12 = [(PXSelectionContainer *)self selectionSnapshot];
    v13 = [v12 selectedIndexPaths];
    v14 = [v4 selectionSnapshot];
    v15 = [v14 selectedIndexPaths];
    v16 = [v13 isEqual:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (NSString)title
{
  v3 = [(PXSelectionContainer *)self selectionSnapshot];
  v4 = [v3 dataSource];

  v5 = [(PXSelectionContainer *)self selectionSnapshot];
  v6 = [v5 selectedIndexPaths];

  if ([(PXSelectionContainer *)self context]== 17)
  {
    v7 = [(PXSelectionContainer *)self selectionSnapshot];
    v8 = [v7 firstObject];

    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v14 = [(PXSelectionContainer *)self selectionSnapshot];
    v15 = [v14 firstObject];

    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = [(PXSelectionContainer *)self collection];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v9)
    {
      v19 = [(PXSelectionContainer *)self selectionSnapshot];
      v20 = [v19 allItemsEnumerator];
      v21 = [PXPeopleUtilities titleStringForPeople:v20];
    }

    else if (v16)
    {
      v21 = [PXPeopleUtilities titleStringForSocialGroup:v16];
    }

    else if (v18)
    {
      if ([v4 totalNumberOfItems])
      {
        [v18 photoLibrary];
        v32 = [objc_claimAutoreleasedReturnValue() px_peoplePetsHomeVisibility];
        PXLocalizedStringForPersonOrPetAndVisibility(0, v32, @"PXPeopleHomeSummaryQuantityTitle");
        objc_claimAutoreleasedReturnValue();
        PXLocalizedStringWithValidatedFormat();
      }

      v21 = &stru_1F1741150;
    }

    else
    {
      v21 = 0;
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
    v35 = v4;
    v9 = v11;
    v36 = v9;
    v39 = &v42;
    v13 = v12;
    v37 = self;
    v38 = v13;
    [v6 enumerateItemIndexSetsUsingBlock:v34];
    if (v43[3] >= 3)
    {
      PXLocalizedStringFromTable(@"PXCollectionPickerAdditionalMomentsFormat", @"PhotosUICore");
      objc_claimAutoreleasedReturnValue();
      PXLocalizedStringWithValidatedFormat();
    }

    v22 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v9];
    v23 = [v22 array];

    if ([v23 count])
    {
      v24 = PXLocalizedStringFromTable(@"PXCollectionPickerNewCollectionNameComponentsSeparator", @"PhotosUICore");
      v21 = [v23 componentsJoinedByString:v24];
    }

    else
    {
      v21 = 0;
    }

    _Block_object_dispose(&v42, 8);
  }

  if (!v21)
  {
    v25 = [(PXSelectionContainer *)self collection];
    v21 = [v25 localizedTitle];

    if (!v21)
    {
      v26 = [(PXSelectionContainer *)self collection];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = MEMORY[0x1E69BE3B8];
        v28 = v26;
        v29 = [[v27 alloc] initWithPreset:2];
        v30 = [v28 localStartDate];
        v31 = [v28 localEndDate];

        v21 = [v29 stringFromDate:v30 toDate:v31];
      }

      else if ([(PXSelectionContainer *)self context]== 23)
      {
        v21 = PXLocalizedStringFromTable(@"SEARCH_TITLE", @"PhotosUICore");
      }

      else
      {
        v21 = 0;
      }
    }
  }

  return v21;
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
    v3 = [(PXSelectionContainer *)self selectionSnapshot];
    v4 = [v3 dataSource];

    v5 = [v4 fetchAllItemObjects];
    allDataSourceObjects = self->_allDataSourceObjects;
    self->_allDataSourceObjects = v5;
  }

  v7 = [(PXSelectionContainer *)self privacyController];
  v8 = [v7 isLocked];

  if (v8)
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
  v3 = [(PXSelectionContainer *)self allowImplicitSelectionForProjectsOrSharing];

  return [(PXSelectionContainer *)self selectedContainedAssets:v3];
}

- (BOOL)allowImplicitSelectionForProjectsOrSharing
{
  v3 = [(PXSelectionContainer *)self context];
  if (v3 > 0x1C)
  {
    return 0;
  }

  if (((1 << v3) & 0x1808008) != 0)
  {
    return 1;
  }

  if (((1 << v3) & 0x18000000) == 0)
  {
    return 0;
  }

  v5 = [(PXSelectionContainer *)self collection];
  v6 = [v5 px_allowsImplicitSelectionForProjectOrSharingAction];

  return v6;
}

- (id)selectedContainedAssets:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v6 = [(PXSelectionContainer *)self selectedContainedAssets:v3 allowedClasses:v5];

  return v6;
}

- (id)selectedContainedAssets:(BOOL)a3 allowedClasses:(id)a4
{
  v4 = a3;
  v8 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [(PXSelectionContainer *)self selectedObjects:v4];
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
  v3 = [(PXSelectionContainer *)self shouldCheckAssetSensitivity];
  if (v3)
  {
    v3 = [MEMORY[0x1E6978AB0] sensitiveContentAnalysisEnabled];
    if (v3)
    {
      if ([(PXSelectionContainer *)self hasExplicitSelection])
      {
        v4 = objc_opt_class();

        LOBYTE(v3) = [(PXSelectionContainer *)self containsObjectOfClass:v4 passingTest:&__block_literal_global_330_110560];
      }

      else
      {
        LOBYTE(v3) = 1;
      }
    }
  }

  return v3;
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

- (BOOL)containsObjectOfClass:(Class)a3 passingTest:(id)a4
{
  v6 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__PXSelectionContainer_containsObjectOfClass_passingTest___block_invoke;
  v9[3] = &unk_1E7739A40;
  v11 = &v12;
  v7 = v6;
  v10 = v7;
  [(PXSelectionContainer *)self enumerateSelectedObjectsOfClass:a3 usingBlock:v9];
  LOBYTE(a3) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return a3;
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

- (id)selectedObjectsOrContainerOfClass:(Class)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [(PXSelectionContainer *)self selectedObjectsOfClass:?];
  if (![v4 count])
  {
    v5 = [(PXSelectionContainer *)self assetsContainer];
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [(PXSelectionContainer *)self assetsContainer];
      v10[0] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

      v4 = v8;
    }
  }

  return v4;
}

- (id)selectedObjectsOfClass:(Class)a3
{
  v5 = [MEMORY[0x1E695DF70] array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__PXSelectionContainer_selectedObjectsOfClass___block_invoke;
  v8[3] = &unk_1E773F900;
  v6 = v5;
  v9 = v6;
  [(PXSelectionContainer *)self enumerateSelectedObjectsOfClass:a3 usingBlock:v8];

  return v6;
}

- (void)enumerateSelectedObjectsOfClass:(Class)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = [(PXSelectionContainer *)self selectionSnapshot];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__PXSelectionContainer_enumerateSelectedObjectsOfClass_usingBlock___block_invoke;
  v9[3] = &unk_1E7739A18;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [v7 enumerateSelectedObjectsUsingBlock:v9];
}

void __67__PXSelectionContainer_enumerateSelectedObjectsOfClass_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)singleSelectedObjectOfClass:(Class)a3
{
  if ([(PXSelectionContainer *)self selectionCount]== 1)
  {
    v5 = [(PXSelectionContainer *)self firstSelectedObjectOfClass:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)firstSelectedObjectOfClass:(Class)a3
{
  v3 = [(PXSelectionContainer *)self selectionSnapshot];
  v4 = [v3 firstObject];

  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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
    v3 = [(PXSelectionContainer *)self selectionSnapshot];
    v4 = [v3 fetchSelectedObjects];
    selectedObjects = self->_selectedObjects;
    self->_selectedObjects = v4;
  }

  v6 = [(PXSelectionContainer *)self privacyController];
  if ([v6 isLocked])
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

- (id)selectedObjects:(BOOL)a3
{
  if (a3 && ![(PXSelectionContainer *)self hasExplicitSelection])
  {
    v4 = [(PXSelectionContainer *)self allDataSourceObjects];
  }

  else
  {
    v4 = [(PXSelectionContainer *)self selectedObjects];
  }

  return v4;
}

- (int64_t)selectionCount
{
  v3 = [(PXSelectionContainer *)self privacyController];
  v4 = [v3 isLocked];

  if (v4)
  {
    return 0;
  }

  v6 = [(PXSelectionContainer *)self selectionSnapshot];
  v7 = [v6 selectedIndexPaths];
  v8 = [v7 count];

  return v8;
}

- (PXSelectionContainer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSelectionContainer.m" lineNumber:168 description:{@"%s is not available as initializer", "-[PXSelectionContainer init]"}];

  abort();
}

- (PXSelectionContainer)initWithCollection:(id)a3 collectionFetcher:(id)a4 undoManager:(id)a5 context:(int64_t)a6
{
  v10 = a4;
  v11 = [(PXSelectionContainer *)self initWithContent:MEMORY[0x1E695E0F0] collection:a3 undoManager:a5 context:a6];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_collectionFetcher, v10);
  }

  return v12;
}

- (PXSelectionContainer)initWithContent:(id)a3 collection:(id)a4 undoManager:(id)a5 context:(int64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[PXArrayDataSection alloc] initWithSectionContent:v12];

  v14 = [(PXSelectionContainer *)self initWithDataSection:v13 collection:v11 undoManager:v10 context:a6];
  return v14;
}

- (PXSelectionContainer)initWithDataSection:(id)a3 collection:(id)a4 undoManager:(id)a5 context:(int64_t)a6
{
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v24 = a4;
  v9 = a5;
  v10 = [PXStackedDataSource alloc];
  v26[0] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v12 = [(PXStackedDataSource *)v10 initWithDataSections:v11];

  v13 = objc_alloc_init(off_1E77217C8);
  if ([v8 count] >= 1)
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
      if (++v15 >= [v8 count])
      {
        goto LABEL_18;
      }
    }

    v16 = [v8 objectAtIndex:v15];
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
  v20 = [(PXSelectionContainer *)self initWithSelectionSnapshot:v19 collection:v24 undoManager:v9 context:a6 privacyController:v14 changeHistory:0];

  return v20;
}

- (PXSelectionContainer)initWithSelectionSnapshot:(id)a3 collection:(id)a4 undoManager:(id)a5 context:(int64_t)a6 privacyController:(id)a7 changeHistory:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v31 = a7;
  v17 = a8;
  v32.receiver = self;
  v32.super_class = PXSelectionContainer;
  v18 = [(PXSelectionContainer *)&v32 init];
  if (v18)
  {
    v28 = v16;
    v29 = v14;
    v19 = v15;
    v20 = v19;
    if (!v19)
    {
      v21 = [v14 dataSource];
      if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v20 = [v22 containerCollection];
      v19 = [v22 container];
    }

    objc_storeStrong(&v18->_selectionSnapshot, a3);
    objc_storeStrong(&v18->_undoManager, a5);
    v18->_context = a6;
    collection = v18->_collection;
    v18->_collection = v20;
    v24 = v20;

    assetsContainer = v18->_assetsContainer;
    v18->_assetsContainer = v19;
    v26 = v19;

    objc_storeStrong(&v18->_privacyController, a7);
    objc_storeStrong(&v18->_changeHistory, a8);

    v16 = v28;
    v14 = v29;
  }

  return v18;
}

@end