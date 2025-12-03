@interface PUImageTileViewController
+ (id)_supportedZoomImageFormats;
- (BOOL)_needsUpdate;
- (BOOL)_tilingViewSupportsDisplayingHDR;
- (BOOL)gainMapImageIsAvailable;
- (BOOL)isDeferredProcessingFinished;
- (BOOL)shouldAdoptResult:(id)result overExistingResult:(id)existingResult;
- (BOOL)shouldAnimateAppearanceOfResult:(id)result overExistingResult:(id)existingResult;
- (BOOL)shouldAvoidInPlaceSnapshottedFadeOut;
- (BOOL)wantsVisibleRectChanges;
- (CGSize)_fullSizeImageSize;
- (CGSize)_fullSizeImageUntransformedSize;
- (CGSize)_targetSize;
- (PUImageTileViewController)initWithReuseIdentifier:(id)identifier;
- (PUImageTileViewControllerPresentingDelegate)presentingDelegate;
- (UIImage)image;
- (double)_screenScale;
- (id)generateAssetTransitionInfo;
- (id)loadView;
- (void)_applyHDRSuppressionToWithTraitEnvironment:(id)environment;
- (void)_cancelAllImageRequests;
- (void)_configureImageViewPreferredImageDynamicRange;
- (void)_handleAssetViewModel:(id)model didChange:(id)change;
- (void)_handleBrowsingViewModel:(id)model didChange:(id)change;
- (void)_handleShouldReloadAssetMediaNotification:(id)notification;
- (void)_invalidate;
- (void)_invalidateImage;
- (void)_notifyDeferredProcessingDoneAndFinalImageDisplayedIfNeeded;
- (void)_notifyFullQualityImageDisplayed;
- (void)_registerIfPossibleForHeadroomUsageTraitChangesOfView:(id)view;
- (void)_setAssetLoadingStage:(int64_t)stage;
- (void)_setAssetWithoutUpdateIfNeeded:(id)needed;
- (void)_setFullSizeImageData:(id)data;
- (void)_setFullSizeImageURL:(id)l;
- (void)_setImageRequester:(id)requester;
- (void)_setTargetSize:(CGSize)size;
- (void)_updateAssetLoadingStage;
- (void)_updateFullSizeImageMetadataIfNeeded;
- (void)_updateFullSizeTiledLayerIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateImageIfNeeded;
- (void)_updateImageLayerModulatorIfNeeded;
- (void)_updateImageLayerModulatorInputIfNeeded;
- (void)_updateImageLayerModulatorManagerIfNeeded;
- (void)_updateImageRequesterFullSizeImageDataProperties;
- (void)_updateImageRequesterTargetSize;
- (void)_updateImageViewBackgroundColor;
- (void)_updateModulatorManager;
- (void)_updateReadyForDisplay;
- (void)_updateShouldRequestHDRIfNeeded;
- (void)_updateTargetSizeIfNeeded;
- (void)applyLayoutInfo:(id)info;
- (void)becomeReusable;
- (void)dealloc;
- (void)didChangeVisibleRect;
- (void)displayImageRequestResult:(id)result;
- (void)expectedPresentationSizeDidChange;
- (void)imageRequester:(id)requester didProduceResult:(id)result;
- (void)imageRequesterDidUpdateFullSizeImageData:(id)data;
- (void)isViewControllerTransitioningDidChange;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)outputEventSignaledForCoalescer:(id)coalescer;
- (void)setAsset:(id)asset;
- (void)setAssetViewModel:(id)model;
- (void)setBrowsingViewModel:(id)model;
- (void)setCanUseFullSizeTiledLayer:(BOOL)layer;
- (void)setDisplayedImageRequestResult:(id)result;
- (void)setEdgeAntialiasingEnabled:(BOOL)enabled;
- (void)setGainMapImage:(CGImage *)image;
- (void)setGainMapValue:(float)value;
- (void)setImageLayerModulator:(id)modulator;
- (void)setImageModulationManager:(id)manager;
- (void)setIsDisplayingFullQualityImage:(BOOL)image;
- (void)setMediaProvider:(id)provider;
- (void)setPlaceholderColor:(id)color;
- (void)setPreloadedImage:(id)image;
- (void)setPresentingDelegate:(id)delegate;
- (void)setShouldAnimateToFullQualityResult:(BOOL)result;
- (void)setShouldUseFullSizeImageData:(BOOL)data;
- (void)updateModulator;
- (void)updateModulatorInputs;
- (void)updateMutableImageLayerModulator:(id)modulator;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUImageTileViewController

- (CGSize)_fullSizeImageSize
{
  width = self->__fullSizeImageSize.width;
  height = self->__fullSizeImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_fullSizeImageUntransformedSize
{
  width = self->__fullSizeImageUntransformedSize.width;
  height = self->__fullSizeImageUntransformedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_targetSize
{
  width = self->__targetSize.width;
  height = self->__targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PUImageTileViewControllerPresentingDelegate)presentingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingDelegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (tiledLayerAlphaAnimatorContext == context)
  {
    if ((changeCopy & 2) == 0)
    {
      goto LABEL_8;
    }

    v15 = observableCopy;
    tiledLayerAlphaAnimator = [(PUImageTileViewController *)self tiledLayerAlphaAnimator];
    [tiledLayerAlphaAnimator presentationValue];
    v12 = v11;
    tiledLayerHostingView = [(PUImageTileViewController *)self tiledLayerHostingView];
    [tiledLayerHostingView setAlpha:v12];

    goto LABEL_7;
  }

  if (PXDisplayScreenDynamicRangeObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUImageTileViewController.m" lineNumber:1449 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
    v15 = observableCopy;
    [(PUImageTileViewController *)self _invalidateShouldRequestHDR];
    [(PUImageTileViewController *)self _invalidateImage];
    [(PUImageTileViewController *)self _invalidateFullSizeTiledLayer];
    [(PUImageTileViewController *)self _updateIfNeeded];
LABEL_7:
    observableCopy = v15;
  }

LABEL_8:
}

- (void)setPresentingDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_presentingDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_presentingDelegate, obj);
    p_presentingDelegateFlags = &self->_presentingDelegateFlags;
    p_presentingDelegateFlags->respondsToPPTShouldSignalDeferredProcessingDoneAndFinalImageDisplayed = objc_opt_respondsToSelector() & 1;
    p_presentingDelegateFlags->respondsToFullQualityImageDisplayed = objc_opt_respondsToSelector() & 1;
  }
}

- (void)_handleBrowsingViewModel:(id)model didChange:(id)change
{
  if ([change isPresentedForPreviewDidChange])
  {

    [(PUImageTileViewController *)self _configureImageViewPreferredImageDynamicRange];
  }
}

- (void)_handleAssetViewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  if ([changeCopy revealsGainMapImageChanged])
  {
    imageLayerModulator = [(PUImageTileViewController *)self imageLayerModulator];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__PUImageTileViewController__handleAssetViewModel_didChange___block_invoke;
    v10[3] = &unk_1E7B7F3B8;
    v10[4] = self;
    [imageLayerModulator performChanges:v10];
  }

  if ([changeCopy assetChanged])
  {
    asset = [modelCopy asset];
    [(PUImageTileViewController *)self _setAssetWithoutUpdateIfNeeded:asset];
  }

  [(PUImageTileViewController *)self _updateIfNeeded];
}

void __61__PUImageTileViewController__handleAssetViewModel_didChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 assetViewModel];
  [v3 setRevealsGainMapImage:{objc_msgSend(v4, "revealsGainMapImage")}];
}

- (void)viewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  if (![(PUTileController *)self shouldPreserveCurrentContent])
  {
    assetViewModel = [(PUImageTileViewController *)self assetViewModel];

    if (assetViewModel == modelCopy)
    {
      [(PUImageTileViewController *)self _handleAssetViewModel:modelCopy didChange:changeCopy];
    }

    else
    {
      browsingViewModel = [(PUImageTileViewController *)self browsingViewModel];

      if (browsingViewModel == modelCopy)
      {
        [(PUImageTileViewController *)self _handleBrowsingViewModel:modelCopy didChange:changeCopy];
      }
    }
  }
}

- (void)_updateImageViewBackgroundColor
{
  displayedImageRequestResult = [(PUImageTileViewController *)self displayedImageRequestResult];
  image = [displayedImageRequestResult image];
  if (image)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [(PUImageTileViewController *)self placeholderColor];
  }
  v4 = ;
  _imageView = [(PUImageTileViewController *)self _imageView];
  [_imageView setBackgroundColor:v4];
}

- (void)_cancelAllImageRequests
{
  _imageRequester = [(PUImageTileViewController *)self _imageRequester];
  [_imageRequester cancelAllImageRequests];
}

- (id)generateAssetTransitionInfo
{
  _imageView = [(PUImageTileViewController *)self _imageView];
  image = [_imageView image];

  v5 = MEMORY[0x1E69C35F0];
  asset = [(PUImageTileViewController *)self asset];
  v7 = [v5 optionsForAsset:asset];
  v9 = v8;

  imageModulationManager = [(PUImageTileViewController *)self imageModulationManager];
  v11 = [imageModulationManager checkoutImageLayerModulatorWithOptions:{v7, v9}];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __56__PUImageTileViewController_generateAssetTransitionInfo__block_invoke;
  v19[3] = &unk_1E7B7F3B8;
  v19[4] = self;
  [v11 performChanges:v19];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__PUImageTileViewController_generateAssetTransitionInfo__block_invoke_2;
  v16[3] = &unk_1E7B7F3E0;
  v16[4] = self;
  v17 = image;
  v18 = v11;
  v12 = v11;
  v13 = image;
  v14 = [PUAssetTransitionInfo assetTransitionInfoWithConfigurationBlock:v16];

  return v14;
}

void __56__PUImageTileViewController_generateAssetTransitionInfo__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setGainMapImage:{objc_msgSend(v3, "gainMapImage")}];
  [*(a1 + 32) gainMapValue];
  [v4 setGainMapValue:?];
}

void __56__PUImageTileViewController_generateAssetTransitionInfo__block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v5 = a2;
  v4 = [v3 asset];
  [v5 setAsset:v4];

  [v5 setImage:a1[5]];
  [v5 setImageLayerModulator:a1[6]];
}

- (void)_updateReadyForDisplay
{
  isDisplayingFullQualityImage = [(PUImageTileViewController *)self isDisplayingFullQualityImage];

  [(PUTileViewController *)self _setReadyForDisplay:isDisplayingFullQualityImage];
}

