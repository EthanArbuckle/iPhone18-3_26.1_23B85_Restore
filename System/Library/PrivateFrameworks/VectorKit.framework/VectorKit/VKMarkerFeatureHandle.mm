@interface VKMarkerFeatureHandle
- (VKMarkerFeatureHandle)initWithMarkerHandle:(const void *)handle featureType:(int)type;
- (id).cxx_construct;
@end

@implementation VKMarkerFeatureHandle

- (id).cxx_construct
{
  *(self + 12) = 255;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 5) = 0;
  *(self + 48) = 1;
  *(self + 8) = 0;
  *(self + 9) = 0;
  return self;
}

- (VKMarkerFeatureHandle)initWithMarkerHandle:(const void *)handle featureType:(int)type
{
  v18.receiver = self;
  v18.super_class = VKMarkerFeatureHandle;
  v6 = [(VKMarkerFeatureHandle *)&v18 init];
  v7 = v6;
  v8 = v6;
  if (v6)
  {
    v9 = *handle;
    v10 = *(handle + 1);
    v11 = *(handle + 2);
    *(v6 + 7) = *(handle + 6);
    *(v6 + 40) = v11;
    *(v6 + 24) = v10;
    *(v6 + 8) = v9;
    v13 = *(handle + 7);
    v12 = *(handle + 8);
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(v6 + 9);
    v8->_actualHandle.styleAttributes.__ptr_ = v13;
    v8->_actualHandle.styleAttributes.__cntrl_ = v12;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }

    v15 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithFeatureStyleAttributesConstPtr:v7 + 64];
    styleAttributes = v8->_styleAttributes;
    v8->_styleAttributes = v15;

    v8->_featureType = type;
  }

  return v8;
}

@end