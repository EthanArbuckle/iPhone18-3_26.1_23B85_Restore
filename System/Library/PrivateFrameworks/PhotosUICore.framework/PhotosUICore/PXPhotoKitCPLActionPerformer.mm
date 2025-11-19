@interface PXPhotoKitCPLActionPerformer
- (PXPhotoKitCPLActionPerformer)initWithActionType:(id)a3;
- (PXPhotoKitCPLActionPerformer)initWithActionType:(id)a3 photoLibrary:(id)a4;
@end

@implementation PXPhotoKitCPLActionPerformer

- (PXPhotoKitCPLActionPerformer)initWithActionType:(id)a3 photoLibrary:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXPhotoKitCPLActionPerformer.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v13.receiver = self;
  v13.super_class = PXPhotoKitCPLActionPerformer;
  v9 = [(PXActionPerformer *)&v13 initWithActionType:v7];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_photoLibrary, a4);
  }

  return v10;
}

- (PXPhotoKitCPLActionPerformer)initWithActionType:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXPhotoKitCPLActionPerformer.m" lineNumber:86 description:{@"%s is not available as initializer", "-[PXPhotoKitCPLActionPerformer initWithActionType:]"}];

  abort();
}

@end