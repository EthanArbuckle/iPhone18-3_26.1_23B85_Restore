@interface PLResourceChooser
+ (id)_chooseFileReservationForLargeDisplayableImageFileForAsset:(id)asset format:(id)format forceLarge:(BOOL)large allowMetadataSnapshot:(BOOL)snapshot outFilePath:(id *)path outImageType:(int64_t *)type;
+ (id)_filteredArrayUsingPredicate:(id)predicate originalItems:(id)items nonMatchingItems:(id *)matchingItems;
+ (id)_itemMatchingFormat:(id)format allItems:(id)items acceptableSortedAlternatives:(id *)alternatives;
+ (id)_originalItemFromAllItems:(id)items;
+ (id)_penultimateItemFromAllItems:(id)items;
+ (id)fileReservationForImageFileForAsset:(id)asset format:(id)format outFilePath:(id *)path outImageType:(int64_t *)type;
+ (id)fileReservationForLargeDisplayableImageFileForAsset:(id)asset format:(id)format allowMetadataSnapshot:(BOOL)snapshot forceLarge:(BOOL)large outFilePath:(id *)path outImageType:(int64_t *)type;
+ (int64_t)_fileResourceTypeForCloudResourceType:(unint64_t)type hasAdjustments:(BOOL)adjustments requiresUnadjustedVersion:(BOOL)version;
+ (unint64_t)cloudResourceTypeForAsset:(id)asset format:(id)format filePath:(id *)path imageType:(int64_t *)type;
+ (void)_chooseCloudResourceTypeForFormat:(id)format asset:(id)asset optimalCPLResourceType:(unint64_t *)type localCPLResourceType:(unint64_t *)resourceType localCPLResourceFilePath:(id *)path fileReservation:(id *)reservation;
- (PLResourceChooser)init;
@end

@implementation PLResourceChooser

- (PLResourceChooser)init
{
  v3.receiver = self;
  v3.super_class = PLResourceChooser;
  return [(PLResourceChooser *)&v3 init];
}

+ (unint64_t)cloudResourceTypeForAsset:(id)asset format:(id)format filePath:(id *)path imageType:(int64_t *)type
{
  assetCopy = asset;
  formatCopy = format;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v12 = &v21;
  [self _chooseCloudResourceTypeForFormat:formatCopy asset:assetCopy optimalCPLResourceType:&v21 localCPLResourceType:&v20 localCPLResourceFilePath:&v19 fileReservation:0];
  v13 = v19;
  if (v20)
  {
    hasAdjustments = [assetCopy hasAdjustments];
    v15 = [self _fileResourceTypeForCloudResourceType:v20 hasAdjustments:hasAdjustments requiresUnadjustedVersion:{objc_msgSend(formatCopy, "refersToUnadjustedVersion")}];
    v12 = &v20;
  }

  else
  {
    v15 = 0;
  }

  v16 = *v12;
  if (path)
  {
    v17 = v13;
    *path = v13;
  }

  if (type)
  {
    *type = v15;
  }

  return v16;
}

+ (int64_t)_fileResourceTypeForCloudResourceType:(unint64_t)type hasAdjustments:(BOOL)adjustments requiresUnadjustedVersion:(BOOL)version
{
  result = type;
  if (type > 3)
  {
    if (type > 16)
    {
      if (type == 23)
      {
        return 4;
      }

      if (type == 17)
      {
        return 2;
      }
    }

    else
    {
      if (type == 4)
      {
        return 9;
      }

      if (type == 15)
      {
        return 6;
      }
    }

    return 0;
  }

  if (type == 1)
  {
    return result;
  }

  if (type != 2)
  {
    if (type == 3)
    {
      return 8;
    }

    return 0;
  }

  if (!adjustments || version)
  {
    return 3;
  }

  else
  {
    return 5;
  }
}

