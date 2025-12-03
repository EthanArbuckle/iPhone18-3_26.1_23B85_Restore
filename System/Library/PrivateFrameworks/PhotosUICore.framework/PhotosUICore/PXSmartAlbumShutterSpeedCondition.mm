@interface PXSmartAlbumShutterSpeedCondition
+ (id)defaultSingleQueryForEditingContext:(id)context;
+ (id)formatter;
- (NSArray)shutterSpeedValues;
- (PXLabeledValue)secondShutterSpeedValue;
- (PXLabeledValue)shutterSpeedValue;
- (void)setSecondShutterSpeedValue:(id)value;
- (void)setShutterSpeedValue:(id)value;
@end

@implementation PXSmartAlbumShutterSpeedCondition

+ (id)formatter
{
  v2 = formatter__formatter_112;
  if (!formatter__formatter_112)
  {
    v3 = objc_alloc_init(PXShutterSpeedFormatter);
    v4 = formatter__formatter_112;
    formatter__formatter_112 = v3;

    v2 = formatter__formatter_112;
  }

  return v2;
}

+ (id)defaultSingleQueryForEditingContext:(id)context
{
  v3 = objc_alloc_init(MEMORY[0x1E69BF300]);
  [v3 setKey:306];
  [v3 setDoubleValue:0.004];
  [v3 setComparator:5];

  return v3;
}

- (void)setSecondShutterSpeedValue:(id)value
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumEXIFCondition.m" lineNumber:368 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"shutterSpeedValue.value", v12, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumEXIFCondition.m" lineNumber:368 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"shutterSpeedValue.value", v12}];
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
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: second shutter speed value set to: %@", buf, 0xCu);
  }

  delegate = [(PXSmartAlbumCondition *)self delegate];
  [delegate conditionDidChange:self];
}

- (PXLabeledValue)secondShutterSpeedValue
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

- (void)setShutterSpeedValue:(id)value
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumEXIFCondition.m" lineNumber:350 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"shutterSpeedValue.value", v12, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumEXIFCondition.m" lineNumber:350 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"shutterSpeedValue.value", v12}];
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
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: shutter speed value set to: %@", buf, 0xCu);
  }

  delegate = [(PXSmartAlbumCondition *)self delegate];
  [delegate conditionDidChange:self];
}

- (PXLabeledValue)shutterSpeedValue
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

- (NSArray)shutterSpeedValues
{
  shutterSpeedValues = self->_shutterSpeedValues;
  if (!shutterSpeedValues)
  {
    formatter = [objc_opt_class() formatter];
    editingContext = [(PXSmartAlbumCondition *)self editingContext];
    v6 = [editingContext shutterSpeedValuesWithFormatter:formatter];
    v7 = self->_shutterSpeedValues;
    self->_shutterSpeedValues = v6;

    shutterSpeedValues = self->_shutterSpeedValues;
  }

  return shutterSpeedValues;
}

@end