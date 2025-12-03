@interface VKAnchorWrapper
- ($1AB5FA073B851C12C2339EC22442E995)coordinate3D;
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (CGPoint)pointInLayer:(id)layer bound:(CGRect)bound;
- (id).cxx_construct;
- (shared_ptr<md::Anchor>)_anchorWithContext:(void *)context;
- (void)_updateCachedPoint;
- (void)anchorWorldPointDidChange:(void *)change;
- (void)dealloc;
- (void)destroyAnchor;
- (void)layoutWithContext:(const void *)context;
- (void)prepare:(CGSize)prepare cameraContext:(const void *)context anchorContext:(const void *)anchorContext;
- (void)updateIfNeeded;
@end

@implementation VKAnchorWrapper

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 10) = 0;
  return self;
}

- (void)destroyAnchor
{
  ptr = self->_anchor.__ptr_;
  if (ptr)
  {
    objc_storeWeak(ptr + 8, 0);
  }

  cntrl = self->_anchor.__cntrl_;
  self->_anchor.__ptr_ = 0;
  self->_anchor.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
  }

  self->_displayLayer = 0;
  self->_canvasSize = 0u;
  *&self->_cameraContext = 0u;
}

- (void)_updateCachedPoint
{
  if (!self->_isUpdating)
  {
    if (self->_cameraContext && self->_anchorManager)
    {
      self->_isUpdating = 1;
      [(VKAnchorWrapper *)self _anchorWithContext:?];
      v3 = (*(*v47 + 40))(v47);
      v5 = v4;
      v46[1] = v4;
      v46[2] = v6;
      v46[0] = v3 + (*(*v47 + 72))(v47, self->_cameraContext);
      v7 = self->_cameraContext + 808;
      v8 = *(self->_cameraContext + 888);
      v45[4] = *(self->_cameraContext + 872);
      v45[5] = v8;
      v9 = v7[7];
      v45[6] = v7[6];
      v45[7] = v9;
      v10 = v7[1];
      v45[0] = *v7;
      v45[1] = v10;
      v11 = v7[3];
      v45[2] = v7[2];
      v45[3] = v11;
      v12.f64[0] = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v45, v46);
      v42 = v12.f64[0];
      v43 = v13;
      v44 = v14;
      v15 = vdupq_n_s64(0x7FF8000000000000uLL);
      v37 = v15;
      v17 = *&v12.f64[0] == v15.i64[0] && *&v13 == v15.i64[1] && *&v14 == 0x7FF8000000000000;
      if (v17 || v14 < -1.0 || v14 > 1.0)
      {
        self->_screenPointInCanvas = vdupq_n_s64(0x43E0000000000000uLL);
      }

      else
      {
        v12.f64[1] = v13;
        __asm { FMOV            V1.2D, #0.5 }

        v22 = vmulq_f64(v12, _Q1);
        *&v23.f64[0] = *&vaddq_f64(v22, _Q1);
        v23.f64[1] = vsubq_f64(_Q1, v22).f64[1];
        self->_screenPointInCanvas = vmulq_f64(self->_canvasSize, v23);
        v24 = (*(*v47 + 16))(v47);
        cameraContext = self->_cameraContext;
        v26 = gdc::CameraView::position(cameraContext);
        v40 = *v26;
        v41 = *(v26 + 16);
        v27 = 1.0;
        if (v24)
        {
          v28 = exp(v5 * 6.28318531 + -3.14159265);
          v29 = atan(v28);
          v27 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v29 * 114.591559 + -90.0);
        }

        for (i = 0; i != 3; ++i)
        {
          *&v37.i64[i] = -cameraContext[i + 386];
        }

        v31 = 0;
        v35 = v37;
        v36 = v38;
        v32 = 0.0;
        do
        {
          v32 = v32 + *&v35.i64[v31] * v46[v31];
          ++v31;
        }

        while (v31 != 3);
        v33 = 0;
        v39 = -v32;
        v34 = 0.0;
        do
        {
          v34 = v34 + *&v37.i64[v33] * *(&v40 + v33 * 8);
          ++v33;
        }

        while (v33 != 3);
        self->_pointsPerMeter = self->_canvasSize.width * v27 / ((v34 - v32) * (cameraContext[470] + cameraContext[470]));
        (*(*v47 + 64))(&v37);
        *&self->_lastCoordinate.latitude._value = v37;
        self->_lastCoordinate.altitude._value = v38;
      }

      self->_isUpdating = 0;
      if (v48)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v48);
      }
    }

    else
    {
      self->_screenPointInCanvas = vdupq_n_s64(0x43E0000000000000uLL);
    }
  }
}

