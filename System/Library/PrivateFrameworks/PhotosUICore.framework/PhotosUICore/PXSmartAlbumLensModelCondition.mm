@interface PXSmartAlbumLensModelCondition
+ (id)defaultSingleQueryForEditingContext:(id)a3;
- (NSArray)lensModels;
- (NSString)lensModel;
- (void)setLensModel:(id)a3;
@end

@implementation PXSmartAlbumLensModelCondition

+ (id)defaultSingleQueryForEditingContext:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x1E69BF300]);
  [v3 setKey:305];
  [v3 setStringValue:&stru_1F1741150];
  [v3 setComparator:20];

  return v3;
}

- (void)setLensModel:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumEXIFCondition.m" lineNumber:306 description:{@"Invalid parameter not satisfying: %@", @"lensModel"}];
  }

  v6 = [(PXSmartAlbumCondition *)self singleQuery];
  [v6 setStringValue:v5];
  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: lens model set to: %@", buf, 0xCu);
  }

  v8 = [(PXSmartAlbumCondition *)self delegate];
  [v8 conditionDidChange:self];
}

- (NSString)lensModel
{
  v2 = [(PXSmartAlbumCondition *)self singleQuery];
  v3 = [v2 stringValue];

  return v3;
}

- (NSArray)lensModels
{
  lensModels = self->_lensModels;
  if (!lensModels)
  {
    v4 = [(PXSmartAlbumCondition *)self editingContext];
    v5 = [v4 lensModels];
    v6 = self->_lensModels;
    self->_lensModels = v5;

    lensModels = self->_lensModels;
  }

  return lensModels;
}

@end