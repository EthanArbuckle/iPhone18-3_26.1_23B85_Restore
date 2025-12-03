@interface PXPlacesMapThumbnailAnnotationView
+ (id)_thumbnailCreationOperationQueue;
+ (id)_thumbnailFetchOperationQueue;
+ (id)_thumbnailSelectionQueue;
- (PXPlacesMapThumbnailAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier extendedTraitCollection:(id)collection imageCache:(id)cache countLabelStyle:(int64_t)style;
- (PXPlacesMapThumbnailLocationCurator)thumbnailLocationCurator;
- (UIImageView)countLabelBackgroundImageView;
- (id)_countLabelBackgroundColor;
- (id)preferredGeotaggableWithFallbackGeotaggable:(id)geotaggable;
- (id)primaryGeotaggable;
- (id)renderToImage;
- (id)userCacheKey;
- (void)_fetchImageForGeotaggable:(id)geotaggable renderer:(id)renderer networkAccessAllowed:(BOOL)allowed;
- (void)_fetchImageWithNetworkAccessAllowed:(BOOL)allowed;
- (void)_hideCountLabel;
- (void)_processGeotaggable:(id)geotaggable withImage:(CGImage *)image popoverImageType:(int64_t)type imageOptions:(unint64_t)options shouldCache:(BOOL)cache expectedGeotaggable:(id)expectedGeotaggable;
- (void)_processPostImage;
- (void)_reloadCount:(int64_t)count;
- (void)_reloadData:(BOOL)data;
- (void)_showCountLabel;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)prepareForReuse;
- (void)setAnnotation:(id)annotation;
- (void)setImage:(id)image;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation PXPlacesMapThumbnailAnnotationView

- (PXPlacesMapThumbnailLocationCurator)thumbnailLocationCurator
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailLocationCurator);

  return WeakRetained;
}

- (id)renderToImage
{
  [(PXPlacesMapThumbnailAnnotationView *)self frame];
  v4 = v3;
  v6 = v5;
  countLabel = [(PXPlacesMapThumbnailAnnotationView *)self countLabel];
  [countLabel frame];
  v9 = v8;
  v11 = v10;

  v17.width = v4 + v9 * 0.25;
  v17.height = v6 + v11 * 0.5;
  UIGraphicsBeginImageContextWithOptions(v17, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextTranslateCTM(CurrentContext, 0.0, v11 * 0.5);
  layer = [(PXPlacesMapThumbnailAnnotationView *)self layer];
  [layer renderInContext:CurrentContext];

  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v14;
}

- (void)_hideCountLabel
{
  countLabel = [(PXPlacesMapThumbnailAnnotationView *)self countLabel];
  isHidden = [countLabel isHidden];

  if ((isHidden & 1) == 0)
  {
    countLabel2 = [(PXPlacesMapThumbnailAnnotationView *)self countLabel];
    [countLabel2 setHidden:1];

    countLabelBackgroundImageView = [(PXPlacesMapThumbnailAnnotationView *)self countLabelBackgroundImageView];
    [countLabelBackgroundImageView setHidden:1];
  }
}

- (void)_showCountLabel
{
  countLabel = [(PXPlacesMapThumbnailAnnotationView *)self countLabel];
  isHidden = [countLabel isHidden];

  if (isHidden)
  {
    countLabel2 = [(PXPlacesMapThumbnailAnnotationView *)self countLabel];
    [countLabel2 setHidden:0];

    countLabelBackgroundImageView = [(PXPlacesMapThumbnailAnnotationView *)self countLabelBackgroundImageView];
    [countLabelBackgroundImageView setHidden:0];
  }
}

- (void)_reloadCount:(int64_t)count
{
  if (count > 1)
  {
    countLabel = [(PXPlacesMapThumbnailAnnotationView *)self countLabel];
    v6 = MEMORY[0x1E696ADA0];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:count];
    v8 = [v6 localizedStringFromNumber:v7 numberStyle:1];

    text = [countLabel text];
    v10 = text;
    if (v8 == text)
    {
    }

    else
    {
      v11 = [v8 isEqualToString:text];

      if ((v11 & 1) == 0)
      {
        [countLabel setText:v8];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __51__PXPlacesMapThumbnailAnnotationView__reloadCount___block_invoke;
        block[3] = &unk_1E774C648;
        block[4] = self;
        if (_reloadCount__onceToken != -1)
        {
          dispatch_once(&_reloadCount__onceToken, block);
        }

        image = [(MKAnnotationView *)self image];
        [image size];
        v14 = v13;

        if ([(PXPlacesMapThumbnailAnnotationView *)self countLabelStyle])
        {
          [countLabel intrinsicContentSize];
          [countLabel setFrame:{10.0, v14 - v15 + -10.0, v14 + -20.0, v15}];
        }

        else
        {
          v16 = 26.0;
          [v8 boundingRectWithSize:2 options:_reloadCount__countAttributes attributes:0 context:{v14, 26.0}];
          if (v17 + 10.0 >= 26.0)
          {
            v16 = v17 + 10.0;
          }

          [countLabel frame];
          if (v18 != v16)
          {
            [countLabel setFrame:{v14 + v16 * -3.0 * 0.25, -13.0, v16, 26.0}];
            [countLabel frame];
            v20 = v19;
            v22 = v21;
            v24 = v23;
            v26 = v25;
            countLabelBackgroundImageView = [(PXPlacesMapThumbnailAnnotationView *)self countLabelBackgroundImageView];
            [countLabelBackgroundImageView setFrame:{v20, v22, v24, v26}];
          }
        }

        [(PXPlacesMapThumbnailAnnotationView *)self _showCountLabel];
      }
    }
  }

  else
  {

    [(PXPlacesMapThumbnailAnnotationView *)self _hideCountLabel];
  }
}

