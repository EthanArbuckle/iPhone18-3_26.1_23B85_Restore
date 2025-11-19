@interface VKMuninRoad
- (BOOL)isEqual:(id)a3;
- (VKMuninRoad)initWithLocalizedName:(const char *)a3;
- (VKMuninRoad)initWithMuninRoadEdge:(const void *)a3 localize:(BOOL)a4;
@end

@implementation VKMuninRoad

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = [(VKMuninRoad *)v4 roadName];
      v6 = [v7 isEqualToString:self->_roadName];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (VKMuninRoad)initWithLocalizedName:(const char *)a3
{
  v9.receiver = self;
  v9.super_class = VKMuninRoad;
  v4 = [(VKMuninRoad *)&v9 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a3];
    roadName = v4->_roadName;
    v4->_roadName = v5;

    v7 = v4;
  }

  return v4;
}

- (VKMuninRoad)initWithMuninRoadEdge:(const void *)a3 localize:(BOOL)a4
{
  v13 = *MEMORY[0x1E69E9840];
  md::MuninRoadEdge::localizedName(v11, *a3, a4);
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