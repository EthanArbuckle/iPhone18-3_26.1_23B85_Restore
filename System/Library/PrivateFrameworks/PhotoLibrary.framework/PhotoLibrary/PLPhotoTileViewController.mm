@interface PLPhotoTileViewController
+ (BOOL)shouldShowPlaceholderForAsset:(id)a3;
+ (CGSize)tileSize;
+ (CGSize)tvOutTileSize;
+ (id)newPhotoTileViewControllerWithFrame:(CGRect)a3 image:(id)a4 allowZoomToFill:(BOOL)a5 mode:(int)a6;
+ (id)newPhotoTileViewControllerWithFrame:(CGRect)a3 imageRef:(CGImage *)a4 imageOrientation:(int64_t)a5 allowZoomToFill:(BOOL)a6 mode:(int)a7;
+ (id)newPhotoTileViewControllerWithFrame:(CGRect)a3 modelPhoto:(id)a4 mode:(int)a5;
- (BOOL)allowsEditing;
- (BOOL)isZoomedOut;
- (BOOL)photoShouldHaveAvalancheBadge;
- (BOOL)photoShouldHaveHDRBadge;
- (BOOL)tileIsOnScreen;
- (CGRect)tileFrame;
- (CGSize)scrollView:(id)a3 contentSizeForZoomScale:(double)a4 withProposedSize:(CGSize)a5;
- (NSString)description;
- (PLPhotoTileViewController)init;
- (PLPhotoTileViewController)initWithModelPhoto:(id)a3 image:(id)a4 frame:(CGRect)a5 isThumbnail:(BOOL)a6 imageOrientation:(int)a7 allowZoomToFill:(BOOL)a8 mode:(int)a9;
- (PLPhotoTileViewController)initWithModelPhoto:(id)a3 thumbnailImage:(id)a4 size:(CGSize)a5;
- (UIEdgeInsets)overlayInsets;
- (UIImage)thumbnailImage;
- (double)currentToDefaultZoomRatio;
- (double)currentToMinZoomRatio;
- (double)defaultZoomScale;
- (double)minRotatedScale;
- (float)_calculateZoomScale:(BOOL)a3 inView:(id)a4;
- (id)_newCGImageBackedUIImageFromImage:(id)a3;
- (id)_newImageForAsset:(id)a3 targetSize:(CGSize)a4 cropRect:(CGRect)a5 fullSize:(CGSize)a6;
- (id)_newOriginalImageForPickerFromCachedData;
- (id)cachingImageManager;
- (id)dictionaryWithCroppedImageForRect:(CGRect)a3 minimalCropDimension:(double)a4 withOptions:(int)a5;
- (id)image;
- (id)initForPageController;
- (id)newImageWithCropRect:(CGRect)a3 minimalCropDimension:(double)a4 croppedImageData:(id *)a5 fullScreenImageData:(id *)a6 imageCropRect:(CGRect *)a7 intersectCropWithFullRect:(BOOL)a8;
- (id)viewForZoomingInScrollView:(id)a3;
- (int64_t)_imageOrientation;
- (void)_adjustScrollViewContentOffsetForInsets;
- (void)_adjustZoomForEnteringMode:(BOOL)a3;
- (void)_centerImageInScrollView;
- (void)_configureViews;
- (void)_getFullScreenImageData:(id *)a3 forImage:(id)a4 fullSize:(CGSize)a5 imageView:(id)a6 screenScaleTransform:(CGAffineTransform *)a7;
- (void)_handleDoubleTap:(id)a3;
- (void)_handleFullSizeImageRequestResult:(id)a3 dataUTI:(id)a4 orientation:(int64_t)a5;
- (void)_installSubview:(id)a3;
- (void)_performDidEndZoomBlock;
- (void)_performRotationUpdatesWithDuration:(double)a3 size:(CGSize)a4;
- (void)_removePlaceholderView;
- (void)_requestFullSizeImage;
- (void)_resetZoomCommon;
- (void)_setCustomCenterOverlay:(id)a3;
- (void)_setDefaultZoomScale;
- (void)_setDidEndZoomingBlock:(id)a3;
- (void)_setImage:(id)a3 isThumbnail:(BOOL)a4 preserveFrame:(BOOL)a5;
- (void)_setPhoto:(id)a3;
- (void)_setupReviewCheckmark;
- (void)_teardownDispatchTimer;
- (void)_updateContentInset;
- (void)_updateModelPhotoWithImage:(id)a3;
- (void)_updatePlaceholderImageRect;
- (void)_updatePlaceholderViewAnimated:(BOOL)a3;
- (void)_updatePlaceholderVisibility;
- (void)_updateSubviewOrdering;
- (void)_updateVideoViewForModelPhoto;
- (void)_viewWillMoveToSuperView:(id)a3;
- (void)applicationDidBecomeActive:(id)a3;
- (void)applicationWillResignActive:(id)a3;
- (void)cancelFullSizeImageRequest;
- (void)dealloc;
- (void)didLoadImage;
- (void)didMoveToParentViewController:(id)a3;
- (void)ensureFullSizeImageLoaded;
- (void)forceZoomingGesturesEnabled;
- (void)hideContentView;
- (void)loadView;
- (void)noteParentViewControllerDidDisappear;
- (void)refreshTileWithFullScreenImage:(id)a3 modelPhoto:(id)a4;
- (void)reloadZoomScale;
- (void)resetZoom;
- (void)retryDownload;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5;
- (void)scrollViewDidZoom:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4;
- (void)setAllowsZoomToFill:(BOOL)a3;
- (void)setAvalancheBadgesHidden:(BOOL)a3;
- (void)setBadgeVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setClientIsWallpaper:(BOOL)a3;
- (void)setCropOverlayRect:(CGRect)a3 forCropRect:(CGRect)a4;
- (void)setFullSizeImage:(id)a3;
- (void)setOrientationDelegate:(id)a3;
- (void)setOverlayInsets:(UIEdgeInsets)a3;
- (void)setPicked:(BOOL)a3;
- (void)setReviewing:(BOOL)a3 animated:(BOOL)a4;
- (void)setShouldHideProgressIndicator:(BOOL)a3;
- (void)setTVOut:(BOOL)a3;
- (void)setTileDelegate:(id)a3;
- (void)setVideoView:(id)a3;
- (void)setZoomScale:(float)a3;
- (void)setZoomingGesturesEnabled:(BOOL)a3;
- (void)showContentView;
- (void)showErrorPlaceholderView;
- (void)updateAfterCollapse;
- (void)updateCenterOverlay;
- (void)updateForVisibleOverlays:(BOOL)a3;
- (void)updateViewConstraints;
- (void)updateZoomScales;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)zoomToScale:(double)a3 animated:(BOOL)a4 completionBlock:(id)a5;
@end

@implementation PLPhotoTileViewController

- (int64_t)_imageOrientation
{
  if ([(PLPhotoTileViewController *)self imageView])
  {
    v3 = [(PLPhotoTileViewController *)self imageOrientation];
  }

  else
  {
    v3 = 1;
  }

  return MEMORY[0x28219B570](v3);
}

- (id)_newOriginalImageForPickerFromCachedData
{
  v3 = [(PLPhotoTileViewController *)self unscaledImage];
  if (!v3)
  {
    v3 = [(PLPhotoTileViewController *)self image];
  }

  return NewUIImageFromCachedImage(v3);
}

- (UIEdgeInsets)overlayInsets
{
  top = self->_overlayInsets.top;
  left = self->_overlayInsets.left;
  bottom = self->_overlayInsets.bottom;
  right = self->_overlayInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setPicked:(BOOL)a3
{
  if (self->_picked != a3)
  {
    self->_picked = a3;
    [(PLPhotoTileViewController *)self _updateReviewCheckmark];
  }
}

- (void)setReviewing:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_reviewing != a3)
  {
    v4 = a4;
    self->_reviewing = a3;
    [(PLPhotoTileViewController *)self _setupReviewCheckmark];
    v6 = 0.0;
    if (self->_reviewing)
    {
      v6 = 1.0;
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__PLPhotoTileViewController_setReviewing_animated___block_invoke;
    v11[3] = &unk_2782A22F0;
    v11[4] = self;
    *&v11[5] = v6;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v8 = __51__PLPhotoTileViewController_setReviewing_animated___block_invoke_2;
    v9 = &unk_2782A2048;
    v10 = self;
    if (v4)
    {
      [MEMORY[0x277D75D18] animateWithDuration:v11 animations:v7 completion:0.3];
    }

    else
    {
      [(UIImageView *)self->_reviewCheckmarkImageView setAlpha:?];
      (v8)(v7, 1);
    }
  }
}

void __51__PLPhotoTileViewController_setReviewing_animated___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 1418) & 1) == 0)
  {
    [*(v1 + 1056) removeFromSuperview];

    *(*(a1 + 32) + 1056) = 0;
  }
}

- (void)_setupReviewCheckmark
{
  if (self->_reviewing && !self->_reviewCheckmarkImageView)
  {
    v3 = objc_alloc(MEMORY[0x277D755E8]);
    v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    self->_reviewCheckmarkImageView = v4;
    -[UIImageView setImage:](v4, "setImage:", [MEMORY[0x277D755B8] imageNamed:@"BlueCheckUnselected.png" inBundle:PLPhotoLibraryFrameworkBundle()]);
    -[UIImageView setHighlightedImage:](self->_reviewCheckmarkImageView, "setHighlightedImage:", [MEMORY[0x277D755B8] imageNamed:@"BlueCheckSelected.png" inBundle:PLPhotoLibraryFrameworkBundle()]);
    [(PLPhotoTileViewController *)self _updateReviewCheckmark];
    [-[PLPhotoTileViewController view](self "view")];

    [(PLPhotoTileViewController *)self _updateSubviewOrdering];
  }
}

- (void)_adjustZoomForEnteringMode:(BOOL)a3
{
  v3 = a3;
  [(PLPhotoTileViewController *)self _adjustScrollViewContentOffsetForInsets];
  if (v3)
  {
    if (![(PLPhotoTileViewController *)self isZoomedOut])
    {
      return;
    }

    [(PLPhotoTileViewController *)self updateZoomScales];
  }

  else
  {
    [(PLPhotoTileViewController *)self updateZoomScales];
    if (![(PLPhotoTileViewController *)self isZoomedOut])
    {
      return;
    }
  }

  scrollView = self->_scrollView;
  [(PLPhotoTileViewController *)self defaultZoomScale];

  [(PLImageScrollView *)scrollView setZoomScale:1 animated:?];
}

- (void)updateAfterCollapse
{
  if (self->_videoView)
  {
    [(PLExpandableImageView *)self->_imageView setVideoView:0];
    [(PLExpandableImageView *)self->_imageView setVideoView:self->_videoView];
  }

  [(PLPhotoTileViewController *)self reloadZoomScale];
  scrollView = self->_scrollView;
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);

  [(PLImageScrollView *)scrollView setContentOffset:v4, v5];
}

- (void)setAllowsZoomToFill:(BOOL)a3
{
  if (self->_allowZoomToFill != a3)
  {
    self->_allowZoomToFill = a3;
    [(PLPhotoTileViewController *)self updateZoomScales];
  }
}

