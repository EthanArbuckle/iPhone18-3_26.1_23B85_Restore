@interface VKScreenCameraController
- (BOOL)isAnimating;
- (VKScreenCameraController)initWithMapDataAccess:(MapDataAccess *)access animationRunner:(AnimationRunner *)runner runLoopController:(RunLoopController *)controller cameraDelegate:(id)delegate;
- (void)dealloc;
- (void)setAnnotationTrackingBehavior:(id *)behavior;
- (void)setCamera:(shared_ptr<gdc::Camera>)camera;
- (void)setCenterCoordinateDistanceRange:(id *)range duration:(double)duration timingFunction:(id)function;
- (void)setEdgeInsets:(VKEdgeInsets)insets;
- (void)setRegionRestriction:(id)restriction duration:(double)duration timingFunction:(id)function;
- (void)setVkCamera:(id)camera;
- (void)startPanningAtPoint:(CGPoint)point panAtStartPoint:(BOOL)startPoint;
- (void)startPinchingWithFocusPoint:(CGPoint)point;
- (void)startPitchingWithFocusPoint:(CGPoint)point;
- (void)startRotatingWithFocusPoint:(CGPoint)point;
- (void)stopAnimations;
- (void)stopPanningAtPoint:(CGPoint)point;
- (void)stopPinchingWithFocusPoint:(CGPoint)point;
- (void)stopPitchingWithFocusPoint:(CGPoint)point;
- (void)stopRegionAnimation;
- (void)stopRotatingWithFocusPoint:(CGPoint)point;
- (void)stopSnappingAnimations;
- (void)stopTrackingAnnotation;
- (void)transferStatesWithCameraController:(id)controller;
- (void)updatePanWithTranslation:(CGPoint)translation;
- (void)updatePinchWithFocusPoint:(CGPoint)point oldFactor:(double)factor newFactor:(double)newFactor;
- (void)updateWithTimestamp:(double)timestamp withContext:(void *)context;
- (void)zoom:(double)zoom withFocusPoint:(CGPoint)point completionHandler:(id)handler;
@end

@implementation VKScreenCameraController

- (void)stopAnimations
{
  regionAnimation = self->_regionAnimation;
  if (regionAnimation)
  {
    [(VKAnimation *)regionAnimation stop];
    v4 = self->_regionAnimation;
    self->_regionAnimation = 0;
  }

  rotationAnimation = self->_rotationAnimation;
  if (rotationAnimation)
  {
    [(VKAnimation *)rotationAnimation stop];
    v6 = self->_rotationAnimation;
    self->_rotationAnimation = 0;
  }

  pitchAnimation = self->_pitchAnimation;
  if (pitchAnimation)
  {
    [(VKAnimation *)pitchAnimation stop];
    v8 = self->_pitchAnimation;
    self->_pitchAnimation = 0;
  }

  zoomAnimation = self->_zoomAnimation;
  if (zoomAnimation)
  {
    [(VKAnimation *)zoomAnimation stop];
    v10 = self->_zoomAnimation;
    self->_zoomAnimation = 0;
  }
}

- (void)stopSnappingAnimations
{
  pitchAnimation = self->_pitchAnimation;
  if (pitchAnimation)
  {
    [(VKAnimation *)pitchAnimation stop];
  }

  rotationAnimation = self->_rotationAnimation;
  if (rotationAnimation)
  {

    [(VKAnimation *)rotationAnimation stop];
  }
}

- (void)stopTrackingAnnotation
{
  [(VKAnnotationTrackingCameraController *)self->_annotationTrackingCameraController stopTrackingAnnotation];
  if (self->_annotationTrackingBehavior.resetAfterTracking)
  {
    v3 = VKAnnotationTrackingBehaviorDefault;
    v4 = 1;
    [(VKScreenCameraController *)self setAnnotationTrackingBehavior:&v3];
  }
}

- (void)updateWithTimestamp:(double)timestamp withContext:(void *)context
{
  v7.receiver = self;
  v7.super_class = VKScreenCameraController;
  [VKCameraController updateWithTimestamp:sel_updateWithTimestamp_withContext_ withContext:?];
  [(VKGestureCameraBehavior *)self->_gestureCameraControllerBehavior updateWithTimestamp:context withContext:timestamp];
}

