@interface VKAnnotationTrackingCameraController
- (BOOL)isAnimating;
- (BOOL)shouldForceZoomToFit;
- (VKAnnotationTrackingCameraController)initWithMapDataAccess:(MapDataAccess *)access animationRunner:(AnimationRunner *)runner runLoopController:(RunLoopController *)controller cameraDelegate:(id)delegate;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pauseAnimation;
- (void)resumeAnimation;
- (void)setBehavior:(id *)behavior;
- (void)setGesturing:(BOOL)gesturing;
- (void)startTrackingAnnotation:(id)annotation trackHeading:(BOOL)heading animated:(BOOL)animated duration:(double)duration timingFunction:(id)function;
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
    runLoopController = [(VKCameraController *)self runLoopController];
  }

  else
  {
    running = [(VKAnimation *)self->_currentAnimation running];
    runLoopController = [(VKCameraController *)self runLoopController];
    if (running)
    {
      baseDisplayRate = [(VKCameraController *)self baseDisplayRate];
      goto LABEL_8;
    }
  }

  baseDisplayRate = [(VKCameraController *)self maxDisplayRate];
LABEL_8:
  runLoopController->var1 = baseDisplayRate;

  md::RunLoopController::_updateDisplayRate(runLoopController, v7, v8, v9);
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

- (void)setBehavior:(id *)behavior
{
  v3 = *&behavior->var2;
  *&self->_behavior.shouldZoomToFit = *&behavior->var0;
  *&self->_behavior.shouldPreserveUserSpecifiedZoomLevel = v3;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  annotation = self->_annotation;
  if (annotation == objectCopy)
  {
    if ([pathCopy isEqualToString:@"coordinate"])
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

  if (annotation == objectCopy)
  {
    if ([pathCopy isEqualToString:@"accuracy"])
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

  if (annotation == objectCopy && [pathCopy isEqualToString:@"heading"])
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
    [(VKAnnotationTrackingCameraController *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }

LABEL_18:
}

- (void)setGesturing:(BOOL)gesturing
{
  v4.receiver = self;
  v4.super_class = VKAnnotationTrackingCameraController;
  [(VKCameraController *)&v4 setGesturing:gesturing];
  if ([(VKCameraController *)self isGesturing])
  {
    [(VKAnnotationTrackingCameraController *)self pauseAnimation];
  }

  else
  {
    [(VKAnnotationTrackingCameraController *)self resumeAnimation];
  }
}

- (void)startTrackingAnnotation:(id)annotation trackHeading:(BOOL)heading animated:(BOOL)animated duration:(double)duration timingFunction:(id)function
{
  animatedCopy = animated;
  headingCopy = heading;
  annotationCopy = annotation;
  functionCopy = function;
  if (self->_annotation == annotationCopy)
  {
    if (!annotationCopy)
    {
      goto LABEL_36;
    }

    goto LABEL_22;
  }

  [(VKAnnotationTrackingCameraController *)self stopTrackingAnnotation];
  if (annotationCopy)
  {
    objc_storeStrong(&self->_annotation, annotation);
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

    cameraDelegate = [(VKCameraController *)self cameraDelegate];
    v20 = [cameraDelegate mapLayerPresentationForAnnotation:self->_annotation];
    annotationPresentation = self->_annotationPresentation;
    self->_annotationPresentation = v20;

    [(VKTrackableAnnotationPresentation *)self->_annotationPresentation setTracking:1];
LABEL_22:
    durationCopy = -1.0;
    if (duration > 0.0)
    {
      durationCopy = duration;
    }

    [(VKAnnotationTrackingCameraController *)self _goToAnnotationAnimated:animatedCopy duration:functionCopy timingFunction:1 isInitial:durationCopy];
  }

  if (self->_annotation)
  {
    if (((((*(&self->_hasUserSpecifiedZoomLevel + 1) & 4) == 0) ^ headingCopy) & 1) == 0)
    {
      [(VKAnimation *)self->_currentHeadingAnimation stop];
      currentHeadingAnimation = self->_currentHeadingAnimation;
      self->_currentHeadingAnimation = 0;

      if ((*(&self->_hasUserSpecifiedZoomLevel + 1) & 0x200) != 0)
      {
        if (headingCopy)
        {
          v24 = 4;
        }

        else
        {
          v24 = 0;
        }

        *(&self->_hasUserSpecifiedZoomLevel + 1) = *(&self->_hasUserSpecifiedZoomLevel + 1) & 0xFFFB | v24;
        annotation = self->_annotation;
        if (headingCopy)
        {
          [(VKTrackableAnnotation *)annotation addObserver:self forKeyPath:@"heading" options:0 context:0];
          durationCopy2 = 0.4;
          if (duration > 0.0)
          {
            durationCopy2 = duration;
          }

          [(VKAnnotationTrackingCameraController *)self _rotateToHeadingAnimated:animatedCopy duration:durationCopy2];
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

- (VKAnnotationTrackingCameraController)initWithMapDataAccess:(MapDataAccess *)access animationRunner:(AnimationRunner *)runner runLoopController:(RunLoopController *)controller cameraDelegate:(id)delegate
{
  v10.receiver = self;
  v10.super_class = VKAnnotationTrackingCameraController;
  v6 = [(VKCameraController *)&v10 initWithMapDataAccess:access animationRunner:runner runLoopController:controller cameraDelegate:delegate];
  v7 = v6;
  if (v6)
  {
    v6->_headingAnimationDisplayRate = -1;
    v8 = v6;
  }

  return v7;
}

@end