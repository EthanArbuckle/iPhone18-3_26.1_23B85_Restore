@interface VKScreenCameraController
- (BOOL)isAnimating;
- (VKScreenCameraController)initWithMapDataAccess:(MapDataAccess *)a3 animationRunner:(AnimationRunner *)a4 runLoopController:(RunLoopController *)a5 cameraDelegate:(id)a6;
- (void)dealloc;
- (void)setAnnotationTrackingBehavior:(id *)a3;
- (void)setCamera:(shared_ptr<gdc::Camera>)a3;
- (void)setCenterCoordinateDistanceRange:(id *)a3 duration:(double)a4 timingFunction:(id)a5;
- (void)setEdgeInsets:(VKEdgeInsets)a3;
- (void)setRegionRestriction:(id)a3 duration:(double)a4 timingFunction:(id)a5;
- (void)setVkCamera:(id)a3;
- (void)startPanningAtPoint:(CGPoint)a3 panAtStartPoint:(BOOL)a4;
- (void)startPinchingWithFocusPoint:(CGPoint)a3;
- (void)startPitchingWithFocusPoint:(CGPoint)a3;
- (void)startRotatingWithFocusPoint:(CGPoint)a3;
- (void)stopAnimations;
- (void)stopPanningAtPoint:(CGPoint)a3;
- (void)stopPinchingWithFocusPoint:(CGPoint)a3;
- (void)stopPitchingWithFocusPoint:(CGPoint)a3;
- (void)stopRegionAnimation;
- (void)stopRotatingWithFocusPoint:(CGPoint)a3;
- (void)stopSnappingAnimations;
- (void)stopTrackingAnnotation;
- (void)transferStatesWithCameraController:(id)a3;
- (void)updatePanWithTranslation:(CGPoint)a3;
- (void)updatePinchWithFocusPoint:(CGPoint)a3 oldFactor:(double)a4 newFactor:(double)a5;
- (void)updateWithTimestamp:(double)a3 withContext:(void *)a4;
- (void)zoom:(double)a3 withFocusPoint:(CGPoint)a4 completionHandler:(id)a5;
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

- (void)updateWithTimestamp:(double)a3 withContext:(void *)a4
{
  v7.receiver = self;
  v7.super_class = VKScreenCameraController;
  [VKCameraController updateWithTimestamp:sel_updateWithTimestamp_withContext_ withContext:?];
  [(VKGestureCameraBehavior *)self->_gestureCameraControllerBehavior updateWithTimestamp:a4 withContext:a3];
}

- (void)setCamera:(shared_ptr<gdc::Camera>)a3
{
  ptr = a3.__ptr_;
  v5 = *a3.__ptr_;
  if (!*a3.__ptr_)
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
  [(VKCameraController *)&v7 setCamera:&v8, a3.__cntrl_];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }
}

- (void)setVkCamera:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [(VKScreenCameraController *)self stopAnimations];
  }

  v5.receiver = self;
  v5.super_class = VKScreenCameraController;
  [(VKCameraController *)&v5 setVkCamera:v4];
}

- (void)transferStatesWithCameraController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [v5 centerCoordinateDistanceRange];
      v8 = v10;
      v9 = v11;
      [(VKScreenCameraController *)self setCenterCoordinateDistanceRange:&v8];
      v6 = [v5 regionRestriction];
      [(VKScreenCameraController *)self setRegionRestriction:v6];

      -[VKScreenCameraController setHasVehicleHeading:](self, "setHasVehicleHeading:", [v5 hasVehicleHeading]);
      -[VKScreenCameraController setUserChangedZoomSinceLastProgrammaticRegionChange:](self, "setUserChangedZoomSinceLastProgrammaticRegionChange:", [v5 userChangedZoomSinceLastProgrammaticRegionChange]);
    }
  }

  v7.receiver = self;
  v7.super_class = VKScreenCameraController;
  [(VKCameraController *)&v7 transferStatesWithCameraController:v4];
}

