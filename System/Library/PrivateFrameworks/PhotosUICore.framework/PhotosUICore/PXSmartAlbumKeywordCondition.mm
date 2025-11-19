@interface PXSmartAlbumKeywordCondition
+ (PXLabeledValue)anyKeywordValue;
+ (id)defaultSingleQueryForEditingContext:(id)a3;
- (NSArray)keywordValues;
- (PXLabeledValue)keywordValue;
- (void)setKeywordValue:(id)a3;
@end

@implementation PXSmartAlbumKeywordCondition

- (void)setKeywordValue:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumKeywordCondition.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"keywordValue"}];
  }

  v6 = [v5 value];
  v7 = [(PXSmartAlbumCondition *)self singleQuery];
  v8 = v7;
  if (v6)
  {
    [v7 setStringValue:v6];
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v16 = v6;
      v10 = "PXSmartAlbums: keyword value set to: %@";
      v11 = v9;
      v12 = 12;
LABEL_8:
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, v10, buf, v12);
    }
  }

  else
  {
    [v7 setStringValue:0];
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v10 = "PXSmartAlbums: keyword value set to: Any";
      v11 = v9;
      v12 = 2;
      goto LABEL_8;
    }
  }

  v13 = [(PXSmartAlbumCondition *)self delegate];
  [v13 conditionDidChange:self];
}

- (PXLabeledValue)keywordValue
{
  v2 = [(PXSmartAlbumCondition *)self singleQuery];
  v3 = [v2 stringValue];
  if (v3)
  {
    v4 = [[PXLabeledValue alloc] initWithValue:v3 localizedLabel:v3];
  }

  else
  {
    v4 = +[PXSmartAlbumKeywordCondition anyKeywordValue];
  }

  v5 = v4;

  return v5;
}

- (NSArray)keywordValues
{
  keywordValues = self->_keywordValues;
  if (!keywordValues)
  {
    v4 = [(PXSmartAlbumCondition *)self editingContext];
    v5 = [v4 keywordValues];
    v6 = [v5 mutableCopy];

    v7 = [(PXSmartAlbumKeywordCondition *)self keywordValue];
    if (![(NSArray *)v6 containsObject:v7])
    {
      v8 = +[PXLabeledValue separatorLabeledValue];
      [(NSArray *)v6 insertObject:v8 atIndex:0];

      [(NSArray *)v6 insertObject:v7 atIndex:0];
    }

    v9 = +[PXLabeledValue separatorLabeledValue];
    [(NSArray *)v6 insertObject:v9 atIndex:0];

    v10 = +[PXSmartAlbumKeywordCondition anyKeywordValue];
    [(NSArray *)v6 insertObject:v10 atIndex:0];

    v11 = self->_keywordValues;
    self->_keywordValues = v6;

    keywordValues = self->_keywordValues;
  }

  return keywordValues;
}

+ (id)defaultSingleQueryForEditingContext:(id)a3
{
  v3 = [a3 keywordValues];
  v4 = [v3 firstObject];

  v5 = [v4 value];
  v6 = objc_alloc_init(MEMORY[0x1E69BF300]);
  [v6 setKey:500];
  [v6 setStringValue:v5];
  [v6 setComparator:22];

  return v6;
}

+ (PXLabeledValue)anyKeywordValue
{
  if (anyKeywordValue_predicate != -1)
  {
    dispatch_once(&anyKeywordValue_predicate, &__block_literal_global_57807);
  }

  v3 = anyKeywordValue__anyKeywordValue;

  return v3;
}

void __47__PXSmartAlbumKeywordCondition_anyKeywordValue__block_invoke()
{
  v2 = PXLocalizedStringFromTable(@"PXSmartAlbumAnyKeyword", @"PXSmartAlbumStrings");
  v0 = [[PXLabeledValue alloc] initWithValue:0 localizedLabel:v2];
  v1 = anyKeywordValue__anyKeywordValue;
  anyKeywordValue__anyKeywordValue = v0;
}

@end