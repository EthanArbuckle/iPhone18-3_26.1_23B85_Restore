@interface VKCameraDelegateMediator
- (ReferenceCountedAccess<md::VKCameraRegionChange>)willBeginRegionChangeAccess:(SEL)access;
- (VKCameraDelegateMediator)init;
- (VKMapViewCameraDelegate)cameraDelegate;
- (__n128)mapLayerWillAnimateToLocation:;
- (id).cxx_construct;
- (id)mapLayerPresentationForAnnotation:(id)annotation;
- (uint64_t)mapLayerCanEnter3DModeDidChange:;
- (uint64_t)mapLayerCanZoomInDidChange:;
- (uint64_t)mapLayerCanZoomOutDidChange:;
- (uint64_t)mapLayerDidBecomePitched:;
- (uint64_t)mapLayerMuninAvailabilityDidChange:;
- (uint64_t)willBeginRegionChangeAccess:;
- (unint64_t)regionChangeCount;
- (void)dealloc;
- (void)didEndRegionChangeAccess:(void *)access;
- (void)mapLayerCanEnter3DModeDidChange:;
- (void)mapLayerCanEnter3DModeDidChange:(BOOL)change;
- (void)mapLayerCanZoomInDidChange:;
- (void)mapLayerCanZoomInDidChange:(BOOL)change;
- (void)mapLayerCanZoomOutDidChange:;
- (void)mapLayerCanZoomOutDidChange:(BOOL)change;
- (void)mapLayerDidBecomePitched:;
- (void)mapLayerDidBecomePitched:(BOOL)pitched;
- (void)mapLayerDidChangeRegionAnimated:(BOOL)animated;
- (void)mapLayerDidChangeVisibleRegion;
- (void)mapLayerDidFinishInitialTrackingAnimation;
- (void)mapLayerMuninAvailabilityDidChange:;
- (void)mapLayerMuninAvailabilityDidChange:(int64_t)change;
- (void)mapLayerNavigationCameraDidLeaveDefaultZoom;
- (void)mapLayerNavigationCameraDidReturnToDefaultZoom;
- (void)mapLayerNavigationCameraHasStartedPanning;
- (void)mapLayerNavigationCameraHasStoppedPanning;
- (void)mapLayerWasUnableToAnimate;
- (void)mapLayerWillAnimateToLocation:;
- (void)mapLayerWillAnimateToLocation:(id)location;
- (void)mapLayerWillChangeRegionAnimated:(BOOL)animated;
- (void)mapLayerWillPerformZoomBounceAnimation;
- (void)processDeferredDelegates;
- (void)pushAccess:(void *)access animated:(BOOL)animated;
- (void)setDeferredDelegates:(void *)delegates;
- (void)willBeginRegionChangeAccess:;
@end

@implementation VKCameraDelegateMediator

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0;
  *(self + 18) = 0;
  *(self + 28) = 0;
  *(self + 38) = 0;
  *(self + 48) = 0;
  *(self + 58) = 0;
  *(self + 68) = 0;
  *(self + 78) = 0;
  *(self + 12) = 0;
  *(self + 104) = 0u;
  *(self + 22) = 0;
  *(self + 184) = 0u;
  *(self + 16) = 0u;
  *(self + 34) = 0;
  *(self + 21) = 0u;
  *(self + 44) = 0;
  *(self + 54) = 0;
  *(self + 26) = 0u;
  *(self + 64) = 0;
  *(self + 31) = 0u;
  *(self + 74) = 0;
  *(self + 36) = 0u;
  *(self + 41) = 0u;
  *(self + 42) = 0u;
  *(self + 43) = 0u;
  *(self + 88) = 0;
  return self;
}

- (VKCameraDelegateMediator)init
{
  v9 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VKCameraDelegateMediator;
  v2 = [(VKCameraDelegateMediator *)&v4 init];
  if (v2)
  {
    objc_storeWeak(&v2->_cameraDelegate, 0);
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    operator new();
  }

  return 0;
}

- (unint64_t)regionChangeCount
{
  if (self->_regionChangeState._object.__ptr_ && (cntrl = self->_regionChangeState._object.__cntrl_) != 0 && *(cntrl + 1) != -1)
  {
    return *(cntrl + 1);
  }

  else
  {
    return 0;
  }
}

