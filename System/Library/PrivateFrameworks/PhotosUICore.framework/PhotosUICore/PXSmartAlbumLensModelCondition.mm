@interface PXSmartAlbumLensModelCondition
+ (id)defaultSingleQueryForEditingContext:(id)context;
- (NSArray)lensModels;
- (NSString)lensModel;
- (void)setLensModel:(id)model;
@end

@implementation PXSmartAlbumLensModelCondition

+ (id)defaultSingleQueryForEditingContext:(id)context
{
  v3 = objc_alloc_init(MEMORY[0x1E69BF300]);
  [v3 setKey:305];
  [v3 setStringValue:&stru_1F1741150];
  [v3 setComparator:20];

  return v3;
}

- (void)setLensModel:(id)model
{
  v12 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  if (!modelCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumEXIFCondition.m" lineNumber:306 description:{@"Invalid parameter not satisfying: %@", @"lensModel"}];
  }

  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  [singleQuery setStringValue:modelCopy];
  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = modelCopy;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: lens model set to: %@", buf, 0xCu);
  }

  delegate = [(PXSmartAlbumCondition *)self delegate];
  [delegate conditionDidChange:self];
}

- (NSString)lensModel
{
  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  stringValue = [singleQuery stringValue];

  return stringValue;
}

- (NSArray)lensModels
{
  lensModels = self->_lensModels;
  if (!lensModels)
  {
    editingContext = [(PXSmartAlbumCondition *)self editingContext];
    lensModels = [editingContext lensModels];
    v6 = self->_lensModels;
    self->_lensModels = lensModels;

    lensModels = self->_lensModels;
  }

  return lensModels;
}

@end