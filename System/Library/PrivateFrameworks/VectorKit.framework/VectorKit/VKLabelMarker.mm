@interface VKLabelMarker
+ (VKLabelMarker)markerWithLabelMarker:(const void *)a3;
- ($1AB5FA073B851C12C2339EC22442E995)coordinate3D;
- (BOOL)positionOfInterest:(id *)a3 zoom:(float *)a4;
- (Box<double,)_bounds;
- (CGPoint)calloutAnchorPointWithSnapToPixels:(BOOL)a3;
- (CGRect)_calloutAnchorRect:(BOOL)a3;
- (CGRect)calloutAnchorRect;
- (CGRect)lateralCalloutAnchorRect;
- (CGRect)screenBounds;
- (CGRect)screenCollisionBounds;
- (NSArray)dataIconImageKeys;
- (NSArray)iconImageKeys;
- (NSArray)imageKeys;
- (NSArray)relatedSubTexts;
- (NSArray)relatedTexts;
- (NSArray)shields;
- (NSArray)transitSystems;
- (VKLabelMarker)initWithLabelMarkerPtr:(const void *)a3;
- (float)buildingFaceAzimuth;
- (float)facingDirection;
- (id).cxx_construct;
- (id)clusterFeatureAnnotations;
- (id)clusterWaypointInfos;
- (id)featureHandles;
- (id)locale;
- (id)mapRegion;
- (id)parentClusterLabelMarker;
- (id)routeAnnotations;
- (id)subtext;
- (id)text;
- (int)featureType;
- (unint64_t)clusterFeatureCount;
- (unsigned)externalFeatureCategory;
- (unsigned)pickedLabelBalloonBehavior;
@end

@implementation VKLabelMarker

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  return self;
}

- (id)parentClusterLabelMarker
{
  (*(*self->_labelMarker.__ptr_ + 352))(&v4);
  if (v4)
  {
    v2 = [VKLabelMarker markerWithLabelMarker:&v4];
  }

  else
  {
    v2 = 0;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return v2;
}

- (id)clusterWaypointInfos
{
  v5[4] = *MEMORY[0x1E69E9840];
  memset(v5, 0, 24);
  (*(*self->_labelMarker.__ptr_ + 368))();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v4 = v5;
  std::vector<VKRouteWaypointInfo * {__strong},geo::allocator_adapter<VKRouteWaypointInfo * {__strong},mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);

  return v2;
}

- (id)clusterFeatureAnnotations
{
  v6[4] = *MEMORY[0x1E69E9840];
  memset(v6, 0, 24);
  (*(*self->_labelMarker.__ptr_ + 360))();
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v3 = [MEMORY[0x1E695DEC8] arrayWithArray:v2];

  v5 = v6;
  std::vector<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::allocator_adapter<objc_object  {objcproto25VKCustomFeatureAnnotation}*,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);

  return v3;
}

- (unint64_t)clusterFeatureCount
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  (*(*self->_labelMarker.__ptr_ + 360))();
  v3 = v6;
  v2 = v7;
  v5 = &v6;
  std::vector<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::allocator_adapter<objc_object  {objcproto25VKCustomFeatureAnnotation}*,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return (v2 - v3) >> 3;
}

