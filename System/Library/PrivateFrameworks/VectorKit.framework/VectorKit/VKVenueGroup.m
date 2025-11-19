@interface VKVenueGroup
- (StrokeBufferSizing)bufferSizingForStrokesOnSection:(SEL)a3 styles:(const void *)a4 edges:(const void *)a5;
- (VKVenueGroup)initWithStyleQuery:(void *)a3 tileZoom:(float)a4 layer:(int)a5 buildingId:(unint64_t)a6 contentScale:(float)a7;
- (VKVenueGroup)initWithStyleQuery:(void *)a3 tileZoom:(float)a4 layer:(int)a5 buildingId:(unint64_t)a6 contentScale:(float)a7 storage:(shared_ptr<md::MeshSetStorage>)a8;
- (__n128)addWallStrokesForSection:edges:attributes:styles:cullingMask:accessor:;
- (__n128)addWallsForSection:edges:attributes:styles:cullingMask:accessor:;
- (const)generateEdgeListForPolygonSection:(const void *)a3 key:(const void *)a4;
- (id).cxx_construct;
- (unint64_t)verticalStrokeCountForSection:(const void *)a3 styles:(const void *)a4 edges:(const void *)a5;
- (void)addStrokeForSection:(const void *)a3 paddedCount:(unsigned int)a4 key:(pair<const void *) attributes:(unsigned long>)a5 styles:(const void *)a6 cullingMask:(void *)a7 accessor:(unsigned int)a8;
- (void)addWallStrokesForSection:edges:attributes:styles:cullingMask:accessor:;
- (void)addWallsForSection:edges:attributes:styles:cullingMask:accessor:;
- (void)didFinishAddingData;
- (void)prepareToGenerateWallStrokesForSection:(const void *)a3 styles:(const void *)a4 edges:(const void *)a5;
- (void)prepareToGenerateWallsForSection:(const void *)a3 styles:(void *)a4 edges:(const void *)a5;
- (void)prepareToStrokeSection:(const void *)a3 key:(const void *)a4 styles:(void *)a5 paddedCount:(unsigned int)a6;
- (void)updateTextures:(unsigned __int8)a3 textureManager:(void *)a4;
- (void)willAddDataWithAccessor:(ResourceAccessor *)a3;
@end

@implementation VKVenueGroup

- (id).cxx_construct
{
  *(self + 3128) = 0;
  *(self + 3312) = 0;
  *(self + 3320) = 0;
  *(self + 3504) = 0;
  *(self + 3512) = 0;
  *(self + 3696) = 0;
  *(self + 3704) = 0;
  *(self + 3888) = 0;
  *(self + 488) = 0;
  *(self + 489) = 0;
  *(self + 487) = 0;
  *(self + 491) = 0;
  *(self + 492) = 0;
  *(self + 490) = 0;
  *(self + 494) = 0;
  *(self + 495) = 0;
  *(self + 493) = 0;
  *(self + 497) = 0;
  *(self + 498) = 0;
  *(self + 496) = 0;
  *(self + 3992) = 0u;
  *(self + 4008) = 0u;
  *(self + 1006) = 1065353216;
  *(self + 506) = 0;
  *(self + 507) = 0;
  return self;
}

- (void)updateTextures:(unsigned __int8)a3 textureManager:(void *)a4
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = VKVenueGroup;
  [VKPolygonGroup updateTextures:sel_updateTextures_textureManager_ textureManager:?];
  LOWORD(__p.__r_.__value_.__l.__data_) = 0;
  v7 = [(VKPolygonalItemGroup *)self styleQueries:&__p];
  v8 = **v7;
  v9 = (*v7)[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v17, v8, v9);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  if (v20 == 1)
  {
    if (v5 >= 0x17)
    {
      v10 = 23;
    }

    else
    {
      v10 = v5;
    }

    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<std::string>(&__p, v17[3], 0x152u, v10, 2);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      [(VKPolygonGroup *)self _textureForName:&__p textureManager:a4];
      v12 = v15;
    }

    else
    {
      v12 = 0;
    }

    cntrl = self->_wallTexture.__cntrl_;
    self->_wallTexture = v12;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v13 = self->_wallTexture.__cntrl_;
    self->_wallTexture.__ptr_ = 0;
    self->_wallTexture.__cntrl_ = 0;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }
  }

  if (v20 == 1)
  {
    (*(*v17 + 56))(v17);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }
}

- (void)addStrokeForSection:(const void *)a3 paddedCount:(unsigned int)a4 key:(pair<const void *) attributes:(unsigned long>)a5 styles:(const void *)a6 cullingMask:(void *)a7 accessor:(unsigned int)a8
{
  var1 = a5.var1;
  var0 = a5.var0;
  v18 = a5;
  v17.receiver = self;
  v17.super_class = VKVenueGroup;
  [VKPolygonGroup addStrokeForSection:sel_addStrokeForSection_paddedCount_key_attributes_styles_cullingMask_accessor_ paddedCount:a3 key:*&a4 attributes:a8 styles:a9 cullingMask:? accessor:?];
  v19 = &v18;
  v15 = std::__hash_table<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::__unordered_map_hasher<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::hash<std::pair<void const*,unsigned long>>,std::equal_to<std::pair<void const*,unsigned long>>,true>,std::__unordered_map_equal<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::equal_to<std::pair<void const*,unsigned long>>,std::hash<std::pair<void const*,unsigned long>>,true>,std::allocator<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>>>::__emplace_unique_key_args<std::pair<void const*,unsigned long>,std::piecewise_construct_t const&,std::tuple<std::pair<void const*,unsigned long> const&>,std::tuple<>>(&self->_venueWalls.__table_.__bucket_list_.__ptr_, var0, var1);
  v16 = v15 + 4;
  if (v15[5] != v15[4])
  {
    [(VKVenueGroup *)self addWallsForSection:a3 edges:v16 attributes:a6 styles:a7 cullingMask:a8 accessor:a9];
    [(VKVenueGroup *)self addWallStrokesForSection:a3 edges:v16 attributes:a6 styles:a7 cullingMask:a8 accessor:a9];
  }
}

