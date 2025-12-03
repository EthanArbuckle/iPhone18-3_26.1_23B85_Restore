@interface PKUpcomingPassInformationDetailsHeaderItemPresenter
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKUpcomingPassInformationDetailsHeaderItemPresenter)init;
- (id)_blurredImageFromImage:(id)image;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path;
- (void)_updateHeaderImagesOnCell:(id)cell item:(id)item;
- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view;
@end

@implementation PKUpcomingPassInformationDetailsHeaderItemPresenter

- (PKUpcomingPassInformationDetailsHeaderItemPresenter)init
{
  v7.receiver = self;
  v7.super_class = PKUpcomingPassInformationDetailsHeaderItemPresenter;
  v2 = [(PKUpcomingPassInformationDetailsHeaderItemPresenter *)&v7 init];
  if (v2)
  {
    v3 = [PKUpcomingPassInformationDetailsHeaderCell alloc];
    v4 = [(PKUpcomingPassInformationDetailsHeaderCell *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleCell = v2->_sampleCell;
    v2->_sampleCell = v4;
  }

  return v2;
}

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"PKUpcomingPassInformationEntryHeaderItemCellReuseIdentifier";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  itemCopy = item;
  v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"PKUpcomingPassInformationEntryHeaderItemCellReuseIdentifier" forIndexPath:pathCopy];
  [(PKUpcomingPassInformationDetailsHeaderItemPresenter *)self _configureCell:v11 forItem:itemCopy inCollectionView:viewCopy forIndexPath:pathCopy];

  return v11;
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  sampleCell = self->_sampleCell;
  [view bounds];

  [(PKUpcomingPassInformationDetailsHeaderCell *)sampleCell sizeThatFits:width, v8];
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  headerView = [cellCopy headerView];
  title = [itemCopy title];
  [headerView setPrimaryText:title];

  secondaryText = [itemCopy secondaryText];
  [headerView setSecondaryText:secondaryText];

  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  [headerView setFallbackColor:systemGrayColor];

  [cellCopy setOverlayEffect:self->_overlayEffect];
  [cellCopy setShadowColor:self->_shadowColor];
  headerManifest = [itemCopy headerManifest];
  if (headerManifest)
  {
    v19 = [headerManifest itemClosestMatchingScreenScale:PKUIScreenScale()];
    sessionCachedImageIfExists = [v19 sessionCachedImageIfExists];
    if (sessionCachedImageIfExists)
    {
      v21 = [MEMORY[0x1E69DCAB8] imageWithPKImage:sessionCachedImageIfExists];
      headerImage = self->_headerImage;
      self->_headerImage = v21;
    }

    else
    {
      objc_initWeak(&location, self);
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __108__PKUpcomingPassInformationDetailsHeaderItemPresenter__configureCell_forItem_inCollectionView_forIndexPath___block_invoke;
      v26 = &unk_1E801A238;
      objc_copyWeak(&v29, &location);
      v27 = cellCopy;
      v28 = itemCopy;
      [v19 downloadImageWithCompletion:&v23];

      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }
  }

  [(PKUpcomingPassInformationDetailsHeaderItemPresenter *)self _updateHeaderImagesOnCell:cellCopy item:itemCopy, v23, v24, v25, v26];
}

void __108__PKUpcomingPassInformationDetailsHeaderItemPresenter__configureCell_forItem_inCollectionView_forIndexPath___block_invoke(id *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v12[5] = v3;
    v12[6] = v4;
    v6 = [MEMORY[0x1E69DCAB8] imageWithPKImage:a2];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __108__PKUpcomingPassInformationDetailsHeaderItemPresenter__configureCell_forItem_inCollectionView_forIndexPath___block_invoke_2;
    v8[3] = &unk_1E8014828;
    objc_copyWeak(v12, a1 + 6);
    v9 = v6;
    v10 = a1[4];
    v11 = a1[5];
    v7 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v8);

    objc_destroyWeak(v12);
  }
}

void __108__PKUpcomingPassInformationDetailsHeaderItemPresenter__configureCell_forItem_inCollectionView_forIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 2, *(a1 + 32));
    [v3 _updateHeaderImagesOnCell:*(a1 + 40) item:*(a1 + 48)];
    WeakRetained = v3;
  }
}