- (void)setCamera:(shared_ptr<gdc::Camera>)camera
{
  ptr = camera.__ptr_;
  v5 = *camera.__ptr_;
  if (!*camera.__ptr_)
  {
    [(VKScreenCameraController *)self stopAnimations];
    v5 = *ptr;
  }

  v6 = *(ptr + 1);
  v8 = v5;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7.receiver = self;
  v7.super_class = VKScreenCameraController;
  [(VKCameraController *)&v7 setCamera:&v8, camera.__cntrl_];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }
}

- (void)setVkCamera:(id)camera
{
  cameraCopy = camera;
  if (!cameraCopy)
  {
    [(VKScreenCameraController *)self stopAnimations];
  }

  v5.receiver = self;
  v5.super_class = VKScreenCameraController;
  [(VKCameraController *)&v5 setVkCamera:cameraCopy];
}

- (void)transferStatesWithCameraController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = controllerCopy;
      [v5 centerCoordinateDistanceRange];
      v8 = v10;
      v9 = v11;
      [(VKScreenCameraController *)self setCenterCoordinateDistanceRange:&v8];
      regionRestriction = [v5 regionRestriction];
      [(VKScreenCameraController *)self setRegionRestriction:regionRestriction];

      -[VKScreenCameraController setHasVehicleHeading:](self, "setHasVehicleHeading:", [v5 hasVehicleHeading]);
      -[VKScreenCameraController setUserChangedZoomSinceLastProgrammaticRegionChange:](self, "setUserChangedZoomSinceLastProgrammaticRegionChange:", [v5 userChangedZoomSinceLastProgrammaticRegionChange]);
    }
  }

  v7.receiver = self;
  v7.super_class = VKScreenCameraController;
  [(VKCameraController *)&v7 transferStatesWithCameraController:controllerCopy];
}

- (void)stopPitchingWithFocusPoint:(CGPoint)point
{
  [(VKGestureCameraBehavior *)self->_gestureCameraControllerBehavior stopPitchingWithFocusPoint:point.x, point.y];
  [(VKScreenCameraController *)self clampZoomLevelIfNecessary];
  cameraDelegate = [(VKCameraController *)self cameraDelegate];
  [cameraDelegate didEndPitchingAccess];

  [(VKScreenCameraController *)self snapMapIfNecessary:1];
}

- (void)startPitchingWithFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  pitchAnimation = self->_pitchAnimation;
  if (pitchAnimation)
  {
    [(VKAnimation *)pitchAnimation stop];
  }

  cameraDelegate = [(VKCameraController *)self cameraDelegate];
  [cameraDelegate willBeginPitchingAccess];

  gestureCameraControllerBehavior = self->_gestureCameraControllerBehavior;

  [(VKGestureCameraBehavior *)gestureCameraControllerBehavior startPitchingWithFocusPoint:x, y];
}

- (void)stopRotatingWithFocusPoint:(CGPoint)point
{
  [(VKGestureCameraBehavior *)self->_gestureCameraControllerBehavior stopRotatingWithFocusPoint:point.x, point.y];
  cameraDelegate = [(VKCameraController *)self cameraDelegate];
  [cameraDelegate didEndRotatingAccess];

  [(VKScreenCameraController *)self snapMapIfNecessary:1];
}

- (void)startRotatingWithFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  cameraDelegate = [(VKCameraController *)self cameraDelegate];
  [cameraDelegate willBeginRotatingAccess];

  gestureCameraControllerBehavior = self->_gestureCameraControllerBehavior;

  [(VKGestureCameraBehavior *)gestureCameraControllerBehavior startRotatingWithFocusPoint:x, y];
}

- (void)stopPanningAtPoint:(CGPoint)point
{
  [(VKGestureCameraBehavior *)self->_gestureCameraControllerBehavior stopPanningAtPoint:point.x, point.y];
  [(VKScreenCameraController *)self clampZoomLevelIfNecessary];
  cameraDelegate = [(VKCameraController *)self cameraDelegate];
  [cameraDelegate didEndPanningAccess];
}

- (void)updatePanWithTranslation:(CGPoint)translation
{
  [(VKGestureCameraBehavior *)self->_gestureCameraControllerBehavior updatePanWithTranslation:translation.x, translation.y];

  [(VKScreenCameraController *)self clampZoomLevelIfNecessary];
}