- (void)updateZoomScales
{
  [(PLPhotoTileViewController *)self _calculateZoomScale:1 inView:0];
  self->_minZoomScale = v3;
  [(PLPhotoTileViewController *)self _calculateZoomScale:0 inView:0];
  ShouldZoomToFill = 0;
  self->_zoomToFillScale = v4;
  if (self->_allowZoomToFill)
  {
    ShouldZoomToFill = __ShouldZoomToFill(self, self->_minZoomScale, v4);
  }

  self->_zoomToFillInsteadOfToFit = ShouldZoomToFill;
  v6 = [(PLPhotoTileViewController *)self viewIfLoaded];
  v7 = [v6 px_screen];
  [v6 bounds];
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  if (CGRectIsEmpty(v38))
  {
    [v7 bounds];
    x = v12;
    y = v13;
    width = v14;
    height = v15;
  }

  v16 = self->_imageSize.width;
  v17 = self->_imageSize.height;
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v18 = v16 / CGRectGetWidth(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  v19 = v17 / CGRectGetHeight(v40);
  if (v18 >= v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  [v7 scale];
  v22 = v20 / v21;
  if (v22 >= 3.0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 3.0;
  }

  v24 = [(PLPhotoTileViewController *)self maxZoomScaleOverride];
  v25 = v24;
  if (v24)
  {
    [(NSNumber *)v24 doubleValue];
    v23 = v26;
  }

  if (_UIAccessibilityZoomTouchEnabled())
  {
    v27 = vmulq_f64(self->_imageSize, vdupq_n_s64(0x3F90FF9720000000uLL));
    if (v27.f64[0] < v27.f64[1])
    {
      v27.f64[0] = v27.f64[1];
    }

    if (v27.f64[0] >= v23)
    {
      v23 = v27.f64[0];
    }
  }

  if (v25)
  {
    [(NSNumber *)v25 doubleValue];
    v29 = v28;
  }

  else
  {
    v29 = 3.0;
  }

  modelPhoto = self->_modelPhoto;
  if (modelPhoto && [(PHAsset *)modelPhoto isCloudSharedAsset]&& ([(PHAsset *)self->_modelPhoto hasLargerThanThumbResourceLocal]& 1) == 0)
  {
    v23 = 1.15;
    v29 = 1.15;
  }

  doubleTapZoomScale = v29 * self->_minZoomScale;
  self->_doubleTapZoomScale = doubleTapZoomScale;
  minZoomScale = self->_minZoomScale;
  zoomToFillScale = self->_zoomToFillScale;
  if (v25 && doubleTapZoomScale < zoomToFillScale)
  {
    self->_zoomToFillScale = doubleTapZoomScale;
    zoomToFillScale = doubleTapZoomScale;
    doubleTapZoomScale = self->_doubleTapZoomScale;
  }

  v34 = v23 * minZoomScale;
  if (doubleTapZoomScale < zoomToFillScale)
  {
    self->_doubleTapZoomScale = zoomToFillScale;
    zoomToFillScale = self->_zoomToFillScale;
  }

  if (v34 < zoomToFillScale && (_UIAccessibilityZoomTouchEnabled() & 1) == 0)
  {
    v34 = self->_zoomToFillScale;
  }

  [(PLImageScrollView *)self->_scrollView setMaximumZoomScale:v34];
  scrollView = self->_scrollView;
  v36 = self->_minZoomScale;

  [(PLImageScrollView *)scrollView setMinimumZoomScale:v36];
}

- (void)reloadZoomScale
{
  [(PLPhotoTileViewController *)self updateZoomScales];

  [(PLPhotoTileViewController *)self _setDefaultZoomScale];
}

- (void)_setDefaultZoomScale
{
  if ((*(self + 1362) & 0x10) != 0)
  {
    *&v2 = self->_cropRectZoomScale;
    [(PLPhotoTileViewController *)self setZoomScale:v2];
    [(PLImageScrollView *)self->_scrollView convertRect:self->_imageView fromView:self->_cropRect.origin.x, self->_cropRect.origin.y, self->_cropRect.size.width, self->_cropRect.size.height];
    v6 = v5 - self->_cropOverlayRect.origin.x;
    v8 = v7 - self->_cropOverlayRect.origin.y;
    scrollView = self->_scrollView;

    [(PLImageScrollView *)scrollView setContentOffset:v6, v8];
  }

  else
  {
    [(PLPhotoTileViewController *)self defaultZoomScale];
    *&v4 = v4;

    [(PLPhotoTileViewController *)self setZoomScale:v4];
  }
}

- (void)setOrientationDelegate:(id)a3
{
  if (a3)
  {
    if (objc_opt_respondsToSelector())
    {
      orientationDelegate = self->_orientationDelegate;
      self->_orientationDelegate = a3;
      if (!orientationDelegate)
      {

        [(PLPhotoTileViewController *)self reloadZoomScale];
      }
    }
  }

  else
  {
    self->_orientationDelegate = 0;
  }
}

- (BOOL)isZoomedOut
{
  [(PLPhotoTileViewController *)self defaultZoomScale];
  v4 = v3;
  [(PLImageScrollView *)self->_scrollView zoomScale];
  v6 = v5;
  if (self->_useLessThanMinZoomForZoomedOutTest)
  {
    return v4 + 0.001 >= v6;
  }

  self->_useLessThanMinZoomForZoomedOutTest = 1;
  return vabds_f32(v6, v4) < 0.0001;
}

- (double)currentToDefaultZoomRatio
{
  [(PLImageScrollView *)self->_scrollView zoomScale];
  v4 = v3;
  [(PLPhotoTileViewController *)self defaultZoomScale];
  return v4 / v5;
}

- (double)currentToMinZoomRatio
{
  [(PLImageScrollView *)self->_scrollView zoomScale];
  v4 = v3;
  [(PLPhotoTileViewController *)self minZoomScale];
  return v4 / v5;
}

- (double)defaultZoomScale
{
  if (self->_zoomToFillInsteadOfToFit)
  {
    [(PLPhotoTileViewController *)self zoomToFillScale];
  }

  else
  {
    [(PLPhotoTileViewController *)self minZoomScale];
  }

  return result;
}

- (float)_calculateZoomScale:(BOOL)a3 inView:(id)a4
{
  v5 = a3;
  if (a4)
  {
    goto LABEL_2;
  }

  if ([(PLPhotoTileViewController *)self isViewLoaded])
  {
    v8 = [-[PLPhotoTileViewController view](self "view")];
    if (v8)
    {
      a4 = v8;
LABEL_2:
      v7 = 0;
      goto LABEL_10;
    }
  }

  v9 = [-[PLPhotoTileViewController view](self "view")];
  if (v9 || (v9 = [MEMORY[0x277D75DA0] keyWindow]) != 0)
  {
    a4 = v9;
  }

  else
  {
    LODWORD(v4) = 1.0;
    if ((*(self + 1361) & 2) == 0)
    {
      return *&v4;
    }

    a4 = 0;
  }

  v7 = 1;
LABEL_10:
  LODWORD(v4) = 1.0;
  if (self->_imageSize.width <= 0.0 || self->_imageSize.height <= 0.0)
  {
    return *&v4;
  }

  if ((*(self + 1361) & 2) != 0)
  {
    v11 = *&__TVOutTileSize_0;
    v13 = *&__TVOutTileSize_1;
  }

  else
  {
    [a4 bounds];
    v11 = v10;
    v13 = v12;
  }

  v14 = [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  if ([*MEMORY[0x277D76620] isStatusBarHidden])
  {
    v15 = 1;
    if (!v7)
    {
      goto LABEL_27;
    }

LABEL_25:
    if (*(self + 1361) >= 0 && !v15)
    {
      [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
      v13 = v13 - v17;
    }

    goto LABEL_27;
  }

  v15 = ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) != 1 && v14 == 1;
  if (v7)
  {
    goto LABEL_25;
  }

LABEL_27:
  v4 = v11 / self->_imageSize.width;
  if (v4 < v13 / self->_imageSize.height != v5)
  {
    v4 = v13 / self->_imageSize.height;
  }

  *&v4 = v4;
  return *&v4;
}

- (double)minRotatedScale
{
  if (!self->_allowZoomToFill || (p_minZoomScale = &self->_zoomToFillScale, (__ShouldZoomToFill(self, self->_minZoomScale, self->_zoomToFillScale) & 1) == 0))
  {
    p_minZoomScale = &self->_minZoomScale;
  }

  return *p_minZoomScale;
}

- (void)_performDidEndZoomBlock
{
  didEndZoomingBlock = self->_didEndZoomingBlock;
  if (didEndZoomingBlock)
  {
    didEndZoomingBlock[2](didEndZoomingBlock, a2);

    [(PLPhotoTileViewController *)self _setDidEndZoomingBlock:0];
  }
}

- (void)_setDidEndZoomingBlock:(id)a3
{
  didEndZoomingBlock = self->_didEndZoomingBlock;
  if (didEndZoomingBlock)
  {

    self->_didEndZoomingBlock = 0;
  }

  if (a3)
  {
    self->_didEndZoomingBlock = [a3 copy];
  }
}

- (void)zoomToScale:(double)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  scrollView = self->_scrollView;
  if (scrollView && (v8 = a4, v9 = a3, [(PLImageScrollView *)scrollView zoomScale], a3 = vabdd_f64(v10, v9), a3 >= 0.00000011920929))
  {
    [(PLPhotoTileViewController *)self _setDidEndZoomingBlock:a5];
    v12 = self->_scrollView;

    [(PLImageScrollView *)v12 setZoomScale:v8 animated:v9];
  }

  else if (a5)
  {
    v11 = *(a5 + 2);

    v11(a5, *&a3);
  }
}

- (id)dictionaryWithCroppedImageForRect:(CGRect)a3 minimalCropDimension:(double)a4 withOptions:(int)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v21 = 0;
  v22 = 0;
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  v19 = *MEMORY[0x277CBF3A0];
  v20 = v12;
  v13 = [MEMORY[0x277CBEB38] dictionary];
  if ((a5 & 8) != 0)
  {
    v14 = &v22;
  }

  else
  {
    v14 = 0;
  }

  if ((a5 & 4) != 0)
  {
    v15 = &v21;
  }

  else
  {
    v15 = 0;
  }

  v16 = [(PLPhotoTileViewController *)self newImageWithCropRect:v14 minimalCropDimension:v15 croppedImageData:&v19 fullScreenImageData:(a5 >> 4) & 1 imageCropRect:x intersectCropWithFullRect:y, width, height, a4];
  v17 = [MEMORY[0x277CCAE60] valueWithCGRect:{v19, v20}];
  [v13 setObject:v17 forKeyedSubscript:*MEMORY[0x277D3B298]];
  [v13 setObject:v16 forKeyedSubscript:*MEMORY[0x277D3B2A0]];
  [v13 setObject:v22 forKeyedSubscript:*MEMORY[0x277D3B2A8]];
  [v13 setObject:v21 forKeyedSubscript:*MEMORY[0x277D3B2B0]];

  return v13;
}

- (id)_newImageForAsset:(id)a3 targetSize:(CGSize)a4 cropRect:(CGRect)a5 fullSize:(CGSize)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a4.height;
  v11 = a4.width;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3052000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  memset(&v24, 0, sizeof(v24));
  CGAffineTransformMakeScale(&v24, 1.0 / a6.width, 1.0 / a6.height);
  v23 = v24;
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v32 = CGRectApplyAffineTransform(v31, &v23);
  v13 = v32.size.width;
  v14 = v32.size.height;
  if (v32.origin.x >= 0.0)
  {
    v15 = v32.origin.x;
  }

  else
  {
    v15 = 0.0;
  }

  if (v32.origin.y >= 0.0)
  {
    v16 = v32.origin.y;
  }

  else
  {
    v16 = 0.0;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = objc_alloc_init(MEMORY[0x277CD98A0]);
  [v18 setSynchronous:1];
  [v18 setNormalizedCropRect:{v15, v16, fmin(v13, 1.0), fmin(v14, 1.0)}];
  [v18 setResizeMode:2];
  v19 = [MEMORY[0x277CD9898] defaultManager];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __76__PLPhotoTileViewController__newImageForAsset_targetSize_cropRect_fullSize___block_invoke;
  v22[3] = &unk_2782A1BB8;
  v22[4] = &v25;
  [v19 requestImageForAsset:a3 targetSize:0 contentMode:v18 options:v22 resultHandler:{v11, v10}];

  objc_autoreleasePoolPop(v17);
  v20 = v26[5];
  _Block_object_dispose(&v25, 8);
  return v20;
}

id __76__PLPhotoTileViewController__newImageForAsset_targetSize_cropRect_fullSize___block_invoke(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (void)_getFullScreenImageData:(id *)a3 forImage:(id)a4 fullSize:(CGSize)a5 imageView:(id)a6 screenScaleTransform:(CGAffineTransform *)a7
{
  if (-[PLPhotoTileViewController _clientIsWallpaper](self, "_clientIsWallpaper") || ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) != 1 || *(self + 1361) < 0)
  {
    v17 = *MEMORY[0x277CBF3A0];
    v14 = *(MEMORY[0x277CBF3A0] + 8);
    [-[PLPhotoTileViewController view](self "view")];
    width = v20;
    height = v21;
  }

  else
  {
    [-[PLPhotoTileViewController view](self "view")];
    v14 = rint((v12 + v13 + -480.0) * 0.5);
    [-[PLPhotoTileViewController view](self "view")];
    v17 = rint((v15 + v16 + -320.0) * 0.5);
    width = 320.0;
    height = 480.0;
  }

  [a6 convertRect:-[PLPhotoTileViewController view](self fromView:{"view"), v17, v14, width, height}];
  x = PLIntegralRect(v22, v23, v24, v25);
  y = v27;
  v30 = v29;
  v32 = v31;
  if ((dyld_program_sdk_at_least() & 1) != 0 || [(PLPhotoTileViewController *)self forceNativeScreenScale])
  {
    v33 = *&a7->c;
    *&v49.a = *&a7->a;
    *&v49.c = v33;
    *&v49.tx = *&a7->tx;
    v34 = v17;
    *&v33 = v14;
    v35 = width;
    v36 = height;
    v50 = CGRectApplyAffineTransform(*(&v33 - 8), &v49);
    width = v50.size.width;
    height = v50.size.height;
  }

  v37 = a5.width;
  v38 = a5.height;
  if (v30 > a5.width || v32 > a5.height)
  {
    v40 = a5.width / v30;
    if (a5.width / v30 >= a5.height / v32)
    {
      v40 = a5.height / v32;
    }

    if (v30 * v40 < a5.width)
    {
      v37 = v30 * v40;
    }

    v41 = v32 * v40;
    if (v41 < a5.height)
    {
      v38 = v41;
    }

    v42 = x + (v30 - v37) * 0.5;
    v43 = y + (v32 - v38) * 0.5;
    v51 = CGRectIntegral(*(&v37 - 2));
    x = v51.origin.x;
    y = v51.origin.y;
    v30 = v51.size.width;
    v32 = v51.size.height;
  }

  v44 = 0.0;
  v45 = 0.0;
  if (x >= 0.0)
  {
    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = v30;
    v52.size.height = v32;
    if (CGRectGetMaxX(v52) <= a5.width)
    {
      v45 = x;
    }

    else
    {
      v53.origin.x = x;
      v53.origin.y = y;
      v53.size.width = v30;
      v53.size.height = v32;
      v45 = x - (CGRectGetMaxX(v53) - a5.width);
    }
  }

  if (y >= 0.0)
  {
    v54.origin.x = v45;
    v54.origin.y = y;
    v54.size.width = v30;
    v54.size.height = v32;
    if (CGRectGetMaxY(v54) <= a5.height)
    {
      v44 = y;
      if (a4)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }

    v55.origin.x = v45;
    v55.origin.y = y;
    v55.size.width = v30;
    v55.size.height = v32;
    v44 = y - (CGRectGetMaxY(v55) - a5.height);
  }

  if (a4)
  {
LABEL_28:
    v46 = PLCreateCroppedImageFromImage();
    goto LABEL_31;
  }

LABEL_30:
  v46 = [(PLPhotoTileViewController *)self _newImageForAsset:[(PLPhotoTileViewController *)self photo] targetSize:width cropRect:height fullSize:v45, v44, v30, v32, a5.width, a5.height];
LABEL_31:
  v47 = v46;
  if (v46)
  {
    [v46 CGImage];
    *a3 = imageDataFromImageWithFormat();
  }
}

- (id)newImageWithCropRect:(CGRect)a3 minimalCropDimension:(double)a4 croppedImageData:(id *)a5 fullScreenImageData:(id *)a6 imageCropRect:(CGRect *)a7 intersectCropWithFullRect:(BOOL)a8
{
  v8 = a8;
  v13 = PLIntegralRect(a3.origin.x, a3.origin.y, a3.size.width, a3.size.height);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(PLPhotoTileViewController *)self imageView];
  v21 = [(PLPhotoTileViewController *)self image];
  [v21 size];
  v49 = v23;
  v50 = v22;
  if ([(UIViewController *)self uiipc_imagePickerController])
  {
    v24 = [(PLPhotoTileViewController *)self _newCGImageBackedUIImageFromImage:v21];
  }

  else
  {
    v24 = 0;
  }

  PLPhysicalScreenScale();
  *&v25 = v25;
  memset(&v52, 0, sizeof(v52));
  CGAffineTransformMakeScale(&v52, *&v25, *&v25);
  v46 = v15;
  v47 = v13;
  [v20 convertRect:-[PLPhotoTileViewController scrollView](self fromView:{"scrollView"), v13, v15, v17, v19}];
  v54 = CGRectIntegral(v53);
  x = v54.origin.x;
  y = v54.origin.y;
  width = v54.size.width;
  height = v54.size.height;
  if (v8)
  {
    [v20 bounds];
    v59.origin.x = v30;
    v59.origin.y = v31;
    v59.size.width = v32;
    v59.size.height = v33;
    v55.origin.x = x;
    v55.origin.y = y;
    v55.size.width = width;
    v55.size.height = height;
    v56 = CGRectIntersection(v55, v59);
    x = v56.origin.x;
    y = v56.origin.y;
    v34 = v56.size.width;
    v35 = v56.size.height;
    if (width != v56.size.width || height != v56.size.height)
    {
      v17 = floor(v17 * (v56.size.width / width));
      v19 = floor(v19 * (v56.size.height / height));
    }
  }

  else
  {
    v35 = v54.size.height;
    v34 = v54.size.width;
  }

  v36 = y;
  v37 = x;
  if (![(PLPhotoTileViewController *)self force1XCroppedImage]&& ((dyld_program_sdk_at_least() & 1) != 0 || [(PLPhotoTileViewController *)self forceNativeScreenScale]))
  {
    v51 = v52;
    v57.origin.y = v46;
    v57.origin.x = v47;
    v57.size.width = v17;
    v57.size.height = v19;
    v58 = CGRectApplyAffineTransform(v57, &v51);
    PLIntegralRect(v58.origin.x, v58.origin.y, v58.size.width, v58.size.height);
    v17 = v38;
    v19 = v39;
  }

  a7->origin.x = x;
  a7->origin.y = y;
  a7->size.width = v34;
  a7->size.height = v35;
  if (a6)
  {
    v51 = v52;
    [(PLPhotoTileViewController *)self _getFullScreenImageData:a6 forImage:v24 fullSize:v20 imageView:&v51 screenScaleTransform:v50, v49];
  }

  v40 = a4;
  if (a4 <= 0.0 || v17 >= a4 || v19 >= a4)
  {
    goto LABEL_31;
  }

  if (v34 < v35)
  {
    if (v35 > v19)
    {
      if (v35 <= a4)
      {
        v41 = v35;
      }

      else
      {
        v41 = a4;
      }

      if (v17 == v19)
      {
        v42 = v41;
      }

      else
      {
        v40 = v17 * (v41 / v19);
        v42 = floor(v40);
      }

      goto LABEL_32;
    }

LABEL_31:
    v42 = v17;
    v41 = v19;
    goto LABEL_32;
  }

  if (v34 <= v17)
  {
    goto LABEL_31;
  }

  if (v34 <= a4)
  {
    v42 = v34;
  }

  else
  {
    v42 = a4;
  }

  if (v17 == v19)
  {
    v41 = v42;
  }

  else
  {
    v40 = v19 * (v42 / v17);
    v41 = floor(v40);
  }

LABEL_32:
  if (v24)
  {
    v43 = PLCreateCroppedImageFromImage();
  }

  else
  {
    v43 = [(PLPhotoTileViewController *)self _newImageForAsset:[(PLPhotoTileViewController *)self photo] targetSize:v42 cropRect:v41 fullSize:v37, v36, v34, v35, v50, v49];
  }

  v44 = v43;
  if (a5 && v43)
  {
    [v43 CGImage];
    *a5 = imageDataFromImageWithFormat();
  }

  if (v24)
  {
  }

  return v44;
}