+ (void)_chooseCloudResourceTypeForFormat:(id)format asset:(id)asset optimalCPLResourceType:(unint64_t *)type localCPLResourceType:(unint64_t *)resourceType localCPLResourceFilePath:(id *)path fileReservation:(id *)reservation
{
  v71 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  assetCopy = asset;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__51940;
  v63 = __Block_byref_object_dispose__51941;
  v64 = 0;
  if (([formatCopy refersToUnadjustedVersion] & 1) != 0 || (objc_msgSend(assetCopy, "hasAdjustments") & 1) == 0)
  {
    availableUnadjustedCloudResourcesForPhotos = [assetCopy availableUnadjustedCloudResourcesForPhotos];
    v14 = [availableUnadjustedCloudResourcesForPhotos mutableCopy];
  }

  else
  {
    v11 = [MEMORY[0x1E69BF260] formatWithID:9997];
    v12 = [formatCopy isEqualToFormat:v11];

    if (v12)
    {
      [assetCopy availableAdjustedCloudResourcesForPhotos:1];
    }

    else
    {
      [assetCopy availableAdjustedCloudResourcesForPhotos:0];
    }
    availableUnadjustedCloudResourcesForPhotos = ;
    v14 = [availableUnadjustedCloudResourcesForPhotos mutableCopy];
  }

  v15 = v14;

  if ([formatCopy formatID] == 10000)
  {
    if ([assetCopy isRAWPlusJPEG])
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"cplType == %d", 17];
    }

    else
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"cplType == %d", 1];
    }
    v16 = ;
    v17 = [v15 filteredArrayUsingPredicate:v16];
    v19 = [v17 mutableCopy];

LABEL_14:
    goto LABEL_31;
  }

  if ([assetCopy hasAdjustments])
  {
    isOriginalRAW = [assetCopy isOriginalRAW];
  }

  else
  {
    isOriginalRAW = [assetCopy isRAW];
  }

  v20 = isOriginalRAW;
  isRAWPlusJPEG = [assetCopy isRAWPlusJPEG];
  if (((v20 | isRAWPlusJPEG) & 1) != 0 && [v15 count] >= 2)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v16 = v15;
    v22 = [v16 countByEnumeratingWithState:&v55 objects:v70 count:16];
    if (v22)
    {
      v23 = *v56;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v56 != v23)
          {
            objc_enumerationMutation(v16);
          }

          v25 = *(*(&v55 + 1) + 8 * i);
          if (v20 && [*(*(&v55 + 1) + 8 * i) cplType] == 1 || isRAWPlusJPEG && objc_msgSend(v25, "cplType") == 17)
          {
            [v16 removeObject:v25];
            v19 = v16;
            goto LABEL_14;
          }
        }

        v22 = [v16 countByEnumeratingWithState:&v55 objects:v70 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v19 = v16;
    goto LABEL_14;
  }

  v19 = v15;