- (void)addWallStrokesForSection:edges:attributes:styles:cullingMask:accessor:
{
  v6 = *(a1 + 8);
  v7 = *v6;
  if (*v6 != v6[1])
  {
    v8 = 0;
    v9 = 3;
    v52 = vdupq_n_s32(0x46FFFE00u);
    do
    {
      v60 = v9;
      v61 = v8;
      v10 = *(v7 + 24);
      v11 = *(a1 + 24);
      v12 = **(a1 + 16);
      v13 = (v10 + 1) % v12;
      v14 = v11[2];
      v15 = v11[11];
      v57 = *a2;
      v58 = v11[5];
      v59 = *a3;
      v16 = [**(a1 + 32) styleIndexForAttributes:*(a1 + 40) edgePair:{**(a1 + 48) + 12 * ((v10 + v12 - 1) % v12) + 4, *&v52}];
      v17 = [**(a1 + 32) styleIndexForAttributes:*(a1 + 40) edgePair:**(a1 + 48) + 12 * v10 + 4];
      v18 = v17;
      v19 = (**(a1 + 48) + 12 * v13);
      if (*v19 == 1)
      {
        v17 = [**(a1 + 32) styleIndexForAttributes:*(a1 + 40) edgePair:v19 + 4];
      }

      v20 = (v14 + 8 * ((v10 + 1) % v15));
      v21 = v60 + v57 - 3;
      v22 = (*v7 * 65535.0);
      v23 = (*(v7 + 4) * 65535.0);
      v24 = *(v7 + 12) * 65535.0;
      v25 = *(v7 + 16) * 65535.0;
      v26.i64[0] = *(v58 + 8 * v10);
      v27 = *(v14 + 8 * v10);
      v28 = *v20 * 32767.0;
      v29 = v20[1] * 32767.0;
      v30 = *(a4 + 40) + 40 * v21;
      *v30 = v22;
      *(v30 + 2) = v23;
      *(v30 + 4) = 0xFFFF;
      v31 = v24;
      *(v30 + 8) = v24;
      *(v30 + 10) = v25;
      *(v30 + 12) = 0xFFFF;
      *(v30 + 16) = v16;
      *(v30 + 17) = v18;
      *(v30 + 18) = v17;
      *(v30 + 19) = 0;
      v32 = *(a4 + 40);
      v33 = (v32 + 40 * v21);
      v26.i64[1] = v27;
      v34 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(v26, v52)));
      v33[3] = v34;
      v33[4].i16[0] = v28;
      v33[4].i16[1] = v29;
      v35 = 40 * (v60 + v57) - 80;
      v36 = v32 + v35;
      *v36 = v22;
      *(v36 + 2) = v23;
      *(v36 + 4) = 0x1FFFF;
      *(v36 + 8) = v31;
      *(v36 + 10) = v25;
      *(v36 + 12) = 0xFFFF;
      *(v36 + 16) = v16;
      *(v36 + 17) = v18;
      *(v36 + 18) = v17;
      *(v36 + 19) = 0;
      v37 = *(a4 + 40);
      v38 = (v37 + v35);
      v38[3] = v34;
      v38[4].i16[0] = v28;
      v38[4].i16[1] = v29;
      v39 = 40 * (v60 + v57) - 40;
      v40 = v37 + v39;
      *v40 = v22;
      *(v40 + 2) = v23;
      *(v40 + 4) = 16842751;
      *(v40 + 8) = v31;
      *(v40 + 10) = v25;
      *(v40 + 12) = 0xFFFF;
      *(v40 + 16) = v16;
      *(v40 + 17) = v18;
      *(v40 + 18) = v17;
      *(v40 + 19) = 0;
      v41 = *(a4 + 40);
      v42 = (v41 + v39);
      v42[3] = v34;
      v42[4].i16[0] = v28;
      v42[4].i16[1] = v29;
      v43 = v41 + 40 * (v60 + v57);
      *v43 = v22;
      *(v43 + 2) = v23;
      *(v43 + 4) = 16908287;
      *(v43 + 8) = v31;
      *(v43 + 10) = v25;
      *(v43 + 12) = 0xFFFF;
      *(v43 + 16) = v16;
      *(v43 + 17) = v18;
      *(v43 + 18) = v17;
      *(v43 + 19) = 0;
      v44 = *(a4 + 40) + 40 * (v60 + v57);
      *(v44 + 24) = v34;
      *(v44 + 32) = v28;
      *(v44 + 34) = v29;
      v45 = *(a5 + 40) + 2 * v59 + v61;
      *v45 = v21;
      v46 = vadd_s32(vdup_n_s32(v21), 0x200000001);
      v47 = vuzp1_s16(v46, v46);
      *(v45 + 2) = vzip1_s16(v47, vrev32_s16(v47));
      *(v45 + 10) = v60 + v57;
      v7 += 56;
      v8 = v61 + 12;
      v9 = v60 + 4;
    }

    while (v7 != *(*(a1 + 8) + 8));
  }

  v48 = *(a1 + 24);
  v49 = **(a1 + 32);
  v50 = **(a1 + 56);
  v51 = *(v49 + 3656);
  v62 = *a3;
  v63 = *(v48 + 104);
  _addRangeToList(v49 + 1776, v50, v51, &v62);
}

