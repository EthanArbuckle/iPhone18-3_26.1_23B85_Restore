@interface PXMemoriesFeedTileIdentifierConverter
- (BOOL)_shouldConvertIdentifierFromMemory:(id)a3 toMemory:(id)a4;
- (BOOL)_shouldConvertIdentifierFromMemoryInfo:(id)a3 toMemoryInfo:(id)a4;
- (BOOL)reverseTransformTileIdentifier:(PXTileIdentifier *)a3;
- (BOOL)transformTileIdentifier:(PXTileIdentifier *)a3 group:(unint64_t *)a4;
@end

@implementation PXMemoriesFeedTileIdentifierConverter

- (BOOL)_shouldConvertIdentifierFromMemoryInfo:(id)a3 toMemoryInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 assetCollection];
  v9 = [v6 assetCollection];
  v10 = [v6 primaryAsset];

  v11 = [v7 primaryAsset];

  v12 = v10;
  v13 = v11;
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

  v16 = [(PXMemoriesFeedTileIdentifierConverter *)self _shouldConvertIdentifierFromMemory:v8 toMemory:v9];
LABEL_12:

  return v16;
}

- (BOOL)_shouldConvertIdentifierFromMemory:(id)a3 toMemory:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 localizedTitle];
  v8 = [v6 localizedTitle];
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    v10 = [v7 isEqualToString:v8];

    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v11 = [v5 subtitle];
  v12 = [v6 subtitle];
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    v14 = [v11 isEqualToString:v12];

    if ((v14 & 1) == 0)
    {
LABEL_7:
      v15 = 0;
      goto LABEL_13;
    }
  }

  v16 = [v5 titleFontName];
  v17 = [v6 titleFontName];
  if (v16 == v17)
  {
    v15 = 1;
  }

  else
  {
    v15 = [v16 isEqualToString:v17];
  }

LABEL_13:
  return v15;
}

