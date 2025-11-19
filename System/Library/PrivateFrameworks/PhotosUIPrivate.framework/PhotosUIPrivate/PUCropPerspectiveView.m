@interface PUCropPerspectiveView
- (CATransform3D)_imageOrientationTransform;
- (CATransform3D)_imageOrientationTransformWithoutTranslation;
- (CGAffineTransform)_modelSpaceToViewSpaceTransformWithModelCropRect:(SEL)a3 currentViewCropRect:(CGRect)a4;
- (CGAffineTransform)imageOrientedViewCropTransform;
- (CGPoint)imagePointForViewPoint:(CGPoint)a3;
- (CGRect)_croppingRect;
- (CGRect)_fullCropRect;
- (CGRect)_modelCropRectUnorientedInUICoords;
- (CGRect)imageCropRect;
- (CGRect)imageCropRectForViewRect:(CGRect)a3;
- (CGRect)imageOrientedViewCropRect:(CGRect)a3;
- (CGRect)validateViewCropRectAgainstModelCropRect:(CGRect)a3;
- (CGRect)viewCropRectForImageRect:(CGRect)a3;
- (CGRect)viewOrientedViewCropRect:(CGRect)a3;
- (CGSize)_sizeRotatedIfNeeded:(CGSize)a3;
- (CGSize)masterImageSize;
- (PUCropPerspectiveView)initWithFrame:(CGRect)a3;
- (double)_viewScaleWithModelCropRect:(CGRect)a3;
- (double)_zoomScaleForCurrentCropRectAndModelRect;
- (double)_zoomScaleForModelCropRect:(CGRect)a3;
- (id)_animateValueFromValue:(double)a3 toValue:(double)a4 interpolation:(id)a5 completion:(id)a6;
- (void)_invalidateImageLayerModulator;
- (void)_invalidateImageModulationManager;
- (void)_resetCropRect;
- (void)_setCropModel:(id)a3;
- (void)_setupMediaWithComposition:(id)a3;
- (void)_updateImageModulation;
- (void)dealloc;
- (void)didChangeIsPerformingLiveInteraction:(BOOL)a3;
- (void)didTrackWithCropGestureHandler:(id)a3;
- (void)handlePanGesture:(id)a3;
- (void)handlePinchGesture:(id)a3;
- (void)layoutSubviews;
- (void)mediaViewDidFinishRendering:(id)a3;
- (void)setAutoloopComposition:(id)a3;
- (void)setCanvasFrame:(CGRect)a3;
- (void)setGainMapImage:(CGImage *)a3;
- (void)setImage:(id)a3;
- (void)setImageCropRectFromViewCropRect:(CGRect)a3 animated:(BOOL)a4;
- (void)setImageModulationOptions:(id)a3;
- (void)setImageSize:(CGSize)a3;
- (void)setModelCropRect:(CGRect)a3 viewCropRect:(CGRect)a4;
- (void)setNeedsLayerTransformsUpdateAnimated:(BOOL)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setPitchAngle:(double)a3;
- (void)setShouldEnableImageModulation:(BOOL)a3;
- (void)setStraightenAngle:(double)a3;
- (void)setVideoComposition:(id)a3 withSeekTime:(id *)a4;
- (void)setYawAngle:(double)a3;
- (void)tearDownMediaViewAndLayers;
- (void)updateLayerTransformsAnimated:(BOOL)a3;
- (void)updateLayerTransformsAnimated:(BOOL)a3 viewCropRect:(CGRect)a4 modelCropRect:(CGRect)a5;
@end

@implementation PUCropPerspectiveView

- (CGRect)imageCropRect
{
  x = self->_imageCropRect.origin.x;
  y = self->_imageCropRect.origin.y;
  width = self->_imageCropRect.size.width;
  height = self->_imageCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)handlePinchGesture:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_isDebugging)
  {
    [v4 scale];
    printf(" handlePinchGesture:%.2f\n", v5);
    v4 = v10;
  }

  v6 = [v4 state];
  [v10 scale];
  v8 = v7;
  if ((v6 - 3) >= 3)
  {
    if (v6 == 2)
    {
      [(PUCropGestureHandler *)self->_gestureHandler zoomWithScale:v7];
    }

    else if (v6 == 1)
    {
      [(PUCropPerspectiveView *)self didChangeIsPerformingLiveInteraction:1];
      [(PUCropGestureHandler *)self->_gestureHandler beginZoom];
    }
  }

  else
  {
    v9 = [(PUCropTransformedImageView *)self delegate];
    [v9 cropTransformedImageViewWillEndTracking:self];

    [(PUCropGestureHandler *)self->_gestureHandler endZoomWithScale:v8];
    [(PUCropPerspectiveView *)self didChangeIsPerformingLiveInteraction:0];
  }
}

- (void)handlePanGesture:(id)a3
{
  v4 = a3;
  [v4 translationInView:self];
  v6 = v5;
  v8 = v7;
  [v4 velocityInView:self];
  v10 = v9;
  v12 = v11;
  if (self->_isDebugging)
  {
    printf(" handlePanGesture:%.1f, %.1f\n", v6, v8);
  }

  v13 = [v4 state];
  [(PUCropPerspectiveView *)self _croppingRect];
  v15 = v14;
  v17 = v16;
  [(PUCropTransformedImageView *)self imageSize];
  [(PUCropPerspectiveView *)self _sizeRotatedIfNeeded:?];
  if (v18 < 1.0)
  {
    v18 = 1.0;
  }

  v20 = v15 / v18;
  if (v19 < 1.0)
  {
    v19 = 1.0;
  }

  v21 = v17 / v19;
  if (v20 >= v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  [(PUCropTransformedImageView *)self imageSize];
  v24 = v23;
  v26 = v25;
  [(PUCropPerspectiveView *)self masterImageSize];
  if (v27 < 1.0)
  {
    v27 = 1.0;
  }

  v29 = v24 / v27;
  if (v28 < 1.0)
  {
    v28 = 1.0;
  }

  v30 = v26 / v28;
  if (v29 >= v30)
  {
    v31 = v29;
  }

  else
  {
    v31 = v30;
  }

  [(NUCropModel *)self->_cropModel cropRect];
  [(PUCropPerspectiveView *)self _viewScaleWithModelCropRect:?];
  v32 = *(MEMORY[0x1E69792E8] + 80);
  *&v47.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&v47.m33 = v32;
  v33 = *(MEMORY[0x1E69792E8] + 112);
  *&v47.m41 = *(MEMORY[0x1E69792E8] + 96);
  *&v47.m43 = v33;
  v34 = *(MEMORY[0x1E69792E8] + 16);
  *&v47.m11 = *MEMORY[0x1E69792E8];
  *&v47.m13 = v34;
  v35 = *(MEMORY[0x1E69792E8] + 48);
  *&v47.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v47.m23 = v35;
  *&v46.m31 = *&v47.m31;
  *&v46.m33 = v32;
  *&v46.m41 = *&v47.m41;
  *&v46.m43 = v33;
  *&v46.m11 = *&v47.m11;
  *&v46.m13 = v34;
  *&v46.m21 = *&v47.m21;
  *&v46.m23 = v35;
  CATransform3DScale(&v47, &v46, v36, v36, 1.0);
  [(PUCropPerspectiveView *)self _imageOrientationTransform];
  b = v47;
  CATransform3DConcat(&v46, &a, &b);
  v47 = v46;
  a = v46;
  CATransform3DScale(&v46, &a, v22, v22, 1.0);
  v47 = v46;
  a = v46;
  CATransform3DScale(&v46, &a, v31, v31, 1.0);
  v47 = v46;
  memset(&v46, 0, sizeof(v46));
  a = v47;
  CATransform3DInvert(&v46, &a);
  v37 = -(v8 * v46.m21) - v6 * v46.m11;
  v38 = v8 * v46.m22 + v6 * v46.m12;
  v39 = -(v12 * v46.m21) - v10 * v46.m11;
  v40 = v12 * v46.m22 + v10 * v46.m12;
  if ((v13 - 3) < 3)
  {
    v41 = [(PUCropTransformedImageView *)self delegate];
    [v41 cropTransformedImageViewWillEndTracking:self];

    [(PUCropGestureHandler *)self->_gestureHandler endPanWithTranslation:v37 velocity:v38, v39, v40];
    v42 = self;
    v43 = 0;
LABEL_22:
    [(PUCropPerspectiveView *)v42 didChangeIsPerformingLiveInteraction:v43];
    goto LABEL_23;
  }

  if (v13 == 2)
  {
    [(PUCropGestureHandler *)self->_gestureHandler panWithTranslation:v37 velocity:v38, v39, v40];
    goto LABEL_23;
  }

  if (v13 == 1)
  {
    [(PUCropGestureHandler *)self->_gestureHandler beginPan];
    v42 = self;
    v43 = 1;
    goto LABEL_22;
  }

LABEL_23:
}

- (void)didChangeIsPerformingLiveInteraction:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUCropTransformedImageView *)self delegate];
  [v5 cropTransformedImageView:self didChangeIsPerformingLiveInteraction:v3];
}

- (void)didTrackWithCropGestureHandler:(id)a3
{
  v4 = [(PUCropTransformedImageView *)self delegate];
  [(PUCropPerspectiveView *)self updateLayerTransformsAnimated:0];
  [(PUCropTransformedImageView *)self _setTracking:1];
  [v4 cropTransformedImageViewDidTrack:self];
}

- (CGRect)_modelCropRectUnorientedInUICoords
{
  [(NUCropModel *)self->_cropModel cropRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PUCropTransformedImageView *)self _imageBounds];
  v12 = v11 - v10 - v6;
  v13 = v4;
  v14 = v8;
  v15 = v10;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v12;
  result.origin.x = v13;
  return result;
}

