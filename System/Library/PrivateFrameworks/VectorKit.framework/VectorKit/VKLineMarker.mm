@interface VKLineMarker
+ (id)markerWithLabelFeatureMarker:(const void *)a3;
- (NSString)localizedName;
- (VKLineMarker)initWithLabelFeatureMarkerPtr:(const void *)a3;
- (id).cxx_construct;
- (id)featureHandles;
@end

@implementation VKLineMarker

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  return self;
}

- (id)featureHandles
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(self->_labelFeatureMarker.__ptr_ + 8);
  v18.std::__shared_count = *v2;
  v3 = *(v2 + 17);
  v4 = *(v2 + 20);
  v5 = *(v2 + 16);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  v10 = *(v2 + 64);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = mdm::zone_mallocator::instance(self);
  v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::MarkerFeatureHandle>(v11, 1);
  v19 = v12;
  v20 = v12;
  v21 = v12 + 72;
  *v12 = v18.std::__shared_count;
  v12[17] = v3;
  *(v12 + 20) = v4;
  v12[16] = v5;
  *(v12 + 4) = v6;
  v12[40] = v7;
  *(v12 + 6) = v8;
  *(v12 + 7) = v9;
  *(v12 + 8) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v20 = v12 + 72;
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  else
  {
    v20 = v12 + 72;
  }

  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  for (i = v19; i != v20; i += 72)
  {
    v15 = [[VKMarkerFeatureHandle alloc] initWithMarkerHandle:i featureType:1];
    if (v15)
    {
      [v13 addObject:v15];
    }
  }

  v16 = [MEMORY[0x1E695DEC8] arrayWithArray:{v13, v18.__vftable}];

  v18.__vftable = &v19;
  std::vector<md::MarkerFeatureHandle,geo::allocator_adapter<md::MarkerFeatureHandle,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v18);

  return v16;
}

- (NSString)localizedName
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  (*(*self->_labelFeatureMarker.__ptr_ + 16))(v9);
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

- (VKLineMarker)initWithLabelFeatureMarkerPtr:(const void *)a3
{
  v4 = *(a3 + 1);
  v11 = *a3;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10.receiver = self;
  v10.super_class = VKLineMarker;
  v5 = [(VKMarker *)&v10 initWithFeatureMarkerPtr:&v11 markerType:4];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  if (v5)
  {
    v7 = *a3;
    v6 = *(a3 + 1);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v5->_labelFeatureMarker.__cntrl_;
    v5->_labelFeatureMarker.__ptr_ = v7;
    v5->_labelFeatureMarker.__cntrl_ = v6;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
    }
  }

  return v5;
}

+ (id)markerWithLabelFeatureMarker:(const void *)a3
{
  if (*a3)
  {
    v4 = *(*a3 + 24);
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [[VKLineMarker alloc] initWithLabelFeatureMarkerPtr:a3];
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end