@interface PUImageTileViewController
+ (id)_supportedZoomImageFormats;
- (BOOL)_needsUpdate;
- (BOOL)_tilingViewSupportsDisplayingHDR;
- (BOOL)gainMapImageIsAvailable;
- (BOOL)isDeferredProcessingFinished;
- (BOOL)shouldAdoptResult:(id)a3 overExistingResult:(id)a4;
- (BOOL)shouldAnimateAppearanceOfResult:(id)a3 overExistingResult:(id)a4;
- (BOOL)shouldAvoidInPlaceSnapshottedFadeOut;
- (BOOL)wantsVisibleRectChanges;
- (CGSize)_fullSizeImageSize;
- (CGSize)_fullSizeImageUntransformedSize;
- (CGSize)_targetSize;
- (PUImageTileViewController)initWithReuseIdentifier:(id)a3;
- (PUImageTileViewControllerPresentingDelegate)presentingDelegate;
- (UIImage)image;
- (double)_screenScale;
- (id)generateAssetTransitionInfo;
- (id)loadView;
- (void)_applyHDRSuppressionToWithTraitEnvironment:(id)a3;
- (void)_cancelAllImageRequests;
- (void)_configureImageViewPreferredImageDynamicRange;
- (void)_handleAssetViewModel:(id)a3 didChange:(id)a4;
- (void)_handleBrowsingViewModel:(id)a3 didChange:(id)a4;
- (void)_handleShouldReloadAssetMediaNotification:(id)a3;
- (void)_invalidate;
- (void)_invalidateImage;
- (void)_notifyDeferredProcessingDoneAndFinalImageDisplayedIfNeeded;
- (void)_notifyFullQualityImageDisplayed;
- (void)_registerIfPossibleForHeadroomUsageTraitChangesOfView:(id)a3;
- (void)_setAssetLoadingStage:(int64_t)a3;
- (void)_setAssetWithoutUpdateIfNeeded:(id)a3;
- (void)_setFullSizeImageData:(id)a3;
- (void)_setFullSizeImageURL:(id)a3;
- (void)_setImageRequester:(id)a3;
- (void)_setTargetSize:(CGSize)a3;
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
- (void)applyLayoutInfo:(id)a3;
- (void)becomeReusable;
- (void)dealloc;
- (void)didChangeVisibleRect;
- (void)displayImageRequestResult:(id)a3;
- (void)expectedPresentationSizeDidChange;
- (void)imageRequester:(id)a3 didProduceResult:(id)a4;
- (void)imageRequesterDidUpdateFullSizeImageData:(id)a3;
- (void)isViewControllerTransitioningDidChange;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)outputEventSignaledForCoalescer:(id)a3;
- (void)setAsset:(id)a3;
- (void)setAssetViewModel:(id)a3;
- (void)setBrowsingViewModel:(id)a3;
- (void)setCanUseFullSizeTiledLayer:(BOOL)a3;
- (void)setDisplayedImageRequestResult:(id)a3;
- (void)setEdgeAntialiasingEnabled:(BOOL)a3;
- (void)setGainMapImage:(CGImage *)a3;
- (void)setGainMapValue:(float)a3;
- (void)setImageLayerModulator:(id)a3;
- (void)setImageModulationManager:(id)a3;
- (void)setIsDisplayingFullQualityImage:(BOOL)a3;
- (void)setMediaProvider:(id)a3;
- (void)setPlaceholderColor:(id)a3;
- (void)setPreloadedImage:(id)a3;
- (void)setPresentingDelegate:(id)a3;
- (void)setShouldAnimateToFullQualityResult:(BOOL)a3;
- (void)setShouldUseFullSizeImageData:(BOOL)a3;
- (void)updateModulator;
- (void)updateModulatorInputs;
- (void)updateMutableImageLayerModulator:(id)a3;
- (void)viewModel:(id)a3 didChange:(id)a4;
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (tiledLayerAlphaAnimatorContext == a5)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

    v15 = v9;
    v10 = [(PUImageTileViewController *)self tiledLayerAlphaAnimator];
    [v10 presentationValue];
    v12 = v11;
    v13 = [(PUImageTileViewController *)self tiledLayerHostingView];
    [v13 setAlpha:v12];

    goto LABEL_7;
  }

  if (PXDisplayScreenDynamicRangeObservationContext != a5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PUImageTileViewController.m" lineNumber:1449 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    v15 = v9;
    [(PUImageTileViewController *)self _invalidateShouldRequestHDR];
    [(PUImageTileViewController *)self _invalidateImage];
    [(PUImageTileViewController *)self _invalidateFullSizeTiledLayer];
    [(PUImageTileViewController *)self _updateIfNeeded];
LABEL_7:
    v9 = v15;
  }

LABEL_8:
}

- (void)setPresentingDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentingDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_presentingDelegate, obj);
    p_presentingDelegateFlags = &self->_presentingDelegateFlags;
    p_presentingDelegateFlags->respondsToPPTShouldSignalDeferredProcessingDoneAndFinalImageDisplayed = objc_opt_respondsToSelector() & 1;
    p_presentingDelegateFlags->respondsToFullQualityImageDisplayed = objc_opt_respondsToSelector() & 1;
  }
}

- (void)_handleBrowsingViewModel:(id)a3 didChange:(id)a4
{
  if ([a4 isPresentedForPreviewDidChange])
  {

    [(PUImageTileViewController *)self _configureImageViewPreferredImageDynamicRange];
  }
}

- (void)_handleAssetViewModel:(id)a3 didChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 revealsGainMapImageChanged])
  {
    v8 = [(PUImageTileViewController *)self imageLayerModulator];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__PUImageTileViewController__handleAssetViewModel_didChange___block_invoke;
    v10[3] = &unk_1E7B7F3B8;
    v10[4] = self;
    [v8 performChanges:v10];
  }

  if ([v7 assetChanged])
  {
    v9 = [v6 asset];
    [(PUImageTileViewController *)self _setAssetWithoutUpdateIfNeeded:v9];
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

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (![(PUTileController *)self shouldPreserveCurrentContent])
  {
    v7 = [(PUImageTileViewController *)self assetViewModel];

    if (v7 == v9)
    {
      [(PUImageTileViewController *)self _handleAssetViewModel:v9 didChange:v6];
    }

    else
    {
      v8 = [(PUImageTileViewController *)self browsingViewModel];

      if (v8 == v9)
      {
        [(PUImageTileViewController *)self _handleBrowsingViewModel:v9 didChange:v6];
      }
    }
  }
}

