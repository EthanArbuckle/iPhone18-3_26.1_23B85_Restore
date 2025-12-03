@interface PXMemoriesFeedTileIdentifierConverter
- (BOOL)_shouldConvertIdentifierFromMemory:(id)memory toMemory:(id)toMemory;
- (BOOL)_shouldConvertIdentifierFromMemoryInfo:(id)info toMemoryInfo:(id)memoryInfo;
- (BOOL)reverseTransformTileIdentifier:(PXTileIdentifier *)identifier;
- (BOOL)transformTileIdentifier:(PXTileIdentifier *)identifier group:(unint64_t *)group;
@end

@implementation PXMemoriesFeedTileIdentifierConverter

- (BOOL)_shouldConvertIdentifierFromMemoryInfo:(id)info toMemoryInfo:(id)memoryInfo
{
  memoryInfoCopy = memoryInfo;
  infoCopy = info;
  assetCollection = [infoCopy assetCollection];
  assetCollection2 = [memoryInfoCopy assetCollection];
  primaryAsset = [memoryInfoCopy primaryAsset];

  primaryAsset2 = [infoCopy primaryAsset];

  v12 = primaryAsset;
  v13 = primaryAsset2;
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    if (!v12 || !v13)
    {

LABEL_11:
      v16 = 0;
      goto LABEL_12;
    }

    v15 = [v12 isContentEqualTo:v13];
    if (!v15)
    {
      v15 = [v14 isContentEqualTo:v12];
    }

    if (v15 != 2)
    {
      goto LABEL_11;
    }
  }

  v16 = [(PXMemoriesFeedTileIdentifierConverter *)self _shouldConvertIdentifierFromMemory:assetCollection toMemory:assetCollection2];
LABEL_12:

  return v16;
}