- (void)setDisplayedImageRequestResult:(id)result
{
  resultCopy = result;
  if (self->_displayedImageRequestResult != resultCopy)
  {
    v6 = resultCopy;
    objc_storeStrong(&self->_displayedImageRequestResult, result);
    [(PUImageTileViewController *)self displayedImageRequestResultDidChange];
    resultCopy = v6;
  }
}

- (void)setIsDisplayingFullQualityImage:(BOOL)image
{
  if (self->_isDisplayingFullQualityImage != image)
  {
    self->_isDisplayingFullQualityImage = image;
    [(PUImageTileViewController *)self _updateReadyForDisplay];
  }
}

- (void)_applyHDRSuppressionToWithTraitEnvironment:(id)environment
{
  v25 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  _fullSizeTiledLayer = [(PUImageTileViewController *)self _fullSizeTiledLayer];
  sublayers = [_fullSizeTiledLayer sublayers];
  v7 = [sublayers count];

  if (v7)
  {
    v19 = environmentCopy;
    traitCollection = [environmentCopy traitCollection];
    _headroomUsage = [traitCollection _headroomUsage];

    sublayers2 = [_fullSizeTiledLayer sublayers];
    v11 = [sublayers2 objectAtIndexedSubscript:0];
    v12 = [v11 _ui_animationForHDRHeadroomUsageEnabled:_headroomUsage != 0];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = sublayers2;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v20 + 1) + 8 * i);
          [v18 _ui_configureForHDRHeadroomUsageEnabled:_headroomUsage != 0];
          if (v12)
          {
            [v18 addAnimation:v12 forKey:@"contentsEDRStrength"];
          }

          else
          {
            [v18 removeAnimationForKey:@"contentsEDRStrength"];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }

    environmentCopy = v19;
  }
}

- (void)_registerIfPossibleForHeadroomUsageTraitChangesOfView:(id)view
{
  v11[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  objc_initWeak(&location, self);
  v5 = objc_opt_self();
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__PUImageTileViewController__registerIfPossibleForHeadroomUsageTraitChangesOfView___block_invoke;
  v8[3] = &unk_1E7B79E70;
  objc_copyWeak(&v9, &location);
  v7 = [viewCopy registerForTraitChanges:v6 withHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __83__PUImageTileViewController__registerIfPossibleForHeadroomUsageTraitChangesOfView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _applyHDRSuppressionToWithTraitEnvironment:v3];
}

- (void)_updateFullSizeTiledLayerIfNeeded
{
  if ([(PUImageTileViewController *)self _needsUpdateFullSizeTiledLayer])
  {
    [(PUImageTileViewController *)self _setNeedsUpdateFullSizeTiledLayer:0];
    _fullSizeImageData = [(PUImageTileViewController *)self _fullSizeImageData];
    _fullSizeImageURL = [(PUImageTileViewController *)self _fullSizeImageURL];
    if (_fullSizeImageData | _fullSizeImageURL)
    {
      isViewLoaded = [(PUTileViewController *)self isViewLoaded];
      _fullSizeTiledLayer = [(PUImageTileViewController *)self _fullSizeTiledLayer];
      if (isViewLoaded)
      {
        _imageView = [(PUImageTileViewController *)self _imageView];
        _fullSizeImageOrientation = [(PUImageTileViewController *)self _fullSizeImageOrientation];
        v9 = (_fullSizeImageOrientation - 2) & 0xFFFFFFFFFFFFFFFALL;
        if (_fullSizeTiledLayer)
        {
LABEL_54:
          tiledLayerHostingView = [(PUImageTileViewController *)self tiledLayerHostingView];
          [tiledLayerHostingView bounds];
          v67 = v66;
          v69 = v68;
          v71 = v70;
          v73 = v72;

          v153.origin.x = v67;
          v153.origin.y = v69;
          v153.size.width = v71;
          v153.size.height = v73;
          spida = CGRectGetMidX(v153);
          v154.origin.x = v67;
          v154.origin.y = v69;
          v74 = v69;
          v154.size.width = v71;
          v132 = v71;
          v154.size.height = v73;
          MidY = CGRectGetMidY(v154);
          v140 = *(MEMORY[0x1E695EFD0] + 16);
          v142 = *MEMORY[0x1E695EFD0];
          *&buf.a = *MEMORY[0x1E695EFD0];
          *&buf.c = v140;
          v130 = *(MEMORY[0x1E695EFD0] + 32);
          *&buf.tx = v130;
          [(PUImageTileViewController *)self _fullSizeImageSize];
          v76 = v75;
          v78 = v77;
          v155.origin.x = v67;
          v155.origin.y = v74;
          v155.size.width = v71;
          v155.size.height = v73;
          v79 = CGRectGetWidth(v155) / v76;
          v156.origin.x = v67;
          v156.origin.y = v74;
          v156.size.width = v71;
          v156.size.height = v73;
          v80 = CGRectGetHeight(v156) / v78;
          if (v79 > v80)
          {
            v80 = v79;
          }

          *&v151.a = v142;
          *&v151.c = v140;
          *&v151.tx = v130;
          CGAffineTransformScale(&buf, &v151, v80, v80);
          [(PUImageTileViewController *)self _fullSizeImageOrientation];
          PLTransformForImageOrientation();
          t1 = buf;
          CGAffineTransformConcat(&v151, &t1, &t2);
          buf = v151;
          view = [(PUTileViewController *)self view];
          window = [view window];
          screen = [window screen];
          [screen nativeScale];
          v143 = v84;

          [(PUTileViewController *)self visibleRect];
          v86 = v85;
          v88 = v87;
          v90 = v89;
          v92 = v91;
          tiledLayerHostingView2 = [(PUImageTileViewController *)self tiledLayerHostingView];
          layer = [tiledLayerHostingView2 layer];
          [_fullSizeTiledLayer convertRect:layer fromLayer:{v86, v88, v90, v92}];
          v129 = v96;
          v131 = v95;
          v127 = v97;
          v128 = v98;

          v157.origin.x = v86;
          v157.origin.y = v88;
          v157.size.width = v90;
          v157.size.height = v92;
          Width = CGRectGetWidth(v157);
          v158.origin.x = v67;
          v158.origin.y = v74;
          v158.size.width = v132;
          v158.size.height = v73;
          v100 = CGRectGetWidth(v158);
          v101 = Width < v100;
          if (Width >= v100)
          {
            v102 = v67;
          }

          else
          {
            v102 = v86;
          }

          if (v101)
          {
            v103 = v88;
          }

          else
          {
            v103 = v74;
          }

          if (v101)
          {
            v104 = v90;
          }

          else
          {
            v104 = v132;
          }

          if (v101)
          {
            v105 = v92;
          }

          else
          {
            v105 = v73;
          }

          v126 = v143 * CGRectGetWidth(*&v102);
          v159.origin.x = v86;
          v159.origin.y = v88;
          v159.size.width = v90;
          v159.size.height = v92;
          Height = CGRectGetHeight(v159);
          v160.origin.x = v67;
          v160.origin.y = v74;
          v160.size.width = v132;
          v160.size.height = v73;
          v107 = CGRectGetHeight(v160);
          v108 = Height < v107;
          if (Height >= v107)
          {
            v109 = v67;
          }

          else
          {
            v109 = v86;
          }

          v110 = v88;
          if (v108)
          {
            v111 = v90;
          }

          else
          {
            v110 = v74;
            v111 = v132;
          }

          v112 = v127;
          v113 = v128;
          if (v108)
          {
            v114 = v92;
          }

          else
          {
            v114 = v73;
          }

          v115 = v143 * CGRectGetHeight(*&v109);
          if (v9)
          {
            v116 = v126;
          }

          else
          {
            v116 = v115;
          }

          if (v9)
          {
            v117 = v115;
          }

          else
          {
            v117 = v126;
          }

          v118 = v129;
          v161.origin.x = v131;
          v161.origin.y = v129;
          v161.size.width = v127;
          v161.size.height = v128;
          v119 = v116 / CGRectGetWidth(v161);
          v162.origin.x = v131;
          v162.origin.y = v129;
          v162.size.width = v127;
          v162.size.height = v128;
          v120 = v117 / CGRectGetHeight(v162);
          if (v119 >= v120)
          {
            v121 = v120;
          }

          else
          {
            v121 = v119;
          }

          v122 = v131;
          v123 = MEMORY[0x1E6979398];
          view2 = [(PUTileViewController *)self view];
          v144[0] = MEMORY[0x1E69E9820];
          v144[1] = 3221225472;
          v144[2] = __62__PUImageTileViewController__updateFullSizeTiledLayerIfNeeded__block_invoke_3;
          v144[3] = &unk_1E7B77628;
          _fullSizeTiledLayer = _fullSizeTiledLayer;
          v145 = _fullSizeTiledLayer;
          v146 = spida;
          v147 = MidY;
          v148 = buf;
          [v123 pu_animateAlongsideView:view2 animations:v144];

          v163.origin.x = v131;
          v163.origin.y = v129;
          v163.size.width = v127;
          v163.size.height = v128;
          if (CGRectIsNull(v163))
          {
            v122 = *MEMORY[0x1E695F058];
            v118 = *(MEMORY[0x1E695F058] + 8);
            v112 = *(MEMORY[0x1E695F058] + 16);
            v113 = *(MEMORY[0x1E695F058] + 24);
          }

          [_fullSizeTiledLayer setVisibleRectangle:v122 zoomScale:{v118, v112, v113, v121}];
          isViewControllerTransitioning = 1;
          [(PUImageTileViewController *)self setIsDisplayingFullQualityImage:1];
          if ([(PUImageTileViewController *)self canUseFullSizeTiledLayer])
          {
            isViewControllerTransitioning = [(PUTileController *)self isViewControllerTransitioning];
          }

          [_fullSizeTiledLayer setHidden:isViewControllerTransitioning];

          goto LABEL_91;
        }

        v141 = (_fullSizeImageOrientation - 2) & 0xFFFFFFFFFFFFFFFALL;
        v10 = objc_alloc(MEMORY[0x1E69DD250]);
        [_imageView frame];
        v11 = [v10 initWithFrame:?];
        [(PUImageTileViewController *)self setTiledLayerHostingView:v11];
        [v11 setAutoresizingMask:18];
        [_imageView addSubview:v11];
        layer2 = [_imageView layer];
        layer3 = [v11 layer];
        [layer2 insertSublayer:layer3 atIndex:0];

        view3 = [(PUTileViewController *)self view];
        window2 = [view3 window];
        screen2 = [window2 screen];
        [screen2 nativeBounds];
        v18 = v17;
        v20 = v19;

        v21 = off_1E7B6E000;
        v22 = +[PUOneUpSettings sharedInstance];
        v139 = v22;
        if (![v22 enableFigPhotoTiledLayer])
        {
          if (_fullSizeImageData)
          {
            _fullSizeTiledLayer = [objc_alloc(MEMORY[0x1E69BE1D0]) initWithJPEGData:_fullSizeImageData placeholderImage:0 screenSize:{v18, v20}];
          }

          else
          {
            _fullSizeTiledLayer = 0;
          }

          v9 = v141;
          goto LABEL_49;
        }

        if ([v22 enableFigPhotoBackgroundSizeBasedDisplay])
        {
          image = [(PUImageTileViewController *)self image];
          [image size];
          image2 = [(PUImageTileViewController *)self image];
          [image2 scale];
          PXSizeScale();
          v26 = v25;
          v28 = v27;
        }

        else
        {
          v26 = *MEMORY[0x1E695F060];
          v28 = *(MEMORY[0x1E695F060] + 8);
        }

        v9 = v141;
        if ([v22 simulateWorstCaseFigPhotoBackgroundSize])
        {
          image3 = [(PUImageTileViewController *)self image];
          [image3 size];
          image4 = [(PUImageTileViewController *)self image];
          [image4 size];
          view4 = [(PUTileViewController *)self view];
          [view4 window];
          v31 = spidb = _imageView;
          [v31 bounds];
          PFSizeWithAspectRatioFittingSize();
          view5 = [(PUTileViewController *)self view];
          window3 = [view5 window];
          screen3 = [window3 screen];
          [screen3 scale];
          PXSizeScale();
          v26 = v35;
          v28 = v36;

          v21 = off_1E7B6E000;
          _imageView = spidb;

          v9 = v141;
        }

        if (v9)
        {
          v37 = v28;
        }

        else
        {
          v37 = v26;
        }

        if (!v9)
        {
          v26 = v28;
        }

        if (_fullSizeImageData)
        {
          v38 = [objc_alloc(MEMORY[0x1E69917A0]) initWithContainerData:_fullSizeImageData containerImageIndex:0 backgroundImageSize:v26 screenSize:{v37, v18, v20}];
        }

        else if (_fullSizeImageURL)
        {
          v38 = [objc_alloc(MEMORY[0x1E69917A0]) initWithContainerURL:_fullSizeImageURL containerImageIndex:0 backgroundImageSize:v26 screenSize:{v37, v18, v20}];
        }

        else
        {
          v38 = 0;
        }

        _fullSizeTiledLayer = v38;
        if (![(PUImageTileViewController *)self shouldRequestHDR])
        {
LABEL_48:
          [_fullSizeTiledLayer prepareForDecode];
          [(PUImageTileViewController *)self _registerIfPossibleForHeadroomUsageTraitChangesOfView:_imageView];

LABEL_49:
          v52 = *MEMORY[0x1E695EFF8];
          v53 = *(MEMORY[0x1E695EFF8] + 8);
          [(PUImageTileViewController *)self _fullSizeImageUntransformedSize];
          [_fullSizeTiledLayer setBounds:{v52, v53, v54, v55}];
          sharedInstance = [(__objc2_class *)v21[44] sharedInstance];
          useDebuggingColors = [sharedInstance useDebuggingColors];

          if (useDebuggingColors)
          {
            v58 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.5 blue:0.0 alpha:0.25];
            [_fullSizeTiledLayer setBorderColor:{objc_msgSend(v58, "CGColor")}];

            [_fullSizeTiledLayer setBorderWidth:100.0];
          }

          layer4 = [v11 layer];
          [layer4 addSublayer:_fullSizeTiledLayer];

          tiledLayerAlphaAnimator = [(PUImageTileViewController *)self tiledLayerAlphaAnimator];

          if (!tiledLayerAlphaAnimator)
          {
            v61 = [objc_alloc(MEMORY[0x1E69C4588]) initWithValue:0.0];
            [(PUImageTileViewController *)self setTiledLayerAlphaAnimator:v61];

            tiledLayerAlphaAnimator2 = [(PUImageTileViewController *)self tiledLayerAlphaAnimator];
            [tiledLayerAlphaAnimator2 registerChangeObserver:self context:tiledLayerAlphaAnimatorContext];
          }

          tiledLayerAlphaAnimator3 = [(PUImageTileViewController *)self tiledLayerAlphaAnimator];
          [tiledLayerAlphaAnimator3 performChangesWithoutAnimation:&__block_literal_global_392];

          [v11 setAlpha:0.0];
          tiledLayerAlphaAnimator4 = [(PUImageTileViewController *)self tiledLayerAlphaAnimator];
          [tiledLayerAlphaAnimator4 performChangesWithDuration:4 curve:&__block_literal_global_394 changes:1.0];

          [(PUImageTileViewController *)self _setFullSizeTiledLayer:_fullSizeTiledLayer];
          goto LABEL_54;
        }

        v39 = PLOneUpGetLog();
        v40 = os_signpost_id_make_with_pointer(v39, self);

        v41 = PLOneUpGetLog();
        v42 = v41;
        v43 = v40 - 1;
        if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
        {
          LOWORD(buf.a) = 0;
          _os_signpost_emit_with_name_impl(&dword_1B36F3000, v42, OS_SIGNPOST_INTERVAL_BEGIN, v40, "com.apple.photos.ui.OneUp.TiledLayerHDRConfiguration", "", &buf, 2u);
        }

        spid = v40;
        if (_fullSizeImageData)
        {
          v44 = [objc_alloc(MEMORY[0x1E69C0718]) initWithImageData:_fullSizeImageData contentType:0 options:13 timeZoneLookup:0 cacheImageSource:1 cacheImageData:0];
        }

        else
        {
          if (!_fullSizeImageURL)
          {
            v45 = 0;
LABEL_37:
            v46 = _imageView;
            if (([v45 isHDR_TS22028] & 1) != 0 || (objc_msgSend(v45, "isHDR_ExtendedRange") & 1) != 0 || (objc_msgSend(v45, "hasHDRGainMap") & 1) != 0 || objc_msgSend(v45, "hasISOGainMap"))
            {
              v47 = 1;
              v48 = 1;
            }

            else
            {
              v47 = 0;
              v48 = 2;
            }

            [_fullSizeTiledLayer setDecodeToHDROutputMode:v48];
            [_fullSizeTiledLayer setShouldDisplayHDR:v47];
            cgColorSpace = [v45 cgColorSpace];
            if (CGColorSpaceContainsFlexGTCInfo())
            {
              [_fullSizeTiledLayer setFlexGTCColorSpace:cgColorSpace];
            }

            v50 = PLOneUpGetLog();
            v51 = v50;
            if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
            {
              LOWORD(buf.a) = 0;
              _os_signpost_emit_with_name_impl(&dword_1B36F3000, v51, OS_SIGNPOST_INTERVAL_END, spid, "com.apple.photos.ui.OneUp.TiledLayerHDRConfiguration", "", &buf, 2u);
            }

            _imageView = v46;
            v9 = v141;
            v21 = off_1E7B6E000;
            goto LABEL_48;
          }

          v44 = [objc_alloc(MEMORY[0x1E69C0718]) initWithImageURL:_fullSizeImageURL contentType:0 options:13 timeZoneLookup:0 cacheImageSource:1 cacheImageData:0];
        }

        v45 = v44;
        goto LABEL_37;
      }
    }

    else
    {
      _fullSizeTiledLayer = [(PUImageTileViewController *)self _fullSizeTiledLayer];
    }

    if (!_fullSizeTiledLayer)
    {
LABEL_92:

      return;
    }

    tiledLayerHostingView3 = [(PUImageTileViewController *)self tiledLayerHostingView];
    [tiledLayerHostingView3 removeFromSuperview];

    [(PUImageTileViewController *)self setTiledLayerHostingView:0];
    [(PUImageTileViewController *)self setTiledLayerAlphaAnimator:0];
    [_fullSizeTiledLayer removeFromSuperlayer];
    [(PUImageTileViewController *)self _setFullSizeTiledLayer:0];
LABEL_91:

    goto LABEL_92;
  }
}