- (__n128)addWallStrokesForSection:edges:attributes:styles:cullingMask:accessor:
{
  *a2 = &unk_1F2A3C5E8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

- (void)addWallsForSection:edges:attributes:styles:cullingMask:accessor:
{
  v7 = a1;
  v8 = [**(a1 + 8) styleIndexForAttributes:*(a1 + 16) edgePair:**(v7 + 24) + 12 * *(*(v7 + 32) + 88) - 8];
  v9 = *(v7 + 32);
  if (v9[11])
  {
    v10 = v8;
    v11 = 0;
    v12 = 0;
    v13 = 88;
    v14 = 1;
    v15 = &OBJC_IVAR___VKLabelNavJunction__junctionSign;
    __asm
    {
      FMOV            V4.4S, #-1.0
      FMOV            V5.4S, #1.0
    }

    v22 = vdupq_n_s32(0x46FFFD00u);
    v23 = 0.0;
    v53 = _Q5;
    v54 = _Q4;
    v52 = v22;
    v51 = v7;
    do
    {
      v24 = v9[2];
      v25 = v9[5];
      v26 = **(v7 + 24);
      if (*(v26 + v11) == 1)
      {
        v27 = *(v7 + 16);
        v28 = **(v7 + 8);
        v29 = a4;
        v30 = a2;
        v31 = v15;
        v8 = [v28 styleIndexForAttributes:v27 edgePair:v26 + v11 + 4];
        v22 = v52;
        _Q5 = v53;
        _Q4 = v54;
        v15 = v31;
        a2 = v30;
        a4 = v29;
        v7 = v51;
        v9 = *(v51 + 32);
      }

      v32.i64[0] = *(v25 + v12);
      v33 = (v9[1] + v12);
      v32.i64[1] = *(v24 + v12);
      *v32.f32 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vminnmq_f32(vmaxnmq_f32(v32, _Q4), _Q5), v22)));
      v34 = fminf(fmaxf(v33[1], 0.0), 1.0) * 65535.0;
      LODWORD(v33) = (fminf(fmaxf(*v33, 0.0), 1.0) * 65535.0);
      v35 = ((v23 * 65535.0) / *(**(v7 + 8) + v15[162]));
      v36 = (*(a4 + 40) + 24 * *a2 + v13);
      *(v36 - 44) = v33;
      *(v36 - 43) = v34;
      *(v36 - 42) = v10;
      *(v36 - 41) = v8;
      *(v36 - 40) = 0;
      *(v36 - 39) = v35;
      *(v36 - 9) = v32.i64[0];
      *(v36 - 32) = v33;
      *(v36 - 31) = v34;
      *(v36 - 30) = v10;
      *(v36 - 29) = v8;
      *(v36 - 28) = -256;
      *(v36 - 27) = v35;
      *(v36 - 6) = v32.i64[0];
      *(v36 - 20) = v33;
      *(v36 - 19) = v34;
      *(v36 - 18) = v8;
      *(v36 - 17) = v10;
      *(v36 - 16) = 255;
      *(v36 - 15) = v35;
      *(v36 - 3) = v32.i64[0];
      *(v36 - 8) = v33;
      *(v36 - 7) = v34;
      *(v36 - 6) = v8;
      *(v36 - 5) = v10;
      *(v36 - 4) = -1;
      *(v36 - 3) = v35;
      *v36 = v32.i64[0];
      v9 = *(v7 + 32);
      v37 = v9[11];
      v38 = vsub_f32(*(v9[1] + 8 * (v14 % v37)), *(v9[1] + v12));
      v23 = sqrtf(vaddv_f32(vmul_f32(v38, v38))) + v23;
      v13 += 96;
      v12 += 8;
      v11 += 12;
      v10 = v8;
    }

    while (v14++ < v37);
  }

  v39 = *(v7 + 40);
  v40 = *v39;
  v41 = v39[1];
  if (v40 != v41)
  {
    v42 = *a2;
    v43 = (*(a5 + 40) + 2 * *a3 + 6);
    do
    {
      v44 = v42 + 4 * *(v40 + 24);
      v45 = *(v40 + 32);
      *(v43 - 3) = v44 + 2;
      *(v43 - 2) = v42 + 4 * v45;
      v44 += 3;
      *(v43 - 1) = v44;
      *v43 = v44;
      v43[1] = v42 + 4 * v45;
      v43[2] = v42 + 4 * v45 + 1;
      v40 += 56;
      v43 += 6;
    }

    while (v40 != v41);
  }

  v46 = **(v7 + 8);
  v47 = **(v7 + 48);
  v48 = *(v46 + 3272);
  v55 = *a3;
  v56 = v9[13];
  _addRangeToList(v46 + 1008, v47, v48, &v55);
}