void __51__PXPlacesMapThumbnailAnnotationView__reloadCount___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69DB648];
  v1 = _FontForCountLabelStyle([*(a1 + 32) countLabelStyle]);
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v3 = _reloadCount__countAttributes;
  _reloadCount__countAttributes = v2;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  selectedCopy = selected;
  v11.receiver = self;
  v11.super_class = PXPlacesMapThumbnailAnnotationView;
  [(MKAnnotationView *)&v11 setSelected:selected animated:animated];
  if (selectedCopy)
  {
    layer2 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CB0]];
    v7 = [MEMORY[0x1E69DC888] colorWithRed:0.5 green:0.5 blue:0.5 alpha:1.0];
    cGColor = [v7 CGColor];

    [layer2 setValue:cGColor forKey:@"inputColor"];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:{layer2, 0}];
    layer = [(PXPlacesMapThumbnailAnnotationView *)self layer];
    [layer setFilters:v9];
  }

  else
  {
    layer2 = [(PXPlacesMapThumbnailAnnotationView *)self layer];
    [layer2 setFilters:0];
  }
}

- (void)setImage:(id)image
{
  v7.receiver = self;
  v7.super_class = PXPlacesMapThumbnailAnnotationView;
  [(MKAnnotationView *)&v7 setImage:image];
  image = [(MKAnnotationView *)self image];
  [image size];
  v6 = v5;

  [(MKAnnotationView *)self setCenterOffset:0.0, v6 * -0.5];
  [(PXPlacesMapThumbnailAnnotationView *)self setImageIsPlaceholder:0];
}

- (void)_processPostImage
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v2, &location);
  px_dispatch_on_main_queue();
}

void __55__PXPlacesMapThumbnailAnnotationView__processPostImage__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _reloadCount:*(*(a1 + 32) + 1024)];

  v3 = [*(a1 + 32) displayCompletion];

  if (v3)
  {
    v4 = [*(a1 + 32) displayCompletion];
    v4[2]();

    v5 = *(a1 + 32);

    [v5 setDisplayCompletion:0];
  }
}