uint64_t __62__PUImageTileViewController__updateFullSizeTiledLayerIfNeeded__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) pu_setPosition:{*(a1 + 40), *(a1 + 48)}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 72);
  *&v5.a = *(a1 + 56);
  *&v5.c = v3;
  *&v5.tx = *(a1 + 88);
  CATransform3DMakeAffineTransform(&v6, &v5);
  return [v2 pu_setTransform:&v6];
}

- (void)_updateFullSizeImageMetadataIfNeeded
{
  if ([(PUImageTileViewController *)self _needsUpdateFullSizeImageMetadata])
  {
    [(PUImageTileViewController *)self _setNeedsUpdateFullSizeImageMetadata:0];
    v10 = *MEMORY[0x1E695F060];
    _fullSizeImageData = [(PUImageTileViewController *)self _fullSizeImageData];
    _fullSizeImageURL = [(PUImageTileViewController *)self _fullSizeImageURL];
    if (_fullSizeImageURL)
    {
      PLGetOrientationAndUntransformedSizeFromImageURL();
    }

    else if (_fullSizeImageData)
    {
      PLGetOrientationAndUntransformedSizeFromImageData();
    }

    v5 = PLImageOrientationFromExifOrientation();
    PLOrientationTransformImageSize();
    v7 = v6;
    v9 = v8;
    [(PUImageTileViewController *)self _setFullSizeImageOrientation:v5];
    [(PUImageTileViewController *)self _setFullSizeImageUntransformedSize:v10];
    [(PUImageTileViewController *)self _setFullSizeImageSize:v7, v9];
  }
}

- (void)_updateAssetLoadingStage
{
  displayedImageRequestResult = [(PUImageTileViewController *)self displayedImageRequestResult];
  asset = [displayedImageRequestResult asset];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [asset hasAllThumbs])
  {
    if ([asset hasLargerThanThumbResourceLocal])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  [(PUImageTileViewController *)self _setAssetLoadingStage:v4];
}

