@interface PXStoryPhotoKitAssetContainer
- (BOOL)isEqual:(id)a3;
- (PHObject)container;
- (PXStoryPhotoKitAssetContainer)init;
- (PXStoryPhotoKitAssetContainer)initWithAssetCollection:(id)a3 originalContainer:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXStoryPhotoKitAssetContainer

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXStoryPhotoKitAssetContainer *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@: %p identifier: %@>", v5, self, v6];;

  return v7;
}

- (unint64_t)hash
{
  v3 = [(PXStoryPhotoKitAssetContainer *)self assetCollection];
  v4 = [v3 hash];

  v5 = [(PXStoryPhotoKitAssetContainer *)self originalContainer];
  v6 = v4 ^ (2 * [v5 hash]);

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;

      if (!v7)
      {
        v11 = 0;
LABEL_16:

        goto LABEL_17;
      }

      v6 = [(PXStoryPhotoKitAssetContainer *)self assetCollection];
      v8 = [(PXStoryPhotoKitAssetContainer *)v7 assetCollection];
      if ([(PXStoryPhotoKitAssetContainer *)v6 isEqual:v8])
      {
        v9 = [(PXStoryPhotoKitAssetContainer *)self originalContainer];
        v10 = [(PXStoryPhotoKitAssetContainer *)v7 originalContainer];
        if (v9 == v10)
        {
          v11 = 1;
        }

        else
        {
          v11 = [v9 isEqual:v10];
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v7 = 0;
      v11 = 0;
    }

    goto LABEL_16;
  }

  v11 = 1;
LABEL_17:

  return v11;
}

- (PHObject)container
{
  v3 = [(PXStoryPhotoKitAssetContainer *)self originalContainer];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(PXStoryPhotoKitAssetContainer *)self assetCollection];
  }

  v6 = v5;

  return v6;
}

- (PXStoryPhotoKitAssetContainer)initWithAssetCollection:(id)a3 originalContainer:(id)a4
{
  v8 = a3;
  v9 = a4;
  v24.receiver = self;
  v24.super_class = PXStoryPhotoKitAssetContainer;
  v10 = [(PXStoryPhotoKitAssetContainer *)&v24 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_assetCollection, a3);
    objc_storeStrong(&v11->_originalContainer, a4);
    v12 = [v8 photoLibrary];
    photoLibrary = v11->_photoLibrary;
    v11->_photoLibrary = v12;

    originalContainer = v11->_originalContainer;
    if (originalContainer)
    {
      v15 = [(PHObject *)originalContainer photoLibrary];
      v16 = [v15 isEqual:v11->_photoLibrary];

      if ((v16 & 1) == 0)
      {
        v23 = [MEMORY[0x1E696AAA8] currentHandler];
        [v23 handleFailureInMethod:a2 object:v11 file:@"PXStoryPhotoKitAssetContainer.m" lineNumber:31 description:@"photo library mismatch"];
      }
    }

    v17 = MEMORY[0x1E696AEC0];
    v18 = [v8 localIdentifier];
    v19 = [v9 localIdentifier];
    v20 = [v17 stringWithFormat:@"%@-%@", v18, v19];
    identifier = v11->_identifier;
    v11->_identifier = v20;
  }

  return v11;
}

- (PXStoryPhotoKitAssetContainer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryPhotoKitAssetContainer.m" lineNumber:20 description:{@"%s is not available as initializer", "-[PXStoryPhotoKitAssetContainer init]"}];

  abort();
}

@end