- (unsigned)externalFeatureCategory
{
  v2 = (*(*self->_labelMarker.__ptr_ + 672))(self->_labelMarker.__ptr_, a2);
  if (v2 >= 4)
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

- (unsigned)pickedLabelBalloonBehavior
{
  if ([(VKLabelMarker *)self useVKSelectionBalloon])
  {
    return 1;
  }

  v4 = (*(*self->_labelMarker.__ptr_ + 648))(self->_labelMarker.__ptr_);
  if (v4 == 2)
  {
    return 2;
  }

  else
  {
    return v4 == 1;
  }
}

- (CGRect)screenBounds
{
  v3 = md::LabelMarker::screenHeightInPixels(self->_labelMarker.__ptr_);
  v4 = (*(*self->_labelMarker.__ptr_ + 576))();
  v8 = 0;
  v9 = 0;
  v21 = v4;
  v22 = v5;
  v10 = *(self->_labelMarker.__ptr_ + 62);
  v11 = &v21;
  *v23 = v6;
  *&v23[1] = v7;
  do
  {
    v12 = *&v23[v9];
    v13 = *v11;
    if (v8)
    {
      break;
    }

    v8 = 1;
    v11 = &v22;
    v9 = 1;
  }

  while (v12 >= v13);
  if (v12 >= v13)
  {
    v18 = 1.0 / v10;
    v14 = (v4 * (1.0 / v10));
    v15 = ((v3 - v7) * v18);
    v16 = ((v6 - v4) * v18);
    v17 = ((v7 - v5) * v18);
  }

  else
  {
    v14 = *MEMORY[0x1E695F058];
    v15 = *(MEMORY[0x1E695F058] + 8);
    v16 = *(MEMORY[0x1E695F058] + 16);
    v17 = *(MEMORY[0x1E695F058] + 24);
  }

  v19 = v14;
  v20 = v15;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)screenCollisionBounds
{
  v3 = md::LabelMarker::screenHeightInPixels(self->_labelMarker.__ptr_);
  v4 = (*(*self->_labelMarker.__ptr_ + 568))();
  v8 = 0;
  v9 = 0;
  v21 = v4;
  v22 = v5;
  v10 = *(self->_labelMarker.__ptr_ + 62);
  v11 = &v21;
  *v23 = v6;
  *&v23[1] = v7;
  do
  {
    v12 = *&v23[v9];
    v13 = *v11;
    if (v8)
    {
      break;
    }

    v8 = 1;
    v11 = &v22;
    v9 = 1;
  }

  while (v12 >= v13);
  if (v12 >= v13)
  {
    v18 = 1.0 / v10;
    v14 = (v4 * (1.0 / v10));
    v15 = ((v3 - v7) * v18);
    v16 = ((v6 - v4) * v18);
    v17 = ((v7 - v5) * v18);
  }

  else
  {
    v14 = *MEMORY[0x1E695F058];
    v15 = *(MEMORY[0x1E695F058] + 8);
    v16 = *(MEMORY[0x1E695F058] + 16);
    v17 = *(MEMORY[0x1E695F058] + 24);
  }

  v19 = v14;
  v20 = v15;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGPoint)calloutAnchorPointWithSnapToPixels:(BOOL)a3
{
  (*(*self->_labelMarker.__ptr_ + 664))(self->_labelMarker.__ptr_, a3);
  result.y = v4;
  result.x = v3;
  return result;
}

- (NSArray)shields
{
  v15 = *MEMORY[0x1E69E9840];
  ptr = self->_labelMarker.__ptr_;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v14 = *(ptr + 152);
  std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*,geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(&v11, *(ptr + 16), *(ptr + 17), 0xAAAAAAAAAAAAAAABLL * ((*(ptr + 17) - *(ptr + 16)) >> 3));
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v4 = [v3 initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3)];
  v5 = v11;
  for (i = v12; v5 != i; v5 += 24)
  {
    v7 = [[VKLabelMarkerShield alloc] initWithImageKey:*(v5 + 8)];
    if (v7)
    {
      [v4 addObject:v7];
    }
  }

  v8 = [MEMORY[0x1E695DEC8] arrayWithArray:v4];

  v10 = &v11;
  std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v10);

  return v8;
}

- (NSArray)imageKeys
{
  v15 = *MEMORY[0x1E69E9840];
  ptr = self->_labelMarker.__ptr_;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v14 = *(ptr + 88);
  std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*,geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(&v11, *(ptr + 8), *(ptr + 9), 0xAAAAAAAAAAAAAAABLL * ((*(ptr + 9) - *(ptr + 8)) >> 3));
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v4 = [v3 initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3)];
  v5 = v11;
  v6 = v12;
  while (v5 != v6)
  {
    v7 = *(v5 + 8);
    if (v7)
    {
      [v4 addObject:v7];
    }

    v5 += 24;
  }

  v8 = [MEMORY[0x1E695DEC8] arrayWithArray:v4];

  v10 = &v11;
  std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v10);

  return v8;
}