LABEL_31:
  v26 = [PLChoosableItem choosableItemsFromCloudResources:v19];
  v54 = 0;
  v27 = [self _itemMatchingFormat:formatCopy allItems:v26 acceptableSortedAlternatives:&v54];
  v28 = v54;
  if (v27)
  {
    type = [v27 type];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __146__PLResourceChooser__chooseCloudResourceTypeForFormat_asset_optimalCPLResourceType_localCPLResourceType_localCPLResourceFilePath_fileReservation___block_invoke;
    aBlock[3] = &unk_1E756D9A0;
    v51 = v19;
    v52 = &v65;
    v53 = &v59;
    v30 = _Block_copy(aBlock);
    v31 = v30[2](v30, [v27 type]);
    if (!v31)
    {
      if ([v28 count])
      {
        v40 = type;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v32 = v28;
        v33 = [v32 countByEnumeratingWithState:&v46 objects:v69 count:16];
        v38 = v28;
        v39 = formatCopy;
        if (v33)
        {
          v34 = *v47;
LABEL_36:
          v35 = 0;
          while (1)
          {
            if (*v47 != v34)
            {
              objc_enumerationMutation(v32);
            }

            v31 = v30[2](v30, [*(*(&v46 + 1) + 8 * v35) type]);
            if (v31)
            {
              break;
            }

            if (v33 == ++v35)
            {
              v33 = [v32 countByEnumeratingWithState:&v46 objects:v69 count:16];
              if (v33)
              {
                goto LABEL_36;
              }

              goto LABEL_42;
            }
          }
        }

        else
        {
LABEL_42:
          v31 = 0;
        }

        v28 = v38;
        formatCopy = v39;
        type = v40;
      }

      else
      {
        v31 = 0;
      }
    }

    v36 = type;
  }

  else
  {
    v31 = 0;
    v36 = 0;
  }

  if (type)
  {
    *type = v36;
  }

  if (resourceType)
  {
    *resourceType = v66[3];
  }

  if (path)
  {
    *path = v60[5];
  }

  if (reservation)
  {
    v37 = v31;
    *reservation = v31;
  }

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v65, 8);
}

id __146__PLResourceChooser__chooseCloudResourceTypeForFormat_asset_optimalCPLResourceType_localCPLResourceType_localCPLResourceFilePath_fileReservation___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __146__PLResourceChooser__chooseCloudResourceTypeForFormat_asset_optimalCPLResourceType_localCPLResourceType_localCPLResourceFilePath_fileReservation___block_invoke_2;
  v9[3] = &__block_descriptor_40_e35_B32__0__PLInternalResource_8Q16_B24l;
  v9[4] = a2;
  v4 = [*(a1 + 32) objectAtIndexedSubscript:{objc_msgSend(v3, "indexOfObjectPassingTest:", v9)}];
  v5 = [v4 cplFileURL];
  v6 = [v5 path];

  v7 = [PLPhotoLibrary fileReservationForFileAtPath:v6 exclusive:0];
  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v4 cplType];
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v6);
  }

  return v7;
}

+ (id)_itemMatchingFormat:(id)format allItems:(id)items acceptableSortedAlternatives:(id *)alternatives
{
  v37[2] = *MEMORY[0x1E69E9840];
  formatCopy = format;
  itemsCopy = items;
  if ([formatCopy refersToOriginalVersion])
  {
    v10 = [self _originalItemFromAllItems:itemsCopy];
    goto LABEL_5;
  }

  if ([formatCopy refersToPenultimateVersion])
  {
    v10 = [self _penultimateItemFromAllItems:itemsCopy];
LABEL_5:
    firstObject = v10;
    v12 = 0;
    if (!alternatives)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (_itemMatchingFormat_allItems_acceptableSortedAlternatives__onceToken1 != -1)
  {
    dispatch_once(&_itemMatchingFormat_allItems_acceptableSortedAlternatives__onceToken1, &__block_literal_global_86);
  }

  v35 = [self _filteredArrayUsingPredicate:_itemMatchingFormat_allItems_acceptableSortedAlternatives__displayablePredicate originalItems:itemsCopy nonMatchingItems:0];
  v15 = [v35 sortedArrayUsingComparator:&__block_literal_global_97];
  lastObject = [v15 lastObject];
  [formatCopy size];
  width = v17;
  height = v19;
  if ((PLImageFormatSizeIsMaxSize() & 1) != 0 || width > [lastObject width] || height > objc_msgSend(lastObject, "height"))
  {
    width = [lastObject width];
    height = [lastObject height];
  }

  v33 = lastObject;
  if ([formatCopy isThumbnail])
  {
    v21 = [formatCopy isTable] ^ 1;
  }

  else
  {
    v21 = 0;
  }

  v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"width >= %f AND height >= %f", *&width, *&height];
  v23 = v22;
  v32 = v22;
  if (v21)
  {
    v24 = [MEMORY[0x1E696AE18] predicateWithFormat:@"type == %d", 5];
    v25 = MEMORY[0x1E696AB28];
    v37[0] = v23;
    v37[1] = v24;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
    v27 = [v25 orPredicateWithSubpredicates:v26];
  }

  else
  {
    v27 = v22;
  }

  v28 = [self _filteredArrayUsingPredicate:v27 originalItems:v15 nonMatchingItems:0];
  v34 = v15;
  if (_itemMatchingFormat_allItems_acceptableSortedAlternatives__onceToken2 != -1)
  {
    dispatch_once(&_itemMatchingFormat_allItems_acceptableSortedAlternatives__onceToken2, &__block_literal_global_102_51954);
  }

  v36 = 0;
  v29 = [self _filteredArrayUsingPredicate:_itemMatchingFormat_allItems_acceptableSortedAlternatives__jpegPredicate originalItems:v28 nonMatchingItems:&v36];
  v30 = v36;
  array = [MEMORY[0x1E695DF70] array];
  [array addObjectsFromArray:v29];
  [array addObjectsFromArray:v30];
  firstObject = [array firstObject];
  v12 = 0;
  if ([array count] >= 2)
  {
    [array removeObjectAtIndex:0];
    v12 = array;
  }

  if (alternatives)
  {
LABEL_6:
    v13 = v12;
    *alternatives = v12;
  }

LABEL_7:

  return firstObject;
}