- (CGRect)_croppingRect
{
  [(PUCropTransformedImageView *)self cropRect];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  if (CGRectIsEmpty(v16))
  {
    [(PUCropPerspectiveView *)self _fullCropRect];
    x = v7;
    y = v8;
    width = v9;
    height = v10;
  }

  v11 = PURoundRectToPixel(x, y, width, height);
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setImageCropRectFromViewCropRect:(CGRect)a3 animated:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v100 = *MEMORY[0x1E69E9840];
  [(PUCropPerspectiveView *)self imageCropRectForViewRect:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v10;
  if (v15 <= 1.0 || v10 <= 1.0)
  {
    v19 = MEMORY[0x1E69B3D78];
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_23286);
    }

    v20 = MEMORY[0x1E69B3D70];
    v21 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_DEFAULT))
    {
      v22 = MEMORY[0x1E696AEC0];
      v23 = v21;
      v24 = [v22 stringWithFormat:@"invalid imageRect"];
      *buf = 138543362;
      v97 = v24;
      _os_log_impl(&dword_1B36F3000, v23, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

      v25 = *v19;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v25 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_23286);
        }

        goto LABEL_36;
      }

      if (v25 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_23286);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
LABEL_36:
      v70 = *v20;
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
      {
        specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
        v72 = MEMORY[0x1E696AF00];
        v73 = specific;
        v74 = v70;
        v75 = [v72 callStackSymbols];
        v76 = [v75 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v97 = specific;
        v98 = 2114;
        v99 = v76;
        _os_log_error_impl(&dword_1B36F3000, v74, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_45:
      _NUAssertContinueHandler();
      v69 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v108.origin.x = x;
        v108.origin.y = y;
        v108.size.width = width;
        v108.size.height = height;
        v79 = NSStringFromCGRect(v108);
        v109.origin.x = v12;
        v109.origin.y = v14;
        v109.size.width = v16;
        v109.size.height = v17;
        v80 = NSStringFromCGRect(v109);
        *buf = 138412546;
        v97 = v79;
        v98 = 2112;
        v99 = v80;
        _os_log_impl(&dword_1B36F3000, v69, OS_LOG_TYPE_DEFAULT, "imageRect is near zero size. \nviewCropRect: %@ imageRect: %@", buf, 0x16u);
      }

      goto LABEL_47;
    }

    v78 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      v81 = MEMORY[0x1E696AF00];
      v82 = v78;
      v83 = [v81 callStackSymbols];
      v84 = [v83 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v97 = v84;
      _os_log_error_impl(&dword_1B36F3000, v82, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_45;
  }

  v89 = width;
  v90 = height;
  v87 = x;
  v88 = y;
  [(NUCropModel *)self->_cropModel cropRect];
  v30 = PURoundRectToPixel(v26, v27, v28, v29);
  v32 = v31;
  v34 = v33;
  v35 = v12;
  v36 = v14;
  v38 = v37;
  v39 = PURoundRectToPixel(v35, v36, v16, v17);
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v30;
  v47 = v32;
  v48 = v34;
  v49 = v38;
  if (!CGRectEqualToRect(*&v46, *&v39))
  {
    v50 = [(NUCropModel *)self->_cropModel imageContainsRect:v35 withTol:v36, v16, v17, 0.000000953674316];
    v51 = "YES";
    v52 = v36;
    v53 = v35;
    v54 = v90;
    if ((v50 & 1) == 0)
    {
      v102.origin.x = v53;
      v102.origin.y = v52;
      v102.size.width = v16;
      v102.size.height = v17;
      MidX = CGRectGetMidX(v102);
      v103.origin.x = v53;
      v103.origin.y = v52;
      v103.size.width = v16;
      v103.size.height = v17;
      MidY = CGRectGetMidY(v103);
      v55 = 1.0;
      v56 = 0.0;
      do
      {
        if ([(NUCropModel *)self->_cropModel imageContainsRect:MidX - v16 * ((v55 + v56) * 0.5) * 0.5 withTol:MidY - v17 * ((v55 + v56) * 0.5) * 0.5, v16 * ((v55 + v56) * 0.5), v17 * ((v55 + v56) * 0.5), 0.000000953674316])
        {
          v56 = (v55 + v56) * 0.5;
        }

        else
        {
          v55 = (v55 + v56) * 0.5;
        }
      }

      while (v55 - v56 >= 0.0000152587891);
      v57 = (v55 + v56) * 0.5;
      v53 = MidX - v16 * v57 * 0.5;
      v52 = MidY - v17 * v57 * 0.5;
      v51 = "NO";
      v17 = v17 * v57;
      v16 = v16 * v57;
      v54 = v90;
    }

    if (self->_isDebugging)
    {
      v104.origin.x = v87;
      v104.origin.y = v88;
      v104.size.width = v89;
      v104.size.height = v54;
      v95 = v51;
      v58 = NSStringFromCGRect(v104);
      v59 = [v58 UTF8String];
      if (v4)
      {
        v60 = "YES";
      }

      else
      {
        v60 = "NO";
      }

      v91 = v60;
      v93 = v59;
      if ([(PUCropTransformedImageView *)self isTracking])
      {
        v61 = "YES";
      }

      else
      {
        v61 = "NO";
      }

      v86 = v61;
      [(PUCropTransformedImageView *)self orientation];
      v62 = PLOrientationName();
      v85 = [v62 UTF8String];
      v105.origin.x = v53;
      v105.origin.y = v52;
      v105.size.width = v16;
      v105.size.height = v17;
      v63 = NSStringFromCGRect(v105);
      v64 = [v63 UTF8String];
      [(PUCropPerspectiveView *)self _croppingRect];
      v65 = NSStringFromCGRect(v106);
      v66 = [v65 UTF8String];
      v107.origin.x = v87;
      v107.origin.y = v88;
      v107.size.width = v89;
      v107.size.height = v54;
      v67 = NSStringFromCGRect(v107);
      printf(" setImageCropRectFromViewCropRect: %s animated: %s\n  - isTracking = %s\n  - orientation = %s\n  - imageRect = %s\n  - croppingRect = %s\n  - cropRect = %s\n  - contained = %s\n", v93, v91, v86, v85, v64, v66, [v67 UTF8String], v95);
    }

    if (v16 > 1.0 && v17 > 1.0)
    {
      [(PUCropPerspectiveView *)self updateLayerTransformsAnimated:v4 viewCropRect:v87 modelCropRect:v88, v89, v54, v53, v52, v16, v17];
      [(NUCropModel *)self->_cropModel makeCurrentAspectRatioFreeForm];
      [(NUCropModel *)self->_cropModel setCropRect:v53, v52, v16, v17];
      cropModel = self->_cropModel;

      [(NUCropModel *)cropModel makeCurrentFreeFormAspectFixed];
      return;
    }

    v69 = PLUIGetLog();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v69, OS_LOG_TYPE_FAULT, "imageRect ended up empty", buf, 2u);
    }

LABEL_47:
  }
}

- (CGRect)validateViewCropRectAgainstModelCropRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (self->_isDebugging)
  {
    v8 = NSStringFromCGRect(a3);
    v9 = [v8 UTF8String];
    [(PUCropTransformedImageView *)self orientation];
    v10 = PLOrientationName();
    v11 = [v10 UTF8String];
    [(NUCropModel *)self->_cropModel cropRect];
    v12 = NSStringFromCGRect(v69);
    v13 = [v12 UTF8String];
    [(PUCropPerspectiveView *)self _croppingRect];
    v14 = NSStringFromCGRect(v70);
    printf(" validateViewCropRectAgainstModelCropRect: %s\n  - orientation = %s\n  - imageRect = %s\n  - croppingRect = %s\n", v9, v11, v13, [v14 UTF8String]);
  }

  [(PUCropPerspectiveView *)self _croppingRect];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v71.origin.x = x;
  v71.origin.y = y;
  v71.size.width = width;
  v71.size.height = height;
  v76 = CGRectInset(v71, 0.25, 0.25);
  v72.origin.x = v16;
  v72.origin.y = v18;
  v72.size.width = v20;
  v72.size.height = v22;
  if (!CGRectContainsRect(v72, v76))
  {
    [(NUCropModel *)self->_cropModel cropRect];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    [(PUCropPerspectiveView *)self imageCropRectForViewRect:x, y, width, height];
    v67 = v32;
    v68 = v31;
    v65 = v34;
    v66 = v33;
    if (([NUCropModel imageContainsRect:"imageContainsRect:withTol:" withTol:?]& 1) == 0)
    {
      v57 = v26;
      v58 = v24;
      v73.origin.x = v24;
      v73.origin.y = v26;
      v55 = v30;
      v56 = v28;
      v73.size.width = v28;
      v73.size.height = v30;
      v74 = CGRectInset(v73, 0.1, 0.1);
      v61 = v74.origin.y;
      v62 = v74.origin.x;
      v59 = v74.size.height;
      v60 = v74.size.width;
      v35 = 0.0;
      v36 = 1;
      v37 = 1.0;
      v38 = 1.0;
      v39 = 0.0;
      while (1)
      {
        v40 = (v39 + v38) * 0.5;
        v41 = (v36 & 1) != 0 ? (v39 + v38) * 0.5 : v39;
        v42 = v37;
        v43 = (v35 + v37) * 0.5;
        v44 = (v36 & 1) != 0 ? v35 : (v35 + v37) * 0.5;
        v45 = v66 * v41 + (1.0 - v41) * v60;
        v46 = v65 * v44 + (1.0 - v44) * v59;
        v63 = v67 * v44 + (1.0 - v44) * v61;
        v64 = v68 * v41 + (1.0 - v41) * v62;
        if ([(NUCropModel *)self->_cropModel imageContainsRect:v64 withTol:?])
        {
          break;
        }

        if (v36)
        {
          v38 = v40 * 0.1 + v38 * 0.9;
LABEL_18:
          v37 = v42;
          goto LABEL_20;
        }

        v37 = v43 * 0.1 + v42 * 0.9;
LABEL_20:
        v36 ^= 1u;
        if (v38 - v39 < 0.000000953674316 && v37 - v35 < 0.000000953674316)
        {
          if (v38 < 0.000000953674316 && v37 < 0.000000953674316)
          {
            v63 = v57;
            v64 = v58;
            v46 = v55;
            v45 = v56;
          }

          if (self->_isDebugging)
          {
            printf("  - mixX = (%f, %f)\n  - mixY = (%f, %f)\n", v39, v38, v35, v37);
          }

          [(PUCropPerspectiveView *)self viewCropRectForImageRect:v64, v63, v45, v46];
          x = v47;
          y = v48;
          width = v49;
          height = v50;
          goto LABEL_28;
        }
      }

      if (v36)
      {
        v39 = v40 * 0.1 + v39 * 0.9;
      }

      else
      {
        v35 = v43 * 0.1 + v35 * 0.9;
      }

      goto LABEL_18;
    }
  }

