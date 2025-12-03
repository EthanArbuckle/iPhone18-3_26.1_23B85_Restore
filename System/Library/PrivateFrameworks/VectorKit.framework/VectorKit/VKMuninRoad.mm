@interface VKMuninRoad
- (BOOL)isEqual:(id)equal;
- (VKMuninRoad)initWithLocalizedName:(const char *)name;
- (VKMuninRoad)initWithMuninRoadEdge:(const void *)edge localize:(BOOL)localize;
@end

@implementation VKMuninRoad

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      roadName = [(VKMuninRoad *)equalCopy roadName];
      v6 = [roadName isEqualToString:self->_roadName];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (VKMuninRoad)initWithLocalizedName:(const char *)name
{
  v9.receiver = self;
  v9.super_class = VKMuninRoad;
  v4 = [(VKMuninRoad *)&v9 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:name];
    roadName = v4->_roadName;
    v4->_roadName = v5;

    v7 = v4;
  }

  return v4;
}

- (VKMuninRoad)initWithMuninRoadEdge:(const void *)edge localize:(BOOL)localize
{
  v13 = *MEMORY[0x1E69E9840];
  md::MuninRoadEdge::localizedName(v11, *edge, localize);
  if (v12 >= 0)
  {
    v5 = v11;
  }

  else
  {
    v5 = v11[0];
  }

  v6 = [(VKMuninRoad *)self initWithLocalizedName:v5];
  v7 = v6;
  if (v12 < 0)
  {
    v8 = v11[0];
    v9 = mdm::zone_mallocator::instance(v6);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v9, v8);
  }

  return v7;
}

@end