- (void)_updateHeaderImagesOnCell:(id)cell item:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  headerManifest = [itemCopy headerManifest];

  if (headerManifest)
  {
    p_headerImage = &self->_headerImage;
LABEL_3:
    fallbackBackgroundImage = *p_headerImage;
    goto LABEL_5;
  }

  p_headerImage = &self->_fallbackBackgroundImage;
  fallbackBackgroundImage = self->_fallbackBackgroundImage;
  if (!fallbackBackgroundImage)
  {
    v14 = MEMORY[0x1E69DCAB8];
    fallbackBackgroundImage = [itemCopy fallbackBackgroundImage];
    v16 = [v14 imageWithPKImage:fallbackBackgroundImage];

    v17 = [(PKUpcomingPassInformationDetailsHeaderItemPresenter *)self _blurredImageFromImage:v16];
    v18 = self->_fallbackBackgroundImage;
    self->_fallbackBackgroundImage = v17;

    goto LABEL_3;
  }

LABEL_5:
  v10 = fallbackBackgroundImage;
  headerView = [cellCopy headerView];
  backgroundImage = [headerView backgroundImage];
  v13 = backgroundImage == 0;

  [headerView setBackgroundImage:v10 animated:v13];
  [headerView setShowsGradientOverlay:v10 != 0];
}

- (id)_blurredImageFromImage:(id)image
{
  v3 = MEMORY[0x1E695F620];
  imageCopy = image;
  v5 = [[v3 alloc] initWithOptions:0];
  v6 = [objc_alloc(MEMORY[0x1E695F658]) initWithImage:imageCopy];

  v7 = [MEMORY[0x1E695F648] filterWithName:@"CIAffineClamp"];
  [v7 setDefaults];
  v8 = *MEMORY[0x1E695FAB0];
  [v7 setValue:v6 forKey:*MEMORY[0x1E695FAB0]];
  v9 = [MEMORY[0x1E695F648] filterWithName:@"CIGaussianBlur"];
  outputImage = [v7 outputImage];
  [v9 setValue:outputImage forKey:v8];

  [v9 setValue:&unk_1F3CC7730 forKey:*MEMORY[0x1E695FB10]];
  v11 = [MEMORY[0x1E695F648] filterWithName:@"CIColorControls"];
  outputImage2 = [v9 outputImage];
  [v11 setValue:outputImage2 forKey:v8];

  [v11 setValue:&unk_1F3CC6C78 forKey:*MEMORY[0x1E695FB18]];
  [v6 extent];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  outputImage3 = [v11 outputImage];
  v22 = [v5 createCGImage:outputImage3 fromRect:{v14, v16, v18, v20}];

  v23 = objc_alloc(MEMORY[0x1E69DCA78]);
  preferredFormat = [MEMORY[0x1E69DCA80] preferredFormat];
  v25 = [v23 initWithBounds:preferredFormat format:{v14, v16, v18, v20}];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __78__PKUpcomingPassInformationDetailsHeaderItemPresenter__blurredImageFromImage___block_invoke;
  v28[3] = &__block_descriptor_72_e40_v16__0__UIGraphicsImageRendererContext_8l;
  *&v28[4] = v14;
  *&v28[5] = v16;
  *&v28[6] = v18;
  *&v28[7] = v20;
  v28[8] = v22;
  v26 = [v25 imageWithActions:v28];
  if (v22)
  {
    CGImageRelease(v22);
  }

  return v26;
}

void __78__PKUpcomingPassInformationDetailsHeaderItemPresenter__blurredImageFromImage___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  v6 = *(a1 + 32);
  v5.b = 0.0;
  v5.c = 0.0;
  v5.a = 1.0;
  *&v5.d = xmmword_1BE1153F0;
  v5.ty = CGRectGetHeight(v6);
  CGContextConcatCTM(v3, &v5);
  CGContextDrawImage(v3, *(a1 + 32), *(a1 + 64));
  v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.2];
  [v4 setFill];

  CGContextSetBlendMode(v3, kCGBlendModePlusDarker);
  CGContextFillRect(v3, *(a1 + 32));
}

- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view
{
  traitCopy = trait;
  toTraitCopy = toTrait;
  if (traitCopy && toTraitCopy)
  {
    preferredContentSizeCategory = [traitCopy preferredContentSizeCategory];
    preferredContentSizeCategory2 = [toTraitCopy preferredContentSizeCategory];
    if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, preferredContentSizeCategory2))
    {
    }

    else
    {
      legibilityWeight = [traitCopy legibilityWeight];
      legibilityWeight2 = [toTraitCopy legibilityWeight];

      if (legibilityWeight == legibilityWeight2)
      {
        goto LABEL_7;
      }
    }

    v12 = [PKUpcomingPassInformationDetailsHeaderCell alloc];
    v13 = [(PKUpcomingPassInformationDetailsHeaderCell *)v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleCell = self->_sampleCell;
    self->_sampleCell = v13;
  }

LABEL_7:
}

@end