LABEL_28:
  v51 = x;
  v52 = y;
  v53 = width;
  v54 = height;
  result.size.height = v54;
  result.size.width = v53;
  result.origin.y = v52;
  result.origin.x = v51;
  return result;
}

- (CGPoint)imagePointForViewPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  memset(&v21, 0, sizeof(v21));
  [(NUCropModel *)self->_cropModel cropRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(PUCropPerspectiveView *)self _croppingRect];
  [(PUCropPerspectiveView *)self _modelSpaceToViewSpaceTransformWithModelCropRect:v5 currentViewCropRect:v7, v9, v11, v12, v13, v14, v15];
  CGAffineTransformInvert(&v21, &v20);
  v16 = vaddq_f64(*&v21.tx, vmlaq_n_f64(vmulq_n_f64(*&v21.c, y), *&v21.a, x));
  v17 = v16.f64[1];
  result.x = v16.f64[0];
  result.y = v17;
  return result;
}

- (CGRect)imageCropRectForViewRect:(CGRect)a3
{
  [(PUCropPerspectiveView *)self imageOrientedViewCropRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  MinX = CGRectGetMinX(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  MaxY = CGRectGetMaxY(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MaxX = CGRectGetMaxX(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  MinY = CGRectGetMinY(v21);
  [(PUCropPerspectiveView *)self _croppingRect];
  [(PUCropPerspectiveView *)self imageOrientedViewCropRect:?];
  memset(&v17, 0, sizeof(v17));
  [(NUCropModel *)self->_cropModel cropRect];
  [PUCropPerspectiveView _modelSpaceToViewSpaceTransformWithModelCropRect:"_modelSpaceToViewSpaceTransformWithModelCropRect:currentViewCropRect:" currentViewCropRect:?];
  CGAffineTransformInvert(&v17, &v16);
  v12 = v17.tx + MaxY * v17.c + v17.a * MinX;
  v13 = v17.ty + MaxY * v17.d + v17.b * MinX;
  v14 = v17.tx + MinY * v17.c + v17.a * MaxX - v12;
  v15 = v17.ty + MinY * v17.d + v17.b * MaxX - v13;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)viewCropRectForImageRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  MinX = CGRectGetMinX(a3);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MinY = CGRectGetMinY(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MaxX = CGRectGetMaxX(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MaxY = CGRectGetMaxY(v18);
  [(PUCropPerspectiveView *)self _croppingRect];
  [(PUCropPerspectiveView *)self imageOrientedViewCropRect:?];
  [(NUCropModel *)self->_cropModel cropRect];
  [PUCropPerspectiveView _modelSpaceToViewSpaceTransformWithModelCropRect:"_modelSpaceToViewSpaceTransformWithModelCropRect:currentViewCropRect:" currentViewCropRect:?];
  [(PUCropPerspectiveView *)self viewOrientedViewCropRect:MinY * 0.0 + 0.0 * MinX + 0.0, MaxY * 0.0 + 0.0 * MaxX + 0.0, MaxY * 0.0 + 0.0 * MaxX + 0.0 - (MinY * 0.0 + 0.0 * MinX + 0.0), MinY * 0.0 + 0.0 * MinX + 0.0 - (MaxY * 0.0 + 0.0 * MaxX + 0.0)];
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)imageOrientedViewCropRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  memset(&v7[1], 0, sizeof(CGAffineTransform));
  [(PUCropPerspectiveView *)self imageOrientedViewCropTransform];
  v7[0] = v7[1];
  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  return CGRectApplyAffineTransform(v8, v7);
}

- (CGRect)viewOrientedViewCropRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  memset(&v8, 0, sizeof(v8));
  [(PUCropPerspectiveView *)self imageOrientedViewCropTransform];
  CGAffineTransformInvert(&v8, &v7);
  v7 = v8;
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  return CGRectApplyAffineTransform(v9, &v7);
}

- (CGAffineTransform)imageOrientedViewCropTransform
{
  v5 = MEMORY[0x1E695EFD0];
  v27 = *(MEMORY[0x1E695EFD0] + 16);
  v28 = *MEMORY[0x1E695EFD0];
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v27;
  v26 = *(v5 + 32);
  *&retstr->tx = v26;
  [(PUCropTransformedImageView *)self canvasFrame];
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  MidX = CGRectGetMidX(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  MidY = CGRectGetMidY(v33);
  result = [(PUCropTransformedImageView *)self orientation];
  if (result <= 4)
  {
    if (result == 2)
    {
      v17 = *&retstr->c;
      *&v31.a = *&retstr->a;
      *&v31.c = v17;
      *&v31.tx = *&retstr->tx;
      CGAffineTransformTranslate(retstr, &v31, MidX, MidY);
      t1.a = -1.0;
      t1.b = 0.0;
      v15 = 1.0;
    }

    else if (result == 3)
    {
      v21 = *&retstr->c;
      *&v31.a = *&retstr->a;
      *&v31.c = v21;
      *&v31.tx = *&retstr->tx;
      CGAffineTransformTranslate(retstr, &v31, MidX, MidY);
      v15 = -1.0;
      t1.a = -1.0;
      t1.b = 0.0;
    }

    else
    {
      if (result != 4)
      {
        return result;
      }

      v14 = *&retstr->c;
      *&v31.a = *&retstr->a;
      *&v31.c = v14;
      *&v31.tx = *&retstr->tx;
      CGAffineTransformTranslate(retstr, &v31, MidX, MidY);
      t1.a = 1.0;
      t1.b = 0.0;
      v15 = -1.0;
    }

    t1.c = 0.0;
    t1.d = v15;
    goto LABEL_19;
  }

  if (result > 6)
  {
    if (result != 7)
    {
      if (result != 8)
      {
        return result;
      }

      v16 = *&retstr->c;
      *&v31.a = *&retstr->a;
      *&v31.c = v16;
      *&v31.tx = *&retstr->tx;
      CGAffineTransformTranslate(retstr, &v31, MidX, MidY);
      t1.a = 0.0;
      t1.b = width / height;
      t1.c = -(width / height);
      goto LABEL_12;
    }

    v20 = *&retstr->c;
    *&v31.a = *&retstr->a;
    *&v31.c = v20;
    *&v31.tx = *&retstr->tx;
    CGAffineTransformTranslate(retstr, &v31, MidX, MidY);
    *&t1.a = xmmword_1B3D0CEA0;
    v19 = -1.0;
    goto LABEL_16;
  }

  if (result == 5)
  {
    v18 = *&retstr->c;
    *&v31.a = *&retstr->a;
    *&v31.c = v18;
    *&v31.tx = *&retstr->tx;
    CGAffineTransformTranslate(retstr, &v31, MidX, MidY);
    *&t1.a = xmmword_1B3D092D0;
    v19 = 1.0;
LABEL_16:
    t1.c = v19;
    t1.d = 0.0;
LABEL_19:
    t1.ty = 0.0;
    goto LABEL_20;
  }

  *&v31.a = v28;
  *&v31.c = v27;
  *&v31.tx = v26;
  v13 = width / height;
  CGAffineTransformTranslate(retstr, &v31, MidX, MidY);
  t1.a = 0.0;
  t1.b = -v13;
  t1.c = v13;
LABEL_12:
  t1.ty = 0.0;
  t1.d = 0.0;
LABEL_20:
  t1.tx = 0.0;
  v22 = *&retstr->c;
  *&t2.a = *&retstr->a;
  *&t2.c = v22;
  *&t2.tx = *&retstr->tx;
  CGAffineTransformConcat(&v31, &t1, &t2);
  v23 = *&v31.c;
  *&retstr->a = *&v31.a;
  *&retstr->c = v23;
  *&retstr->tx = *&v31.tx;
  v24 = *&retstr->c;
  *&t1.a = *&retstr->a;
  *&t1.c = v24;
  *&t1.tx = *&retstr->tx;
  result = CGAffineTransformTranslate(&v31, &t1, -MidX, -MidY);
  v25 = *&v31.c;
  *&retstr->a = *&v31.a;
  *&retstr->c = v25;
  *&retstr->tx = *&v31.tx;
  return result;
}

- (CGAffineTransform)_modelSpaceToViewSpaceTransformWithModelCropRect:(SEL)a3 currentViewCropRect:(CGRect)a4
{
  height = a5.size.height;
  width = a5.size.width;
  v55 = a4.size.width;
  v6 = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  [(PUCropTransformedImageView *)self _imageBounds];
  v11 = v10;
  v13 = v12;
  [(PUCropTransformedImageView *)self _imageBounds];
  PLRectGetCenter();
  v59 = v15;
  v60 = v14;
  [(PUCropPerspectiveView *)self masterImageSize];
  PLRectGetCenter();
  v63 = v16;
  v64 = v17;
  PLRectGetCenter();
  v61 = v18;
  v62 = v19;
  PLRectGetCenter();
  v56 = v21;
  v57 = v20;
  if (v11 >= 1.0)
  {
    v22 = v11;
  }

  else
  {
    v22 = 1.0;
  }

  v23 = width / v22;
  if (v13 >= 1.0)
  {
    v24 = v13;
  }

  else
  {
    v24 = 1.0;
  }

  v25 = height / v24;
  if (v23 >= v25)
  {
    v26 = v23;
  }

  else
  {
    v26 = v25;
  }

  [(PUCropPerspectiveView *)self masterImageSize];
  if (v27 < 1.0)
  {
    v27 = 1.0;
  }

  v29 = v11 / v27;
  if (v28 < 1.0)
  {
    v28 = 1.0;
  }

  v30 = v13 / v28;
  if (v29 >= v30)
  {
    v31 = v29;
  }

  else
  {
    v31 = v30;
  }

  [(PUCropPerspectiveView *)self _viewScaleWithModelCropRect:x, y, v55, v6];
  v33 = v32;
  v34 = MEMORY[0x1E695EFD0];
  v35 = *MEMORY[0x1E695EFD0];
  v36 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v36;
  v37 = *(v34 + 32);
  *&retstr->tx = v37;
  *&v66.a = v35;
  *&v66.c = v36;
  *&v66.tx = v37;
  CGAffineTransformTranslate(retstr, &v66, v57, v56);
  v38 = *&retstr->c;
  *&v65.a = *&retstr->a;
  *&v65.c = v38;
  *&v65.tx = *&retstr->tx;
  CGAffineTransformScale(&v66, &v65, v33, v33);
  v39 = *&v66.c;
  *&retstr->a = *&v66.a;
  *&retstr->c = v39;
  *&retstr->tx = *&v66.tx;
  v40 = *&retstr->c;
  *&v65.a = *&retstr->a;
  *&v65.c = v40;
  *&v65.tx = *&retstr->tx;
  CGAffineTransformScale(&v66, &v65, v26, v26);
  v41 = *&v66.c;
  *&retstr->a = *&v66.a;
  *&retstr->c = v41;
  *&retstr->tx = *&v66.tx;
  v42 = *&retstr->c;
  *&v65.a = *&retstr->a;
  *&v65.c = v42;
  *&v65.tx = *&retstr->tx;
  CGAffineTransformTranslate(&v66, &v65, -v60, -v59);
  v43 = *&v66.c;
  *&retstr->a = *&v66.a;
  *&retstr->c = v43;
  *&retstr->tx = *&v66.tx;
  v44 = *&retstr->c;
  *&v65.a = *&retstr->a;
  *&v65.c = v44;
  *&v65.tx = *&retstr->tx;
  CGAffineTransformScale(&v66, &v65, v31, v31);
  v45 = *&v66.c;
  *&retstr->a = *&v66.a;
  *&retstr->c = v45;
  *&retstr->tx = *&v66.tx;
  v46 = *&retstr->c;
  *&v65.a = *&retstr->a;
  *&v65.c = v46;
  *&v65.tx = *&retstr->tx;
  CGAffineTransformTranslate(&v66, &v65, -(v61 - v63), v62 - v64);
  v47 = *&v66.c;
  *&retstr->a = *&v66.a;
  *&retstr->c = v47;
  *&retstr->tx = *&v66.tx;
  [(PUCropPerspectiveView *)self masterImageSize];
  v48 = *&retstr->c;
  *&v65.a = *&retstr->a;
  *&v65.c = v48;
  *&v65.tx = *&retstr->tx;
  CGAffineTransformTranslate(&v66, &v65, 0.0, v49);
  v50 = *&v66.c;
  *&retstr->a = *&v66.a;
  *&retstr->c = v50;
  *&retstr->tx = *&v66.tx;
  v51 = *&retstr->c;
  *&v65.a = *&retstr->a;
  *&v65.c = v51;
  *&v65.tx = *&retstr->tx;
  result = CGAffineTransformScale(&v66, &v65, 1.0, -1.0);
  v53 = *&v66.c;
  *&retstr->a = *&v66.a;
  *&retstr->c = v53;
  *&retstr->tx = *&v66.tx;
  return result;
}

- (double)_viewScaleWithModelCropRect:(CGRect)a3
{
  [(PUCropPerspectiveView *)self _zoomScaleForModelCropRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  [(PUCropGestureHandler *)self->_gestureHandler zoomOverflow];
  return v5 + v6;
}

- (double)_zoomScaleForCurrentCropRectAndModelRect
{
  [(NUCropModel *)self->_cropModel cropRect];

  [(PUCropPerspectiveView *)self _zoomScaleForModelCropRect:?];
  return result;
}

- (double)_zoomScaleForModelCropRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  [(PUCropPerspectiveView *)self masterImageSize:a3.origin.x];
  v7 = 1.0;
  if (width >= 1.0)
  {
    v8 = width;
  }

  else
  {
    v8 = 1.0;
  }

  result = v5 / v8;
  if (height >= 1.0)
  {
    v7 = height;
  }

  v10 = v6 / v7;
  if (result >= v10)
  {
    return v10;
  }

  return result;
}

- (CGRect)_fullCropRect
{
  [(PUCropTransformedImageView *)self _imageBounds];
  v4 = v3;
  v6 = v5;
  [(PUCropTransformedImageView *)self canvasFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(PUCropPerspectiveView *)self _sizeRotatedIfNeeded:v4, v6];
  v17 = PURectWithSizeThatFitsInRect(v15, v16, v8, v10, v12, v14);

  v21 = PURoundRectToPixel(v17, v18, v19, v20);
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)setGainMapImage:(CGImage *)a3
{
  gainMapImage = self->_gainMapImage;
  if (gainMapImage != a3)
  {
    CGImageRelease(gainMapImage);
    self->_gainMapImage = CGImageRetain(a3);

    [(PUCropPerspectiveView *)self _updateImageModulation];
  }
}

- (void)_updateImageModulation
{
  v2 = self;
  if ([(PUCropTransformedImageView *)v2 shouldEnableImageModulation])
  {
    v3 = v2->_imageModulationManager;
    if (!v3)
    {
      v4 = [(PUCropPerspectiveView *)v2 window];
      v3 = [v4 px_imageModulationManager];

      objc_storeStrong(&v2->_imageModulationManager, v3);
    }

    v5 = v2->_imageLayerModulator;
    if (!v5)
    {
      v6 = [(PUCropTransformedImageView *)v2 imageModulationOptions];
      v5 = [(PXImageModulationManager *)v3 checkoutImageLayerModulatorWithOptions:v6, v7];
      objc_storeStrong(&v2->_imageLayerModulator, v5);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__PUCropPerspectiveView__updateImageModulation__block_invoke;
    v8[3] = &unk_1E7B7F3B8;
    v8[4] = v2;
    [(PXImageLayerModulator *)v5 performChanges:v8];
  }
}

void __47__PUCropPerspectiveView__updateImageModulation__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 816);
  v4 = a2;
  [v4 setLayer:v3];
  [v4 setGainMapImage:*(*(a1 + 32) + 808)];
  [*(a1 + 32) gainMapValue];
  [v4 setGainMapValue:?];
  [v4 setDisplayingOpaqueContent:0];
}

- (void)_invalidateImageLayerModulator
{
  imageLayerModulator = self->_imageLayerModulator;
  if (imageLayerModulator)
  {
    imageModulationManager = self->_imageModulationManager;
    v6 = imageLayerModulator;
    [(PXImageModulationManager *)imageModulationManager checkInImageLayerModulator:v6];
    v5 = self->_imageLayerModulator;
    self->_imageLayerModulator = 0;
  }
}

- (void)_invalidateImageModulationManager
{
  [(PUCropPerspectiveView *)self _invalidateImageLayerModulator];
  imageModulationManager = self->_imageModulationManager;
  self->_imageModulationManager = 0;
}

- (CGSize)_sizeRotatedIfNeeded:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(PLImageGeometry *)self->_imageGeometry isSizeInverted];
  if (v5)
  {
    v6 = height;
  }

  else
  {
    v6 = width;
  }

  if (v5)
  {
    v7 = width;
  }

  else
  {
    v7 = height;
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (void)mediaViewDidFinishRendering:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  value = self->_cachedVideoSeekTime.value;
  flags = self->_cachedVideoSeekTime.flags;
  timescale = self->_cachedVideoSeekTime.timescale;
  if (flags)
  {
    epoch = self->_cachedVideoSeekTime.epoch;
    v7 = [(PUCropTransformedImageView *)self videoMediaView];
    v8 = [v7 player];
    v10 = value;
    v11 = timescale;
    v12 = flags;
    v13 = epoch;
    [v8 seekToTime:&v10 exact:1];

    v9 = MEMORY[0x1E6960C70];
    *&self->_cachedVideoSeekTime.value = *MEMORY[0x1E6960C70];
    self->_cachedVideoSeekTime.epoch = *(v9 + 16);
  }

  if ([v4 loopsVideoPlayback])
  {
    [v4 _startVideoPlayback];
  }

  [(PUCropPerspectiveView *)self updateLayerTransformsAnimated:1];
}

- (void)setImageModulationOptions:(id)a3
{
  v3 = *&a3.var1;
  var0 = a3.var0;
  if (a3.var0 != [(PUCropTransformedImageView *)self imageModulationOptions]|| *&v3 != v6)
  {
    v7.receiver = self;
    v7.super_class = PUCropPerspectiveView;
    [(PUCropTransformedImageView *)&v7 setImageModulationOptions:var0, v3];
    [(PUCropPerspectiveView *)self _invalidateImageLayerModulator];
    [(PUCropPerspectiveView *)self _updateImageModulation];
  }
}

- (void)setShouldEnableImageModulation:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUCropPerspectiveView;
  [(PUCropTransformedImageView *)&v4 setShouldEnableImageModulation:a3];
  [(PUCropPerspectiveView *)self _invalidateImageLayerModulator];
  [(PUCropPerspectiveView *)self _updateImageModulation];
}

- (void)_setupMediaWithComposition:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PUCropPerspectiveView *)self tearDownMediaViewAndLayers];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69B3DC0]);
    [(PUCropTransformedImageView *)self canvasFrame];
    v6 = [v5 initWithFrame:?];
    [(PUCropTransformedImageView *)self setVideoMediaView:v6];
    v7 = [v6 _renderer];
    [v7 setDisplayType:2];

    [v6 setAutoresizingMask:18];
    [(PUCropPerspectiveView *)self addSubview:v6];
    [v6 setZoomScale:1.0];
    [v6 setVideoEnabled:1 animated:0];
    v8 = [MEMORY[0x1E69BDEF8] iosCropToolFilter];
    v13[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [v6 setPipelineFilters:v9];

    [v6 setComposition:v4];
    [v6 setMuted:self->_muted];
    [v6 setDelegate:self];
    v10 = [v6 _videoPlayerView];
    [(CALayer *)self->_mediaLayer removeFromSuperlayer];
    v11 = [v10 layer];
    mediaLayer = self->_mediaLayer;
    self->_mediaLayer = v11;

    [(CALayer *)self->_mediaSuperlayer addSublayer:self->_mediaLayer];
    [(PUCropTransformedImageView *)self canvasFrame];
    [v10 setFrame:?];
    [v6 removeFromSuperview];
  }

  [(PUCropPerspectiveView *)self setNeedsLayerTransformsUpdateAnimated:0];
}

