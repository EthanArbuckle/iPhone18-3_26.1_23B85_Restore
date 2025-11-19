@interface VKCameraController
- ($F24F406B2B787EFB06265DBA3D28CBD5)centerCoordinate;
- (BOOL)canZoomInForTileSize:(int64_t)a3;
- (BOOL)canZoomOutForTileSize:(int64_t)a3;
- (BOOL)isAnimating;
- (BOOL)isChangingRegion;
- (CGPoint)centerScreenPoint;
- (CGPoint)scaledScreenPointForPoint:(CGPoint)a3;
- (GEOMapRegion)mapRegion;
- (GEOMapRegion)mapRegionIgnoringEdgeInsets;
- (Matrix<int,)cursorFromScreenPoint:(CGPoint)a3;
- (VKCameraController)initWithMapDataAccess:(void *)a3 animationRunner:(AnimationRunner *)a4 runLoopController:(RunLoopController *)a5 cameraDelegate:(id)a6;
- (VKEdgeInsets)edgeInsets;
- (double)currentZoomLevelForTileSize:(int64_t)a3;
- (double)maximumZoomLevelForTileSize:(int64_t)a3;
- (double)minimumZoomLevelForTileSize:(int64_t)a3;
- (double)topDownMinimumZoomLevelForTileSize:(int64_t)a3;
- (id).cxx_construct;
- (id)cameraDelegate;
- (id)canvas;
- (id)getCameraType:(unsigned __int8)a3;
- (id)getMapEngineModeType:(unsigned __int8)a3;
- (id)getWorldType:(unsigned __int8)a3;
- (shared_ptr<gdc::Camera>)camera;
- (unint64_t)regionChangeCount;
- (void)populateDebugNode:(void *)a3 withOptions:(const void *)a4;
- (void)setCamera:(shared_ptr<gdc::Camera>)a3;
- (void)setCameraDelegate:(id)a3;
- (void)setCanvas:(id)a3;
- (void)setVkCamera:(id)a3;
- (void)transferStatesWithCameraController:(id)a3;
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
  v2 = [(VKCameraController *)self cameraDelegate];
  v3 = [v2 regionChangeCount];

  return v3;
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
  v3 = [(VKCameraController *)self canvas];
  [v3 size];
  if (v4 == 0.0)
  {
  }

  else
  {
    v5 = [(VKCameraController *)self canvas];
    [v5 size];
    v7 = v6;

    if (v7 != 0.0)
    {
      [(VKCameraController *)self edgeInsets];
      v9 = v8;
      v10 = [(VKCameraController *)self canvas];
      [v10 size];
      v12 = v11;
      [(VKCameraController *)self edgeInsets];
      v14 = v13;
      v15 = [(VKCameraController *)self canvas];
      [v15 size];
      v17 = v16;
      [(VKCameraController *)self edgeInsets];
      v19 = v18;
      v20 = [(VKCameraController *)self canvas];
      [v20 size];
      v22 = v21;
      [(VKCameraController *)self edgeInsets];
      v24 = v23;
      v25 = [(VKCameraController *)self canvas];
      [v25 size];
      v27 = v26;

      v28 = [(VKCameraController *)self vkCamera];
      v29 = (v24 + v24) / v27;
      v30 = (v19 + v19) / v22;
      v31 = (v14 + v14) / v17;
      v32 = (v9 + v9) / v12;
      v35 = 0;
      VKCameraCalculateEnclosingRegion(v28, &v35, 0, v32, v31, v30, v29);
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
  v3 = [(VKCameraController *)self canvas];
  [v3 size];
  if (v4 == 0.0)
  {
  }

  else
  {
    v5 = [(VKCameraController *)self canvas];
    [v5 size];
    v7 = v6;

    if (v7 != 0.0)
    {
      v8 = [(VKCameraController *)self vkCamera];
      v11 = 0;
      VKCameraCalculateEnclosingRegion(v8, &v11, 0, 0.0, 0.0, 0.0, 0.0);
      v9 = v11;

      goto LABEL_6;
    }
  }

  v9 = [objc_alloc(MEMORY[0x1E69A2200]) initWithCoordinateRegion:{0.0, 0.0, 90.0, 180.0}];
LABEL_6:

  return v9;
}

- (void)populateDebugNode:(void *)a3 withOptions:(const void *)a4
{
  std::string::basic_string[abi:nn200100]<0>(&v63, "Animating");
  gdc::DebugTreeValue::DebugTreeValue(v60, [(VKCameraController *)self isAnimating]);
  gdc::DebugTreeNode::addProperty(a3, &v63, v60);
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
  gdc::DebugTreeNode::addProperty(a3, &v63, v57);
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
  gdc::DebugTreeNode::addProperty(a3, &v63, v54);
  if (v56 < 0)
  {
    operator delete(__p);
  }

  if (v64 < 0)
  {
    operator delete(v63);
  }

  std::string::basic_string[abi:nn200100]<0>(&v63, "VKCamera Detailed Description");
  v6 = [(VKCamera *)self->_vkCamera detailedDescription];
  gdc::DebugTreeValue::DebugTreeValue(v51, [v6 UTF8String]);
  gdc::DebugTreeNode::addProperty(a3, &v63, v51);
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
  gdc::DebugTreeNode::addProperty(a3, &v63, v48);
  if (v50 < 0)
  {
    operator delete(v49);
  }

  if (v64 < 0)
  {
    operator delete(v63);
  }

  std::string::basic_string[abi:nn200100]<0>(&v63, "Camera Target");
  v8 = gdc::DebugTreeNode::createChildNode(a3, &v63);
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
  v18 = gdc::DebugTreeNode::createChildNode(a3, &v63);
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

- (BOOL)canZoomOutForTileSize:(int64_t)a3
{
  [(VKCameraController *)self minimumZoomLevelForTileSize:?];
  v6 = v5;
  [(VKCameraController *)self currentZoomLevelForTileSize:a3];
  return vabdd_f64(v7, v6) >= 0.8;
}

- (BOOL)canZoomInForTileSize:(int64_t)a3
{
  [(VKCameraController *)self maximumZoomLevelForTileSize:?];
  v6 = v5;
  [(VKCameraController *)self currentZoomLevelForTileSize:a3];
  return vabdd_f64(v7, v6) >= 0.8;
}

- (double)topDownMinimumZoomLevelForTileSize:(int64_t)a3
{
  [(VKCameraController *)self topDownMinimumZoomLevel];
  v6 = v5;
  [(VKCameraController *)self zoomLevelAdjustmentForTileSize:a3];
  return v7 + v6;
}

- (double)currentZoomLevelForTileSize:(int64_t)a3
{
  [(VKCameraController *)self currentZoomLevel];
  v6 = v5;
  [(VKCameraController *)self zoomLevelAdjustmentForTileSize:a3];
  return v7 + v6;
}

- (double)maximumZoomLevelForTileSize:(int64_t)a3
{
  [(VKCameraController *)self maximumZoomLevel];
  v6 = v5;
  [(VKCameraController *)self zoomLevelAdjustmentForTileSize:a3];
  return v7 + v6;
}

- (double)minimumZoomLevelForTileSize:(int64_t)a3
{
  [(VKCameraController *)self minimumZoomLevel];
  v6 = v5;
  [(VKCameraController *)self zoomLevelAdjustmentForTileSize:a3];
  return v7 + v6;
}

- (Matrix<int,)cursorFromScreenPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VKCameraController *)self canvas];
  [v6 contentScale];
  v8 = v7;

  v9 = [(VKCameraController *)self canvas];
  [v9 size];
  v11 = v10;
  v12 = [(VKCameraController *)self canvas];
  [v12 size];
  v14 = ((v8 - y * v8) * v13);

  return ((v8 * x * v11) | (v14 << 32));
}

