@interface VKMarker
+ (id)markerWithFeatureMarker:(const void *)a3;
- (GEOFeatureStyleAttributes)styleAttributes;
- (NSString)name;
- (NSString)shortName;
- (VKMarker)initWithFeatureMarkerPtr:(const void *)a3 markerType:(int)a4;
- (id).cxx_construct;
- (void)dealloc;
@end

@implementation VKMarker

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)dealloc
{
  ptr = self->_actualMarker.__ptr_;
  if (ptr)
  {
    *&ptr->markerName[18] = 0;
    cntrl = self->_actualMarker.__cntrl_;
    self->_actualMarker.__ptr_ = 0;
    self->_actualMarker.__cntrl_ = 0;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
    }
  }

  v5.receiver = self;
  v5.super_class = VKMarker;
  [(VKMarker *)&v5 dealloc];
}

- (GEOFeatureStyleAttributes)styleAttributes
{
  styleAttributes = self->_styleAttributes;
  if (styleAttributes)
  {
    styleAttributes = [(GEOFeatureStyleAttributes *)styleAttributes copy];
    v2 = vars8;
  }

  return styleAttributes;
}

- (NSString)shortName
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  (*(*self->_actualMarker.__ptr_ + 24))(v9);
  if (v10 >= 0)
  {
    v3 = v9;
  }

  else
  {
    v3 = v9[0];
  }

  v4 = [v2 stringWithUTF8String:v3];
  v5 = v4;
  if (v10 < 0)
  {
    v6 = v9[0];
    v7 = mdm::zone_mallocator::instance(v4);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v7, v6);
  }

  return v5;
}

- (NSString)name
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  (*(*self->_actualMarker.__ptr_ + 16))(v9);
  if (v10 >= 0)
  {
    v3 = v9;
  }

  else
  {
    v3 = v9[0];
  }

  v4 = [v2 stringWithUTF8String:v3];
  v5 = v4;
  if (v10 < 0)
  {
    v6 = v9[0];
    v7 = mdm::zone_mallocator::instance(v4);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v7, v6);
  }

  return v5;
}

- (VKMarker)initWithFeatureMarkerPtr:(const void *)a3 markerType:(int)a4
{
  v17.receiver = self;
  v17.super_class = VKMarker;
  v6 = [(VKMarker *)&v17 init];
  v7 = v6;
  if (v6)
  {
    v6->_markerType = a4;
    ptr = *a3;
    v9 = *(a3 + 1);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v7->_actualMarker.__cntrl_;
    v7->_actualMarker.__ptr_ = ptr;
    v7->_actualMarker.__cntrl_ = v9;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
      ptr = v7->_actualMarker.__ptr_;
    }

    *&ptr->markerName[18] = v7;
    (*(*&ptr->id + 96))(&v15);
    v11 = v15;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
    }

    if (v11)
    {
      (*(*v7->_actualMarker.__ptr_ + 96))(&v14);
      std::allocate_shared[abi:nn200100]<FeatureStyleAttributes,std::allocator<FeatureStyleAttributes>,FeatureStyleAttributes const&,0>();
    }

    styleAttributes = v7->_styleAttributes;
    v7->_styleAttributes = 0;
  }

  return v7;
}

+ (id)markerWithFeatureMarker:(const void *)a3
{
  if (*a3)
  {
    v5 = *(*a3 + 24);
    if (!v5)
    {
      v5 = [[VKMarker alloc] initWithFeatureMarkerPtr:a3 markerType:0];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end