- (void)mapLayerDidChangeVisibleRegion
{
  objc_destroyWeak((self + 8));

  JUMPOUT(0x1B8C62190);
}

- (void)processDeferredDelegates
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_deferredDelegates.c.__size_)
  {
    p_start = &self->_deferredDelegates.c.__start_;
    start = self->_deferredDelegates.c.__start_;
    while (1)
    {
      std::function<void ()(VKCameraDelegateMediator *)>::operator()(*(self->_deferredDelegates.c.__map_.__begin_ + ((start >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (start & 0x7F), self);
      if (!self->_deferredDelegates.c.__size_)
      {
        break;
      }

      std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](*(self->_deferredDelegates.c.__map_.__begin_ + ((self->_deferredDelegates.c.__start_ >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (self->_deferredDelegates.c.__start_ & 0x7F));
      v5 = vaddq_s64(*p_start, xmmword_1B33B14D0);
      *p_start = v5;
      start = v5.i64[0];
      if (v5.i64[0] >= 0x100uLL)
      {
        operator delete(*self->_deferredDelegates.c.__map_.__begin_);
        ++self->_deferredDelegates.c.__map_.__begin_;
        start = self->_deferredDelegates.c.__start_ - 128;
        self->_deferredDelegates.c.__start_ = start;
        if (!self->_deferredDelegates.c.__size_)
        {
          break;
        }
      }

      else if (!v5.i64[1])
      {
        break;
      }
    }
  }

  if (self->_delegateUpdateFenced)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v6 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v8 = "!_delegateUpdateFenced";
      v9 = 2080;
      v10 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/VKCameraDelegateMediator.mm";
      v11 = 1024;
      v12 = 317;
      _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_ERROR, "Delegate fence was not erased: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }
}

- (VKMapViewCameraDelegate)cameraDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraDelegate);

  return WeakRetained;
}

- (void)setDeferredDelegates:(void *)delegates
{
  p_deferredDelegates = &self->_deferredDelegates;
  if (&self->_deferredDelegates == delegates)
  {
    return;
  }

  v5 = *(delegates + 4);
  v6 = (v5 >> 4) & 0xFFFFFFFFFFFFFF8;
  v7 = *(delegates + 1);
  if (*(delegates + 2) == v7)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v8 = *(v7 + v6) + 32 * (*(delegates + 4) & 0x7FLL);
    v9 = *(delegates + 5) + v5;
    v10 = (v9 >> 4) & 0xFFFFFFFFFFFFFF8;
    v11 = v9 & 0x7F;
    if (*(v7 + v10) + 32 * v11 == v8)
    {
      v12 = 0;
    }

    else
    {
      v12 = (v11 | (16 * (v10 - v6))) - (*(delegates + 4) & 0x7FLL);
      size = self->_deferredDelegates.c.__size_;
      if (size < v12)
      {
        v15 = std::__deque_iterator<std::function<void ()(VKCameraDelegateMediator *)>,std::function<void ()(VKCameraDelegateMediator *)> const*,std::function<void ()(VKCameraDelegateMediator *)> const&,std::function<void ()(VKCameraDelegateMediator *)> const* const*,long,128l>::operator+[abi:nn200100]((v7 + v6), v8, size);
        v16 = v14;
        begin = self->_deferredDelegates.c.__map_.__begin_;
        if (self->_deferredDelegates.c.__map_.__end_ == begin)
        {
          v18 = 0;
        }

        else
        {
          v18 = begin[self->_deferredDelegates.c.__start_ >> 7] + 32 * (self->_deferredDelegates.c.__start_ & 0x7F);
        }

        v79 = &begin[self->_deferredDelegates.c.__start_ >> 7];
        v80 = v18;
        std::__for_each_segment[abi:nn200100]<std::__deque_iterator<std::function<void ()(VKCameraDelegateMediator *)>,std::function<void ()(VKCameraDelegateMediator *)> const*,std::function<void ()(VKCameraDelegateMediator *)> const&,std::function<void ()(VKCameraDelegateMediator *)> const* const*,long,128l>,std::__copy_impl::_CopySegment<std::__deque_iterator<std::function<void ()(VKCameraDelegateMediator *)>,std::function<void ()(VKCameraDelegateMediator *)> const*,std::function<void ()(VKCameraDelegateMediator *)> const&,std::function<void ()(VKCameraDelegateMediator *)> const* const*,long,128l>,std::__deque_iterator<std::function<void ()(VKCameraDelegateMediator *)>,std::function<void ()(VKCameraDelegateMediator *)>*,std::function<void ()(VKCameraDelegateMediator *)>&,std::function<void ()(VKCameraDelegateMediator *)>**,long,128l>>>((v7 + v6), v8, v15, v14, &v79);
        end = self->_deferredDelegates.c.__map_.__end_;
        v45 = self->_deferredDelegates.c.__map_.__begin_;
        v46 = end - v45;
        v47 = self->_deferredDelegates.c.__size_;
        if (end == v45)
        {
          v48 = 0;
        }

        else
        {
          v48 = 16 * (end - v45) - 1;
        }

        v49 = v12 - v47;
        start = self->_deferredDelegates.c.__start_;
        v51 = v47 + start;
        v52 = v48 - (v47 + start);
        v53 = v12 - v47 >= v52;
        v54 = v12 - v47 - v52;
        if (v54 != 0 && v53)
        {
          if (end == v45)
          {
            v55 = v54 + 1;
          }

          else
          {
            v55 = v54;
          }

          if ((v55 & 0x7F) != 0)
          {
            v56 = (v55 >> 7) + 1;
          }

          else
          {
            v56 = v55 >> 7;
          }

          if (v56 >= start >> 7)
          {
            v57 = start >> 7;
          }

          else
          {
            v57 = v56;
          }

          v78 = v12 - v47;
          if (v56 <= start >> 7)
          {
            self->_deferredDelegates.c.__start_ = start - (v57 << 7);
            if (v57)
            {
              v65 = -v57;
              do
              {
                v66 = self->_deferredDelegates.c.__map_.__begin_;
                v79 = *v66;
                self->_deferredDelegates.c.__map_.__begin_ = v66 + 1;
                std::__split_buffer<gdc::TrianglePair *>::emplace_back<gdc::TrianglePair *&>(p_deferredDelegates, &v79);
                v53 = __CFADD__(v65++, 1);
              }

              while (!v53);
            }
          }

          else
          {
            v58 = v56 - v57;
            v59 = self->_deferredDelegates.c.__map_.__cap_ - self->_deferredDelegates.c.__map_.__first_;
            if (v58 > (v59 >> 3) - (v46 >> 3))
            {
              v60 = v46 >> 3;
              v61 = v59 >> 2;
              v62 = v58 + (v46 >> 3);
              if (v61 <= v62)
              {
                v63 = v62;
              }

              else
              {
                v63 = v61;
              }

              v64 = v60 - v57;
              v82 = p_deferredDelegates;
              if (v63)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v63);
              }

              v79 = 0;
              v80 = 8 * v64;
              v81 = 8 * v64;
              operator new();
            }

            if (v58)
            {
              if (self->_deferredDelegates.c.__map_.__cap_ != self->_deferredDelegates.c.__map_.__end_)
              {
                operator new();
              }

              operator new();
            }

            for (self->_deferredDelegates.c.__start_ = start - (v57 << 7); v57; --v57)
            {
              v67 = self->_deferredDelegates.c.__map_.__begin_;
              v79 = *v67;
              self->_deferredDelegates.c.__map_.__begin_ = v67 + 1;
              std::__split_buffer<gdc::TrianglePair *>::emplace_back<gdc::TrianglePair *&>(p_deferredDelegates, &v79);
            }
          }

          v47 = self->_deferredDelegates.c.__size_;
          v45 = self->_deferredDelegates.c.__map_.__begin_;
          end = self->_deferredDelegates.c.__map_.__end_;
          v51 = self->_deferredDelegates.c.__start_ + v47;
          v49 = v78;
        }

        v68 = &v45[v51 >> 7];
        if (end == v45)
        {
          v69 = 0;
        }

        else
        {
          v69 = *v68 + 32 * (v51 & 0x7F);
        }

        v70 = std::__deque_iterator<std::function<void ()(VKCameraDelegateMediator *)>,std::function<void ()(VKCameraDelegateMediator *)> const*,std::function<void ()(VKCameraDelegateMediator *)> const&,std::function<void ()(VKCameraDelegateMediator *)> const* const*,long,128l>::operator+[abi:nn200100](v68, v69, v49);
        if (v69 != v71)
        {
          v72 = v70;
          v73 = v71;
          do
          {
            if (v68 == v72)
            {
              v74 = v73;
            }

            else
            {
              v74 = *v68 + 4096;
            }

            if (v69 == v74)
            {
              v74 = v69;
            }

            else
            {
              v75 = v69;
              do
              {
                std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::__value_func[abi:nn200100](v75, v16);
                v16 += 32;
                if (v16 - *v15 == 4096)
                {
                  v76 = v15[1];
                  ++v15;
                  v16 = v76;
                }

                v75 += 32;
              }

              while (v75 != v74);
              v47 = self->_deferredDelegates.c.__size_;
            }

            v47 += (v74 - v69) >> 5;
            self->_deferredDelegates.c.__size_ = v47;
            if (v68 == v72)
            {
              break;
            }

            v77 = v68[1];
            ++v68;
            v69 = v77;
          }

          while (v77 != v73);
        }

        return;
      }
    }
  }

  v19 = self->_deferredDelegates.c.__map_.__begin_;
  v20 = &v19[self->_deferredDelegates.c.__start_ >> 7];
  if (self->_deferredDelegates.c.__map_.__end_ == v19)
  {
    v21 = 0;
  }

  else
  {
    v21 = *v20 + 32 * (self->_deferredDelegates.c.__start_ & 0x7F);
  }

  v22 = std::__deque_iterator<std::function<void ()(VKCameraDelegateMediator *)>,std::function<void ()(VKCameraDelegateMediator *)> const*,std::function<void ()(VKCameraDelegateMediator *)> const&,std::function<void ()(VKCameraDelegateMediator *)> const* const*,long,128l>::operator+[abi:nn200100]((v7 + v6), v8, v12);
  v79 = v20;
  v80 = v21;
  std::__for_each_segment[abi:nn200100]<std::__deque_iterator<std::function<void ()(VKCameraDelegateMediator *)>,std::function<void ()(VKCameraDelegateMediator *)> const*,std::function<void ()(VKCameraDelegateMediator *)> const&,std::function<void ()(VKCameraDelegateMediator *)> const* const*,long,128l>,std::__copy_impl::_CopySegment<std::__deque_iterator<std::function<void ()(VKCameraDelegateMediator *)>,std::function<void ()(VKCameraDelegateMediator *)> const*,std::function<void ()(VKCameraDelegateMediator *)> const&,std::function<void ()(VKCameraDelegateMediator *)> const* const*,long,128l>,std::__deque_iterator<std::function<void ()(VKCameraDelegateMediator *)>,std::function<void ()(VKCameraDelegateMediator *)>*,std::function<void ()(VKCameraDelegateMediator *)>&,std::function<void ()(VKCameraDelegateMediator *)>**,long,128l>>>((v7 + v6), v8, v22, v23, &v79);
  v24 = self->_deferredDelegates.c.__size_;
  v25 = self->_deferredDelegates.c.__start_;
  v26 = self->_deferredDelegates.c.__map_.__begin_;
  v27 = &v26[(v25 + v24) >> 7];
  v28 = self->_deferredDelegates.c.__map_.__end_;
  if (v28 == v26)
  {
    v29 = 0;
  }

  else
  {
    v29 = *v27 + 32 * ((v25 + v24) & 0x7F);
  }

  if (v29 != v80)
  {
    v30 = ((v29 - *v27) >> 5) + 16 * (v27 - v79);
    v31 = v80 - *v79;
    v32 = v30 - (v31 >> 5);
    if (v32 >= 1)
    {
      v33 = &v26[v25 >> 7];
      if (v28 == v26)
      {
        v34 = 0;
      }

      else
      {
        v34 = *v33 + 32 * (self->_deferredDelegates.c.__start_ & 0x7F);
      }

      if (v80 == v34)
      {
        v35 = 0;
      }

      else
      {
        v35 = (v31 >> 5) + 16 * (v79 - v33) - ((v34 - *v33) >> 5);
      }

      v36 = std::__deque_iterator<std::function<void ()(VKCameraDelegateMediator *)>,std::function<void ()(VKCameraDelegateMediator *)> const*,std::function<void ()(VKCameraDelegateMediator *)> const&,std::function<void ()(VKCameraDelegateMediator *)> const* const*,long,128l>::operator+[abi:nn200100](v33, v34, v35);
      if (v37 != v29)
      {
        v38 = v36;
        v39 = v37;
        do
        {
          v39 = std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](v39) + 32;
          if (v39 - *v38 == 4096)
          {
            v40 = v38[1];
            ++v38;
            v39 = v40;
          }
        }

        while (v39 != v29);
        v24 = self->_deferredDelegates.c.__size_;
        v28 = self->_deferredDelegates.c.__map_.__end_;
      }

      v41 = v24 - v32;
      for (self->_deferredDelegates.c.__size_ = v24 - v32; ; v41 = self->_deferredDelegates.c.__size_)
      {
        v42 = self->_deferredDelegates.c.__map_.__begin_;
        v43 = v28 == v42 ? 0 : 16 * (v28 - v42) - 1;
        if (v43 - (v41 + self->_deferredDelegates.c.__start_) < 0x100)
        {
          break;
        }

        operator delete(*(v28 - 1));
        v28 = self->_deferredDelegates.c.__map_.__end_ - 1;
        self->_deferredDelegates.c.__map_.__end_ = v28;
      }
    }
  }
}

