@interface VKVectorOverlayPolygon
- (VKVectorOverlayPolygon)initWithMapPoints:(id *)a3 count:(unint64_t)a4;
- (id).cxx_construct;
- (shared_ptr<geo::Polygon2<double>>)simplifiedGeometryAtZoomLevel:(unsigned __int8)a3;
@end

@implementation VKVectorOverlayPolygon

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 4) = 0;
  *(self + 10) = 0;
  return self;
}

- (shared_ptr<geo::Polygon2<double>>)simplifiedGeometryAtZoomLevel:(unsigned __int8)a3
{
  v4 = a3;
  v6 = v3;
  v35 = a3;
  os_unfair_lock_lock(&self->_simplifiedGeometryCacheLock._lock);
  ptr = self->_simplifiedGeometryCache.__ptr_;
  v8 = std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(ptr + 1, v4);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = ptr[7];
  v10 = v8[3];
  if (v9 != v10)
  {
    v11 = v10[1];
    if (v11 != v9)
    {
      v12 = *v10;
      *(v12 + 8) = v11;
      *v11 = v12;
      v13 = *v9;
      *(v13 + 8) = v10;
      *v10 = v13;
      *v9 = v10;
      v10[1] = v9;
      v9 = ptr[7];
    }
  }

  if (ptr + 6 == v9)
  {
LABEL_8:
    if (v4 <= 0x12)
    {
      v16 = (1 << (19 - v4)) / *MEMORY[0x1E69A1690];
    }

    else
    {
      v16 = 1.0e-10;
    }

    __p = 0;
    v34 = 0uLL;
    std::vector<gm::Matrix<double,2,1>>::resize(&__p, (*(self->_geometry.__ptr_ + 1) - *self->_geometry.__ptr_) >> 4);
    v17 = self->_geometry.__ptr_;
    v19 = *v17;
    v18 = v17[1];
    v20 = (v18 - v19) >> 4;
    v21 = __p;
    if (v20 > 2)
    {
      v32 = 1;
      *__p = *v19;
      v21[1] = *(v19 + 1);
      v26 = v20 - 1;
      geo::dpSimplify<geo::Mercator2<double>>(v19, 0, v20 - 1, v21, &v32, v16);
      v27 = &v19[16 * v26];
      v28 = v32;
      v20 = ++v32;
      v29 = &v21[2 * v28];
      *v29 = *v27;
      v29[1] = *(v27 + 1);
    }

    else
    {
      if (v18 != v19)
      {
        v22 = __p + 8;
        v23 = (v19 + 8);
        v24 = v20;
        do
        {
          *(v22 - 1) = *(v23 - 1);
          v25 = *v23;
          v23 += 2;
          *v22 = v25;
          v22 += 2;
          --v24;
        }

        while (v24);
      }

      v32 = v20;
    }

    std::vector<gm::Matrix<double,2,1>>::resize(&__p, v20);
    operator new();
  }

  v15 = v9[3];
  v14 = v9[4];
  *v6 = v15;
  v6[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(&self->_simplifiedGeometryCacheLock._lock);
  result.__cntrl_ = v31;
  result.__ptr_ = v30;
  return result;
}

- (VKVectorOverlayPolygon)initWithMapPoints:(id *)a3 count:(unint64_t)a4
{
  if (a4)
  {
    v5.receiver = self;
    v5.super_class = VKVectorOverlayPolygon;
    if ([(VKVectorOverlayPolygon *)&v5 init])
    {
      operator new();
    }

    self = 0;
  }

  return 0;
}

@end