- (void)stopPitchingWithFocusPoint:(CGPoint)a3
{
  [(VKGestureCameraBehavior *)self->_gestureCameraControllerBehavior stopPitchingWithFocusPoint:a3.x, a3.y];
  [(VKScreenCameraController *)self clampZoomLevelIfNecessary];
  v4 = [(VKCameraController *)self cameraDelegate];
  [v4 didEndPitchingAccess];

  [(VKScreenCameraController *)self snapMapIfNecessary:1];
}

- (void)startPitchingWithFocusPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  pitchAnimation = self->_pitchAnimation;
  if (pitchAnimation)
  {
    [(VKAnimation *)pitchAnimation stop];
  }

  v7 = [(VKCameraController *)self cameraDelegate];
  [v7 willBeginPitchingAccess];

  gestureCameraControllerBehavior = self->_gestureCameraControllerBehavior;

  [(VKGestureCameraBehavior *)gestureCameraControllerBehavior startPitchingWithFocusPoint:x, y];
}

- (void)stopRotatingWithFocusPoint:(CGPoint)a3
{
  [(VKGestureCameraBehavior *)self->_gestureCameraControllerBehavior stopRotatingWithFocusPoint:a3.x, a3.y];
  v4 = [(VKCameraController *)self cameraDelegate];
  [v4 didEndRotatingAccess];

  [(VKScreenCameraController *)self snapMapIfNecessary:1];
}

- (void)startRotatingWithFocusPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VKCameraController *)self cameraDelegate];
  [v6 willBeginRotatingAccess];

  gestureCameraControllerBehavior = self->_gestureCameraControllerBehavior;

  [(VKGestureCameraBehavior *)gestureCameraControllerBehavior startRotatingWithFocusPoint:x, y];
}

- (void)stopPanningAtPoint:(CGPoint)a3
{
  [(VKGestureCameraBehavior *)self->_gestureCameraControllerBehavior stopPanningAtPoint:a3.x, a3.y];
  [(VKScreenCameraController *)self clampZoomLevelIfNecessary];
  v4 = [(VKCameraController *)self cameraDelegate];
  [v4 didEndPanningAccess];
}

- (void)updatePanWithTranslation:(CGPoint)a3
{
  [(VKGestureCameraBehavior *)self->_gestureCameraControllerBehavior updatePanWithTranslation:a3.x, a3.y];

  [(VKScreenCameraController *)self clampZoomLevelIfNecessary];
}

- (void)startPanningAtPoint:(CGPoint)a3 panAtStartPoint:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [(VKCameraController *)self cameraDelegate];
  [v8 willBeginPanningAccess];

  gestureCameraControllerBehavior = self->_gestureCameraControllerBehavior;

  [(VKGestureCameraBehavior *)gestureCameraControllerBehavior startPanningAtPoint:v4 panAtStartPoint:x, y];
}

- (void)stopPinchingWithFocusPoint:(CGPoint)a3
{
  [(VKGestureCameraBehavior *)self->_gestureCameraControllerBehavior stopPinchingWithFocusPoint:a3.x, a3.y];
  [(VKScreenCameraController *)self clampZoomLevelIfNecessaryAnimated:[(VKGestureCameraBehavior *)self->_gestureCameraControllerBehavior allowsZoomRubberbanding]];
  v4 = [(VKCameraController *)self cameraDelegate];
  [v4 didEndPinchingAccess];

  [(VKScreenCameraController *)self snapMapIfNecessary:1];
}

- (void)updatePinchWithFocusPoint:(CGPoint)a3 oldFactor:(double)a4 newFactor:(double)a5
{
  [(VKGestureCameraBehavior *)self->_gestureCameraControllerBehavior updatePinchWithFocusPoint:a3.x oldFactor:a3.y newFactor:a4, a5];
  self->_userChangedZoomSinceLastProgrammaticRegionChange = 1;
  annotationTrackingCameraController = self->_annotationTrackingCameraController;

  [(VKAnnotationTrackingCameraController *)annotationTrackingCameraController setHasUserSpecifiedZoomLevel:1];
}

