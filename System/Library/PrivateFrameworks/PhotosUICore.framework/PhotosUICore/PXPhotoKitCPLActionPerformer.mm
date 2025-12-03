@interface PXPhotoKitCPLActionPerformer
- (PXPhotoKitCPLActionPerformer)initWithActionType:(id)type;
- (PXPhotoKitCPLActionPerformer)initWithActionType:(id)type photoLibrary:(id)library;
@end

@implementation PXPhotoKitCPLActionPerformer

- (PXPhotoKitCPLActionPerformer)initWithActionType:(id)type photoLibrary:(id)library
{
  typeCopy = type;
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitCPLActionPerformer.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v13.receiver = self;
  v13.super_class = PXPhotoKitCPLActionPerformer;
  v9 = [(PXActionPerformer *)&v13 initWithActionType:typeCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_photoLibrary, library);
  }

  return v10;
}

- (PXPhotoKitCPLActionPerformer)initWithActionType:(id)type
{
  typeCopy = type;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitCPLActionPerformer.m" lineNumber:86 description:{@"%s is not available as initializer", "-[PXPhotoKitCPLActionPerformer initWithActionType:]"}];

  abort();
}

@end