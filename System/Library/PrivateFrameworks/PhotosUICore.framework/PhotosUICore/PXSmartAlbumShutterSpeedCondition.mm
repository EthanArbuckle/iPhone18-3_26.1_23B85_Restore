@interface PXSmartAlbumShutterSpeedCondition
+ (id)defaultSingleQueryForEditingContext:(id)a3;
+ (id)formatter;
- (NSArray)shutterSpeedValues;
- (PXLabeledValue)secondShutterSpeedValue;
- (PXLabeledValue)shutterSpeedValue;
- (void)setSecondShutterSpeedValue:(id)a3;
- (void)setShutterSpeedValue:(id)a3;
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

+ (id)defaultSingleQueryForEditingContext:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x1E69BF300]);
  [v3 setKey:306];
  [v3 setDoubleValue:0.004];
  [v3 setComparator:5];

  return v3;
}

- (void)setSecondShutterSpeedValue:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 value];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    v14 = [v6 px_descriptionForAssertionMessage];
    [v10 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumEXIFCondition.m" lineNumber:368 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"shutterSpeedValue.value", v12, v14}];
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v10 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumEXIFCondition.m" lineNumber:368 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"shutterSpeedValue.value", v12}];
  }

LABEL_3:
  v7 = [(PXSmartAlbumCondition *)self singleQuery];
  [v6 doubleValue];
  [v7 setSecondDoubleValue:?];
  v8 = PLUIGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = v5;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: second shutter speed value set to: %@", buf, 0xCu);
  }

  v9 = [(PXSmartAlbumCondition *)self delegate];
  [v9 conditionDidChange:self];
}

- (PXLabeledValue)secondShutterSpeedValue
{
  v2 = [(PXSmartAlbumCondition *)self singleQuery];
  v3 = MEMORY[0x1E696AD98];
  [v2 secondDoubleValue];
  v4 = [v3 numberWithDouble:?];
  v5 = [objc_opt_class() formatter];
  v6 = [v5 stringFromNumber:v4];

  v7 = [[PXLabeledValue alloc] initWithValue:v4 localizedLabel:v6];

  return v7;
}

- (void)setShutterSpeedValue:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 value];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    v14 = [v6 px_descriptionForAssertionMessage];
    [v10 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumEXIFCondition.m" lineNumber:350 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"shutterSpeedValue.value", v12, v14}];
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v10 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumEXIFCondition.m" lineNumber:350 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"shutterSpeedValue.value", v12}];
  }

LABEL_3:
  v7 = [(PXSmartAlbumCondition *)self singleQuery];
  [v6 doubleValue];
  [v7 setDoubleValue:?];
  v8 = PLUIGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = v5;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: shutter speed value set to: %@", buf, 0xCu);
  }

  v9 = [(PXSmartAlbumCondition *)self delegate];
  [v9 conditionDidChange:self];
}

- (PXLabeledValue)shutterSpeedValue
{
  v2 = [(PXSmartAlbumCondition *)self singleQuery];
  v3 = MEMORY[0x1E696AD98];
  [v2 doubleValue];
  v4 = [v3 numberWithDouble:?];
  v5 = [objc_opt_class() formatter];
  v6 = [v5 stringFromNumber:v4];

  v7 = [[PXLabeledValue alloc] initWithValue:v4 localizedLabel:v6];

  return v7;
}

- (NSArray)shutterSpeedValues
{
  shutterSpeedValues = self->_shutterSpeedValues;
  if (!shutterSpeedValues)
  {
    v4 = [objc_opt_class() formatter];
    v5 = [(PXSmartAlbumCondition *)self editingContext];
    v6 = [v5 shutterSpeedValuesWithFormatter:v4];
    v7 = self->_shutterSpeedValues;
    self->_shutterSpeedValues = v6;

    shutterSpeedValues = self->_shutterSpeedValues;
  }

  return shutterSpeedValues;
}

@end