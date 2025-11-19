@interface VKScreenCanvas
- (MDMapControllerDelegate)mapDelegate;
- (VKEdgeInsets)edgeInsets;
- (VKEdgeInsets)fullyOccludedEdgeInsets;
- (VKScreenCanvas)initWithMapEngine:(void *)a3 inBackground:(BOOL)a4;
- (_retain_ptr<VKCamera)vkCamera;
- (id).cxx_construct;
- (shared_ptr<gdc::Camera>)camera;
- (void)cameraController:(id)a3 requestsDisplayRate:(int64_t)a4;
- (void)dealloc;
- (void)setBaseDisplayRate:(int64_t)a3;
- (void)setCamera:(shared_ptr<gdc::Camera>)a3;
- (void)setCameraController:(id)a3;
- (void)setEdgeInsets:(VKEdgeInsets)a3;
- (void)setGesturing:(BOOL)a3;
- (void)setMaxDisplayRate:(int64_t)a3;
- (void)setVkCamera:(_retain_ptr<VKCamera *);
- (void)transferStateFromCanvas:(id)a3;
- (void)updateCameraForFrameResize;
@end

@implementation VKScreenCanvas

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = &unk_1F2A203A8;
  *(self + 7) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 13) = 0u;
  *(self + 28) = 0x3FF0000000000000;
  *(self + 77) = 0xBFF0000000000000;
  *(self + 78) = 0x3FF0000000000000;
  *(self + 159) = 2;
  return self;
}

- (void)updateCameraForFrameResize
{
  [(VKCameraController *)self->_cameraController canvasDidLayout];
  [(MDRenderTarget *)self->_displayTarget size];
  v4 = v3;
  v6 = v5;
  v7 = md::LogicManager::logic<md::StyleLogic>(*(self->_mapEngine + 5241));
  v8 = *(v7 + 208);
  v9 = fmin(v6, v4);
  if (v9 <= 250.0)
  {
    gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(v8, 0x10018u, 0);
    v13 = 0;
    v12 = *(v7 + 224);
  }

  else
  {
    if (v9 <= 850.0)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    if (v9 <= 450.0)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(v8, 0x10018u, v11);
    v12 = *(v7 + 224);
    if (v9 <= 450.0)
    {
      v13 = 1;
    }

    else if (v9 <= 850.0)
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }
  }

  gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(v12, 0x10018u, v13);
  v14 = md::LogicManager::logic<md::StyleLogic>(*(self->_mapEngine + 5241));

  md::StyleLogic::setStyleManagerDidChange(v14);
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

- (MDMapControllerDelegate)mapDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mapDelegate);

  return WeakRetained;
}

- (VKEdgeInsets)fullyOccludedEdgeInsets
{
  top = self->_fullyOccludedEdgeInsets.top;
  left = self->_fullyOccludedEdgeInsets.left;
  bottom = self->_fullyOccludedEdgeInsets.bottom;
  right = self->_fullyOccludedEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
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

- (void)setVkCamera:(_retain_ptr<VKCamera *)
{
  v4 = a3._vptr$_retain_ptr[1];
  obj = self->_vkCamera._obj;
  self->_vkCamera._obj = v4;
}

- (_retain_ptr<VKCamera)vkCamera
{
  v3 = geo::_retain_ptr<VKCamera * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v2, &self->_vkCamera);
  result._obj = v4;
  result._vptr$_retain_ptr = v3;
  return result;
}

- (void)transferStateFromCanvas:(id)a3
{
  v4 = [a3 cameraController];
  [(VKCameraController *)self->_cameraController transferStatesWithCameraController:?];
}

- (void)setMaxDisplayRate:(int64_t)a3
{
  self->_maxDisplayRate = a3;
  cameraController = self->_cameraController;
  if (cameraController)
  {
    [(VKCameraController *)cameraController setMaxDisplayRate:?];
  }
}

- (void)setBaseDisplayRate:(int64_t)a3
{
  self->_baseDisplayRate = a3;
  cameraController = self->_cameraController;
  if (cameraController)
  {
    [(VKCameraController *)cameraController setBaseDisplayRate:?];
  }
}

- (void)cameraController:(id)a3 requestsDisplayRate:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_mapDelegate);
  [WeakRetained mapController:self requestsDisplayRate:a4];
}