- (void)tearDownMediaViewAndLayers
{
  [(PUCropGestureHandler *)self->_gestureHandler tearDown];
  v3 = [(PUCropTransformedImageView *)self videoMediaView];

  if (v3)
  {
    v4 = [(PUCropTransformedImageView *)self videoMediaView];
    v5 = [v4 _videoPlayerView];
    [v5 dispose];

    [(PUCropTransformedImageView *)self setVideoMediaView:0];
    [(CALayer *)self->_mediaLayer removeFromSuperlayer];
    mediaLayer = self->_mediaLayer;
    self->_mediaLayer = 0;
  }
}

- (void)setVideoComposition:(id)a3 withSeekTime:(id *)a4
{
  v9.receiver = self;
  v9.super_class = PUCropPerspectiveView;
  v8 = *a4;
  v6 = a3;
  [(PUCropTransformedImageView *)&v9 setVideoComposition:v6 withSeekTime:&v8];
  [(PUCropPerspectiveView *)self _setupMediaWithComposition:v6, *&v8.var0, v8.var3];

  var3 = a4->var3;
  *&self->_cachedVideoSeekTime.value = *&a4->var0;
  self->_cachedVideoSeekTime.epoch = var3;
}

- (void)setAutoloopComposition:(id)a3
{
  v6.receiver = self;
  v6.super_class = PUCropPerspectiveView;
  v4 = a3;
  [(PUCropTransformedImageView *)&v6 setAutoloopComposition:v4];
  [(PUCropPerspectiveView *)self _setupMediaWithComposition:v4, v6.receiver, v6.super_class];

  v5 = [(PUCropTransformedImageView *)self videoMediaView];
  [v5 setLoopsVideoPlayback:1];
}