- (void)updateMutableImageLayerModulator:(id)modulator
{
  modulatorCopy = modulator;
  originalView = [(PUTileViewController *)self originalView];
  layer = [originalView layer];
  [modulatorCopy setLayer:layer];

  if ([(PUImageTileViewController *)self gainMapImageIsAvailable])
  {
    [modulatorCopy setGainMapImage:-[PUImageTileViewController gainMapImage](self animated:{"gainMapImage"), 1}];
    [(PUImageTileViewController *)self gainMapValue];
    [modulatorCopy setGainMapValue:?];
  }
}

- (void)updateModulatorInputs
{
  imageLayerModulator = [(PUImageTileViewController *)self imageLayerModulator];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__PUImageTileViewController_updateModulatorInputs__block_invoke;
  v4[3] = &unk_1E7B7F3B8;
  v4[4] = self;
  [imageLayerModulator performChanges:v4];
}

- (void)_updateImageLayerModulatorInputIfNeeded
{
  if ([(PUImageTileViewController *)self _needsUpdateImageLayerModulatorInput])
  {
    [(PUImageTileViewController *)self _setNeedsUpdateImageLayerModulatorInput:0];
    if ([(PUTileViewController *)self isViewLoaded])
    {

      [(PUImageTileViewController *)self updateModulatorInputs];
    }
  }
}

- (void)updateModulator
{
  tilingView = [(PUTileController *)self tilingView];
  shouldDisplayHDR = [tilingView shouldDisplayHDR];

  if (shouldDisplayHDR)
  {
    imageModulationManager = [(PUImageTileViewController *)self imageModulationManager];
    v5 = MEMORY[0x1E69C35F0];
    asset = [(PUImageTileViewController *)self asset];
    v7 = [v5 optionsForAsset:asset];
    v9 = v8;

    imageLayerModulator = [(PUImageTileViewController *)self imageLayerModulator];
    [imageModulationManager checkInImageLayerModulator:imageLayerModulator];

    v11 = [imageModulationManager checkoutImageLayerModulatorWithOptions:{v7, v9}];
    [(PUImageTileViewController *)self setImageLayerModulator:v11];
  }
}

- (void)_updateImageLayerModulatorIfNeeded
{
  if ([(PUImageTileViewController *)self _needsUpdateImageLayerModulator])
  {
    [(PUImageTileViewController *)self _setNeedsUpdateImageLayerModulator:0];

    [(PUImageTileViewController *)self updateModulator];
  }
}

- (void)_updateModulatorManager
{
  imageModulationManager = [(PUImageTileViewController *)self imageModulationManager];
  [imageModulationManager setNeedsEnabledUpdate];
}

- (void)_updateImageLayerModulatorManagerIfNeeded
{
  if ([(PUImageTileViewController *)self _needsUpdateImageLayerModulatorManager])
  {
    [(PUImageTileViewController *)self _setNeedsUpdateImageLayerModulatorManager:0];

    [(PUImageTileViewController *)self _updateModulatorManager];
  }
}

- (void)_notifyFullQualityImageDisplayed
{
  if (self->_presentingDelegateFlags.respondsToFullQualityImageDisplayed)
  {
    presentingDelegate = [(PUImageTileViewController *)self presentingDelegate];
    [presentingDelegate imageTileViewController:self didDisplayFullQualityImageWithDeferredProcessingFinished:{-[PUImageTileViewController isDeferredProcessingFinished](self, "isDeferredProcessingFinished")}];
  }
}

- (void)displayImageRequestResult:(id)result
{
  v27 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v5 = PLOneUpGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = resultCopy;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Displaying image requester result: %@", buf, 0xCu);
  }

  displayedImageRequestResult = [(PUImageTileViewController *)self displayedImageRequestResult];
  _imageView = [(PUImageTileViewController *)self _imageView];
  image = [resultCopy image];
  [_imageView setImage:image];
  if (image || ([(PUImageTileViewController *)self placeholderColor], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    clearColor = [(PUImageTileViewController *)self placeholderColor];
  }

  v11 = clearColor;
  [_imageView setBackgroundColor:clearColor];

  -[PUImageTileViewController setIsDisplayingFullQualityImage:](self, "setIsDisplayingFullQualityImage:", [resultCopy imageIsFullQuality]);
  -[PUImageTileViewController setGainMapImage:](self, "setGainMapImage:", [resultCopy gainMapImage]);
  [resultCopy gainMapValue];
  [(PUImageTileViewController *)self setGainMapValue:?];
  [(PUImageTileViewController *)self setDisplayedImageRequestResult:resultCopy];
  v12 = +[PUOneUpSettings sharedInstance];
  [v12 fullQualityCrossfadeDuration];
  v14 = v13;

  if ([(PUImageTileViewController *)self shouldAnimateAppearanceOfResult:resultCopy overExistingResult:displayedImageRequestResult]&& v14 > 0.0)
  {
    v15 = [_imageView snapshotViewAfterScreenUpdates:0];
    [_imageView bounds];
    [v15 setFrame:?];
    [v15 setAutoresizingMask:18];
    [_imageView addSubview:v15];
    v16 = MEMORY[0x1E69DD250];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __55__PUImageTileViewController_displayImageRequestResult___block_invoke;
    v23[3] = &unk_1E7B80DD0;
    v24 = v15;
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __55__PUImageTileViewController_displayImageRequestResult___block_invoke_2;
    v21 = &unk_1E7B7F020;
    v22 = v24;
    v17 = v24;
    [v16 animateWithDuration:2 delay:v23 options:&v18 animations:v14 completion:0.0];
  }

  [(PUImageTileViewController *)self _updateAssetLoadingStage:v18];
  [(PUImageTileViewController *)self _configureImageViewPreferredImageDynamicRange];
  [(PUImageTileViewController *)self _invalidateImageLayerModulatorInput];
  [(PUImageTileViewController *)self _invalidateFullSizeTiledLayer];
  if (image && [resultCopy imageIsFullQuality])
  {
    [(PUImageTileViewController *)self _notifyDeferredProcessingDoneAndFinalImageDisplayedIfNeeded];
    [(PUImageTileViewController *)self _notifyFullQualityImageDisplayed];
  }

  [(PUImageTileViewController *)self _updateIfNeeded];
}

- (BOOL)shouldAnimateAppearanceOfResult:(id)result overExistingResult:(id)existingResult
{
  resultCopy = result;
  existingResultCopy = existingResult;
  if (![(PUTileController *)self isAnimating])
  {
    asset = [existingResultCopy asset];
    if (asset)
    {
      v10 = asset;
      asset2 = [resultCopy asset];
      asset3 = [existingResultCopy asset];
      v13 = asset2;
      v14 = asset3;
      v15 = v14;
      if (v13 == v14)
      {
      }

      else
      {
        v16 = [v13 isContentEqualTo:v14];
        if (!v16)
        {
          v16 = [v15 isContentEqualTo:v13];
        }

        if (v16 != 2)
        {
          browsingViewModel = [(PUImageTileViewController *)self browsingViewModel];
          isScrubbing = [browsingViewModel isScrubbing];

          if (!isScrubbing)
          {
            goto LABEL_14;
          }

          goto LABEL_12;
        }
      }
    }

LABEL_12:
    animatesImageTransitions = [(PUImageTileViewController *)self animatesImageTransitions];
    if ((!existingResultCopy || !animatesImageTransitions) && (!-[PUImageTileViewController shouldAnimateToFullQualityResult](self, "shouldAnimateToFullQualityResult") || ([resultCopy imageIsFullQuality] & 1) == 0))
    {
      goto LABEL_2;
    }

LABEL_14:
    v8 = 1;
    goto LABEL_15;
  }

LABEL_2:
  v8 = 0;
LABEL_15:

  return v8;
}

- (BOOL)shouldAdoptResult:(id)result overExistingResult:(id)existingResult
{
  v39 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  existingResultCopy = existingResult;
  if (!existingResultCopy)
  {
    v8 = PLOneUpGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 138412290;
      v38 = resultCopy;
      v16 = "Accepting new image requester result because existing result is nil.\n\t%@";
      goto LABEL_12;
    }

LABEL_13:
    v17 = 1;
LABEL_35:

    goto LABEL_36;
  }

  if (-[PUImageTileViewController shouldRetainNonFinalImageUntilZoom](self, "shouldRetainNonFinalImageUntilZoom") && [resultCopy imageIsFullQuality])
  {
    v8 = PLOneUpGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 138412290;
      v38 = resultCopy;
      v9 = "Ignoring new image requester result because we are refraining from showing final image until we zoom in to display full image data.\n\t%@";
LABEL_33:
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, v9, &v37, 0xCu);
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  asset = [resultCopy asset];
  uuid = [asset uuid];
  asset2 = [existingResultCopy asset];
  uuid2 = [asset2 uuid];
  v14 = uuid2;
  if (uuid == uuid2)
  {
  }

  else
  {
    v15 = [uuid isEqual:uuid2];

    if ((v15 & 1) == 0)
    {
      v8 = PLOneUpGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v37 = 138412290;
        v38 = resultCopy;
        v16 = "Accepting new image requester result because uuid does not match existing result.\n\t%@";
LABEL_12:
        _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, v16, &v37, 0xCu);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  asset3 = [resultCopy asset];
  asset4 = [existingResultCopy asset];
  v20 = asset3;
  v21 = asset4;
  v22 = v21;
  if (v20 == v21)
  {
  }

  else
  {
    v23 = [v20 isContentEqualTo:v21];
    if (!v23)
    {
      v23 = [v22 isContentEqualTo:v20];
    }

    if (v23 != 2)
    {
      goto LABEL_28;
    }
  }

  image = [resultCopy image];
  [image size];
  image2 = [existingResultCopy image];
  [image2 size];
  if (PFSizeLargerThanSize())
  {
  }

  else
  {
    imageIsFullQuality = [resultCopy imageIsFullQuality];

    if ((imageIsFullQuality & 1) == 0)
    {
      v8 = PLOneUpGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v37 = 138412290;
        v38 = resultCopy;
        v9 = "Ignoring new image requester result because its image is not larger than the existing one and it is not full quality.\n\t%@";
        goto LABEL_33;
      }

      goto LABEL_34;
    }
  }

  image3 = [resultCopy image];
  image4 = [existingResultCopy image];
  if (image3 == image4 && (v29 = [resultCopy gainMapImage], v29 == objc_msgSend(existingResultCopy, "gainMapImage")) && (objc_msgSend(resultCopy, "gainMapValue"), v33 = v32, objc_msgSend(existingResultCopy, "gainMapValue"), v33 == v34))
  {
    imageIsFullQuality2 = [resultCopy imageIsFullQuality];
    imageIsFullQuality3 = [existingResultCopy imageIsFullQuality];

    if (imageIsFullQuality2 == imageIsFullQuality3)
    {
      v8 = PLOneUpGetLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      v37 = 138412290;
      v38 = resultCopy;
      v9 = "Ignoring new image requester result because its image, gain map info, and full quality flag is equal to our current one.\n\t%@";
      goto LABEL_33;
    }
  }

  else
  {
  }

  image5 = [resultCopy image];

  if (!image5)
  {
    v8 = PLOneUpGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 138412290;
      v38 = resultCopy;
      v9 = "Ignoring new image requester result because its image is nil.\n\t%@";
      goto LABEL_33;
    }