- (void)setCameraController:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_cameraController != v5)
  {
    if (GEOGetVectorKitVKMapViewLog(void)::onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKMapViewLog(void)::onceToken, &__block_literal_global_2067);
    }

    v6 = GEOGetVectorKitVKMapViewLog(void)::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138412546;
      v30 = v8;
      v31 = 2048;
      v32 = v5;
      _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_INFO, "Camera controller did change:%@ %p", buf, 0x16u);
    }

    v9 = self->_cameraController;
    [(VKCameraController *)v5 setVkCamera:self->_vkCamera._obj];
    if (v9)
    {
      obj = self->_vkCamera._obj;
      if (obj)
      {
        if (self->_camera.__ptr_)
        {
          v33 = 0;
          mapEngine = self->_mapEngine;
          if (mapEngine)
          {
            v12 = mapEngine[5253];
            if (v12)
            {
              if (*(v12 + 568) == 1)
              {
                std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::__value_func[abi:nn200100](v27, v12 + 536);
              }

              else
              {
                v28 = 0;
              }

              std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::operator=[abi:nn200100](buf, v27);
              std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](v27);
              obj = self->_vkCamera._obj;
            }
          }

          v13 = obj;
          cntrl = self->_camera.__cntrl_;
          ptr = self->_camera.__ptr_;
          v25 = cntrl;
          if (cntrl)
          {
            atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
          }

          std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::__value_func[abi:nn200100](v26, buf);
          [(VKCamera *)v13 updateCamera:&ptr withAdjustment:v26];
          std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](v26);
          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v25);
          }

          std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](buf);
        }
      }
    }

    v15 = self->_camera.__cntrl_;
    v22 = self->_camera.__ptr_;
    v23 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
    }

    [(VKCameraController *)v5 setCamera:&v22];
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    }

    [(VKCameraController *)v5 setCanvas:self->_displayTarget];
    *&v16 = self->_edgeInsets.top;
    *&v17 = self->_edgeInsets.left;
    *&v18 = self->_edgeInsets.bottom;
    *&v19 = self->_edgeInsets.right;
    [(VKCameraController *)v5 setEdgeInsets:v16, v17, v18, v19];
    [(VKCameraController *)v5 setBaseDisplayRate:self->_baseDisplayRate];
    [(VKCameraController *)v5 setMaxDisplayRate:self->_maxDisplayRate];
    objc_storeStrong(&self->_cameraController, a3);
    [(VKCameraController *)v5 transferStatesWithCameraController:v9];
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      [(VKCameraController *)v9 transferGestureState:self->_cameraController];
    }

    [(VKCameraController *)v5 willBecomeActive];
    [(VKCameraController *)v9 setVkCamera:0];
    v20 = 0;
    v21 = 0;
    [(VKCameraController *)v9 setCamera:&v20];
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v21);
    }

    [(VKCameraController *)v9 setCanvas:0];
    [(VKCameraController *)v9 willBecomeInactive];
  }
}

- (void)setGesturing:(BOOL)a3
{
  if (self->_userIsGesturing != a3)
  {
    v8 = v3;
    v9 = v4;
    self->_userIsGesturing = a3;
    [(VKCameraController *)self->_cameraController setGesturing:?];
    var0 = self->_runLoopController->var0;
    if (var0)
    {
      v7 = 1;
      md::MapEngine::setNeedsTick(var0, &v7);
    }
  }
}

- (void)setEdgeInsets:(VKEdgeInsets)a3
{
  *&v5.bottom = *&a3.bottom;
  if (*&v5.top != *&self->_edgeInsets.top || *&a3.bottom != *&self->_edgeInsets.bottom)
  {
    HIDWORD(v4) = LODWORD(v5.left);
    self->_edgeInsets = v5;
    *&v4 = self->_edgeInsets.top;
    a3.left = self->_edgeInsets.left;
    a3.bottom = self->_edgeInsets.bottom;
    a3.right = self->_edgeInsets.right;
    [(VKCameraController *)self->_cameraController setEdgeInsets:v4, *&a3.left, *&a3.bottom, *&a3.right];
  }
}

- (void)dealloc
{
  self->_deallocing = 1;
  cameraController = self->_cameraController;
  self->_cameraController = 0;

  v4.receiver = self;
  v4.super_class = VKScreenCanvas;
  [(VKScreenCanvas *)&v4 dealloc];
}

- (VKScreenCanvas)initWithMapEngine:(void *)a3 inBackground:(BOOL)a4
{
  v12.receiver = self;
  v12.super_class = VKScreenCanvas;
  v5 = [(VKScreenCanvas *)&v12 init:a3];
  v6 = v5;
  if (v5)
  {
    v5->_mapEngine = a3;
    v5->_runLoopController = *(a3 + 26);
    v5->_animationRunner = *(a3 + 25);
    objc_storeStrong(&v5->_displayTarget, *(a3 + 5207));
    v8 = *(a3 + 11);
    v7 = *(a3 + 12);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v6->_taskContext.__cntrl_;
    v6->_taskContext.__ptr_ = v8;
    v6->_taskContext.__cntrl_ = v7;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
    }

    v10 = v6;
  }

  return v6;
}

@end