@interface PXSmartAlbumCameraModelCondition
+ (id)defaultSingleQueryForEditingContext:(id)context;
- (NSArray)cameraModels;
- (NSString)cameraModel;
- (void)setCameraModel:(id)model;
@end

@implementation PXSmartAlbumCameraModelCondition

+ (id)defaultSingleQueryForEditingContext:(id)context
{
  v3 = objc_alloc_init(MEMORY[0x1E69BF300]);
  [v3 setKey:301];
  [v3 setStringValue:&stru_1F1741150];
  [v3 setComparator:20];

  return v3;
}

- (void)setCameraModel:(id)model
{
  v12 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  if (!modelCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumEXIFCondition.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"cameraModel"}];
  }

  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  [singleQuery setStringValue:modelCopy];
  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = modelCopy;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: camera model set to: %@", buf, 0xCu);
  }

  delegate = [(PXSmartAlbumCondition *)self delegate];
  [delegate conditionDidChange:self];
}

- (NSString)cameraModel
{
  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  stringValue = [singleQuery stringValue];

  return stringValue;
}

- (NSArray)cameraModels
{
  cameraModels = self->_cameraModels;
  if (!cameraModels)
  {
    editingContext = [(PXSmartAlbumCondition *)self editingContext];
    cameraModels = [editingContext cameraModels];
    v6 = self->_cameraModels;
    self->_cameraModels = cameraModels;

    cameraModels = self->_cameraModels;
  }

  return cameraModels;
}

@end