- (void)_handleDoubleTap:(id)a3
{
  videoView = self->_videoView;
  if (videoView)
  {
    [(PLVideoView *)videoView handleDoubleTap];
    goto LABEL_9;
  }

  if ([(PLImageScrollView *)self->_scrollView isUserInteractionEnabled])
  {
    *(self + 1361) |= 8u;
    *(self + 1361) |= 0x20u;
    if ([(PLPhotoTileViewController *)self _clientIsWallpaper])
    {
      self->_userDidAdjustWallpaper = !self->_zoomToFillInsteadOfToFit;
      self->_zoomToFillInsteadOfToFit ^= 1u;
      scrollView = self->_scrollView;
      [(PLPhotoTileViewController *)self defaultZoomScale];
      v8 = scrollView;
LABEL_8:
      [(PLImageScrollView *)v8 setZoomScale:1 animated:v7];
      goto LABEL_9;
    }

    [(PLPhotoTileViewController *)self defaultZoomScale];
    v10 = v9;
    [(PLImageScrollView *)self->_scrollView zoomScale];
    *&v11 = v11;
    if (v10 != *&v11)
    {
      v8 = self->_scrollView;
      v7 = v10;
      goto LABEL_8;
    }

    doubleTapZoomScale = self->_doubleTapZoomScale;
    [a3 locationInView:self->_imageView];
    v14 = v13;
    v16 = v15;
    [(PLExpandableImageView *)self->_imageView frame];
    [(PLImageScrollView *)self->_scrollView zoomToRect:1 animated:v14 - v17 / doubleTapZoomScale * 0.5, v16 - v18 / doubleTapZoomScale * 0.5];
  }

LABEL_9:
  [(PLPhotoTileViewControllerDelegate *)self->_tileDelegate photoTileViewControllerDoubleTap:self];

  [(PLPhotoTileViewController *)self _updatePlaceholderImageRect];
}

- (void)_handleFullSizeImageRequestResult:(id)a3 dataUTI:(id)a4 orientation:(int64_t)a5
{
  if (a4 && (v7 = [MEMORY[0x277CE1CB8] typeWithIdentifier:a4], v8 = objc_msgSend(v7, "conformsToType:", *MEMORY[0x277CE1DC0]), a3) && v8)
  {
    [(PHAsset *)self->_modelPhoto localIdentifier];
    dispatch_get_global_queue(0, 0);
    pl_dispatch_async();
  }

  else
  {
    modelPhoto = self->_modelPhoto;
    if (modelPhoto)
    {
      v10 = [(PHAsset *)modelPhoto complete]^ 1;
    }

    else
    {
      v10 = 0;
    }

    if (self->_tileDelegate && (v10 & 1) == 0 && (*(self + 1362) & 8) == 0)
    {
      *(self + 1362) |= 8u;
      tileDelegate = self->_tileDelegate;

      [(PLPhotoTileViewControllerDelegate *)tileDelegate photoTileViewControllerRequestsFullSizeImage:self];
    }
  }
}

uint64_t __83__PLPhotoTileViewController__handleFullSizeImageRequestResult_dataUTI_orientation___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 1016) pixelWidth];
  v3 = [*(*(a1 + 32) + 1016) pixelHeight];
  v4 = *(a1 + 56);
  PLGetOrientationAndUntransformedSizeFromImageData();
  PLOrientationTransformImageSize();
  v6 = v5;
  v8 = v7;
  v9 = PLImageOrientationFromExifOrientation();
  v10 = v9;
  if (v6 != v2 || v8 != v3 || v9 != v4)
  {
    Log = PLPhotoKitGetLog();
    if (os_log_type_enabled(Log, OS_LOG_TYPE_ERROR))
    {
      v14 = *(*(a1 + 32) + 1016);
      *buf = 138413826;
      v17 = v14;
      v18 = 2048;
      v19 = v2;
      v20 = 2048;
      v21 = v3;
      v22 = 2048;
      v23 = v4;
      v24 = 2048;
      v25 = v6;
      v26 = 2048;
      v27 = v8;
      v28 = 2048;
      v29 = v10;
      _os_log_impl(&dword_21ACCD000, Log, OS_LOG_TYPE_ERROR, "Mis-matched image size and/or orientation for asset %@. PhotoKit: %.0f x %.0f (%ld). Data: %.0f x %.0f (%ld)", buf, 0x48u);
    }
  }

  return pl_dispatch_async();
}

uint64_t __83__PLPhotoTileViewController__handleFullSizeImageRequestResult_dataUTI_orientation___block_invoke_82(uint64_t a1)
{
  result = [*(a1 + 40) isEqualToString:{objc_msgSend(*(*(a1 + 32) + 1016), "localIdentifier")}];
  if (result)
  {
    v3 = *(*(a1 + 32) + 1032);
    v4 = *(a1 + 48);
    v5 = *(a1 + 72);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);

    return [v3 setFullSizeImageJPEGData:v4 size:v5 orientation:{v6, v7}];
  }

  return result;
}

- (void)_requestFullSizeImage
{
  if (!self->_fullSizeImageRequestID)
  {
    if (self->_modelPhoto)
    {
      v3 = objc_opt_new();
      [v3 setDeliveryMode:1];
      [v3 setLoadingMode:1];
      [v3 setNetworkAccessAllowed:1];
      v4 = [(PLPhotoTileViewController *)self cachingImageManager];
      modelPhoto = self->_modelPhoto;
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __50__PLPhotoTileViewController__requestFullSizeImage__block_invoke;
      v6[3] = &unk_2782A1B40;
      v6[4] = self;
      self->_fullSizeImageRequestID = [v4 requestImageDataAndOrientationForAsset:modelPhoto options:v3 resultHandler:v6];
    }
  }
}

uint64_t __50__PLPhotoTileViewController__requestFullSizeImage__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = PLImageOrientationFromExifOrientation();

  return [v5 _handleFullSizeImageRequestResult:a2 dataUTI:a3 orientation:v6];
}

- (void)ensureFullSizeImageLoaded
{
  if (!self->_isLoadingFullSizeImage)
  {
    modelPhoto = self->_modelPhoto;
    if (modelPhoto)
    {
      v4 = [(PHAsset *)modelPhoto complete]^ 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }

    if (self->_tileDelegate && !(((*(self + 1361) & 1) == 0) | v4 & 1))
    {
      self->_isLoadingFullSizeImage = 1;
      tileDelegate = self->_tileDelegate;

      [(PLPhotoTileViewControllerDelegate *)tileDelegate photoTileViewControllerRequestsFullScreenImage:self];
    }
  }
}