- (NSArray)relatedSubTexts
{
  ptr = self->_labelMarker.__ptr_;
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:(*(ptr + 25) - *(ptr + 24)) >> 5];
  v4 = *(ptr + 24);
  for (i = *(ptr + 25); v4 != i; v4 += 4)
  {
    if (*(v4 + 23) >= 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = *v4;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
    if (v7)
    {
      [v3 addObject:v7];
    }
  }

  v8 = [MEMORY[0x1E695DEC8] arrayWithArray:v3];

  return v8;
}

- (NSArray)relatedTexts
{
  ptr = self->_labelMarker.__ptr_;
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:(*(ptr + 21) - *(ptr + 20)) >> 5];
  v4 = *(ptr + 20);
  for (i = *(ptr + 21); v4 != i; v4 += 4)
  {
    if (*(v4 + 23) >= 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = *v4;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
    if (v7)
    {
      [v3 addObject:v7];
    }
  }

  v8 = [MEMORY[0x1E695DEC8] arrayWithArray:v3];

  return v8;
}

- (id)featureHandles
{
  v13 = *MEMORY[0x1E69E9840];
  (*(*self->_labelMarker.__ptr_ + 552))(&v12.__shared_owners_);
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  v3 = [v2 initWithCapacity:0x8E38E38E38E38E39 * ((v12.__shared_weak_owners_ - v12.__shared_owners_) >> 3)];
  shared_owners = v12.__shared_owners_;
  for (i = v12.__shared_weak_owners_; shared_owners != i; shared_owners += 72)
  {
    v6 = [VKMarkerFeatureHandle alloc];
    v7 = *shared_owners;
    if (v7 > 0x1B)
    {
      v8 = 0;
    }

    else
    {
      v8 = dword_1B33B3E30[v7];
    }

    v9 = [(VKMarkerFeatureHandle *)v6 initWithMarkerHandle:shared_owners featureType:v8];
    if (v9)
    {
      [v3 addObject:v9];
    }
  }

  v10 = [MEMORY[0x1E695DEC8] arrayWithArray:v3];

  v12.__vftable = &v12.__shared_owners_;
  std::vector<md::MarkerFeatureHandle,geo::allocator_adapter<md::MarkerFeatureHandle,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v12);

  return v10;
}

- (id)routeAnnotations
{
  (*(*self->_labelMarker.__ptr_ + 416))(self->_labelMarker.__ptr_, a2);
  v2 = MEMORY[0x1E695DEC8];

  return [v2 arrayWithObjects:? count:?];
}

- (int)featureType
{
  v2 = *(self->_labelMarker.__ptr_ + 225);
  if (v2 > 0x1B)
  {
    return 0;
  }

  else
  {
    return dword_1B33B3E30[v2];
  }
}

- (BOOL)positionOfInterest:(id *)a3 zoom:(float *)a4
{
  v6 = vdupq_n_s64(0xC066800000000000);
  v7 = 0x7FEFFFFFFFFFFFFFLL;
  result = (*(*self->_labelMarker.__ptr_ + 632))(self->_labelMarker.__ptr_, &v6, a4);
  *a3 = v6;
  return result;
}

