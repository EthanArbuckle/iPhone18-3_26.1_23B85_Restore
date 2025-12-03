@interface PXSmartAlbumPersonCondition
+ (id)defaultSingleQueryForEditingContext:(id)context;
- (NSArray)personNames;
- (NSString)personName;
- (void)setPersonName:(id)name;
@end

@implementation PXSmartAlbumPersonCondition

+ (id)defaultSingleQueryForEditingContext:(id)context
{
  personNames = [context personNames];
  firstObject = [personNames firstObject];

  v5 = objc_alloc_init(MEMORY[0x1E69BF300]);
  [v5 setKey:550];
  [v5 setStringValue:firstObject];
  [v5 setComparator:20];

  return v5;
}

- (void)setPersonName:(id)name
{
  v12 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPersonCondition.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"personName"}];
  }

  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  [singleQuery setStringValue:nameCopy];
  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = nameCopy;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: person name set to: %@", buf, 0xCu);
  }

  delegate = [(PXSmartAlbumCondition *)self delegate];
  [delegate conditionDidChange:self];
}

- (NSString)personName
{
  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  stringValue = [singleQuery stringValue];
  v4 = stringValue;
  if (stringValue)
  {
    v5 = stringValue;
  }

  else
  {
    v5 = &stru_1F1741150;
  }

  v6 = v5;

  return &v5->isa;
}

- (NSArray)personNames
{
  personNames = self->_personNames;
  if (!personNames)
  {
    editingContext = [(PXSmartAlbumCondition *)self editingContext];
    personNames = [editingContext personNames];
    v6 = self->_personNames;
    self->_personNames = personNames;

    personNames = self->_personNames;
  }

  return personNames;
}

@end