- (void)startPanningAtPoint:(CGPoint)point panAtStartPoint:(BOOL)startPoint
{
  startPointCopy = startPoint;
  y = point.y;
  x = point.x;
  cameraDelegate = [(VKCameraController *)self cameraDelegate];
  [cameraDelegate willBeginPanningAccess];

  gestureCameraControllerBehavior = self->_gestureCameraControllerBehavior;

  [(VKGestureCameraBehavior *)gestureCameraControllerBehavior startPanningAtPoint:startPointCopy panAtStartPoint:x, y];
}

- (void)stopPinchingWithFocusPoint:(CGPoint)point
{
  [(VKGestureCameraBehavior *)self->_gestureCameraControllerBehavior stopPinchingWithFocusPoint:point.x, point.y];
  [(VKScreenCameraController *)self clampZoomLevelIfNecessaryAnimated:[(VKGestureCameraBehavior *)self->_gestureCameraControllerBehavior allowsZoomRubberbanding]];
  cameraDelegate = [(VKCameraController *)self cameraDelegate];
  [cameraDelegate didEndPinchingAccess];

  [(VKScreenCameraController *)self snapMapIfNecessary:1];
}

- (void)updatePinchWithFocusPoint:(CGPoint)point oldFactor:(double)factor newFactor:(double)newFactor
{
  [(VKGestureCameraBehavior *)self->_gestureCameraControllerBehavior updatePinchWithFocusPoint:point.x oldFactor:point.y newFactor:factor, newFactor];
  self->_userChangedZoomSinceLastProgrammaticRegionChange = 1;
  annotationTrackingCameraController = self->_annotationTrackingCameraController;

  [(VKAnnotationTrackingCameraController *)annotationTrackingCameraController setHasUserSpecifiedZoomLevel:1];
}

- (void)startPinchingWithFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  zoomAnimation = self->_zoomAnimation;
  if (zoomAnimation && [(VKAnimation *)zoomAnimation running])
  {
    if (!self->_zoomAnimationCanBeInterrupted)
    {
      return;
    }

    [(VKAnimation *)self->_zoomAnimation stop];
    v7 = self->_zoomAnimation;
    self->_zoomAnimation = 0;
  }

  cameraDelegate = [(VKCameraController *)self cameraDelegate];
  [cameraDelegate willBeginPinchingAccess];

  gestureCameraControllerBehavior = self->_gestureCameraControllerBehavior;

  [(VKGestureCameraBehavior *)gestureCameraControllerBehavior startPinchingWithFocusPoint:x, y];
}

- (void)zoom:(double)zoom withFocusPoint:(CGPoint)point completionHandler:(id)handler
{
  y = point.y;
  x = point.x;
  v14 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  cameraDelegate = [(VKCameraController *)self cameraDelegate];
  v11 = cameraDelegate;
  if (cameraDelegate)
  {
    [cameraDelegate willBeginRegionChangeAccess:1];
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  [(VKGestureCameraBehavior *)self->_gestureCameraControllerBehavior zoom:handlerCopy withFocusPoint:zoom completionHandler:x, y];
  cameraDelegate2 = [(VKCameraController *)self cameraDelegate];
  [cameraDelegate2 didEndRegionChangeAccess:v13];

  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(v13);
}

- (void)setRegionRestriction:(id)restriction duration:(double)duration timingFunction:(id)function
{
  restrictionCopy = restriction;
  if (![(VKCameraRegionRestriction *)self->_regionRestriction isEqual:?])
  {
    objc_storeStrong(&self->_regionRestriction, restriction);
    vkCamera = [(VKCameraController *)self vkCamera];
    [vkCamera setRegionRestriction:restrictionCopy];
  }
}

- (void)setCenterCoordinateDistanceRange:(id *)range duration:(double)duration timingFunction:(id)function
{
  v7 = *&range->var2;
  *&self->_centerCoordinateDistanceRange.min = *&range->var0;
  *&self->_centerCoordinateDistanceRange.allowRubberband = v7;
  [(VKGestureCameraBehavior *)self->_gestureCameraControllerBehavior setAllowsZoomRubberbanding:range->var2, function];
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera groundPoint];
  v9 = exp(v8 * 6.28318531 + -3.14159265);
  v10 = atan(v9);
  v11 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v10 * 114.591559 + -90.0);

  var1 = range->var1;
  vkCamera2 = [(VKCameraController *)self vkCamera];
  v14 = fmin(var1 * v11, 1.0);
  if (var1 < 0.0)
  {
    v14 = 0.0;
  }

  v19 = vkCamera2;
  [vkCamera2 setMaxDistanceToGroundRestriction:{*&v14, var1 >= 0.0}];

  var0 = range->var0;
  if (range->var0 >= 0.0)
  {
    var0 = fmin(fmax(var0 * v11, 0.0), 1.0);
    v17 = var0;
    v16 = 1;
  }

  else
  {
    v16 = 0;
    v17 = 0.0;
  }

  vkCamera3 = [(VKCameraController *)self vkCamera];
  [vkCamera3 setMinDistanceToGroundRestriction:{*&v17, v16}];
}