- (void)setImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = PUCropPerspectiveView;
  [(PUCropTransformedImageView *)&v9 setImageSize:?];
  v6 = [MEMORY[0x1E6979518] disableActions];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(PUCropTransformedImageView *)self _imageBounds];
  [(CALayer *)self->_imageLayer setBounds:?];
  v7 = [MEMORY[0x1E69BE490] geometryWithInputSize:-[PUCropTransformedImageView orientation](self initialOrientation:{"orientation"), width, height}];
  imageGeometry = self->_imageGeometry;
  self->_imageGeometry = v7;

  [(PUCropPerspectiveView *)self setNeedsLayerTransformsUpdateAnimated:0];
  [MEMORY[0x1E6979518] setDisableActions:v6];
  [(PUCropPerspectiveView *)self _updateImageModulation];
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(PUCropTransformedImageView *)self image];

  if (v5 != v4)
  {
    v25.receiver = self;
    v25.super_class = PUCropPerspectiveView;
    [(PUCropTransformedImageView *)&v25 setImage:v4];
    v6 = [MEMORY[0x1E6979518] disableActions];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [(PUCropTransformedImageView *)self _imageBounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [v4 CGImage];
    [(CALayer *)self->_imageLayer setContents:v15];
    [(CALayer *)self->_imageLayer setBounds:v8, v10, v12, v14];
    ColorSpace = CGImageGetColorSpace(v15);
    v17 = CGColorSpaceUsesITUR_2100TF(ColorSpace);
    v18 = CGColorSpaceUsesExtendedRange(ColorSpace);
    v19 = MEMORY[0x1E69792A0];
    if (!v17 && !v18)
    {
      v19 = MEMORY[0x1E69792A8];
    }

    [(CALayer *)self->_imageLayer setPreferredDynamicRange:*v19];
    v20 = MEMORY[0x1E69BE490];
    [v4 size];
    v23 = [v20 geometryWithInputSize:-[PUCropTransformedImageView orientation](self initialOrientation:{"orientation"), v21, v22}];
    imageGeometry = self->_imageGeometry;
    self->_imageGeometry = v23;

    [(PUCropPerspectiveView *)self setNeedsLayerTransformsUpdateAnimated:0];
    [MEMORY[0x1E6979518] setDisableActions:v6];
    [(PUCropPerspectiveView *)self _updateImageModulation];
  }
}

- (void)_setCropModel:(id)a3
{
  v5 = a3;
  if (self->_cropModel != v5)
  {
    v18 = v5;
    objc_storeStrong(&self->_cropModel, a3);
    v6 = [[PUCropGestureHandler alloc] initWithCropModel:v18];
    gestureHandler = self->_gestureHandler;
    self->_gestureHandler = v6;

    [(PUCropGestureHandler *)self->_gestureHandler setDelegate:self];
    [(PUCropPerspectiveView *)self masterImageSize];
    v9 = v8;
    v11 = v10;
    [(PUCropPerspectiveView *)self _croppingRect];
    [(PUCropPerspectiveView *)self _sizeRotatedIfNeeded:v12, v13];
    if (v14 < 1.0)
    {
      v14 = 1.0;
    }

    v16 = v9 / v14;
    if (v15 < 1.0)
    {
      v15 = 1.0;
    }

    v17 = v11 / v15;
    if (v16 >= v17)
    {
      v16 = v17;
    }

    [(PUCropGestureHandler *)self->_gestureHandler setMaximumZoomScale:v16];
    v5 = v18;
    if (self->_isDebugging)
    {
      [(PUCropGestureHandler *)self->_gestureHandler setLoggingEnabled:1];
      v5 = v18;
    }
  }
}

- (void)setOrientation:(int64_t)a3
{
  if ((PLOrientationIsValid() & 1) == 0)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PUCropPerspectiveView.m" lineNumber:459 description:@"Orientation must be valid"];
  }

  v6 = [(PUCropTransformedImageView *)self orientation];
  if (v6 != a3)
  {
    v7 = v6;
    v24.receiver = self;
    v24.super_class = PUCropPerspectiveView;
    [(PUCropTransformedImageView *)&v24 setOrientation:a3];
    [(PLImageGeometry *)self->_imageGeometry setAppliedOrientation:a3];
    if ((a3 != 5 || v7 != 6) && (a3 != 6 || v7 != 5) && (a3 != 7 || v7 != 8) && (a3 != 8 || v7 != 7))
    {
      memset(&v23, 0, sizeof(v23));
      imageGeometry = self->_imageGeometry;
      if (imageGeometry)
      {
        [(PLImageGeometry *)imageGeometry transformFromOrientation:v7];
      }

      else
      {
        memset(&v23, 0, 32);
      }

      *&v23.tx = 0uLL;
      [(PUCropTransformedImageView *)self canvasFrame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      [(PUCropPerspectiveView *)self _croppingRect];
      v22 = v23;
      v26 = CGRectApplyAffineTransform(v25, &v22);
      v17 = PURectWithSizeThatFitsInRect(v26.size.width, v26.size.height, v10, v12, v14, v16);
      PURoundRectToPixel(v17, v18, v19, v20);
      [(NUCropModel *)self->_cropModel cropRect];
      [PUCropPerspectiveView setModelCropRect:"setModelCropRect:viewCropRect:" viewCropRect:?];
    }

    [(PUCropPerspectiveView *)self setNeedsLayerTransformsUpdateAnimated:0];
  }
}

- (void)setNeedsLayerTransformsUpdateAnimated:(BOOL)a3
{
  self->_needsLayerTransformUpdate = 1;
  self->_layerTransformUpdateAnimated |= a3;
  [(PUCropPerspectiveView *)self setNeedsLayout];
}

