@interface VKAnnotationTrackingCameraController
- (BOOL)isAnimating;
- (BOOL)shouldForceZoomToFit;
- (VKAnnotationTrackingCameraController)initWithMapDataAccess:(MapDataAccess *)a3 animationRunner:(AnimationRunner *)a4 runLoopController:(RunLoopController *)a5 cameraDelegate:(id)a6;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pauseAnimation;
- (void)resumeAnimation;
- (void)setBehavior:(id *)a3;
- (void)setGesturing:(BOOL)a3;
- (void)startTrackingAnnotation:(id)a3 trackHeading:(BOOL)a4 animated:(BOOL)a5 duration:(double)a6 timingFunction:(id)a7;
- (void)stopTrackingAnnotation;
- (void)updateFramerate;
@end

@implementation VKAnnotationTrackingCameraController

- (void)pauseAnimation
{
  [(VKTimedAnimation *)self->_currentAnimation pause];
  [(VKTimedAnimation *)self->_currentHeadingAnimation pause];
  *(&self->_hasUserSpecifiedZoomLevel + 1) |= 2u;

  [(VKAnnotationTrackingCameraController *)self updateFramerate];
}

- (void)updateFramerate
{
  v3 = *(&self->_hasUserSpecifiedZoomLevel + 1);
  if ((v3 & 0x10) != 0 || (v3 & 4) != 0 && [(VKAnimation *)self->_currentHeadingAnimation running])
  {
    v4 = [(VKCameraController *)self runLoopController];
  }

  else
  {
    v5 = [(VKAnimation *)self->_currentAnimation running];
    v4 = [(VKCameraController *)self runLoopController];
    if (v5)
    {
      v6 = [(VKCameraController *)self baseDisplayRate];
      goto LABEL_8;
    }
  }

  v6 = [(VKCameraController *)self maxDisplayRate];
LABEL_8:
  v4->var1 = v6;

  md::RunLoopController::_updateDisplayRate(v4, v7, v8, v9);
}

