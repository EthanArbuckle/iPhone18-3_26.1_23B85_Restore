@interface RouteRenderLayerObserverProxy
- (RouteRenderLayerObserverProxy)initWithPolylineGroupObserver:(PolylineGroupChangeObserver *)observer;
- (id).cxx_construct;
- (void)dealloc;
- (void)startObserving:(id)observing;
- (void)stopObserving:(id)observing;
@end

@implementation RouteRenderLayerObserverProxy

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 7) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  *(self + 5) = self + 48;
  return self;
}

- (void)dealloc
{
  begin_node = self->_observedGroupsSet.__tree_.__begin_node_;
  p_end_node = &self->_observedGroupsSet.__tree_.__end_node_;
  if (begin_node != &self->_observedGroupsSet.__tree_.__end_node_)
  {
    do
    {
      v5 = begin_node->_retainedGroups.__cap_;
      [v5 removeObserver:self];

      polylineGroupObserver = begin_node->_polylineGroupObserver;
      if (polylineGroupObserver)
      {
        do
        {
          begin = polylineGroupObserver;
          polylineGroupObserver = polylineGroupObserver->var0;
        }

        while (polylineGroupObserver);
      }

      else
      {
        do
        {
          begin = begin_node->_retainedGroups.__begin_;
          v8 = begin->super.isa == begin_node;
          begin_node = begin;
        }

        while (!v8);
      }

      begin_node = begin;
    }

    while (begin != p_end_node);
  }

  std::__tree<VKPolylineGroupOverlay * {__strong}>::destroy(self->_observedGroupsSet.__tree_.__end_node_.__left_);
  self->_observedGroupsSet.__tree_.__end_node_.__left_ = 0;
  self->_observedGroupsSet.__tree_.__size_ = 0;
  self->_observedGroupsSet.__tree_.__begin_node_ = p_end_node;
  v10 = self->_retainedGroups.__begin_;
  end = self->_retainedGroups.__end_;
  if (end != v10)
  {
    v11 = end - 24;
    v12 = end - 24;
    v13 = (end - 24);
    do
    {
      v14 = *v13;
      v13 -= 3;
      (*v14)(v12);
      v11 -= 24;
      v8 = v12 == v10;
      v12 = v13;
    }

    while (!v8);
  }

  self->_retainedGroups.__end_ = v10;
  v15.receiver = self;
  v15.super_class = RouteRenderLayerObserverProxy;
  [(RouteRenderLayerObserverProxy *)&v15 dealloc];
}

- (void)stopObserving:(id)observing
{
  observingCopy = observing;
  if (!observingCopy)
  {
    goto LABEL_41;
  }

  left = self->_observedGroupsSet.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_41;
  }

  v6 = self->_observedGroupsSet.__tree_.__end_node_.__left_;
  while (1)
  {
    v7 = v6[4];
    if (v7 <= observingCopy)
    {
      break;
    }

LABEL_7:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_41;
    }
  }

  if (v7 < observingCopy)
  {
    ++v6;
    goto LABEL_7;
  }

  p_end_node = &self->_observedGroupsSet.__tree_.__end_node_;
  v9 = self->_observedGroupsSet.__tree_.__end_node_.__left_;
  do
  {
    cap = v9->_retainedGroups.__cap_;
    v11 = cap >= observingCopy;
    v12 = cap < observingCopy;
    if (v11)
    {
      p_end_node = v9;
    }

    v9 = *(&v9->super.isa + v12);
  }

  while (v9);
  v29 = observingCopy;
  if (p_end_node != &self->_observedGroupsSet.__tree_.__end_node_ && p_end_node->_retainedGroups.__cap_ <= observingCopy)
  {
    polylineGroupObserver = p_end_node->_polylineGroupObserver;
    if (polylineGroupObserver)
    {
      do
      {
        begin = polylineGroupObserver;
        polylineGroupObserver = polylineGroupObserver->var0;
      }

      while (polylineGroupObserver);
    }

    else
    {
      v15 = p_end_node;
      do
      {
        begin = v15->_retainedGroups.__begin_;
        v16 = *begin == v15;
        v15 = begin;
      }

      while (!v16);
    }

    if (self->_observedGroupsSet.__tree_.__begin_node_ == p_end_node)
    {
      self->_observedGroupsSet.__tree_.__begin_node_ = begin;
    }

    --self->_observedGroupsSet.__tree_.__size_;
    std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(left, p_end_node);

    operator delete(p_end_node);
    observingCopy = v29;
  }

  [observingCopy removeObserver:self];
  v17 = self->_retainedGroups.__begin_;
  end = self->_retainedGroups.__end_;
  if (v17 != end)
  {
    while (1)
    {
      v19 = v17[1];
      v20 = v29;
      v21 = v20;
      if (v19 == v20)
      {
        break;
      }

      v22 = [v19 isEqual:v20];

      if (v22)
      {
        goto LABEL_31;
      }

      v17 += 3;
      if (v17 == end)
      {
        v17 = end;
        goto LABEL_31;
      }
    }

LABEL_31:
    end = self->_retainedGroups.__end_;
  }

  observingCopy = v29;
  if (v17 != end)
  {
    v23 = v17 + 3;
    if (v17 + 3 != end)
    {
      do
      {
        v17 = v23;
        objc_storeStrong(v23 - 2, v23[1]);
        v24 = v17[1];
        v17[1] = 0;

        v23 = v17 + 3;
      }

      while (v17 + 3 != end);
      end = self->_retainedGroups.__end_;
    }

    if (end != v17)
    {
      v25 = end - 3;
      v26 = end - 3;
      v27 = end - 3;
      do
      {
        v28 = *v27;
        v27 -= 3;
        (*v28)(v26);
        v25 -= 3;
        v16 = v26 == v17;
        v26 = v27;
      }

      while (!v16);
    }

    self->_retainedGroups.__end_ = v17;
    observingCopy = v29;
  }

