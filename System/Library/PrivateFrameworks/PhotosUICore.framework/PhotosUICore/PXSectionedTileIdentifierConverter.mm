@interface PXSectionedTileIdentifierConverter
- (BOOL)reverseTransformTileIdentifier:(PXTileIdentifier *)a3;
- (BOOL)transformTileIdentifier:(PXTileIdentifier *)a3 group:(unint64_t *)a4;
- (PXSectionedTileIdentifierConverter)initWithFromDataSource:(id)a3 toDataSource:(id)a4 changeDetails:(id)a5;
@end

@implementation PXSectionedTileIdentifierConverter

- (BOOL)reverseTransformTileIdentifier:(PXTileIdentifier *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  length = a3->length;
  v3 = a3->index[0];
  v5 = a3->index[1];
  v6 = *&a3->index[2];
  v7 = a3->index[4];
  v8 = *&a3->index[7];
  v23 = *&a3->index[5];
  v24 = v8;
  v25 = a3->index[9];
  if (length - 3 > 1)
  {
    return 0;
  }

  v17 = v6;
  if (([(PXSectionedDataSource *)self->_fromDataSource isEqual:self->_toDataSource]& 1) != 0)
  {
LABEL_3:
    a3->length = length;
    a3->index[0] = v3;
    a3->index[1] = v5;
    *&a3->index[2] = v17;
    a3->index[4] = v7;
    v11 = v24;
    *&a3->index[5] = v23;
    *&a3->index[7] = v11;
    result = 1;
    a3->index[9] = v25;
    return result;
  }

  v13 = [(NSArray *)self->_changeDetails lastObject];
  if (v5 == [v13 toDataSourceIdentifier])
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    changeDetails = self->_changeDetails;
    v18 = v5;
    v19 = v17;
    v20 = v7;
    [off_1E77218B0 indexPathAfterRevertingChanges:changeDetails fromIndexPath:&v18 hasIncrementalChanges:0 objectChanged:&v22];
    v5 = *&v21[0];
    if (*&v21[0] != *off_1E7721F68)
    {
      if (v22 == 1)
      {
        v15 = [(PXSectionedTileIdentifierConverter *)self reloadedTileKindsOnObjectChanged];
        v16 = [v15 containsIndex:v3];

        if (v16)
        {
          goto LABEL_6;
        }

        v5 = *&v21[0];
      }

      v17 = *(v21 + 8);
      v7 = *(&v21[1] + 1);

      goto LABEL_3;
    }
  }

LABEL_6:

  return 0;
}

- (BOOL)transformTileIdentifier:(PXTileIdentifier *)a3 group:(unint64_t *)a4
{
  result = 0;
  v29 = *MEMORY[0x1E69E9840];
  length = a3->length;
  v6 = a3->index[0];
  v8 = a3->index[1];
  v9 = *&a3->index[2];
  v10 = a3->index[4];
  v11 = *&a3->index[7];
  v26 = *&a3->index[5];
  v27 = v11;
  v28 = a3->index[9];
  if (length - 6 >= 0xFFFFFFFFFFFFFFFDLL && v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = v9;
    v14 = *a4;
    if (([(PXSectionedDataSource *)self->_fromDataSource isEqual:self->_toDataSource]& 1) != 0)
    {
LABEL_4:
      a3->length = length;
      a3->index[0] = v6;
      a3->index[1] = v8;
      *&a3->index[2] = v20;
      a3->index[4] = v10;
      v15 = v27;
      *&a3->index[5] = v26;
      *&a3->index[7] = v15;
      a3->index[9] = v28;
      result = 1;
      *a4 = v14;
      return result;
    }

    v16 = [(NSArray *)self->_changeDetails firstObject];
    if (v8 != [v16 fromDataSourceIdentifier])
    {
      goto LABEL_7;
    }

    v25 = 0;
    memset(v24, 0, sizeof(v24));
    changeDetails = self->_changeDetails;
    v21 = v8;
    v22 = v20;
    v23 = v10;
    [off_1E77218B0 indexPathAfterApplyingChanges:changeDetails toIndexPath:&v21 hasIncrementalChanges:0 objectChanged:&v25];
    v8 = *&v24[0];
    if (*&v24[0] == *off_1E7721F68)
    {
      goto LABEL_7;
    }

    if (v25 == 1)
    {
      v18 = [(PXSectionedTileIdentifierConverter *)self reloadedTileKindsOnObjectChanged];
      v19 = [v18 containsIndex:v6];

      if (v19)
      {
LABEL_7:

        return 0;
      }

      v8 = *&v24[0];
    }

    v20 = *(v24 + 8);
    v10 = *(&v24[1] + 1);

    goto LABEL_4;
  }

  return result;
}

- (PXSectionedTileIdentifierConverter)initWithFromDataSource:(id)a3 toDataSource:(id)a4 changeDetails:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PXSectionedTileIdentifierConverter;
  v12 = [(PXSectionedTileIdentifierConverter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fromDataSource, a3);
    objc_storeStrong(&v13->_toDataSource, a4);
    objc_storeStrong(&v13->_changeDetails, a5);
  }

  return v13;
}

@end