- (__n128)addWallsForSection:edges:attributes:styles:cullingMask:accessor:
{
  *a2 = &unk_1F2A3C558;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

- (void)didFinishAddingData
{
  v23.receiver = self;
  v23.super_class = VKVenueGroup;
  [(VKPolygonGroup *)&v23 didFinishAddingData];
  p_venueWallMeshInfo = &self->_venueWallMeshInfo;
  ptr = self->_venueWallMeshInfo.var0.__val_._storageClient.__ptr_;
  if (ptr && *ptr == self->_venueWallMeshInfo.var0.__val_._storage)
  {
    *(ptr + 80) = 1;
  }

  v5 = self->_venueWallMeshInfo.var0.__val_._internalStorage.__ptr_;
  if (v5)
  {
    md::MeshSetStorage::finalize(v5);
  }

  ggl::BufferMemory::BufferMemory(__p);
  ggl::BufferMemory::operator=(&self->_venueWallMeshInfo.var0.__val_._vertexDataWrite, __p);
  ggl::BufferMemory::~BufferMemory(__p);
  ggl::BufferMemory::BufferMemory(__p);
  ggl::BufferMemory::operator=(&self->_venueWallMeshInfo.var0.__val_._indexDataWrite, __p);
  ggl::BufferMemory::~BufferMemory(__p);
  std::vector<std::shared_ptr<ggl::Texture2D>>::__vdeallocate(&self->_venueWallMeshes);
  *&self->_venueWallMeshes.__begin_ = *&self->_venueWallMeshInfo.var0.__val_._meshes.__begin_;
  self->_venueWallMeshes.__cap_ = self->_venueWallMeshInfo.var0.__val_._meshes.__cap_;
  self->_venueWallMeshInfo.var0.__val_._meshes.__begin_ = 0;
  self->_venueWallMeshInfo.var0.__val_._meshes.__end_ = 0;
  self->_venueWallMeshInfo.var0.__val_._meshes.__cap_ = 0;
  p_venueWallEndCapMeshInfo = &self->_venueWallEndCapMeshInfo;
  v7 = self->_venueWallEndCapMeshInfo.var0.__val_._storageClient.__ptr_;
  if (v7 && *v7 == self->_venueWallEndCapMeshInfo.var0.__val_._storage)
  {
    *(v7 + 80) = 1;
  }

  v8 = self->_venueWallEndCapMeshInfo.var0.__val_._internalStorage.__ptr_;
  if (v8)
  {
    md::MeshSetStorage::finalize(v8);
  }

  ggl::BufferMemory::BufferMemory(__p);
  ggl::BufferMemory::operator=(&self->_venueWallEndCapMeshInfo.var0.__val_._vertexDataWrite, __p);
  ggl::BufferMemory::~BufferMemory(__p);
  ggl::BufferMemory::BufferMemory(__p);
  ggl::BufferMemory::operator=(&self->_venueWallEndCapMeshInfo.var0.__val_._indexDataWrite, __p);
  ggl::BufferMemory::~BufferMemory(__p);
  std::vector<std::shared_ptr<ggl::Texture2D>>::__vdeallocate(&self->_venueWallEndMeshes);
  *&self->_venueWallEndMeshes.__begin_ = *&self->_venueWallEndCapMeshInfo.var0.__val_._meshes.__begin_;
  self->_venueWallEndMeshes.__cap_ = self->_venueWallEndCapMeshInfo.var0.__val_._meshes.__cap_;
  self->_venueWallEndCapMeshInfo.var0.__val_._meshes.__begin_ = 0;
  self->_venueWallEndCapMeshInfo.var0.__val_._meshes.__end_ = 0;
  self->_venueWallEndCapMeshInfo.var0.__val_._meshes.__cap_ = 0;
  p_venueWallHorizontalStrokeMeshInfo = &self->_venueWallHorizontalStrokeMeshInfo;
  v10 = self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._storageClient.__ptr_;
  if (v10 && *v10 == self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._storage)
  {
    *(v10 + 80) = 1;
  }

  v11 = self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._internalStorage.__ptr_;
  if (v11)
  {
    md::MeshSetStorage::finalize(v11);
  }

  ggl::BufferMemory::BufferMemory(__p);
  ggl::BufferMemory::operator=(&self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._vertexDataWrite, __p);
  ggl::BufferMemory::~BufferMemory(__p);
  ggl::BufferMemory::BufferMemory(__p);
  ggl::BufferMemory::operator=(&self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._indexDataWrite, __p);
  ggl::BufferMemory::~BufferMemory(__p);
  std::vector<std::shared_ptr<ggl::Texture2D>>::__vdeallocate(&self->_venueWallHorizontalStrokeMeshes);
  *&self->_venueWallHorizontalStrokeMeshes.__begin_ = *&self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._meshes.__begin_;
  self->_venueWallHorizontalStrokeMeshes.__cap_ = self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._meshes.__cap_;
  self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._meshes.__begin_ = 0;
  self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._meshes.__end_ = 0;
  self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._meshes.__cap_ = 0;
  p_venueWallVerticalStrokeMeshInfo = &self->_venueWallVerticalStrokeMeshInfo;
  v13 = self->_venueWallVerticalStrokeMeshInfo.var0.__val_._storageClient.__ptr_;
  if (v13 && *v13 == self->_venueWallVerticalStrokeMeshInfo.var0.__val_._storage)
  {
    *(v13 + 80) = 1;
  }

  v14 = self->_venueWallVerticalStrokeMeshInfo.var0.__val_._internalStorage.__ptr_;
  if (v14)
  {
    md::MeshSetStorage::finalize(v14);
  }

  ggl::BufferMemory::BufferMemory(__p);
  ggl::BufferMemory::operator=(&self->_venueWallVerticalStrokeMeshInfo.var0.__val_._vertexDataWrite, __p);
  ggl::BufferMemory::~BufferMemory(__p);
  ggl::BufferMemory::BufferMemory(__p);
  ggl::BufferMemory::operator=(&self->_venueWallVerticalStrokeMeshInfo.var0.__val_._indexDataWrite, __p);
  ggl::BufferMemory::~BufferMemory(__p);
  std::vector<std::shared_ptr<ggl::Texture2D>>::__vdeallocate(&self->_venueWallVerticalStrokeMeshes);
  *&self->_venueWallVerticalStrokeMeshes.__begin_ = *&self->_venueWallVerticalStrokeMeshInfo.var0.__val_._meshes.__begin_;
  self->_venueWallVerticalStrokeMeshes.__cap_ = self->_venueWallVerticalStrokeMeshInfo.var0.__val_._meshes.__cap_;
  self->_venueWallVerticalStrokeMeshInfo.var0.__val_._meshes.__begin_ = 0;
  self->_venueWallVerticalStrokeMeshInfo.var0.__val_._meshes.__end_ = 0;
  self->_venueWallVerticalStrokeMeshInfo.var0.__val_._meshes.__cap_ = 0;
  if (self->_venueWallMeshInfo.__engaged_)
  {
    cntrl = self->_venueWallMeshInfo.var0.__val_._storageClient.__cntrl_;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
    }

    std::unique_ptr<md::MeshSetStorage>::reset[abi:nn200100](&self->_venueWallMeshInfo.var0.__val_._internalStorage, 0);
    ggl::BufferMemory::~BufferMemory(&self->_venueWallMeshInfo.var0.__val_._indexDataWrite);
    ggl::BufferMemory::~BufferMemory(&self->_venueWallMeshInfo.var0.__val_._vertexDataWrite);
    __p[0] = &self->_venueWallMeshInfo.var0.__val_._meshes;
    std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](__p);
    begin = p_venueWallMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_;
    if (p_venueWallMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_)
    {
      self->_venueWallMeshInfo.var0.__val_._vertexAndIndexCounts.__end_ = begin;
      operator delete(begin);
    }

    self->_venueWallMeshInfo.__engaged_ = 0;
  }

  if (self->_venueWallEndCapMeshInfo.__engaged_)
  {
    v17 = self->_venueWallEndCapMeshInfo.var0.__val_._storageClient.__cntrl_;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v17);
    }

    std::unique_ptr<md::MeshSetStorage>::reset[abi:nn200100](&self->_venueWallEndCapMeshInfo.var0.__val_._internalStorage, 0);
    ggl::BufferMemory::~BufferMemory(&self->_venueWallEndCapMeshInfo.var0.__val_._indexDataWrite);
    ggl::BufferMemory::~BufferMemory(&self->_venueWallEndCapMeshInfo.var0.__val_._vertexDataWrite);
    __p[0] = &self->_venueWallEndCapMeshInfo.var0.__val_._meshes;
    std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](__p);
    v18 = p_venueWallEndCapMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_;
    if (p_venueWallEndCapMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_)
    {
      self->_venueWallEndCapMeshInfo.var0.__val_._vertexAndIndexCounts.__end_ = v18;
      operator delete(v18);
    }

    self->_venueWallEndCapMeshInfo.__engaged_ = 0;
  }

  if (self->_venueWallHorizontalStrokeMeshInfo.__engaged_)
  {
    v19 = self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._storageClient.__cntrl_;
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }

    std::unique_ptr<md::MeshSetStorage>::reset[abi:nn200100](&self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._internalStorage, 0);
    ggl::BufferMemory::~BufferMemory(&self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._indexDataWrite);
    ggl::BufferMemory::~BufferMemory(&self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._vertexDataWrite);
    __p[0] = &self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._meshes;
    std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](__p);
    v20 = p_venueWallHorizontalStrokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_;
    if (p_venueWallHorizontalStrokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_)
    {
      self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._vertexAndIndexCounts.__end_ = v20;
      operator delete(v20);
    }

    self->_venueWallHorizontalStrokeMeshInfo.__engaged_ = 0;
  }

  if (self->_venueWallVerticalStrokeMeshInfo.__engaged_)
  {
    v21 = self->_venueWallVerticalStrokeMeshInfo.var0.__val_._storageClient.__cntrl_;
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v21);
    }

    std::unique_ptr<md::MeshSetStorage>::reset[abi:nn200100](&self->_venueWallVerticalStrokeMeshInfo.var0.__val_._internalStorage, 0);
    ggl::BufferMemory::~BufferMemory(&self->_venueWallVerticalStrokeMeshInfo.var0.__val_._indexDataWrite);
    ggl::BufferMemory::~BufferMemory(&self->_venueWallVerticalStrokeMeshInfo.var0.__val_._vertexDataWrite);
    __p[0] = &self->_venueWallVerticalStrokeMeshInfo.var0.__val_._meshes;
    std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](__p);
    v22 = p_venueWallVerticalStrokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_;
    if (p_venueWallVerticalStrokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_)
    {
      self->_venueWallVerticalStrokeMeshInfo.var0.__val_._vertexAndIndexCounts.__end_ = v22;
      operator delete(v22);
    }

    self->_venueWallVerticalStrokeMeshInfo.__engaged_ = 0;
  }

  *__p = 0u;
  *v25 = 0u;
  v26 = 1065353216;
  std::__hash_table<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::__unordered_map_hasher<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::hash<std::pair<void const*,unsigned long>>,std::equal_to<std::pair<void const*,unsigned long>>,true>,std::__unordered_map_equal<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::equal_to<std::pair<void const*,unsigned long>>,std::hash<std::pair<void const*,unsigned long>>,true>,std::allocator<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>>>::__move_assign(&self->_venueWalls, __p);
  std::__hash_table<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::__unordered_map_hasher<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::hash<std::pair<void const*,unsigned long>>,std::equal_to<std::pair<void const*,unsigned long>>,true>,std::__unordered_map_equal<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::equal_to<std::pair<void const*,unsigned long>>,std::hash<std::pair<void const*,unsigned long>>,true>,std::allocator<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>>>::__deallocate_node(v25[0]);
  if (__p[0])
  {
    operator delete(__p[0]);
  }
}

