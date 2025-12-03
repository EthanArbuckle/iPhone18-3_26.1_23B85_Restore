@interface LabelNavRouteContextObserverProxy
- (LabelNavRouteContextObserverProxy)initWithRouteContextChangeObserver:(RouteContextChangeObserver *)observer;
- (id).cxx_construct;
- (void)dealloc;
- (void)routeContextStateDidChange:(id)change;
- (void)startObserving:(id)observing;
- (void)stopObserving:(id)observing;
@end

@implementation LabelNavRouteContextObserverProxy

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

- (void)dealloc
{
  begin = self->_observedContexts.__begin_;
  end = self->_observedContexts.__end_;
  while (begin != end)
  {
    v5 = begin[1];
    [v5 removeObserver:self withType:2];

    begin += 3;
  }

  v6.receiver = self;
  v6.super_class = LabelNavRouteContextObserverProxy;
  [(LabelNavRouteContextObserverProxy *)&v6 dealloc];
}

- (void)routeContextStateDidChange:(id)change
{
  changeCopy = change;
  observer = self->_observer;
  if (observer)
  {
    (*observer->var0)(observer, changeCopy);
  }
}

- (void)stopObserving:(id)observing
{
  observingCopy = observing;
  if (observingCopy)
  {
    begin = self->_observedContexts.__begin_;
    end = self->_observedContexts.__end_;
    if (begin != end)
    {
      while (begin[1] != observingCopy)
      {
        begin += 3;
        if (begin == end)
        {
          goto LABEL_15;
        }
      }
    }

    if (begin != end)
    {
      v14 = observingCopy;
      [observingCopy removeObserver:self withType:2];
      v7 = self->_observedContexts.__end_;
      if (begin + 3 != v7)
      {
        do
        {
          v8 = begin;
          begin += 3;
        }

        while ((geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v8, begin) + 48) != v7);
        v7 = self->_observedContexts.__end_;
      }

      if (v7 != begin)
      {
        v9 = (v7 - 3);
        v10 = v9;
        v11 = v9;
        do
        {
          v12 = *v11;
          v11 -= 3;
          (*v12)(v10);
          v9 -= 3;
          v13 = v10 == begin;
          v10 = v11;
        }

        while (!v13);
      }

      self->_observedContexts.__end_ = begin;
      observingCopy = v14;
    }
  }

LABEL_15:
}

- (void)startObserving:(id)observing
{
  observingCopy = observing;
  if (observingCopy)
  {
    begin = self->_observedContexts.__begin_;
    end = self->_observedContexts.__end_;
    if (begin != end)
    {
      while (begin[1] != observingCopy)
      {
        begin += 3;
        if (begin == end)
        {
          goto LABEL_7;
        }
      }
    }

    if (begin == end)
    {
LABEL_7:
      v36 = observingCopy;
      [observingCopy addObserver:self withType:2];
      v7 = self->_observedContexts.__end_;
      cap = self->_observedContexts.__cap_;
      if (v7 >= cap)
      {
        v10 = self->_observedContexts.__begin_;
        v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 3);
        if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v12 = 0xAAAAAAAAAAAAAAABLL * ((cap - v10) >> 3);
        v13 = 2 * v12;
        if (2 * v12 <= v11 + 1)
        {
          v13 = v11 + 1;
        }

        if (v12 >= 0x555555555555555)
        {
          v14 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          v15 = mdm::zone_mallocator::instance(v7);
          v16 = pthread_rwlock_rdlock((v15 + 32));
          if (v16)
          {
            geo::read_write_lock::logFailure(v16, "read lock", v17);
          }

          v18 = malloc_type_zone_malloc(*v15, 24 * v14, 0x81040B49F1EBBuLL);
          atomic_fetch_add((v15 + 24), 1u);
          geo::read_write_lock::unlock((v15 + 32));
        }

        else
        {
          v18 = 0;
        }

        v19 = geo::_retain_ptr<VKRouteContext * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v18[3 * v11], v36);
        v20 = self->_observedContexts.__begin_;
        v21 = self->_observedContexts.__end_;
        v22 = v19 - (v21 - v20);
        v23 = &v18[3 * v14];
        v9 = (v19 + 24);
        *&v24 = v19 + 24;
        *(&v24 + 1) = v23;
        v35 = v24;
        if (v21 != v20)
        {
          v25 = &v18[3 * v11 - (v21 - v20)];
          v26 = self->_observedContexts.__begin_;
          v27 = v19 - (v21 - v20);
          v28 = v22;
          do
          {
            *v28 = &unk_1F2A580E8;
            v28 += 24;
            *(v27 + 1) = 0;
            objc_storeStrong(v27 + 1, v26[1]);
            v29 = v26[1];
            v26[1] = 0;

            v26 += 3;
            v25 += 24;
            v27 = v28;
          }

          while (v26 != v21);
          v30 = v20;
          v31 = v20;
          do
          {
            v32 = *v31;
            v31 += 3;
            v19 = (*v32)(v20);
            v30 += 3;
            v20 = v31;
          }

          while (v31 != v21);
        }

        v33 = self->_observedContexts.__begin_;
        self->_observedContexts.__begin_ = v22;
        *&self->_observedContexts.__end_ = v35;
        if (v33)
        {
          v34 = mdm::zone_mallocator::instance(v19);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::_retain_ptr<VKRouteContext * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(v34, v33);
        }

        observingCopy = v36;
      }

      else
      {
        v9 = geo::_retain_ptr<VKRouteContext * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v7, v36) + 3;
        observingCopy = v36;
        self->_observedContexts.__end_ = v9;
      }

      self->_observedContexts.__end_ = v9;
    }
  }
}

- (LabelNavRouteContextObserverProxy)initWithRouteContextChangeObserver:(RouteContextChangeObserver *)observer
{
  v5.receiver = self;
  v5.super_class = LabelNavRouteContextObserverProxy;
  result = [(LabelNavRouteContextObserverProxy *)&v5 init];
  if (result)
  {
    result->_observer = observer;
  }

  return result;
}

@end