- (void)applicationDidBecomeActive:(id)a3
{
  if (self->_dispatchTimer)
  {
    v4 = dispatch_time(0, ((5.0 - self->_dispatchTimeElapsed) * 1000000000.0));
    dispatchTimer = self->_dispatchTimer;

    dispatch_source_set_timer(dispatchTimer, v4, 0xFFFFFFFFFFFFFFFFLL, 0x2540BE400uLL);
  }
}

- (void)applicationWillResignActive:(id)a3
{
  if (self->_dispatchTimer)
  {
    self->_dispatchTimeElapsed = CFAbsoluteTimeGetCurrent() - self->_dispatchStartTime;
    dispatchTimer = self->_dispatchTimer;

    dispatch_source_set_timer(dispatchTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x2540BE400uLL);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v12.receiver = self;
  v12.super_class = PLPhotoTileViewController;
  [(PLPhotoTileViewController *)&v12 viewDidAppear:?];
  *(self + 1362) |= 2u;
  if (*(self + 1361) < 0)
  {
    [(PLPhotoTileViewController *)self setZoomingGesturesEnabled:1];
  }

  [(PLVideoView *)self->_videoView viewDidAppear];
  [(PLPhotoTileViewControllerDelegate *)self->_tileDelegate photoTileViewController:self didAppear:v3];
  [(PLTilePlaceholderView *)self->_placeholderView showLoadingIndicatorWhenReady];
  if (!self->_dispatchTimer)
  {
    self->_dispatchTimer = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    objc_initWeak(&location, self);
    v9 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v10, &location);
    pl_dispatch_source_set_event_handler();
    v5 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(self->_dispatchTimer, v5, 0xFFFFFFFFFFFFFFFFLL, 0x2540BE400uLL);
    self->_dispatchStartTime = CFAbsoluteTimeGetCurrent();
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = MEMORY[0x277D76620];
    [v6 addObserver:self selector:sel_applicationWillResignActive_ name:*MEMORY[0x277D76768] object:*MEMORY[0x277D76620]];
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:*v7];
    dispatch_resume(self->_dispatchTimer);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  self->_hasNotedZoom = 0;
}

id *__43__PLPhotoTileViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    v2 = result;
    if ((*(result + 1362) & 2) != 0)
    {
      [result[127] uuid];
    }

    return [v2 _teardownDispatchTimer];
  }

  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PLPhotoTileViewController;
  [(PLPhotoTileViewController *)&v6 viewWillAppear:?];
  v5 = 1;
  if (!a3)
  {
    if (*(self + 1361) < 0 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v5 = [(PLPhotoTileViewControllerDelegate *)self->_tileDelegate isPhotoTileParentPageControllerAnimating:self];
    }

    else
    {
      v5 = 0;
    }
  }

  self->_shouldUpdateBadgeViewOptimalLayout = 1;
  *(self + 1362) |= 4u;
  [(PLVideoView *)self->_videoView viewWillAppear:v5];
  if (*(self + 1361) < 0)
  {
    [(PLPhotoTileViewController *)self _setDefaultZoomScale];
    [(PLExpandableImageView *)self->_imageView setBorderAndAccessoriesVisible:0];
    [(PLPhotoTileViewControllerDelegate *)self->_tileDelegate photoTileViewController:self willAppear:v5];
    [(PLPhotoTileViewController *)self setZoomingGesturesEnabled:0];
  }

  else
  {
    [(PLPhotoTileViewController *)self reloadZoomScale];
  }
}

- (void)resetZoom
{
  [(PLPhotoTileViewController *)self _resetZoomCommon];
  v3 = [(PLPhotoTileViewController *)self view];

  [v3 layoutBelowIfNeeded];
}

- (void)updateViewConstraints
{
  v6.receiver = self;
  v6.super_class = PLPhotoTileViewController;
  [(PLPhotoTileViewController *)&v6 updateViewConstraints];
  v3 = [(PLPhotoTileViewController *)self _customCenterOverlay];
  if (v3)
  {
    if (!self->_customCenterOverlayConstraints)
    {
      v4 = v3;
      v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
      -[NSArray addObject:](v5, "addObject:", [MEMORY[0x277CCAAD0] constraintWithItem:v4 attribute:9 relatedBy:0 toItem:-[PLPhotoTileViewController view](self attribute:"view") multiplier:9 constant:{1.0, 0.0}]);
      -[NSArray addObject:](v5, "addObject:", [MEMORY[0x277CCAAD0] constraintWithItem:v4 attribute:10 relatedBy:0 toItem:-[PLPhotoTileViewController view](self attribute:"view") multiplier:10 constant:{1.0, 0.0}]);
      [-[PLPhotoTileViewController view](self "view")];
      self->_customCenterOverlayConstraints = v5;
    }
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = PLPhotoTileViewController;
  [(PLPhotoTileViewController *)&v5 didMoveToParentViewController:?];
  NSClassFromString(&cfstr_Camimagepicker.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  if (*(self + 1361) & 0x80000000) == 0 && (isKindOfClass)
  {
    [(PLPhotoTileViewController *)self updateZoomScales];
    [(PLPhotoTileViewController *)self _setDefaultZoomScale];
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = PLPhotoTileViewController;
  [(PLPhotoTileViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(PLPhotoTileViewController *)self _updateContentInset];
}

- (void)viewDidLayoutSubviews
{
  *&rect.origin.y = self;
  *&rect.size.width = PLPhotoTileViewController;
  [(CGFloat *)&rect.origin.y viewDidLayoutSubviews];
  [(PLPhotoTileViewController *)self _resetZoomCommon];
  [(UIImageView *)self->_reviewCheckmarkImageView sizeToFit];
  [(PLExpandableImageView *)self->_imageView frame];
  v4 = v3;
  rect.origin.x = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIImageView *)self->_reviewCheckmarkImageView bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  Width = CGRectGetWidth(v23);
  v24.origin.x = v12;
  v24.origin.y = v14;
  v24.size.width = v16;
  v24.size.height = v18;
  v20 = floor((Width - CGRectGetWidth(v24)) * 0.5);
  v25.origin.x = rect.origin.x;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  MaxY = CGRectGetMaxY(v25);
  v26.origin.x = v12;
  v26.origin.y = v14;
  v26.size.width = v16;
  v26.size.height = v18;
  [(UIImageView *)self->_reviewCheckmarkImageView setFrame:v20, MaxY - CGRectGetHeight(v26) + -15.0, v16, v18];
  [(PLPhotoTileViewController *)self _repositionBadgeView];
  if ((*(self + 1362) & 2) == 0 && CGRectEqualToRect(self->_cropRect, *MEMORY[0x277CBF3A0]))
  {
    [(PLPhotoTileViewController *)self _centerImageInScrollView];
  }
}

- (void)_viewWillMoveToSuperView:(id)a3
{
  if (a3)
  {
    [a3 bounds];
    [-[PLPhotoTileViewController view](self "view")];

    [(PLPhotoTileViewController *)self _updateContentInset];
  }
}

- (void)_resetZoomCommon
{
  if ((*(self + 1362) & 2) == 0 && self->_image && (*(self + 1361) < 0 || self->_mode == 1))
  {
    [(PLPhotoTileViewController *)self reloadZoomScale];
  }
}

- (void)_performRotationUpdatesWithDuration:(double)a3 size:(CGSize)a4
{
  if ((*(self + 1361) & 2) != 0)
  {
    return;
  }

  imageView = self->_imageView;
  videoView = self->_videoView;
  if (imageView)
  {
    if (!videoView)
    {
      [(PLPhotoTileViewController *)self defaultZoomScale:a3];
      v8 = v7;
      [(PLImageScrollView *)self->_scrollView zoomScale];
      v10 = v9;
      if (v10 >= v8)
      {
        v11 = v10;
      }

      else
      {
        v11 = v8;
      }

      [(PLExpandableImageView *)self->_imageView frame];
      if (*(self + 1361) < 0 && (v13 = v12, ![(PLPhotoTileViewController *)self _clientIsWallpaper]) && (v11 == v8 || (v18 = v13, [(PLImageScrollView *)self->_scrollView bounds], v19 > v18)))
      {
        [(PLPhotoTileViewController *)self updateZoomScales];
        [(PLPhotoTileViewController *)self minRotatedScale];
        v15 = v20;
      }

      else
      {
        v15 = v11;
        if (![(PLPhotoTileViewController *)self _clientIsWallpaper])
        {
          goto LABEL_25;
        }

        v15 = v11;
        if (*(self + 1361))
        {
          goto LABEL_25;
        }

        v15 = v11;
        if (self->_userDidAdjustWallpaper)
        {
          goto LABEL_25;
        }

        [(PLPhotoTileViewController *)self _calculateZoomScale:0 inView:self->_scrollView];
        v15 = v16;
      }

      [(PLImageScrollView *)self->_scrollView setAdjustZoomScaleAfterRotation:1];
LABEL_25:
      v21 = *(self + 1361);
      *&v14 = v15;
      [(PLPhotoTileViewController *)self setZoomScale:v14];
      if (v15 == v11)
      {
        *(self + 1361) = *(self + 1361) & 0xDF | v21 & 0x20;
      }

      if ((*(self + 1361) & 0x80000000) == 0 || [(PLPhotoTileViewController *)self _clientIsWallpaper])
      {
        [(PLPhotoTileViewController *)self _centerImageInScrollView];
      }

      if (!self->_mode)
      {
        [(PLPhotoTileViewController *)self _repositionBadgeView];
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (videoView)
  {
LABEL_14:
    [(PLVideoView *)videoView updateForRotationWithDuration:a4.width > a4.height isLandscape:a3];
  }

LABEL_15:
  [(PLPhotoTileViewController *)self updateZoomScales:a3];
  if (self->_videoView && self->_scrollView)
  {
    [(PLPhotoTileViewController *)self defaultZoomScale];
    *&v17 = v17;

    [(PLPhotoTileViewController *)self setZoomScale:v17];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v15.receiver = self;
  v15.super_class = PLPhotoTileViewController;
  [PLPhotoTileViewController viewWillTransitionToSize:sel_viewWillTransitionToSize_withTransitionCoordinator_ withTransitionCoordinator:?];
  if (![(PLPhotoTileViewController *)self shouldSupressViewWillTransitionToSize])
  {
    if (a4)
    {
      [a4 targetTransform];
    }

    else
    {
      memset(&v14, 0, sizeof(v14));
    }

    if (CGAffineTransformIsIdentity(&v14))
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __80__PLPhotoTileViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
      v13[3] = &unk_2782A1AC8;
      v13[4] = self;
      v8 = v13;
      v9 = a4;
      v10 = 0;
    }

    else
    {
      self->_shouldUpdateBadgeViewOptimalLayout = 1;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __80__PLPhotoTileViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
      v12[3] = &unk_2782A1AF0;
      v12[4] = self;
      *&v12[5] = width;
      *&v12[6] = height;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __80__PLPhotoTileViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3;
      v11[3] = &unk_2782A1AC8;
      v11[4] = self;
      v8 = v12;
      v10 = v11;
      v9 = a4;
    }

    [v9 animateAlongsideTransition:v8 completion:v10];
  }
}

uint64_t __80__PLPhotoTileViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1024) zoomScale];
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = v4[156];
  v6 = v4[157];
  [v4 updateZoomScales];
  v7 = *(a1 + 32);
  if (v7[1152])
  {
    v8 = 1256;
  }

  else
  {
    v8 = 1248;
  }

  if (v7[1152])
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  v10 = v3 * (*&v7[v8] / v9);
  *&v10 = v10;
  [v7 setZoomScale:v10];
  v11 = *(*(a1 + 32) + 1040);

  return [v11 updateScaleMode];
}

uint64_t __80__PLPhotoTileViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 transitionDuration];

  return [v2 _performRotationUpdatesWithDuration:? size:?];
}

uint64_t __80__PLPhotoTileViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 1361) & 2) == 0)
  {
    return [*(v1 + 1024) setAdjustZoomScaleAfterRotation:0];
  }

  return result;
}