- (void)_updateImageViewBackgroundColor
{
  v6 = [(PUImageTileViewController *)self displayedImageRequestResult];
  v3 = [v6 image];
  if (v3)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [(PUImageTileViewController *)self placeholderColor];
  }
  v4 = ;
  v5 = [(PUImageTileViewController *)self _imageView];
  [v5 setBackgroundColor:v4];
}

- (void)_cancelAllImageRequests
{
  v2 = [(PUImageTileViewController *)self _imageRequester];
  [v2 cancelAllImageRequests];
}

- (id)generateAssetTransitionInfo
{
  v3 = [(PUImageTileViewController *)self _imageView];
  v4 = [v3 image];

  v5 = MEMORY[0x1E69C35F0];
  v6 = [(PUImageTileViewController *)self asset];
  v7 = [v5 optionsForAsset:v6];
  v9 = v8;

  v10 = [(PUImageTileViewController *)self imageModulationManager];
  v11 = [v10 checkoutImageLayerModulatorWithOptions:{v7, v9}];

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
  v17 = v4;
  v18 = v11;
  v12 = v11;
  v13 = v4;
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
  v3 = [(PUImageTileViewController *)self isDisplayingFullQualityImage];

  [(PUTileViewController *)self _setReadyForDisplay:v3];
}

- (void)setDisplayedImageRequestResult:(id)a3
{
  v5 = a3;
  if (self->_displayedImageRequestResult != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_displayedImageRequestResult, a3);
    [(PUImageTileViewController *)self displayedImageRequestResultDidChange];
    v5 = v6;
  }
}

- (void)setIsDisplayingFullQualityImage:(BOOL)a3
{
  if (self->_isDisplayingFullQualityImage != a3)
  {
    self->_isDisplayingFullQualityImage = a3;
    [(PUImageTileViewController *)self _updateReadyForDisplay];
  }
}

- (void)_applyHDRSuppressionToWithTraitEnvironment:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUImageTileViewController *)self _fullSizeTiledLayer];
  v6 = [v5 sublayers];
  v7 = [v6 count];

  if (v7)
  {
    v19 = v4;
    v8 = [v4 traitCollection];
    v9 = [v8 _headroomUsage];

    v10 = [v5 sublayers];
    v11 = [v10 objectAtIndexedSubscript:0];
    v12 = [v11 _ui_animationForHDRHeadroomUsageEnabled:v9 != 0];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = v10;
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
          [v18 _ui_configureForHDRHeadroomUsageEnabled:v9 != 0];
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

    v4 = v19;
  }
}