- (BOOL)_shouldConvertIdentifierFromMemory:(id)memory toMemory:(id)toMemory
{
  memoryCopy = memory;
  toMemoryCopy = toMemory;
  localizedTitle = [memoryCopy localizedTitle];
  localizedTitle2 = [toMemoryCopy localizedTitle];
  v9 = localizedTitle2;
  if (localizedTitle == localizedTitle2)
  {
  }

  else
  {
    v10 = [localizedTitle isEqualToString:localizedTitle2];

    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  subtitle = [memoryCopy subtitle];
  subtitle2 = [toMemoryCopy subtitle];
  v13 = subtitle2;
  if (subtitle == subtitle2)
  {
  }

  else
  {
    v14 = [subtitle isEqualToString:subtitle2];

    if ((v14 & 1) == 0)
    {
LABEL_7:
      v15 = 0;
      goto LABEL_13;
    }
  }

  titleFontName = [memoryCopy titleFontName];
  titleFontName2 = [toMemoryCopy titleFontName];
  if (titleFontName == titleFontName2)
  {
    v15 = 1;
  }

  else
  {
    v15 = [titleFontName isEqualToString:titleFontName2];
  }

LABEL_13:
  return v15;
}

- (BOOL)reverseTransformTileIdentifier:(PXTileIdentifier *)identifier
{
  v33 = *MEMORY[0x1E69E9840];
  length = identifier->length;
  v3 = identifier->index[0];
  v5 = identifier->index[1];
  v6 = *&identifier->index[2];
  v7 = identifier->index[4];
  v8 = *&identifier->index[7];
  v30 = *&identifier->index[5];
  v31 = v8;
  v32 = identifier->index[9];
  if (length - 3 > 1)
  {
    return 0;
  }

  v27 = v6;
  fromDataSource = [(PXSectionedTileIdentifierConverter *)self fromDataSource];
  toDataSource = [(PXSectionedTileIdentifierConverter *)self toDataSource];
  v13 = [fromDataSource isEqual:toDataSource];

  if (v13)
  {
LABEL_3:
    identifier->length = length;
    identifier->index[0] = v3;
    identifier->index[1] = v5;
    *&identifier->index[2] = v27;
    identifier->index[4] = v7;
    v14 = v31;
    *&identifier->index[5] = v30;
    *&identifier->index[7] = v14;
    result = 1;
    identifier->index[9] = v32;
    return result;
  }

  changeDetails = [(PXSectionedTileIdentifierConverter *)self changeDetails];
  lastObject = [changeDetails lastObject];

  if (v5 == [lastObject toDataSourceIdentifier])
  {
    v29 = 0;
    memset(&v28[32], 0, 32);
    changeDetails2 = [(PXSectionedTileIdentifierConverter *)self changeDetails];
    *v28 = v5;
    *&v28[8] = v27;
    *&v28[24] = v7;
    [off_1E77218B0 indexPathAfterRevertingChanges:changeDetails2 fromIndexPath:v28 hasIncrementalChanges:0 objectChanged:&v29];

    v19 = *&v28[32];
    v20 = *off_1E7721F68;
    if (*&v28[32] != *off_1E7721F68 && *&v28[48] != 0x7FFFFFFFFFFFFFFFLL && *&v28[56] == 0x7FFFFFFFFFFFFFFFLL && v29 == 1)
    {
      fromDataSource2 = [(PXSectionedTileIdentifierConverter *)self fromDataSource];
      *v28 = *&v28[32];
      *&v28[16] = *&v28[48];
      v22 = [fromDataSource2 objectAtIndexPath:v28];

      toDataSource2 = [(PXSectionedTileIdentifierConverter *)self toDataSource];
      *v28 = v5;
      *&v28[8] = v27;
      *&v28[24] = v7;
      v24 = [toDataSource2 objectAtIndexPath:v28];

      v29 = ![(PXMemoriesFeedTileIdentifierConverter *)self _shouldConvertIdentifierFromMemoryInfo:v22 toMemoryInfo:v24];
      v19 = *&v28[32];
    }

    if (v19 != v20)
    {
      if (v29 == 1)
      {
        reloadedTileKindsOnObjectChanged = [(PXSectionedTileIdentifierConverter *)self reloadedTileKindsOnObjectChanged];
        v26 = [reloadedTileKindsOnObjectChanged containsIndex:v3];

        if (v26)
        {
          goto LABEL_11;
        }

        v19 = *&v28[32];
      }

      v27 = *&v28[40];
      v7 = *&v28[56];

      v5 = v19;
      goto LABEL_3;
    }
  }

LABEL_11:

  return 0;
}

- (BOOL)transformTileIdentifier:(PXTileIdentifier *)identifier group:(unint64_t *)group
{
  result = 0;
  v36 = *MEMORY[0x1E69E9840];
  length = identifier->length;
  v6 = identifier->index[0];
  v8 = identifier->index[1];
  v9 = *&identifier->index[2];
  v10 = identifier->index[4];
  v11 = *&identifier->index[7];
  v33 = *&identifier->index[5];
  v34 = v11;
  v35 = identifier->index[9];
  if (length - 6 >= 0xFFFFFFFFFFFFFFFDLL && v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = v9;
    v29 = *group;
    fromDataSource = [(PXSectionedTileIdentifierConverter *)self fromDataSource];
    toDataSource = [(PXSectionedTileIdentifierConverter *)self toDataSource];
    v16 = [fromDataSource isEqual:toDataSource];

    if (v16)
    {
LABEL_4:
      identifier->length = length;
      identifier->index[0] = v6;
      identifier->index[1] = v8;
      *&identifier->index[2] = v30;
      identifier->index[4] = v10;
      v17 = v34;
      *&identifier->index[5] = v33;
      *&identifier->index[7] = v17;
      identifier->index[9] = v35;
      result = 1;
      *group = v29;
      return result;
    }

    changeDetails = [(PXSectionedTileIdentifierConverter *)self changeDetails];
    firstObject = [changeDetails firstObject];

    if (v8 != [firstObject fromDataSourceIdentifier])
    {
      goto LABEL_15;
    }

    v32 = 0;
    memset(&v31[32], 0, 32);
    changeDetails2 = [(PXSectionedTileIdentifierConverter *)self changeDetails];
    *v31 = v8;
    *&v31[8] = v30;
    *&v31[24] = v10;
    [off_1E77218B0 indexPathAfterApplyingChanges:changeDetails2 toIndexPath:v31 hasIncrementalChanges:0 objectChanged:&v32];

    v21 = *&v31[32];
    v22 = *off_1E7721F68;
    if (*&v31[32] != *off_1E7721F68 && *&v31[48] != 0x7FFFFFFFFFFFFFFFLL && *&v31[56] == 0x7FFFFFFFFFFFFFFFLL && v8 != v22 && *(&v30 + 1) != 0x7FFFFFFFFFFFFFFFLL && v10 == 0x7FFFFFFFFFFFFFFFLL && v32 == 1)
    {
      fromDataSource2 = [(PXSectionedTileIdentifierConverter *)self fromDataSource];
      *v31 = v8;
      *&v31[8] = v30;
      *&v31[24] = 0x7FFFFFFFFFFFFFFFLL;
      v24 = [fromDataSource2 objectAtIndexPath:v31];

      toDataSource2 = [(PXSectionedTileIdentifierConverter *)self toDataSource];
      *v31 = *&v31[32];
      *&v31[16] = *&v31[48];
      v26 = [toDataSource2 objectAtIndexPath:v31];

      v32 = ![(PXMemoriesFeedTileIdentifierConverter *)self _shouldConvertIdentifierFromMemoryInfo:v24 toMemoryInfo:v26];
      v21 = *&v31[32];
    }

    if (v21 == v22)
    {
      goto LABEL_15;
    }

    if (v32 == 1)
    {
      reloadedTileKindsOnObjectChanged = [(PXSectionedTileIdentifierConverter *)self reloadedTileKindsOnObjectChanged];
      v28 = [reloadedTileKindsOnObjectChanged containsIndex:v6];

      if (v28)
      {
LABEL_15:

        return 0;
      }

      v21 = *&v31[32];
    }

    v30 = *&v31[40];
    v10 = *&v31[56];

    v8 = v21;
    goto LABEL_4;
  }

  return result;
}

@end