void __79__PLResourceChooser__itemMatchingFormat_allItems_acceptableSortedAlternatives___block_invoke_3()
{
  v0 = MEMORY[0x1E696AE18];
  v3 = [*MEMORY[0x1E6982E58] identifier];
  v1 = [v0 predicateWithFormat:@"uniformTypeIdentifier UTI-EQUALS %@", v3];
  v2 = _itemMatchingFormat_allItems_acceptableSortedAlternatives__jpegPredicate;
  _itemMatchingFormat_allItems_acceptableSortedAlternatives__jpegPredicate = v1;
}

void __79__PLResourceChooser__itemMatchingFormat_allItems_acceptableSortedAlternatives___block_invoke()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696AE18];
  v1 = [*MEMORY[0x1E6982F88] identifier];
  v2 = [v0 predicateWithFormat:@"NOT uniformTypeIdentifier UTI-EQUALS %@", v1];

  v3 = MEMORY[0x1E696AE18];
  v4 = [*MEMORY[0x1E6982E30] identifier];
  v5 = [v3 predicateWithFormat:@"uniformTypeIdentifier UTI-CONFORMS-TO %@", v4];

  v6 = MEMORY[0x1E696AB28];
  v10[0] = v2;
  v10[1] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v8 = [v6 andPredicateWithSubpredicates:v7];
  v9 = _itemMatchingFormat_allItems_acceptableSortedAlternatives__displayablePredicate;
  _itemMatchingFormat_allItems_acceptableSortedAlternatives__displayablePredicate = v8;
}