- (void)_registerIfPossibleForHeadroomUsageTraitChangesOfView:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_opt_self();
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__PUImageTileViewController__registerIfPossibleForHeadroomUsageTraitChangesOfView___block_invoke;
  v8[3] = &unk_1E7B79E70;
  objc_copyWeak(&v9, &location);
  v7 = [v4 registerForTraitChanges:v6 withHandler:v8];

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
    v3 = [(PUImageTileViewController *)self _fullSizeImageData];
    v4 = [(PUImageTileViewController *)self _fullSizeImageURL];
    if (v3 | v4)
    {
      v5 = [(PUTileViewController *)self isViewLoaded];
      v6 = [(PUImageTileViewController *)self _fullSizeTiledLayer];
      if (v5)
      {
        v7 = [(PUImageTileViewController *)self _imageView];
        v8 = [(PUImageTileViewController *)self _fullSizeImageOrientation];
        v9 = (v8 - 2) & 0xFFFFFFFFFFFFFFFALL;
        if (v6)
        {
LABEL_54:
          v65 = [(PUImageTileViewController *)self tiledLayerHostingView];
          [v65 bounds];
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
          v81 = [(PUTileViewController *)self view];
          v82 = [v81 window];
          v83 = [v82 screen];
          [v83 nativeScale];
          v143 = v84;

          [(PUTileViewController *)self visibleRect];
          v86 = v85;
          v88 = v87;
          v90 = v89;
          v92 = v91;
          v93 = [(PUImageTileViewController *)self tiledLayerHostingView];
          v94 = [v93 layer];
          [v6 convertRect:v94 fromLayer:{v86, v88, v90, v92}];
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
          v124 = [(PUTileViewController *)self view];
          v144[0] = MEMORY[0x1E69E9820];
          v144[1] = 3221225472;
          v144[2] = __62__PUImageTileViewController__updateFullSizeTiledLayerIfNeeded__block_invoke_3;
          v144[3] = &unk_1E7B77628;
          v6 = v6;
          v145 = v6;
          v146 = spida;
          v147 = MidY;
          v148 = buf;
          [v123 pu_animateAlongsideView:v124 animations:v144];

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

          [v6 setVisibleRectangle:v122 zoomScale:{v118, v112, v113, v121}];
          v125 = 1;
          [(PUImageTileViewController *)self setIsDisplayingFullQualityImage:1];
          if ([(PUImageTileViewController *)self canUseFullSizeTiledLayer])
          {
            v125 = [(PUTileController *)self isViewControllerTransitioning];
          }

          [v6 setHidden:v125];

          goto LABEL_91;
        }

        v141 = (v8 - 2) & 0xFFFFFFFFFFFFFFFALL;
        v10 = objc_alloc(MEMORY[0x1E69DD250]);
        [v7 frame];
        v11 = [v10 initWithFrame:?];
        [(PUImageTileViewController *)self setTiledLayerHostingView:v11];
        [v11 setAutoresizingMask:18];
        [v7 addSubview:v11];
        v12 = [v7 layer];
        v13 = [v11 layer];
        [v12 insertSublayer:v13 atIndex:0];

        v14 = [(PUTileViewController *)self view];
        v15 = [v14 window];
        v16 = [v15 screen];
        [v16 nativeBounds];
        v18 = v17;
        v20 = v19;

        v21 = off_1E7B6E000;
        v22 = +[PUOneUpSettings sharedInstance];
        v139 = v22;
        if (![v22 enableFigPhotoTiledLayer])
        {
          if (v3)
          {
            v6 = [objc_alloc(MEMORY[0x1E69BE1D0]) initWithJPEGData:v3 placeholderImage:0 screenSize:{v18, v20}];
          }

          else
          {
            v6 = 0;
          }

          v9 = v141;
          goto LABEL_49;
        }

        if ([v22 enableFigPhotoBackgroundSizeBasedDisplay])
        {
          v23 = [(PUImageTileViewController *)self image];
          [v23 size];
          v24 = [(PUImageTileViewController *)self image];
          [v24 scale];
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
          v134 = [(PUImageTileViewController *)self image];
          [v134 size];
          v133 = [(PUImageTileViewController *)self image];
          [v133 size];
          v30 = [(PUTileViewController *)self view];
          [v30 window];
          v31 = spidb = v7;
          [v31 bounds];
          PFSizeWithAspectRatioFittingSize();
          v32 = [(PUTileViewController *)self view];
          v33 = [v32 window];
          v34 = [v33 screen];
          [v34 scale];
          PXSizeScale();
          v26 = v35;
          v28 = v36;

          v21 = off_1E7B6E000;
          v7 = spidb;

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

        if (v3)
        {
          v38 = [objc_alloc(MEMORY[0x1E69917A0]) initWithContainerData:v3 containerImageIndex:0 backgroundImageSize:v26 screenSize:{v37, v18, v20}];
        }

        else if (v4)
        {
          v38 = [objc_alloc(MEMORY[0x1E69917A0]) initWithContainerURL:v4 containerImageIndex:0 backgroundImageSize:v26 screenSize:{v37, v18, v20}];
        }

        else
        {
          v38 = 0;
        }

        v6 = v38;
        if (![(PUImageTileViewController *)self shouldRequestHDR])
        {
LABEL_48:
          [v6 prepareForDecode];
          [(PUImageTileViewController *)self _registerIfPossibleForHeadroomUsageTraitChangesOfView:v7];

LABEL_49:
          v52 = *MEMORY[0x1E695EFF8];
          v53 = *(MEMORY[0x1E695EFF8] + 8);
          [(PUImageTileViewController *)self _fullSizeImageUntransformedSize];
          [v6 setBounds:{v52, v53, v54, v55}];
          v56 = [(__objc2_class *)v21[44] sharedInstance];
          v57 = [v56 useDebuggingColors];

          if (v57)
          {
            v58 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.5 blue:0.0 alpha:0.25];
            [v6 setBorderColor:{objc_msgSend(v58, "CGColor")}];

            [v6 setBorderWidth:100.0];
          }

          v59 = [v11 layer];
          [v59 addSublayer:v6];

          v60 = [(PUImageTileViewController *)self tiledLayerAlphaAnimator];

          if (!v60)
          {
            v61 = [objc_alloc(MEMORY[0x1E69C4588]) initWithValue:0.0];
            [(PUImageTileViewController *)self setTiledLayerAlphaAnimator:v61];

            v62 = [(PUImageTileViewController *)self tiledLayerAlphaAnimator];
            [v62 registerChangeObserver:self context:tiledLayerAlphaAnimatorContext];
          }

          v63 = [(PUImageTileViewController *)self tiledLayerAlphaAnimator];
          [v63 performChangesWithoutAnimation:&__block_literal_global_392];

          [v11 setAlpha:0.0];
          v64 = [(PUImageTileViewController *)self tiledLayerAlphaAnimator];
          [v64 performChangesWithDuration:4 curve:&__block_literal_global_394 changes:1.0];

          [(PUImageTileViewController *)self _setFullSizeTiledLayer:v6];
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
        if (v3)
        {
          v44 = [objc_alloc(MEMORY[0x1E69C0718]) initWithImageData:v3 contentType:0 options:13 timeZoneLookup:0 cacheImageSource:1 cacheImageData:0];
        }

        else
        {
          if (!v4)
          {
            v45 = 0;
LABEL_37:
            v46 = v7;
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

            [v6 setDecodeToHDROutputMode:v48];
            [v6 setShouldDisplayHDR:v47];
            v49 = [v45 cgColorSpace];
            if (CGColorSpaceContainsFlexGTCInfo())
            {
              [v6 setFlexGTCColorSpace:v49];
            }

            v50 = PLOneUpGetLog();
            v51 = v50;
            if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
            {
              LOWORD(buf.a) = 0;
              _os_signpost_emit_with_name_impl(&dword_1B36F3000, v51, OS_SIGNPOST_INTERVAL_END, spid, "com.apple.photos.ui.OneUp.TiledLayerHDRConfiguration", "", &buf, 2u);
            }

            v7 = v46;
            v9 = v141;
            v21 = off_1E7B6E000;
            goto LABEL_48;
          }

          v44 = [objc_alloc(MEMORY[0x1E69C0718]) initWithImageURL:v4 contentType:0 options:13 timeZoneLookup:0 cacheImageSource:1 cacheImageData:0];
        }

        v45 = v44;
        goto LABEL_37;
      }
    }

    else
    {
      v6 = [(PUImageTileViewController *)self _fullSizeTiledLayer];
    }

    if (!v6)
    {
LABEL_92:

      return;
    }

    v29 = [(PUImageTileViewController *)self tiledLayerHostingView];
    [v29 removeFromSuperview];

    [(PUImageTileViewController *)self setTiledLayerHostingView:0];
    [(PUImageTileViewController *)self setTiledLayerAlphaAnimator:0];
    [v6 removeFromSuperlayer];
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
    v3 = [(PUImageTileViewController *)self _fullSizeImageData];
    v4 = [(PUImageTileViewController *)self _fullSizeImageURL];
    if (v4)
    {
      PLGetOrientationAndUntransformedSizeFromImageURL();
    }

    else if (v3)
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
  v3 = [(PUImageTileViewController *)self displayedImageRequestResult];
  v5 = [v3 asset];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 hasAllThumbs])
  {
    if ([v5 hasLargerThanThumbResourceLocal])
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

- (void)updateMutableImageLayerModulator:(id)a3
{
  v6 = a3;
  v4 = [(PUTileViewController *)self originalView];
  v5 = [v4 layer];
  [v6 setLayer:v5];

  if ([(PUImageTileViewController *)self gainMapImageIsAvailable])
  {
    [v6 setGainMapImage:-[PUImageTileViewController gainMapImage](self animated:{"gainMapImage"), 1}];
    [(PUImageTileViewController *)self gainMapValue];
    [v6 setGainMapValue:?];
  }
}

- (void)updateModulatorInputs
{
  v3 = [(PUImageTileViewController *)self imageLayerModulator];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__PUImageTileViewController_updateModulatorInputs__block_invoke;
  v4[3] = &unk_1E7B7F3B8;
  v4[4] = self;
  [v3 performChanges:v4];
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
  v3 = [(PUTileController *)self tilingView];
  v4 = [v3 shouldDisplayHDR];

  if (v4)
  {
    v12 = [(PUImageTileViewController *)self imageModulationManager];
    v5 = MEMORY[0x1E69C35F0];
    v6 = [(PUImageTileViewController *)self asset];
    v7 = [v5 optionsForAsset:v6];
    v9 = v8;

    v10 = [(PUImageTileViewController *)self imageLayerModulator];
    [v12 checkInImageLayerModulator:v10];

    v11 = [v12 checkoutImageLayerModulatorWithOptions:{v7, v9}];
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
  v2 = [(PUImageTileViewController *)self imageModulationManager];
  [v2 setNeedsEnabledUpdate];
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
    v4 = [(PUImageTileViewController *)self presentingDelegate];
    [v4 imageTileViewController:self didDisplayFullQualityImageWithDeferredProcessingFinished:{-[PUImageTileViewController isDeferredProcessingFinished](self, "isDeferredProcessingFinished")}];
  }
}

- (void)displayImageRequestResult:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLOneUpGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v4;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Displaying image requester result: %@", buf, 0xCu);
  }

  v6 = [(PUImageTileViewController *)self displayedImageRequestResult];
  v7 = [(PUImageTileViewController *)self _imageView];
  v8 = [v4 image];
  [v7 setImage:v8];
  if (v8 || ([(PUImageTileViewController *)self placeholderColor], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v9 = [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    v9 = [(PUImageTileViewController *)self placeholderColor];
  }

  v11 = v9;
  [v7 setBackgroundColor:v9];

  -[PUImageTileViewController setIsDisplayingFullQualityImage:](self, "setIsDisplayingFullQualityImage:", [v4 imageIsFullQuality]);
  -[PUImageTileViewController setGainMapImage:](self, "setGainMapImage:", [v4 gainMapImage]);
  [v4 gainMapValue];
  [(PUImageTileViewController *)self setGainMapValue:?];
  [(PUImageTileViewController *)self setDisplayedImageRequestResult:v4];
  v12 = +[PUOneUpSettings sharedInstance];
  [v12 fullQualityCrossfadeDuration];
  v14 = v13;

  if ([(PUImageTileViewController *)self shouldAnimateAppearanceOfResult:v4 overExistingResult:v6]&& v14 > 0.0)
  {
    v15 = [v7 snapshotViewAfterScreenUpdates:0];
    [v7 bounds];
    [v15 setFrame:?];
    [v15 setAutoresizingMask:18];
    [v7 addSubview:v15];
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
  if (v8 && [v4 imageIsFullQuality])
  {
    [(PUImageTileViewController *)self _notifyDeferredProcessingDoneAndFinalImageDisplayedIfNeeded];
    [(PUImageTileViewController *)self _notifyFullQualityImageDisplayed];
  }

  [(PUImageTileViewController *)self _updateIfNeeded];
}

- (BOOL)shouldAnimateAppearanceOfResult:(id)a3 overExistingResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(PUTileController *)self isAnimating])
  {
    v9 = [v7 asset];
    if (v9)
    {
      v10 = v9;
      v11 = [v6 asset];
      v12 = [v7 asset];
      v13 = v11;
      v14 = v12;
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
          v17 = [(PUImageTileViewController *)self browsingViewModel];
          v18 = [v17 isScrubbing];

          if (!v18)
          {
            goto LABEL_14;
          }

          goto LABEL_12;
        }
      }
    }

