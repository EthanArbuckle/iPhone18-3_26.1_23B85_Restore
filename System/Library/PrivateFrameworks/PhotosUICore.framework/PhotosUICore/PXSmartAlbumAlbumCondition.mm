@interface PXSmartAlbumAlbumCondition
+ (PXLabeledValue)anyAlbumValue;
+ (id)defaultSingleQueryForEditingContext:(id)context;
- (BOOL)albumValueIsOrphaned;
- (PXLabeledValue)albumValue;
- (id)_albumValues;
- (void)setAlbumValue:(id)value;
@end

@implementation PXSmartAlbumAlbumCondition

- (id)_albumValues
{
  albumValues = self->_albumValues;
  if (!albumValues)
  {
    editingContext = [(PXSmartAlbumCondition *)self editingContext];
    albumValues = [editingContext albumValues];
    v6 = self->_albumValues;
    self->_albumValues = albumValues;

    albumValues = self->_albumValues;
  }

  return albumValues;
}

- (void)setAlbumValue:(id)value
{
  v18 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  value = [valueCopy value];
  localizedLabel = [valueCopy localizedLabel];

  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  v8 = singleQuery;
  if (value)
  {
    [singleQuery setStringValue:value];
    [v8 setSecondStringValue:localizedLabel];
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412546;
      v15 = value;
      v16 = 2112;
      v17 = localizedLabel;
      v10 = "PXSmartAlbums: album value set to: %@:%@";
      v11 = v9;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, v10, &v14, v12);
    }
  }

  else
  {
    [singleQuery setSecondStringValue:0];
    [v8 setStringValue:0];
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v14) = 0;
      v10 = "PXSmartAlbums: album value set to: Any";
      v11 = v9;
      v12 = 2;
      goto LABEL_6;
    }
  }

  delegate = [(PXSmartAlbumCondition *)self delegate];
  [delegate conditionDidChange:self];
}

- (BOOL)albumValueIsOrphaned
{
  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  stringValue = [singleQuery stringValue];
  _albumValues = [(PXSmartAlbumAlbumCondition *)self _albumValues];
  v6 = _albumValues;
  if (stringValue)
  {
    v7 = PXLabeledValueForValueInLabeledValues(_albumValues, stringValue);
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PXLabeledValue)albumValue
{
  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  stringValue = [singleQuery stringValue];
  if (stringValue)
  {
    _albumValues = [(PXSmartAlbumAlbumCondition *)self _albumValues];
    v6 = PXLabeledValueForValueInLabeledValues(_albumValues, stringValue);
    if (!v6)
    {
      secondStringValue = [singleQuery secondStringValue];
      v8 = secondStringValue;
      v9 = @"<missing>";
      if (secondStringValue)
      {
        v9 = secondStringValue;
      }

      v10 = v9;

      v6 = [[PXLabeledValue alloc] initWithValue:stringValue localizedLabel:v10];
    }
  }

  else
  {
    v6 = +[PXSmartAlbumAlbumCondition anyAlbumValue];
  }

  return v6;
}

+ (id)defaultSingleQueryForEditingContext:(id)context
{
  v3 = objc_alloc_init(MEMORY[0x1E69BF300]);
  [v3 setKey:100];
  [v3 setComparator:22];

  return v3;
}

+ (PXLabeledValue)anyAlbumValue
{
  if (anyAlbumValue_predicate != -1)
  {
    dispatch_once(&anyAlbumValue_predicate, &__block_literal_global_40112);
  }

  v3 = anyAlbumValue__anyAlbumValue;

  return v3;
}

void __43__PXSmartAlbumAlbumCondition_anyAlbumValue__block_invoke()
{
  v2 = PXLocalizedStringFromTable(@"PXSmartAlbumAnyAlbum", @"PXSmartAlbumStrings");
  v0 = [[PXLabeledValue alloc] initWithValue:0 localizedLabel:v2];
  v1 = anyAlbumValue__anyAlbumValue;
  anyAlbumValue__anyAlbumValue = v0;
}

@end