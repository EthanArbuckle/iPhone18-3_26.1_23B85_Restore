@interface VKVectorOverlayPolyline
- (PolylineWithElevation)simplifiedGeometryAtZoomLevel:(SEL)level;
- (VKVectorOverlayPolyline)initWithMapPoints:(id *)points elevations:(const double *)elevations count:(unint64_t)count needsElevationCorrection:(BOOL)correction;
- (id).cxx_construct;
@end

@implementation VKVectorOverlayPolyline

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 18) = 0;
  *(self + 8) = 0u;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  return self;
}

- (PolylineWithElevation)simplifiedGeometryAtZoomLevel:(SEL)level
{
  os_unfair_lock_lock(&self->_simplifiedGeometryCacheLock._lock);
  ptr = self->_simplifiedGeometryCache.__ptr_;
  v8 = std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(ptr + 1, a4);
  if (!v8)
  {
    goto LABEL_13;
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
LABEL_13:
    operator new();
  }

  v14 = *(v9 + 32);
  retstr->var0.var0 = *(v9 + 24);
  retstr->var0.var1 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *(v9 + 40);
  v15 = *(v9 + 48);
  retstr->var1.var0 = v16;
  retstr->var1.var1 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(&self->_simplifiedGeometryCacheLock._lock);
  return result;
}

- (VKVectorOverlayPolyline)initWithMapPoints:(id *)points elevations:(const double *)elevations count:(unint64_t)count needsElevationCorrection:(BOOL)correction
{
  v7.receiver = self;
  v7.super_class = VKVectorOverlayPolyline;
  if ([(VKVectorOverlayPolyline *)&v7 init])
  {
    operator new();
  }

  return 0;
}

@end