LABEL_12:
    v19 = [(PUImageTileViewController *)self animatesImageTransitions];
    if ((!v7 || !v19) && (!-[PUImageTileViewController shouldAnimateToFullQualityResult](self, "shouldAnimateToFullQualityResult") || ([v6 imageIsFullQuality] & 1) == 0))
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

- (BOOL)shouldAdoptResult:(id)a3 overExistingResult:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = PLOneUpGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 138412290;
      v38 = v6;
      v16 = "Accepting new image requester result because existing result is nil.\n\t%@";
      goto LABEL_12;
    }

LABEL_13:
    v17 = 1;
LABEL_35:

    goto LABEL_36;
  }

  if (-[PUImageTileViewController shouldRetainNonFinalImageUntilZoom](self, "shouldRetainNonFinalImageUntilZoom") && [v6 imageIsFullQuality])
  {
    v8 = PLOneUpGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 138412290;
      v38 = v6;
      v9 = "Ignoring new image requester result because we are refraining from showing final image until we zoom in to display full image data.\n\t%@";
LABEL_33:
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, v9, &v37, 0xCu);
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  v10 = [v6 asset];
  v11 = [v10 uuid];
  v12 = [v7 asset];
  v13 = [v12 uuid];
  v14 = v13;
  if (v11 == v13)
  {
  }

  else
  {
    v15 = [v11 isEqual:v13];

    if ((v15 & 1) == 0)
    {
      v8 = PLOneUpGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v37 = 138412290;
        v38 = v6;
        v16 = "Accepting new image requester result because uuid does not match existing result.\n\t%@";
LABEL_12:
        _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, v16, &v37, 0xCu);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  v18 = [v6 asset];
  v19 = [v7 asset];
  v20 = v18;
  v21 = v19;
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

  v24 = [v6 image];
  [v24 size];
  v25 = [v7 image];
  [v25 size];
  if (PFSizeLargerThanSize())
  {
  }

  else
  {
    v26 = [v6 imageIsFullQuality];

    if ((v26 & 1) == 0)
    {
      v8 = PLOneUpGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v37 = 138412290;
        v38 = v6;
        v9 = "Ignoring new image requester result because its image is not larger than the existing one and it is not full quality.\n\t%@";
        goto LABEL_33;
      }

      goto LABEL_34;
    }
  }

  v27 = [v6 image];
  v28 = [v7 image];
  if (v27 == v28 && (v29 = [v6 gainMapImage], v29 == objc_msgSend(v7, "gainMapImage")) && (objc_msgSend(v6, "gainMapValue"), v33 = v32, objc_msgSend(v7, "gainMapValue"), v33 == v34))
  {
    v35 = [v6 imageIsFullQuality];
    v36 = [v7 imageIsFullQuality];

    if (v35 == v36)
    {
      v8 = PLOneUpGetLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      v37 = 138412290;
      v38 = v6;
      v9 = "Ignoring new image requester result because its image, gain map info, and full quality flag is equal to our current one.\n\t%@";
      goto LABEL_33;
    }
  }

  else
  {
  }

  v30 = [v6 image];

  if (!v30)
  {
    v8 = PLOneUpGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 138412290;
      v38 = v6;
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

- (void)imageRequesterDidUpdateFullSizeImageData:(id)a3
{
  v4 = a3;
  v5 = [v4 fullSizeImageData];
  [(PUImageTileViewController *)self _setFullSizeImageData:v5];

  v6 = [v4 fullSizeImageURL];

  [(PUImageTileViewController *)self _setFullSizeImageURL:v6];

  [(PUImageTileViewController *)self _updateIfNeeded];
}

- (void)imageRequester:(id)a3 didProduceResult:(id)a4
{
  v7 = a4;
  v5 = [(PUImageTileViewController *)self displayedImageRequestResult];
  v6 = [(PUImageTileViewController *)self shouldAdoptResult:v7 overExistingResult:v5];

  if (v6)
  {
    [(PUImageTileViewController *)self displayImageRequestResult:v7];
  }
}

- (BOOL)_tilingViewSupportsDisplayingHDR
{
  v2 = [(PUTileController *)self tilingView];
  v3 = [v2 shouldDisplayHDR];

  v4 = +[PUOneUpSettings sharedInstance];
  v5 = [v4 enableHDRImages];

  return v5 & v3;
}

- (void)_updateImageIfNeeded
{
  v54 = *MEMORY[0x1E69E9840];
  if ([(PUImageTileViewController *)self _needsUpdateImage])
  {
    [(PUImageTileViewController *)self _setNeedsUpdateImage:0];
    v3 = [(PUImageTileViewController *)self animatesImageTransitions];
    [(PUImageTileViewController *)self setAnimatesImageTransitions:0];
    v4 = [(PUImageTileViewController *)self assetViewModel];
    v5 = [(PUImageTileViewController *)self asset];
    v6 = [(PUImageTileViewController *)self mediaProvider];
    [(PUImageTileViewController *)self _targetSize];
    if (v5 && v6)
    {
      v9 = v7;
      v10 = v8;
      v11 = [(PUImageTileViewController *)self _imageRequester];
      v12 = [(PUImageTileViewController *)self _imageRequester];

      if (!v12)
      {
        v13 = [[PUImageRequester alloc] initWithMediaProvider:v6 asset:v5 requiresFullQualityImage:[(PUImageTileViewController *)self requiresFullQualityImage]];

        [(PUImageTileViewController *)self _setImageRequester:v13];
        v11 = v13;
      }

      v14 = [v5 uniformTypeIdentifier];
      v15 = 0;
      v39 = v14;
      v40 = v6;
      if ([(PUImageTileViewController *)self shouldUseFullSizeImageData]&& v14)
      {
        v37 = v11;
        v38 = v4;
        v16 = [MEMORY[0x1E6982C40] typeWithIdentifier:v14];
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
          v4 = v38;
          v3 = v3;
          v11 = v37;
          if (v17)
          {
            goto LABEL_21;
          }
        }

        else
        {
LABEL_16:

          v4 = v38;
          v3 = v3;
          v11 = v37;
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

      v24 = [(PUImageTileViewController *)self shouldRequestHDR];
      v25 = [(PUTileViewController *)self viewIfLoaded];
      v26 = [v25 px_screen];
      v27 = v26;
      if (v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = [MEMORY[0x1E69DCEB0] px_mainScreen];
      }

      v29 = v28;

      [v29 potentialEDRHeadroom];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __49__PUImageTileViewController__updateImageIfNeeded__block_invoke;
      v41[3] = &unk_1E7B77600;
      v42 = v11;
      v48 = v24;
      v45 = v30;
      v46 = v9;
      v47 = v10;
      v43 = v4;
      v44 = v15;
      v31 = v15;
      v32 = v11;
      [v32 performChanges:v41];

      v6 = v40;
    }

    [(PUImageTileViewController *)self setAnimatesImageTransitions:v3];
    v33 = [(PUTileController *)self tilingView];
    v34 = [v33 screenDynamicRangeMonitor];
    [v34 unregisterChangeObserver:self context:PXDisplayScreenDynamicRangeObservationContext];

    v35 = [(PUTileController *)self tilingView];
    v36 = [v35 screenDynamicRangeMonitor];
    [v36 registerChangeObserver:self context:PXDisplayScreenDynamicRangeObservationContext];
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
  v3 = [(PUImageTileViewController *)self targetSizeUpdateRateLimiter];
  [v3 reset];

  [(PUImageTileViewController *)self _setImageRequester:0];
  [(PUImageTileViewController *)self _setFullSizeImageURL:0];
  [(PUImageTileViewController *)self _setFullSizeImageData:0];

  [(PUImageTileViewController *)self _setNeedsUpdateImage:1];
}

- (double)_screenScale
{
  v3 = [(PUTileViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 screen];
  [v5 scale];
  v7 = v6;

  if (v7 < 1.0)
  {
    v8 = [(PUTileController *)self tilingView];
    v9 = [v8 window];
    v10 = [v9 screen];
    [v10 scale];
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
      v7 = [(PUImageTileViewController *)self asset];
      [v7 aspectRatio];
      v9 = v8;

      if (v9 > 0.0)
      {
        [(PUTileController *)self expectedPresentationSize];
        PFSizeWithAspectRatioFittingSize();
      }

      v10 = [(PUTileViewController *)self view];
      [v10 bounds];
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
  v3 = [(PUImageTileViewController *)self _tilingViewSupportsDisplayingHDR];
  v4 = [(PUTileController *)self tilingView];
  v6 = [v4 screenDynamicRangeMonitor];

  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = v6;
  if (v6)
  {
    LOBYTE(v3) = [v6 screenSupportsHDR];
LABEL_5:
    v5 = v6;
  }

  self->_shouldRequestHDR = v3;
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
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:a2 object:self file:@"PUImageTileViewController.m" lineNumber:694 description:@"updates still needed after an update cycle"];
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

- (void)setCanUseFullSizeTiledLayer:(BOOL)a3
{
  if (self->_canUseFullSizeTiledLayer != a3)
  {
    self->_canUseFullSizeTiledLayer = a3;
    [(PUImageTileViewController *)self _invalidateFullSizeTiledLayer];
  }
}

- (BOOL)shouldAvoidInPlaceSnapshottedFadeOut
{
  v8.receiver = self;
  v8.super_class = PUImageTileViewController;
  v3 = [(PUTileController *)&v8 shouldAvoidInPlaceSnapshottedFadeOut];
  v4 = [(PUImageTileViewController *)self assetViewModel];
  v5 = v4;
  if (v3 & 1) != 0 || ([v4 isUserTransformingTile])
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

- (void)_setAssetLoadingStage:(int64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->__assetLoadingStage != a3)
  {
    self->__assetLoadingStage = a3;
    v5 = [(PUImageTileViewController *)self _assetLoadingStartDate];
    v6 = v5;
    if (a3 == 2)
    {
      if (v5)
      {
        v8 = [(PUImageTileViewController *)self asset];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v10 = [(PUImageTileViewController *)self asset];
          [v6 timeIntervalSinceNow];
          v12 = v11;
          v13 = [v10 px_isSharedAlbumAsset];
          v14 = PLOneUpGetLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = [(PUImageTileViewController *)self asset];
            v16 = v15;
            v17 = @"NO";
            *v18 = 134218498;
            *&v18[4] = -v12;
            *&v18[12] = 2112;
            if (v13)
            {
              v17 = @"YES";
            }

            *&v18[14] = v15;
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
      if (a3 != 1)
      {
        if (a3)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      v7 = [MEMORY[0x1E695DF00] date];

      v6 = v7;
    }

LABEL_15:
    [(PUImageTileViewController *)self _setAssetLoadingStartDate:v6, *v18];
  }
}

- (void)_handleShouldReloadAssetMediaNotification:(id)a3
{
  v4 = a3;
  v10 = [(PUImageTileViewController *)self asset];
  v5 = [v4 object];

  if ([v5 conformsToProtocol:&unk_1F2BDF190])
  {
    v6 = v5;
    v7 = [v10 uuid];
    v8 = [v6 uuid];
    v9 = [v7 isEqualToString:v8];

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

- (void)_setFullSizeImageURL:(id)a3
{
  v8 = a3;
  v5 = self->__fullSizeImageURL;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(NSURL *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->__fullSizeImageURL, a3);
      [(PUImageTileViewController *)self _invalidateFullSizeTiledLayer];
      [(PUImageTileViewController *)self _invalidateFullSizeImageMetadata];
    }
  }
}

- (void)_setFullSizeImageData:(id)a3
{
  v5 = a3;
  if (self->__fullSizeImageData != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->__fullSizeImageData, a3);
    [(PUImageTileViewController *)self _invalidateFullSizeTiledLayer];
    [(PUImageTileViewController *)self _invalidateFullSizeImageMetadata];
    v5 = v6;
  }
}

- (void)setPreloadedImage:(id)a3
{
  v4 = a3;
  v5 = [(PUImageTileViewController *)self _imageRequester];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __47__PUImageTileViewController_setPreloadedImage___block_invoke;
      v9[3] = &unk_1E7B80C38;
      v10 = v5;
      v11 = v4;
      [v10 performChanges:v9];
    }
  }

  else
  {
    v7 = [(PUImageTileViewController *)self image];

    if (!v7)
    {
      v8 = [[_PreloadedImageResult alloc] initWithPreloadedImage:v4];
      [(PUImageTileViewController *)self displayImageRequestResult:v8];
    }
  }
}

- (void)setGainMapValue:(float)a3
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_gainMapValue = a3;

    [(PUImageTileViewController *)self _invalidateImageLayerModulatorInput];
  }
}

- (void)setGainMapImage:(CGImage *)a3
{
  gainMapImage = self->_gainMapImage;
  if (gainMapImage != a3)
  {
    CGImageRelease(gainMapImage);
    self->_gainMapImage = a3;
    CGImageRetain(a3);

    [(PUImageTileViewController *)self _invalidateImageLayerModulatorInput];
  }
}

- (BOOL)gainMapImageIsAvailable
{
  v3 = [(PUImageTileViewController *)self asset];
  v4 = [(PUImageTileViewController *)self displayedImageRequestResult];
  v5 = [v4 imageIsFullQuality];

  if (objc_opt_respondsToSelector())
  {
    v6 = [v3 needsDeferredProcessing];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PUImageTileViewController *)self displayedImageRequestResult];
  v8 = [v7 gainMapImage];

  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v10 = (v5 & 1) != 0 || v9;

  return v10;
}

- (UIImage)image
{
  v2 = [(PUImageTileViewController *)self displayedImageRequestResult];
  v3 = [v2 image];

  return v3;
}

- (BOOL)isDeferredProcessingFinished
{
  v2 = [(PUImageTileViewController *)self asset];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 needsDeferredProcessing] ^ 1;
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
  v3 = [(PUImageTileViewController *)self assetViewModel];
  if (([v3 PPT_isDeferredProcessingDoneAndFinalImageDisplayed] & 1) == 0 && self->_presentingDelegateFlags.respondsToPPTShouldSignalDeferredProcessingDoneAndFinalImageDisplayed)
  {
    if ([(PUImageTileViewController *)self isDeferredProcessingFinished])
    {
      v4 = [(PUImageTileViewController *)self presentingDelegate];
      v5 = [v4 ppt_imageTileViewControllerShouldSignalDeferredProcessingDoneAndFinalImageDisplayed:self];

      if (v5)
      {
        v6 = PLOneUpGetLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v7 = [(PUImageTileViewController *)self image];
          [v7 size];
          v8 = NSStringFromCGSize(v18);
          v9 = [(PUImageTileViewController *)self asset];
          v10 = [v9 uuid];
          *buf = 138412546;
          v14 = v8;
          v15 = 2112;
          v16 = v10;
          _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEBUG, "Deferred Processing: DP processed image loaded/displayed, %@, uuid: %@", buf, 0x16u);
        }

        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __88__PUImageTileViewController__notifyDeferredProcessingDoneAndFinalImageDisplayedIfNeeded__block_invoke;
        v11[3] = &unk_1E7B80DD0;
        v12 = v3;
        [v12 performChanges:v11];
      }
    }
  }
}