- (void)setStraightenAngle:(double)a3
{
  [(PUCropTransformedImageView *)self straightenAngle];
  v6 = v5;
  v7.receiver = self;
  v7.super_class = PUCropPerspectiveView;
  [(PUCropTransformedImageView *)&v7 setStraightenAngle:a3];
  if (v6 != a3 && (![(PUCropGestureHandler *)self->_gestureHandler gesture]|| [(PUCropGestureHandler *)self->_gestureHandler gesture]== 2))
  {
    [(PUCropGestureHandler *)self->_gestureHandler setRollAngle:a3];
  }
}

- (void)setYawAngle:(double)a3
{
  [(PUCropTransformedImageView *)self yawAngle];
  v6 = v5;
  v7.receiver = self;
  v7.super_class = PUCropPerspectiveView;
  [(PUCropTransformedImageView *)&v7 setYawAngle:a3];
  if (v6 != a3 && (![(PUCropGestureHandler *)self->_gestureHandler gesture]|| [(PUCropGestureHandler *)self->_gestureHandler gesture]== 3))
  {
    [(PUCropGestureHandler *)self->_gestureHandler setYawAngle:a3];
  }
}

- (void)setPitchAngle:(double)a3
{
  [(PUCropTransformedImageView *)self pitchAngle];
  v6 = v5;
  v7.receiver = self;
  v7.super_class = PUCropPerspectiveView;
  [(PUCropTransformedImageView *)&v7 setPitchAngle:a3];
  if (v6 != a3 && (![(PUCropGestureHandler *)self->_gestureHandler gesture]|| [(PUCropGestureHandler *)self->_gestureHandler gesture]== 1))
  {
    [(PUCropGestureHandler *)self->_gestureHandler setPitchAngle:a3];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUCropPerspectiveView;
  [(PUCropPerspectiveView *)&v3 layoutSubviews];
  if (self->_needsLayerTransformUpdate)
  {
    self->_needsLayerTransformUpdate = 0;
    [(PUCropPerspectiveView *)self updateLayerTransformsAnimated:self->_layerTransformUpdateAnimated];
  }
}

- (void)setCanvasFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PUCropTransformedImageView *)self canvasFrame];
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  self->_needsLayerTransformUpdate |= !CGRectEqualToRect(v9, v10);
  v8.receiver = self;
  v8.super_class = PUCropPerspectiveView;
  [(PUCropTransformedImageView *)&v8 setCanvasFrame:x, y, width, height];
}

- (void)setModelCropRect:(CGRect)a3 viewCropRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  if (self->_isDebugging)
  {
    v13 = NSStringFromCGRect(a3);
    v14 = [v13 UTF8String];
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v15 = NSStringFromCGRect(v17);
    printf(" setModelCropRect:%s viewCropRect:%s\n", v14, [v15 UTF8String]);
  }

  [(NUCropModel *)self->_cropModel setCropRect:v11, v10, v9, v8];
  v16.receiver = self;
  v16.super_class = PUCropPerspectiveView;
  [(PUCropTransformedImageView *)&v16 setModelCropRect:v11 viewCropRect:v10, v9, v8, x, y, width, height];
}

- (void)_resetCropRect
{
  v3 = [(NUCropModel *)self->_cropModel aspectRatio];
  v5 = v4;
  [(NUCropModel *)self->_cropModel reset];
  [(NUCropModel *)self->_cropModel setAspectRatio:v3, v5];
  v8.receiver = self;
  v8.super_class = PUCropPerspectiveView;
  [(PUCropTransformedImageView *)&v8 setPitchAngle:0.0];
  v7.receiver = self;
  v7.super_class = PUCropPerspectiveView;
  [(PUCropTransformedImageView *)&v7 setYawAngle:0.0];
  v6.receiver = self;
  v6.super_class = PUCropPerspectiveView;
  [(PUCropTransformedImageView *)&v6 setStraightenAngle:0.0];
  [(PUCropGestureHandler *)self->_gestureHandler reset];
}

- (void)updateLayerTransformsAnimated:(BOOL)a3 viewCropRect:(CGRect)a4 modelCropRect:(CGRect)a5
{
  if (self->_needsUpdateLayerTransforms)
  {
    v116[18] = v14;
    v116[19] = v13;
    v116[20] = v12;
    v116[21] = v11;
    v116[22] = v10;
    v116[23] = v9;
    v116[24] = v8;
    v116[25] = v7;
    v116[36] = v5;
    v116[37] = v6;
    height = a5.size.height;
    width = a5.size.width;
    v17 = a4.size.height;
    v18 = a4.size.width;
    y = a4.origin.y;
    v20 = a4.origin.x;
    v22 = self->_layerTransformUpdateAnimated || a3;
    self->_needsUpdateLayerTransforms = 0;
    v23 = a5.origin.x;
    v24 = a5.origin.y;
    [(PUCropTransformedImageView *)self canvasFrame];
    PLRectGetCenter();
    v103 = v25;
    v104 = v20;
    point = v26;
    PLRectGetCenter();
    v100 = v27;
    v98 = v28;
    [(NUCropModel *)self->_cropModel masterImageRect];
    PLRectGetCenter();
    v96 = v29;
    v94 = v30;
    PLRectGetCenter();
    v93 = v31;
    v33 = v32;
    [(PUCropTransformedImageView *)self imageSize];
    [(PUCropPerspectiveView *)self _sizeRotatedIfNeeded:?];
    if (v34 < 1.0)
    {
      v34 = 1.0;
    }

    v105 = v18;
    v106 = v17;
    v36 = v18 / v34;
    if (v35 < 1.0)
    {
      v35 = 1.0;
    }

    v37 = v17 / v35;
    if (v36 < v37)
    {
      v36 = v37;
    }

    x = v36;
    [(PUCropTransformedImageView *)self imageSize];
    v39 = v38;
    v41 = v40;
    [(NUCropModel *)self->_cropModel masterImageSize];
    if (v42 < 1.0)
    {
      v42 = 1.0;
    }

    v44 = v39 / v42;
    if (v43 < 1.0)
    {
      v43 = 1.0;
    }

    v45 = v41 / v43;
    if (v44 >= v45)
    {
      v46 = v44;
    }

    else
    {
      v46 = v45;
    }

    v102 = width;
    v47 = width;
    v48 = height;
    [(PUCropPerspectiveView *)self _viewScaleWithModelCropRect:v23, v24, v47, height];
    v50 = v49;
    if (self->_isDebugging)
    {
      v51 = "YES";
      if (!v22)
      {
        v51 = "NO";
      }

      v91 = v51;
      [(PUCropTransformedImageView *)self orientation];
      v52 = PLOrientationName();
      v90 = [v52 UTF8String];
      v120.origin.x = v23;
      v120.origin.y = v24;
      v120.size.width = v102;
      v120.size.height = height;
      NSStringFromCGRect(v120);
      v53 = v92 = v22;
      v89 = [v53 UTF8String];
      v121.origin.x = v104;
      v121.origin.y = y;
      v121.size.width = v105;
      v121.size.height = v106;
      v54 = NSStringFromCGRect(v121);
      v55 = [v54 UTF8String];
      v117.x = v103;
      v117.y = point;
      v56 = NSStringFromCGPoint(v117);
      v57 = [v56 UTF8String];
      v118.x = v96;
      v118.y = v94;
      v58 = NSStringFromCGPoint(v118);
      v59 = [v58 UTF8String];
      v119.x = v93;
      v119.y = v33;
      v60 = NSStringFromCGPoint(v119);
      printf(" updateLayerTransformsAnimated: %s\n  - orientation = %s\n  - modelCropRect: = %s\n  - croppingRect: = %s\n  - canvasFrameCenter: = %s\n  - imageCenter: = %s\n  - modelCropCenter: = %s\n  - uiCroppingRectToImageScale: = %f\n  - uiImageToMasterImageScale: = %f\n  - imageZoomScale: = %f\n\n", v91, v90, v89, v55, v57, v59, [v60 UTF8String], x, v46, v50);

      v22 = v92;
    }

    currentAnimation = self->_currentAnimation;
    if (currentAnimation)
    {
      [(_UIDynamicAnimation *)currentAnimation stop];
      v62 = self->_currentAnimation;
      self->_currentAnimation = 0;
    }

    v116[0] = MEMORY[0x1E69E9820];
    v116[1] = 3221225472;
    v116[2] = __82__PUCropPerspectiveView_updateLayerTransformsAnimated_viewCropRect_modelCropRect___block_invoke;
    v116[3] = &unk_1E7B76DB8;
    v116[4] = self;
    *&v116[5] = v50;
    *&v116[6] = v93;
    *&v116[7] = v33;
    v116[8] = v100;
    v116[9] = v98;
    *&v116[10] = x;
    *&v116[11] = v46;
    *&v116[12] = v96;
    *&v116[13] = v94;
    v116[14] = 0x3FF0000000000000;
    *&v116[15] = v96;
    *&v116[16] = v94;
    v115[0] = MEMORY[0x1E69E9820];
    v115[1] = 3221225472;
    v115[2] = __82__PUCropPerspectiveView_updateLayerTransformsAnimated_viewCropRect_modelCropRect___block_invoke_2;
    v115[3] = &unk_1E7B76DE0;
    v115[4] = self;
    *&v115[5] = v50;
    *&v115[6] = v93;
    *&v115[7] = v33;
    v115[8] = v100;
    v115[9] = v98;
    *&v115[10] = x;
    v63 = [(PUCropPerspectiveView *)self _animateValueFromValue:v116 toValue:v115 interpolation:!v22 completion:1.0];
    v64 = self->_currentAnimation;
    self->_currentAnimation = v63;

    if (self->_debugLayer)
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:!v22];
      cropModel = self->_cropModel;
      [(NUCropModel *)cropModel pitchRadians];
      v67 = v66;
      [(NUCropModel *)self->_cropModel yawRadians];
      v69 = v68;
      [(NUCropModel *)self->_cropModel rollRadians];
      [(NUCropModel *)cropModel _getBoundingQuadFromPitch:v67 yaw:v69 roll:v70 withExpansionTol:0.00001];
      xa = v71;
      v97 = v72;
      v99 = v73;
      v101 = v74;
      Mutable = CGPathCreateMutable();
      v76 = vsubq_f64(vmaxnmq_f64(vmaxnmq_f64(xa, v97), vmaxnmq_f64(v101, v99)), vminnmq_f64(vminnmq_f64(xa, v97), vminnmq_f64(v101, v99)));
      v77 = 400.0 / sqrt(vaddvq_f64(vmulq_f64(v76, v76)));
      __asm { FMOV            V1.2D, #0.25 }

      v95 = vmulq_f64(vaddq_f64(v99, vaddq_f64(v101, vaddq_f64(xa, v97))), _Q1);
      CGPathMoveToPoint(Mutable, 0, xa.f64[0], xa.f64[1]);
      CGPathAddLineToPoint(Mutable, 0, v97.f64[0], v97.f64[1]);
      CGPathAddLineToPoint(Mutable, 0, v99.f64[0], v99.f64[1]);
      CGPathAddLineToPoint(Mutable, 0, v101.f64[0], v101.f64[1]);
      CGPathAddLineToPoint(Mutable, 0, xa.f64[0], xa.f64[1]);
      CGPathCloseSubpath(Mutable);
      [(CAShapeLayer *)self->_debugQuadLayer setPath:Mutable];
      [(CAShapeLayer *)self->_debugQuadLayer setPosition:-v95.f64[0], 300.0 - v95.f64[1]];
      CATransform3DMakeScale(&v114, 1.0, -1.0, 1.0);
      debugQuadLayer = self->_debugQuadLayer;
      v113 = v114;
      [(CAShapeLayer *)debugQuadLayer setTransform:&v113];
      CGPathRelease(Mutable);
      v122.origin.x = v23;
      v122.origin.y = v24;
      v122.size.width = v102;
      v122.size.height = v48;
      v84 = CGPathCreateWithRect(v122, 0);
      [(CAShapeLayer *)self->_debugCropRectLayer setPath:v84];
      [(CAShapeLayer *)self->_debugCropRectLayer setPosition:-v95.f64[0], 300.0 - v95.f64[1]];
      CATransform3DMakeScale(&v112, 1.0, -1.0, 1.0);
      debugCropRectLayer = self->_debugCropRectLayer;
      v113 = v112;
      [(CAShapeLayer *)debugCropRectLayer setTransform:&v113];
      CGPathRelease(v84);
      v123.origin.x = v104;
      v123.origin.y = y;
      v123.size.width = v105;
      v123.size.height = v106;
      v86 = CGPathCreateWithRect(v123, 0);
      [(CAShapeLayer *)self->_debugViewRectLayer setPath:v86];
      [(CAShapeLayer *)self->_debugViewRectLayer setPosition:-v103 / v77, -point / v77];
      CATransform3DMakeScale(&v111, 1.0 / v77, 1.0 / v77, 1.0);
      debugViewRectLayer = self->_debugViewRectLayer;
      v113 = v111;
      [(CAShapeLayer *)debugViewRectLayer setTransform:&v113];
      CGPathRelease(v86);
      [(CALayer *)self->_debugLayer setPosition:v103, point];
      [(CALayer *)self->_debugLayer setZPosition:6000.0];
      CATransform3DMakeScale(&v110, v77, v77, 1.0);
      debugLayer = self->_debugLayer;
      v113 = v110;
      [(CALayer *)debugLayer setTransform:&v113];
      [MEMORY[0x1E6979518] commit];
    }
  }
}