LABEL_41:
}

- (void)startObserving:(id)observing
{
  observingCopy = observing;
  if (observingCopy)
  {
    left = self->_observedGroupsSet.__tree_.__end_node_.__left_;
    if (!left)
    {
LABEL_15:
      operator new();
    }

    v5 = self->_observedGroupsSet.__tree_.__end_node_.__left_;
    do
    {
      v6 = v5[4];
      if (v6 <= observingCopy)
      {
        if (v6 >= observingCopy)
        {
          goto LABEL_35;
        }

        ++v5;
      }

      v5 = *v5;
    }

    while (v5);
    while (1)
    {
      while (1)
      {
        v7 = left;
        v8 = left[4];
        if (v8 <= observingCopy)
        {
          break;
        }

        left = *v7;
        if (!*v7)
        {
          goto LABEL_15;
        }
      }

      if (v8 >= observingCopy)
      {
        break;
      }

      left = v7[1];
      if (!left)
      {
        goto LABEL_15;
      }
    }

    [observingCopy addObserver:self];
    end = self->_retainedGroups.__end_;
    cap = self->_retainedGroups.__cap_;
    if (end >= cap)
    {
      begin = self->_retainedGroups.__begin_;
      v13 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v14 = 0xAAAAAAAAAAAAAAABLL * ((cap - begin) >> 3);
      v15 = 2 * v14;
      if (2 * v14 <= v13 + 1)
      {
        v15 = v13 + 1;
      }

      if (v14 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v15;
      }

      if (v16)
      {
        if (v16 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = geo::_retain_ptr<VKPolylineGroupOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr((24 * v13), observingCopy);
      v18 = self->_retainedGroups.__begin_;
      v19 = self->_retainedGroups.__end_;
      v20 = v17 - (v19 - v18);
      v11 = v17 + 3;
      v30 = (v17 + 3);
      if (v19 != v18)
      {
        v21 = 24 * v13 - 8 * (v19 - v18);
        v22 = self->_retainedGroups.__begin_;
        v23 = v17 - (v19 - v18);
        v24 = v20;
        do
        {
          *v24 = &unk_1F29E3D60;
          v24 += 24;
          *(v23 + 1) = 0;
          objc_storeStrong(v23 + 1, v22[1]);
          v25 = v22[1];
          v22[1] = 0;

          v22 += 3;
          v21 += 24;
          v23 = v24;
        }

        while (v22 != v19);
        v26 = v18;
        v27 = v18;
        do
        {
          v28 = *v27;
          v27 += 3;
          (*v28)(v18);
          v26 += 3;
          v18 = v27;
        }

        while (v27 != v19);
      }

      v29 = self->_retainedGroups.__begin_;
      self->_retainedGroups.__begin_ = v20;
      *&self->_retainedGroups.__end_ = v30;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      v11 = geo::_retain_ptr<VKPolylineGroupOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(end, observingCopy) + 3;
      self->_retainedGroups.__end_ = v11;
    }

    self->_retainedGroups.__end_ = v11;
LABEL_35:
  }
}

- (RouteRenderLayerObserverProxy)initWithPolylineGroupObserver:(PolylineGroupChangeObserver *)observer
{
  v5.receiver = self;
  v5.super_class = RouteRenderLayerObserverProxy;
  result = [(RouteRenderLayerObserverProxy *)&v5 init];
  if (result)
  {
    result->_polylineGroupObserver = observer;
  }

  return result;
}

@end