LABEL_34:
    v17 = 0;
    goto LABEL_35;
  }

LABEL_28:
  v17 = 1;
LABEL_36:

  return v17;
}

- (void)imageRequesterDidUpdateFullSizeImageData:(id)data
{
  dataCopy = data;
  fullSizeImageData = [dataCopy fullSizeImageData];
  [(PUImageTileViewController *)self _setFullSizeImageData:fullSizeImageData];

  fullSizeImageURL = [dataCopy fullSizeImageURL];

  [(PUImageTileViewController *)self _setFullSizeImageURL:fullSizeImageURL];

  [(PUImageTileViewController *)self _updateIfNeeded];
}

- (void)imageRequester:(id)requester didProduceResult:(id)result
{
  resultCopy = result;
  displayedImageRequestResult = [(PUImageTileViewController *)self displayedImageRequestResult];
  v6 = [(PUImageTileViewController *)self shouldAdoptResult:resultCopy overExistingResult:displayedImageRequestResult];

  if (v6)
  {
    [(PUImageTileViewController *)self displayImageRequestResult:resultCopy];
  }
}

- (BOOL)_tilingViewSupportsDisplayingHDR
{
  tilingView = [(PUTileController *)self tilingView];
  shouldDisplayHDR = [tilingView shouldDisplayHDR];

  v4 = +[PUOneUpSettings sharedInstance];
  enableHDRImages = [v4 enableHDRImages];

  return enableHDRImages & shouldDisplayHDR;
}

- (void)_updateImageIfNeeded
{
  v54 = *MEMORY[0x1E69E9840];
  if ([(PUImageTileViewController *)self _needsUpdateImage])
  {
    [(PUImageTileViewController *)self _setNeedsUpdateImage:0];
    animatesImageTransitions = [(PUImageTileViewController *)self animatesImageTransitions];
    [(PUImageTileViewController *)self setAnimatesImageTransitions:0];
    assetViewModel = [(PUImageTileViewController *)self assetViewModel];
    asset = [(PUImageTileViewController *)self asset];
    mediaProvider = [(PUImageTileViewController *)self mediaProvider];
    [(PUImageTileViewController *)self _targetSize];
    if (asset && mediaProvider)
    {
      v9 = v7;
      v10 = v8;
      _imageRequester = [(PUImageTileViewController *)self _imageRequester];
      _imageRequester2 = [(PUImageTileViewController *)self _imageRequester];

      if (!_imageRequester2)
      {
        v13 = [[PUImageRequester alloc] initWithMediaProvider:mediaProvider asset:asset requiresFullQualityImage:[(PUImageTileViewController *)self requiresFullQualityImage]];

        [(PUImageTileViewController *)self _setImageRequester:v13];
        _imageRequester = v13;
      }

      uniformTypeIdentifier = [asset uniformTypeIdentifier];
      v15 = 0;
      v39 = uniformTypeIdentifier;
      v40 = mediaProvider;
      if ([(PUImageTileViewController *)self shouldUseFullSizeImageData]&& uniformTypeIdentifier)
      {
        v37 = _imageRequester;
        v38 = assetViewModel;
        v16 = [MEMORY[0x1E6982C40] typeWithIdentifier:uniformTypeIdentifier];
        [objc_opt_class() _supportedZoomImageFormats];
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v17 = v52 = 0u;
        v18 = [v17 countByEnumeratingWithState:&v49 objects:v53 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v50;
LABEL_10:
          v21 = 0;
          while (1)
          {
            if (*v50 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = [MEMORY[0x1E6982C40] typeWithIdentifier:*(*(&v49 + 1) + 8 * v21)];
            v23 = [v16 conformsToType:v22];

            if (v23)
            {
              break;
            }

            if (v19 == ++v21)
            {
              v19 = [v17 countByEnumeratingWithState:&v49 objects:v53 count:16];
              if (v19)
              {
                goto LABEL_10;
              }

              goto LABEL_16;
            }
          }

          v15 = v17;
          assetViewModel = v38;
          animatesImageTransitions = animatesImageTransitions;
          _imageRequester = v37;
          if (v17)
          {
            goto LABEL_21;
          }
        }

        else
        {
LABEL_16:

          assetViewModel = v38;
          animatesImageTransitions = animatesImageTransitions;
          _imageRequester = v37;
        }

        if ([v16 conformsToType:*MEMORY[0x1E6982F88]])
        {
          v15 = v17;
        }

        else
        {
          v15 = 0;
        }

LABEL_21:
      }

      shouldRequestHDR = [(PUImageTileViewController *)self shouldRequestHDR];
      viewIfLoaded = [(PUTileViewController *)self viewIfLoaded];
      px_screen = [viewIfLoaded px_screen];
      v27 = px_screen;
      if (px_screen)
      {
        px_mainScreen = px_screen;
      }

      else
      {
        px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
      }

      v29 = px_mainScreen;

      [v29 potentialEDRHeadroom];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __49__PUImageTileViewController__updateImageIfNeeded__block_invoke;
      v41[3] = &unk_1E7B77600;
      v42 = _imageRequester;
      v48 = shouldRequestHDR;
      v45 = v30;
      v46 = v9;
      v47 = v10;
      v43 = assetViewModel;
      v44 = v15;
      v31 = v15;
      v32 = _imageRequester;
      [v32 performChanges:v41];

      mediaProvider = v40;
    }

    [(PUImageTileViewController *)self setAnimatesImageTransitions:animatesImageTransitions];
    tilingView = [(PUTileController *)self tilingView];
    screenDynamicRangeMonitor = [tilingView screenDynamicRangeMonitor];
    [screenDynamicRangeMonitor unregisterChangeObserver:self context:PXDisplayScreenDynamicRangeObservationContext];

    tilingView2 = [(PUTileController *)self tilingView];
    screenDynamicRangeMonitor2 = [tilingView2 screenDynamicRangeMonitor];
    [screenDynamicRangeMonitor2 registerChangeObserver:self context:PXDisplayScreenDynamicRangeObservationContext];
  }
}

uint64_t __49__PUImageTileViewController__updateImageIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setRequestHDR:*(a1 + 80)];
  [*(a1 + 32) setTargetHDRHeadroom:*(a1 + 56)];
  [*(a1 + 32) setTargetSize:{*(a1 + 64), *(a1 + 72)}];
  [*(a1 + 32) setUseLowMemoryMode:{objc_msgSend(*(a1 + 40), "lowMemoryMode")}];
  [*(a1 + 32) setRequestFullSizeImageDataUTTypes:*(a1 + 48)];
  v2 = *(a1 + 32);
  [*(a1 + 40) focusValue];
  v4 = fabs(v3) < 0.9;

  return [v2 setHighPriorityRequest:v4];
}

- (void)_invalidateImage
{
  targetSizeUpdateRateLimiter = [(PUImageTileViewController *)self targetSizeUpdateRateLimiter];
  [targetSizeUpdateRateLimiter reset];

  [(PUImageTileViewController *)self _setImageRequester:0];
  [(PUImageTileViewController *)self _setFullSizeImageURL:0];
  [(PUImageTileViewController *)self _setFullSizeImageData:0];

  [(PUImageTileViewController *)self _setNeedsUpdateImage:1];
}

- (double)_screenScale
{
  view = [(PUTileViewController *)self view];
  window = [view window];
  screen = [window screen];
  [screen scale];
  v7 = v6;

  if (v7 < 1.0)
  {
    tilingView = [(PUTileController *)self tilingView];
    window2 = [tilingView window];
    screen2 = [window2 screen];
    [screen2 scale];
    v7 = v11;
  }

  if (v7 < 1.0)
  {
    if (PUMainScreenScale_onceToken != -1)
    {
      dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
    }

    v7 = *&PUMainScreenScale_screenScale;
  }

  return fmax(v7, 1.0);
}

- (void)_updateTargetSizeIfNeeded
{
  if ([(PUImageTileViewController *)self needsUpdateTargetSize])
  {
    [(PUImageTileViewController *)self setNeedsUpdateTargetSize:0];
    v3 = *MEMORY[0x1E695F060];
    v4 = *(MEMORY[0x1E695F060] + 8);
    if ([(PUTileController *)self isActive])
    {
      [(PUImageTileViewController *)self _screenScale];
      v6 = v5;
      asset = [(PUImageTileViewController *)self asset];
      [asset aspectRatio];
      v9 = v8;

      if (v9 > 0.0)
      {
        [(PUTileController *)self expectedPresentationSize];
        PFSizeWithAspectRatioFittingSize();
      }

      view = [(PUTileViewController *)self view];
      [view bounds];
      PXSizeMax();
      v12 = v11;
      v14 = v13;

      [(PUImageTileViewController *)self targetSizeForProposedTargetSize:v12 * v6, v14 * v6];
      v16 = v15;
      v18 = v17;
      PLPhysicalScreenSize();
      v20 = v19 * v6;
      v22 = v21 * v6;
      if (v20 <= v22)
      {
        v20 = v22;
      }

      v3 = fmin(v16, v20);
      v4 = fmin(v18, v20);
    }

    [(PUImageTileViewController *)self _setTargetSize:v3, v4];
  }
}

- (void)_updateShouldRequestHDRIfNeeded
{
  if (![(PUImageTileViewController *)self _needsUpdateShouldRequestHDR])
  {
    return;
  }

  [(PUImageTileViewController *)self _setNeedsUpdateShouldRequestHDR:0];
  _tilingViewSupportsDisplayingHDR = [(PUImageTileViewController *)self _tilingViewSupportsDisplayingHDR];
  tilingView = [(PUTileController *)self tilingView];
  screenDynamicRangeMonitor = [tilingView screenDynamicRangeMonitor];

  if (!_tilingViewSupportsDisplayingHDR)
  {
    goto LABEL_5;
  }

  v5 = screenDynamicRangeMonitor;
  if (screenDynamicRangeMonitor)
  {
    LOBYTE(_tilingViewSupportsDisplayingHDR) = [screenDynamicRangeMonitor screenSupportsHDR];
LABEL_5:
    v5 = screenDynamicRangeMonitor;
  }

  self->_shouldRequestHDR = _tilingViewSupportsDisplayingHDR;
}

