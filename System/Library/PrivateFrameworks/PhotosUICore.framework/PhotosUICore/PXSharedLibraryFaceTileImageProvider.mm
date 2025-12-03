@interface PXSharedLibraryFaceTileImageProvider
- (PXSharedLibraryFaceTileImageProvider)init;
- (void)_setMeContact:(id)contact;
- (void)_updateCombinedImage;
- (void)_updateContext;
- (void)_updateIncludeMeContact;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setCombinedImage:(id)image;
@end

@implementation PXSharedLibraryFaceTileImageProvider

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXSharedLibraryFaceTileImageProviderModelObservationContext == context)
  {
    v9 = observableCopy;
    if (changeCopy)
    {
      [(PXSharedLibraryFaceTileImageProvider *)self _updateIncludeMeContact];
      observableCopy = v9;
    }

    if ((changeCopy & 0x1FE) != 0)
    {
      [(PXSharedLibraryFaceTileImageProvider *)self _updateContext];
    }

    else if ((changeCopy & 0x201) == 0)
    {
      goto LABEL_8;
    }

    [(PXSharedLibraryFaceTileImageProvider *)self _updateCombinedImage];
    observableCopy = v9;
  }

LABEL_8:
}

- (void)_updateCombinedImage
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->_meContact && [(PXSharedLibraryFaceTileImageProviderModel *)self->_providerModel includeMeContact])
  {
    [v3 addObject:self->_meContact];
  }

  faceTileCombinerItems = [(PXSharedLibraryFaceTileImageProviderModel *)self->_providerModel faceTileCombinerItems];
  [v3 addObjectsFromArray:faceTileCombinerItems];

  v5 = [v3 count];
  if (v5 > [(PXSharedLibraryFaceTileImageProviderModel *)self->_providerModel includeMeContact]&& self->_context)
  {
    if (v5 >= 5)
    {
      v6 = 5;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v3 subarrayWithRange:v5 - v6];
    if (!self->_faceTileImageCombiner)
    {
      v8 = objc_alloc_init(PXFaceTileImageCombiner);
      faceTileImageCombiner = self->_faceTileImageCombiner;
      self->_faceTileImageCombiner = v8;
    }

    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    objc_initWeak(&location, self);
    v10 = self->_faceTileImageCombiner;
    context = self->_context;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__PXSharedLibraryFaceTileImageProvider__updateCombinedImage__block_invoke;
    v13[3] = &unk_1E772DE70;
    v13[4] = &v16;
    objc_copyWeak(&v14, &location);
    [(PXFaceTileImageCombiner *)v10 requestCombinedImageForItems:v7 context:context resultHandler:v13];
    if (*(v17 + 24) == 1)
    {
      v12 = +[PXFaceTileImageCombiner placeholderImageForNumberOfItems:context:](PXFaceTileImageCombiner, "placeholderImageForNumberOfItems:context:", [v7 count], self->_context);
      [(PXSharedLibraryFaceTileImageProvider *)self setCombinedImage:v12];
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    [(PXSharedLibraryFaceTileImageProvider *)self setCombinedImage:0];
  }
}

void __60__PXSharedLibraryFaceTileImageProvider__updateCombinedImage__block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = 0;
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCombinedImage:v3];
}

- (void)_updateContext
{
  [(PXSharedLibraryFaceTileImageProviderModel *)self->_providerModel displayScale];
  v4 = v3;
  isRTL = [(PXSharedLibraryFaceTileImageProviderModel *)self->_providerModel isRTL];
  isAscending = [(PXSharedLibraryFaceTileImageProviderModel *)self->_providerModel isAscending];
  [(PXSharedLibraryFaceTileImageProviderModel *)self->_providerModel imageDiameter];
  v8 = v7;
  [(PXSharedLibraryFaceTileImageProviderModel *)self->_providerModel imageOffset];
  v10 = v9;
  backgroundColor = [(PXSharedLibraryFaceTileImageProviderModel *)self->_providerModel backgroundColor];
  borderColor = [(PXSharedLibraryFaceTileImageProviderModel *)self->_providerModel borderColor];
  [(PXSharedLibraryFaceTileImageProviderModel *)self->_providerModel borderWidth];
  if (v4 <= 0.0 || backgroundColor == 0 || borderColor == 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = [[PXFaceTileImageCombinerContext alloc] initWithDisplayScale:isRTL isRTL:isAscending isAscending:backgroundColor imageSize:borderColor imageOffset:v4 backgroundColor:v8 borderColor:round(v8 * v10) borderWidth:v12];
  }

  context = self->_context;
  self->_context = v15;
}

- (void)_updateIncludeMeContact
{
  if ([(PXSharedLibraryFaceTileImageProviderModel *)self->_providerModel includeMeContact])
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __63__PXSharedLibraryFaceTileImageProvider__updateIncludeMeContact__block_invoke;
    v4[3] = &unk_1E772DE48;
    objc_copyWeak(&v5, &location);
    [PXActivityUtilities requestMeContactWithCompletion:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  else
  {
    meContact = self->_meContact;
    self->_meContact = 0;
  }
}

void __63__PXSharedLibraryFaceTileImageProvider__updateIncludeMeContact__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setMeContact:v3];
}

- (void)_setMeContact:(id)contact
{
  contactCopy = contact;
  v5 = self->_meContact;
  v6 = v5;
  if (v5 == contactCopy)
  {
  }

  else
  {
    v7 = [(CNContact *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_meContact, contact);
      [(PXSharedLibraryFaceTileImageProvider *)self _updateCombinedImage];
    }
  }
}

- (void)setCombinedImage:(id)image
{
  imageCopy = image;
  combinedImage = self->_combinedImage;
  if (combinedImage != imageCopy && ([(UIImage *)combinedImage isEqual:imageCopy]& 1) == 0)
  {
    v6 = [(UIImage *)imageCopy copy];
    v7 = self->_combinedImage;
    self->_combinedImage = v6;

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__PXSharedLibraryFaceTileImageProvider_setCombinedImage___block_invoke;
    v8[3] = &unk_1E774C5F8;
    v8[4] = self;
    [(PXSharedLibraryFaceTileImageProvider *)self performChanges:v8];
  }
}

- (PXSharedLibraryFaceTileImageProvider)init
{
  v6.receiver = self;
  v6.super_class = PXSharedLibraryFaceTileImageProvider;
  v2 = [(PXSharedLibraryFaceTileImageProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(PXSharedLibraryFaceTileImageProviderModel);
    providerModel = v2->_providerModel;
    v2->_providerModel = v3;

    [(PXSharedLibraryFaceTileImageProviderModel *)v2->_providerModel registerChangeObserver:v2 context:PXSharedLibraryFaceTileImageProviderModelObservationContext];
  }

  return v2;
}

@end