uint64_t __82__PUCropPerspectiveView_updateLayerTransformsAnimated_viewCropRect_modelCropRect___block_invoke(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 712);
  [*(v3 + 696) pitchRadians];
  v50 = v4 + a2 * (v5 - v4);
  v6 = *(a1 + 32);
  v7 = *(v6 + 720);
  [*(v6 + 696) yawRadians];
  v9 = v7 + a2 * (v8 - v7);
  v10 = *(a1 + 32);
  v11 = *(v10 + 728);
  [*(v10 + 696) rollRadians];
  v13 = *(a1 + 32);
  v14 = v11 + a2 * (v12 - v11);
  v15 = *(v13 + 736) + a2 * (*(a1 + 40) - *(v13 + 736));
  v16 = *(v13 + 744);
  [*(v13 + 632) panRubberBandOffset];
  v18 = v16 + a2 * (v17 - v16);
  v19 = *(a1 + 32);
  v20 = *(v19 + 752);
  [*(v19 + 632) panRubberBandOffset];
  v22 = v20 + a2 * (v21 - v20);
  v23 = *(a1 + 32);
  v24 = *(v23 + 760) + a2 * (*(a1 + 48) - *(v23 + 760));
  v25 = *(v23 + 768) + a2 * (*(a1 + 56) - *(v23 + 768));
  v51 = vmlaq_n_f64(*(v23 + 776), vsubq_f64(*(a1 + 64), *(v23 + 776)), a2);
  v26 = *(v23 + 792) + a2 * (*(a1 + 80) - *(v23 + 792));
  v27 = *(MEMORY[0x1E69792E8] + 80);
  *&v56.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&v56.m33 = v27;
  v28 = *(MEMORY[0x1E69792E8] + 112);
  *&v56.m41 = *(MEMORY[0x1E69792E8] + 96);
  *&v56.m43 = v28;
  v29 = *(MEMORY[0x1E69792E8] + 16);
  *&v56.m11 = *MEMORY[0x1E69792E8];
  *&v56.m13 = v29;
  v30 = *(MEMORY[0x1E69792E8] + 48);
  *&v56.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v56.m23 = v30;
  *&v55.m31 = *&v56.m31;
  *&v55.m33 = v27;
  *&v55.m41 = *&v56.m41;
  *&v55.m43 = v28;
  *&v55.m11 = *&v56.m11;
  *&v55.m13 = v29;
  *&v55.m21 = *&v56.m21;
  *&v55.m23 = v30;
  CATransform3DScale(&v56, &v55, v15, v15, 1.0);
  v31 = *(a1 + 32);
  if (v31)
  {
    [v31 _imageOrientationTransformWithoutTranslation];
  }

  else
  {
    memset(&a, 0, sizeof(a));
  }

  b = v56;
  CATransform3DConcat(&v55, &a, &b);
  v56 = v55;
  a = v55;
  CATransform3DScale(&v55, &a, v26, v26, 1.0);
  v56 = v55;
  v32 = *(a1 + 88);
  a = v55;
  CATransform3DScale(&v55, &a, v32, v32, 1.0);
  v56 = v55;
  v33 = *(a1 + 112);
  v34 = v33 * (-(v24 - *(a1 + 96)) - v18);
  v35 = v33 * (v22 + v25 - *(a1 + 104));
  a = v55;
  CATransform3DTranslate(&v55, &a, v34, v35, 0.0);
  v56 = v55;
  a = v55;
  CATransform3DScale(&v55, &a, 1.0, -1.0, 1.0);
  v56 = v55;
  v36 = -*(a1 + 120);
  v37 = -*(a1 + 128);
  a = v55;
  CATransform3DTranslate(&v55, &a, v36, v37, 0.0);
  v56 = v55;
  v38 = MEMORY[0x1E69B3A28];
  [*(*(a1 + 32) + 696) masterImageRect];
  [v38 _imageTransformFromPitch:v50 yaw:v9 roll:v14 imageRect:{v39, v40, v41, v42}];
  a = v55;
  b = v56;
  CATransform3DConcat(&v55, &a, &b);
  v56 = v55;
  v43 = *(a1 + 120);
  v44 = *(a1 + 128);
  a = v55;
  CATransform3DTranslate(&v55, &a, v43, v44, 0.0);
  v56 = v55;
  a = v55;
  CATransform3DScale(&v55, &a, 1.0, -1.0, 1.0);
  v56 = v55;
  v45 = 1.0 / *(a1 + 88);
  a = v55;
  CATransform3DScale(&v55, &a, v45, v45, 1.0);
  v56 = v55;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v46 = *(*(a1 + 32) + 816);
  v55 = v56;
  [v46 setTransform:&v55];
  [*(*(a1 + 32) + 816) setPosition:?];
  v47 = *(a1 + 32);
  if (*(v47 + 656))
  {
    [*(v47 + 816) bounds];
    [*(*(a1 + 32) + 656) setBounds:?];
    [*(*(a1 + 32) + 656) setPosition:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    v47 = *(a1 + 32);
  }

  v48 = *(v47 + 648);
  v55 = v56;
  [v48 setTransform:&v55];
  [*(*(a1 + 32) + 648) setPosition:*&v51];
  return [MEMORY[0x1E6979518] commit];
}

double __82__PUCropPerspectiveView_updateLayerTransformsAnimated_viewCropRect_modelCropRect___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 696) pitchRadians];
  *(*(a1 + 32) + 712) = v2;
  [*(*(a1 + 32) + 696) yawRadians];
  *(*(a1 + 32) + 720) = v3;
  [*(*(a1 + 32) + 696) rollRadians];
  *(*(a1 + 32) + 728) = v4;
  *(*(a1 + 32) + 736) = *(a1 + 40);
  v5 = *(a1 + 32);
  v6 = (v5 + 744);
  [*(v5 + 632) panRubberBandOffset];
  *v6 = v7;
  v6[1] = v8;
  *(*(a1 + 32) + 760) = *(a1 + 48);
  *(*(a1 + 32) + 776) = *(a1 + 64);
  result = *(a1 + 80);
  *(*(a1 + 32) + 792) = result;
  *(*(a1 + 32) + 644) = 0;
  return result;
}