- (void)_invalidate
{
  [(PUImageTileViewController *)self _invalidateImage];
  [(PUImageTileViewController *)self _invalidateImageLayerModulator];
  [(PUImageTileViewController *)self _cancelAllImageRequests];
  [(PUImageTileViewController *)self setDisplayedImageRequestResult:0];
  [(PUImageTileViewController *)self _setImageRequester:0];
  [(PUImageTileViewController *)self _setFullSizeImageData:0];
  [(PUImageTileViewController *)self _setFullSizeImageURL:0];

  [(PUImageTileViewController *)self setIsDisplayingFullQualityImage:0];
}

- (void)_updateIfNeeded
{
  if ([(PUImageTileViewController *)self _needsUpdate])
  {
    [(PUImageTileViewController *)self _updateTargetSizeIfNeeded];
    [(PUImageTileViewController *)self _updateShouldRequestHDRIfNeeded];
    [(PUImageTileViewController *)self _updateImageIfNeeded];
    [(PUImageTileViewController *)self _updateImageLayerModulatorManagerIfNeeded];
    [(PUImageTileViewController *)self _updateImageLayerModulatorIfNeeded];
    [(PUImageTileViewController *)self _updateImageLayerModulatorInputIfNeeded];
    [(PUImageTileViewController *)self _updateFullSizeImageMetadataIfNeeded];
    [(PUImageTileViewController *)self _updateFullSizeTiledLayerIfNeeded];
    if ([(PUImageTileViewController *)self _needsUpdate])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUImageTileViewController.m" lineNumber:694 description:@"updates still needed after an update cycle"];
    }
  }
}

- (BOOL)_needsUpdate
{
  if ([(PUImageTileViewController *)self needsUpdateTargetSize]|| [(PUImageTileViewController *)self _needsUpdateShouldRequestHDR]|| [(PUImageTileViewController *)self _needsUpdateImage]|| [(PUImageTileViewController *)self _needsUpdateImageLayerModulatorManager]|| [(PUImageTileViewController *)self _needsUpdateImageLayerModulator]|| [(PUImageTileViewController *)self _needsUpdateImageLayerModulatorInput]|| [(PUImageTileViewController *)self _needsUpdateFullSizeImageMetadata])
  {
    return 1;
  }

  return [(PUImageTileViewController *)self _needsUpdateFullSizeTiledLayer];
}

- (void)isViewControllerTransitioningDidChange
{
  v3.receiver = self;
  v3.super_class = PUImageTileViewController;
  [(PUTileController *)&v3 isViewControllerTransitioningDidChange];
  [(PUImageTileViewController *)self _invalidateFullSizeTiledLayer];
  [(PUImageTileViewController *)self _updateIfNeeded];
}

- (void)setCanUseFullSizeTiledLayer:(BOOL)layer
{
  if (self->_canUseFullSizeTiledLayer != layer)
  {
    self->_canUseFullSizeTiledLayer = layer;
    [(PUImageTileViewController *)self _invalidateFullSizeTiledLayer];
  }
}

- (BOOL)shouldAvoidInPlaceSnapshottedFadeOut
{
  v8.receiver = self;
  v8.super_class = PUImageTileViewController;
  shouldAvoidInPlaceSnapshottedFadeOut = [(PUTileController *)&v8 shouldAvoidInPlaceSnapshottedFadeOut];
  assetViewModel = [(PUImageTileViewController *)self assetViewModel];
  v5 = assetViewModel;
  if (shouldAvoidInPlaceSnapshottedFadeOut & 1) != 0 || ([assetViewModel isUserTransformingTile])
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    [v5 contentOffset];
    v6 = PXFloatEqualToFloatWithTolerance() ^ 1;
  }

  return v6;
}

- (void)_setAssetLoadingStage:(int64_t)stage
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->__assetLoadingStage != stage)
  {
    self->__assetLoadingStage = stage;
    _assetLoadingStartDate = [(PUImageTileViewController *)self _assetLoadingStartDate];
    v6 = _assetLoadingStartDate;
    if (stage == 2)
    {
      if (_assetLoadingStartDate)
      {
        asset = [(PUImageTileViewController *)self asset];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          asset2 = [(PUImageTileViewController *)self asset];
          [v6 timeIntervalSinceNow];
          v12 = v11;
          px_isSharedAlbumAsset = [asset2 px_isSharedAlbumAsset];
          v14 = PLOneUpGetLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            asset3 = [(PUImageTileViewController *)self asset];
            v16 = asset3;
            v17 = @"NO";
            *v18 = 134218498;
            *&v18[4] = -v12;
            *&v18[12] = 2112;
            if (px_isSharedAlbumAsset)
            {
              v17 = @"YES";
            }

            *&v18[14] = asset3;
            v19 = 2112;
            v20 = v17;
            _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEBUG, "load time = %0.3f s for asset: %@ isSharedAlbumAsset:%@", v18, 0x20u);
          }
        }

LABEL_14:

        v6 = 0;
      }
    }

    else
    {
      if (stage != 1)
      {
        if (stage)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      date = [MEMORY[0x1E695DF00] date];

      v6 = date;
    }

LABEL_15:
    [(PUImageTileViewController *)self _setAssetLoadingStartDate:v6, *v18];
  }
}

- (void)_handleShouldReloadAssetMediaNotification:(id)notification
{
  notificationCopy = notification;
  asset = [(PUImageTileViewController *)self asset];
  object = [notificationCopy object];

  if ([object conformsToProtocol:&unk_1F2BDF190])
  {
    v6 = object;
    uuid = [asset uuid];
    uuid2 = [v6 uuid];
    v9 = [uuid isEqualToString:uuid2];

    if (v9)
    {
      [(PUImageTileViewController *)self setRequiresFullQualityImage:0];
      [(PUImageTileViewController *)self _cancelAllImageRequests];
      [(PUImageTileViewController *)self _invalidateImage];
      [(PUImageTileViewController *)self _invalidateImageLayerModulator];
      [(PUImageTileViewController *)self _updateIfNeeded];
    }
  }
}

- (void)_setFullSizeImageURL:(id)l
{
  lCopy = l;
  v5 = self->__fullSizeImageURL;
  v6 = v5;
  if (v5 == lCopy)
  {
  }

  else
  {
    v7 = [(NSURL *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->__fullSizeImageURL, l);
      [(PUImageTileViewController *)self _invalidateFullSizeTiledLayer];
      [(PUImageTileViewController *)self _invalidateFullSizeImageMetadata];
    }
  }
}

- (void)_setFullSizeImageData:(id)data
{
  dataCopy = data;
  if (self->__fullSizeImageData != dataCopy)
  {
    v6 = dataCopy;
    objc_storeStrong(&self->__fullSizeImageData, data);
    [(PUImageTileViewController *)self _invalidateFullSizeTiledLayer];
    [(PUImageTileViewController *)self _invalidateFullSizeImageMetadata];
    dataCopy = v6;
  }
}

- (void)setPreloadedImage:(id)image
{
  imageCopy = image;
  _imageRequester = [(PUImageTileViewController *)self _imageRequester];
  v6 = _imageRequester;
  if (_imageRequester)
  {
    if (imageCopy)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __47__PUImageTileViewController_setPreloadedImage___block_invoke;
      v9[3] = &unk_1E7B80C38;
      v10 = _imageRequester;
      v11 = imageCopy;
      [v10 performChanges:v9];
    }
  }

  else
  {
    image = [(PUImageTileViewController *)self image];

    if (!image)
    {
      v8 = [[_PreloadedImageResult alloc] initWithPreloadedImage:imageCopy];
      [(PUImageTileViewController *)self displayImageRequestResult:v8];
    }
  }
}

- (void)setGainMapValue:(float)value
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_gainMapValue = value;

    [(PUImageTileViewController *)self _invalidateImageLayerModulatorInput];
  }
}

- (void)setGainMapImage:(CGImage *)image
{
  gainMapImage = self->_gainMapImage;
  if (gainMapImage != image)
  {
    CGImageRelease(gainMapImage);
    self->_gainMapImage = image;
    CGImageRetain(image);

    [(PUImageTileViewController *)self _invalidateImageLayerModulatorInput];
  }
}

- (BOOL)gainMapImageIsAvailable
{
  asset = [(PUImageTileViewController *)self asset];
  displayedImageRequestResult = [(PUImageTileViewController *)self displayedImageRequestResult];
  imageIsFullQuality = [displayedImageRequestResult imageIsFullQuality];

  if (objc_opt_respondsToSelector())
  {
    needsDeferredProcessing = [asset needsDeferredProcessing];
  }

  else
  {
    needsDeferredProcessing = 0;
  }

  displayedImageRequestResult2 = [(PUImageTileViewController *)self displayedImageRequestResult];
  gainMapImage = [displayedImageRequestResult2 gainMapImage];

  if (gainMapImage)
  {
    v9 = needsDeferredProcessing;
  }

  else
  {
    v9 = 0;
  }

  v10 = (imageIsFullQuality & 1) != 0 || v9;

  return v10;
}

- (UIImage)image
{
  displayedImageRequestResult = [(PUImageTileViewController *)self displayedImageRequestResult];
  image = [displayedImageRequestResult image];

  return image;
}

- (BOOL)isDeferredProcessingFinished
{
  asset = [(PUImageTileViewController *)self asset];
  if (objc_opt_respondsToSelector())
  {
    v3 = [asset needsDeferredProcessing] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_notifyDeferredProcessingDoneAndFinalImageDisplayedIfNeeded
{
  v17 = *MEMORY[0x1E69E9840];
  assetViewModel = [(PUImageTileViewController *)self assetViewModel];
  if (([assetViewModel PPT_isDeferredProcessingDoneAndFinalImageDisplayed] & 1) == 0 && self->_presentingDelegateFlags.respondsToPPTShouldSignalDeferredProcessingDoneAndFinalImageDisplayed)
  {
    if ([(PUImageTileViewController *)self isDeferredProcessingFinished])
    {
      presentingDelegate = [(PUImageTileViewController *)self presentingDelegate];
      v5 = [presentingDelegate ppt_imageTileViewControllerShouldSignalDeferredProcessingDoneAndFinalImageDisplayed:self];

      if (v5)
      {
        v6 = PLOneUpGetLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          image = [(PUImageTileViewController *)self image];
          [image size];
          v8 = NSStringFromCGSize(v18);
          asset = [(PUImageTileViewController *)self asset];
          uuid = [asset uuid];
          *buf = 138412546;
          v14 = v8;
          v15 = 2112;
          v16 = uuid;
          _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEBUG, "Deferred Processing: DP processed image loaded/displayed, %@, uuid: %@", buf, 0x16u);
        }

        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __88__PUImageTileViewController__notifyDeferredProcessingDoneAndFinalImageDisplayedIfNeeded__block_invoke;
        v11[3] = &unk_1E7B80DD0;
        v12 = assetViewModel;
        [v12 performChanges:v11];
      }
    }
  }
}