- (void)mapLayerDidChangeRegionAnimated:(BOOL)animated
{
  if (!self->_isChangingMapType)
  {
    [(VKCameraDelegateMediator *)self popAccess:&self->_directAccess];
  }
}

- (void)mapLayerWillChangeRegionAnimated:(BOOL)animated
{
  if (!self->_isChangingMapType)
  {
    [(VKCameraDelegateMediator *)self pushAccess:&self->_directAccess animated:animated];
  }
}

- (void)pushAccess:(void *)access animated:(BOOL)animated
{
  v6 = *MEMORY[0x1E69E9840];
  [(VKCameraDelegateMediator *)self willBeginRegionChangeAccess:animated];
  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::operator=(access, v5);
  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(v5);
}

- (void)didEndRegionChangeAccess:(void *)access
{
  v3[10] = *MEMORY[0x1E69E9840];
  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::ReferenceCountedAccess(v3, access);
  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(v3);
}

- (ReferenceCountedAccess<md::VKCameraRegionChange>)willBeginRegionChangeAccess:(SEL)access
{
  v23 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v13 = a4;
  objc_copyWeak(&v14, &location);
  v22 = 0;
  v19 = &unk_1F2A467D0;
  v20 = a4;
  objc_moveWeak(&v21, &v14);
  v22 = &v19;
  objc_destroyWeak(&v14);
  objc_copyWeak(&to, &location);
  v18 = 0;
  v16 = &unk_1F2A46860;
  objc_moveWeak(&v17, &to);
  v18 = &v16;
  objc_destroyWeak(&to);
  retstr->_object.__ptr_ = 0;
  retstr->_object.__cntrl_ = 0;
  retstr->_firstAccess.__f_.__f_ = 0;
  retstr->_lastAccess.__f_.__f_ = 0;
  ptr = self->_regionChangeState._object.__ptr_;
  cntrl = self->_regionChangeState._object.__cntrl_;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    retstr->_object.__cntrl_ = cntrl;
  }

  retstr->_object.__ptr_ = ptr;
  std::function<void ()(md::VKCameraRegionChange &)>::operator=(&retstr->_firstAccess, &v19);
  std::function<void ()(md::VKCameraRegionChange &)>::operator=(&retstr->_lastAccess, &v16);
  if (retstr->_object.__ptr_)
  {
    v9 = retstr->_object.__cntrl_;
    if (v9)
    {
      if (*(v9 + 1) == 1)
      {
        f = retstr->_firstAccess.__f_.__f_;
        if (f)
        {
          (*(*f + 48))(f);
        }
      }
    }
  }

  std::__function::__value_func<void ()(md::VKCameraRegionChange &)>::~__value_func[abi:nn200100](&v16);
  std::__function::__value_func<void ()(md::VKCameraRegionChange &)>::~__value_func[abi:nn200100](&v19);
  objc_destroyWeak(&location);
  return result;
}

