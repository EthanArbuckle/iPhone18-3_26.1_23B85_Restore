@interface PXSectionedTileIdentifierConverter
- (BOOL)reverseTransformTileIdentifier:(PXTileIdentifier *)identifier;
- (BOOL)transformTileIdentifier:(PXTileIdentifier *)identifier group:(unint64_t *)group;
- (PXSectionedTileIdentifierConverter)initWithFromDataSource:(id)source toDataSource:(id)dataSource changeDetails:(id)details;
@end

@implementation PXSectionedTileIdentifierConverter

- (BOOL)reverseTransformTileIdentifier:(PXTileIdentifier *)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  length = identifier->length;
  v3 = identifier->index[0];
  v5 = identifier->index[1];
  v6 = *&identifier->index[2];
  v7 = identifier->index[4];
  v8 = *&identifier->index[7];
  v23 = *&identifier->index[5];
  v24 = v8;
  v25 = identifier->index[9];
  if (length - 3 > 1)
  {
    return 0;
  }

  v17 = v6;
  if (([(PXSectionedDataSource *)self->_fromDataSource isEqual:self->_toDataSource]& 1) != 0)
  {
LABEL_3:
    identifier->length = length;
    identifier->index[0] = v3;
    identifier->index[1] = v5;
    *&identifier->index[2] = v17;
    identifier->index[4] = v7;
    v11 = v24;
    *&identifier->index[5] = v23;
    *&identifier->index[7] = v11;
    result = 1;
    identifier->index[9] = v25;
    return result;
  }

  lastObject = [(NSArray *)self->_changeDetails lastObject];
  if (v5 == [lastObject toDataSourceIdentifier])
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
        reloadedTileKindsOnObjectChanged = [(PXSectionedTileIdentifierConverter *)self reloadedTileKindsOnObjectChanged];
        v16 = [reloadedTileKindsOnObjectChanged containsIndex:v3];

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

- (BOOL)transformTileIdentifier:(PXTileIdentifier *)identifier group:(unint64_t *)group
{
  result = 0;
  v29 = *MEMORY[0x1E69E9840];
  length = identifier->length;
  v6 = identifier->index[0];
  v8 = identifier->index[1];
  v9 = *&identifier->index[2];
  v10 = identifier->index[4];
  v11 = *&identifier->index[7];
  v26 = *&identifier->index[5];
  v27 = v11;
  v28 = identifier->index[9];
  if (length - 6 >= 0xFFFFFFFFFFFFFFFDLL && v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = v9;
    v14 = *group;
    if (([(PXSectionedDataSource *)self->_fromDataSource isEqual:self->_toDataSource]& 1) != 0)
    {
LABEL_4:
      identifier->length = length;
      identifier->index[0] = v6;
      identifier->index[1] = v8;
      *&identifier->index[2] = v20;
      identifier->index[4] = v10;
      v15 = v27;
      *&identifier->index[5] = v26;
      *&identifier->index[7] = v15;
      identifier->index[9] = v28;
      result = 1;
      *group = v14;
      return result;
    }

    firstObject = [(NSArray *)self->_changeDetails firstObject];
    if (v8 != [firstObject fromDataSourceIdentifier])
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
      reloadedTileKindsOnObjectChanged = [(PXSectionedTileIdentifierConverter *)self reloadedTileKindsOnObjectChanged];
      v19 = [reloadedTileKindsOnObjectChanged containsIndex:v6];

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

- (PXSectionedTileIdentifierConverter)initWithFromDataSource:(id)source toDataSource:(id)dataSource changeDetails:(id)details
{
  sourceCopy = source;
  dataSourceCopy = dataSource;
  detailsCopy = details;
  v15.receiver = self;
  v15.super_class = PXSectionedTileIdentifierConverter;
  v12 = [(PXSectionedTileIdentifierConverter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fromDataSource, source);
    objc_storeStrong(&v13->_toDataSource, dataSource);
    objc_storeStrong(&v13->_changeDetails, details);
  }

  return v13;
}

@end