- (void)_processGeotaggable:(id)geotaggable withImage:(CGImage *)image popoverImageType:(int64_t)type imageOptions:(unint64_t)options shouldCache:(BOOL)cache expectedGeotaggable:(id)expectedGeotaggable
{
  geotaggableCopy = geotaggable;
  expectedGeotaggableCopy = expectedGeotaggable;
  if (image && (Width = CGImageGetWidth(image), Height = CGImageGetHeight(image), Width) && Height)
  {
    CFRetain(image);
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __130__PXPlacesMapThumbnailAnnotationView__processGeotaggable_withImage_popoverImageType_imageOptions_shouldCache_expectedGeotaggable___block_invoke;
    aBlock[3] = &unk_1E77492F8;
    objc_copyWeak(v25, &location);
    v22 = geotaggableCopy;
    v25[1] = image;
    v25[2] = type;
    v25[3] = options;
    v18 = expectedGeotaggableCopy;
    cacheCopy = cache;
    v23 = v18;
    selfCopy = self;
    v19 = _Block_copy(aBlock);
    v20 = +[PXPlacesMapThumbnailAnnotationView _thumbnailCreationOperationQueue];
    [v20 addOperationWithBlock:v19];

    objc_destroyWeak(v25);
    objc_destroyWeak(&location);
  }

  else if ([geotaggableCopy isEqual:expectedGeotaggableCopy])
  {
    [(PXPlacesMapThumbnailAnnotationView *)self _processPostImage];
  }
}

void __130__PXPlacesMapThumbnailAnnotationView__processGeotaggable_withImage_popoverImageType_imageOptions_shouldCache_expectedGeotaggable___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = +[PXPlacesPopoverImageFactory sharedInstance];
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = [WeakRetained extendedTraitCollection];
  v9 = [v3 createPopoverImageForGeotaggable:v4 withImage:v5 imageType:v6 imageOptions:v7 usingTraitCollection:v8];

  CFRelease(*(a1 + 64));
  if ([*(a1 + 32) isEqual:*(a1 + 40)])
  {
    if (*(a1 + 88) == 1)
    {
      v10 = [WeakRetained userCacheKey];
      v11 = [WeakRetained imageCache];
      [v11 cacheRenderedImage:v9 forGeotaggble:*(a1 + 32) andKey:v10];
    }

    WeakRetained;
    v9;
    objc_copyWeak(&v12, (a1 + 56));
    v13 = *(a1 + 88);
    px_dispatch_on_main_queue();
  }
}

void __130__PXPlacesMapThumbnailAnnotationView__processGeotaggable_withImage_popoverImageType_imageOptions_shouldCache_expectedGeotaggable___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setImage:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _reloadCount:*(*(a1 + 48) + 1024)];

  if (*(a1 + 64) == 1)
  {
    v3 = *(a1 + 32);

    [v3 _processPostImage];
  }
}

void __69__PXPlacesMapThumbnailAnnotationView__updatePlaceholderImageIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) image];
  if (!v2 || (v3 = v2, v4 = [*(a1 + 32) imageIsPlaceholder], v3, v4))
  {
    if ([*(a1 + 32) countLabelStyle] == 1)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    v6 = +[PXPlacesPopoverImageFactory sharedInstance];
    v7 = [*(a1 + 32) extendedTraitCollection];
    v8 = [v6 placeholderImageForImageType:v5 usingTraitCollection:v7];

    v9 = *(a1 + 32);
    v10 = objc_initWeak(&location, v9);
    [v9 setImage:v8];

    [*(a1 + 32) setImageIsPlaceholder:1];
    v11 = objc_loadWeakRetained(&location);
    [v11 _reloadCount:*(*(a1 + 32) + 1024)];

    objc_destroyWeak(&location);
  }
}