- (id)viewForZoomingInScrollView:(id)a3
{
  if ([(PLPhotoTileViewController *)self view]== a3)
  {
    return 0;
  }

  else
  {
    return self->_imageView;
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  [(PLPhotoTileViewControllerDelegate *)self->_tileDelegate photoTileViewControllerDidEndGesture:self];
  if (self->_scrollView == a3)
  {
    if ([(PLPhotoTileViewController *)self _clientIsWallpaper])
    {
      [a3 visibleBounds];
      v10.origin.x = v5;
      v10.origin.y = v6;
      v10.size.width = v7;
      v10.size.height = v8;
      if (!CGRectEqualToRect(self->_cropRectBeforeDragging, v10))
      {
        self->_userDidAdjustWallpaper = 1;
      }
    }

    if ((*(self + 1361) & 4) == 0)
    {
      [(PLPhotoTileViewController *)self _updatePlaceholderImageRect];
    }

    [(PLPhotoTileViewController *)self _updatePlaceholderVisibility];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(PLPhotoTileViewControllerDelegate *)self->_tileDelegate photoTileViewControllerDidEndGesture:self];
    if (self->_scrollView == a3)
    {
      if ([(PLPhotoTileViewController *)self _clientIsWallpaper])
      {
        [a3 visibleBounds];
        v11.origin.x = v6;
        v11.origin.y = v7;
        v11.size.width = v8;
        v11.size.height = v9;
        if (!CGRectEqualToRect(self->_cropRectBeforeDragging, v11))
        {
          self->_userDidAdjustWallpaper = 1;
        }
      }

      if ((*(self + 1361) & 4) == 0)
      {
        [(PLPhotoTileViewController *)self _updatePlaceholderImageRect];
      }

      [(PLPhotoTileViewController *)self _updatePlaceholderVisibility];
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  if (self->_scrollView == a3)
  {
    [(PLPhotoTileViewController *)self _updatePlaceholderVisibility];
    if ([(PLPhotoTileViewController *)self _clientIsWallpaper])
    {
      [a3 visibleBounds];
      self->_cropRectBeforeDragging.origin.x = v5;
      self->_cropRectBeforeDragging.origin.y = v6;
      self->_cropRectBeforeDragging.size.width = v7;
      self->_cropRectBeforeDragging.size.height = v8;
    }
  }

  tileDelegate = self->_tileDelegate;

  [(PLPhotoTileViewControllerDelegate *)tileDelegate photoTileViewControllerWillBeginGesture:self];
}

- (void)scrollViewDidZoom:(id)a3
{
  if ((*(self + 1361) & 4) != 0 && (*(self + 1361) & 0x40) == 0)
  {
    *(self + 1361) |= 0x20u;
    [(PLImageScrollView *)self->_scrollView zoomScale];
    v5 = v4;
    [(PLPhotoTileViewController *)self defaultZoomScale];
    *&v6 = v5 / v6;
    if (*&v6 > 1.0)
    {
      [(PLPhotoTileViewController *)self _requestFullSizeImage];
    }

    if (self->_badgeViewOptimalLayoutLowestTop != 0.0)
    {

      [(PLPhotoTileViewController *)self _repositionBadgeView];
    }
  }
}

- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5
{
  if (self->_scrollView == a3)
  {
    if ([(PLPhotoTileViewController *)self _clientIsWallpaper])
    {
      if ((*(self + 1361) & 0x40) == 0)
      {
        zoomScaleBeforeZooming = self->_zoomScaleBeforeZooming;
        [a3 zoomScale];
        if (v8 != zoomScaleBeforeZooming)
        {
          self->_userDidAdjustWallpaper = 1;
        }
      }

      if ((*(self + 1361) & 0x40) != 0)
      {
        *(self + 1361) &= ~0x40u;
      }

      [(PLPhotoTileViewController *)self _updateContentInset];
    }

    *(self + 1361) &= ~4u;
    *(self + 1361) &= ~8u;
    [(PLPhotoTileViewControllerDelegate *)self->_tileDelegate photoTileViewControllerDidEndGesture:self];
    pendingImage = self->_pendingImage;
    if (pendingImage)
    {
      [(PLPhotoTileViewController *)self _setImage:pendingImage isThumbnail:0 preserveFrame:0];

      self->_pendingImage = 0;
    }

    [(PLPhotoTileViewController *)self _performDidEndZoomBlock];
    if (([(PLImageScrollView *)self->_scrollView isDragging]& 1) == 0)
    {
      [(PLPhotoTileViewController *)self _updatePlaceholderImageRect];
    }

    [(PLPhotoTileViewController *)self _updatePlaceholderVisibility];
  }
}

- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4
{
  self->_shouldUpdateBadgeViewOptimalLayout = 0;
  if (self->_scrollView == a3)
  {
    [(PLPhotoTileViewController *)self _updatePlaceholderVisibility];
    if ([(PLPhotoTileViewController *)self _clientIsWallpaper])
    {
      [a3 zoomScale];
      *&v6 = v6;
      self->_zoomScaleBeforeZooming = *&v6;
    }

    *(self + 1361) |= 4u;
    [(PLPhotoTileViewControllerDelegate *)self->_tileDelegate photoTileViewControllerWillBeginGesture:self];
    if (!self->_hasNotedZoom)
    {
      self->_hasNotedZoom = 1;
    }
  }
}

- (CGSize)scrollView:(id)a3 contentSizeForZoomScale:(double)a4 withProposedSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  if (*(self + 1361) < 0 && ![(PLPhotoTileViewController *)self _clientIsWallpaper]&& ([(PLPhotoTileViewController *)self defaultZoomScale], v10 >= a4))
  {
    [a3 bounds];
    v16 = v15;
    v18 = v17;
    [-[PLPhotoTileViewController viewForZoomingInScrollView:](self viewForZoomingInScrollView:{a3), "frame"}];
    if (v16 >= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v16;
    }

    v22 = v21;
    v12 = rintf(v22);
    if (v18 >= v20)
    {
      height = v20;
    }

    else
    {
      height = v18;
    }
  }

  else
  {
    v11 = width;
    v12 = rintf(v11);
  }

  if ((*(self + 1361) & 4) == 0 && (*(self + 1361) & 0x40) == 0 && ((*(self + 1361) & 0x80000000) == 0 && CGRectEqualToRect(self->_cropRect, *MEMORY[0x277CBF3A0]) || [(PLPhotoTileViewController *)self allowsEditing]))
  {
    [(PLPhotoTileViewController *)self _centerImageInScrollView];
  }

  v13 = rint(height);
  v14 = v12;
  result.height = v13;
  result.width = v14;
  return result;
}

- (void)noteParentViewControllerDidDisappear
{
  if ((*(self + 1362) & 2) != 0)
  {
    [(PLPhotoTileViewController *)self viewDidDisappear:0];
  }
}

- (void)updateForVisibleOverlays:(BOOL)a3
{
  v3 = a3;
  [(PLPhotoTileViewController *)self setBadgeVisible:?];
  placeholderView = self->_placeholderView;

  [(PLTilePlaceholderView *)placeholderView setToolbarVisible:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = PLPhotoTileViewController;
  [(PLPhotoTileViewController *)&v5 viewDidDisappear:?];
  *(self + 1362) &= ~2u;
  *(self + 1362) &= ~4u;
  if (*(self + 1361) < 0)
  {
    [(PLPhotoTileViewController *)self setZoomingGesturesEnabled:0];
  }

  [(PLVideoView *)self->_videoView viewDidDisappear];
  if (![(PLPhotoTileViewController *)self tileIsOnScreen])
  {
    [(PLPhotoTileViewController *)self _setDefaultZoomScale];
    [(PLPhotoTileViewControllerDelegate *)self->_tileDelegate photoTileViewController:self didDisappear:v3];
  }

  [(PLPhotoTileViewController *)self _teardownDispatchTimer];
}

- (void)loadView
{
  x = self->_tileFrame.origin.x;
  y = self->_tileFrame.origin.y;
  width = self->_tileFrame.size.width;
  height = self->_tileFrame.size.height;
  if ([(PLPhotoTileViewController *)self isTVOut])
  {
    width = *&__TVOutTileSize_0;
    height = *&__TVOutTileSize_1;
  }

  self->_shouldUpdateBadgeViewOptimalLayout = 1;
  v7 = [[PLTileContainerView alloc] initWithFrame:self photoTileController:x, y, width, height];
  self->_containerView = v7;
  [(PLTileContainerView *)v7 setAutoresizingMask:18];
  containerView = self->_containerView;

  [(PLPhotoTileViewController *)self setView:containerView];
}

- (void)cancelFullSizeImageRequest
{
  if (self->_fullSizeImageRequestID)
  {
    [-[PLPhotoTileViewController cachingImageManager](self "cachingImageManager")];
  }

  self->_fullSizeImageRequestID = 0;
}

- (void)setFullSizeImage:(id)a3
{
  if ((*(self + 1361) & 8) != 0)
  {

    self->_pendingImage = a3;
  }

  else
  {

    [(PLPhotoTileViewController *)self _setImage:a3 isThumbnail:0 preserveFrame:1];
  }
}

- (void)showErrorPlaceholderView
{
  self->_currentTileDownloadFinished = 1;
  placeholderView = self->_placeholderView;
  if (placeholderView)
  {
    [(PLTilePlaceholderView *)placeholderView showErrorIndicator];
  }
}

- (void)_removePlaceholderView
{
  self->_currentTileDownloadFinished = 1;
  placeholderView = self->_placeholderView;
  if (placeholderView)
  {
    [(PLTilePlaceholderView *)placeholderView fadeOutSoonIfNeededAndRemoveFromSuperview:1];

    self->_placeholderView = 0;
  }
}

- (void)didLoadImage
{
  self->_isLoadingFullSizeImage = 0;
  if (([(PHAsset *)self->_modelPhoto isTimelapsePlaceholder]& 1) == 0)
  {

    [(PLPhotoTileViewController *)self _removePlaceholderView];
  }
}

- (void)refreshTileWithFullScreenImage:(id)a3 modelPhoto:(id)a4
{
  self->_modelPhoto = a4;
  if (![(PLVideoView *)self->_videoView isPlaying])
  {
    [(PLPhotoTileViewController *)self _updateVideoViewForModelPhoto];
    if (self->_videoView)
    {
      if ([(PLPhotoTileViewController *)self isViewLoaded])
      {
        [(PLPhotoTileViewController *)self _installSubview:self->_videoView];
      }
    }
  }

  [(PLPhotoTileViewController *)self _updatePlaceholderViewAnimated:1];
  [(PLPhotoTileViewController *)self _setImage:a3 isThumbnail:0 preserveFrame:0];
  if (self->_fullSizeImageRequestID)
  {
    [(PLPhotoTileViewController *)self cancelFullSizeImageRequest];

    [(PLPhotoTileViewController *)self _requestFullSizeImage];
  }
}

- (void)_setImage:(id)a3 isThumbnail:(BOOL)a4 preserveFrame:(BOOL)a5
{
  v5 = a5;
  if (!a4)
  {
    self->_isLoadingFullSizeImage = 0;
  }

  imageView = self->_imageView;
  [(PLExpandableImageView *)imageView frame];
  v45 = v11;
  v46 = v10;
  v13 = v12;
  v47 = v14;
  image = self->_image;
  v16 = a3;
  if (image != a3)
  {

    v16 = a3;
    self->_image = v16;
  }

  if (v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (!a4)
    {
      p_imageSize = &self->_imageSize;
      v20 = self->_image;
      if (v20)
      {
        [(UIImage *)v20 size];
        p_imageSize->width = v21;
        self->_imageSize.height = v22;
      }

      else
      {
        *p_imageSize = *MEMORY[0x277CBF3A8];
      }
    }
  }

  else
  {
    v17 = [(PHAsset *)self->_modelPhoto pixelWidth];
    v18 = [(PHAsset *)self->_modelPhoto pixelHeight];
    self->_imageSize.width = v17;
    self->_imageSize.height = v18;
  }

  [(PLPhotoTileViewController *)self _updateModelPhotoWithImage:a3];
  [(PLPhotoTileViewController *)self _configureViews];
  [(PLPhotoTileViewController *)self _showBadgeViewIfAppropriate];
  [(PLImageScrollView *)self->_scrollView contentOffset];
  v24 = v23;
  v26 = v25;
  [(PLImageScrollView *)self->_scrollView zoomScale];
  v28 = v27;
  v29 = self->_imageView;
  if (v29)
  {
    [(PLExpandableImageView *)v29 bounds];
    v31 = v30;
    v33 = v32;
    v29 = self->_imageView;
  }

  else
  {
    v31 = *(MEMORY[0x277CBF3A0] + 16);
    v33 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v34 = v28;
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  [(PLExpandableImageView *)v29 setBounds:0.0, 0.0, width, height];
  *(self + 1361) = *(self + 1361) & 0xFE | a4;
  if (a4)
  {
    v37 = 1;
  }

  else
  {
    [(UIImage *)self->_image imageOrientation];
    v37 = PLDeviceOrientationFromImageOrientation();
  }

  v38 = v31 * v34;
  self->_imageOrientation = v37;
  [(PLVideoView *)self->_videoView setPosterFrameImage:a3];
  [(PLExpandableImageView *)self->_imageView setImage:a3 isFullscreen:(*(self + 1361) & 1) == 0];
  [(PLPhotoTileViewController *)self updateZoomScales];
  if ((*(self + 1361) & 0x20) != 0)
  {
    v39 = v38 / width;
    *&v39 = v38 / width;
    [(PLPhotoTileViewController *)self setZoomScale:v39];
    if (!imageView)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (self->_image)
    {
      [(PLPhotoTileViewController *)self _setDefaultZoomScale];
    }

    if (!imageView)
    {
      goto LABEL_26;
    }
  }

  if (![(PLPhotoTileViewController *)self _clientIsWallpaper]&& *(self + 1361) < 0)
  {
    v41 = v33 * v34;
    if (v38 <= 0.0)
    {
      v42 = *MEMORY[0x277CBF3A8];
    }

    else
    {
      v42 = v24 / v38;
    }

    if (v41 <= 0.0)
    {
      v43 = *(MEMORY[0x277CBF3A8] + 8);
    }

    else
    {
      v43 = v26 / v41;
    }

    [(PLImageScrollView *)self->_scrollView zoomScale];
    *&v44 = v44;
    [(PLImageScrollView *)self->_scrollView setContentOffset:v42 * (width * *&v44), v43 * (height * *&v44)];
    if (!v5)
    {
      return;
    }

    goto LABEL_30;
  }

LABEL_26:
  if ([(PLPhotoTileViewController *)self _clientIsWallpaper]|| self->_mode == 1)
  {
    [(PLPhotoTileViewController *)self _centerImageInScrollView];
  }

  if (v5)
  {
LABEL_30:
    if (v13 != *MEMORY[0x277CBF3A8] || v47 != *(MEMORY[0x277CBF3A8] + 8))
    {
      v40 = self->_imageView;

      [(PLExpandableImageView *)v40 setFrame:v46, v45, v13, v47];
    }
  }
}

- (void)_updateModelPhotoWithImage:(id)a3
{
  if ([(PLPhotoTileViewController *)self photoShouldHaveHDRBadge])
  {
    [(PLPhotoTileViewController *)self _setupBadgeView];
  }

  if ([(PLPhotoTileViewController *)self photoShouldHaveAvalancheBadge])
  {
    [(PLPhotoTileViewController *)self _setupBadgeView];
  }

  if (self->_reviewing)
  {

    [(PLPhotoTileViewController *)self _updateReviewCheckmark];
  }
}

- (void)setShouldHideProgressIndicator:(BOOL)a3
{
  if (self->_shouldHideProgressIndicator != a3)
  {
    self->_shouldHideProgressIndicator = a3;
    [(PLPhotoTileViewController *)self _updatePlaceholderVisibility];
  }
}

- (void)_updatePlaceholderVisibility
{
  if ([(PLPhotoTileViewController *)self shouldHideProgressIndicator]|| (*(self + 1361) & 4) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(PLImageScrollView *)self->_scrollView isDragging];
  }

  placeholderView = self->_placeholderView;

  [(PLTilePlaceholderView *)placeholderView setHidden:v3];
}

- (void)_updatePlaceholderImageRect
{
  placeholderView = self->_placeholderView;
  if (placeholderView)
  {
    [(PLExpandableImageView *)self->_imageView frame];
    [(PLTilePlaceholderView *)placeholderView convertRect:self->_scrollView fromView:?];

    [(PLTilePlaceholderView *)placeholderView setImageRect:?];
  }
}

- (void)_updateContentInset
{
  if ([(PLPhotoTileViewController *)self _clientIsWallpaper])
  {
    p_scrollView = &self->_scrollView;
    [(PLImageScrollView *)self->_scrollView bounds];
    v5 = v4;
    v7 = v6;
    [(PLImageScrollView *)self->_scrollView contentSize];
    v9 = v8;
    v11 = v7 - v10;
    v12 = v7 <= v10;
    v13 = 0.0;
    if (v12)
    {
      v11 = 0.0;
    }

    if (v11 < 110.0)
    {
      v11 = 110.0;
    }

    if (v5 > v9)
    {
      v13 = v5 - v9;
    }

    v14 = v11;
    v15 = v13;
  }

  else
  {
    if (![(PLPhotoTileViewController *)self isViewLoaded])
    {
      return;
    }

    p_scrollView = &self->_scrollView;
    if (!self->_scrollView)
    {
      return;
    }

    [-[PLPhotoTileViewController view](self "view")];
    v46 = v17;
    v47 = v16;
    v19 = v18;
    v21 = v20;
    if (CGRectIsEmpty(self->_cropOverlayRect))
    {
      [(PLImageScrollView *)*p_scrollView safeAreaInsets];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
    }

    else
    {
      [-[PLPhotoTileViewController view](self "view")];
      x = v49.origin.x;
      y = v49.origin.y;
      width = v49.size.width;
      height = v49.size.height;
      MinX = CGRectGetMinX(v49);
      v50.origin.x = v47;
      v50.origin.y = v46;
      v50.size.width = v19;
      v50.size.height = v21;
      v44 = MinX - CGRectGetMinX(v50);
      v51.origin.x = v47;
      v51.origin.y = v46;
      v51.size.width = v19;
      v51.size.height = v21;
      rect = width;
      MaxX = CGRectGetMaxX(v51);
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      v43 = MaxX - CGRectGetMaxX(v52);
      v53.origin.x = x;
      v53.origin.y = y;
      v53.size.width = width;
      v53.size.height = height;
      MinY = CGRectGetMinY(v53);
      v54.origin.x = v47;
      v54.origin.y = v46;
      v54.size.width = v19;
      v54.size.height = v21;
      v23 = MinY - CGRectGetMinY(v54);
      v55.origin.x = v47;
      v55.origin.y = v46;
      v55.size.width = v19;
      v55.size.height = v21;
      MaxY = CGRectGetMaxY(v55);
      v25 = v44;
      v56.origin.x = x;
      v56.origin.y = y;
      v56.size.width = width;
      v56.size.height = height;
      v27 = MaxY - CGRectGetMaxY(v56);
      v29 = v43;
    }

    [(PLPhotoTileViewController *)self overlayInsets];
    v11 = v23 + v36;
    v13 = v25 + v37;
    v14 = v27 + v38;
    v15 = v29 + v39;
  }

  v40 = *p_scrollView;

  [(PLImageScrollView *)v40 setContentInset:v11, v13, v14, v15];
}

- (void)_adjustScrollViewContentOffsetForInsets
{
  [(PLImageScrollView *)self->_scrollView zoomScale];
  v4 = v3;
  v5 = v3 * self->_imageSize.height;
  [(PLImageScrollView *)self->_scrollView frame];
  v7 = v6;
  v8 = v4 * self->_imageSize.width;
  [(PLImageScrollView *)self->_scrollView frame];
  v10 = v9;
  [(PLImageScrollView *)self->_scrollView contentOffset];
  v12 = v11;
  v14 = v13;
  v15 = v7 <= v5;
  v16 = v13;
  if (!v15)
  {
    v17 = *(self + 1362);
    [(PLImageScrollView *)self->_scrollView contentInset];
    v19 = rint(v18 * 0.5);
    if (v17)
    {
      v16 = v14 - v19;
    }

    else
    {
      v16 = v14 + v19;
    }
  }

  v20 = v12;
  if (v10 > v8)
  {
    v21 = *(self + 1362);
    [(PLImageScrollView *)self->_scrollView contentInset];
    v23 = rint(v22 * 0.5);
    if (v21)
    {
      v20 = v12 - v23;
    }

    else
    {
      v20 = v12 + v23;
    }
  }

  if (v12 != v20 || v14 != v16)
  {
    scrollView = self->_scrollView;

    [(PLImageScrollView *)scrollView setContentOffset:?];
  }
}

- (void)_centerImageInScrollView
{
  [(PLImageScrollView *)self->_scrollView zoomScale];
  v4 = v3 * self->_imageSize.width;
  v5 = v3 * self->_imageSize.height;
  [(PLImageScrollView *)self->_scrollView contentSize];
  v7 = v6;
  v50 = v8;
  [(PLImageScrollView *)self->_scrollView bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(PLImageScrollView *)self->_scrollView contentInset];
  v47 = v17;
  v48 = v18;
  zoomToFillInsteadOfToFit = self->_zoomToFillInsteadOfToFit;
  v54.origin.x = v10;
  v54.origin.y = v12;
  v54.size.width = v14;
  v54.size.height = v16;
  Width = CGRectGetWidth(v54);
  v55.origin.x = v10;
  v55.origin.y = v12;
  v55.size.width = v14;
  v55.size.height = v16;
  Height = CGRectGetHeight(v55);
  v51 = v5;
  v52 = v4;
  if (zoomToFillInsteadOfToFit)
  {
    v22 = v5 < Height;
    if (v4 >= Width)
    {
      goto LABEL_3;
    }

LABEL_10:
    v58.origin.x = v10;
    v58.origin.y = v12;
    v58.size.width = v14;
    v58.size.height = v16;
    v27 = CGRectGetWidth(v58);
    if (v7 >= v27)
    {
      v27 = v7;
    }

    v49 = v27;
    v24 = v50;
    if (v22)
    {
      goto LABEL_6;
    }

LABEL_13:
    v59.origin.x = v10;
    v59.origin.y = v12;
    v59.size.width = v14;
    v59.size.height = v16;
    v28 = CGRectGetHeight(v59);
    if (v24 >= v28)
    {
      v26 = v28;
    }

    else
    {
      v26 = v24;
    }

    goto LABEL_16;
  }

  v22 = v5 > Height;
  if (v4 > Width)
  {
    goto LABEL_10;
  }

LABEL_3:
  v56.origin.x = v10;
  v56.origin.y = v12;
  v56.size.width = v14;
  v56.size.height = v16;
  v23 = CGRectGetWidth(v56);
  if (v7 < v23)
  {
    v23 = v7;
  }

  v49 = v23;
  v24 = v50;
  if (!v22)
  {
    goto LABEL_13;
  }

LABEL_6:
  v57.origin.x = v10;
  v57.origin.y = v12;
  v57.size.width = v14;
  v57.size.height = v16;
  v25 = CGRectGetHeight(v57);
  if (v24 >= v25)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

LABEL_16:
  centerContentVertically = self->_centerContentVertically;
  v30 = MEMORY[0x277CBF348];
  v60.origin.x = v10;
  v60.origin.y = v12;
  v60.size.width = v14;
  v60.size.height = v16;
  if (CGRectGetWidth(v60) <= v7)
  {
    v34 = *v30;
  }

  else
  {
    v31 = rint(v48);
    v32 = [(PLPhotoTileViewController *)self _clientIsWallpaper];
    v33 = rint(v31 * 0.5);
    if (v32)
    {
      v34 = v33;
    }

    else
    {
      v34 = v31;
    }
  }

  v35 = v30[1];
  v61.origin.x = v10;
  v61.origin.y = v12;
  v61.size.width = v14;
  v61.size.height = v16;
  v36 = CGRectGetHeight(v61) - v24;
  if (v36 <= 0.0)
  {
    v37 = v51;
  }

  else
  {
    v37 = v51;
    if (self->_centerContentVertically)
    {
      v38 = [(PLPhotoTileViewController *)self _clientIsWallpaper];
      v39 = v36 * 0.5;
      v40 = rint(v47);
      v41 = rintf(v39);
      if (v40 <= v41)
      {
        v41 = v40;
      }

      v42 = rint(v36 * 0.5);
      if (v38)
      {
        v35 = v42;
      }

      else
      {
        v35 = v41;
      }
    }
  }

  v43 = rint((v37 - v26) * 0.5);
  if (!centerContentVertically)
  {
    v43 = 0.0;
  }

  v44 = v43 - v35;
  v45 = rint((v52 - v49) * 0.5) - v34;
  scrollView = self->_scrollView;

  [(PLImageScrollView *)scrollView setContentOffset:v45, v44];
}

- (void)retryDownload
{
  *(self + 1362) &= ~8u;
  [(PLPhotoTileViewController *)self cancelFullSizeImageRequest];

  [(PLPhotoTileViewController *)self _requestFullSizeImage];
}

- (void)_updatePlaceholderViewAnimated:(BOOL)a3
{
  v4 = [objc_opt_class() shouldShowPlaceholderForAsset:self->_modelPhoto];
  placeholderView = self->_placeholderView;
  if (v4)
  {
    if (!placeholderView)
    {
      [-[PLPhotoTileViewController view](self "view")];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      if (([(PHAsset *)self->_modelPhoto hasLargerThanThumbResourceLocal]& 1) != 0)
      {
        v14 = [[PLPhotoTilePlaceholderView alloc] initWithFrame:v7, v9, v11, v13];
        self->_placeholderView = v14;
        [(PLPhotoTilePlaceholderView *)v14 setAutoresizingMask:18];
      }

      else if (!self->_currentTileDownloadFinished)
      {
        v15 = [[PLPhotoTileCloudPlaceholderView alloc] initWithFrame:v7, v9, v11, v13];
        self->_placeholderView = v15;
        [(PLPhotoTileCloudPlaceholderView *)v15 setAutoresizingMask:18];
        [(PLTilePlaceholderView *)self->_placeholderView setRetryDelegate:self];
      }

      v16 = self->_placeholderView;

      [(PLPhotoTileViewController *)self _installSubview:v16];
    }
  }

  else if (placeholderView)
  {

    [(PLPhotoTileViewController *)self _removePlaceholderView];
  }
}

- (void)_updateSubviewOrdering
{
  v3 = [(PLPhotoTileViewController *)self view];
  [v3 sendSubviewToBack:self->_scrollView];
  [v3 sendSubviewToBack:self->_videoView];
  [v3 bringSubviewToFront:{-[PLVideoView videoOverlayPlayButton](self->_videoView, "videoOverlayPlayButton")}];
  [v3 bringSubviewToFront:{-[PLPhotoTileViewController _customCenterOverlay](self, "_customCenterOverlay")}];
  [v3 bringSubviewToFront:self->_reviewCheckmarkImageView];
  placeholderView = self->_placeholderView;

  [v3 bringSubviewToFront:placeholderView];
}

- (void)_installSubview:(id)a3
{
  [-[PLPhotoTileViewController view](self "view")];

  [(PLPhotoTileViewController *)self _updateSubviewOrdering];
}

- (void)_configureViews
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  if ([(PLPhotoTileViewController *)self isViewLoaded])
  {
    [-[PLPhotoTileViewController view](self "view")];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = self->_tileFrame.size.width;
    v8 = self->_tileFrame.size.height;
  }

  if (*(self + 1361) < 0 || !self->_videoView)
  {
    if (([(PHAsset *)self->_modelPhoto isVideo]& 1) != 0 || ([(PHAsset *)self->_modelPhoto isStreamedVideo]& 1) != 0 || ([(PHAsset *)self->_modelPhoto isAudio]& 1) != 0)
    {
      [(PLImageScrollView *)self->_scrollView removeFromSuperview];

      self->_scrollView = 0;
      videoView = self->_videoView;
      if (videoView)
      {
        v10 = [(PLVideoView *)videoView superview];
        if (v10 != [(PLPhotoTileViewController *)self view])
        {
          [(PLPhotoTileViewController *)self _installSubview:self->_videoView];
        }

        v11 = self->_videoView;
        [-[PLPhotoTileViewController view](self "view")];
        [(PLVideoView *)v11 setFrame:?];
      }

      v12 = [(PLPhotoTileViewController *)self view];
    }

    else
    {
      if (!self->_imageView)
      {
        v13 = [[PLExpandableImageView alloc] initWithFrame:1 frameStyle:0 withBorder:0.0, 0.0, width, height];
        self->_imageView = v13;
        [(PLExpandableImageView *)v13 setUserInteractionEnabled:0];
      }

      if (self->_videoView)
      {
        [(PLExpandableImageView *)self->_imageView setVideoView:?];
      }

      scrollView = self->_scrollView;
      if (!scrollView)
      {
        v15 = [[PLImageScrollView alloc] initWithFrame:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v6, v8];
        self->_scrollView = v15;
        if ((*(self + 1361) & 0x80000000) == 0)
        {
          [(PLExpandableImageView *)self->_imageView frame];
          [(PLImageScrollView *)v15 setContentSize:v16, v17];
          [(PLImageScrollView *)self->_scrollView setAlwaysBounceVertical:1];
          [(PLImageScrollView *)self->_scrollView setAlwaysBounceHorizontal:1];
          v15 = self->_scrollView;
        }

        [(PLImageScrollView *)v15 setAutoresizingMask:18];
        [(PLImageScrollView *)self->_scrollView setPreservesCenterDuringRotation:1];
        [(PLImageScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
        [(PLImageScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
        [(PLImageScrollView *)self->_scrollView addSubview:self->_imageView];
        [(PLImageScrollView *)self->_scrollView setDelegate:self];
        [(PLImageScrollView *)self->_scrollView setBouncesZoom:1];
        [(PLImageScrollView *)self->_scrollView setContentInsetAdjustmentBehavior:2];
        [(PLPhotoTileViewController *)self _updateContentInset];
        scrollView = self->_scrollView;
      }

      v18 = [(PLImageScrollView *)scrollView superview];
      if (v18 != [(PLPhotoTileViewController *)self view])
      {
        [(PLPhotoTileViewController *)self _installSubview:self->_scrollView];
      }

      v12 = self->_scrollView;
    }

    [(PLImageScrollView *)v12 addGestureRecognizer:self->_singleTapGestureRecognizer];
  }

  else if ([(PLPhotoTileViewController *)self isViewLoaded])
  {
    [(PLPhotoTileViewController *)self _installSubview:self->_videoView];
  }

  [(PLPhotoTileViewController *)self _updatePlaceholderViewAnimated:0];
}

- (void)setBadgeVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = *(self + 1362);
  if (((((v4 & 0x40) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v5 = 64;
    }

    else
    {
      v5 = 0;
    }

    *(self + 1362) = v4 & 0xBF | v5;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__PLPhotoTileViewController_setBadgeVisible_animated___block_invoke;
    v6[3] = &unk_2782A2020;
    v6[4] = self;
    if (a4)
    {
      [MEMORY[0x277D75D18] animateWithDuration:v6 animations:0.300000012];
    }

    else
    {
      [(PLPhotoTileViewController *)self _showBadgeViewIfAppropriate];
    }
  }
}

- (void)setAvalancheBadgesHidden:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 1362) = *(self + 1362) & 0xDF | v3;
  [(PLPhotoTileViewController *)self _showBadgeViewIfAppropriate];
}

- (BOOL)photoShouldHaveAvalancheBadge
{
  v3 = [(PHAsset *)self->_modelPhoto representsBurst];
  if (v3)
  {
    LOBYTE(v3) = !self->_reviewing && (*(self + 1362) & 0x20) == 0;
  }

  return v3;
}

- (BOOL)photoShouldHaveHDRBadge
{
  if ([(PHAsset *)self->_modelPhoto mediaType]!= PHAssetMediaTypeImage)
  {
    return 0;
  }

  modelPhoto = self->_modelPhoto;

  return [(PHAsset *)modelPhoto isMediaSubtype:2];
}

- (BOOL)allowsEditing
{
  tileDelegate = self->_tileDelegate;
  if (tileDelegate)
  {
    LOBYTE(tileDelegate) = [(PLPhotoTileViewControllerDelegate *)tileDelegate photoTileViewControllerAllowsEditing:self];
  }

  return tileDelegate;
}

- (void)setClientIsWallpaper:(BOOL)a3
{
  self->_clientIsTemporarilyWallpaper = a3;
  self->_userDidAdjustWallpaper = 0;
  if (a3)
  {
    *(self + 1361) |= 0x40u;
    [(PLImageScrollView *)self->_scrollView zoomScale];
    v5 = v4;
    [(PLPhotoTileViewController *)self defaultZoomScale];
    *&v6 = v5 / v6;
    if (*&v6 > 1.0)
    {
      self->_userDidAdjustWallpaper = 1;
    }
  }

  else
  {
    gradientView = self->_gradientView;
    if (gradientView)
    {
      [(UIImageView *)gradientView removeFromSuperview];
    }
  }

  [(PLPhotoTileViewController *)self _updateContentInset];
}

- (void)setTVOut:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 1361) = *(self + 1361) & 0xFD | v3;
}

- (void)setTileDelegate:(id)a3
{
  if (self->_tileDelegate != a3)
  {
    self->_tileDelegate = a3;
    self->_isLoadingFullSizeImage = 0;
    [(PLPhotoTileViewController *)self ensureFullSizeImageLoaded];
  }
}

- (void)showContentView
{
  [(PLVideoView *)self->_videoView setHidden:0];
  [-[PLVideoView videoOverlayPlayButton](self->_videoView "videoOverlayPlayButton")];
  scrollView = self->_scrollView;

  [(PLImageScrollView *)scrollView setHidden:0];
}

- (void)hideContentView
{
  [(PLVideoView *)self->_videoView setHidden:1];
  [-[PLVideoView videoOverlayPlayButton](self->_videoView "videoOverlayPlayButton")];
  scrollView = self->_scrollView;

  [(PLImageScrollView *)scrollView setHidden:1];
}

- (void)_setCustomCenterOverlay:(id)a3
{
  customCenterOverlay = self->__customCenterOverlay;
  if (customCenterOverlay != a3)
  {
    [(UIView *)customCenterOverlay removeFromSuperview];

    self->_customCenterOverlayConstraints = 0;
    self->__customCenterOverlay = a3;
    [-[PLPhotoTileViewController view](self "view")];
    [(PLPhotoTileViewController *)self _updateSubviewOrdering];
    v6 = [(PLPhotoTileViewController *)self view];

    [v6 setNeedsUpdateConstraints];
  }
}

- (void)updateCenterOverlay
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(PLPhotoTileViewControllerDelegate *)self->_tileDelegate photoTileViewControllerCustomCenterOverlay:self];
  }

  else
  {
    v3 = 0;
  }

  [(PLPhotoTileViewController *)self _setCustomCenterOverlay:v3];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(PLPhotoTileViewControllerDelegate *)self->_tileDelegate photoTileViewControllerCanShowCenterOverlay:self];
  }

  else
  {
    v4 = 1;
  }

  videoView = self->_videoView;
  if (videoView)
  {
    [(PLVideoView *)self->_videoView setShowsPlayOverlay:([(PLPhotoTileViewController *)self _customCenterOverlay]== 0) & v4 & ([(PLVideoView *)videoView isPlaying]^ 1)];
  }

  v6 = [(PLPhotoTileViewController *)self _customCenterOverlay];

  [(UIView *)v6 setHidden:v4 ^ 1u];
}