- ($1AB5FA073B851C12C2339EC22442E995)coordinate3D
{
  [(VKAnchorWrapper *)self coordinate];
  v4 = v3;
  v6 = v5;
  [(VKAnchorWrapper *)self elevationOffset];
  v8 = v7;
  v9 = v4;
  v10 = v6;
  result.var2 = v8;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (void)updateIfNeeded
{
  if (self->_cameraContext)
  {
    if (self->_anchorManager)
    {
      [(VKAnchorWrapper *)self coordinate3D];
      if (self->_lastCoordinate.latitude._value != v5 || self->_lastCoordinate.longitude._value != v3 || self->_lastCoordinate.altitude._value != v4)
      {

        [(VKAnchorWrapper *)self _updateCachedPoint];
      }
    }
  }
}

- (void)anchorWorldPointDidChange:(void *)change
{
  if (self->_cameraContext)
  {
    if (self->_anchorManager)
    {
      [(VKAnchorWrapper *)self _updateCachedPoint];
    }
  }
}

- (void)layoutWithContext:(const void *)context
{
  v11 = *context;
  [v11 size];
  v6 = v5;
  v8 = v7;
  v9 = *(context + 1);
  v10 = md::LayoutContext::get<md::CameraContext>(v9);
  [(VKAnchorWrapper *)self prepare:v10 cameraContext:gdc::Context::context<md::AnchorContext>(v9) anchorContext:v6, v8];
}

- (void)prepare:(CGSize)prepare cameraContext:(const void *)context anchorContext:(const void *)anchorContext
{
  self->_canvasSize = prepare;
  self->_cameraContext = context;
  if (anchorContext)
  {
    self->_anchorManager = *anchorContext;
  }

  [(VKAnchorWrapper *)self _updateCachedPoint];
}

- (shared_ptr<md::Anchor>)_anchorWithContext:(void *)context
{
  v6 = v3;
  ptr = self->_anchor.__ptr_;
  if (!ptr)
  {
LABEL_10:
    [(VKAnchorWrapper *)self coordinate3D];
    v22 = v17;
    v23 = v18;
    v24 = v19;
    md::AnchorManager::newAnchorAtCoordinate(&v21);
  }

  if (*(ptr + 1) == context)
  {
    v8 = (*(*ptr + 16))(ptr, a2);
    ptr = self->_anchor.__ptr_;
    if (v8 == *(context + 8))
    {
      if (((*(*ptr + 24))(ptr) & 1) != 0 || self->_followsTerrain == (*(*self->_anchor.__ptr_ + 32))(self->_anchor.__ptr_))
      {
        [(VKAnchorWrapper *)self coordinate3D];
        v12 = self->_anchor.__ptr_;
        v22 = v13;
        v23 = v14;
        v24 = v15;
        v10 = (*(*v12 + 88))(v12, &v22);
        goto LABEL_9;
      }

      ptr = self->_anchor.__ptr_;
    }
  }

  objc_storeWeak(ptr + 8, 0);
  cntrl = self->_anchor.__cntrl_;
  self->_anchor.__ptr_ = 0;
  self->_anchor.__cntrl_ = 0;
  if (!cntrl)
  {
    goto LABEL_10;
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
LABEL_9:
  v16 = self->_anchor.__ptr_;
  if (!v16)
  {
    goto LABEL_10;
  }

  v20 = self->_anchor.__cntrl_;
  *v6 = v16;
  v6[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = v11;
  result.__ptr_ = v10;
  return result;
}

- (CGPoint)pointInLayer:(id)layer bound:(CGRect)bound
{
  height = bound.size.height;
  width = bound.size.width;
  layerCopy = layer;
  v8 = layerCopy;
  x = self->_screenPointInCanvas.x;
  if (x == 9.22337204e18 || (y = self->_screenPointInCanvas.y, y == 9.22337204e18))
  {
LABEL_3:
    y = NAN;
    x = NAN;
    goto LABEL_4;
  }

  if (layerCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      [(MDRenderTarget *)self->_displayLayer convertPoint:v8 toLayer:self->_screenPointInCanvas.x, self->_screenPointInCanvas.y];
      x = v13;
      y = v14;
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v16 = self->_canvasSize.width;
  v15 = self->_canvasSize.height;
  if (width != v16 || height != v15)
  {
    x = x + (width - v16) * 0.5;
    y = y + (height - v15) * 0.5;
  }

LABEL_4:

  v11 = x;
  v12 = y;
  result.y = v12;
  result.x = v11;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  v2 = -180.0;
  v3 = -180.0;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (void)dealloc
{
  ptr = self->_anchor.__ptr_;
  if (ptr)
  {
    objc_storeWeak(ptr + 8, 0);
  }

  v4.receiver = self;
  v4.super_class = VKAnchorWrapper;
  [(VKAnchorWrapper *)&v4 dealloc];
}

@end