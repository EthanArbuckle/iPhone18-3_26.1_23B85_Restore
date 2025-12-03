@interface PXStoryPhotoKitAssetContainer
- (BOOL)isEqual:(id)equal;
- (PHObject)container;
- (PXStoryPhotoKitAssetContainer)init;
- (PXStoryPhotoKitAssetContainer)initWithAssetCollection:(id)collection originalContainer:(id)container;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXStoryPhotoKitAssetContainer

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(PXStoryPhotoKitAssetContainer *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@: %p identifier: %@>", v5, self, identifier];;

  return v7;
}

- (unint64_t)hash
{
  assetCollection = [(PXStoryPhotoKitAssetContainer *)self assetCollection];
  v4 = [assetCollection hash];

  originalContainer = [(PXStoryPhotoKitAssetContainer *)self originalContainer];
  v6 = v4 ^ (2 * [originalContainer hash]);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    assetCollection = equalCopy;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = assetCollection;

      if (!v7)
      {
        v11 = 0;
LABEL_16:

        goto LABEL_17;
      }

      assetCollection = [(PXStoryPhotoKitAssetContainer *)self assetCollection];
      assetCollection2 = [(PXStoryPhotoKitAssetContainer *)v7 assetCollection];
      if ([(PXStoryPhotoKitAssetContainer *)assetCollection isEqual:assetCollection2])
      {
        originalContainer = [(PXStoryPhotoKitAssetContainer *)self originalContainer];
        originalContainer2 = [(PXStoryPhotoKitAssetContainer *)v7 originalContainer];
        if (originalContainer == originalContainer2)
        {
          v11 = 1;
        }

        else
        {
          v11 = [originalContainer isEqual:originalContainer2];
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
  originalContainer = [(PXStoryPhotoKitAssetContainer *)self originalContainer];
  v4 = originalContainer;
  if (originalContainer)
  {
    assetCollection = originalContainer;
  }

  else
  {
    assetCollection = [(PXStoryPhotoKitAssetContainer *)self assetCollection];
  }

  v6 = assetCollection;

  return v6;
}

- (PXStoryPhotoKitAssetContainer)initWithAssetCollection:(id)collection originalContainer:(id)container
{
  collectionCopy = collection;
  containerCopy = container;
  v24.receiver = self;
  v24.super_class = PXStoryPhotoKitAssetContainer;
  v10 = [(PXStoryPhotoKitAssetContainer *)&v24 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_assetCollection, collection);
    objc_storeStrong(&v11->_originalContainer, container);
    photoLibrary = [collectionCopy photoLibrary];
    photoLibrary = v11->_photoLibrary;
    v11->_photoLibrary = photoLibrary;

    originalContainer = v11->_originalContainer;
    if (originalContainer)
    {
      photoLibrary2 = [(PHObject *)originalContainer photoLibrary];
      v16 = [photoLibrary2 isEqual:v11->_photoLibrary];

      if ((v16 & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:v11 file:@"PXStoryPhotoKitAssetContainer.m" lineNumber:31 description:@"photo library mismatch"];
      }
    }

    v17 = MEMORY[0x1E696AEC0];
    localIdentifier = [collectionCopy localIdentifier];
    localIdentifier2 = [containerCopy localIdentifier];
    v20 = [v17 stringWithFormat:@"%@-%@", localIdentifier, localIdentifier2];
    identifier = v11->_identifier;
    v11->_identifier = v20;
  }

  return v11;
}

- (PXStoryPhotoKitAssetContainer)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryPhotoKitAssetContainer.m" lineNumber:20 description:{@"%s is not available as initializer", "-[PXStoryPhotoKitAssetContainer init]"}];

  abort();
}

@end