- (BOOL)reverseTransformTileIdentifier:(PXTileIdentifier *)a3
{
  v33 = *MEMORY[0x1E69E9840];
  length = a3->length;
  v3 = a3->index[0];
  v5 = a3->index[1];
  v6 = *&a3->index[2];
  v7 = a3->index[4];
  v8 = *&a3->index[7];
  v30 = *&a3->index[5];
  v31 = v8;
  v32 = a3->index[9];
  if (length - 3 > 1)
  {
    return 0;
  }

  v27 = v6;
  v11 = [(PXSectionedTileIdentifierConverter *)self fromDataSource];
  v12 = [(PXSectionedTileIdentifierConverter *)self toDataSource];
  v13 = [v11 isEqual:v12];

  if (v13)
  {
LABEL_3:
    a3->length = length;
    a3->index[0] = v3;
    a3->index[1] = v5;
    *&a3->index[2] = v27;
    a3->index[4] = v7;
    v14 = v31;
    *&a3->index[5] = v30;
    *&a3->index[7] = v14;
    result = 1;
    a3->index[9] = v32;
    return result;
  }

  v16 = [(PXSectionedTileIdentifierConverter *)self changeDetails];
  v17 = [v16 lastObject];

  if (v5 == [v17 toDataSourceIdentifier])
  {
    v29 = 0;
    memset(&v28[32], 0, 32);
    v18 = [(PXSectionedTileIdentifierConverter *)self changeDetails];
    *v28 = v5;
    *&v28[8] = v27;
    *&v28[24] = v7;
    [off_1E77218B0 indexPathAfterRevertingChanges:v18 fromIndexPath:v28 hasIncrementalChanges:0 objectChanged:&v29];

    v19 = *&v28[32];
    v20 = *off_1E7721F68;
    if (*&v28[32] != *off_1E7721F68 && *&v28[48] != 0x7FFFFFFFFFFFFFFFLL && *&v28[56] == 0x7FFFFFFFFFFFFFFFLL && v29 == 1)
    {
      v21 = [(PXSectionedTileIdentifierConverter *)self fromDataSource];
      *v28 = *&v28[32];
      *&v28[16] = *&v28[48];
      v22 = [v21 objectAtIndexPath:v28];

      v23 = [(PXSectionedTileIdentifierConverter *)self toDataSource];
      *v28 = v5;
      *&v28[8] = v27;
      *&v28[24] = v7;
      v24 = [v23 objectAtIndexPath:v28];

      v29 = ![(PXMemoriesFeedTileIdentifierConverter *)self _shouldConvertIdentifierFromMemoryInfo:v22 toMemoryInfo:v24];
      v19 = *&v28[32];
    }

    if (v19 != v20)
    {
      if (v29 == 1)
      {
        v25 = [(PXSectionedTileIdentifierConverter *)self reloadedTileKindsOnObjectChanged];
        v26 = [v25 containsIndex:v3];

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

- (BOOL)transformTileIdentifier:(PXTileIdentifier *)a3 group:(unint64_t *)a4
{
  result = 0;
  v36 = *MEMORY[0x1E69E9840];
  length = a3->length;
  v6 = a3->index[0];
  v8 = a3->index[1];
  v9 = *&a3->index[2];
  v10 = a3->index[4];
  v11 = *&a3->index[7];
  v33 = *&a3->index[5];
  v34 = v11;
  v35 = a3->index[9];
  if (length - 6 >= 0xFFFFFFFFFFFFFFFDLL && v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = v9;
    v29 = *a4;
    v14 = [(PXSectionedTileIdentifierConverter *)self fromDataSource];
    v15 = [(PXSectionedTileIdentifierConverter *)self toDataSource];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
LABEL_4:
      a3->length = length;
      a3->index[0] = v6;
      a3->index[1] = v8;
      *&a3->index[2] = v30;
      a3->index[4] = v10;
      v17 = v34;
      *&a3->index[5] = v33;
      *&a3->index[7] = v17;
      a3->index[9] = v35;
      result = 1;
      *a4 = v29;
      return result;
    }

    v18 = [(PXSectionedTileIdentifierConverter *)self changeDetails];
    v19 = [v18 firstObject];

    if (v8 != [v19 fromDataSourceIdentifier])
    {
      goto LABEL_15;
    }

    v32 = 0;
    memset(&v31[32], 0, 32);
    v20 = [(PXSectionedTileIdentifierConverter *)self changeDetails];
    *v31 = v8;
    *&v31[8] = v30;
    *&v31[24] = v10;
    [off_1E77218B0 indexPathAfterApplyingChanges:v20 toIndexPath:v31 hasIncrementalChanges:0 objectChanged:&v32];

    v21 = *&v31[32];
    v22 = *off_1E7721F68;
    if (*&v31[32] != *off_1E7721F68 && *&v31[48] != 0x7FFFFFFFFFFFFFFFLL && *&v31[56] == 0x7FFFFFFFFFFFFFFFLL && v8 != v22 && *(&v30 + 1) != 0x7FFFFFFFFFFFFFFFLL && v10 == 0x7FFFFFFFFFFFFFFFLL && v32 == 1)
    {
      v23 = [(PXSectionedTileIdentifierConverter *)self fromDataSource];
      *v31 = v8;
      *&v31[8] = v30;
      *&v31[24] = 0x7FFFFFFFFFFFFFFFLL;
      v24 = [v23 objectAtIndexPath:v31];

      v25 = [(PXSectionedTileIdentifierConverter *)self toDataSource];
      *v31 = *&v31[32];
      *&v31[16] = *&v31[48];
      v26 = [v25 objectAtIndexPath:v31];

      v32 = ![(PXMemoriesFeedTileIdentifierConverter *)self _shouldConvertIdentifierFromMemoryInfo:v24 toMemoryInfo:v26];
      v21 = *&v31[32];
    }

    if (v21 == v22)
    {
      goto LABEL_15;
    }

    if (v32 == 1)
    {
      v27 = [(PXSectionedTileIdentifierConverter *)self reloadedTileKindsOnObjectChanged];
      v28 = [v27 containsIndex:v6];

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