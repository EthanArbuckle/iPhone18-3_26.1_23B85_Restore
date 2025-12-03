@interface VKImageCanvas
- (GEOMapRegion)mapRegion;
- (VKEdgeInsets)edgeInsets;
- (VKImageCanvas)initWithMapEngine:(void *)engine;
- (id).cxx_construct;
- (shared_ptr<gdc::Camera>)camera;
- (shared_ptr<md::TaskContext>)taskContext;
- (void)cancelLoad;
- (void)loadScene;
- (void)renderSceneWithEngine:(void *)engine completion:(function<void)(;
- (void)setCenterCoordinate:(id)coordinate altitude:(double)altitude yaw:(double)yaw pitch:(double)pitch;
- (void)setEdgeInsets:(VKEdgeInsets)insets;
- (void)setMapRegion:(id)region pitch:(double)pitch yaw:(double)yaw;
@end

@implementation VKImageCanvas

- (id).cxx_construct
{
  *(self + 1) = &unk_1F2A20410;
  *(self + 2) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = &unk_1F2A203A8;
  *(self + 7) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  return self;
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

- (void)renderSceneWithEngine:(void *)engine completion:(function<void)(
{
  v10[4] = *MEMORY[0x1E69E9840];
  if (a4->__f_.__f_)
  {
    md::MapEngine::cancelDisplayLink(engine);
    v7 = *(self->_taskContext.__ptr_ + 1);
    v10[0] = &unk_1F2A203C8;
    v10[3] = v10;
    geo::TaskQueue::barrierSync(v7, v10);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v10);
  }

  md::HomeQueueScheduler::waitForSynchronization(*(engine + 5920), "[VKImageCanvas renderSceneWithEngine:completion:]");
  v8 = CACurrentMediaTime();
  if (md::MapEngine::renderSceneSync(engine, v8))
  {
    f = a4->__f_.__f_;
    if (f)
    {
      (*(*f + 48))(f);
    }
  }
}

- (void)cancelLoad
{
  var0 = self->_runLoopController->var0;
  if (var0)
  {
    v3 = *(var0 + 20);
    if (v3)
    {
      (*(*v3 + 16))(v3, 1);
    }
  }
}

- (void)loadScene
{
  var0 = self->_runLoopController->var0;
  if (var0)
  {
    v3 = 5;
    md::MapEngine::setNeedsTick(var0, &v3);
  }
}

- (void)setEdgeInsets:(VKEdgeInsets)insets
{
  *&v5.bottom = *&insets.bottom;
  if (*&v5.top != *&self->_edgeInsets.top || *&insets.bottom != *&self->_edgeInsets.bottom)
  {
    HIDWORD(v4) = LODWORD(v5.left);
    self->_edgeInsets = v5;
    *&v4 = self->_edgeInsets.top;
    insets.left = self->_edgeInsets.left;
    insets.bottom = self->_edgeInsets.bottom;
    insets.right = self->_edgeInsets.right;
    [(VKCameraController *)self->_cameraController._obj setEdgeInsets:v4, *&insets.left, *&insets.bottom, *&insets.right];
  }
}

- (GEOMapRegion)mapRegion
{
  mapRegion = [(VKCameraController *)self->_cameraController._obj mapRegion];

  return mapRegion;
}

- (void)setCenterCoordinate:(id)coordinate altitude:(double)altitude yaw:(double)yaw pitch:(double)pitch
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  if (objc_opt_respondsToSelector())
  {
    obj = self->_cameraController._obj;

    [(VKCameraController *)obj setCenterCoordinate:2 altitude:0 yaw:0 pitch:var0 duration:var1 animationStyle:altitude timingCurve:yaw completion:pitch, 0.0];
  }
}

- (void)setMapRegion:(id)region pitch:(double)pitch yaw:(double)yaw
{
  regionCopy = region;
  v8 = self->_cameraController._obj;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(VKCameraController *)self->_cameraController._obj setMapRegion:regionCopy pitch:0 yaw:0 duration:pitch timingCurve:yaw completion:0.0];
  }
}

- (shared_ptr<md::TaskContext>)taskContext
{
  cntrl = self->_taskContext.__cntrl_;
  *v2 = self->_taskContext.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (VKImageCanvas)initWithMapEngine:(void *)engine
{
  v35 = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = VKImageCanvas;
  v4 = [(VKImageCanvas *)&v32 init];
  v5 = v4;
  if (v4)
  {
    v4->_runLoopController = *(engine + 26);
    objc_storeStrong(&v4->_displayTarget, *(engine + 5207));
    v7 = *(engine + 11);
    v6 = *(engine + 12);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v5->_taskContext.__cntrl_;
    v5->_taskContext.__ptr_ = v7;
    v5->_taskContext.__cntrl_ = v6;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
    }

    *&v5->_edgeInsets.top = 0;
    *&v5->_edgeInsets.bottom = 0;
    *(engine + 41784) = 1;
    v9 = *(engine + 2617);
    v10 = *(engine + 5235);
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = v5->_camera.__cntrl_;
    v5->_camera = v9;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }

    v12 = [[VKCamera alloc] initWithRunLoopController:v5->_runLoopController];
    *&v33.f64[0] = &unk_1F2A203A8;
    *&v33.f64[1] = v12;
    v13 = v12;
    geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(&v5->_vkCamera, &v33);
    *&v33.f64[0] = &unk_1F2A203A8;

    [(VKCamera *)v5->_vkCamera._obj setNdcZNear:*(*(*(engine + 13) + 8) + 64)];
    memset(v31, 0, 24);
    v31[3] = 0x3FF0000000000000;
    [(VKCamera *)v5->_vkCamera._obj setOrientation:v31];
    v14 = gdc::Camera::cameraFrame(v5->_camera.__ptr_);
    v30 = *(v14 + 8);
    v15 = tan(*v14 * 0.5 + 0.785398163);
    v16 = log(v15);
    *&v17.f64[0] = v30;
    v17.f64[1] = v16;
    __asm { FMOV            V2.2D, #0.5 }

    v33 = vmlaq_f64(_Q2, vdupq_n_s64(0x3FC45F306DC9C883uLL), v17);
    v34 = *(&v30 + 1);
    [(VKCamera *)v5->_vkCamera._obj setMercatorPosition:&v33];
    v23 = *(engine + 5207);
    [v23 size];
    if (v24 > 0.0)
    {
      [v23 size];
      if (v25 > 0.0)
      {
        [v23 size];
        v27 = v26;
        [v23 size];
        [(VKCamera *)v5->_vkCamera._obj setAspectRatio:v27 / v28];
      }
    }
  }

  return v5;
}

@end