- (void)_fetchImageForGeotaggable:(id)geotaggable renderer:(id)renderer networkAccessAllowed:(BOOL)allowed
{
  geotaggableCopy = geotaggable;
  rendererCopy = renderer;
  if ([(PXPlacesMapThumbnailAnnotationView *)self countLabelStyle]== 1)
  {
    popoverImageType = 3;
  }

  else
  {
    popoverImageType = 2;
  }

  v11 = rendererCopy;
  v12 = +[PXPlacesPopoverImageFactory sharedInstance];
  extendedTraitCollection = [(PXPlacesMapThumbnailAnnotationView *)self extendedTraitCollection];
  [v12 thumbnailImageSizeForImageType:popoverImageType usingTraitCollection:extendedTraitCollection includeScale:1];
  v15 = v14;
  v17 = v16;

  if ([v11 conformsToProtocol:&unk_1F1AB2F20])
  {
    popoverImageType = [v11 popoverImageType];
    imageOptions = [v11 imageOptions];
  }

  else
  {
    imageOptions = 0;
  }

  objc_initWeak(&location, self);
  v19 = +[PXPlacesMapThumbnailAnnotationView _thumbnailFetchOperationQueue];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __94__PXPlacesMapThumbnailAnnotationView__fetchImageForGeotaggable_renderer_networkAccessAllowed___block_invoke;
  v22[3] = &unk_1E77492A8;
  v23 = v11;
  v20 = geotaggableCopy;
  v24 = v20;
  v26[1] = v15;
  v26[2] = v17;
  allowedCopy = allowed;
  objc_copyWeak(v26, &location);
  v21 = v23;
  v25 = v21;
  v26[3] = popoverImageType;
  v26[4] = imageOptions;
  [v19 addOperationWithBlock:v22];

  objc_destroyWeak(v26);
  objc_destroyWeak(&location);
}

void __94__PXPlacesMapThumbnailAnnotationView__fetchImageForGeotaggable_renderer_networkAccessAllowed___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 96);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __94__PXPlacesMapThumbnailAnnotationView__fetchImageForGeotaggable_renderer_networkAccessAllowed___block_invoke_2;
  v5[3] = &unk_1E7749280;
  objc_copyWeak(&v8, (a1 + 56));
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 80);
  [v2 imageForGeotaggable:v3 ofSize:v4 networkAccessAllowed:v5 andCompletion:{*(a1 + 64), *(a1 + 72)}];

  objc_destroyWeak(&v8);
}

void __94__PXPlacesMapThumbnailAnnotationView__fetchImageForGeotaggable_renderer_networkAccessAllowed___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21 = a2;
  v9 = a5;
  v10 = v9;
  if (!a3 || a4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _updatePlaceholderImageIfNeeded];

    if (v10)
    {
      v15 = [v10 objectForKeyedSubscript:*MEMORY[0x1E6978E60]];
      v16 = v15;
      if (v15 && [v15 BOOLValue])
      {
        v17 = objc_loadWeakRetained((a1 + 48));
        [v17 _fetchImageForGeotaggable:*(a1 + 32) renderer:*(a1 + 40) networkAccessAllowed:1];
      }

      else
      {
        v17 = objc_loadWeakRetained((a1 + 48));
        [v17 _processPostImage];
      }
    }

    else
    {
      v16 = objc_loadWeakRetained((a1 + 48));
      [v16 _processPostImage];
    }
  }

  else
  {
    v11 = [v9 objectForKeyedSubscript:PKPlacesCoarseLocationMediaInfoKey];
    v12 = [v11 BOOLValue];

    if (v12)
    {
      v13 = 4;
    }

    else
    {
      v13 = *(a1 + 56);
    }

    v18 = [v10 objectForKeyedSubscript:*MEMORY[0x1E6978E60]];
    v16 = v18;
    if (v18 && [v18 BOOLValue])
    {
      v19 = objc_loadWeakRetained((a1 + 48));
      [v19 _processGeotaggable:v21 withImage:a3 popoverImageType:v13 imageOptions:*(a1 + 64) shouldCache:0 expectedGeotaggable:*(a1 + 32)];

      v20 = objc_loadWeakRetained((a1 + 48));
      [v20 _fetchImageForGeotaggable:*(a1 + 32) renderer:*(a1 + 40) networkAccessAllowed:1];
    }

    else
    {
      v20 = objc_loadWeakRetained((a1 + 48));
      [v20 _processGeotaggable:v21 withImage:a3 popoverImageType:v13 imageOptions:*(a1 + 64) shouldCache:1 expectedGeotaggable:*(a1 + 32)];
    }
  }
}