- (void)willBeginRegionChangeAccess:
{
  objc_destroyWeak((self + 16));

  JUMPOUT(0x1B8C62190);
}

- (uint64_t)willBeginRegionChangeAccess:
{
  *a2 = &unk_1F2A46818;
  *(a2 + 8) = *(result + 8);
  return result;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::operator=(&self->_pinchingAccess, &v4);
  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(&v4);
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::operator=(&self->_panningAccess, &v4);
  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(&v4);
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::operator=(&self->_rotatingAccess, &v4);
  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(&v4);
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::operator=(&self->_pitchAccess, &v4);
  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(&v4);
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::operator=(&self->_animationAccess, &v4);
  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(&v4);
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::operator=(&self->_directAccess, &v4);
  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(&v4);
  v3.receiver = self;
  v3.super_class = VKCameraDelegateMediator;
  [(VKCameraDelegateMediator *)&v3 dealloc];
}

- (void)mapLayerWasUnableToAnimate
{
  v5 = *a2;
  WeakRetained = objc_loadWeakRetained(v5 + 1);
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained(v5 + 1);
    [v4 mapLayerWasUnableToAnimate];
  }
}

- (void)mapLayerWillAnimateToLocation:(id)location
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = &unk_1F2A46740;
  locationCopy = location;
  v5 = &v3;
  checkIfDeferred(self, &v3);
  std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](&v3);
}