- (void)_updateImageRequesterTargetSize
{
  v3 = [(PUImageTileViewController *)self _imageRequester];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__PUImageTileViewController__updateImageRequesterTargetSize__block_invoke;
  v5[3] = &unk_1E7B80C38;
  v6 = v3;
  v7 = self;
  v4 = v3;
  [v4 performChanges:v5];
}

uint64_t __60__PUImageTileViewController__updateImageRequesterTargetSize__block_invoke(uint64_t a1)
{
  [*(a1 + 40) _targetSize];
  v2 = *(a1 + 32);

  return [v2 setTargetSize:?];
}

- (void)_setTargetSize:(CGSize)a3
{
  if (a3.width != self->__targetSize.width || a3.height != self->__targetSize.height)
  {
    self->__targetSize = a3;
    v5 = [(PUImageTileViewController *)self targetSizeUpdateRateLimiter];
    [v5 inputEvent];
  }
}

- (void)setEdgeAntialiasingEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUImageTileViewController *)self _imageView];
  v4 = [v5 layer];
  [v4 setAllowsEdgeAntialiasing:v3];
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

  v4 = [(PUImageTileViewController *)self _fullSizeTiledLayer];
  v3 = v4 != 0;

  return v3;
}

- (void)setPlaceholderColor:(id)a3
{
  v8 = a3;
  v5 = self->_placeholderColor;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(UIColor *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_placeholderColor, a3);
      [(PUImageTileViewController *)self _updateImageViewBackgroundColor];
    }
  }
}

