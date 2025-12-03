@interface PXSmartAlbumStringValueCondition
- (NSString)stringValue;
- (void)setStringValue:(id)value;
@end

@implementation PXSmartAlbumStringValueCondition

- (void)setStringValue:(id)value
{
  v12 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumStringValueCondition.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"stringValue"}];
  }

  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  [singleQuery setStringValue:valueCopy];
  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = valueCopy;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: string value set to: %@", buf, 0xCu);
  }

  delegate = [(PXSmartAlbumCondition *)self delegate];
  [delegate conditionDidChange:self];
}

- (NSString)stringValue
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

@end