- (void)mapLayerWillAnimateToLocation:
{
  v6 = *a2;
  WeakRetained = objc_loadWeakRetained(v6 + 1);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(v6 + 1);
    [v5 mapLayerWillAnimateToLocation:{*(self + 8), *(self + 16)}];
  }
}

- (__n128)mapLayerWillAnimateToLocation:
{
  *a2 = &unk_1F2A46740;
  result = *(self + 8);
  *(a2 + 8) = result;
  return result;
}

- (void)mapLayerNavigationCameraDidReturnToDefaultZoom
{
  v5 = *a2;
  WeakRetained = objc_loadWeakRetained(v5 + 1);
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained(v5 + 1);
    [v4 mapLayerNavigationCameraDidReturnToDefaultZoom];
  }
}

- (void)mapLayerNavigationCameraDidLeaveDefaultZoom
{
  v5 = *a2;
  WeakRetained = objc_loadWeakRetained(v5 + 1);
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained(v5 + 1);
    [v4 mapLayerNavigationCameraDidLeaveDefaultZoom];
  }
}

- (void)mapLayerNavigationCameraHasStoppedPanning
{
  v5 = *a2;
  WeakRetained = objc_loadWeakRetained(v5 + 1);
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained(v5 + 1);
    [v4 mapLayerNavigationCameraHasStoppedPanning];
  }
}