- (BOOL)isAnimating
{
  v4.receiver = self;
  v4.super_class = VKScreenCameraController;
  return [(VKCameraController *)&v4 isAnimating]|| [(VKAnnotationTrackingCameraController *)self->_annotationTrackingCameraController isAnimating];
}

- (void)stopRegionAnimation
{
  [(VKAnimation *)self->_regionAnimation stop];
  regionAnimation = self->_regionAnimation;
  self->_regionAnimation = 0;
}

- (void)setEdgeInsets:(VKEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v12.receiver = self;
  v12.super_class = VKScreenCameraController;
  [(VKCameraController *)&v12 setEdgeInsets:?];
  *&v8 = top;
  *&v9 = left;
  *&v10 = bottom;
  *&v11 = right;
  [(VKCameraController *)self->_annotationTrackingCameraController setEdgeInsets:v8, v9, v10, v11];
}

- (void)setAnnotationTrackingBehavior:(id *)behavior
{
  v3 = *&behavior->var2;
  *&self->_annotationTrackingBehavior.shouldZoomToFit = *&behavior->var0;
  *&self->_annotationTrackingBehavior.shouldPreserveUserSpecifiedZoomLevel = v3;
  v4 = *behavior;
  [(VKAnnotationTrackingCameraController *)self->_annotationTrackingCameraController setBehavior:&v4];
}

- (void)dealloc
{
  [(VKCameraController *)self->_annotationTrackingCameraController setCameraDelegate:0];
  annotationTrackingCameraController = self->_annotationTrackingCameraController;
  self->_annotationTrackingCameraController = 0;

  [(VKAnimation *)self->_zoomAnimation stop];
  zoomAnimation = self->_zoomAnimation;
  self->_zoomAnimation = 0;

  [(VKAnimation *)self->_pitchAnimation stop];
  pitchAnimation = self->_pitchAnimation;
  self->_pitchAnimation = 0;

  [(VKAnimation *)self->_rotationAnimation stop];
  rotationAnimation = self->_rotationAnimation;
  self->_rotationAnimation = 0;

  [(VKAnimation *)self->_regionAnimation stop];
  regionAnimation = self->_regionAnimation;
  self->_regionAnimation = 0;

  regionRestriction = self->_regionRestriction;
  self->_regionRestriction = 0;

  v9.receiver = self;
  v9.super_class = VKScreenCameraController;
  [(VKScreenCameraController *)&v9 dealloc];
}

- (VKScreenCameraController)initWithMapDataAccess:(MapDataAccess *)access animationRunner:(AnimationRunner *)runner runLoopController:(RunLoopController *)controller cameraDelegate:(id)delegate
{
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = VKScreenCameraController;
  v11 = [(VKCameraController *)&v21 initWithMapDataAccess:access animationRunner:runner runLoopController:controller cameraDelegate:delegateCopy];
  if (v11)
  {
    v12 = [[VKCameraRegionRestriction alloc] initWithMapRegion:0];
    v13 = *(v11 + 28);
    *(v11 + 28) = v12;

    __asm { FMOV            V0.2D, #-1.0 }

    *(v11 + 232) = _Q0;
    v11[248] = 0;
    v19 = v11;
  }

  return v11;
}

@end