- (void)_updateImageRequesterFullSizeImageDataProperties
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(PUImageTileViewController *)self asset];
  v4 = [v3 uniformTypeIdentifier];

  v5 = 0;
  if ([(PUImageTileViewController *)self shouldUseFullSizeImageData]&& v4)
  {
    v6 = [MEMORY[0x1E6982C40] typeWithIdentifier:v4];
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

  v14 = [(PUImageTileViewController *)self _imageRequester];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__PUImageTileViewController__updateImageRequesterFullSizeImageDataProperties__block_invoke;
  v16[3] = &unk_1E7B80C38;
  v16[4] = self;
  v17 = v5;
  v15 = v5;
  [v14 performChanges:v16];
}

void __77__PUImageTileViewController__updateImageRequesterFullSizeImageDataProperties__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _imageRequester];
  [v2 setRequestFullSizeImageDataUTTypes:*(a1 + 40)];
}

- (void)setShouldUseFullSizeImageData:(BOOL)a3
{
  if (self->_shouldUseFullSizeImageData != a3)
  {
    self->_shouldUseFullSizeImageData = a3;
    if ([(PUImageTileViewController *)self shouldUseFullSizeImageData])
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.2;
    }

    v6 = [(PUImageTileViewController *)self targetSizeUpdateRateLimiter];
    [v6 setInterval:v5];

    [(PUImageTileViewController *)self _updateImageRequesterFullSizeImageDataProperties];
  }
}