- (void)mapLayerNavigationCameraHasStartedPanning
{
  v5 = *a2;
  WeakRetained = objc_loadWeakRetained(v5 + 1);
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained(v5 + 1);
    [v4 mapLayerNavigationCameraHasStartedPanning];
  }
}

- (void)mapLayerCanZoomOutDidChange:(BOOL)change
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = &unk_1F2A465D8;
  changeCopy = change;
  v5 = &v3;
  checkIfDeferred(self, &v3);
  std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](&v3);
}

- (void)mapLayerCanZoomOutDidChange:
{
  v6 = *a2;
  WeakRetained = objc_loadWeakRetained(v6 + 1);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(v6 + 1);
    [v5 mapLayerCanZoomOutDidChange:*(self + 8)];
  }
}

- (uint64_t)mapLayerCanZoomOutDidChange:
{
  *a2 = &unk_1F2A465D8;
  *(a2 + 8) = *(result + 8);
  return result;
}

- (void)mapLayerCanZoomInDidChange:(BOOL)change
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = &unk_1F2A46590;
  changeCopy = change;
  v5 = &v3;
  checkIfDeferred(self, &v3);
  std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](&v3);
}

- (void)mapLayerCanZoomInDidChange:
{
  v6 = *a2;
  WeakRetained = objc_loadWeakRetained(v6 + 1);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(v6 + 1);
    [v5 mapLayerCanZoomInDidChange:*(self + 8)];
  }
}