- (void)_fetchImageWithNetworkAccessAllowed:(BOOL)allowed
{
  annotation = [(MKAnnotationView *)self annotation];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = annotation;
  }

  else
  {
    v6 = 0;
  }

  renderer = [v6 renderer];
  objc_initWeak(&location, self);
  _thumbnailSelectionQueue = [objc_opt_class() _thumbnailSelectionQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__PXPlacesMapThumbnailAnnotationView__fetchImageWithNetworkAccessAllowed___block_invoke;
  v10[3] = &unk_1E7749CD8;
  objc_copyWeak(&v12, &location);
  v11 = renderer;
  allowedCopy = allowed;
  v9 = renderer;
  dispatch_async(_thumbnailSelectionQueue, v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __74__PXPlacesMapThumbnailAnnotationView__fetchImageWithNetworkAccessAllowed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained primaryGeotaggable];
    v4 = [v5 preferredGeotaggableWithFallbackGeotaggable:v3];
    [v5 _fetchImageForGeotaggable:v4 renderer:*(a1 + 32) networkAccessAllowed:*(a1 + 48)];

    WeakRetained = v5;
  }
}

- (id)preferredGeotaggableWithFallbackGeotaggable:(id)geotaggable
{
  geotaggableCopy = geotaggable;
  annotation = [(MKAnnotationView *)self annotation];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = annotation;

    if (v6)
    {
      thumbnailLocationCurator = [(PXPlacesMapThumbnailAnnotationView *)self thumbnailLocationCurator];

      if (thumbnailLocationCurator)
      {
        geotaggables = [v6 geotaggables];
        thumbnailLocationCurator2 = [(PXPlacesMapThumbnailAnnotationView *)self thumbnailLocationCurator];
        v10 = [thumbnailLocationCurator2 curatedGeotaggableFromSet:geotaggables];

        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = geotaggableCopy;
        }

        v12 = v11;

        goto LABEL_11;
      }
    }
  }

  else
  {

    v6 = 0;
  }

  v12 = geotaggableCopy;
LABEL_11:

  return v12;
}

- (void)_reloadData:(BOOL)data
{
  if (!self->_geotaggablesCount)
  {
    objc_initWeak(&location, self);
    v10[1] = MEMORY[0x1E69E9820];
    v10[2] = 3221225472;
    v10[3] = __50__PXPlacesMapThumbnailAnnotationView__reloadData___block_invoke;
    v10[4] = &unk_1E774C318;
    objc_copyWeak(&v11, &location);
    px_dispatch_on_main_queue();
  }

  if (!data)
  {
    objc_initWeak(&location, self);
    objc_copyWeak(v9, &location);
    px_dispatch_on_main_queue();
  }

  primaryGeotaggable = [(PXPlacesMapThumbnailAnnotationView *)self primaryGeotaggable];
  imageCache = [(PXPlacesMapThumbnailAnnotationView *)self imageCache];

  if (imageCache)
  {
    userCacheKey = [(PXPlacesMapThumbnailAnnotationView *)self userCacheKey];
    imageCache2 = [(PXPlacesMapThumbnailAnnotationView *)self imageCache];
    v8 = [imageCache2 cachedRenderedImageForGeotaggble:primaryGeotaggable andKey:userCacheKey];

    if (v8)
    {
      objc_initWeak(&location, self);
      v9[1] = MEMORY[0x1E69E9820];
      v9[2] = 3221225472;
      v9[3] = __50__PXPlacesMapThumbnailAnnotationView__reloadData___block_invoke_2;
      v9[4] = &unk_1E774B708;
      objc_copyWeak(v10, &location);
      v9[5] = v8;
      v9[6] = self;
      px_dispatch_on_main_queue();
    }
  }

  [(PXPlacesMapThumbnailAnnotationView *)self _fetchImageWithNetworkAccessAllowed:0];
}

