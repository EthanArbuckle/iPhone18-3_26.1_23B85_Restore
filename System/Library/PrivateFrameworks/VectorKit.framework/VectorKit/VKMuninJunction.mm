@interface VKMuninJunction
- (VKMuninJunction)initWithMuninJunction:(const void *)junction localize:(BOOL)localize;
- (id)description;
@end

@implementation VKMuninJunction

- (id)description
{
  name = self->_name;
  if (name)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", name];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", self->_roads];
  }
  v3 = ;

  return v3;
}

- (VKMuninJunction)initWithMuninJunction:(const void *)junction localize:(BOOL)localize
{
  localizeCopy = localize;
  v42 = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = VKMuninJunction;
  v6 = [(VKMuninJunction *)&v34 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    roads = v6->_roads;
    v6->_roads = v7;

    v9 = *(junction + 5);
    for (i = *(junction + 6); v9 != i; ++v9)
    {
      md::MuninRoadEdge::localizedName(&v39, **v9, localizeCopy);
      v12 = HIBYTE(v41);
      v13 = HIBYTE(v41);
      if (v41 < 0)
      {
        v12 = v40;
      }

      if (v12)
      {
        v14 = [VKMuninRoad alloc];
        if (v41 >= 0)
        {
          v15 = &v39;
        }

        else
        {
          v15 = v39;
        }

        v16 = [(VKMuninRoad *)v14 initWithLocalizedName:v15];
        if (([(NSMutableArray *)v6->_roads containsObject:v16]& 1) == 0)
        {
          [(NSMutableArray *)v6->_roads addObject:v16];
        }

        v13 = HIBYTE(v41);
      }

      if (v13 < 0)
      {
        v17 = v39;
        v18 = mdm::zone_mallocator::instance(v11);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v18, v17);
      }
    }

    name = v6->_name;
    v6->_name = 0;

    v35 = 0uLL;
    v36 = 0;
    v20 = *(junction + 1);
    if (v20)
    {
      v21 = *(v20 + 8);
      if (v21)
      {
        v39 = 0;
        v40 = 0;
        v41 = 0;
        md::LabelFeature::textFromFeature(&v37, v21, localizeCopy, &v39, 0);
        v35 = v37;
        v36 = v38;
        if (SHIBYTE(v41) < 0)
        {
          v23 = v39;
          v24 = mdm::zone_mallocator::instance(v22);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v24, v23);
        }

        v25 = HIBYTE(v36);
        if (v36 < 0)
        {
          v25 = *(&v35 + 1);
        }

        if (v25)
        {
          v26 = objc_alloc(MEMORY[0x1E696AEC0]);
          if (v36 >= 0)
          {
            v27 = &v35;
          }

          else
          {
            v27 = v35;
          }

          v28 = [v26 initWithUTF8String:v27];
          v29 = v6->_name;
          v6->_name = v28;
        }
      }
    }

    v30 = v6;
    if (SHIBYTE(v36) < 0)
    {
      v31 = v35;
      v32 = mdm::zone_mallocator::instance(v30);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v32, v31);
    }
  }

  return v6;
}

@end