- (uint64_t)mapLayerCanZoomInDidChange:
{
  *a2 = &unk_1F2A46590;
  *(a2 + 8) = *(result + 8);
  return result;
}

- (void)mapLayerMuninAvailabilityDidChange:(int64_t)change
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F2A46548;
  v3[1] = change;
  v3[3] = v3;
  checkIfDeferred(self, v3);
  std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](v3);
}

- (void)mapLayerMuninAvailabilityDidChange:
{
  v6 = *a2;
  WeakRetained = objc_loadWeakRetained(v6 + 1);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(v6 + 1);
    [v5 mapLayerMuninAvailabilityDidChange:*(self + 8)];
  }
}

- (uint64_t)mapLayerMuninAvailabilityDidChange:
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A46548;
  a2[1] = v2;
  return result;
}

- (void)mapLayerCanEnter3DModeDidChange:(BOOL)change
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = &unk_1F2A46500;
  changeCopy = change;
  v5 = &v3;
  checkIfDeferred(self, &v3);
  std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](&v3);
}

- (void)mapLayerCanEnter3DModeDidChange:
{
  v6 = *a2;
  WeakRetained = objc_loadWeakRetained(v6 + 1);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(v6 + 1);
    [v5 mapLayerCanEnter3DModeDidChange:*(self + 8)];
  }
}

- (uint64_t)mapLayerCanEnter3DModeDidChange:
{
  *a2 = &unk_1F2A46500;
  *(a2 + 8) = *(result + 8);
  return result;
}

- (void)mapLayerDidBecomePitched:(BOOL)pitched
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = &unk_1F2A464B8;
  pitchedCopy = pitched;
  v5 = &v3;
  checkIfDeferred(self, &v3);
  std::__function::__value_func<void ()(VKCameraDelegateMediator *)>::~__value_func[abi:nn200100](&v3);
}

- (void)mapLayerDidBecomePitched:
{
  v6 = *a2;
  WeakRetained = objc_loadWeakRetained(v6 + 1);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(v6 + 1);
    [v5 mapLayerDidBecomePitched:*(self + 8)];
  }
}

- (uint64_t)mapLayerDidBecomePitched:
{
  *a2 = &unk_1F2A464B8;
  *(a2 + 8) = *(result + 8);
  return result;
}

- (id)mapLayerPresentationForAnnotation:(id)annotation
{
  v17 = *MEMORY[0x1E69E9840];
  annotationCopy = annotation;
  if (self->_delegateUpdateFenced)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v5 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = "!_delegateUpdateFenced";
      v13 = 2080;
      v14 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/VKCameraDelegateMediator.mm";
      v15 = 1024;
      v16 = 133;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_ERROR, "mapLayerPresentationForAnnotation delegates can't be deferred. This mean the callback is likely called in the logic layout time: Assertion with expression - %s : Failed in file - %s line - %i", &v11, 0x1Cu);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_cameraDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_cameraDelegate);
    v9 = [v8 mapLayerPresentationForAnnotation:annotationCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)mapLayerDidFinishInitialTrackingAnimation
{
  v5 = *a2;
  WeakRetained = objc_loadWeakRetained(v5 + 1);
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained(v5 + 1);
    [v4 mapLayerDidFinishInitialTrackingAnimation];
  }
}

- (void)mapLayerWillPerformZoomBounceAnimation
{
  v5 = *a2;
  WeakRetained = objc_loadWeakRetained(v5 + 1);
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained(v5 + 1);
    [v4 mapLayerWillPerformZoomBounceAnimation];
  }
}

@end