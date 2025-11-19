@interface PXSmartAlbumStringValueCondition
- (NSString)stringValue;
- (void)setStringValue:(id)a3;
@end

@implementation PXSmartAlbumStringValueCondition

- (void)setStringValue:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumStringValueCondition.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"stringValue"}];
  }

  v6 = [(PXSmartAlbumCondition *)self singleQuery];
  [v6 setStringValue:v5];
  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: string value set to: %@", buf, 0xCu);
  }

  v8 = [(PXSmartAlbumCondition *)self delegate];
  [v8 conditionDidChange:self];
}

- (NSString)stringValue
{
  v2 = [(PXSmartAlbumCondition *)self singleQuery];
  v3 = [v2 stringValue];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1F1741150;
  }

  v6 = v5;

  return &v5->isa;
}

@end