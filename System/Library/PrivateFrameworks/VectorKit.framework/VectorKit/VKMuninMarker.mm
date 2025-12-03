@interface VKMuninMarker
- ($1AB5FA073B851C12C2339EC22442E995)coordinate;
- (NSDate)collectionDate;
- (VKMuninMarker)initWithCollectionPoint:(const void *)point;
- (VKMuninMarker)initWithCoordinate:(id)coordinate;
- (const)collectionPoint;
- (id).cxx_construct;
- (unint64_t)pointId;
- (unsigned)buildId;
@end

@implementation VKMuninMarker

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 1872) = 0;
  return self;
}

- ($1AB5FA073B851C12C2339EC22442E995)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  altitude = self->_coordinate.altitude;
  result.var2 = altitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (unsigned)buildId
{
  if (self->_anon_128[1576] == 1)
  {
    return *&self->_anon_128[1564];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)pointId
{
  if (self->_anon_128[1576] == 1)
  {
    return self->_collectionPoint.var0.__val_.pointId;
  }

  else
  {
    return 0;
  }
}

- (NSDate)collectionDate
{
  if (self->_anon_128[1576] == 1)
  {
    [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:self->_collectionPoint.var0.__val_.time * 0.001];
  }

  else
  {
    [MEMORY[0x1E695DF00] date];
  }
  v2 = ;

  return v2;
}

- (const)collectionPoint
{
  if (self->_anon_128[1576])
  {
    return &self->_collectionPoint;
  }

  else
  {
    return 0;
  }
}

- (VKMuninMarker)initWithCoordinate:(id)coordinate
{
  var2 = coordinate.var2;
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  v10.receiver = self;
  v10.super_class = VKMuninMarker;
  v6 = [(VKMuninMarker *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_coordinate.latitude = var0;
    v6->_coordinate.longitude = var1;
    v6->_coordinate.altitude = var2;
    v8 = v6;
  }

  return v7;
}

- (VKMuninMarker)initWithCollectionPoint:(const void *)point
{
  v27.receiver = self;
  v27.super_class = VKMuninMarker;
  v4 = [(VKMuninMarker *)&v27 init];
  if (v4)
  {
    v15 = *point;
    v16 = *(point + 8);
    v5 = *(point + 4);
    v17 = *(point + 3);
    v18 = v5;
    v19 = *(point + 10);
    v20 = *(point + 44);
    v21 = *(point + 56);
    v22 = *(point + 72);
    v23[0] = v24;
    v23[1] = v24;
    v23[2] = v24;
    v23[3] = 6;
    geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>(v23, *(point + 11), *(point + 12));
    *(v25 + 5) = *(point + 1853);
    v25[0] = *(point + 231);
    v26 = 1;
    std::__optional_storage_base<md::mun::CollectionPoint,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<md::mun::CollectionPoint,false>>((v4 + 8), &v15);
    if (v26 == 1)
    {
      geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v23);
    }

    v6 = *(point + 7) * 6.28318531;
    v7 = exp(*(point + 8) * 6.28318531 + -3.14159265);
    v14 = atan(v7);
    v8 = fmod(v6, 6.28318531);
    v9 = fmod(v8 + 6.28318531, 6.28318531);
    v10 = *(point + 9);
    v11.f64[0] = v14;
    v11.f64[1] = v9;
    *(v4 + 1880) = vmlaq_f64(xmmword_1B33B0660, xmmword_1B33B0650, v11);
    *(v4 + 237) = v10;
    v12 = v4;
  }

  return v4;
}

@end