- (void)setVideoView:(id)a3
{
  videoView = self->_videoView;
  if (videoView != a3)
  {
    [(PLVideoView *)videoView viewDidDisappear];
    [(PLVideoView *)self->_videoView setImageTile:0];
    [(PLVideoView *)self->_videoView removeFromSuperview];

    v6 = a3;
    self->_videoView = v6;
    [(PLVideoView *)v6 setImageTile:self];
    if (self->_videoView)
    {
      if ([(PLPhotoTileViewController *)self isViewLoaded])
      {

        [(PLPhotoTileViewController *)self _configureViews];
      }
    }
  }
}

- (id)_newCGImageBackedUIImageFromImage:(id)a3
{
  if ([a3 CGImage])
  {

    return a3;
  }

  else
  {
    result = PLCreateCGImageFromIOSurfaceBackedUIImage();
    if (result)
    {
      v4 = result;
      v5 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:result imageOrientation:{objc_msgSend(a3, "imageOrientation")}];
      CGImageRelease(v4);
      return v5;
    }
  }

  return result;
}

- (id)image
{
  if ([(PHAsset *)self->_modelPhoto isVideo])
  {
    imageView = [(PLVideoView *)self->_videoView previewImageView];
  }

  else
  {
    imageView = self->_imageView;
  }

  return [(UIImageView *)imageView image];
}

