@interface PXSmartAlbumISOCondition
+ (id)defaultSingleQueryForEditingContext:(id)context;
+ (id)formatter;
- (NSArray)ISOValues;
- (PXLabeledValue)ISOValue;
- (PXLabeledValue)secondISOValue;
- (void)setISOValue:(id)value;
- (void)setSecondISOValue:(id)value;
@end

@implementation PXSmartAlbumISOCondition

+ (id)formatter
{
  v2 = formatter__formatter_79;
  if (!formatter__formatter_79)
  {
    v3 = objc_alloc_init(PXISOFormatter);
    v4 = formatter__formatter_79;
    formatter__formatter_79 = v3;

    v2 = formatter__formatter_79;
  }

  return v2;
}

+ (id)defaultSingleQueryForEditingContext:(id)context
{
  v3 = objc_alloc_init(MEMORY[0x1E69BF300]);
  [v3 setKey:304];
  [v3 setIntegerValue:100];
  [v3 setComparator:1];

  return v3;
}

- (void)setSecondISOValue:(id)value
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumEXIFCondition.m" lineNumber:255 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"ISOValue.value", v12, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumEXIFCondition.m" lineNumber:255 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"ISOValue.value", v12}];
  }

LABEL_3:
  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  [singleQuery setSecondIntegerValue:{objc_msgSend(value, "integerValue")}];
  v8 = PLUIGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = valueCopy;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: second iso value set to: %@", buf, 0xCu);
  }

  delegate = [(PXSmartAlbumCondition *)self delegate];
  [delegate conditionDidChange:self];
}

- (PXLabeledValue)secondISOValue
{
  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(singleQuery, "secondIntegerValue")}];
  formatter = [objc_opt_class() formatter];
  v5 = [formatter stringFromNumber:v3];

  v6 = [[PXLabeledValue alloc] initWithValue:v3 localizedLabel:v5];

  return v6;
}

- (void)setISOValue:(id)value
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumEXIFCondition.m" lineNumber:237 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"ISOValue.value", v12, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumEXIFCondition.m" lineNumber:237 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"ISOValue.value", v12}];
  }

LABEL_3:
  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  [singleQuery setIntegerValue:{objc_msgSend(value, "integerValue")}];
  v8 = PLUIGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = valueCopy;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: iso value set to: %@", buf, 0xCu);
  }

  delegate = [(PXSmartAlbumCondition *)self delegate];
  [delegate conditionDidChange:self];
}

- (PXLabeledValue)ISOValue
{
  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(singleQuery, "integerValue")}];
  formatter = [objc_opt_class() formatter];
  v5 = [formatter stringFromNumber:v3];

  v6 = [[PXLabeledValue alloc] initWithValue:v3 localizedLabel:v5];

  return v6;
}

- (NSArray)ISOValues
{
  ISOValues = self->_ISOValues;
  if (!ISOValues)
  {
    formatter = [objc_opt_class() formatter];
    editingContext = [(PXSmartAlbumCondition *)self editingContext];
    v6 = [editingContext ISOValuesWithFormatter:formatter];
    v7 = self->_ISOValues;
    self->_ISOValues = v6;

    ISOValues = self->_ISOValues;
  }

  return ISOValues;
}

@end