@interface VKLabelSelectionQuery
- (VKLabelMarker)labelMarker;
- (VKLabelSelectionQuery)initWithLabelMarker:(shared_ptr<md:(unsigned int)a4 :StandardLabelMarker>)a3 selectionFilterStamp:;
- (id).cxx_construct;
- (shared_ptr<md::StandardLabelMarker>)standardLabelMarker;
@end

@implementation VKLabelSelectionQuery

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (shared_ptr<md::StandardLabelMarker>)standardLabelMarker
{
  cntrl = self->_labelMarker.__cntrl_;
  *v2 = self->_labelMarker.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (VKLabelMarker)labelMarker
{
  cntrl = self->_labelMarker.__cntrl_;
  ptr = self->_labelMarker.__ptr_;
  v6 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v3 = [VKLabelMarker markerWithLabelMarker:&ptr];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  return v3;
}

- (VKLabelSelectionQuery)initWithLabelMarker:(shared_ptr<md:(unsigned int)a4 :StandardLabelMarker>)a3 selectionFilterStamp:
{
  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  v12.receiver = self;
  v12.super_class = VKLabelSelectionQuery;
  v6 = [(VKLabelSelectionQuery *)&v12 init:a3.__ptr_];
  v7 = v6;
  if (v6)
  {
    v9 = *ptr;
    v8 = *(ptr + 1);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v6->_labelMarker.__cntrl_;
    v7->_labelMarker.__ptr_ = v9;
    v7->_labelMarker.__cntrl_ = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v7->_filterStamp = cntrl;
  }

  return v7;
}

@end