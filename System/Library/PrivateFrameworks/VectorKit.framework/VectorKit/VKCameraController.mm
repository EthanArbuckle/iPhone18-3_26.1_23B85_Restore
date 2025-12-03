@interface VKCameraController
- ($F24F406B2B787EFB06265DBA3D28CBD5)centerCoordinate;
- (BOOL)canZoomInForTileSize:(int64_t)size;
- (BOOL)canZoomOutForTileSize:(int64_t)size;
- (BOOL)isAnimating;
- (BOOL)isChangingRegion;
- (CGPoint)centerScreenPoint;
- (CGPoint)scaledScreenPointForPoint:(CGPoint)point;
- (GEOMapRegion)mapRegion;
- (GEOMapRegion)mapRegionIgnoringEdgeInsets;
- (Matrix<int,)cursorFromScreenPoint:(CGPoint)point;
- (VKCameraController)initWithMapDataAccess:(void *)access animationRunner:(AnimationRunner *)runner runLoopController:(RunLoopController *)controller cameraDelegate:(id)delegate;
- (VKEdgeInsets)edgeInsets;
- (double)currentZoomLevelForTileSize:(int64_t)size;
- (double)maximumZoomLevelForTileSize:(int64_t)size;
- (double)minimumZoomLevelForTileSize:(int64_t)size;
- (double)topDownMinimumZoomLevelForTileSize:(int64_t)size;
- (id).cxx_construct;
- (id)cameraDelegate;
- (id)canvas;
- (id)getCameraType:(unsigned __int8)type;
- (id)getMapEngineModeType:(unsigned __int8)type;
- (id)getWorldType:(unsigned __int8)type;
- (shared_ptr<gdc::Camera>)camera;
- (unint64_t)regionChangeCount;
- (void)populateDebugNode:(void *)node withOptions:(const void *)options;
- (void)setCamera:(shared_ptr<gdc::Camera>)camera;
- (void)setCameraDelegate:(id)delegate;
- (void)setCanvas:(id)canvas;
- (void)setVkCamera:(id)camera;
- (void)transferStatesWithCameraController:(id)controller;
@end

@implementation VKCameraController

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (id)canvas
{
  WeakRetained = objc_loadWeakRetained(&self->_canvas);

  return WeakRetained;
}

- (shared_ptr<gdc::Camera>)camera
{
  cntrl = self->_camera.__cntrl_;
  *v2 = self->_camera.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (unint64_t)regionChangeCount
{
  cameraDelegate = [(VKCameraController *)self cameraDelegate];
  regionChangeCount = [cameraDelegate regionChangeCount];

  return regionChangeCount;
}

- (id)cameraDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraDelegate);

  return WeakRetained;
}

