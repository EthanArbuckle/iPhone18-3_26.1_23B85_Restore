@interface PXSmartAlbumApertureCondition
+ (id)defaultSingleQueryForEditingContext:(id)context;
+ (id)formatter;
- (NSArray)apertureValues;
- (PXLabeledValue)apertureValue;
- (PXLabeledValue)secondApertureValue;
- (void)setApertureValue:(id)value;
- (void)setSecondApertureValue:(id)value;
@end

@implementation PXSmartAlbumApertureCondition

+ (id)formatter
{
  v2 = formatter__formatter;
  if (!formatter__formatter)
  {
    v3 = objc_alloc_init(PXApertureFormatter);
    v4 = formatter__formatter;
    formatter__formatter = v3;

    v2 = formatter__formatter;
  }

  return v2;
}

+ (id)defaultSingleQueryForEditingContext:(id)context
{
  v3 = objc_alloc_init(MEMORY[0x1E69BF300]);
  [v3 setKey:300];
  [v3 setDoubleValue:2.8];
  [v3 setComparator:5];

  return v3;
}

- (void)setSecondApertureValue:(id)value
{
  v17 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  value = [valueCopy value];
  if (value)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    px_descriptionForAssertionMessage = [value px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumEXIFCondition.m" lineNumber:70 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"apertureValue.value", v12, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumEXIFCondition.m" lineNumber:70 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"apertureValue.value", v12}];
  }

LABEL_3:
  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  [value doubleValue];
  [singleQuery setSecondDoubleValue:?];
  v8 = PLUIGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = valueCopy;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: second aperture value set to: %@", buf, 0xCu);
  }

  delegate = [(PXSmartAlbumCondition *)self delegate];
  [delegate conditionDidChange:self];
}

- (PXLabeledValue)secondApertureValue
{
  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  v3 = MEMORY[0x1E696AD98];
  [singleQuery secondDoubleValue];
  v4 = [v3 numberWithDouble:?];
  formatter = [objc_opt_class() formatter];
  v6 = [formatter stringFromNumber:v4];

  v7 = [[PXLabeledValue alloc] initWithValue:v4 localizedLabel:v6];

  return v7;
}

- (void)setApertureValue:(id)value
{
  v17 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  value = [valueCopy value];
  if (value)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    px_descriptionForAssertionMessage = [value px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumEXIFCondition.m" lineNumber:52 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"apertureValue.value", v12, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumEXIFCondition.m" lineNumber:52 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"apertureValue.value", v12}];
  }

LABEL_3:
  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  [value doubleValue];
  [singleQuery setDoubleValue:?];
  v8 = PLUIGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = valueCopy;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: aperture value set to: %@", buf, 0xCu);
  }

  delegate = [(PXSmartAlbumCondition *)self delegate];
  [delegate conditionDidChange:self];
}

- (PXLabeledValue)apertureValue
{
  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  v3 = MEMORY[0x1E696AD98];
  [singleQuery doubleValue];
  v4 = [v3 numberWithDouble:?];
  formatter = [objc_opt_class() formatter];
  v6 = [formatter stringFromNumber:v4];

  v7 = [[PXLabeledValue alloc] initWithValue:v4 localizedLabel:v6];

  return v7;
}

- (NSArray)apertureValues
{
  apertureValues = self->_apertureValues;
  if (!apertureValues)
  {
    formatter = [objc_opt_class() formatter];
    editingContext = [(PXSmartAlbumCondition *)self editingContext];
    v6 = [editingContext apertureValuesWithFormatter:formatter];
    v7 = self->_apertureValues;
    self->_apertureValues = v6;

    apertureValues = self->_apertureValues;
  }

  return apertureValues;
}

@end