- (void)setImageLayerModulator:(id)a3
{
  v5 = a3;
  if (self->_imageLayerModulator != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_imageLayerModulator, a3);
    [(PUImageTileViewController *)self _invalidateImageLayerModulatorInput];
    v5 = v6;
  }
}

- (void)setImageModulationManager:(id)a3
{
  v5 = a3;
  if (self->_imageModulationManager != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_imageModulationManager, a3);
    [(PUImageTileViewController *)self _invalidateImageLayerModulator];
    v5 = v6;
  }
}

- (void)_setImageRequester:(id)a3
{
  v5 = a3;
  imageRequester = self->__imageRequester;
  if (imageRequester != v5)
  {
    v7 = v5;
    [(PUImageRequester *)imageRequester unregisterObserver:self];
    [(PUImageRequester *)self->__imageRequester cancelAllImageRequests];
    objc_storeStrong(&self->__imageRequester, a3);
    imageRequester = [(PUImageRequester *)self->__imageRequester registerObserver:self];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](imageRequester, v5);
}

- (void)setMediaProvider:(id)a3
{
  v5 = a3;
  if (self->_mediaProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mediaProvider, a3);
    [(PUImageTileViewController *)self _invalidate];
    v5 = v6;
  }
}

- (void)setShouldAnimateToFullQualityResult:(BOOL)a3
{
  if (self->_shouldAnimateToFullQualityResult != a3)
  {
    self->_shouldAnimateToFullQualityResult = a3;
    v5 = +[PUOneUpSettings sharedInstance];
    -[PUImageTileViewController setShouldRetainNonFinalImageUntilZoom:](self, "setShouldRetainNonFinalImageUntilZoom:", [v5 retainProxyUntilZoom]);
  }
}