- (CGPoint)centerScreenPoint
{
  [(VKCameraController *)self camera];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  if (v8)
  {
    [(VKCameraController *)self camera];
    v3 = gdc::Canvas::centerScreenPoint(v8 + 46);
    v5 = v4;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    v6 = v3;
    v7 = v5;
  }

  else
  {
    v6 = 0.5;
    v7 = 0.5;
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (GEOMapRegion)mapRegion
{
  canvas = [(VKCameraController *)self canvas];
  [canvas size];
  if (v4 == 0.0)
  {
  }

  else
  {
    canvas2 = [(VKCameraController *)self canvas];
    [canvas2 size];
    v7 = v6;

    if (v7 != 0.0)
    {
      [(VKCameraController *)self edgeInsets];
      v9 = v8;
      canvas3 = [(VKCameraController *)self canvas];
      [canvas3 size];
      v12 = v11;
      [(VKCameraController *)self edgeInsets];
      v14 = v13;
      canvas4 = [(VKCameraController *)self canvas];
      [canvas4 size];
      v17 = v16;
      [(VKCameraController *)self edgeInsets];
      v19 = v18;
      canvas5 = [(VKCameraController *)self canvas];
      [canvas5 size];
      v22 = v21;
      [(VKCameraController *)self edgeInsets];
      v24 = v23;
      canvas6 = [(VKCameraController *)self canvas];
      [canvas6 size];
      v27 = v26;

      vkCamera = [(VKCameraController *)self vkCamera];
      v29 = (v24 + v24) / v27;
      v30 = (v19 + v19) / v22;
      v31 = (v14 + v14) / v17;
      v32 = (v9 + v9) / v12;
      v35 = 0;
      VKCameraCalculateEnclosingRegion(vkCamera, &v35, 0, v32, v31, v30, v29);
      v33 = v35;

      goto LABEL_6;
    }
  }

  v33 = [objc_alloc(MEMORY[0x1E69A2200]) initWithCoordinateRegion:{0.0, 0.0, 90.0, 180.0}];
LABEL_6:

  return v33;
}

- (VKEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (GEOMapRegion)mapRegionIgnoringEdgeInsets
{
  canvas = [(VKCameraController *)self canvas];
  [canvas size];
  if (v4 == 0.0)
  {
  }

  else
  {
    canvas2 = [(VKCameraController *)self canvas];
    [canvas2 size];
    v7 = v6;

    if (v7 != 0.0)
    {
      vkCamera = [(VKCameraController *)self vkCamera];
      v11 = 0;
      VKCameraCalculateEnclosingRegion(vkCamera, &v11, 0, 0.0, 0.0, 0.0, 0.0);
      v9 = v11;

      goto LABEL_6;
    }
  }

  v9 = [objc_alloc(MEMORY[0x1E69A2200]) initWithCoordinateRegion:{0.0, 0.0, 90.0, 180.0}];
LABEL_6:

  return v9;
}

- (void)populateDebugNode:(void *)node withOptions:(const void *)options
{
  std::string::basic_string[abi:nn200100]<0>(&v63, "Animating");
  gdc::DebugTreeValue::DebugTreeValue(v60, [(VKCameraController *)self isAnimating]);
  gdc::DebugTreeNode::addProperty(node, &v63, v60);
  if (v62 < 0)
  {
    operator delete(v61);
  }

  if (v64 < 0)
  {
    operator delete(v63);
  }

  std::string::basic_string[abi:nn200100]<0>(&v63, "Gesturing");
  gdc::DebugTreeValue::DebugTreeValue(v57, [(VKCameraController *)self isGesturing]);
  gdc::DebugTreeNode::addProperty(node, &v63, v57);
  if (v59 < 0)
  {
    operator delete(v58);
  }

  if (v64 < 0)
  {
    operator delete(v63);
  }

  std::string::basic_string[abi:nn200100]<0>(&v63, "RegionChangeCount");
  gdc::DebugTreeValue::DebugTreeValue(v54, [(VKCameraController *)self regionChangeCount]);
  gdc::DebugTreeNode::addProperty(node, &v63, v54);
  if (v56 < 0)
  {
    operator delete(__p);
  }

  if (v64 < 0)
  {
    operator delete(v63);
  }

  std::string::basic_string[abi:nn200100]<0>(&v63, "VKCamera Detailed Description");
  detailedDescription = [(VKCamera *)self->_vkCamera detailedDescription];
  gdc::DebugTreeValue::DebugTreeValue(v51, [detailedDescription UTF8String]);
  gdc::DebugTreeNode::addProperty(node, &v63, v51);
  if (v53 < 0)
  {
    operator delete(v52);
  }

  if (v64 < 0)
  {
    operator delete(v63);
  }

  std::string::basic_string[abi:nn200100]<0>(&v63, "Distance From Target");
  [(VKCameraController *)self distanceFromCenterCoordinate];
  gdc::DebugTreeValue::DebugTreeValue(v48, v7);
  gdc::DebugTreeNode::addProperty(node, &v63, v48);
  if (v50 < 0)
  {
    operator delete(v49);
  }

  if (v64 < 0)
  {
    operator delete(v63);
  }

  std::string::basic_string[abi:nn200100]<0>(&v63, "Camera Target");
  v8 = gdc::DebugTreeNode::createChildNode(node, &v63);
  if (v64 < 0)
  {
    operator delete(v63);
  }

  [(VKCamera *)self->_vkCamera groundPlaneIntersectionPoint];
  v29 = v9;
  v11 = v10 * 6.28318531;
  v13 = exp(v12 * 6.28318531 + -3.14159265);
  v14 = atan(v13);
  v15 = fmod(v11, 6.28318531);
  v16 = fmod(v15 + 6.28318531, 6.28318531);
  std::string::basic_string[abi:nn200100]<0>(&v63, "Latitude");
  gdc::DebugTreeValue::DebugTreeValue(v45, v14 * 114.591559 + -90.0);
  gdc::DebugTreeNode::addProperty(v8, &v63, v45);
  if (v47 < 0)
  {
    operator delete(v46);
  }

  v17 = v16 * 57.2957795 + -180.0;
  if (v64 < 0)
  {
    operator delete(v63);
  }

  std::string::basic_string[abi:nn200100]<0>(&v63, "Longitude");
  gdc::DebugTreeValue::DebugTreeValue(v42, v17);
  gdc::DebugTreeNode::addProperty(v8, &v63, v42);
  if (v44 < 0)
  {
    operator delete(v43);
  }

  if (v64 < 0)
  {
    operator delete(v63);
  }

  std::string::basic_string[abi:nn200100]<0>(&v63, "Altitude");
  gdc::DebugTreeValue::DebugTreeValue(v39, v29);
  gdc::DebugTreeNode::addProperty(v8, &v63, v39);
  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (v64 < 0)
  {
    operator delete(v63);
  }

  std::string::basic_string[abi:nn200100]<0>(&v63, "Camera Position");
  v18 = gdc::DebugTreeNode::createChildNode(node, &v63);
  if (v64 < 0)
  {
    operator delete(v63);
  }

  [(VKCamera *)self->_vkCamera mercatorPosition];
  v20 = v19;
  v22 = v21 * 6.28318531;
  v24 = exp(v23 * 6.28318531 + -3.14159265);
  v25 = atan(v24);
  v26 = fmod(v22, 6.28318531);
  v27 = fmod(v26 + 6.28318531, 6.28318531);
  std::string::basic_string[abi:nn200100]<0>(&v63, "Latitude");
  gdc::DebugTreeValue::DebugTreeValue(v36, v25 * 114.591559 + -90.0);
  gdc::DebugTreeNode::addProperty(v18, &v63, v36);
  if (v38 < 0)
  {
    operator delete(v37);
  }

  v28 = v27 * 57.2957795 + -180.0;
  if (v64 < 0)
  {
    operator delete(v63);
  }

  std::string::basic_string[abi:nn200100]<0>(&v63, "Longitude");
  gdc::DebugTreeValue::DebugTreeValue(v33, v28);
  gdc::DebugTreeNode::addProperty(v18, &v63, v33);
  if (v35 < 0)
  {
    operator delete(v34);
  }

  if (v64 < 0)
  {
    operator delete(v63);
  }

  std::string::basic_string[abi:nn200100]<0>(&v63, "Altitude");
  gdc::DebugTreeValue::DebugTreeValue(v30, v20);
  gdc::DebugTreeNode::addProperty(v18, &v63, v30);
  if (v32 < 0)
  {
    operator delete(v31);
  }

  if (v64 < 0)
  {
    operator delete(v63);
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)centerCoordinate
{
  [(VKCameraController *)self doesNotRecognizeSelector:a2];
  v2 = 0.0;
  v3 = 0.0;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (BOOL)canZoomOutForTileSize:(int64_t)size
{
  [(VKCameraController *)self minimumZoomLevelForTileSize:?];
  v6 = v5;
  [(VKCameraController *)self currentZoomLevelForTileSize:size];
  return vabdd_f64(v7, v6) >= 0.8;
}

- (BOOL)canZoomInForTileSize:(int64_t)size
{
  [(VKCameraController *)self maximumZoomLevelForTileSize:?];
  v6 = v5;
  [(VKCameraController *)self currentZoomLevelForTileSize:size];
  return vabdd_f64(v7, v6) >= 0.8;
}

- (double)topDownMinimumZoomLevelForTileSize:(int64_t)size
{
  [(VKCameraController *)self topDownMinimumZoomLevel];
  v6 = v5;
  [(VKCameraController *)self zoomLevelAdjustmentForTileSize:size];
  return v7 + v6;
}

- (double)currentZoomLevelForTileSize:(int64_t)size
{
  [(VKCameraController *)self currentZoomLevel];
  v6 = v5;
  [(VKCameraController *)self zoomLevelAdjustmentForTileSize:size];
  return v7 + v6;
}

- (double)maximumZoomLevelForTileSize:(int64_t)size
{
  [(VKCameraController *)self maximumZoomLevel];
  v6 = v5;
  [(VKCameraController *)self zoomLevelAdjustmentForTileSize:size];
  return v7 + v6;
}

- (double)minimumZoomLevelForTileSize:(int64_t)size
{
  [(VKCameraController *)self minimumZoomLevel];
  v6 = v5;
  [(VKCameraController *)self zoomLevelAdjustmentForTileSize:size];
  return v7 + v6;
}

- (Matrix<int,)cursorFromScreenPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  canvas = [(VKCameraController *)self canvas];
  [canvas contentScale];
  v8 = v7;

  canvas2 = [(VKCameraController *)self canvas];
  [canvas2 size];
  v11 = v10;
  canvas3 = [(VKCameraController *)self canvas];
  [canvas3 size];
  v14 = ((v8 - y * v8) * v13);

  return ((v8 * x * v11) | (v14 << 32));
}

- (CGPoint)scaledScreenPointForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  canvas = [(VKCameraController *)self canvas];
  [canvas size];
  v7 = v6;
  v9 = v8;

  v10 = x / v7;
  v11 = 1.0 - y / v9;
  v12 = v10;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (BOOL)isChangingRegion
{
  cameraDelegate = [(VKCameraController *)self cameraDelegate];
  regionChangeState = [cameraDelegate regionChangeState];

  result = 0;
  if (*regionChangeState)
  {
    v4 = regionChangeState[1];
    if (v4)
    {
      if (*(v4 + 8) != -1 && *(v4 + 8))
      {
        return 1;
      }
    }
  }

  return result;
}

- (BOOL)isAnimating
{
  cameraDelegate = [(VKCameraController *)self cameraDelegate];
  regionChangeState = [cameraDelegate regionChangeState];

  result = 0;
  if (*regionChangeState)
  {
    v4 = *(regionChangeState + 8);
    if (v4)
    {
      if (*(v4 + 8) != -1 && *(v4 + 8) && (**regionChangeState & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

- (id)getMapEngineModeType:(unsigned __int8)type
{
  if (type > 0x11u)
  {
    v3 = "<Invalid>";
  }

  else
  {
    v3 = off_1E7B38AA0[type];
  }

  return [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
}

- (id)getCameraType:(unsigned __int8)type
{
  if (type > 3u)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E7B31FA0 + type);
  }
}

- (id)getWorldType:(unsigned __int8)type
{
  if (type > 5u)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E7B31F70 + type);
  }
}

- (void)setCameraDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_cameraDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_cameraDelegate, obj);
    v5 = obj;
  }
}

- (void)setCanvas:(id)canvas
{
  obj = canvas;
  WeakRetained = objc_loadWeakRetained(&self->_canvas);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_canvas, obj);
    v5 = obj;
  }
}

- (void)setCamera:(shared_ptr<gdc::Camera>)camera
{
  v4 = *camera.__ptr_;
  v3 = *(camera.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_camera.__cntrl_;
  self->_camera.__ptr_ = v4;
  self->_camera.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
  }
}

- (void)setVkCamera:(id)camera
{
  cameraCopy = camera;
  vkCamera = self->_vkCamera;
  p_vkCamera = &self->_vkCamera;
  if (vkCamera != cameraCopy)
  {
    v8 = cameraCopy;
    objc_storeStrong(p_vkCamera, camera);
    cameraCopy = v8;
  }
}

- (void)transferStatesWithCameraController:(id)controller
{
  controllerCopy = controller;
  -[VKCameraController setStaysCenteredDuringRotation:](self, "setStaysCenteredDuringRotation:", [controllerCopy staysCenteredDuringRotation]);
  -[VKCameraController setStaysCenteredDuringPinch:](self, "setStaysCenteredDuringPinch:", [controllerCopy staysCenteredDuringPinch]);
  -[VKCameraController setGesturing:](self, "setGesturing:", [controllerCopy isGesturing]);
  -[VKCameraController setIsPitchEnabled:](self, "setIsPitchEnabled:", [controllerCopy isPitchEnabled]);
  -[VKCameraController setEdgeInsetsAnimating:](self, "setEdgeInsetsAnimating:", [controllerCopy edgeInsetsAnimating]);
  if (objc_opt_respondsToSelector())
  {
    vkCamera = [controllerCopy vkCamera];

    if (vkCamera)
    {
      vkCamera2 = [controllerCopy vkCamera];
      regionRestriction = [vkCamera2 regionRestriction];
      [(VKCameraController *)self setRegionRestriction:regionRestriction];
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v8 = controllerCopy;
    selfCopy = self;
    trackingAnnotation = [v8 trackingAnnotation];
    if (trackingAnnotation)
    {
      isTrackingHeading = [v8 isTrackingHeading];
      [v8 stopTrackingAnnotation];
      if (v8)
      {
        [v8 annotationTrackingBehavior];
      }

      else
      {
        memset(v12, 0, sizeof(v12));
      }

      [(VKCameraController *)selfCopy setAnnotationTrackingBehavior:v12];
      [(VKCameraController *)selfCopy startTrackingAnnotation:trackingAnnotation trackHeading:isTrackingHeading animated:0 duration:0 timingFunction:-1.0];
    }
  }
}

- (VKCameraController)initWithMapDataAccess:(void *)access animationRunner:(AnimationRunner *)runner runLoopController:(RunLoopController *)controller cameraDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy && (v14.receiver = self, v14.super_class = VKCameraController, v11 = [(VKCameraController *)&v14 init], (self = v11) != 0))
  {
    v11->_mapDataAccess = access;
    v11->_animationRunner = runner;
    v11->_runLoopController = controller;
    objc_storeWeak(&v11->_cameraDelegate, delegateCopy);
    self->_baseDisplayRate = -1;
    self->_maxDisplayRate = -1;
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end