- (void)forceZoomingGesturesEnabled
{
  if ((*(self + 1361) & 0x10) != 0)
  {
    [(PLPhotoTileViewController *)self setZoomingGesturesEnabled:0];
  }

  [(PLPhotoTileViewController *)self setZoomingGesturesEnabled:1];
}

- (void)setZoomingGesturesEnabled:(BOOL)a3
{
  v3 = *(self + 1361);
  if (((((v3 & 0x10) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v5 = 16;
    }

    else
    {
      v5 = 0;
    }

    *(self + 1361) = v3 & 0xEF | v5;
    scrollView = self->_scrollView;
    if (!scrollView)
    {
      scrollView = self->_videoView;
    }

    if (scrollView)
    {
      v7 = a3;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      [(UIGestureRecognizer *)self->_singleTapGestureRecognizer requireGestureRecognizerToFail:self->_doubleTapGestureRecognizer];
      [scrollView addGestureRecognizer:self->_doubleTapGestureRecognizer];
    }

    else
    {
      if (!scrollView)
      {
        return;
      }

      [(UIGestureRecognizer *)self->_singleTapGestureRecognizer removeFailureRequirement:self->_doubleTapGestureRecognizer];
      [scrollView removeGestureRecognizer:self->_doubleTapGestureRecognizer];
    }

    [(PLImageScrollView *)self->_scrollView setClipsToBounds:!v7];
    videoView = self->_videoView;

    [(PLVideoView *)videoView setClipsToBounds:!v7];
  }
}

- (void)setCropOverlayRect:(CGRect)a3 forCropRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  p_cropOverlayRect = &self->_cropOverlayRect;
  self->_cropOverlayRect = a3;
  if (CGRectIsEmpty(a4))
  {
    *(self + 1362) &= ~0x10u;
    v10 = *(MEMORY[0x277CBF3A0] + 16);
    self->_cropRect.origin = *MEMORY[0x277CBF3A0];
    self->_cropRect.size = v10;
    v11 = 1.0;
  }

  else
  {
    *(self + 1362) |= 0x10u;
    self->_cropRect.origin.x = x;
    self->_cropRect.origin.y = y;
    self->_cropRect.size.width = width;
    self->_cropRect.size.height = height;
    v12 = p_cropOverlayRect->size.height / height;
    if (v12 >= p_cropOverlayRect->size.width / width)
    {
      v12 = p_cropOverlayRect->size.width / width;
    }

    v11 = v12;
  }

  self->_cropRectZoomScale = v11;

  [(PLPhotoTileViewController *)self _updateContentInset];
}

- (void)setZoomScale:(float)a3
{
  *(self + 1361) |= 0x40u;
  [(PLImageScrollView *)self->_scrollView setZoomScale:a3];
  [(PLPhotoTileViewController *)self _updatePlaceholderImageRect];
  *(self + 1361) &= ~0x40u;
}

- (NSString)description
{
  v3.receiver = self;
  v3.super_class = PLPhotoTileViewController;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"<%@ photo:%@", -[PLPhotoTileViewController description](&v3, sel_description), self->_modelPhoto];
}