- (void)startPinchingWithFocusPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

  v8 = [(VKCameraController *)self cameraDelegate];
  [v8 willBeginPinchingAccess];

  gestureCameraControllerBehavior = self->_gestureCameraControllerBehavior;

  [(VKGestureCameraBehavior *)gestureCameraControllerBehavior startPinchingWithFocusPoint:x, y];
}

- (void)zoom:(double)a3 withFocusPoint:(CGPoint)a4 completionHandler:(id)a5
{
  y = a4.y;
  x = a4.x;
  v14 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = [(VKCameraController *)self cameraDelegate];
  v11 = v10;
  if (v10)
  {
    [v10 willBeginRegionChangeAccess:1];
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  [(VKGestureCameraBehavior *)self->_gestureCameraControllerBehavior zoom:v9 withFocusPoint:a3 completionHandler:x, y];
  v12 = [(VKCameraController *)self cameraDelegate];
  [v12 didEndRegionChangeAccess:v13];

  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(v13);
}

- (void)setRegionRestriction:(id)a3 duration:(double)a4 timingFunction:(id)a5
{
  v8 = a3;
  if (![(VKCameraRegionRestriction *)self->_regionRestriction isEqual:?])
  {
    objc_storeStrong(&self->_regionRestriction, a3);
    v7 = [(VKCameraController *)self vkCamera];
    [v7 setRegionRestriction:v8];
  }
}

- (void)setCenterCoordinateDistanceRange:(id *)a3 duration:(double)a4 timingFunction:(id)a5
{
  v7 = *&a3->var2;
  *&self->_centerCoordinateDistanceRange.min = *&a3->var0;
  *&self->_centerCoordinateDistanceRange.allowRubberband = v7;
  [(VKGestureCameraBehavior *)self->_gestureCameraControllerBehavior setAllowsZoomRubberbanding:a3->var2, a5];
  v18 = [(VKCameraController *)self vkCamera];
  [v18 groundPoint];
  v9 = exp(v8 * 6.28318531 + -3.14159265);
  v10 = atan(v9);
  v11 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v10 * 114.591559 + -90.0);

  var1 = a3->var1;
  v13 = [(VKCameraController *)self vkCamera];
  v14 = fmin(var1 * v11, 1.0);
  if (var1 < 0.0)
  {
    v14 = 0.0;
  }

  v19 = v13;
  [v13 setMaxDistanceToGroundRestriction:{*&v14, var1 >= 0.0}];

  var0 = a3->var0;
  if (a3->var0 >= 0.0)
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

  v20 = [(VKCameraController *)self vkCamera];
  [v20 setMinDistanceToGroundRestriction:{*&v17, v16}];
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

- (void)setEdgeInsets:(VKEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v12.receiver = self;
  v12.super_class = VKScreenCameraController;
  [(VKCameraController *)&v12 setEdgeInsets:?];
  *&v8 = top;
  *&v9 = left;
  *&v10 = bottom;
  *&v11 = right;
  [(VKCameraController *)self->_annotationTrackingCameraController setEdgeInsets:v8, v9, v10, v11];
}

- (void)setAnnotationTrackingBehavior:(id *)a3
{
  v3 = *&a3->var2;
  *&self->_annotationTrackingBehavior.shouldZoomToFit = *&a3->var0;
  *&self->_annotationTrackingBehavior.shouldPreserveUserSpecifiedZoomLevel = v3;
  v4 = *a3;
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

- (VKScreenCameraController)initWithMapDataAccess:(MapDataAccess *)a3 animationRunner:(AnimationRunner *)a4 runLoopController:(RunLoopController *)a5 cameraDelegate:(id)a6
{
  v10 = a6;
  v21.receiver = self;
  v21.super_class = VKScreenCameraController;
  v11 = [(VKCameraController *)&v21 initWithMapDataAccess:a3 animationRunner:a4 runLoopController:a5 cameraDelegate:v10];
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