+ (id)_filteredArrayUsingPredicate:(id)predicate originalItems:(id)items nonMatchingItems:(id *)matchingItems
{
  v25 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  itemsCopy = items;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = itemsCopy;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        if ([predicateCopy evaluateWithObject:{v16, v20}])
        {
          v17 = array;
        }

        else
        {
          v17 = array2;
        }

        [v17 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  if (matchingItems)
  {
    v18 = array2;
    *matchingItems = array2;
  }

  return array;
}

+ (id)_penultimateItemFromAllItems:(id)items
{
  v3 = MEMORY[0x1E696AE18];
  itemsCopy = items;
  v5 = [v3 predicateWithFormat:@"type == %d", 15];
  v6 = [itemsCopy filteredArrayUsingPredicate:v5];

  if ([v6 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_originalItemFromAllItems:(id)items
{
  v3 = MEMORY[0x1E696AE18];
  itemsCopy = items;
  v5 = [v3 predicateWithFormat:@"type == %d OR type == %d", 17, 1];
  v6 = [itemsCopy filteredArrayUsingPredicate:v5];

  if ([v6 count] < 2)
  {
    v9 = [v6 count];
    v7 = 0;
    if (v9 != 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = [v6 indexOfObjectPassingTest:&__block_literal_global_81];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_3:
      v8 = 0;
      goto LABEL_6;
    }
  }

  v8 = [v6 objectAtIndexedSubscript:v7];
LABEL_6:

  return v8;
}

+ (id)fileReservationForImageFileForAsset:(id)asset format:(id)format outFilePath:(id *)path outImageType:(int64_t *)type
{
  assetCopy = asset;
  formatCopy = format;
  formatID = [formatCopy formatID];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__51940;
  v33 = __Block_byref_object_dispose__51941;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__51940;
  v27 = __Block_byref_object_dispose__51941;
  v28 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__PLResourceChooser_fileReservationForImageFileForAsset_format_outFilePath_outImageType___block_invoke;
  aBlock[3] = &unk_1E756D8F0;
  aBlock[4] = &v23;
  aBlock[5] = &v29;
  aBlock[6] = &v35;
  v12 = _Block_copy(aBlock);
  if (formatID == 9997)
  {
    pathForPenultimateFullsizeRenderImageFile = [assetCopy pathForPenultimateFullsizeRenderImageFile];
    v12[2](v12, pathForPenultimateFullsizeRenderImageFile, 6);
LABEL_10:

    goto LABEL_11;
  }

  if (formatID == 10000)
  {
    urlForSideCarImageFile = [assetCopy urlForSideCarImageFile];
    path = [urlForSideCarImageFile path];
    v12[2](v12, path, 2);

    if (v24[5])
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  if (formatID != 9999)
  {
    v16 = (v30 + 5);
    obj = v30[5];
    v17 = [PLResourceChooser fileReservationForLargeDisplayableImageFileForAsset:assetCopy format:formatCopy allowMetadataSnapshot:0 forceLarge:1 outFilePath:&obj outImageType:v36 + 3];
    objc_storeStrong(v16, obj);
    pathForPenultimateFullsizeRenderImageFile = v24[5];
    v24[5] = v17;
    goto LABEL_10;
  }

  if ([assetCopy isPrimaryImageFormat] || (objc_msgSend(assetCopy, "pathForNonAdjustedFullsizeImageFile"), v20 = objc_claimAutoreleasedReturnValue(), v12[2](v12, v20, 3), v20, !v24[5]))
  {
LABEL_19:
    pathForPenultimateFullsizeRenderImageFile = [assetCopy pathForOriginalFile];
    v12[2](v12, pathForPenultimateFullsizeRenderImageFile, 1);
    goto LABEL_10;
  }

LABEL_11:
  if (path)
  {
    *path = v30[5];
  }

  if (type)
  {
    *type = v36[3];
  }

  v18 = v24[5];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);

  return v18;
}

void __89__PLResourceChooser_fileReservationForImageFileForAsset_format_outFilePath_outImageType___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6)
  {
    v10 = v6;
    v7 = [PLPhotoLibrary fileReservationForFileAtPath:v6 exclusive:0];
    v8 = *(a1[4] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v6 = v10;
    if (*(*(a1[4] + 8) + 40))
    {
      objc_storeStrong((*(a1[5] + 8) + 40), a2);
      v6 = v10;
      *(*(a1[6] + 8) + 24) = a3;
    }
  }
}

+ (id)fileReservationForLargeDisplayableImageFileForAsset:(id)asset format:(id)format allowMetadataSnapshot:(BOOL)snapshot forceLarge:(BOOL)large outFilePath:(id *)path outImageType:(int64_t *)type
{
  largeCopy = large;
  snapshotCopy = snapshot;
  v65 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  formatCopy = format;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__51940;
  v57 = __Block_byref_object_dispose__51941;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__51940;
  v51 = __Block_byref_object_dispose__51941;
  v52 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __138__PLResourceChooser_fileReservationForLargeDisplayableImageFileForAsset_format_allowMetadataSnapshot_forceLarge_outFilePath_outImageType___block_invoke;
  aBlock[3] = &unk_1E756D8F0;
  aBlock[4] = &v53;
  aBlock[5] = &v47;
  aBlock[6] = &v43;
  v16 = _Block_copy(aBlock);
  if (([assetCopy isCloudSharedAsset] & 1) != 0 || objc_msgSend(assetCopy, "isStreamedVideo"))
  {
    pathForOriginalFile = [assetCopy pathForOriginalFile];
    v18 = v48[5];
    v48[5] = pathForOriginalFile;

    v44[3] = 1;
  }

  else
  {
    kind = [assetCopy kind];
    if (kind)
    {
      if (kind == 1)
      {
        pathForVideoPreviewFile = [assetCopy pathForVideoPreviewFile];
        v16[2](v16, pathForVideoPreviewFile, 0);

        if (v54[5])
        {
          v28 = PLImageManagerGetLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            uuid = [assetCopy uuid];
            v30 = v48[5];
            *buf = 138412546;
            v60 = uuid;
            v61 = 2112;
            v62 = v30;
            v38 = uuid;
            _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEBUG, "Found video preview for asset: %@, path: %@", buf, 0x16u);
          }
        }

        else
        {
          v28 = PLImageManagerGetLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            uuid2 = [assetCopy uuid];
            *buf = 138412290;
            v60 = uuid2;
            v39 = uuid2;
            _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEBUG, "No video preview for asset: %@", buf, 0xCu);
          }
        }

        if (!v54[5])
        {
          v35 = (v48 + 5);
          v41 = v48[5];
          v36 = [self _chooseFileReservationForLargeDisplayableImageFileForAsset:assetCopy format:formatCopy forceLarge:largeCopy allowMetadataSnapshot:snapshotCopy outFilePath:&v41 outImageType:v44 + 3];
          objc_storeStrong(v35, v41);
          v37 = v54[5];
          v54[5] = v36;
        }
      }
    }

    else
    {
      v31 = (v48 + 5);
      obj = v48[5];
      v32 = [self _chooseFileReservationForLargeDisplayableImageFileForAsset:assetCopy format:formatCopy forceLarge:largeCopy allowMetadataSnapshot:snapshotCopy outFilePath:&obj outImageType:v44 + 3];
      objc_storeStrong(v31, obj);
      v33 = v54[5];
      v54[5] = v32;
    }
  }

  if (path)
  {
    *path = v48[5];
  }

  if (type)
  {
    *type = v44[3];
  }

  if (v48[5])
  {
    v19 = PLImageManagerGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      uuid3 = [assetCopy uuid];
      v21 = v44[3];
      v22 = v48[5];
      *buf = 138412802;
      v60 = uuid3;
      v61 = 2048;
      v62 = v21;
      v63 = 2112;
      v64 = v22;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "Finding large displayable image on disk for asset: %@, image type: %ld, path: %@", buf, 0x20u);
    }
  }

  else
  {
    v19 = PLImageManagerGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      uuid4 = [assetCopy uuid];
      *buf = 138412290;
      v60 = uuid4;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Did not find large displayable image on disk for asset: %@", buf, 0xCu);
    }
  }

  v24 = v54[5];
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v53, 8);

  return v24;
}