- (CGPoint)scaledScreenPointForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(VKCameraController *)self canvas];
  [v5 size];
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
  v2 = [(VKCameraController *)self cameraDelegate];
  v3 = [v2 regionChangeState];

  result = 0;
  if (*v3)
  {
    v4 = v3[1];
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
  v2 = [(VKCameraController *)self cameraDelegate];
  v3 = [v2 regionChangeState];

  result = 0;
  if (*v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      if (*(v4 + 8) != -1 && *(v4 + 8) && (**v3 & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

- (id)getMapEngineModeType:(unsigned __int8)a3
{
  if (a3 > 0x11u)
  {
    v3 = "<Invalid>";
  }

  else
  {
    v3 = off_1E7B38AA0[a3];
  }

  return [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
}

- (id)getCameraType:(unsigned __int8)a3
{
  if (a3 > 3u)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E7B31FA0 + a3);
  }
}

- (id)getWorldType:(unsigned __int8)a3
{
  if (a3 > 5u)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E7B31F70 + a3);
  }
}

- (void)setCameraDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_cameraDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_cameraDelegate, obj);
    v5 = obj;
  }
}

- (void)setCanvas:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_canvas);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_canvas, obj);
    v5 = obj;
  }
}

- (void)setCamera:(shared_ptr<gdc::Camera>)a3
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
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