- (void)updateLayerTransformsAnimated:(BOOL)a3
{
  self->_needsUpdateLayerTransforms = 1;
  self->_needsUpdateLayerTransformsAnimated |= a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__PUCropPerspectiveView_updateLayerTransformsAnimated___block_invoke;
  v3[3] = &unk_1E7B7FF98;
  v3[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

uint64_t __55__PUCropPerspectiveView_updateLayerTransformsAnimated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v2 _croppingRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [*(*(a1 + 32) + 696) cropRect];

  return [v2 updateLayerTransformsAnimated:v3 viewCropRect:v5 modelCropRect:{v7, v9, v11, v12, v13, v14, v15}];
}

- (id)_animateValueFromValue:(double)a3 toValue:(double)a4 interpolation:(id)a5 completion:(id)a6
{
  v9 = a5;
  v10 = a6;
  if (a3 == a4)
  {
    v9[2](v9, a4);
    if (v10)
    {
      v10[2](v10, 1);
    }

    v11 = 0;
  }

  else
  {
    v11 = [MEMORY[0x1E69DD4A0] pu_dynamicValueAnimationWithInitialValue:a3 initialVelocity:0.0 targetValue:a4 stiffness:300.0 dampingFactor:1.0 epsilon:0.01];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __81__PUCropPerspectiveView__animateValueFromValue_toValue_interpolation_completion___block_invoke;
    v17[3] = &unk_1E7B76D68;
    v18 = v9;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __81__PUCropPerspectiveView__animateValueFromValue_toValue_interpolation_completion___block_invoke_2;
    v13[3] = &unk_1E7B76D90;
    v14 = v18;
    v16 = a4;
    v15 = v10;
    [v11 runWithValueApplier:v17 completion:v13];
  }

  return v11;
}

uint64_t __81__PUCropPerspectiveView__animateValueFromValue_toValue_interpolation_completion___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 48));
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (CGSize)masterImageSize
{
  [(NUCropModel *)self->_cropModel masterImageSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CATransform3D)_imageOrientationTransform
{
  memset(&v6[1], 0, sizeof(CGAffineTransform));
  imageGeometry = self->_imageGeometry;
  if (imageGeometry)
  {
    [(PLImageGeometry *)imageGeometry appliedTransform];
  }

  v6[0] = v6[1];
  return CATransform3DMakeAffineTransform(retstr, v6);
}

- (CATransform3D)_imageOrientationTransformWithoutTranslation
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  imageGeometry = self->_imageGeometry;
  if (imageGeometry)
  {
    [(PLImageGeometry *)imageGeometry appliedTransform];
  }

  else
  {
    v7 = 0uLL;
    v8 = 0uLL;
  }

  v9 = 0uLL;
  *&v6.a = v7;
  *&v6.c = v8;
  *&v6.tx = 0uLL;
  return CATransform3DMakeAffineTransform(retstr, &v6);
}

- (void)dealloc
{
  CGImageRelease(self->_gainMapImage);
  v3.receiver = self;
  v3.super_class = PUCropPerspectiveView;
  [(PUCropPerspectiveView *)&v3 dealloc];
}

- (PUCropPerspectiveView)initWithFrame:(CGRect)a3
{
  v42.receiver = self;
  v42.super_class = PUCropPerspectiveView;
  v3 = [(PUCropPerspectiveView *)&v42 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6979398]);
    imageLayer = v3->_imageLayer;
    v3->_imageLayer = v4;

    v6 = [(PUCropPerspectiveView *)v3 layer];
    [v6 addSublayer:v3->_imageLayer];

    v7 = objc_alloc_init(MEMORY[0x1E6979398]);
    mediaSuperlayer = v3->_mediaSuperlayer;
    v3->_mediaSuperlayer = v7;

    [(CALayer *)v3->_mediaSuperlayer setZPosition:0.1];
    v9 = [(PUCropPerspectiveView *)v3 layer];
    [v9 addSublayer:v3->_mediaSuperlayer];

    mediaLayer = v3->_mediaLayer;
    v3->_mediaLayer = 0;

    v11 = +[PUPhotoEditProtoSettings sharedInstance];
    v3->_isDebugging = [v11 perspectiveViewDebugCropEnabled];

    if (v3->_isDebugging)
    {
      v12 = objc_alloc_init(MEMORY[0x1E6979398]);
      debugLayer = v3->_debugLayer;
      v3->_debugLayer = v12;

      v14 = [(PUCropPerspectiveView *)v3 layer];
      [v14 addSublayer:v3->_debugLayer];

      v15 = objc_alloc_init(MEMORY[0x1E69794A0]);
      debugCropRectLayer = v3->_debugCropRectLayer;
      v3->_debugCropRectLayer = v15;

      v17 = [MEMORY[0x1E69DC888] blueColor];
      -[CAShapeLayer setBorderColor:](v3->_debugCropRectLayer, "setBorderColor:", [v17 CGColor]);

      [(CAShapeLayer *)v3->_debugCropRectLayer setBorderWidth:2.0];
      v18 = [MEMORY[0x1E69DC888] cyanColor];
      -[CAShapeLayer setBackgroundColor:](v3->_debugCropRectLayer, "setBackgroundColor:", [v18 CGColor]);

      v19 = [MEMORY[0x1E69DC888] whiteColor];
      -[CAShapeLayer setStrokeColor:](v3->_debugCropRectLayer, "setStrokeColor:", [v19 CGColor]);

      v20 = [MEMORY[0x1E69DC888] blueColor];
      -[CAShapeLayer setFillColor:](v3->_debugCropRectLayer, "setFillColor:", [v20 CGColor]);

      LODWORD(v21) = 1059648963;
      [(CAShapeLayer *)v3->_debugCropRectLayer setOpacity:v21];
      v22 = *MEMORY[0x1E695EFF8];
      v23 = *(MEMORY[0x1E695EFF8] + 8);
      [(CAShapeLayer *)v3->_debugCropRectLayer setAnchorPoint:*MEMORY[0x1E695EFF8], v23];
      [(CALayer *)v3->_debugLayer addSublayer:v3->_debugCropRectLayer];
      v24 = objc_alloc_init(MEMORY[0x1E69794A0]);
      debugQuadLayer = v3->_debugQuadLayer;
      v3->_debugQuadLayer = v24;

      v26 = [MEMORY[0x1E69DC888] redColor];
      -[CAShapeLayer setBorderColor:](v3->_debugQuadLayer, "setBorderColor:", [v26 CGColor]);

      [(CAShapeLayer *)v3->_debugQuadLayer setBorderWidth:3.0];
      v27 = [MEMORY[0x1E69DC888] redColor];
      -[CAShapeLayer setStrokeColor:](v3->_debugQuadLayer, "setStrokeColor:", [v27 CGColor]);

      [(CAShapeLayer *)v3->_debugQuadLayer setLineWidth:3.0];
      v28 = [MEMORY[0x1E69DC888] clearColor];
      -[CAShapeLayer setFillColor:](v3->_debugQuadLayer, "setFillColor:", [v28 CGColor]);

      LODWORD(v29) = *"33s?";
      [(CAShapeLayer *)v3->_debugQuadLayer setOpacity:v29];
      [(CAShapeLayer *)v3->_debugQuadLayer setAnchorPoint:v22, v23];
      [(CALayer *)v3->_debugLayer addSublayer:v3->_debugQuadLayer];
      v30 = objc_alloc_init(MEMORY[0x1E69794A0]);
      debugViewRectLayer = v3->_debugViewRectLayer;
      v3->_debugViewRectLayer = v30;

      v32 = [MEMORY[0x1E69DC888] whiteColor];
      -[CAShapeLayer setBorderColor:](v3->_debugViewRectLayer, "setBorderColor:", [v32 CGColor]);

      [(CAShapeLayer *)v3->_debugViewRectLayer setBorderWidth:3.0];
      v33 = [MEMORY[0x1E69DC888] grayColor];
      -[CAShapeLayer setBackgroundColor:](v3->_debugViewRectLayer, "setBackgroundColor:", [v33 CGColor]);

      v34 = [MEMORY[0x1E69DC888] whiteColor];
      -[CAShapeLayer setStrokeColor:](v3->_debugViewRectLayer, "setStrokeColor:", [v34 CGColor]);

      v35 = [MEMORY[0x1E69DC888] clearColor];
      -[CAShapeLayer setFillColor:](v3->_debugViewRectLayer, "setFillColor:", [v35 CGColor]);

      LODWORD(v36) = 1058642330;
      [(CAShapeLayer *)v3->_debugViewRectLayer setOpacity:v36];
      [(CAShapeLayer *)v3->_debugViewRectLayer setAnchorPoint:v22, v23];
      [(CALayer *)v3->_debugLayer addSublayer:v3->_debugViewRectLayer];
    }

    cropModel = v3->_cropModel;
    v3->_cropModel = 0;

    v41.receiver = v3;
    v41.super_class = PUCropPerspectiveView;
    [(PUCropTransformedImageView *)&v41 setOrientation:1];
    v38 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:v3 action:sel_handlePanGesture_];
    v39 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:v3 action:sel_handlePinchGesture_];
    [v38 setDelegate:v3];
    [v39 setDelegate:v3];
    [(PUCropPerspectiveView *)v3 addGestureRecognizer:v38];
    [(PUCropPerspectiveView *)v3 addGestureRecognizer:v39];
  }

  return v3;
}

@end