void __138__PLResourceChooser_fileReservationForLargeDisplayableImageFileForAsset_format_allowMetadataSnapshot_forceLarge_outFilePath_outImageType___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6)
  {
    v10 = v6;
    v7 = [PLPhotoLibrary fileReservationForFileAtPath:v6 exclusive:0];
    v8 = *(a1[4] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v6 = v10;
    if (*(*(a1[4] + 8) + 40))
    {
      objc_storeStrong((*(a1[5] + 8) + 40), a2);
      v6 = v10;
      *(*(a1[6] + 8) + 24) = a3;
    }
  }
}

+ (id)_chooseFileReservationForLargeDisplayableImageFileForAsset:(id)asset format:(id)format forceLarge:(BOOL)large allowMetadataSnapshot:(BOOL)snapshot outFilePath:(id *)path outImageType:(int64_t *)type
{
  assetCopy = asset;
  formatCopy = format;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__51940;
  v50 = __Block_byref_object_dispose__51941;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__51940;
  v44 = __Block_byref_object_dispose__51941;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __145__PLResourceChooser__chooseFileReservationForLargeDisplayableImageFileForAsset_format_forceLarge_allowMetadataSnapshot_outFilePath_outImageType___block_invoke;
  aBlock[3] = &unk_1E756D8F0;
  aBlock[4] = &v46;
  aBlock[5] = &v40;
  aBlock[6] = &v36;
  v14 = _Block_copy(aBlock);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __145__PLResourceChooser__chooseFileReservationForLargeDisplayableImageFileForAsset_format_forceLarge_allowMetadataSnapshot_outFilePath_outImageType___block_invoke_2;
  v28[3] = &unk_1E756D918;
  v31 = &v46;
  v15 = assetCopy;
  v29 = v15;
  v16 = v14;
  largeCopy = large;
  v30 = v16;
  v32 = &v40;
  v33 = &v36;
  v17 = _Block_copy(v28);
  if (![v15 isOriginalSRGB] || objc_msgSend(v15, "isRAW"))
  {
    v17[2](v17);
  }

  v18 = v47;
  if (!v47[5])
  {
    if (formatCopy)
    {
      isAlwaysFullScreen = [formatCopy isAlwaysFullScreen];
      v18 = v47;
      if ((isAlwaysFullScreen & 1) == 0 && !v47[5])
      {
        pathForLargeThumbnailFile = [v15 pathForLargeThumbnailFile];
        (*(v16 + 2))(v16, pathForLargeThumbnailFile, 9);

        v18 = v47;
      }
    }

    if (!v18[5])
    {
      pathForFullsizeRenderImageFile = [v15 pathForFullsizeRenderImageFile];
      (*(v16 + 2))(v16, pathForFullsizeRenderImageFile, 5);

      if (!v47[5])
      {
        pathForSubstandardFullsizeRenderImageFile = [v15 pathForSubstandardFullsizeRenderImageFile];
        (*(v16 + 2))(v16, pathForSubstandardFullsizeRenderImageFile, 7);

        if (!v47[5] && ([v15 hasAdjustments] & 1) == 0)
        {
          pathForNonAdjustedFullsizeImageFile = [v15 pathForNonAdjustedFullsizeImageFile];
          (*(v16 + 2))(v16, pathForNonAdjustedFullsizeImageFile, 3);

          if (!v47[5] && ([v15 isVideo] & 1) == 0 && __145__PLResourceChooser__chooseFileReservationForLargeDisplayableImageFileForAsset_format_forceLarge_allowMetadataSnapshot_outFilePath_outImageType___block_invoke_71(v15, 0))
          {
            pathForOriginalFile = [v15 pathForOriginalFile];
            (*(v16 + 2))(v16, pathForOriginalFile, 1);
          }
        }
      }
    }
  }

  if (!v47[5])
  {
    v17[2](v17);
    if (!v47[5] && ([v15 isVideo] & 1) == 0 && __145__PLResourceChooser__chooseFileReservationForLargeDisplayableImageFileForAsset_format_forceLarge_allowMetadataSnapshot_outFilePath_outImageType___block_invoke_71(v15, 1) && (objc_msgSend(v15, "hasAdjustments") & 1) == 0)
    {
      pathForOriginalFile2 = [v15 pathForOriginalFile];
      (*(v16 + 2))(v16, pathForOriginalFile2, 1);
    }
  }

  if (path)
  {
    *path = v41[5];
  }

  if (type)
  {
    *type = v37[3];
  }

  v26 = v47[5];

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);

  return v26;
}

