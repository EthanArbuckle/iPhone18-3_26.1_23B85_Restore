@interface PXSmartAlbumFlashCondition
+ (id)defaultSingleQueryForEditingContext:(id)a3;
- (NSArray)flashFiredValues;
- (PXLabeledValue)flashFiredValue;
- (void)setFlashFiredValue:(id)a3;
@end

@implementation PXSmartAlbumFlashCondition

+ (id)defaultSingleQueryForEditingContext:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x1E69BF300]);
  [v3 setKey:302];
  [v3 setBoolValue:1];
  [v3 setComparator:1];

  return v3;
}

- (void)setFlashFiredValue:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumFlashCondition.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"flashFiredValue"}];
  }

  v6 = [(PXSmartAlbumFlashCondition *)self flashFiredValues];
  v7 = [v6 containsObject:v5];

  if ((v7 & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumFlashCondition.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"[self.flashFiredValues containsObject:flashFiredValue]"}];
  }

  v8 = [v5 value];
  v9 = [v8 BOOLValue];
  v10 = [(PXSmartAlbumCondition *)self singleQuery];
  [v10 setBoolValue:1];
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  [v10 setComparator:v11];
  v12 = PLUIGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = @"NO";
    if (v9)
    {
      v13 = @"YES";
    }

    v14 = v13;
    *buf = 138412290;
    v19 = v14;
    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: flash fired value set to: %@", buf, 0xCu);
  }

  v15 = [(PXSmartAlbumCondition *)self delegate];
  [v15 conditionDidChange:self];
}

- (PXLabeledValue)flashFiredValue
{
  v2 = [(PXSmartAlbumCondition *)self singleQuery];
  v3 = [v2 comparator];
  if ([v2 BOOLValue])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = v3 == v4;
  v6 = v3 == v4;
  if (v5)
  {
    v7 = @"PXSmartAlbumFlashDidFire";
  }

  else
  {
    v7 = @"PXSmartAlbumFlashDidNotFire";
  }

  v8 = PXLocalizedStringFromTable(v7, @"PXSmartAlbumStrings");
  v9 = [PXLabeledValue alloc];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  v11 = [(PXLabeledValue *)v9 initWithValue:v10 localizedLabel:v8];

  return v11;
}

- (NSArray)flashFiredValues
{
  flashFiredValues = self->_flashFiredValues;
  if (!flashFiredValues)
  {
    v4 = PXSmartAlbumLocalizedStringsForFlashFiredValues(&unk_1F190F8E0);
    v5 = PXLabeledValuesWithValuesAndLocalizedLabels(&unk_1F190F8E0, v4);

    v6 = self->_flashFiredValues;
    self->_flashFiredValues = v5;

    flashFiredValues = self->_flashFiredValues;
  }

  return flashFiredValues;
}

@end