- (void)_setAssetWithoutUpdateIfNeeded:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  asset = self->_asset;
  if (asset == v5)
  {
    goto LABEL_35;
  }

  v7 = asset;
  objc_storeStrong(&self->_asset, a3);
  v8 = +[PUOneUpSettings sharedInstance];
  v9 = [v8 fullQualityCrossfadeBehavior];

  if (self->_asset)
  {
    v10 = [(PUDisplayAsset *)v5 uuid];
    v11 = [(PUDisplayAsset *)v7 uuid];
    v12 = [v10 isEqualToString:v11];

    if (v12)
    {
      if (v9 == 1 || (objc_opt_respondsToSelector() & 1) != 0 && [(PUDisplayAsset *)v5 needsDeferredProcessing]&& v9 == 2)
      {
        [(PUImageTileViewController *)self setShouldAnimateToFullQualityResult:1];
      }

      v13 = v7;
      v14 = v5;
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

  if (v5 && v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && [(PUDisplayAsset *)v7 isPhotoIrisPlaceholder])
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
    v21 = [(PUDisplayAsset *)v5 modificationDate];
    v22 = 138413570;
    v23 = self;
    v24 = 2048;
    v25 = v7;
    v26 = 2112;
    v27 = v5;
    v28 = 2112;
    v29 = v21;
    v30 = 1024;
    v31 = [(PUDisplayAsset *)v5 canPlayPhotoIris];
    v32 = 1024;
    v33 = [(PUDisplayAsset *)v5 isPhotoIrisPlaceholder];
    _os_log_impl(&dword_1B36F3000, v20, OS_LOG_TYPE_DEBUG, "%@ setAsset:%p -> %@ modificationDate:%@ canPlayIris:%d isPhotoIrisPlaceholder:%d", &v22, 0x36u);
  }

  [(PUImageTileViewController *)self _updateAssetLoadingStage];
  [(PUImageTileViewController *)self assetDidChange];

LABEL_35:
}

- (void)setAsset:(id)a3
{
  if (self->_asset != a3)
  {
    [(PUImageTileViewController *)self _setAssetWithoutUpdateIfNeeded:?];
    [(PUImageTileViewController *)self _updateImageRequesterFullSizeImageDataProperties];

    [(PUImageTileViewController *)self _updateIfNeeded];
  }
}

- (void)setAssetViewModel:(id)a3
{
  v5 = a3;
  assetViewModel = self->_assetViewModel;
  if (assetViewModel != v5)
  {
    v9 = v5;
    v7 = assetViewModel;
    [(PUAssetViewModel *)v7 unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetViewModel, a3);
    [(PUAssetViewModel *)self->_assetViewModel registerChangeObserver:self];
    [(PUImageTileViewController *)self assetViewModelDidChange:v7];
    v8 = [(PUAssetViewModel *)v9 asset];

    [(PUImageTileViewController *)self setAsset:v8];
    v5 = v9;
  }
}

- (void)setBrowsingViewModel:(id)a3
{
  v5 = a3;
  browsingViewModel = self->_browsingViewModel;
  if (browsingViewModel != v5)
  {
    v8 = v5;
    v7 = browsingViewModel;
    [(PUBrowsingViewModel *)v7 unregisterChangeObserver:self];
    objc_storeStrong(&self->_browsingViewModel, a3);
    [(PUBrowsingViewModel *)self->_browsingViewModel registerChangeObserver:self];
    [(PUImageTileViewController *)self browsingViewModelDidChange:v7];

    v5 = v8;
  }
}

- (void)applyLayoutInfo:(id)a3
{
  v20.receiver = self;
  v20.super_class = PUImageTileViewController;
  v4 = a3;
  [(PUTileViewController *)&v20 applyLayoutInfo:v4];
  [v4 contentsRect];
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

  v15 = [(PUImageTileViewController *)self _imageView];
  v16 = [v15 layer];
  [v16 contentsRect];
  v17 = PXRectApproximatelyEqualToRect();

  if ((v17 & 1) == 0)
  {
    v18 = [(PUImageTileViewController *)self _imageView];
    v19 = [v18 layer];
    [v19 setContentsRect:{v6, v8, v10, v12}];
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
  v3 = [(PUTileController *)self tilingView];
  v4 = [v3 shouldDisplayHDR];

  if (v4)
  {
    v5 = [(PUImageTileViewController *)self browsingViewModel];

    if (v5)
    {
      v6 = [(PUImageTileViewController *)self browsingViewModel];
      LOBYTE(v5) = [v6 isPresentedForPreview];
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  v7 = [(PUImageTileViewController *)self suppressHighDynamicRangeDisplay];
  if ((v5 | v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  if ([(PUImageTileViewController *)self shouldRequestHDR])
  {
    v9 = [(PUTileController *)self tilingView];

    if (!v9)
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

    if (v7)
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
    v16 = [(PUImageTileViewController *)self _imageView];
    [v16 setPreferredImageDynamicRange:v8];
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
  v5 = [(UIImageView *)self->__imageView layer];
  [v5 setAllowsGroupOpacity:0];

  v6 = [(UIImageView *)self->__imageView layer];
  [v6 setAllowsGroupBlending:0];

  [(UIImageView *)self->__imageView setPreferredImageDynamicRange:0];
  v7 = +[PUOneUpSettings sharedInstance];
  v8 = [v7 useDebuggingColors];

  if (v8)
  {
    v9 = [(UIImageView *)self->__imageView layer];
    v10 = [MEMORY[0x1E69DC888] redColor];
    [v9 setBorderColor:{objc_msgSend(v10, "CGColor")}];

    [v9 setBorderWidth:2.0];
  }

  [(PUImageTileViewController *)self _invalidateShouldRequestHDR];
  [(PUImageTileViewController *)self _invalidateImage];
  [(PUImageTileViewController *)self _invalidateImageLayerModulatorManager];
  [(PUImageTileViewController *)self _invalidateImageLayerModulator];
  [(PUImageTileViewController *)self _invalidateImageLayerModulatorInput];
  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 addObserver:self selector:sel__handleShouldReloadAssetMediaNotification_ name:@"PUShouldReloadAssetMediaNotification" object:0];

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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(PUImageTileViewController *)self _cancelAllImageRequests];
  v4.receiver = self;
  v4.super_class = PUImageTileViewController;
  [(PUTileViewController *)&v4 dealloc];
}

- (void)outputEventSignaledForCoalescer:(id)a3
{
  v4 = a3;
  v5 = [(PUImageTileViewController *)self targetSizeUpdateRateLimiter];

  if (v5 == v4)
  {

    [(PUImageTileViewController *)self _updateImageRequesterTargetSize];
  }
}

- (PUImageTileViewController)initWithReuseIdentifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = PUImageTileViewController;
  v3 = [(PUTileViewController *)&v7 initWithReuseIdentifier:a3];
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