- (void)_updateImageRequesterTargetSize
{
  _imageRequester = [(PUImageTileViewController *)self _imageRequester];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__PUImageTileViewController__updateImageRequesterTargetSize__block_invoke;
  v5[3] = &unk_1E7B80C38;
  v6 = _imageRequester;
  selfCopy = self;
  v4 = _imageRequester;
  [v4 performChanges:v5];
}

uint64_t __60__PUImageTileViewController__updateImageRequesterTargetSize__block_invoke(uint64_t a1)
{
  [*(a1 + 40) _targetSize];
  v2 = *(a1 + 32);

  return [v2 setTargetSize:?];
}

- (void)_setTargetSize:(CGSize)size
{
  if (size.width != self->__targetSize.width || size.height != self->__targetSize.height)
  {
    self->__targetSize = size;
    targetSizeUpdateRateLimiter = [(PUImageTileViewController *)self targetSizeUpdateRateLimiter];
    [targetSizeUpdateRateLimiter inputEvent];
  }
}

- (void)setEdgeAntialiasingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _imageView = [(PUImageTileViewController *)self _imageView];
  layer = [_imageView layer];
  [layer setAllowsEdgeAntialiasing:enabledCopy];
}

- (void)didChangeVisibleRect
{
  v3.receiver = self;
  v3.super_class = PUImageTileViewController;
  [(PUTileViewController *)&v3 didChangeVisibleRect];
  [(PUImageTileViewController *)self _invalidateFullSizeTiledLayer];
  [(PUImageTileViewController *)self _updateIfNeeded];
}

- (BOOL)wantsVisibleRectChanges
{
  v6.receiver = self;
  v6.super_class = PUImageTileViewController;
  if ([(PUTileViewController *)&v6 wantsVisibleRectChanges])
  {
    return 1;
  }

  _fullSizeTiledLayer = [(PUImageTileViewController *)self _fullSizeTiledLayer];
  v3 = _fullSizeTiledLayer != 0;

  return v3;
}

- (void)setPlaceholderColor:(id)color
{
  colorCopy = color;
  v5 = self->_placeholderColor;
  v6 = v5;
  if (v5 == colorCopy)
  {
  }

  else
  {
    v7 = [(UIColor *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_placeholderColor, color);
      [(PUImageTileViewController *)self _updateImageViewBackgroundColor];
    }
  }
}

- (void)_updateImageRequesterFullSizeImageDataProperties
{
  v23 = *MEMORY[0x1E69E9840];
  asset = [(PUImageTileViewController *)self asset];
  uniformTypeIdentifier = [asset uniformTypeIdentifier];

  v5 = 0;
  if ([(PUImageTileViewController *)self shouldUseFullSizeImageData]&& uniformTypeIdentifier)
  {
    v6 = [MEMORY[0x1E6982C40] typeWithIdentifier:uniformTypeIdentifier];
    [objc_opt_class() _supportedZoomImageFormats];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v21 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
LABEL_5:
      v11 = 0;
      while (1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [MEMORY[0x1E6982C40] typeWithIdentifier:*(*(&v18 + 1) + 8 * v11)];
        v13 = [v6 conformsToType:v12];

        if (v13)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v9)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      v5 = v7;
      if (v7)
      {
        goto LABEL_16;
      }
    }

    else
    {
LABEL_11:
    }

    if ([v6 conformsToType:*MEMORY[0x1E6982F88]])
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
  }

  _imageRequester = [(PUImageTileViewController *)self _imageRequester];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__PUImageTileViewController__updateImageRequesterFullSizeImageDataProperties__block_invoke;
  v16[3] = &unk_1E7B80C38;
  v16[4] = self;
  v17 = v5;
  v15 = v5;
  [_imageRequester performChanges:v16];
}

void __77__PUImageTileViewController__updateImageRequesterFullSizeImageDataProperties__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _imageRequester];
  [v2 setRequestFullSizeImageDataUTTypes:*(a1 + 40)];
}

- (void)setShouldUseFullSizeImageData:(BOOL)data
{
  if (self->_shouldUseFullSizeImageData != data)
  {
    self->_shouldUseFullSizeImageData = data;
    if ([(PUImageTileViewController *)self shouldUseFullSizeImageData])
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.2;
    }

    targetSizeUpdateRateLimiter = [(PUImageTileViewController *)self targetSizeUpdateRateLimiter];
    [targetSizeUpdateRateLimiter setInterval:v5];

    [(PUImageTileViewController *)self _updateImageRequesterFullSizeImageDataProperties];
  }
}

- (void)setImageLayerModulator:(id)modulator
{
  modulatorCopy = modulator;
  if (self->_imageLayerModulator != modulatorCopy)
  {
    v6 = modulatorCopy;
    objc_storeStrong(&self->_imageLayerModulator, modulator);
    [(PUImageTileViewController *)self _invalidateImageLayerModulatorInput];
    modulatorCopy = v6;
  }
}

- (void)setImageModulationManager:(id)manager
{
  managerCopy = manager;
  if (self->_imageModulationManager != managerCopy)
  {
    v6 = managerCopy;
    objc_storeStrong(&self->_imageModulationManager, manager);
    [(PUImageTileViewController *)self _invalidateImageLayerModulator];
    managerCopy = v6;
  }
}

- (void)_setImageRequester:(id)requester
{
  requesterCopy = requester;
  imageRequester = self->__imageRequester;
  if (imageRequester != requesterCopy)
  {
    v7 = requesterCopy;
    [(PUImageRequester *)imageRequester unregisterObserver:self];
    [(PUImageRequester *)self->__imageRequester cancelAllImageRequests];
    objc_storeStrong(&self->__imageRequester, requester);
    imageRequester = [(PUImageRequester *)self->__imageRequester registerObserver:self];
    requesterCopy = v7;
  }

  MEMORY[0x1EEE66BB8](imageRequester, requesterCopy);
}

- (void)setMediaProvider:(id)provider
{
  providerCopy = provider;
  if (self->_mediaProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_mediaProvider, provider);
    [(PUImageTileViewController *)self _invalidate];
    providerCopy = v6;
  }
}

- (void)setShouldAnimateToFullQualityResult:(BOOL)result
{
  if (self->_shouldAnimateToFullQualityResult != result)
  {
    self->_shouldAnimateToFullQualityResult = result;
    v5 = +[PUOneUpSettings sharedInstance];
    -[PUImageTileViewController setShouldRetainNonFinalImageUntilZoom:](self, "setShouldRetainNonFinalImageUntilZoom:", [v5 retainProxyUntilZoom]);
  }
}

- (void)_setAssetWithoutUpdateIfNeeded:(id)needed
{
  v34 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  asset = self->_asset;
  if (asset == neededCopy)
  {
    goto LABEL_35;
  }

  v7 = asset;
  objc_storeStrong(&self->_asset, needed);
  v8 = +[PUOneUpSettings sharedInstance];
  fullQualityCrossfadeBehavior = [v8 fullQualityCrossfadeBehavior];

  if (self->_asset)
  {
    uuid = [(PUDisplayAsset *)neededCopy uuid];
    uuid2 = [(PUDisplayAsset *)v7 uuid];
    v12 = [uuid isEqualToString:uuid2];

    if (v12)
    {
      if (fullQualityCrossfadeBehavior == 1 || (objc_opt_respondsToSelector() & 1) != 0 && [(PUDisplayAsset *)neededCopy needsDeferredProcessing]&& fullQualityCrossfadeBehavior == 2)
      {
        [(PUImageTileViewController *)self setShouldAnimateToFullQualityResult:1];
      }

      v13 = v7;
      v14 = neededCopy;
      if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        v15 = [(PUDisplayAsset *)v13 contentChangeFromDisplayAsset:v14];
        LOBYTE(v16) = v15;
        if (!v15)
        {
          v16 = [(PUDisplayAsset *)v14 contentChangeFromDisplayAsset:v13];
        }

        if ((v16 & 0x10) != 0)
        {
          [(PUImageTileViewController *)self setShouldAnimateToFullQualityResult:0];
        }
      }

      else
      {
      }
    }
  }

  else
  {
    [(PUImageTileViewController *)self setShouldAnimateToFullQualityResult:0];
    [(PUImageTileViewController *)self _invalidate];
  }

  if (neededCopy && v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && [(PUDisplayAsset *)v7 isPhotoIrisPlaceholder])
  {
    [(PUImageTileViewController *)self _invalidateImage];
  }

  else
  {
    v17 = self->_asset;
    v18 = v7;
    if (v17 == v18)
    {
      v19 = 0;
    }

    else if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v19 = [(PUDisplayAsset *)v17 contentChangeFromDisplayAsset:v18];
      if (!v19)
      {
        v19 = [(PUDisplayAsset *)v18 contentChangeFromDisplayAsset:v17];
      }
    }

    else
    {
      v19 = 1;
    }

    if ((v19 & 0xFFFFFFFFFFFFFFF1) == ((8 * v19) & 0x20))
    {
      goto LABEL_32;
    }

    [(PUImageTileViewController *)self _invalidateImage];
    if ((v19 & 2) != 0)
    {
      goto LABEL_32;
    }
  }

  [(PUImageTileViewController *)self _invalidateImageLayerModulator];
