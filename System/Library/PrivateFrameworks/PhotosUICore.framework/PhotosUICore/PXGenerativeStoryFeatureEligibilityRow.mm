@interface PXGenerativeStoryFeatureEligibilityRow
- (PXGenerativeStoryFeatureEligibilityRow)init;
- (PXGenerativeStoryFeatureEligibilityRow)initWithPhotoLibrary:(id)library titleKeyPath:(id)path imageKeyPath:(id)keyPath;
- (id)copyWithZone:(_NSZone *)zone;
- (id)defaultUIAction;
@end

@implementation PXGenerativeStoryFeatureEligibilityRow

- (id)defaultUIAction
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__PXGenerativeStoryFeatureEligibilityRow_defaultUIAction__block_invoke;
  v4[3] = &unk_1E7747050;
  v4[4] = self;
  v4[5] = a2;
  v2 = [MEMORY[0x1E69C6658] actionWithHandler:v4];

  return v2;
}

uint64_t __57__PXGenerativeStoryFeatureEligibilityRow_defaultUIAction__block_invoke(uint64_t a1, void *a2, void *a3)
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

    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = *(a1 + 32);
    v25 = *(a1 + 40);
    v27 = objc_opt_class();
    v20 = NSStringFromClass(v27);
    v28 = [v7 px_descriptionForAssertionMessage];
    [v16 handleFailureInMethod:v25 object:v26 file:@"PXGenerativeStoryFeatureEligibilityRow.m" lineNumber:82 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"row", v20, v28}];
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = *(a1 + 32);
    v17 = *(a1 + 40);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [v16 handleFailureInMethod:v17 object:v18 file:@"PXGenerativeStoryFeatureEligibilityRow.m" lineNumber:82 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"row", v20}];
  }

LABEL_3:
  v8 = [v7 photoLibrary];

  v9 = v8;
  v10 = v6;
  v11 = v10;
  if (!v9)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PresentFullDescriptionAlertForLibrary(PHPhotoLibrary *__strong, UIViewController *__strong)"}];
    [v21 handleFailureInFunction:v22 file:@"PXGenerativeStoryFeatureEligibilityRow.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

    if (v11)
    {
      goto LABEL_5;
    }

LABEL_8:
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PresentFullDescriptionAlertForLibrary(PHPhotoLibrary *__strong, UIViewController *__strong)"}];
    [v23 handleFailureInFunction:v24 file:@"PXGenerativeStoryFeatureEligibilityRow.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"viewController"}];

    goto LABEL_5;
  }

  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_5:
  v12 = [objc_alloc(MEMORY[0x1E69789D0]) initWithPhotoLibrary:v9];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = ___PresentFullDescriptionAlertForLibrary_block_invoke;
  v29[3] = &unk_1E772F500;
  v30 = v9;
  v31 = v11;
  v13 = v11;
  v14 = v9;
  [PXGenerativeStoryFeatureEligibilityDataSource generateFeatureEligibilityStateUsingProcessingAvailabilityReporter:v12 photoLibrary:v14 completionHandler:v29];

  return 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PXGenerativeStoryFeatureEligibilityRow alloc];
  photoLibrary = self->_photoLibrary;
  titleKeyPath = [(PXGenerativeStoryFeatureEligibilityRow *)self titleKeyPath];
  imageKeyPath = [(PXGenerativeStoryFeatureEligibilityRow *)self imageKeyPath];
  v8 = [(PXGenerativeStoryFeatureEligibilityRow *)v4 initWithPhotoLibrary:photoLibrary titleKeyPath:titleKeyPath imageKeyPath:imageKeyPath];

  return v8;
}

- (PXGenerativeStoryFeatureEligibilityRow)initWithPhotoLibrary:(id)library titleKeyPath:(id)path imageKeyPath:(id)keyPath
{
  libraryCopy = library;
  pathCopy = path;
  keyPathCopy = keyPath;
  v15.receiver = self;
  v15.super_class = PXGenerativeStoryFeatureEligibilityRow;
  v12 = [(PXGenerativeStoryFeatureEligibilityRow *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_photoLibrary, library);
    [(PXGenerativeStoryFeatureEligibilityRow *)v13 setTitleKeyPath:pathCopy];
    [(PXGenerativeStoryFeatureEligibilityRow *)v13 setImageKeyPath:keyPathCopy];
  }

  return v13;
}

- (PXGenerativeStoryFeatureEligibilityRow)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGenerativeStoryFeatureEligibilityRow.m" lineNumber:51 description:{@"%s is not available as initializer", "-[PXGenerativeStoryFeatureEligibilityRow init]"}];

  abort();
}

@end