@interface PXSmartAlbumISOCondition
+ (id)defaultSingleQueryForEditingContext:(id)a3;
+ (id)formatter;
- (NSArray)ISOValues;
- (PXLabeledValue)ISOValue;
- (PXLabeledValue)secondISOValue;
- (void)setISOValue:(id)a3;
- (void)setSecondISOValue:(id)a3;
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

+ (id)defaultSingleQueryForEditingContext:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x1E69BF300]);
  [v3 setKey:304];
  [v3 setIntegerValue:100];
  [v3 setComparator:1];

  return v3;
}

- (void)setSecondISOValue:(id)a3
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
    [v10 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumEXIFCondition.m" lineNumber:255 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"ISOValue.value", v12, v14}];
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v10 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumEXIFCondition.m" lineNumber:255 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"ISOValue.value", v12}];
  }

LABEL_3:
  v7 = [(PXSmartAlbumCondition *)self singleQuery];
  [v7 setSecondIntegerValue:{objc_msgSend(v6, "integerValue")}];
  v8 = PLUIGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = v5;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: second iso value set to: %@", buf, 0xCu);
  }

  v9 = [(PXSmartAlbumCondition *)self delegate];
  [v9 conditionDidChange:self];
}

- (PXLabeledValue)secondISOValue
{
  v2 = [(PXSmartAlbumCondition *)self singleQuery];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v2, "secondIntegerValue")}];
  v4 = [objc_opt_class() formatter];
  v5 = [v4 stringFromNumber:v3];

  v6 = [[PXLabeledValue alloc] initWithValue:v3 localizedLabel:v5];

  return v6;
}

- (void)setISOValue:(id)a3
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
    [v10 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumEXIFCondition.m" lineNumber:237 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"ISOValue.value", v12, v14}];
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v10 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumEXIFCondition.m" lineNumber:237 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"ISOValue.value", v12}];
  }

LABEL_3:
  v7 = [(PXSmartAlbumCondition *)self singleQuery];
  [v7 setIntegerValue:{objc_msgSend(v6, "integerValue")}];
  v8 = PLUIGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = v5;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: iso value set to: %@", buf, 0xCu);
  }

  v9 = [(PXSmartAlbumCondition *)self delegate];
  [v9 conditionDidChange:self];
}

- (PXLabeledValue)ISOValue
{
  v2 = [(PXSmartAlbumCondition *)self singleQuery];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v2, "integerValue")}];
  v4 = [objc_opt_class() formatter];
  v5 = [v4 stringFromNumber:v3];

  v6 = [[PXLabeledValue alloc] initWithValue:v3 localizedLabel:v5];

  return v6;
}

- (NSArray)ISOValues
{
  ISOValues = self->_ISOValues;
  if (!ISOValues)
  {
    v4 = [objc_opt_class() formatter];
    v5 = [(PXSmartAlbumCondition *)self editingContext];
    v6 = [v5 ISOValuesWithFormatter:v4];
    v7 = self->_ISOValues;
    self->_ISOValues = v6;

    ISOValues = self->_ISOValues;
  }

  return ISOValues;
}

@end