LABEL_32:
  v20 = PLOneUpGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    modificationDate = [(PUDisplayAsset *)neededCopy modificationDate];
    v22 = 138413570;
    selfCopy = self;
    v24 = 2048;
    v25 = v7;
    v26 = 2112;
    v27 = neededCopy;
    v28 = 2112;
    v29 = modificationDate;
    v30 = 1024;
    canPlayPhotoIris = [(PUDisplayAsset *)neededCopy canPlayPhotoIris];
    v32 = 1024;
    isPhotoIrisPlaceholder = [(PUDisplayAsset *)neededCopy isPhotoIrisPlaceholder];
    _os_log_impl(&dword_1B36F3000, v20, OS_LOG_TYPE_DEBUG, "%@ setAsset:%p -> %@ modificationDate:%@ canPlayIris:%d isPhotoIrisPlaceholder:%d", &v22, 0x36u);
  }

  [(PUImageTileViewController *)self _updateAssetLoadingStage];
  [(PUImageTileViewController *)self assetDidChange];

LABEL_35:
}

- (void)setAsset:(id)asset
{
  if (self->_asset != asset)
  {
    [(PUImageTileViewController *)self _setAssetWithoutUpdateIfNeeded:?];
    [(PUImageTileViewController *)self _updateImageRequesterFullSizeImageDataProperties];

    [(PUImageTileViewController *)self _updateIfNeeded];
  }
}

- (void)setAssetViewModel:(id)model
{
  modelCopy = model;
  assetViewModel = self->_assetViewModel;
  if (assetViewModel != modelCopy)
  {
    v9 = modelCopy;
    v7 = assetViewModel;
    [(PUAssetViewModel *)v7 unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetViewModel, model);
    [(PUAssetViewModel *)self->_assetViewModel registerChangeObserver:self];
    [(PUImageTileViewController *)self assetViewModelDidChange:v7];
    asset = [(PUAssetViewModel *)v9 asset];

    [(PUImageTileViewController *)self setAsset:asset];
    modelCopy = v9;
  }
}

- (void)setBrowsingViewModel:(id)model
{
  modelCopy = model;
  browsingViewModel = self->_browsingViewModel;
  if (browsingViewModel != modelCopy)
  {
    v8 = modelCopy;
    v7 = browsingViewModel;
    [(PUBrowsingViewModel *)v7 unregisterChangeObserver:self];
    objc_storeStrong(&self->_browsingViewModel, model);
    [(PUBrowsingViewModel *)self->_browsingViewModel registerChangeObserver:self];
    [(PUImageTileViewController *)self browsingViewModelDidChange:v7];

    modelCopy = v8;
  }
}

- (void)applyLayoutInfo:(id)info
{
  v20.receiver = self;
  v20.super_class = PUImageTileViewController;
  infoCopy = info;
  [(PUTileViewController *)&v20 applyLayoutInfo:infoCopy];
  [infoCopy contentsRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v21.origin.x = v6;
  v21.origin.y = v8;
  v21.size.width = v10;
  v21.size.height = v12;
  IsEmpty = CGRectIsEmpty(v21);
  v14 = MEMORY[0x1E69C48E0];
  if (IsEmpty)
  {
    v6 = *MEMORY[0x1E69C48E0];
    v8 = *(MEMORY[0x1E69C48E0] + 8);
    v10 = *(MEMORY[0x1E69C48E0] + 16);
    v12 = *(MEMORY[0x1E69C48E0] + 24);
  }

  _imageView = [(PUImageTileViewController *)self _imageView];
  layer = [_imageView layer];
  [layer contentsRect];
  v17 = PXRectApproximatelyEqualToRect();

  if ((v17 & 1) == 0)
  {
    _imageView2 = [(PUImageTileViewController *)self _imageView];
    layer2 = [_imageView2 layer];
    [layer2 setContentsRect:{v6, v8, v10, v12}];
  }

  [(PUImageTileViewController *)self _invalidateTargetSize];
  v22.origin.x = v6;
  v22.origin.y = v8;
  v22.size.width = v10;
  v22.size.height = v12;
  [(PUImageTileViewController *)self setCanUseFullSizeTiledLayer:CGRectEqualToRect(v22, *v14)];
  [(PUImageTileViewController *)self _invalidateFullSizeTiledLayer];
  [(PUImageTileViewController *)self _updateIfNeeded];
}

- (void)becomeReusable
{
  v3.receiver = self;
  v3.super_class = PUImageTileViewController;
  [(PUTileViewController *)&v3 becomeReusable];
  [(PUImageTileViewController *)self setAssetViewModel:0];
  [(PUImageTileViewController *)self setAsset:0];
  [(PUImageTileViewController *)self setShouldUseFullSizeImageData:0];
  [(PUImageTileViewController *)self setMediaProvider:0];
  [(PUImageTileViewController *)self _setTargetSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  [(PUImageTileViewController *)self displayImageRequestResult:0];
  [(PUImageTileViewController *)self _invalidateFullSizeTiledLayer];
  [(PUImageTileViewController *)self _updateFullSizeTiledLayerIfNeeded];
  [(PUImageTileViewController *)self _updateIfNeeded];
}

- (void)_configureImageViewPreferredImageDynamicRange
{
  tilingView = [(PUTileController *)self tilingView];
  shouldDisplayHDR = [tilingView shouldDisplayHDR];

  if (shouldDisplayHDR)
  {
    browsingViewModel = [(PUImageTileViewController *)self browsingViewModel];

    if (browsingViewModel)
    {
      browsingViewModel2 = [(PUImageTileViewController *)self browsingViewModel];
      LOBYTE(browsingViewModel) = [browsingViewModel2 isPresentedForPreview];
    }
  }

  else
  {
    LOBYTE(browsingViewModel) = 1;
  }

  suppressHighDynamicRangeDisplay = [(PUImageTileViewController *)self suppressHighDynamicRangeDisplay];
  if ((browsingViewModel | suppressHighDynamicRangeDisplay))
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  if ([(PUImageTileViewController *)self shouldRequestHDR])
  {
    tilingView2 = [(PUTileController *)self tilingView];

    if (!tilingView2)
    {
      v10 = PXAssertGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_FAULT, "Tiling view should not be nil", buf, 2u);
      }
    }

    v11 = +[PUOneUpSettings sharedInstance];
    [v11 preferredImageDynamicRangeAnimationDuration];
    v13 = v12;

    if (suppressHighDynamicRangeDisplay)
    {
      v14 = +[PUOneUpSettings sharedInstance];
      [v14 hdrSuppressionAnimationDuration];
      v13 = v15;
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __74__PUImageTileViewController__configureImageViewPreferredImageDynamicRange__block_invoke;
    v17[3] = &unk_1E7B7FF70;
    v17[4] = self;
    v17[5] = v8;
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v17 options:0 animations:v13 completion:0.0];
  }

  else
  {
    _imageView = [(PUImageTileViewController *)self _imageView];
    [_imageView setPreferredImageDynamicRange:v8];
  }
}

void __74__PUImageTileViewController__configureImageViewPreferredImageDynamicRange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _imageView];
  [v2 setPreferredImageDynamicRange:v1];
}

- (id)loadView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  imageView = self->__imageView;
  self->__imageView = v3;

  [(UIImageView *)self->__imageView setContentMode:2];
  [(UIImageView *)self->__imageView setClipsToBounds:1];
  [(UIImageView *)self->__imageView setUserInteractionEnabled:0];
  layer = [(UIImageView *)self->__imageView layer];
  [layer setAllowsGroupOpacity:0];

  layer2 = [(UIImageView *)self->__imageView layer];
  [layer2 setAllowsGroupBlending:0];

  [(UIImageView *)self->__imageView setPreferredImageDynamicRange:0];
  v7 = +[PUOneUpSettings sharedInstance];
  useDebuggingColors = [v7 useDebuggingColors];

  if (useDebuggingColors)
  {
    layer3 = [(UIImageView *)self->__imageView layer];
    redColor = [MEMORY[0x1E69DC888] redColor];
    [layer3 setBorderColor:{objc_msgSend(redColor, "CGColor")}];

    [layer3 setBorderWidth:2.0];
  }

  [(PUImageTileViewController *)self _invalidateShouldRequestHDR];
  [(PUImageTileViewController *)self _invalidateImage];
  [(PUImageTileViewController *)self _invalidateImageLayerModulatorManager];
  [(PUImageTileViewController *)self _invalidateImageLayerModulator];
  [(PUImageTileViewController *)self _invalidateImageLayerModulatorInput];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleShouldReloadAssetMediaNotification_ name:@"PUShouldReloadAssetMediaNotification" object:0];

  v12 = self->__imageView;

  return v12;
}

- (void)expectedPresentationSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PUImageTileViewController;
  [(PUTileController *)&v3 expectedPresentationSizeDidChange];
  [(PUImageTileViewController *)self _invalidateTargetSize];
  [(PUImageTileViewController *)self _updateIfNeeded];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(PUImageTileViewController *)self _cancelAllImageRequests];
  v4.receiver = self;
  v4.super_class = PUImageTileViewController;
  [(PUTileViewController *)&v4 dealloc];
}

- (void)outputEventSignaledForCoalescer:(id)coalescer
{
  coalescerCopy = coalescer;
  targetSizeUpdateRateLimiter = [(PUImageTileViewController *)self targetSizeUpdateRateLimiter];

  if (targetSizeUpdateRateLimiter == coalescerCopy)
  {

    [(PUImageTileViewController *)self _updateImageRequesterTargetSize];
  }
}

- (PUImageTileViewController)initWithReuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = PUImageTileViewController;
  v3 = [(PUTileViewController *)&v7 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = [MEMORY[0x1E69C44E8] rateLimitingCoalescerWithRate:0.2];
    targetSizeUpdateRateLimiter = v3->_targetSizeUpdateRateLimiter;
    v3->_targetSizeUpdateRateLimiter = v4;

    [(PXEventCoalescer *)v3->_targetSizeUpdateRateLimiter registerObserver:v3];
  }

  return v3;
}

+ (id)_supportedZoomImageFormats
{
  if (_supportedZoomImageFormats_onceToken != -1)
  {
    dispatch_once(&_supportedZoomImageFormats_onceToken, &__block_literal_global_29476);
  }

  v3 = _supportedZoomImageFormats_supportedZoomImageFormats;

  return v3;
}

void __55__PUImageTileViewController__supportedZoomImageFormats__block_invoke()
{
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:6];
  v0 = [*MEMORY[0x1E6982E58] identifier];
  [v5 addObject:v0];

  v1 = +[PUOneUpSettings sharedInstance];
  v2 = [v1 enableFigPhotoTiledLayer];

  if (v2)
  {
    [v5 addObjectsFromArray:&unk_1F2B7CE78];
  }

  v3 = [v5 copy];
  v4 = _supportedZoomImageFormats_supportedZoomImageFormats;
  _supportedZoomImageFormats_supportedZoomImageFormats = v3;
}

@end