- (BOOL)shouldForceZoomToFit
{
  if (self->_behavior.shouldZoomToFit)
  {
    return !self->_behavior.shouldPreserveUserSpecifiedZoomLevel || !self->_hasUserSpecifiedZoomLevel;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isAnimating
{
  if ([(VKAnimation *)self->_currentAnimation running]|| [(VKAnimation *)self->_currentHeadingAnimation running])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    return (*(&self->_hasUserSpecifiedZoomLevel + 1) >> 5) & 1;
  }

  return v3;
}

- (void)resumeAnimation
{
  [(VKTimedAnimation *)self->_currentAnimation duration];
  if (*(&self->_hasUserSpecifiedZoomLevel + 1))
  {
    pendingChangeDuration = self->_pendingChangeDuration;
  }

  else
  {
    pendingChangeDuration = v3;
  }

  [(VKAnimation *)self->_currentAnimation stop];
  currentAnimation = self->_currentAnimation;
  self->_currentAnimation = 0;

  [(VKAnimation *)self->_currentHeadingAnimation stop];
  currentHeadingAnimation = self->_currentHeadingAnimation;
  self->_currentHeadingAnimation = 0;

  *(&self->_hasUserSpecifiedZoomLevel + 1) &= ~2u;
  [(VKAnnotationTrackingCameraController *)self _goToAnnotationAnimated:1 duration:0 timingFunction:0 isInitial:pendingChangeDuration];
  if ((*(&self->_hasUserSpecifiedZoomLevel + 1) & 4) != 0)
  {
    [(VKAnnotationTrackingCameraController *)self _rotateToHeadingAnimated:1 duration:0.4];
  }

  [(VKAnnotationTrackingCameraController *)self updateFramerate];
}

- (void)stopTrackingAnnotation
{
  annotation = self->_annotation;
  if (annotation)
  {
    v4 = *(&self->_hasUserSpecifiedZoomLevel + 1);
    if ((v4 & 0x80) != 0)
    {
      [(VKTrackableAnnotation *)annotation removeObserver:self forKeyPath:@"accuracy"];
      v4 = *(&self->_hasUserSpecifiedZoomLevel + 1);
    }

    v5 = v4 & 0xFF7F;
    *(&self->_hasUserSpecifiedZoomLevel + 1) = v4 & 0xFF7F;
    if ((v4 & 4) != 0)
    {
      [(VKTrackableAnnotation *)self->_annotation removeObserver:self forKeyPath:@"heading"];
      v5 = *(&self->_hasUserSpecifiedZoomLevel + 1);
    }

    *(&self->_hasUserSpecifiedZoomLevel + 1) = v5 & 0xFFFB;
    [(VKTrackableAnnotation *)self->_annotation removeObserver:self forKeyPath:@"coordinate"];
    v6 = self->_annotation;
    self->_annotation = 0;

    [(VKTrackableAnnotationPresentation *)self->_annotationPresentation setTracking:0];
    annotationPresentation = self->_annotationPresentation;
    self->_annotationPresentation = 0;

    currentAnimation = self->_currentAnimation;
    if (currentAnimation)
    {
      if ((*(&self->_hasUserSpecifiedZoomLevel + 1) & 0x10) == 0)
      {
        [(VKAnimation *)currentAnimation stop];
        v9 = self->_currentAnimation;
        self->_currentAnimation = 0;
      }
    }

    [(VKAnimation *)self->_currentHeadingAnimation stop];
    currentHeadingAnimation = self->_currentHeadingAnimation;
    self->_currentHeadingAnimation = 0;

    *(&self->_hasUserSpecifiedZoomLevel + 1) &= 0xFDF6u;
  }
}

- (void)setBehavior:(id *)a3
{
  v3 = *&a3->var2;
  *&self->_behavior.shouldZoomToFit = *&a3->var0;
  *&self->_behavior.shouldPreserveUserSpecifiedZoomLevel = v3;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  annotation = self->_annotation;
  if (annotation == v11)
  {
    if ([v10 isEqualToString:@"coordinate"])
    {
      v14 = -1.0;
      if ((*(&self->_hasUserSpecifiedZoomLevel + 1) & 0x400) != 0)
      {
        [(VKTrackableAnnotation *)self->_annotation expectedCoordinateUpdateInterval];
      }

LABEL_5:
      [(VKAnnotationTrackingCameraController *)self _goToAnnotationAnimated:1 duration:0 timingFunction:0 isInitial:v14];
      goto LABEL_18;
    }

    annotation = self->_annotation;
  }

  if (annotation == v11)
  {
    if ([v10 isEqualToString:@"accuracy"])
    {
      v14 = -1.0;
      if ((*(&self->_hasUserSpecifiedZoomLevel + 1) & 0x400) != 0)
      {
        [(VKTrackableAnnotation *)self->_annotation expectedCoordinateUpdateInterval];
      }

      goto LABEL_5;
    }

    annotation = self->_annotation;
  }

  if (annotation == v11 && [v10 isEqualToString:@"heading"])
  {
    if ((*(&self->_hasUserSpecifiedZoomLevel + 1) & 0x800) != 0)
    {
      [(VKTrackableAnnotation *)self->_annotation expectedHeadingUpdateInterval];
    }

    else
    {
      v15 = 0.4;
    }

    [(VKAnnotationTrackingCameraController *)self _rotateToHeadingAnimated:1 duration:v15];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = VKAnnotationTrackingCameraController;
    [(VKAnnotationTrackingCameraController *)&v16 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }

LABEL_18:
}

- (void)setGesturing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VKAnnotationTrackingCameraController;
  [(VKCameraController *)&v4 setGesturing:a3];
  if ([(VKCameraController *)self isGesturing])
  {
    [(VKAnnotationTrackingCameraController *)self pauseAnimation];
  }

  else
  {
    [(VKAnnotationTrackingCameraController *)self resumeAnimation];
  }
}

- (void)startTrackingAnnotation:(id)a3 trackHeading:(BOOL)a4 animated:(BOOL)a5 duration:(double)a6 timingFunction:(id)a7
{
  v9 = a5;
  v10 = a4;
  v27 = a3;
  v13 = a7;
  if (self->_annotation == v27)
  {
    if (!v27)
    {
      goto LABEL_36;
    }

    goto LABEL_22;
  }

  [(VKAnnotationTrackingCameraController *)self stopTrackingAnnotation];
  if (v27)
  {
    objc_storeStrong(&self->_annotation, a3);
    if (objc_opt_respondsToSelector())
    {
      v14 = 128;
    }

    else
    {
      v14 = 0;
    }

    *(&self->_hasUserSpecifiedZoomLevel + 1) = *(&self->_hasUserSpecifiedZoomLevel + 1) & 0xFF7F | v14;
    if (objc_opt_respondsToSelector())
    {
      v15 = 256;
    }

    else
    {
      v15 = 0;
    }

    *(&self->_hasUserSpecifiedZoomLevel + 1) = *(&self->_hasUserSpecifiedZoomLevel + 1) & 0xFEFF | v15;
    if (objc_opt_respondsToSelector())
    {
      v16 = 512;
    }

    else
    {
      v16 = 0;
    }

    *(&self->_hasUserSpecifiedZoomLevel + 1) = *(&self->_hasUserSpecifiedZoomLevel + 1) & 0xFDFF | v16;
    if (objc_opt_respondsToSelector())
    {
      v17 = 1024;
    }

    else
    {
      v17 = 0;
    }

    *(&self->_hasUserSpecifiedZoomLevel + 1) = *(&self->_hasUserSpecifiedZoomLevel + 1) & 0xFBFF | v17;
    if (objc_opt_respondsToSelector())
    {
      v18 = 2048;
    }

    else
    {
      v18 = 0;
    }

    *(&self->_hasUserSpecifiedZoomLevel + 1) = *(&self->_hasUserSpecifiedZoomLevel + 1) & 0xF7FF | v18;
    [(VKTrackableAnnotation *)self->_annotation addObserver:self forKeyPath:@"coordinate" options:0 context:0];
    if ((*(&self->_hasUserSpecifiedZoomLevel + 1) & 0x80) != 0)
    {
      [(VKTrackableAnnotation *)self->_annotation addObserver:self forKeyPath:@"accuracy" options:0 context:0];
    }

    v19 = [(VKCameraController *)self cameraDelegate];
    v20 = [v19 mapLayerPresentationForAnnotation:self->_annotation];
    annotationPresentation = self->_annotationPresentation;
    self->_annotationPresentation = v20;

    [(VKTrackableAnnotationPresentation *)self->_annotationPresentation setTracking:1];
LABEL_22:
    v22 = -1.0;
    if (a6 > 0.0)
    {
      v22 = a6;
    }

    [(VKAnnotationTrackingCameraController *)self _goToAnnotationAnimated:v9 duration:v13 timingFunction:1 isInitial:v22];
  }

  if (self->_annotation)
  {
    if (((((*(&self->_hasUserSpecifiedZoomLevel + 1) & 4) == 0) ^ v10) & 1) == 0)
    {
      [(VKAnimation *)self->_currentHeadingAnimation stop];
      currentHeadingAnimation = self->_currentHeadingAnimation;
      self->_currentHeadingAnimation = 0;

      if ((*(&self->_hasUserSpecifiedZoomLevel + 1) & 0x200) != 0)
      {
        if (v10)
        {
          v24 = 4;
        }

        else
        {
          v24 = 0;
        }

        *(&self->_hasUserSpecifiedZoomLevel + 1) = *(&self->_hasUserSpecifiedZoomLevel + 1) & 0xFFFB | v24;
        annotation = self->_annotation;
        if (v10)
        {
          [(VKTrackableAnnotation *)annotation addObserver:self forKeyPath:@"heading" options:0 context:0];
          v26 = 0.4;
          if (a6 > 0.0)
          {
            v26 = a6;
          }

          [(VKAnnotationTrackingCameraController *)self _rotateToHeadingAnimated:v9 duration:v26];
        }

        else
        {
          [(VKTrackableAnnotation *)annotation removeObserver:self forKeyPath:@"heading"];
        }
      }
    }
  }

LABEL_36:
  [(VKAnnotationTrackingCameraController *)self updateFramerate];
}

- (void)dealloc
{
  annotation = self->_annotation;
  if (annotation)
  {
    v4 = *(&self->_hasUserSpecifiedZoomLevel + 1);
    if ((v4 & 0x80) != 0)
    {
      [(VKTrackableAnnotation *)annotation removeObserver:self forKeyPath:@"accuracy"];
      v4 = *(&self->_hasUserSpecifiedZoomLevel + 1);
      annotation = self->_annotation;
    }

    if ((v4 & 4) != 0)
    {
      [(VKTrackableAnnotation *)annotation removeObserver:self forKeyPath:@"heading"];
      annotation = self->_annotation;
    }

    [(VKTrackableAnnotation *)annotation removeObserver:self forKeyPath:@"coordinate"];
  }

  [(VKAnimation *)self->_currentAnimation stop];
  [(VKAnimation *)self->_currentHeadingAnimation stop];
  [(VKTrackableAnnotationPresentation *)self->_annotationPresentation setTracking:0];
  annotationPresentation = self->_annotationPresentation;
  self->_annotationPresentation = 0;

  v6.receiver = self;
  v6.super_class = VKAnnotationTrackingCameraController;
  [(VKAnnotationTrackingCameraController *)&v6 dealloc];
}

- (VKAnnotationTrackingCameraController)initWithMapDataAccess:(MapDataAccess *)a3 animationRunner:(AnimationRunner *)a4 runLoopController:(RunLoopController *)a5 cameraDelegate:(id)a6
{
  v10.receiver = self;
  v10.super_class = VKAnnotationTrackingCameraController;
  v6 = [(VKCameraController *)&v10 initWithMapDataAccess:a3 animationRunner:a4 runLoopController:a5 cameraDelegate:a6];
  v7 = v6;
  if (v6)
  {
    v6->_headingAnimationDisplayRate = -1;
    v8 = v6;
  }

  return v7;
}

@end