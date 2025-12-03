@interface PXSmartAlbumFlashCondition
+ (id)defaultSingleQueryForEditingContext:(id)context;
- (NSArray)flashFiredValues;
- (PXLabeledValue)flashFiredValue;
- (void)setFlashFiredValue:(id)value;
@end

@implementation PXSmartAlbumFlashCondition

+ (id)defaultSingleQueryForEditingContext:(id)context
{
  v3 = objc_alloc_init(MEMORY[0x1E69BF300]);
  [v3 setKey:302];
  [v3 setBoolValue:1];
  [v3 setComparator:1];

  return v3;
}

- (void)setFlashFiredValue:(id)value
{
  v20 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumFlashCondition.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"flashFiredValue"}];
  }

  flashFiredValues = [(PXSmartAlbumFlashCondition *)self flashFiredValues];
  v7 = [flashFiredValues containsObject:valueCopy];

  if ((v7 & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumFlashCondition.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"[self.flashFiredValues containsObject:flashFiredValue]"}];
  }

  value = [valueCopy value];
  bOOLValue = [value BOOLValue];
  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  [singleQuery setBoolValue:1];
  if (bOOLValue)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  [singleQuery setComparator:v11];
  v12 = PLUIGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = @"NO";
    if (bOOLValue)
    {
      v13 = @"YES";
    }

    v14 = v13;
    *buf = 138412290;
    v19 = v14;
    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: flash fired value set to: %@", buf, 0xCu);
  }

  delegate = [(PXSmartAlbumCondition *)self delegate];
  [delegate conditionDidChange:self];
}

- (PXLabeledValue)flashFiredValue
{
  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  comparator = [singleQuery comparator];
  if ([singleQuery BOOLValue])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = comparator == v4;
  v6 = comparator == v4;
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