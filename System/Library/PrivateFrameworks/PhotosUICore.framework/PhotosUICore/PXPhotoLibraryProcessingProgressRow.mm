@interface PXPhotoLibraryProcessingProgressRow
- (PXPhotoLibraryProcessingProgressRow)init;
- (PXPhotoLibraryProcessingProgressRow)initWithPhotoLibrary:(id)library titleKeyPath:(id)path imageKeyPath:(id)keyPath;
- (id)copyWithZone:(_NSZone *)zone;
- (id)defaultUIAction;
@end

@implementation PXPhotoLibraryProcessingProgressRow

- (id)defaultUIAction
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__PXPhotoLibraryProcessingProgressRow_defaultUIAction__block_invoke;
  v4[3] = &unk_1E7747050;
  v4[4] = self;
  v4[5] = a2;
  v2 = [MEMORY[0x1E69C6658] actionWithHandler:v4];

  return v2;
}

uint64_t __54__PXPhotoLibraryProcessingProgressRow_defaultUIAction__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = *(a1 + 32);
    v23 = *(a1 + 40);
    v25 = objc_opt_class();
    v18 = NSStringFromClass(v25);
    v26 = [v7 px_descriptionForAssertionMessage];
    [v14 handleFailureInMethod:v23 object:v24 file:@"PXPhotoLibraryProcessingProgressRow.m" lineNumber:74 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"row", v18, v26}];
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v14 handleFailureInMethod:v15 object:v16 file:@"PXPhotoLibraryProcessingProgressRow.m" lineNumber:74 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"row", v18}];
  }

LABEL_3:
  v8 = [v7 photoLibrary];

  v9 = v8;
  v10 = v6;
  v11 = v10;
  if (!v9)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PresentFullDescriptionAlertForLibrary(PHPhotoLibrary *__strong, UIViewController *__strong)"}];
    [v19 handleFailureInFunction:v20 file:@"PXPhotoLibraryProcessingProgressRow.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

    if (v11)
    {
      goto LABEL_5;
    }

LABEL_8:
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PresentFullDescriptionAlertForLibrary(PHPhotoLibrary *__strong, UIViewController *__strong)"}];
    [v21 handleFailureInFunction:v22 file:@"PXPhotoLibraryProcessingProgressRow.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"viewController"}];

    goto LABEL_5;
  }

  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_5:
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = ___PresentFullDescriptionAlertForLibrary_block_invoke_220150;
  v27[3] = &unk_1E77470A0;
  v28 = v11;
  v12 = v11;
  [PXPhotoLibraryProcessingProgressReport requestFullDescriptionForLibrary:v9 resultBlock:v27];

  return 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PXPhotoLibraryProcessingProgressRow alloc];
  photoLibrary = self->_photoLibrary;
  titleKeyPath = [(PXPhotoLibraryProcessingProgressRow *)self titleKeyPath];
  imageKeyPath = [(PXPhotoLibraryProcessingProgressRow *)self imageKeyPath];
  v8 = [(PXPhotoLibraryProcessingProgressRow *)v4 initWithPhotoLibrary:photoLibrary titleKeyPath:titleKeyPath imageKeyPath:imageKeyPath];

  return v8;
}

- (PXPhotoLibraryProcessingProgressRow)initWithPhotoLibrary:(id)library titleKeyPath:(id)path imageKeyPath:(id)keyPath
{
  libraryCopy = library;
  pathCopy = path;
  keyPathCopy = keyPath;
  v15.receiver = self;
  v15.super_class = PXPhotoLibraryProcessingProgressRow;
  v12 = [(PXPhotoLibraryProcessingProgressRow *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_photoLibrary, library);
    [(PXPhotoLibraryProcessingProgressRow *)v13 setTitleKeyPath:pathCopy];
    [(PXPhotoLibraryProcessingProgressRow *)v13 setImageKeyPath:keyPathCopy];
  }

  return v13;
}

- (PXPhotoLibraryProcessingProgressRow)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoLibraryProcessingProgressRow.m" lineNumber:48 description:{@"%s is not available as initializer", "-[PXPhotoLibraryProcessingProgressRow init]"}];

  abort();
}

@end