- (void)willAddDataWithAccessor:(ResourceAccessor *)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = VKVenueGroup;
  [(VKPolygonGroup *)&v25 willAddDataWithAccessor:?];
  p_venueWallMeshInfo = &self->_venueWallMeshInfo;
  ptr = self->_venueWallMeshInfo.var0.__val_._internalStorage.__ptr_;
  if (ptr)
  {
    md::MeshSetStorage::prepareStorage(ptr, a3);
  }

  begin = p_venueWallMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_;
  end = self->_venueWallMeshInfo.var0.__val_._vertexAndIndexCounts.__end_;
  if (p_venueWallMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_ != end)
  {
    do
    {
      if (*begin && *(begin + 1))
      {
        md::MeshSetStorage::buildSubVertexData(&v27, self->_venueWallMeshInfo.var0.__val_._storage, self->_venueWallMeshInfo.var0.__val_._storageClient.__ptr_, "Venue Wall Vertex Data", *begin);
        md::MeshSetStorage::buildSubIndexData(&v26, self->_venueWallMeshInfo.var0.__val_._storage, self->_venueWallMeshInfo.var0.__val_._storageClient.__ptr_, "Venue Wall Index Data", *(begin + 1));
        if (*(&v27 + 1))
        {
          atomic_fetch_add_explicit((*(&v27 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        operator new();
      }

      begin += 4;
    }

    while (begin != end);
  }

  v8 = self->_venueWallMeshInfo.var0.__val_._meshes.__begin_;
  if (v8 != self->_venueWallMeshInfo.var0.__val_._meshes.__end_)
  {
    ggl::DataAccess<ggl::TrafficBase::DefaultVbo>::DataAccess(v28, **(*v8 + 64), 0, *p_venueWallMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_, a3);
    ggl::BufferMemory::operator=(&self->_venueWallMeshInfo.var0.__val_._vertexDataWrite, v28);
    ggl::BufferMemory::~BufferMemory(v28);
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v28, *(*self->_venueWallMeshInfo.var0.__val_._meshes.__begin_ + 96), 0, *(self->_venueWallMeshInfo.var0.__val_._vertexAndIndexCounts.__begin_ + 1), 1, 1, a3);
    ggl::BufferMemory::operator=(&self->_venueWallMeshInfo.var0.__val_._indexDataWrite, v28);
    ggl::BufferMemory::~BufferMemory(v28);
  }

  p_venueWallEndCapMeshInfo = &self->_venueWallEndCapMeshInfo;
  v10 = self->_venueWallEndCapMeshInfo.var0.__val_._internalStorage.__ptr_;
  if (v10)
  {
    md::MeshSetStorage::prepareStorage(v10, a3);
  }

  v12 = p_venueWallEndCapMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_;
  v11 = self->_venueWallEndCapMeshInfo.var0.__val_._vertexAndIndexCounts.__end_;
  if (p_venueWallEndCapMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_ != v11)
  {
    do
    {
      if (*v12 && *(v12 + 1))
      {
        md::MeshSetStorage::buildSubVertexData(&v27, self->_venueWallEndCapMeshInfo.var0.__val_._storage, self->_venueWallEndCapMeshInfo.var0.__val_._storageClient.__ptr_, "Venue Wall End Cap Vertex Data", *v12);
        md::MeshSetStorage::buildSubIndexData(&v26, self->_venueWallEndCapMeshInfo.var0.__val_._storage, self->_venueWallEndCapMeshInfo.var0.__val_._storageClient.__ptr_, "Venue Wall End Cap Index Data", *(v12 + 1));
        if (*(&v27 + 1))
        {
          atomic_fetch_add_explicit((*(&v27 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        operator new();
      }

      v12 += 4;
    }

    while (v12 != v11);
  }

  v13 = self->_venueWallEndCapMeshInfo.var0.__val_._meshes.__begin_;
  if (v13 != self->_venueWallEndCapMeshInfo.var0.__val_._meshes.__end_)
  {
    ggl::DataAccess<ggl::TrafficBase::DefaultVbo>::DataAccess(v28, **(*v13 + 64), 0, *p_venueWallEndCapMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_, a3);
    ggl::BufferMemory::operator=(&self->_venueWallEndCapMeshInfo.var0.__val_._vertexDataWrite, v28);
    ggl::BufferMemory::~BufferMemory(v28);
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v28, *(*self->_venueWallEndCapMeshInfo.var0.__val_._meshes.__begin_ + 96), 0, *(self->_venueWallEndCapMeshInfo.var0.__val_._vertexAndIndexCounts.__begin_ + 1), 1, 1, a3);
    ggl::BufferMemory::operator=(&self->_venueWallEndCapMeshInfo.var0.__val_._indexDataWrite, v28);
    ggl::BufferMemory::~BufferMemory(v28);
  }

  p_venueWallHorizontalStrokeMeshInfo = &self->_venueWallHorizontalStrokeMeshInfo;
  v15 = self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._internalStorage.__ptr_;
  if (v15)
  {
    md::MeshSetStorage::prepareStorage(v15, a3);
  }

  v17 = p_venueWallHorizontalStrokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_;
  v16 = self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._vertexAndIndexCounts.__end_;
  if (p_venueWallHorizontalStrokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_ != v16)
  {
    do
    {
      if (*v17 && *(v17 + 1))
      {
        md::MeshSetStorage::buildSubVertexData(&v27, self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._storage, self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._storageClient.__ptr_, "Venue Wall Horizontal Stroke Vertex Data", *v17);
        md::MeshSetStorage::buildSubIndexData(&v26, self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._storage, self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._storageClient.__ptr_, "Venue Wall Horizontal Stroke Index Data", *(v17 + 1));
        if (*(&v27 + 1))
        {
          atomic_fetch_add_explicit((*(&v27 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        operator new();
      }

      v17 += 4;
    }

    while (v17 != v16);
  }

  v18 = self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._meshes.__begin_;
  if (v18 != self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._meshes.__end_)
  {
    ggl::DataAccess<ggl::TrafficBase::DefaultVbo>::DataAccess(v28, **(*v18 + 64), 0, *p_venueWallHorizontalStrokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_, a3);
    ggl::BufferMemory::operator=(&self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._vertexDataWrite, v28);
    ggl::BufferMemory::~BufferMemory(v28);
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v28, *(*self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._meshes.__begin_ + 96), 0, *(self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._vertexAndIndexCounts.__begin_ + 1), 1, 1, a3);
    ggl::BufferMemory::operator=(&self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._indexDataWrite, v28);
    ggl::BufferMemory::~BufferMemory(v28);
  }

  p_venueWallVerticalStrokeMeshInfo = &self->_venueWallVerticalStrokeMeshInfo;
  v20 = self->_venueWallVerticalStrokeMeshInfo.var0.__val_._internalStorage.__ptr_;
  if (v20)
  {
    md::MeshSetStorage::prepareStorage(v20, a3);
  }

  v22 = p_venueWallVerticalStrokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_;
  v21 = self->_venueWallVerticalStrokeMeshInfo.var0.__val_._vertexAndIndexCounts.__end_;
  if (p_venueWallVerticalStrokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_ != v21)
  {
    do
    {
      if (*v22 && *(v22 + 1))
      {
        md::MeshSetStorage::buildSubVertexData(&v27, self->_venueWallVerticalStrokeMeshInfo.var0.__val_._storage, self->_venueWallVerticalStrokeMeshInfo.var0.__val_._storageClient.__ptr_, "Venue Wall Vertical Stroke Vertex Data", *v22);
        md::MeshSetStorage::buildSubIndexData(&v26, self->_venueWallVerticalStrokeMeshInfo.var0.__val_._storage, self->_venueWallVerticalStrokeMeshInfo.var0.__val_._storageClient.__ptr_, "Venue Wall Vertical Stroke Index Data", *(v22 + 1));
        if (*(&v27 + 1))
        {
          atomic_fetch_add_explicit((*(&v27 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        operator new();
      }

      v22 += 4;
    }

    while (v22 != v21);
  }

  v23 = self->_venueWallVerticalStrokeMeshInfo.var0.__val_._meshes.__begin_;
  if (v23 != self->_venueWallVerticalStrokeMeshInfo.var0.__val_._meshes.__end_)
  {
    ggl::DataAccess<ggl::TrafficBase::DefaultVbo>::DataAccess(v28, **(*v23 + 64), 0, *p_venueWallVerticalStrokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_, a3);
    ggl::BufferMemory::operator=(&self->_venueWallVerticalStrokeMeshInfo.var0.__val_._vertexDataWrite, v28);
    ggl::BufferMemory::~BufferMemory(v28);
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v28, *(*self->_venueWallVerticalStrokeMeshInfo.var0.__val_._meshes.__begin_ + 96), 0, *(self->_venueWallVerticalStrokeMeshInfo.var0.__val_._vertexAndIndexCounts.__begin_ + 1), 1, 1, a3);
    ggl::BufferMemory::operator=(&self->_venueWallVerticalStrokeMeshInfo.var0.__val_._indexDataWrite, v28);
    ggl::BufferMemory::~BufferMemory(v28);
  }
}

- (void)prepareToStrokeSection:(const void *)a3 key:(const void *)a4 styles:(void *)a5 paddedCount:(unsigned int)a6
{
  v11.receiver = self;
  v11.super_class = VKVenueGroup;
  [(VKPolygonGroup *)&v11 prepareToStrokeSection:a3 key:a4 styles:a5 paddedCount:*&a6];
  v10 = [(VKVenueGroup *)self generateEdgeListForPolygonSection:a3 key:a4];
  [(VKVenueGroup *)self prepareToGenerateWallsForSection:a3 styles:a5 edges:v10];
  [(VKVenueGroup *)self prepareToGenerateWallStrokesForSection:a3 styles:a5 edges:v10];
}

- (void)prepareToGenerateWallStrokesForSection:(const void *)a3 styles:(const void *)a4 edges:(const void *)a5
{
  [(VKVenueGroup *)self bufferSizingForStrokesOnSection:a3 styles:a4 edges:a5];
  end = self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._vertexAndIndexCounts.__end_;
  *(end - 4) = *(end - 4);
  *(end - 1) = *(end - 1);
  storage = self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._storage;
  ptr = self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._storageClient.__ptr_;
  cntrl = self->_venueWallHorizontalStrokeMeshInfo.var0.__val_._storageClient.__cntrl_;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  if (ptr && *ptr == storage && (*(storage + 40) & 1) == 0)
  {
    v10 = *(storage + 1);
    *storage = *storage;
    *(storage + 1) = v10;
    v11 = *(ptr + 3);
    *(ptr + 2) = *(ptr + 2);
    *(ptr + 3) = v11;
  }

  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
  }
}

- (void)prepareToGenerateWallsForSection:(const void *)a3 styles:(void *)a4 edges:(const void *)a5
{
  v8 = *(a3 + 11);
  v9 = numberOfStyleChanges(*(a3 + 8), v8, *a4);
  v10 = *(a5 + 1) - *a5;
  if (v10)
  {
    v11 = 4 * v8;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a3 + 34);
  if (v12 == 0.0 && v8 >= 2)
  {
    v14 = 0;
    v15 = *(a3 + 1);
    do
    {
      if (v8 - 1 == v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v14 + 1;
      }

      v17 = vsub_f32(*(v15 + 8 * v16), *(v15 + 8 * v14));
      v12 = sqrtf(vaddv_f32(vmul_f32(v17, v17))) + v12;
      *(a3 + 34) = v12;
      ++v14;
    }

    while (v8 != v14);
  }

  self->_maximumSectionLength = fmaxf(self->_maximumSectionLength, v12);
  if (v11 < 0x10000)
  {
    v19 = 0x924924924924924ALL * (v10 >> 3);
    p_venueWallMeshInfo = &self->_venueWallMeshInfo;
    end = self->_venueWallMeshInfo.var0.__val_._vertexAndIndexCounts.__end_;
    v22 = *(end - 4);
    if (v11 <= ~v22)
    {
      *(end - 4) = v22 + v11;
      *(end - 1) += v19;
    }

    else
    {
      cap = self->_venueWallMeshInfo.var0.__val_._vertexAndIndexCounts.__cap_;
      if (end >= cap)
      {
        begin = p_venueWallMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_;
        v26 = end - p_venueWallMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_;
        v27 = v26 >> 3;
        v28 = (v26 >> 3) + 1;
        if (v28 >> 61)
        {
          goto LABEL_75;
        }

        v29 = cap - begin;
        if (v29 >> 2 > v28)
        {
          v28 = v29 >> 2;
        }

        if (v29 >= 0x7FFFFFFFFFFFFFF8)
        {
          v30 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v28;
        }

        if (v30)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned short,unsigned int>>>(v30);
        }

        v31 = 8 * v27;
        *v31 = v11;
        *(v31 + 4) = v19;
        v24 = (8 * v27 + 8);
        memcpy(0, begin, v26);
        v32 = p_venueWallMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_;
        p_venueWallMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_ = 0;
        self->_venueWallMeshInfo.var0.__val_._vertexAndIndexCounts.__end_ = v24;
        self->_venueWallMeshInfo.var0.__val_._vertexAndIndexCounts.__cap_ = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *end = v11;
        *(end + 1) = v19;
        v24 = end + 4;
      }

      self->_venueWallMeshInfo.var0.__val_._vertexAndIndexCounts.__end_ = v24;
    }

    storage = self->_venueWallMeshInfo.var0.__val_._storage;
    ptr = self->_venueWallMeshInfo.var0.__val_._storageClient.__ptr_;
    cntrl = self->_venueWallMeshInfo.var0.__val_._storageClient.__cntrl_;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    if (ptr && *ptr == storage && (*(storage + 40) & 1) == 0)
    {
      v36 = *(storage + 1) + v19;
      *storage += 24 * v11;
      *(storage + 1) = v36;
      v37 = *(ptr + 3) + v19;
      *(ptr + 2) += 24 * v11;
      *(ptr + 3) = v37;
    }

    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
    }
  }

  else
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v18 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v60 = 0;
      _os_log_impl(&dword_1B2754000, v18, OS_LOG_TYPE_ERROR, "MeshSet: Cannot prepare space polygons points: polygon is too large", v60, 2u);
    }
  }

  v38 = 3 * v9;
  v39 = 6 * v9;
  if (!(6 * v9))
  {
    return;
  }

  v40 = 4 * v9;
  if (!(4 * v9))
  {
    return;
  }

  if (v40 >= 0x10000)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v41 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B2754000, v41, OS_LOG_TYPE_ERROR, "MeshSet: Cannot prepare space polygons points: polygon is too large", buf, 2u);
    }

    return;
  }

  p_venueWallEndCapMeshInfo = &self->_venueWallEndCapMeshInfo;
  v43 = self->_venueWallEndCapMeshInfo.var0.__val_._vertexAndIndexCounts.__end_;
  v44 = *(v43 - 4);
  if (v40 > ~v44)
  {
    v45 = self->_venueWallEndCapMeshInfo.var0.__val_._vertexAndIndexCounts.__cap_;
    if (v43 < v45)
    {
      *v43 = v40;
      *(v43 + 1) = v39;
      v46 = (v43 + 4);
LABEL_65:
      p_venueWallEndCapMeshInfo->var0.__val_._vertexAndIndexCounts.__end_ = v46;
      goto LABEL_66;
    }

    v47 = p_venueWallEndCapMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_;
    v48 = v43 - p_venueWallEndCapMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_;
    v49 = v48 >> 3;
    v50 = (v48 >> 3) + 1;
    if (!(v50 >> 61))
    {
      v51 = v45 - v47;
      if (v51 >> 2 > v50)
      {
        v50 = v51 >> 2;
      }

      if (v51 >= 0x7FFFFFFFFFFFFFF8)
      {
        v52 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v52 = v50;
      }

      if (v52)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned short,unsigned int>>>(v52);
      }

      v53 = 8 * v49;
      *v53 = v40;
      *(v53 + 4) = v39;
      v46 = 8 * v49 + 8;
      memcpy(0, v47, v48);
      v54 = p_venueWallEndCapMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_;
      p_venueWallEndCapMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_ = 0;
      p_venueWallEndCapMeshInfo->var0.__val_._vertexAndIndexCounts.__end_ = v46;
      p_venueWallEndCapMeshInfo->var0.__val_._vertexAndIndexCounts.__cap_ = 0;
      if (v54)
      {
        operator delete(v54);
      }

      goto LABEL_65;
    }

LABEL_75:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(v43 - 4) = v44 + v40;
  *(v43 - 1) += v39;
LABEL_66:
  v55 = p_venueWallEndCapMeshInfo->var0.__val_._storage;
  v57 = p_venueWallEndCapMeshInfo->var0.__val_._storageClient.__ptr_;
  v56 = p_venueWallEndCapMeshInfo->var0.__val_._storageClient.__cntrl_;
  if (v56)
  {
    atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v57 && *v57 == v55 && (*(v55 + 40) & 1) == 0)
  {
    v58 = *(v55 + 1) + v39;
    *v55 += 32 * v38;
    *(v55 + 1) = v58;
    v59 = *(v57 + 3) + v39;
    *(v57 + 2) += 32 * v38;
    *(v57 + 3) = v59;
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v56);
  }
}

- (StrokeBufferSizing)bufferSizingForStrokesOnSection:(SEL)a3 styles:(const void *)a4 edges:(const void *)a5
{
  result = [(VKVenueGroup *)self verticalStrokeCountForSection:a4 styles:a5 edges:?];
  v9 = (*(a6 + 1) - *a6) >> 3;
  retstr->var0 = 0xB6DB6DB6DB6DB6DCLL * v9;
  retstr->var1 = 0x924924924924924ALL * v9;
  retstr->var2 = 4 * result;
  retstr->var3 = 6 * result;
  return result;
}

- (unint64_t)verticalStrokeCountForSection:(const void *)a3 styles:(const void *)a4 edges:(const void *)a5
{
  v5 = *a5;
  v6 = *(a5 + 1);
  if (*a5 == v6)
  {
    return 0;
  }

  result = 0;
  do
  {
    v8 = *(v5 + 24);
    if (fabsf(vaddv_f32(vmul_f32(*(*(a3 + 2) + 8 * v8), *(*(a3 + 5) + 8 * v8)))) <= 0.93969 || *(*a4 + 12 * v8) == 1)
    {
      v9 = (v8 + *(a3 + 11) - 1) % *(a3 + 11);
      v10 = (~*(*(a3 + 8) + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 & 0x3F)) & 1;
    }

    else
    {
      v10 = 0;
    }

    result += v10;
    v5 += 56;
  }

  while (v5 != v6);
  return result;
}

- (const)generateEdgeListForPolygonSection:(const void *)a3 key:(const void *)a4
{
  v5 = std::__hash_table<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::__unordered_map_hasher<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::hash<std::pair<void const*,unsigned long>>,std::equal_to<std::pair<void const*,unsigned long>>,true>,std::__unordered_map_equal<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::equal_to<std::pair<void const*,unsigned long>>,std::hash<std::pair<void const*,unsigned long>>,true>,std::allocator<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>>>::__emplace_unique_key_args<std::pair<void const*,unsigned long>,std::piecewise_construct_t const&,std::tuple<std::pair<void const*,unsigned long> const&>,std::tuple<>>(&self->_venueWalls.__table_.__bucket_list_.__ptr_, *a4, *(a4 + 1));
  std::vector<md::Edge>::reserve(v5 + 4, *(a3 + 11));
  v6 = *(a3 + 11);
  if (v6)
  {
    v7 = 0;
    do
    {
      if ((*(*(a3 + 8) + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7))
      {
        v8 = v7 + 1;
      }

      else
      {
        v9 = *(a3 + 1);
        v10 = *(v9 + 8 * v7);
        v8 = v7 + 1;
        v11 = (v7 + 1) % v6;
        v12 = *(v9 + 8 * v11);
        v13 = v5[5];
        v14 = v5[6];
        if (v13 >= v14)
        {
          v16 = v5[4];
          v17 = 0x6DB6DB6DB6DB6DB7 * ((v13 - v16) >> 3);
          v18 = v17 + 1;
          if ((v17 + 1) > 0x492492492492492)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v19 = 0x6DB6DB6DB6DB6DB7 * ((v14 - v16) >> 3);
          if (2 * v19 > v18)
          {
            v18 = 2 * v19;
          }

          if (v19 >= 0x249249249249249)
          {
            v20 = 0x492492492492492;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>(v20);
          }

          v21 = 56 * v17;
          *v21 = v10;
          *(v21 + 8) = 0;
          *(v21 + 12) = v12;
          *(v21 + 20) = 0;
          *(v21 + 24) = v7;
          *(v21 + 32) = v11;
          *(v21 + 40) = v7;
          *(v21 + 48) = v11;
          v22 = v5[4];
          v23 = v5[5];
          v24 = 56 * v17 + v22 - v23;
          if (v22 != v23)
          {
            v25 = (v21 + v22 - v23);
            do
            {
              v26 = *v22;
              v27 = v22[1];
              v28 = v22[2];
              *(v25 + 6) = *(v22 + 6);
              *(v25 + 1) = v27;
              *(v25 + 2) = v28;
              *v25 = v26;
              v25 += 56;
              v22 = (v22 + 56);
            }

            while (v22 != v23);
            v22 = v5[4];
          }

          v15 = v21 + 56;
          v5[4] = v24;
          v5[5] = v21 + 56;
          v5[6] = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v13 = v10;
          *(v13 + 8) = 0;
          *(v13 + 12) = v12;
          *(v13 + 20) = 0;
          *(v13 + 24) = v7;
          *(v13 + 32) = v11;
          v15 = v13 + 56;
          *(v13 + 40) = v7;
          *(v13 + 48) = v11;
        }

        v5[5] = v15;
        v6 = *(a3 + 11);
      }

      v7 = v8;
    }

    while (v8 < v6);
  }

  return v5 + 4;
}

- (VKVenueGroup)initWithStyleQuery:(void *)a3 tileZoom:(float)a4 layer:(int)a5 buildingId:(unint64_t)a6 contentScale:(float)a7
{
  v9 = 0;
  v10 = 0;
  v7 = [VKPolygonGroup initWithStyleQuery:"initWithStyleQuery:tileZoom:fixedAroundCentroid:contentScale:storage:" tileZoom:a3 fixedAroundCentroid:0 contentScale:&v9 storage:?];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  return v7;
}

- (VKVenueGroup)initWithStyleQuery:(void *)a3 tileZoom:(float)a4 layer:(int)a5 buildingId:(unint64_t)a6 contentScale:(float)a7 storage:(shared_ptr<md::MeshSetStorage>)a8
{
  ptr = a8.__ptr_;
  v23 = *MEMORY[0x1E69E9840];
  v11 = *(a8.__ptr_ + 1);
  v21 = *a8.__ptr_;
  v22 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20.receiver = self;
  v20.super_class = VKVenueGroup;
  v12 = [VKPolygonGroup initWithStyleQuery:sel_initWithStyleQuery_tileZoom_fixedAroundCentroid_contentScale_storage_ tileZoom:a3 fixedAroundCentroid:0 contentScale:&v21 storage:?];
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  if (v12)
  {
    v12->_layer = a5;
    v12->_buildingId = a6;
    v13 = *ptr;
    ggl::BufferMemory::BufferMemory(v15);
    ggl::BufferMemory::BufferMemory(v16);
    v17 = 0;
    v18 = 0u;
    memset(v19, 0, sizeof(v19));
    *(&v18 + 6) = v13;
    if (!v13)
    {
      operator new();
    }

    operator new();
  }

  return 0;
}

@end