void __50__PXPlacesMapThumbnailAnnotationView__reloadData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setImage:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _hideCountLabel];
}

void __50__PXPlacesMapThumbnailAnnotationView__reloadData___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setImage:*(a1 + 32)];

  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 _reloadCount:*(*(a1 + 40) + 1024)];
}

void __50__PXPlacesMapThumbnailAnnotationView__reloadData___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _reloadCount:*(*(a1 + 32) + 1024)];
}

- (id)_countLabelBackgroundColor
{
  if (_countLabelBackgroundColor_token != -1)
  {
    dispatch_once(&_countLabelBackgroundColor_token, &__block_literal_global_235009);
  }

  v3 = _countLabelBackgroundColor_countLabelBackgroundColor;

  return v3;
}

void __64__PXPlacesMapThumbnailAnnotationView__countLabelBackgroundColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.0823529412 green:0.494117647 blue:0.984313725 alpha:1.0];
  v1 = _countLabelBackgroundColor_countLabelBackgroundColor;
  _countLabelBackgroundColor_countLabelBackgroundColor = v0;
}

- (UIImageView)countLabelBackgroundImageView
{
  image = [(UIImageView *)self->_countLabelBackgroundImageView image];

  if (!image)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__PXPlacesMapThumbnailAnnotationView_countLabelBackgroundImageView__block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    if (countLabelBackgroundImageView_token != -1)
    {
      dispatch_once(&countLabelBackgroundImageView_token, block);
    }

    [(UIImageView *)self->_countLabelBackgroundImageView setImage:countLabelBackgroundImageView_stretchablecountLabelBgImage];
  }

  countLabelBackgroundImageView = self->_countLabelBackgroundImageView;

  return countLabelBackgroundImageView;
}

void __67__PXPlacesMapThumbnailAnnotationView_countLabelBackgroundImageView__block_invoke(uint64_t a1)
{
  v8.width = 26.0;
  v8.height = 26.0;
  UIGraphicsBeginImageContextWithOptions(v8, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v3 = [*(a1 + 32) _countLabelBackgroundColor];
  CGContextSetFillColorWithColor(CurrentContext, [v3 CGColor]);

  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.width = 26.0;
  v9.size.height = 26.0;
  CGContextFillEllipseInRect(CurrentContext, v9);
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v4 = [v6 resizableImageWithCapInsets:1 resizingMode:{0.0, 13.0, 0.0, 13.0}];
  v5 = countLabelBackgroundImageView_stretchablecountLabelBgImage;
  countLabelBackgroundImageView_stretchablecountLabelBgImage = v4;
}

- (id)userCacheKey
{
  v3 = MEMORY[0x1E696AEC0];
  extendedTraitCollection = [(PXPlacesMapThumbnailAnnotationView *)self extendedTraitCollection];
  [extendedTraitCollection displayScale];
  v6 = v5;
  extendedTraitCollection2 = [(PXPlacesMapThumbnailAnnotationView *)self extendedTraitCollection];
  layoutSizeClass = [extendedTraitCollection2 layoutSizeClass];
  extendedTraitCollection3 = [(PXPlacesMapThumbnailAnnotationView *)self extendedTraitCollection];
  v10 = [v3 stringWithFormat:@"%f-%ld-%ld", v6, layoutSizeClass, objc_msgSend(extendedTraitCollection3, "layoutSizeSubclass")];

  return v10;
}

- (id)primaryGeotaggable
{
  annotation = [(MKAnnotationView *)self annotation];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = annotation;
  }

  else
  {
    v3 = 0;
  }

  geotaggables = [v3 geotaggables];
  firstObject = [geotaggables firstObject];

  return firstObject;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = PXPlacesMapThumbnailAnnotationView;
  [(MKAnnotationView *)&v5 prepareForReuse];
  [(PXPlacesMapThumbnailAnnotationView *)self setImage:0];
  countLabel = [(PXPlacesMapThumbnailAnnotationView *)self countLabel];
  [countLabel setText:&stru_1F1741150];

  [(PXPlacesMapThumbnailAnnotationView *)self _hideCountLabel];
  displayCompletion = [(PXPlacesMapThumbnailAnnotationView *)self displayCompletion];

  if (displayCompletion)
  {
    [(PXPlacesMapThumbnailAnnotationView *)self setDisplayCompletion:0];
  }
}