- (CGRect)tileFrame
{
  x = self->_tileFrame.origin.x;
  y = self->_tileFrame.origin.y;
  width = self->_tileFrame.size.width;
  height = self->_tileFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIImage)thumbnailImage
{
  if (*(self + 1361))
  {
    return self->_image;
  }

  else
  {
    return 0;
  }
}

- (void)_updateVideoViewForModelPhoto
{
  v3 = [(PHAsset *)self->_modelPhoto isVideo];
  modelPhoto = self->_modelPhoto;
  if (v3)
  {
    [(PHAsset *)modelPhoto isStreamedVideo];
    goto LABEL_3;
  }

  v13 = [(PHAsset *)modelPhoto isAudio];
  v14 = [(PHAsset *)self->_modelPhoto isStreamedVideo];
  if ((v13 & 1) != 0 || v14)
  {
LABEL_3:
    if ([(PLPhotoTileViewController *)self isViewLoaded])
    {
      [-[PLPhotoTileViewController view](self "view")];
      x = v5;
      y = v7;
      width = v9;
      height = v11;
    }

    else
    {
      x = self->_tileFrame.origin.x;
      y = self->_tileFrame.origin.y;
      width = self->_tileFrame.size.width;
      height = self->_tileFrame.size.height;
    }

    [(PLVideoView *)self->_videoView setImageTile:0];
    [(PLVideoView *)self->_videoView removeFromSuperview];

    v16 = [[PLVideoView alloc] initWithFrame:[(PHAsset *)self->_modelPhoto pl_managedAsset] videoCameraImage:1 orientation:x, y, width, height];
    self->_videoView = v16;
    [(PLVideoView *)v16 setAllowSlalomEditor:1];
    [(PLVideoView *)self->_videoView setImageTile:self];
    if (self->_image)
    {
      [(PLVideoView *)self->_videoView setPosterFrameImage:?];
    }

    [(PLVideoView *)self->_videoView setScrubberIsSubview:0];
    if ((*(self + 1362) & 4) != 0)
    {
      videoView = self->_videoView;

      [(PLVideoView *)videoView viewWillAppear:1];
    }

    return;
  }

  v15 = self->_videoView;
  if (v15)
  {
    [-[PLVideoView videoOverlayPlayButton](v15 "videoOverlayPlayButton")];
    [(PLVideoView *)self->_videoView removeFromSuperview];

    self->_videoView = 0;
  }
}

- (void)_setPhoto:(id)a3
{
  modelPhoto = self->_modelPhoto;
  if (modelPhoto != a3)
  {

    self->_modelPhoto = a3;
    [(PLPhotoTileViewController *)self _updateVideoViewForModelPhoto];
    if (self->_modelPhoto)
    {
      [(PLPhotoTileViewController *)self _configureViews];
      if (self->_image)
      {
        [PLExpandableImageView setImage:"setImage:isFullscreen:" isFullscreen:?];
      }
    }

    if (!self->_image)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        image = self->_image;
        v7 = *(self + 1361) & 1;

        [(PLPhotoTileViewController *)self _setImage:image isThumbnail:v7 preserveFrame:0];
      }
    }
  }
}

- (BOOL)tileIsOnScreen
{
  if (![(PLPhotoTileViewController *)self isViewLoaded])
  {
    return 0;
  }

  v3 = [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  if (![v3 count])
  {
    return 0;
  }

  v4 = [v3 objectAtIndex:0];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [(PLPhotoTileViewController *)self view];
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v6 bounds];
  [v6 convertRect:v5 toView:?];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v8;
  v24 = v10;
  v25 = v12;
  v26 = v14;

  return CGRectIntersectsRect(*&v23, *&v16);
}

- (void)dealloc
{
  [(PLPhotoTileViewController *)self cancelFullSizeImageRequest];

  [(PLTileContainerView *)self->_containerView clearBackReference];
  [(UIImageView *)self->_gradientView removeFromSuperview];

  [(PLImageScrollView *)self->_scrollView setDelegate:0];
  [(PLImageScrollView *)self->_scrollView removeFromSuperview];

  [(UIGestureRecognizer *)self->_singleTapGestureRecognizer removeTarget:self action:sel__handleSingleTap_];
  [(UIGestureRecognizer *)self->_singleTapGestureRecognizer setDelegate:0];

  [(UIGestureRecognizer *)self->_doubleTapGestureRecognizer removeTarget:self action:sel__handleDoubleTap_];
  [(UIGestureRecognizer *)self->_doubleTapGestureRecognizer setDelegate:0];

  [(PLExpandableImageView *)self->_imageView removeFromSuperview];
  [(PLExpandableImageView *)self->_imageView removeAllGestureRecognizers];

  [(PLVideoView *)self->_videoView removeFromSuperview];
  [(PLVideoView *)self->_videoView removeAllGestureRecognizers];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = MEMORY[0x277D76620];
  [v3 removeObserver:self name:*MEMORY[0x277D76768] object:*MEMORY[0x277D76620]];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x277D76648] object:*v4];
  [(PLPhotoTileViewController *)self _teardownDispatchTimer];

  v6.receiver = self;
  v6.super_class = PLPhotoTileViewController;
  [(PLPhotoTileViewController *)&v6 dealloc];
}

- (void)_teardownDispatchTimer
{
  dispatchTimer = self->_dispatchTimer;
  if (dispatchTimer)
  {
    dispatch_source_cancel(dispatchTimer);
    dispatch_release(self->_dispatchTimer);
    self->_dispatchTimer = 0;
  }
}

- (id)cachingImageManager
{
  result = self->__cachingImageManager;
  if (!result)
  {
    result = objc_opt_new();
    self->__cachingImageManager = result;
  }

  return result;
}

- (PLPhotoTileViewController)initWithModelPhoto:(id)a3 thumbnailImage:(id)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  [a4 imageOrientation];
  result = [(PLPhotoTileViewController *)self initWithModelPhoto:a3 image:a4 frame:1 isThumbnail:PLDeviceOrientationFromImageOrientation() imageOrientation:1 allowZoomToFill:0 mode:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), width, height];
  *(result + 1361) |= 0x80u;
  return result;
}

- (id)initForPageController
{
  result = [(PLPhotoTileViewController *)self init];
  if (result)
  {
    *(result + 1361) |= 0x80u;
    *(result + 316) = 0;
  }

  return result;
}

- (PLPhotoTileViewController)initWithModelPhoto:(id)a3 image:(id)a4 frame:(CGRect)a5 isThumbnail:(BOOL)a6 imageOrientation:(int)a7 allowZoomToFill:(BOOL)a8 mode:(int)a9
{
  v11 = a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v18 = [(PLPhotoTileViewController *)self init:a3];
  v19 = v18;
  if (v18)
  {
    v18->_allowZoomToFill = a8;
    *(v18 + 1361) = *(v18 + 1361) & 0x7F | ((a9 == 0) << 7);
    v18->_mode = a9;
    [(PLPhotoTileViewController *)v18 _setPhoto:a3];
    [(PLPhotoTileViewController *)v19 setTileFrame:x, y, width, height];
    [(PLPhotoTileViewController *)v19 _setImage:a4 isThumbnail:v11 preserveFrame:0];
    if (!v19->_videoView && !v19->_scrollView && v19->_image)
    {
      [(PLPhotoTileViewController *)v19 _configureViews];
      [(PLExpandableImageView *)v19->_imageView setImage:v19->_image];
    }
  }

  return v19;
}

- (PLPhotoTileViewController)init
{
  v7.receiver = self;
  v7.super_class = PLPhotoTileViewController;
  v2 = [(PLPhotoTileViewController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_allowZoomToFill = 1;
    v2->_forceNativeScreenScale = 0;
    v2->_centerContentVertically = 1;
    *(v2 + 1362) &= ~0x40u;
    v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v2 action:sel__handleSingleTap_];
    [(UIGestureRecognizer *)v4 setDelegate:v3];
    v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v3 action:sel__handleDoubleTap_];
    [(UIGestureRecognizer *)v5 setNumberOfTapsRequired:2];
    [(UIGestureRecognizer *)v5 setDelegate:v3];
    v3->_singleTapGestureRecognizer = v4;
    v3->_doubleTapGestureRecognizer = v5;
  }

  return v3;
}

- (void)setOverlayInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_overlayInsets.top), vceqq_f64(v4, *&self->_overlayInsets.bottom)))) & 1) == 0)
  {
    self->_overlayInsets = a3;
    [(PLPhotoTileViewController *)self _updateContentInset];

    [(PLPhotoTileViewController *)self _centerImageInScrollView];
  }
}

+ (id)newPhotoTileViewControllerWithFrame:(CGRect)a3 modelPhoto:(id)a4 mode:(int)a5
{
  v5 = *&a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = objc_opt_new();
  [v11 setDeliveryMode:2];
  v12 = [objc_msgSend(MEMORY[0x277CD9898] "defaultManager")];
  v13 = [PLPhotoTileViewController alloc];

  return [(PLPhotoTileViewController *)v13 initWithModelPhoto:a4 image:v12 frame:1 isThumbnail:1 imageOrientation:1 allowZoomToFill:v5 mode:x, y, width, height];
}

+ (id)newPhotoTileViewControllerWithFrame:(CGRect)a3 image:(id)a4 allowZoomToFill:(BOOL)a5 mode:(int)a6
{
  v6 = *&a6;
  v7 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [a4 imageOrientation];
  v13 = PLDeviceOrientationFromImageOrientation();
  v14 = [PLPhotoTileViewController alloc];

  return [(PLPhotoTileViewController *)v14 initWithModelPhoto:0 image:a4 frame:0 isThumbnail:v13 imageOrientation:v7 allowZoomToFill:v6 mode:x, y, width, height];
}

+ (id)newPhotoTileViewControllerWithFrame:(CGRect)a3 imageRef:(CGImage *)a4 imageOrientation:(int64_t)a5 allowZoomToFill:(BOOL)a6 mode:(int)a7
{
  v7 = *&a7;
  v8 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:a4 imageOrientation:a5];
  v14 = [[PLPhotoTileViewController alloc] initWithModelPhoto:0 image:v13 frame:0 isThumbnail:PLDeviceOrientationFromImageOrientation() imageOrientation:v8 allowZoomToFill:v7 mode:x, y, width, height];

  return v14;
}

+ (CGSize)tvOutTileSize
{
  v17 = *MEMORY[0x277D85DE8];
  if (*&__TVOutTileSize_0 == 0.0)
  {
    v2 = [MEMORY[0x277D759A0] screens];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v13;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v12 + 1) + 8 * i);
          if (v7 != [MEMORY[0x277D759A0] px_mainScreen])
          {
            if (v7)
            {
              [v7 bounds];
              __TVOutTileSize_0 = v8;
              __TVOutTileSize_1 = v9;
            }

            goto LABEL_13;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_13:
  v10 = *&__TVOutTileSize_0;
  v11 = *&__TVOutTileSize_1;
  result.height = v11;
  result.width = v10;
  return result;
}

+ (CGSize)tileSize
{
  v2 = *&__TileSize_0;
  if (*&__TileSize_0 == 0.0)
  {
    [objc_msgSend(MEMORY[0x277D759A0] px_mainScreen];
    v4 = *&v3;
    __TileSize_1 = v3;
    v2 = v5 + 40.0;
    *&__TileSize_0 = v5 + 40.0;
  }

  else
  {
    v4 = *&__TileSize_1;
  }

  result.height = v4;
  result.width = v2;
  return result;
}

+ (BOOL)shouldShowPlaceholderForAsset:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (![a3 hasLargerThanThumbResourceLocal] || !objc_msgSend(a3, "complete"))
  {
    return 1;
  }

  return [a3 isTimelapsePlaceholder];
}

@end