- (CGRect)calloutAnchorRect
{
  [(VKLabelMarker *)self _calloutAnchorRect:0];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)lateralCalloutAnchorRect
{
  [(VKLabelMarker *)self _calloutAnchorRect:1];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)_calloutAnchorRect:(BOOL)a3
{
  v4 = (*(*self->_labelMarker.__ptr_ + 560))(self->_labelMarker.__ptr_, a3);
  v5 = 1.0 / *(self->_labelMarker.__ptr_ + 62);
  v7 = -(v6 * v5);
  v9 = ((v8 - v4) * v5);
  v11 = ((v6 - v10) * v5);
  v12 = (v4 * v5);
  v13 = v7;
  result.size.height = v11;
  result.size.width = v9;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)mapRegion
{
  [(VKLabelMarker *)self _bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6 * 6.28318531;
  v9 = exp(v8 * 6.28318531 + -3.14159265);
  v10 = atan(v9);
  v11 = fmod(v7, 6.28318531);
  v12 = fmod(v11 + 6.28318531, 6.28318531);
  v13 = fmod(v5 * 6.28318531, 6.28318531);
  v14 = fmod(v13 + 6.28318531, 6.28318531);
  v15 = objc_alloc_init(MEMORY[0x1E69A2200]);
  [v15 setNorthLat:v10 * 114.591559 + -90.0];
  v16 = exp(v3 * 6.28318531 + -3.14159265);
  [v15 setSouthLat:(atan(v16) * 114.591559 + -90.0)];
  [v15 setEastLng:v14 * 57.2957795 + -180.0];
  [v15 setWestLng:v12 * 57.2957795 + -180.0];

  return v15;
}

- (Box<double,)_bounds
{
  [(VKLabelMarker *)self coordinate];
  v4 = v3;
  [(VKLabelMarker *)self coordinate];
  v6 = v5;
  v7 = tan(v4 * 0.00872664626 + 0.785398163);
  v8 = log(v7);
  v9 = v6 * 0.00277777778 + 0.5;
  v10 = v8 * 0.159154943 + 0.5;
  v11 = v9;
  v12 = v10;
  result._maximum._e[1] = v12;
  result._maximum._e[0] = v9;
  result._minimum._e[1] = v10;
  result._minimum._e[0] = v11;
  return result;
}

- (float)facingDirection
{
  v2 = (*(*self->_labelMarker.__ptr_ + 624))(self->_labelMarker.__ptr_, a2);
  result = *&v2;
  if ((v2 & 0x100000000) == 0)
  {
    return 0.0;
  }

  return result;
}

- (float)buildingFaceAzimuth
{
  v2 = (*(*self->_labelMarker.__ptr_ + 608))(self->_labelMarker.__ptr_, a2);
  result = *&v2;
  if ((v2 & 0x100000000) == 0)
  {
    return 0.0;
  }

  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)coordinate3D
{
  (*(*self->_labelMarker.__ptr_ + 584))(v5);
  v2 = *v5;
  v3 = *&v5[1];
  v4 = *&v5[2];
  result.var2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (NSArray)transitSystems
{
  v13 = *MEMORY[0x1E69E9840];
  (*(*self->_labelMarker.__ptr_ + 544))(&v11);
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  v3 = [v2 initWithCapacity:(v12 - v11) >> 5];
  v4 = v11;
  v5 = v12;
  if (v11 != v12)
  {
    do
    {
      if (*(v4 + 23) >= 0)
      {
        v6 = v4;
      }

      else
      {
        v6 = *v4;
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
      if (v7)
      {
        [v3 addObject:v7];
      }

      v4 += 4;
    }

    while (v4 != v5);
  }

  v8 = [MEMORY[0x1E695DEC8] arrayWithArray:v3];

  v10 = &v11;
  std::vector<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v10);

  return v8;
}

- (NSArray)iconImageKeys
{
  v26 = *MEMORY[0x1E69E9840];
  p_labelMarker = &self->_labelMarker;
  if (((*(*self->_labelMarker.__ptr_ + 272))(self->_labelMarker.__ptr_, a2) & 1) != 0 || (*(*p_labelMarker->__ptr_ + 280))(p_labelMarker->__ptr_))
  {
    (*(*p_labelMarker->__ptr_ + 688))(&v22);
    ptr = p_labelMarker->__ptr_;
    cntrl = p_labelMarker->__cntrl_;
    if (cntrl)
    {
      atomic_fetch_add_explicit(&cntrl->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = objc_alloc(MEMORY[0x1E695DF70]);
    v6 = [v5 initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 3)];
    v7 = v22;
    v8 = v23;
    if (v22 != v23)
    {
      v9 = MEMORY[0x1E695EFF8];
      do
      {
        v10 = [[VKImageSourceKey alloc] initWithLabelImageKey:v7];
        if (v10)
        {
          md::LabelMarker::acquireDisplayLock(&v24, ptr);
          if (v24.__vftable)
          {
            v11 = *(ptr + 248);
            v12 = (*&v7->__shared_weak_owners_ / v11);
            v13 = ((*(&v24.__vftable[37].__on_zero_shared + 1) - *(&v7->__shared_weak_owners_ + 1)) / v11);
          }

          else
          {
            v12 = *v9;
            v13 = v9[1];
          }

          if (v25 == 1)
          {
            std::recursive_mutex::unlock(v24.__shared_weak_owners_);
          }

          if (v24.__shared_owners_)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v24.__shared_owners_);
          }

          [(VKImageSourceKey *)v10 setImageCenter:v12, v13];
          [v6 addObject:v10];
        }

        ++v7;
      }

      while (v7 != v8);
    }

    v14 = [MEMORY[0x1E695DEC8] arrayWithArray:v6];

    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
    }

    v24.__vftable = &v22;
    std::vector<md::LabelImageInfo,geo::allocator_adapter<md::LabelImageInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v24);
  }

  else
  {
    v15 = p_labelMarker->__ptr_;
    memset(&v24, 0, sizeof(v24));
    v25 = *(v15 + 120);
    std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*,geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(&v24, *(v15 + 12), *(v15 + 13), 0xAAAAAAAAAAAAAAABLL * ((*(v15 + 13) - *(v15 + 12)) >> 3));
    v16 = objc_alloc(MEMORY[0x1E695DF70]);
    v17 = [v16 initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((v24.__shared_owners_ - v24.__vftable) >> 3)];
    v18 = v24.__vftable;
    shared_owners = v24.__shared_owners_;
    while (v18 != shared_owners)
    {
      v20 = v18->~__shared_weak_count_0;
      if (v20)
      {
        [v17 addObject:v20];
      }

      v18 = (v18 + 24);
    }

    v14 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];

    v22 = &v24;
    std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v22);
  }

  return v14;
}