- (void)setAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v14.receiver = self;
  v14.super_class = PXPlacesMapThumbnailAnnotationView;
  [(MKAnnotationView *)&v14 setAnnotation:annotationCopy];
  annotation = [(MKAnnotationView *)self annotation];
  annotation2 = [(MKAnnotationView *)self annotation];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = annotation2;
  }

  else
  {
    v7 = 0;
  }

  geotaggables = [v7 geotaggables];
  self->_geotaggablesCount = [geotaggables count];
  extendedTraitCollection = [(PXPlacesMapThumbnailAnnotationView *)self extendedTraitCollection];

  if (extendedTraitCollection)
  {
    thumbnailLocationCurator = [(PXPlacesMapThumbnailAnnotationView *)self thumbnailLocationCurator];
    if (!thumbnailLocationCurator && ([(MKAnnotationView *)self image], thumbnailLocationCurator = objc_claimAutoreleasedReturnValue(), (v11 = thumbnailLocationCurator) != 0) && annotation)
    {
      v12 = [annotation isEqual:annotationCopy];

      v13 = v12 ^ 1;
    }

    else
    {

      v13 = 1;
    }

    [(PXPlacesMapThumbnailAnnotationView *)self _reloadData:v13 & 1];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXExtendedTraitCollectionObservationContext_235019 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapThumbnailAnnotationView.m" lineNumber:163 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 0x422) != 0)
  {
    v21 = observableCopy;
    v10 = observableCopy;
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_5;
      }

      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = objc_opt_class();
      v17 = NSStringFromClass(v18);
      px_descriptionForAssertionMessage = [v10 px_descriptionForAssertionMessage];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPlacesMapThumbnailAnnotationView.m" lineNumber:143 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"observable", v17, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPlacesMapThumbnailAnnotationView.m" lineNumber:143 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"observable", v17}];
    }

LABEL_5:
    [(PXPlacesMapThumbnailAnnotationView *)self setExtendedTraitCollection:v10];
    [(PXPlacesMapThumbnailAnnotationView *)self _updatePlaceholderImageIfNeeded];
    extendedTraitCollection = [(PXPlacesMapThumbnailAnnotationView *)self extendedTraitCollection];
    [extendedTraitCollection displayScale];
    v13 = v12;

    if (v13 != 0.0)
    {
      image = [(MKAnnotationView *)self image];

      if (image)
      {
        [(PXPlacesMapThumbnailAnnotationView *)self _reloadData:1];
      }
    }

    observableCopy = v21;
  }
}

- (PXPlacesMapThumbnailAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier extendedTraitCollection:(id)collection imageCache:(id)cache countLabelStyle:(int64_t)style
{
  collectionCopy = collection;
  cacheCopy = cache;
  v29.receiver = self;
  v29.super_class = PXPlacesMapThumbnailAnnotationView;
  v15 = [(MKAnnotationView *)&v29 initWithAnnotation:annotation reuseIdentifier:identifier];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_extendedTraitCollection, collection);
    objc_storeStrong(&v16->_imageCache, cache);
    v16->_geotaggablesCount = 0;
    v16->_countLabelStyle = style;
    v17 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    countLabel = v16->_countLabel;
    v16->_countLabel = v17;

    v19 = _FontForCountLabelStyle(style);
    [(UILabel *)v16->_countLabel setFont:v19];

    if (style)
    {
      if (style == 1)
      {
        v20 = 4;
      }

      else
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSTextAlignment _TextAlignmentForCountLabelStyle(PXPlacesMapCountLabelStyle)"];
        v23 = [MEMORY[0x1E696AD98] numberWithInteger:style];
        [currentHandler handleFailureInFunction:v22 file:@"PXPlacesMapThumbnailAnnotationView.m" lineNumber:56 description:{@"Unsupported style: %@", v23}];

        v20 = 0;
      }
    }

    else
    {
      v20 = 1;
    }

    [(UILabel *)v16->_countLabel setTextAlignment:v20];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v16->_countLabel setTextColor:whiteColor];

    [(UILabel *)v16->_countLabel setHidden:1];
    if (!style)
    {
      v25 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v26 = [v25 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      countLabelBackgroundImageView = v16->_countLabelBackgroundImageView;
      v16->_countLabelBackgroundImageView = v26;

      [(PXPlacesMapThumbnailAnnotationView *)v16 addSubview:v16->_countLabelBackgroundImageView];
    }

    [(PXPlacesMapThumbnailAnnotationView *)v16 addSubview:v16->_countLabel];
    [(PXExtendedTraitCollection *)v16->_extendedTraitCollection registerChangeObserver:v16 context:PXExtendedTraitCollectionObservationContext_235019];
    [(PXPlacesMapThumbnailAnnotationView *)v16 setAccessibilityIdentifier:@"map_thumbnail"];
  }

  return v16;
}

+ (id)_thumbnailSelectionQueue
{
  if (_thumbnailSelectionQueue_onceToken != -1)
  {
    dispatch_once(&_thumbnailSelectionQueue_onceToken, &__block_literal_global_123);
  }

  v3 = _thumbnailSelectionQueue_thumbnailSelectionQueue;

  return v3;
}

void __62__PXPlacesMapThumbnailAnnotationView__thumbnailSelectionQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INTERACTIVE, 0);

  v1 = dispatch_queue_create("PXPlacesMapThumbnailAnnotationView.thumbnailSelectionQueue", attr);
  v2 = _thumbnailSelectionQueue_thumbnailSelectionQueue;
  _thumbnailSelectionQueue_thumbnailSelectionQueue = v1;
}

+ (id)_thumbnailCreationOperationQueue
{
  if (_thumbnailCreationOperationQueue_token != -1)
  {
    dispatch_once(&_thumbnailCreationOperationQueue_token, &__block_literal_global_121);
  }

  v3 = _thumbnailCreationOperationQueue;

  return v3;
}

uint64_t __70__PXPlacesMapThumbnailAnnotationView__thumbnailCreationOperationQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = _thumbnailCreationOperationQueue;
  _thumbnailCreationOperationQueue = v0;

  [_thumbnailCreationOperationQueue setMaxConcurrentOperationCount:4];
  v2 = _thumbnailCreationOperationQueue;

  return [v2 setQualityOfService:25];
}

+ (id)_thumbnailFetchOperationQueue
{
  if (_thumbnailFetchOperationQueue_token != -1)
  {
    dispatch_once(&_thumbnailFetchOperationQueue_token, &__block_literal_global_118);
  }

  v3 = _thumbnailFetchOperationQueue;

  return v3;
}

uint64_t __67__PXPlacesMapThumbnailAnnotationView__thumbnailFetchOperationQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = _thumbnailFetchOperationQueue;
  _thumbnailFetchOperationQueue = v0;

  [_thumbnailFetchOperationQueue setMaxConcurrentOperationCount:4];
  v2 = _thumbnailFetchOperationQueue;

  return [v2 setQualityOfService:17];
}

@end