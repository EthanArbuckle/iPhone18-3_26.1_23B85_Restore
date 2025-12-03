@interface PXSmartAlbumKeywordCondition
+ (PXLabeledValue)anyKeywordValue;
+ (id)defaultSingleQueryForEditingContext:(id)context;
- (NSArray)keywordValues;
- (PXLabeledValue)keywordValue;
- (void)setKeywordValue:(id)value;
@end

@implementation PXSmartAlbumKeywordCondition

- (void)setKeywordValue:(id)value
{
  v17 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumKeywordCondition.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"keywordValue"}];
  }

  value = [valueCopy value];
  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  v8 = singleQuery;
  if (value)
  {
    [singleQuery setStringValue:value];
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v16 = value;
      v10 = "PXSmartAlbums: keyword value set to: %@";
      v11 = v9;
      v12 = 12;
LABEL_8:
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, v10, buf, v12);
    }
  }

  else
  {
    [singleQuery setStringValue:0];
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

  delegate = [(PXSmartAlbumCondition *)self delegate];
  [delegate conditionDidChange:self];
}

- (PXLabeledValue)keywordValue
{
  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  stringValue = [singleQuery stringValue];
  if (stringValue)
  {
    v4 = [[PXLabeledValue alloc] initWithValue:stringValue localizedLabel:stringValue];
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
    editingContext = [(PXSmartAlbumCondition *)self editingContext];
    keywordValues = [editingContext keywordValues];
    v6 = [keywordValues mutableCopy];

    keywordValue = [(PXSmartAlbumKeywordCondition *)self keywordValue];
    if (![(NSArray *)v6 containsObject:keywordValue])
    {
      v8 = +[PXLabeledValue separatorLabeledValue];
      [(NSArray *)v6 insertObject:v8 atIndex:0];

      [(NSArray *)v6 insertObject:keywordValue atIndex:0];
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

+ (id)defaultSingleQueryForEditingContext:(id)context
{
  keywordValues = [context keywordValues];
  firstObject = [keywordValues firstObject];

  value = [firstObject value];
  v6 = objc_alloc_init(MEMORY[0x1E69BF300]);
  [v6 setKey:500];
  [v6 setStringValue:value];
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