- (void)setVkCamera:(id)a3
{
  v5 = a3;
  vkCamera = self->_vkCamera;
  p_vkCamera = &self->_vkCamera;
  if (vkCamera != v5)
  {
    v8 = v5;
    objc_storeStrong(p_vkCamera, a3);
    v5 = v8;
  }
}

- (void)transferStatesWithCameraController:(id)a3
{
  v4 = a3;
  -[VKCameraController setStaysCenteredDuringRotation:](self, "setStaysCenteredDuringRotation:", [v4 staysCenteredDuringRotation]);
  -[VKCameraController setStaysCenteredDuringPinch:](self, "setStaysCenteredDuringPinch:", [v4 staysCenteredDuringPinch]);
  -[VKCameraController setGesturing:](self, "setGesturing:", [v4 isGesturing]);
  -[VKCameraController setIsPitchEnabled:](self, "setIsPitchEnabled:", [v4 isPitchEnabled]);
  -[VKCameraController setEdgeInsetsAnimating:](self, "setEdgeInsetsAnimating:", [v4 edgeInsetsAnimating]);
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 vkCamera];

    if (v5)
    {
      v6 = [v4 vkCamera];
      v7 = [v6 regionRestriction];
      [(VKCameraController *)self setRegionRestriction:v7];
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v8 = v4;
    v9 = self;
    v10 = [v8 trackingAnnotation];
    if (v10)
    {
      v11 = [v8 isTrackingHeading];
      [v8 stopTrackingAnnotation];
      if (v8)
      {
        [v8 annotationTrackingBehavior];
      }

      else
      {
        memset(v12, 0, sizeof(v12));
      }

      [(VKCameraController *)v9 setAnnotationTrackingBehavior:v12];
      [(VKCameraController *)v9 startTrackingAnnotation:v10 trackHeading:v11 animated:0 duration:0 timingFunction:-1.0];
    }
  }
}

- (VKCameraController)initWithMapDataAccess:(void *)a3 animationRunner:(AnimationRunner *)a4 runLoopController:(RunLoopController *)a5 cameraDelegate:(id)a6
{
  v10 = a6;
  if (v10 && (v14.receiver = self, v14.super_class = VKCameraController, v11 = [(VKCameraController *)&v14 init], (self = v11) != 0))
  {
    v11->_mapDataAccess = a3;
    v11->_animationRunner = a4;
    v11->_runLoopController = a5;
    objc_storeWeak(&v11->_cameraDelegate, v10);
    self->_baseDisplayRate = -1;
    self->_maxDisplayRate = -1;
    self = self;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end