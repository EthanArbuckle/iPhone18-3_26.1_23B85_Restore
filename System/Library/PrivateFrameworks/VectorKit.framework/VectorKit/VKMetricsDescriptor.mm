@interface VKMetricsDescriptor
- (VKMetricsDescriptor)init;
- (id).cxx_construct;
- (shared_ptr<gss::StylesheetManager<gss::PropertyID>>)styleManager;
- (void)setStyleManager:(shared_ptr<gss::StylesheetManager<gss::PropertyID>>)manager;
@end

@implementation VKMetricsDescriptor

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

- (void)setStyleManager:(shared_ptr<gss::StylesheetManager<gss::PropertyID>>)manager
{
  v4 = *manager.__ptr_;
  v3 = *(manager.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_styleManager.__cntrl_;
  self->_styleManager.__ptr_ = v4;
  self->_styleManager.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
  }
}

- (shared_ptr<gss::StylesheetManager<gss::PropertyID>>)styleManager
{
  cntrl = self->_styleManager.__cntrl_;
  *v2 = self->_styleManager.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (VKMetricsDescriptor)init
{
  v3.receiver = self;
  v3.super_class = VKMetricsDescriptor;
  result = [(VKMetricsDescriptor *)&v3 init];
  if (result)
  {
    result->_shieldSize = 4;
  }

  return result;
}

@end