void __145__PLResourceChooser__chooseFileReservationForLargeDisplayableImageFileForAsset_format_forceLarge_allowMetadataSnapshot_outFilePath_outImageType___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6)
  {
    v10 = v6;
    v7 = [PLPhotoLibrary fileReservationForFileAtPath:v6 exclusive:0];
    v8 = *(a1[4] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v6 = v10;
    if (*(*(a1[4] + 8) + 40))
    {
      objc_storeStrong((*(a1[5] + 8) + 40), a2);
      v6 = v10;
      *(*(a1[6] + 8) + 24) = a3;
    }
  }
}

void __145__PLResourceChooser__chooseFileReservationForLargeDisplayableImageFileForAsset_format_forceLarge_allowMetadataSnapshot_outFilePath_outImageType___block_invoke_2(uint64_t a1)
{
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v23 = v1;
    v24 = v2;
    v4 = [*(a1 + 32) pathForLargeThumbnailFile];
    (*(*(a1 + 40) + 16))();
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v5 = *(a1 + 40);
      v6 = [*(a1 + 32) pathForMediumThumbnailFile];
      (*(v5 + 16))(v5, v6, 10);

      if (PLIsAssetsd())
      {
        v7 = [*(a1 + 32) pl_photoLibrary];
        v8 = [v7 isCloudPhotoLibraryEnabled];

        if (*(*(*(a1 + 48) + 8) + 40))
        {
          if ((v8 & 1) == 0 && *(a1 + 72) == 1 && ([*(a1 + 32) hasAdjustments] & 1) == 0)
          {
            v9 = PLImageManagerGetLog();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "Generating large thumbnail file while servicing an image request", buf, 2u);
            }

            [*(a1 + 32) generateLargeThumbnailFileIfNecessary];
            v10 = [PLPhotoLibrary fileReservationForFileAtPath:v4 exclusive:0];
            v11 = PLImageManagerGetLog();
            v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
            if (v10)
            {
              if (v12)
              {
                *v21 = 0;
                _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "Found large thumbnail file after generation", v21, 2u);
              }

              objc_storeStrong((*(*(a1 + 48) + 8) + 40), v10);
              v13 = *(*(a1 + 56) + 8);
              v14 = v4;
              v15 = *(v13 + 40);
              *(v13 + 40) = v14;
              v16 = 9;
            }

            else
            {
              if (v12)
              {
                *v20 = 0;
                _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "Did not find large thumbnail file after generation", v20, 2u);
              }

              v17 = *(*(a1 + 48) + 8);
              v18 = *(v17 + 40);
              *(v17 + 40) = 0;

              v16 = 0;
              v19 = *(*(a1 + 56) + 8);
              v15 = *(v19 + 40);
              *(v19 + 40) = 0;
            }

            *(*(*(a1 + 64) + 8) + 24) = v16;
          }
        }
      }
    }
  }
}

uint64_t __145__PLResourceChooser__chooseFileReservationForLargeDisplayableImageFileForAsset_format_forceLarge_allowMetadataSnapshot_outFilePath_outImageType___block_invoke_71(void *a1, char a2)
{
  v3 = a1;
  v4 = [v3 uniformTypeIdentifier];
  if (v4)
  {
    v5 = [MEMORY[0x1E6982C40] typeWithIdentifier:v4];
    v6 = [v5 conformsToType:*MEMORY[0x1E6982E30]];

    if (a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
    if (a2)
    {
      goto LABEL_7;
    }
  }

  if ([v3 isRAW])
  {
    v6 = 0;
  }

LABEL_7:

  return v6;
}

@end