- (NSArray)dataIconImageKeys
{
  v12 = *MEMORY[0x1E69E9840];
  (*(*self->_labelMarker.__ptr_ + 680))(&v10);
  if (v10 == v11)
  {
    v7 = 0;
  }

  else
  {
    v2 = objc_alloc(MEMORY[0x1E695DF70]);
    v3 = [v2 initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 3)];
    v4 = v10;
    v5 = v11;
    while (v4 != v5)
    {
      v6 = *(v4 + 8);
      if (v6)
      {
        [v3 addObject:v6];
      }

      v4 += 24;
    }

    v7 = [MEMORY[0x1E695DEC8] arrayWithArray:v3];
  }

  v9 = &v10;
  std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v9);

  return v7;
}

- (id)locale
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  (*(*self->_labelMarker.__ptr_ + 144))(v9);
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

- (id)subtext
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  (*(*self->_labelMarker.__ptr_ + 136))(v9);
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

- (id)text
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  (*(*self->_labelMarker.__ptr_ + 128))(v9);
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

- (VKLabelMarker)initWithLabelMarkerPtr:(const void *)a3
{
  v4 = *(a3 + 1);
  v11 = *a3;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10.receiver = self;
  v10.super_class = VKLabelMarker;
  v5 = [(VKMarker *)&v10 initWithFeatureMarkerPtr:&v11 markerType:1];
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

    cntrl = v5->_labelMarker.__cntrl_;
    v5->_labelMarker.__ptr_ = v7;
    v5->_labelMarker.__cntrl_ = v6;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
    }
  }

  return v5;
}

+ (VKLabelMarker)markerWithLabelMarker:(const void *)a3
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
      v6 = [[VKLabelMarker alloc] initWithLabelMarkerPtr:a3];
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