@interface VKBuildingGroup
- (BOOL)addPointyRoofForBuilding:(void *)a3 buildingModel:(unsigned __int8)a4 scaleThreshold:(float)a5 styleIndex:(float)a6;
- (BOOL)canConstructPointyRoofForPolygon:(void *)a3 building:(void *)a4 buildingModel:(unsigned __int8)a5 scaleThreshold:(float)a6;
- (VKBuildingGroup)initWithStyleQuery:(void *)a3 tileZoom:(float)a4 fixedAroundCentroid:(const void *)a5 contentScale:(float)a6;
- (__n128)addBuilding:index:ofTotal:accessor:triangulator:prepareExtrusion:forRoofStyle:scaleThreshold:;
- (const)commitRangesToExtrusionFillRenderItemBatcher:(void *)a3 forMeshAtIndex:(unint64_t)a4 cullingMask:(unsigned int)a5 featureIdPredicate:(function<BOOL (unsigned long)long;
- (const)commitRangesToExtrusionStrokeRenderItemBatcher:(void *)a3 forMeshAtIndex:(unint64_t)a4 cullingMask:(unsigned int)a5 featureIdPredicate:(function<BOOL (unsigned long)long;
- (const)commitRangesToPointyRoofFillRenderItemBatcher:(void *)a3 forMeshAtIndex:(unint64_t)a4 cullingMask:(unsigned int)a5 featureIdPredicate:(function<BOOL (unsigned long)long;
- (const)commitRangesToPointyRoofStrokeRenderItemBatcher:(void *)a3 forMeshAtIndex:(unint64_t)a4 cullingMask:(unsigned int)a5 featureIdPredicate:(function<BOOL (unsigned long)long;
- (const)commitRangesToPointyRoofTopRenderItemBatcher:(void *)a3 forMeshAtIndex:(unint64_t)a4 cullingMask:(unsigned int)a5 featureIdPredicate:(function<BOOL (unsigned long)long;
- (id).cxx_construct;
- (void)addBuilding:(void *)a3 index:(unint64_t)a4 ofTotal:(unint64_t)a5 accessor:(ResourceAccessor *)a6 triangulator:(void *)a7 prepareExtrusion:(BOOL)a8 forRoofStyle:(unsigned __int8)a9 scaleThreshold:(float)a10;
- (void)addBuilding:index:ofTotal:accessor:triangulator:prepareExtrusion:forRoofStyle:scaleThreshold:;
- (void)addExtrusionForBuilding:(void *)a3 index:(unint64_t)a4 ofTotal:(unint64_t)a5;
- (void)didFinishAddingData;
- (void)prepareForBuilding:(void *)a3 forRoofStyle:(unsigned __int8)a4 scaleThreshold:(float)a5;
- (void)styleQueriesForPointyRoofs:(BOOL)a3 selected:(BOOL)a4;
- (void)updateWithStyleManager:(const void *)a3;
- (void)willAddDataWithAccessor:(ResourceAccessor *)a3;
@end

@implementation VKBuildingGroup

- (id).cxx_construct
{
  *(self + 2840) = 0;
  *(self + 3024) = 0;
  *(self + 3032) = 0;
  *(self + 3216) = 0;
  *(self + 404) = 0;
  *(self + 405) = 0;
  *(self + 403) = 0;
  *(self + 407) = 0;
  *(self + 408) = 0;
  *(self + 406) = 0;
  *(self + 409) = 0;
  *(self + 410) = 0;
  *(self + 411) = 0;
  *(self + 412) = 0;
  *(self + 3304) = 0u;
  *(self + 3320) = 0u;
  *(self + 3336) = 0u;
  *(self + 3352) = 0u;
  *(self + 3368) = 0u;
  *(self + 3384) = 0u;
  *(self + 3400) = 0u;
  *(self + 3416) = 0u;
  *(self + 3432) = 0u;
  *(self + 3448) = 0u;
  *(self + 3464) = 0u;
  *(self + 3480) = 0u;
  *(self + 3496) = 0u;
  *(self + 3512) = 0u;
  *(self + 3528) = 0u;
  *(self + 3544) = 0u;
  *(self + 3560) = 0u;
  *(self + 3576) = 0u;
  *(self + 3592) = 0u;
  *(self + 3608) = 0u;
  *(self + 3624) = 0u;
  *(self + 3640) = 0u;
  *(self + 3656) = 0u;
  *(self + 3672) = 0u;
  *(self + 3688) = 0u;
  *(self + 3704) = 0u;
  *(self + 3720) = 0u;
  *(self + 3736) = 0u;
  *(self + 3752) = 0u;
  *(self + 3768) = 0u;
  *(self + 3784) = 0u;
  *(self + 3800) = 0u;
  *(self + 3816) = 0u;
  *(self + 3832) = 0u;
  *(self + 3848) = 0u;
  *(self + 3864) = 0u;
  *(self + 3880) = 0u;
  *(self + 3896) = 0u;
  *(self + 3912) = 0u;
  *(self + 3928) = 0u;
  *(self + 3944) = 0u;
  *(self + 3960) = 0u;
  *(self + 3976) = 0u;
  *(self + 3992) = 0u;
  *(self + 4008) = 0u;
  *(self + 4024) = 0u;
  *(self + 4040) = 0u;
  *(self + 4056) = 0u;
  *(self + 4072) = 0u;
  *(self + 4088) = 0u;
  *(self + 4104) = 0u;
  *(self + 4120) = 0u;
  *(self + 4136) = 0u;
  *(self + 4152) = 0u;
  *(self + 4168) = 0u;
  *(self + 4184) = 0u;
  *(self + 4200) = 0u;
  *(self + 4216) = 0u;
  *(self + 4232) = 0u;
  *(self + 4248) = 0u;
  *(self + 4264) = 0u;
  *(self + 4280) = 0u;
  *(self + 4296) = 0u;
  *(self + 4312) = 0u;
  *(self + 4328) = 0u;
  *(self + 4344) = 0u;
  *(self + 4360) = 0u;
  *(self + 4376) = 0u;
  *(self + 4392) = 0u;
  *(self + 4408) = 0u;
  *(self + 4424) = 0u;
  *(self + 4440) = 0u;
  *(self + 4456) = 0u;
  *(self + 4472) = 0u;
  *(self + 4488) = 0u;
  *(self + 4504) = 0u;
  *(self + 4520) = 0u;
  *(self + 4536) = 0u;
  *(self + 4552) = 0u;
  *(self + 4568) = 0u;
  *(self + 4584) = 0u;
  *(self + 4600) = 0u;
  *(self + 4616) = 0u;
  *(self + 4632) = 0u;
  *(self + 4648) = 0u;
  *(self + 4664) = 0u;
  *(self + 4680) = 0u;
  *(self + 4696) = 0u;
  *(self + 4712) = 0u;
  *(self + 4728) = 0u;
  *(self + 4744) = 0u;
  *(self + 4760) = 0u;
  *(self + 4776) = 0u;
  *(self + 4792) = 0u;
  *(self + 4808) = 0u;
  *(self + 4824) = 0u;
  *(self + 4840) = 0u;
  *(self + 4856) = 0u;
  *(self + 4872) = 0u;
  *(self + 4888) = 0u;
  *(self + 4904) = 0u;
  *(self + 4920) = 0u;
  *(self + 4936) = 0u;
  *(self + 4952) = 0u;
  *(self + 4968) = 0u;
  *(self + 4984) = 0u;
  *(self + 5000) = 0u;
  *(self + 5016) = 0u;
  *(self + 5032) = 0u;
  *(self + 5048) = 0u;
  *(self + 5064) = 0u;
  *(self + 5080) = 0u;
  *(self + 5096) = 0u;
  *(self + 5112) = 0u;
  *(self + 5128) = 0u;
  *(self + 5144) = 0u;
  *(self + 5160) = 0u;
  *(self + 5176) = 0u;
  *(self + 5192) = 0u;
  *(self + 5208) = 0u;
  *(self + 654) = 0;
  *(self + 655) = 0;
  *(self + 653) = 0;
  *(self + 657) = 0;
  *(self + 658) = 0;
  *(self + 656) = 0;
  *(self + 660) = 0;
  *(self + 661) = 0;
  *(self + 659) = 0;
  *(self + 663) = 0;
  *(self + 664) = 0;
  *(self + 662) = 0;
  return self;
}

- (void)updateWithStyleManager:(const void *)a3
{
  v17[4] = *MEMORY[0x1E69E9840];
  v5 = [(VKPolygonalItemGroup *)self attributeSets];
  v6 = (v5[4] - v5[3]) >> 4;
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](&self->_styleQueries);
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](&self->_flatRoofStyleQueries);
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](&self->_selectedStyleQueries);
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](&self->_selectedFlatRoofStyleQueries);
  std::vector<std::shared_ptr<md::GEOVectorTileResource>>::reserve(&self->_styleQueries.__begin_, v6);
  std::vector<std::shared_ptr<md::GEOVectorTileResource>>::reserve(&self->_flatRoofStyleQueries.__begin_, v6);
  std::vector<std::shared_ptr<md::GEOVectorTileResource>>::reserve(&self->_selectedStyleQueries.__begin_, v6);
  std::vector<std::shared_ptr<md::GEOVectorTileResource>>::reserve(&self->_selectedFlatRoofStyleQueries.__begin_, v6);
  v7 = v5[3];
  if (v5[4] != v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10[0] = 0;
      v10[1] = 0;
      v11 = 256;
      *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v10, 0x10002u) = 1;
      md::createFeatureAttributeSet(v17, (v7 + v8));
      gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v15, *a3, v17);
      std::vector<std::shared_ptr<gdc::Resource>>::push_back[abi:nn200100](&self->_styleQueries.__begin_, &v15);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v16);
      }

      gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v15, *a3, v17, v10);
      std::vector<std::shared_ptr<gdc::Resource>>::push_back[abi:nn200100](&self->_selectedStyleQueries.__begin_, &v15);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v16);
      }

      LODWORD(v12) = 19;
      WORD2(v12) = 1;
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&v13, &v12, 1uLL);
      gss::FeatureAttributeSet::setByReplacingAttributes(&v15, v17, v13, v14);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v13);
      gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v13, *a3, &v15);
      std::vector<std::shared_ptr<gdc::Resource>>::push_back[abi:nn200100](&self->_flatRoofStyleQueries.__begin_, &v13);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v14);
      }

      gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v13, *a3, &v15, v10);
      std::vector<std::shared_ptr<gdc::Resource>>::push_back[abi:nn200100](&self->_selectedFlatRoofStyleQueries.__begin_, &v13);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v14);
      }

      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v15);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v17);
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v10);
      ++v9;
      v7 = v5[3];
      v8 += 16;
    }

    while (v9 < (v5[4] - v7) >> 4);
  }
}

- (BOOL)addPointyRoofForBuilding:(void *)a3 buildingModel:(unsigned __int8)a4 scaleThreshold:(float)a5 styleIndex:(float)a6
{
  v8 = a4;
  v102 = *MEMORY[0x1E69E9840];
  v77 = *(a3 + 24);
  v71 = *(a3 + 5);
  v10 = +[VKPlatform sharedPlatform];
  if ([v10 supports3DBuildingStrokes])
  {
    v11 = *(a3 + 3);
    v12 = *(v11 + 33);
    if (*(v11 + 33))
    {
      v13 = 0;
      v14 = *v11;
      v15 = v14;
      while (1)
      {
        v16 = *v15;
        v15 += 2;
        if (v16 == 35)
        {
          break;
        }

        if (v12 == ++v13)
        {
          goto LABEL_6;
        }
      }

      v17 = v14[2 * v13 + 1] != 0;
    }

    else
    {
LABEL_6:
      v17 = 1;
    }

    v67 = v17;
  }

  else
  {
    v67 = 0;
  }

  if (!v77)
  {
    return 0;
  }

  v18 = 0;
  v19 = 0;
  v70 = (&g_gglBuildingBoundingBoxes + 24 * v8);
  v66 = (&g_gglEdgeRanges + 16 * v8);
  v20 = vdupq_n_s64(0x100000000000000uLL);
  v20.i64[0] = a6 << 48;
  v76 = v20;
  v68 = a6;
  p_boundingBox = &self->super._boundingBox;
  do
  {
    v84 = 0;
    v21 = geo::codec::multiSectionFeaturePoints(a3, v19, &v84);
    if (v21)
    {
      if (v84 >= 2)
      {
        v83 = 0;
        v82 = 0.0;
        _computeScaleRotationTranslation(v21, v84, &v83, &v82, &v81);
        if (*(&v83 + 1) != 0.0 && *&v83 != 0.0)
        {
          v22 = (*&v83 / *(&v83 + 1)) > 2.0 || (*&v83 / *(&v83 + 1)) < 0.5;
          v23 = !v22 && *&v83 <= a5;
          if (v23 && *(&v83 + 1) <= a5)
          {
            v79 = v83;
            v80 = fminf(*&v83, *(&v83 + 1));
            v25 = v82;
            _transformAndAddMesh(&g_gglBaseVertices + 28 * g_gglBaseRanges[4 * v8], 40, &g_gglBaseIndices[g_gglBaseRanges[4 * v8 + 2]], 60, v70, self->_pointyRoofFillMeshVendor.__ptr_, &self->_pointyRoofFillCullingGroups, v68, v82, v71, &v79, &v81, p_boundingBox);
            _transformAndAddMesh(&g_gglRoofVertices + 28 * g_gglRoofRanges[4 * v8], g_gglRoofRanges[4 * v8 + 1], &g_gglRoofIndices[g_gglRoofRanges[4 * v8 + 2]], g_gglRoofRanges[4 * v8 + 3], v70, self->_pointyRoofFillMeshVendor.__ptr_, &self->_pointyRoofFillCullingGroups, v68, v25, v71, &v79, &v81, p_boundingBox);
            if (v67)
            {
              v26 = v66[1];
              if (v26)
              {
                v27 = *v66;
                *v78 = *v70;
                *&v78[16] = v70[2];
                v28 = ggl::MeshVendor<ggl::PrefilteredLine::PrefilteredLineMesh>::meshWithVertexCount(self->_pointyRoofStrokeMeshVendor.__ptr_, 4 * v26, 0);
                v75 = &g_gglEdges + 24 * v27;
                v29 = **(v28 + 64);
                v30 = (*(v29 + 6) - *(v29 + 5)) / *(v29 + 1);
                ggl::BufferData::resize(v29, v30 + 4 * v26);
                v74 = v30;
                ggl::DataAccess<ggl::CommonMesh::BufferPos4>::DataAccess(v100, **(v28 + 64), v30, v30 + 4 * v26);
                v31 = *(v28 + 96);
                v32 = (*(v31 + 6) - *(v31 + 5)) / *(v31 + 1);
                v33 = v26;
                v34 = v32 + 6 * v26;
                ggl::BufferData::resize(v31, v34);
                v64 = v34;
                v65 = v32;
                ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v99, v31, v32, v34, 1, 0, 0);
                v97 = v81;
                v98 = 0;
                v95 = *p_boundingBox;
                v96 = self->super._boundingBox._minimum._e[2];
                v35 = &self->super._boundingBox;
                for (i = 2636; i != 2648; i += 4)
                {
                  v37 = v35->_maximum._e[0];
                  v38 = v35->_minimum._e[0];
                  v35 = (v35 + 4);
                  *(&v101[-164] + i - 12) = v37 - v38;
                }

                v39 = 0;
                v93 = vmaxnm_f32(*&v101[0], 0);
                v94 = fmaxf(*(v101 + 2), 0.0);
                do
                {
                  *(v101 + v39 * 4) = 65535.0 / v93.f32[v39];
                  ++v39;
                }

                while (v39 != 3);
                v40 = 0;
                v73 = *v101;
                v41 = *(v101 + 4);
                v42 = v100[5];
                v43 = v99[5];
                do
                {
                  v44 = &v75[24 * v40];
                  *&v85 = *v44;
                  DWORD2(v85) = *(v44 + 2);
                  v91 = *(v44 + 12);
                  v92 = *(v44 + 5);
                  _transformPositionAndNormal(&v85, 0, &v79, &v97, v25);
                  _transformPositionAndNormal(&v91, 0, &v79, &v97, v25);
                  for (j = 0; j != 12; j += 4)
                  {
                    *(v101 + j) = *(&v85 + j) - *(&v95 + j);
                  }

                  v46 = 0;
                  v47 = v101[0];
                  v48 = *(v101 + 4);
                  do
                  {
                    *(v101 + v46) = *(&v91 + v46) - *(&v95 + v46);
                    v46 += 4;
                  }

                  while (v46 != 12);
                  v49 = vcvt_s32_f32(vmul_n_f32(__PAIR64__(v47, v101[0]), v73));
                  v50 = vcvt_s32_f32(vmul_f32(__PAIR64__(v48.u32[1], DWORD1(v101[0])), v41));
                  v48.i32[1] = DWORD2(v101[0]);
                  v51 = vcvt_s32_f32(vmul_f32(v48, v41));
                  v52.i64[0] = v51.u32[0];
                  v52.i64[1] = v51.u32[1];
                  v53 = vshlq_u64(v52, xmmword_1B33B1F40);
                  v52.i64[0] = v50.u32[0];
                  v52.i64[1] = v50.u32[1];
                  v54 = vshlq_u64(v52, xmmword_1B33B1F40);
                  v52.i64[0] = v49.u32[0];
                  v52.i64[1] = v49.u32[1];
                  v55 = vorrq_s8(vorrq_s8(v54, v52), vextq_s8(v53, v53, 8uLL));
                  v56 = v55.i64[1];
                  v57 = v42 + (v40 << 6);
                  *v57 = v55.i64[1];
                  v58 = vorrq_s8(v55, v76);
                  *(v57 + 8) = v58;
                  *(v57 + 24) = v58.i64[0];
                  *(v57 + 32) = v56 | 0x1000000000000;
                  *(v57 + 40) = v58.i64[0];
                  *(v57 + 48) = v56 | 0x101000000000000;
                  *(v57 + 56) = v58.i64[0];
                  LOWORD(v56) = v74 + 4 * v40;
                  v59 = (v43 + 12 * v40);
                  *v59 = v56;
                  v59[1] = v56 + 1;
                  v59[2] = v56 + 2;
                  v59[3] = v56 + 2;
                  v59[4] = v56 + 1;
                  v59[5] = v56 + 3;
                  ++v40;
                }

                while (v40 != v33);
                v91 = *v78;
                v92 = *&v78[8];
                *&v90[1] = *&v78[4];
                v88 = *&v78[12];
                v89 = *&v78[20];
                *&v87[1] = *&v78[16];
                v90[0] = *&v78[12];
                v87[0] = *v78;
                _transformPositionAndNormal(&v91, 0, &v79, &v97, v25);
                _transformPositionAndNormal(v90, 0, &v79, &v97, v25);
                _transformPositionAndNormal(&v88, 0, &v79, &v97, v25);
                _transformPositionAndNormal(v87, 0, &v79, &v97, v25);
                *&v60 = v91;
                *(&v60 + 1) = *v90;
                *&v61 = v88;
                *(&v61 + 1) = *v87;
                v101[0] = v60;
                v101[1] = v61;
                v62 = ggl::CullingGrid::intersectedCellsForRibbon(4uLL, v101, 1);
                *&v85 = v65;
                *(&v85 + 1) = v64;
                v86 = v71;
                _addRangeToList(&self->_pointyRoofStrokeCullingGroups, v62, 0, &v85);
                ggl::BufferMemory::~BufferMemory(v99);
                ggl::BufferMemory::~BufferMemory(v100);
              }
            }

            v18 = 1;
          }
        }
      }
    }

    ++v19;
  }

  while (v19 != v77);
  return v18;
}

- (BOOL)canConstructPointyRoofForPolygon:(void *)a3 building:(void *)a4 buildingModel:(unsigned __int8)a5 scaleThreshold:(float)a6
{
  v6 = *(a3 + 24);
  if (v6)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v19 = 0;
      v11 = geo::codec::multiSectionFeaturePoints(a3, v9, &v19);
      if (v11)
      {
        if (v19 >= 2)
        {
          v18 = 0;
          _computeScaleRotationTranslation(v11, v19, &v18, &v17, &v16);
          if (*(&v18 + 1) != 0.0 && *&v18 != 0.0)
          {
            v12 = (*&v18 / *(&v18 + 1)) > 2.0 || (*&v18 / *(&v18 + 1)) < 0.5;
            v13 = !v12 && *&v18 <= a6;
            if (v13 && *(&v18 + 1) <= a6)
            {
              break;
            }
          }
        }
      }

      v10 = ++v9 < v6;
    }

    while (v6 != v9);
  }

  else
  {
    return 0;
  }

  return v10;
}

- (void)addExtrusionForBuilding:(void *)a3 index:(unint64_t)a4 ofTotal:(unint64_t)a5
{
  v5 = a3;
  memset(&v180, 0, sizeof(v180));
  v7 = *(a3 + 24);
  std::vector<unsigned int>::reserve(&v180, v7);
  shared_weak_owners = v5[1].__shared_weak_owners_;
  v8 = [(VKPolygonalItemGroup *)self indexForGeoFeatureAttributes:&v5[1]];
  v177 = &v177;
  v178 = &v177;
  v179 = 0;
  v155 = v5;
  v156 = v7;
  v148 = self;
  if (v7)
  {
    v9 = 0;
    v10 = 0;
    end = v180.__end_;
    value = v180.__end_cap_.__value_;
    *__src = v180.__begin_;
    do
    {
      v152 = v9;
      v181[0] = 0;
      v13 = geo::codec::multiSectionFeaturePoints(v5, v10, v181);
      v14 = v181[0];
      v15 = ggl::CullingGrid::intersectedCellsForRibbon(v181[0], v13, 1);
      v157 = v15;
      if (end >= value)
      {
        v16 = end - *__src;
        v17 = (end - *__src) >> 2;
        v18 = v17 + 1;
        if ((v17 + 1) >> 62)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        if ((value - *__src) >> 1 > v18)
        {
          v18 = (value - *__src) >> 1;
        }

        if (value - *__src >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v19 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v18;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v19);
        }

        *(4 * v17) = v157;
        *&__src[8] = 4 * v17 + 4;
        *&__src[16] = 0;
        memcpy(0, *__src, v16);
        if (*__src)
        {
          operator delete(*__src);
          v14 = v181[0];
        }

        *__src = 0;
      }

      else
      {
        *end = v15;
        *&__src[8] = end + 1;
        *&__src[16] = value;
      }

      geo::codec::buildingFootprintExtrusionHeight(v5, v10);
      geo::codec::buildingFootprintBaseHeight(v5, v10);
      if (v14)
      {
        operator new();
      }

      v9 = v157 | v152;
      ++v10;
      v5 = v155;
      end = *&__src[8];
      value = *&__src[16];
    }

    while (v10 != v156);
    v180 = *__src;
    v20 = v178;
    v174 = &v174;
    v175 = &v174;
    v176 = 0;
    if (v178 != &v177)
    {
      do
      {
        v21 = v20[1];
        if (v21 != &v177)
        {
          v22 = v20[1];
          do
          {
            v23 = v20[2] == *(v22 + 16) && *(v20 + 6) == *(v22 + 24);
            if (v23 && (*(v20 + 28) == *(v22 + 28) ? (v24 = *(v20 + 9) == *(v22 + 36)) : (v24 = 0), v24) || (v20[2] == *(v22 + 28) ? (v25 = *(v20 + 6) == *(v22 + 36)) : (v25 = 0), v25 && (*(v20 + 28) == *(v22 + 16) ? (v26 = *(v20 + 9) == *(v22 + 24)) : (v26 = 0), v26)))
            {
              operator new();
            }

            v22 = *(v22 + 8);
          }

          while (v22 != &v177);
        }

        v20 = v20[1];
      }

      while (v21 != &v177);
    }

    v153 = v157 | v152;
    v27 = 0;
    v28 = 0;
    do
    {
      v181[0] = 0;
      geo::codec::multiSectionFeaturePoints(v155, v28, v181);
      v27 += v181[0];
      ++v28;
    }

    while (v156 != v28);
    v29 = v179;
    self = v148;
  }

  else
  {
    v29 = 0;
    v153 = 0;
    v27 = 0;
    v174 = &v174;
    v175 = &v174;
    v176 = 0;
  }

  ptr = self->_extrusionFillMeshVendor.__ptr_;
  v31 = ptr[1];
  v32 = *(v31 - 8);
  v33 = **(v32 + 64);
  v34 = (*(v33 + 6) - *(v33 + 5)) / *(v33 + 1);
  v35 = v34 + 4 * v27;
  if (v35 >= 0x10000)
  {
    ggl::MeshVendor<ggl::BuildingFacade::BuildingMesh>::_allocateNewMesh();
  }

  v150 = *ptr;
  ggl::BufferData::resize(v33, v35);
  v36 = **(v32 + 64);
  ggl::BufferMemory::BufferMemory(v172);
  ggl::ResourceAccessor::accessIndexData(v181, 0, v36, v34, v35, 1, 0);
  ggl::BufferMemory::operator=(v172, v181);
  ggl::BufferMemory::~BufferMemory(v181);
  v37 = *(v32 + 96);
  v38 = (*(v37 + 6) - *(v37 + 5)) / *(v37 + 1);
  ggl::BufferData::resize(v37, v38 + 6 * v27);
  v151 = v38;
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v181, v37, v38, v38 + 6 * v27, 1, 0, 0);
  v39 = +[VKPlatform sharedPlatform];
  v40 = &xmmword_1B33B2000;
  v41 = v156;
  if (![v39 supports3DBuildingStrokes])
  {

    goto LABEL_70;
  }

  v42 = v155[1].__vftable;
  v43 = BYTE1(v42->__on_zero_shared_weak);
  if (!BYTE1(v42->__on_zero_shared_weak))
  {
LABEL_55:

LABEL_58:
    v171 = 0;
    v49 = ggl::MeshVendor<ggl::PrefilteredLine::PrefilteredLineMesh>::meshWithVertexCount(v148->_extrusionStrokeMeshVendor.__ptr_, 4 * v29, &v171);
    v50 = **(v49 + 64);
    v51 = (*(v50 + 6) - *(v50 + 5)) / *(v50 + 1);
    ggl::BufferData::resize(v50, v51 + 4 * v29);
    ggl::DataAccess<ggl::CommonMesh::BufferPos4>::DataAccess(&v168, **(v49 + 64), v51, v51 + 4 * v29);
    v52 = *(v49 + 96);
    v53 = (*(v52 + 6) - *(v52 + 5)) / *(v52 + 1);
    v54 = v53 + 6 * v29;
    ggl::BufferData::resize(v52, v54);
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(&v165, v52, v53, v54, 1, 0, 0);
    *&v163 = v53;
    *(&v163 + 1) = v54;
    v164 = shared_weak_owners;
    _addRangeToList(&v148->_extrusionStrokeCullingGroups, v153, v171, &v163);
    e = v148->super._boundingBox._minimum._e;
    v161 = *v148->super._boundingBox._minimum._e;
    v162 = v148->super._boundingBox._minimum._e[2];
    for (i = 2636; i != 2648; i += 4)
    {
      v57 = e[3];
      v58 = *e++;
      *(&v163 + i - 2636) = v57 - v58;
    }

    v59 = 0;
    v159 = vmaxnm_f32(*&v163, 0);
    v160 = fmaxf(*(&v163 + 2), 0.0);
    do
    {
      *(&v163 + v59 * 4) = 65535.0 / v159.f32[v59];
      ++v59;
    }

    while (v59 != 3);
    v60 = v178;
    if (v178 != &v177)
    {
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = v163;
      v65 = *(&v163 + 4);
      v66 = v170;
      v67 = v167;
      v68 = v167 + 10;
      v69 = vdupq_n_s64(0x100000000000000uLL);
      do
      {
        for (j = 0; j != 12; j += 4)
        {
          *(&v163 + j) = *(v60 + j + 16) - *(&v161 + j);
        }

        v71 = 0;
        v72 = v163;
        v73 = *(&v163 + 4);
        do
        {
          *(&v163 + v71) = *(v60 + v71 + 28) - *(&v161 + v71);
          v71 += 4;
        }

        while (v71 != 12);
        v74 = vcvt_s32_f32(vmul_n_f32(__PAIR64__(v72, v163), *v64.i32));
        v75 = vcvt_s32_f32(vmul_f32(__PAIR64__(v73.u32[1], DWORD1(v163)), v65));
        v73.i32[1] = DWORD2(v163);
        v76 = vcvt_s32_f32(vmul_f32(v73, v65));
        v77.i64[0] = v76.u32[0];
        v77.i64[1] = v76.u32[1];
        v78 = vshlq_u64(v77, xmmword_1B33B1F40);
        v77.i64[0] = v75.u32[0];
        v77.i64[1] = v75.u32[1];
        v79 = vshlq_u64(v77, xmmword_1B33B1F40);
        v77.i64[0] = v74.u32[0];
        v77.i64[1] = v74.u32[1];
        v80 = vorrq_s8(vorrq_s8(v79, v77), vextq_s8(v78, v78, 8uLL));
        v81 = v80.i64[1];
        *(v66 + (v61 << 6)) = v80.i64[1];
        v69.i64[0] = v8 << 48;
        v82 = vorrq_s8(v80, v69);
        *(v66 + ((v61 << 6) | 8)) = v82;
        *(v66 + ((v61 << 6) | 0x18)) = v82.i64[0];
        *(v66 + ((v61 << 6) | 0x20)) = v81 | 0x1000000000000;
        *(v66 + ((v61 << 6) | 0x28)) = v82.i64[0];
        *(v66 + ((v61 << 6) | 0x30)) = v81 | 0x101000000000000;
        *(v66 + ((v61 << 6) | 0x38)) = v82.i64[0];
        v83 = v63 + v51;
        v63 += 4;
        v84 = v67 + 2 * v62;
        *v84 = v83;
        *v82.i8 = vuzp1_s16(vadd_s32(vdup_n_s32(v83), 0x200000001), v64);
        *(v84 + 2) = vzip1_s16(*v82.i8, vrev32_s16(*v82.i8));
        *(v68 + 2 * v62) = v83 + 3;
        v62 += 6;
        v60 = v60[1];
        ++v61;
      }

      while (v60 != &v177);
    }

    ggl::BufferMemory::~BufferMemory(&v165);
    ggl::BufferMemory::~BufferMemory(&v168);
    v41 = v156;
    v40 = &xmmword_1B33B2000;
    goto LABEL_70;
  }

  v44 = 0;
  v45 = v42->~__shared_weak_count;
  v46 = v45;
  while (1)
  {
    v47 = *v46;
    v46 = (v46 + 8);
    if (v47 == 35)
    {
      break;
    }

    if (v43 == ++v44)
    {
      goto LABEL_55;
    }
  }

  v48 = *(v45 + 2 * v44 + 1);

  if (v48)
  {
    goto LABEL_58;
  }

LABEL_70:
  if (v27)
  {
    v85 = (v181[5] + 6);
    do
    {
      v86 = v34 + 1;
      *(v85 - 3) = v34 + 1;
      *(v85 - 2) = v34;
      *(v85 - 1) = v34 + 2;
      *v85 = v34 + 2;
      v87 = v34 + 3;
      v34 += 4;
      v85[1] = v87;
      v85[2] = v86;
      v85 += 6;
      --v27;
    }

    while (v27);
  }

  [(VKPolygonalItemGroup *)v148 size];
  if (v41)
  {
    v91 = 0;
    v92 = 0;
    v158 = 0;
    v154 = ((v31 - v150) >> 3) - 1;
    p_boundingBox = &v148->super._boundingBox;
    v94 = *(v40 + 473);
    v95 = (1.0 / v88) * v94;
    v96 = (1.0 / v89) * v94;
    v97 = (1.0 / v90) * v94;
    do
    {
      v98 = geo::codec::buildingFootprintExtrusionHeight(v155, v91);
      v99 = geo::codec::buildingFootprintBaseHeight(v155, v91);
      v100 = v98 - v99;
      if ((v98 - v99) < 0.0)
      {
        shared_owners = v155->__shared_owners_;
        if (shared_owners)
        {
          shared_owners = std::__shared_weak_count::lock(shared_owners);
          v102 = shared_owners;
          if (shared_owners)
          {
            shared_owners = v155->__vftable;
          }
        }

        else
        {
          v102 = 0;
        }

        v103 = geo::codec::VectorTile::key(shared_owners);
        v104 = *(v103 + 10);
        v105 = *(v103 + 8);
        v165 = *v103;
        LOWORD(v166) = v105;
        BYTE2(v166) = v104;
        v106 = GEOTileKeyMake();
        v108 = v107;
        *&v168 = v106;
        *(&v168 + 1) = v107;
        if (v102)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v102);
        }

        NSLog(@"baseHeight (%f) > height (%f) for feature in tile %d.%d.%d", v99, v98, *(&v168 + 6) >> 6, (v108 >> 16) & 0x3FFFFFF, BYTE6(v168) & 0x3F);
        v100 = 0.0;
        v99 = v98;
      }

      *&v163 = 0;
      v109 = geo::codec::multiSectionFeaturePoints(v155, v91, &v163);
      v110 = v163;
      v111 = 3 * v163;
      v112 = v180.__begin_[v91];
      *&v168 = v158 + v151;
      *(&v168 + 1) = v158 + v151 + 6 * v163;
      v169 = shared_weak_owners;
      _addRangeToList(&v148->_extrusionFillCullingGroups, v112, v154, &v168);
      if (v110)
      {
        v113 = 0;
        do
        {
          v114 = 0;
          v115 = v113++;
          if (v113 == v110)
          {
            v116 = 0;
          }

          else
          {
            v116 = v115 + 1;
          }

          v117 = *(&v109->__vftable + v116);
          v118 = *(&v109->__vftable + v115);
          v119 = vsub_f32(v117, v118);
          v120 = sqrtf(vaddv_f32(vmul_f32(v119, v119)));
          v121 = vmuls_lane_f32((1.0 / v120) * 127.0, v119, 1);
          v122 = ((v120 * 133.33) + 0.5);
          if (v122)
          {
            v123 = (v100 * 133.33) == 0;
          }

          else
          {
            v123 = 1;
          }

          v124 = v123;
          v165 = v118;
          v166 = v99;
          do
          {
            *(&v168 + v114 * 4) = v165.f32[v114] - p_boundingBox->_minimum._e[v114];
            ++v114;
          }

          while (v114 != 3);
          v125 = 0;
          v126 = v121;
          v127 = v122 << 8;
          v128 = v168;
          v129 = *(&v168 + 2);
          v165 = v118;
          v166 = v98;
          do
          {
            *(&v168 + v125 * 4) = v165.f32[v125] - p_boundingBox->_minimum._e[v125];
            ++v125;
          }

          while (v125 != 3);
          v130 = 0;
          v131 = ((-127.0 * v119.f32[0]) * (1.0 / v120));
          v132 = v168;
          v133 = *(&v168 + 2);
          v165 = v117;
          v166 = v99;
          do
          {
            *(&v168 + v130 * 4) = v165.f32[v130] - p_boundingBox->_minimum._e[v130];
            ++v130;
          }

          while (v130 != 3);
          v134 = 0;
          v135 = v168;
          v136 = *(&v168 + 2);
          v165 = v117;
          v166 = v98;
          do
          {
            *(&v168 + v134 * 4) = v165.f32[v134] - p_boundingBox->_minimum._e[v134];
            ++v134;
          }

          while (v134 != 3);
          v137 = v124 | (v100 < 0.025);
          v138 = v168;
          v139 = *(&v168 + 2);
          v140 = v173 + 16 * v92;
          *v140 = (*&v128 * v95);
          *(v140 + 2) = (*(&v128 + 1) * v96);
          *(v140 + 4) = (v129 * v97);
          *(v140 + 8) = v126;
          *(v140 + 9) = v131;
          *(v140 + 11) = v8;
          v141 = (v137 & 1) == 0;
          if (v137)
          {
            v142 = 0;
          }

          else
          {
            v142 = (v100 * 133.33);
          }

          v143 = v173 + 16 * v92;
          *(v143 + 16) = (*&v132 * v95);
          *(v143 + 18) = (*(&v132 + 1) * v96);
          *(v143 + 20) = (v133 * v97);
          *(v143 + 22) = v142;
          *(v143 + 24) = v126;
          *(v143 + 25) = v131;
          *(v143 + 27) = v8;
          if (!v141)
          {
            v127 = 0;
          }

          v144 = v173 + 16 * v92;
          *(v144 + 32) = (*&v135 * v95);
          *(v144 + 34) = (*(&v135 + 1) * v96);
          *(v144 + 36) = (v136 * v97);
          *(v144 + 38) = v127;
          *(v144 + 40) = v126;
          *(v144 + 41) = v131;
          *(v144 + 43) = v8;
          v145 = v127 + v142;
          v146 = v173 + 16 * v92;
          *(v146 + 48) = (*&v138 * v95);
          *(v146 + 50) = (*(&v138 + 1) * v96);
          *(v146 + 52) = (v139 * v97);
          *(v146 + 54) = v145;
          *(v146 + 56) = v126;
          *(v146 + 57) = v131;
          *(v146 + 59) = v8;
          v92 += 4;
        }

        while (v113 != v110);
        v158 += 2 * v111;
      }

      ++v91;
    }

    while (v91 != v156);
  }

  ggl::BufferMemory::~BufferMemory(v181);
  ggl::BufferMemory::~BufferMemory(v172);
  std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear(&v174);
  std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear(&v177);
  if (v180.__begin_)
  {
    operator delete(v180.__begin_);
  }
}

- (void)addBuilding:(void *)a3 index:(unint64_t)a4 ofTotal:(unint64_t)a5 accessor:(ResourceAccessor *)a6 triangulator:(void *)a7 prepareExtrusion:(BOOL)a8 forRoofStyle:(unsigned __int8)a9 scaleThreshold:(float)a10
{
  v39 = *MEMORY[0x1E69E9840];
  v14 = *(a3 + 24);
  v36 = *(a3 + 5);
  v37 = self;
  v15 = [(VKPolygonalItemGroup *)self indexForGeoFeatureAttributes:a3 + 24];
  v35 = v15;
  if (a9 == 1)
  {
    v16 = v15;
    PointyRoofForBuilding = _shouldMakePointyRoofForBuilding(a3);
    v34 = PointyRoofForBuilding;
    if (PointyRoofForBuilding)
    {
      *&v19 = v16;
      *&v18 = a10;
      v34 = [(VKBuildingGroup *)self addPointyRoofForBuilding:a3 buildingModel:*(a3 + 10) & 1 scaleThreshold:v18 styleIndex:v19];
    }
  }

  else
  {
    v34 = 0;
  }

  [(VKPolygonalItemGroup *)self size];
  v31 = v20;
  v32 = v21;
  v33 = v22;
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      v30 = 0;
      v29 = geo::codec::multiSectionFeaturePoints(a3, i, &v30);
      if (geo::codec::multiSectionFeaturePrecision(a3) <= 0x10)
      {
        geo::codec::buildingFootprintExtrusionHeight(a3, i);
        v24 = v30;
        if (v30 >= 3)
        {
          v28 = ggl::CullingGrid::intersectedCellsForRibbon(v30, v29, 1);
          v37->super._cullingMask |= v28;
          md::Triangulator<float>::triangulate(a7, v29, v24);
          if (*(a7 + 12) != *(a7 + 11))
          {
            v38 = 0;
            operator new();
          }
        }
      }
    }
  }

  if (a8 && !v34)
  {
    [(VKBuildingGroup *)v37 addExtrusionForBuilding:a3 index:a4 ofTotal:a5];
  }
}

- (void)addBuilding:index:ofTotal:accessor:triangulator:prepareExtrusion:forRoofStyle:scaleThreshold:
{
  v5 = **(a1 + 8);
  if (v5)
  {
    v6 = 0;
    v7 = **(a1 + 16);
    v8 = **(a1 + 24);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    v14 = *(a1 + 48);
    v15 = *a2;
    v16 = *(a4 + 40);
    v17 = 1.0 / v11;
    v18 = 1.0 / v12;
    v19 = 1.0 / v13;
    do
    {
      v20 = 0;
      v38 = *(v7 + 8 * v6);
      v39 = v8;
      do
      {
        *(&v36 + v20) = *(&v38 + v20) - *(v9 + v20);
        v20 += 4;
      }

      while (v20 != 12);
      v21 = (v16 + 8 * (v6 + v15));
      v22 = ((*(&v36 + 1) * 65535.0) * v18);
      v23 = ((*(&v36 + 2) * 65535.0) * v19);
      v24 = *v14 << 8;
      *v21 = ((*&v36 * 65535.0) * v17);
      v21[1] = v22;
      v21[2] = v23;
      v21[3] = v24;
      ++v6;
    }

    while (v6 != v5);
  }

  v25 = *(*(a1 + 56) + 88);
  v26 = *(*(a1 + 56) + 96) - v25;
  if (v26)
  {
    v27 = v26 >> 1;
    v28 = *a2;
    v29 = (*(a5 + 40) + 2 * *a3);
    if (v27 <= 1)
    {
      v27 = 1;
    }

    do
    {
      v30 = *v25++;
      *v29++ = v30 + v28;
      --v27;
    }

    while (v27);
  }

  v31 = **(a1 + 72);
  if (**(a1 + 64))
  {
    v32 = &OBJC_IVAR___VKBuildingGroup__fillCullingGroupsForPointyRoofs;
  }

  else
  {
    v32 = &OBJC_IVAR___VKPolygonalItemGroup__fillCullingGroups;
  }

  v33 = *v32;
  v34 = **(a1 + 80);
  v35 = *(*(a1 + 88) + 144);
  v36 = *a3;
  v37 = **(a1 + 96);
  _addRangeToList(v31 + v33, v34, v35, &v36);
}

- (__n128)addBuilding:index:ofTotal:accessor:triangulator:prepareExtrusion:forRoofStyle:scaleThreshold:
{
  *a2 = &unk_1F2A31020;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = result;
  return result;
}

- (void)didFinishAddingData
{
  v13.receiver = self;
  v13.super_class = VKBuildingGroup;
  [(VKPolygonalItemGroup *)&v13 didFinishAddingData];
  p_strokeMeshInfo = &self->_strokeMeshInfo;
  ptr = self->_strokeMeshInfo.var0.__val_._storageClient.__ptr_;
  if (ptr && *ptr == self->_strokeMeshInfo.var0.__val_._storage)
  {
    *(ptr + 80) = 1;
  }

  v5 = self->_strokeMeshInfo.var0.__val_._internalStorage.__ptr_;
  if (v5)
  {
    md::MeshSetStorage::finalize(v5);
  }

  ggl::BufferMemory::BufferMemory(v14);
  ggl::BufferMemory::operator=(&self->_strokeMeshInfo.var0.__val_._vertexDataWrite, v14);
  ggl::BufferMemory::~BufferMemory(v14);
  ggl::BufferMemory::BufferMemory(v14);
  ggl::BufferMemory::operator=(&self->_strokeMeshInfo.var0.__val_._indexDataWrite, v14);
  ggl::BufferMemory::~BufferMemory(v14);
  std::vector<std::shared_ptr<ggl::Texture2D>>::__vdeallocate(&self->_strokeMeshes);
  *&self->_strokeMeshes.__begin_ = *&self->_strokeMeshInfo.var0.__val_._meshes.__begin_;
  self->_strokeMeshes.__cap_ = self->_strokeMeshInfo.var0.__val_._meshes.__cap_;
  self->_strokeMeshInfo.var0.__val_._meshes.__begin_ = 0;
  self->_strokeMeshInfo.var0.__val_._meshes.__end_ = 0;
  self->_strokeMeshInfo.var0.__val_._meshes.__cap_ = 0;
  p_fillMeshInfoForPointyRoofs = &self->_fillMeshInfoForPointyRoofs;
  v7 = md::MeshSet<ggl::PolygonBase::CompressedMeshMesh,ggl::PolygonBase::CompressedVbo>::finishedWriting(&self->_fillMeshInfoForPointyRoofs.var0.__val_._vertexAndIndexCounts.__begin_);
  p_fillMeshesForPointyRoofs = &self->_fillMeshesForPointyRoofs;
  std::vector<std::shared_ptr<ggl::Texture2D>>::__vdeallocate(p_fillMeshesForPointyRoofs);
  *p_fillMeshesForPointyRoofs = *v7;
  p_fillMeshesForPointyRoofs[2] = v7[2];
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  if (p_strokeMeshInfo->__engaged_)
  {
    cntrl = p_strokeMeshInfo->var0.__val_._storageClient.__cntrl_;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
    }

    std::unique_ptr<md::MeshSetStorage>::reset[abi:nn200100](&p_strokeMeshInfo->var0.__val_._internalStorage, 0);
    ggl::BufferMemory::~BufferMemory(&p_strokeMeshInfo->var0.__val_._indexDataWrite);
    ggl::BufferMemory::~BufferMemory(&p_strokeMeshInfo->var0.__val_._vertexDataWrite);
    v14[0] = &p_strokeMeshInfo->var0.__val_._meshes.__begin_;
    std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](v14);
    begin = p_strokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_;
    if (p_strokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_)
    {
      p_strokeMeshInfo->var0.__val_._vertexAndIndexCounts.__end_ = begin;
      operator delete(begin);
    }

    p_strokeMeshInfo->__engaged_ = 0;
  }

  if (p_fillMeshInfoForPointyRoofs->__engaged_)
  {
    v11 = p_fillMeshInfoForPointyRoofs->var0.__val_._storageClient.__cntrl_;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }

    std::unique_ptr<md::MeshSetStorage>::reset[abi:nn200100](&p_fillMeshInfoForPointyRoofs->var0.__val_._internalStorage, 0);
    ggl::BufferMemory::~BufferMemory(&p_fillMeshInfoForPointyRoofs->var0.__val_._indexDataWrite);
    ggl::BufferMemory::~BufferMemory(&p_fillMeshInfoForPointyRoofs->var0.__val_._vertexDataWrite);
    v14[0] = &p_fillMeshInfoForPointyRoofs->var0.__val_._meshes.__begin_;
    std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](v14);
    v12 = p_fillMeshInfoForPointyRoofs->var0.__val_._vertexAndIndexCounts.__begin_;
    if (p_fillMeshInfoForPointyRoofs->var0.__val_._vertexAndIndexCounts.__begin_)
    {
      p_fillMeshInfoForPointyRoofs->var0.__val_._vertexAndIndexCounts.__end_ = v12;
      operator delete(v12);
    }

    p_fillMeshInfoForPointyRoofs->__engaged_ = 0;
  }
}

- (void)willAddDataWithAccessor:(ResourceAccessor *)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VKBuildingGroup;
  [(VKPolygonalItemGroup *)&v11 willAddDataWithAccessor:?];
  v10 = self;
  p_strokeMeshInfo = &self->_strokeMeshInfo;
  ptr = self->_strokeMeshInfo.var0.__val_._internalStorage.__ptr_;
  if (ptr)
  {
    md::MeshSetStorage::prepareStorage(ptr, a3);
  }

  begin = p_strokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_;
  end = p_strokeMeshInfo->var0.__val_._vertexAndIndexCounts.__end_;
  if (p_strokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_ != end)
  {
    do
    {
      if (*begin && *(begin + 1))
      {
        md::MeshSetStorage::buildSubVertexData(&v13, p_strokeMeshInfo->var0.__val_._storage, p_strokeMeshInfo->var0.__val_._storageClient.__ptr_, "Polygon Stroke Index Data", *begin);
        md::MeshSetStorage::buildSubIndexData(&v12, p_strokeMeshInfo->var0.__val_._storage, p_strokeMeshInfo->var0.__val_._storageClient.__ptr_, "Polygon Stroke Vertex Data", *(begin + 1));
        if (*(&v13 + 1))
        {
          atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        operator new();
      }

      begin += 4;
    }

    while (begin != end);
  }

  v9 = p_strokeMeshInfo->var0.__val_._meshes.__begin_;
  if (v9 != p_strokeMeshInfo->var0.__val_._meshes.__end_)
  {
    ggl::DataAccess<ggl::TrafficBase::DefaultVbo>::DataAccess(v14, **(*v9 + 64), 0, *p_strokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_, a3);
    ggl::BufferMemory::operator=(&p_strokeMeshInfo->var0.__val_._vertexDataWrite, v14);
    ggl::BufferMemory::~BufferMemory(v14);
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v14, *(*p_strokeMeshInfo->var0.__val_._meshes.__begin_ + 96), 0, *(p_strokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_ + 1), 1, 1, a3);
    ggl::BufferMemory::operator=(&p_strokeMeshInfo->var0.__val_._indexDataWrite, v14);
    ggl::BufferMemory::~BufferMemory(v14);
  }

  md::MeshSet<ggl::PolygonBase::CompressedMeshMesh,ggl::PolygonBase::CompressedVbo>::createMeshes(&v10->_fillMeshInfoForPointyRoofs, "Flat Building Roof Mesh", "Flat Building Roof Vertex Data", "Flat Building Roof Index Data", a3);
}

- (void)prepareForBuilding:(void *)a3 forRoofStyle:(unsigned __int8)a4 scaleThreshold:(float)a5
{
  v6 = a4;
  v7 = a3;
  v147 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 24);
  [(VKPolygonalItemGroup *)self indexForGeoFeatureAttributes:a3 + 24];
  v104 = 0;
  if (v7 && v6 == 1)
  {
    if (_shouldMakePointyRoofForBuilding(v7))
    {
      *&v9 = a5;
      v104 = [(VKBuildingGroup *)self canConstructPointyRoofForPolygon:v7 building:v7 buildingModel:v7[1].__shared_weak_owners_ & 1 scaleThreshold:v9];
    }

    else
    {
      v104 = 0;
    }
  }

  v141 = &v140;
  v142 = 0;
  v137 = &v137;
  v138 = &v137;
  v139 = 0;
  v140 = &v140;
  if (v8)
  {
    v10 = 0;
    v107 = v7;
    do
    {
      v134 = 0;
      geo::codec::multiSectionFeaturePoints(v7, v10, &v134);
      geo::codec::buildingFootprintExtrusionHeight(v7, v10);
      if (v134)
      {
        operator new();
      }

      ++v10;
      v7 = v107;
    }

    while (v10 != v8);
    v11 = v138;
    if (v138 != &v137)
    {
      do
      {
        v12 = v11[1];
        if (v12 != &v137)
        {
          v13 = v11[1];
          do
          {
            v14 = v11[2] == *(v13 + 16) && *(v11 + 6) == *(v13 + 24);
            if (v14 && (*(v11 + 28) == *(v13 + 28) ? (v15 = *(v11 + 9) == *(v13 + 36)) : (v15 = 0), v15) || (v11[2] == *(v13 + 28) ? (v16 = *(v11 + 6) == *(v13 + 36)) : (v16 = 0), v16 && (*(v11 + 28) == *(v13 + 16) ? (v17 = *(v11 + 9) == *(v13 + 24)) : (v17 = 0), v17)))
            {
              operator new();
            }

            v13 = *(v13 + 8);
          }

          while (v13 != &v137);
        }

        v11 = v11[1];
      }

      while (v12 != &v137);
    }

    v18 = 0;
    v19 = &OBJC_IVAR___VKPolygonalItemGroup__fillMeshInfo;
    if (v104)
    {
      v19 = &OBJC_IVAR___VKBuildingGroup__fillMeshInfoForPointyRoofs;
    }

    v103 = v19;
    v20 = 2.0;
    v21 = 0.5;
    v105 = v8;
    do
    {
      v136 = 0;
      v22 = geo::codec::multiSectionFeaturePoints(v7, v18, &v136);
      v23 = v136;
      if (v136 >= 3)
      {
        v24 = v22;
        v25 = geo::codec::buildingFootprintExtrusionHeight(v7, v18);
        v26 = geo::codec::buildingFootprintBaseHeight(v7, v18);
        v27 = 0;
        do
        {
          v134 = v24[v27];
          v135 = v25;
          p_maximum = &self->super._boundingBox._maximum;
          for (i = 2624; i != 2636; i += 4)
          {
            v30 = (&v134 + i - 2624);
            v31 = *v30;
            p_maximum[-1]._e[0] = fminf(*v30, p_maximum[-1]._e[0]);
            p_maximum->_e[0] = fmaxf(p_maximum->_e[0], v31);
            p_maximum = (p_maximum + 4);
          }

          ++v27;
        }

        while (v27 != v23);
        v134 = *v24;
        v135 = v26;
        v32 = &self->super._boundingBox._maximum;
        for (j = 2624; j != 2636; j += 4)
        {
          v34 = (&v134 + j - 2624);
          v35 = *v34;
          v32[-1]._e[0] = fminf(*v34, v32[-1]._e[0]);
          v32->_e[0] = fmaxf(v32->_e[0], v35);
          v32 = (v32 + 4);
        }

        md::PolygonSection::PolygonSection(&v134, v7, v18);
        md::MeshSet<ggl::PolygonBase::CompressedMeshMesh,ggl::PolygonBase::CompressedVbo>::prepareSpaceForPoints(self + *v103, v23, 3 * v23 - 6);
        if (v104)
        {
          v133 = 0;
          v132 = 0.0;
          v131 = 0;
          _computeScaleRotationTranslation(v24, v23, &v133, &v132, &v131);
          v36 = *(&v133 + 1);
          if (*(&v133 + 1) != 0.0)
          {
            v37 = *&v133;
            if (*&v133 != 0.0)
            {
              v38 = (*&v133 / *(&v133 + 1)) > v20 || (*&v133 / *(&v133 + 1)) < v21;
              v39 = !v38 && *&v133 <= a5;
              if (v39 && *(&v133 + 1) <= a5)
              {
                v143 = 0;
                LODWORD(v144) = 1065353216;
                v41 = v132 * v21;
                v42 = sinf(v132 * v21);
                for (k = 0; k != 12; k += 4)
                {
                  *&buf[k] = *(&v143 + k) * v42;
                }

                v44 = *&buf[8];
                v45 = cosf(v41);
                v128 = *buf;
                v129 = v44;
                v130 = v45;
                memset(&v122[1] + 4, 0, 28);
                *(v122 + 4) = 0u;
                LODWORD(v122[0]) = 1065353216;
                DWORD1(v122[1]) = 1065353216;
                DWORD2(v122[2]) = 1065353216;
                v123 = v131;
                v124 = 0x3F80000000000000;
                v46 = v114;
                gm::Quaternion<float>::toMatrix(v114, &v128);
                v47 = 0;
                v48 = v115;
                v20 = 2.0;
                do
                {
                  v49 = 0;
                  v50 = v48;
                  do
                  {
                    *v50 = LODWORD(v46[v49]);
                    v50 += 4;
                    v49 += 3;
                  }

                  while (v49 != 9);
                  ++v47;
                  v48 += 4;
                  ++v46;
                }

                while (v47 != 3);
                v116 = 0;
                v117 = 0;
                v118 = 0;
                v121 = 1065353216;
                v119 = 0;
                v120 = 0;
                gm::operator*<float,4,4,4>(&v143, v122, v115);
                v112 = 0;
                v111 = 0u;
                v110 = 0u;
                v109 = 0u;
                v113 = 1065353216;
                v108 = v37;
                *&v110 = v36;
                DWORD1(v111) = fminf(v37, v36);
                gm::operator*<float,4,4,4>(buf, &v143, &v108);
                v51 = (&g_gglBuildingBoundingBoxes + 24 * (v7[1].__shared_weak_owners_ & 1));
                v122[0] = xmmword_1B33AFF10;
                *&v122[1] = 0x80000000800000;
                v143 = &unk_1F2A572F0;
                v144 = v122;
                v145 = buf;
                v146 = &v143;
                gm::Box<float,3>::forEachCorner(v51, &v143);
                std::__function::__value_func<void ()(gm::Matrix<float,3,1> &)>::~__value_func[abi:nn200100](&v143);
                p_boundingBox = &self->super._boundingBox;
                for (m = 2636; m != 2648; m += 4)
                {
                  p_boundingBox->_minimum._e[0] = fminf(*(&v122[-164] + m - 12), p_boundingBox->_minimum._e[0]);
                  p_boundingBox->_maximum._e[0] = fmaxf(p_boundingBox->_maximum._e[0], *(&v122[-164] + m));
                  p_boundingBox = (p_boundingBox + 4);
                }

                v21 = 0.5;
              }
            }
          }
        }

        *buf = v7;
        *&buf[8] = v18;
        v143 = buf;
        v54 = std::__hash_table<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::__unordered_map_hasher<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::hash<std::pair<void const*,unsigned long>>,std::equal_to<std::pair<void const*,unsigned long>>,true>,std::__unordered_map_equal<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::equal_to<std::pair<void const*,unsigned long>>,std::hash<std::pair<void const*,unsigned long>>,true>,std::allocator<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>>>::__emplace_unique_key_args<std::pair<void const*,unsigned long>,std::piecewise_construct_t const&,std::tuple<std::pair<void const*,unsigned long>&&>,std::tuple<>>(&self->super._polygonEdges.__table_.__bucket_list_.__ptr_, v7, v18);
        std::vector<md::Edge>::reserve(v54 + 4, v23);
        v55 = 0;
        do
        {
          v56 = v55 + 1;
          if (v55 + 1 == v23)
          {
            v57 = 0;
          }

          else
          {
            v57 = v55 + 1;
          }

          v58 = v24[v57];
          *buf = v24[v55];
          *&buf[12] = v58;
          *&buf[8] = v25;
          *&buf[20] = v25;
          *&buf[24] = v55;
          *&v126 = v57;
          *(&v126 + 1) = v55;
          v127 = v57;
          for (n = v141; n != &v140; n = n[1])
          {
            v60 = n[2] == *buf && *(n + 6) == *&buf[8];
            if (!v60 || (*(n + 28) == *&buf[12] ? (v61 = *(n + 9) == *&buf[20]) : (v61 = 0), !v61))
            {
              if (n[2] != *&buf[12] || *(n + 6) != *&buf[20])
              {
                continue;
              }

              if (*(n + 28) != *buf || *(n + 9) != *&buf[8])
              {
                continue;
              }
            }

            if (&v140 != n)
            {
              goto LABEL_112;
            }

            break;
          }

          v64 = v54[5];
          v65 = v54[6];
          if (v64 >= v65)
          {
            v67 = v54[4];
            v68 = 0x6DB6DB6DB6DB6DB7 * ((v64 - v67) >> 3);
            v69 = v68 + 1;
            if ((v68 + 1) > 0x492492492492492)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v70 = 0x6DB6DB6DB6DB6DB7 * ((v65 - v67) >> 3);
            if (2 * v70 > v69)
            {
              v69 = 2 * v70;
            }

            if (v70 >= 0x249249249249249)
            {
              v71 = 0x492492492492492;
            }

            else
            {
              v71 = v69;
            }

            if (v71)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>(v71);
            }

            v72 = 56 * v68;
            *v72 = *buf;
            *(v72 + 16) = *&buf[16];
            *(v72 + 32) = v126;
            *(v72 + 48) = v127;
            v73 = v54[4];
            v74 = v54[5];
            v75 = 56 * v68 + v73 - v74;
            if (v73 != v74)
            {
              v76 = (v72 + v73 - v74);
              do
              {
                v77 = *v73;
                v78 = v73[1];
                v79 = v73[2];
                *(v76 + 6) = *(v73 + 6);
                *(v76 + 1) = v78;
                *(v76 + 2) = v79;
                *v76 = v77;
                v76 += 56;
                v73 = (v73 + 56);
              }

              while (v73 != v74);
              v73 = v54[4];
            }

            v66 = v72 + 56;
            v54[4] = v75;
            v54[5] = v72 + 56;
            v54[6] = 0;
            if (v73)
            {
              operator delete(v73);
              v23 = v136;
            }
          }

          else
          {
            *v64 = *buf;
            *(v64 + 16) = *&buf[16];
            *(v64 + 32) = v126;
            *(v64 + 48) = v127;
            v66 = v64 + 56;
          }

          v54[5] = v66;
LABEL_112:
          v55 = v56;
        }

        while (v56 < v23);
        v80 = v54[5] - v54[4];
        if (v80)
        {
          v81 = 2 * v23;
          if (2 * v23 < 0x10000)
          {
            v83 = 0x924924924924924ALL * (v80 >> 3);
            p_strokeMeshInfo = &self->_strokeMeshInfo;
            end = self->_strokeMeshInfo.var0.__val_._vertexAndIndexCounts.__end_;
            v86 = *(end - 4);
            if (v81 <= ~v86)
            {
              *(end - 4) = v86 + v81;
              *(end - 1) += v83;
            }

            else
            {
              cap = self->_strokeMeshInfo.var0.__val_._vertexAndIndexCounts.__cap_;
              if (end >= cap)
              {
                begin = p_strokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_;
                v90 = end - p_strokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_;
                v91 = v90 >> 3;
                v92 = (v90 >> 3) + 1;
                if (v92 >> 61)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v93 = cap - begin;
                if (v93 >> 2 > v92)
                {
                  v92 = v93 >> 2;
                }

                if (v93 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v94 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v94 = v92;
                }

                if (v94)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned short,unsigned int>>>(v94);
                }

                v95 = 8 * v91;
                *v95 = v81;
                *(v95 + 4) = v83;
                v88 = (8 * v91 + 8);
                v96 = (v95 - 8 * (v90 >> 3));
                memcpy(v96, begin, v90);
                v97 = p_strokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_;
                p_strokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_ = v96;
                self->_strokeMeshInfo.var0.__val_._vertexAndIndexCounts.__end_ = v88;
                self->_strokeMeshInfo.var0.__val_._vertexAndIndexCounts.__cap_ = 0;
                if (v97)
                {
                  operator delete(v97);
                }
              }

              else
              {
                *end = v81;
                *(end + 1) = v83;
                v88 = end + 4;
              }

              self->_strokeMeshInfo.var0.__val_._vertexAndIndexCounts.__end_ = v88;
            }

            storage = self->_strokeMeshInfo.var0.__val_._storage;
            ptr = self->_strokeMeshInfo.var0.__val_._storageClient.__ptr_;
            cntrl = self->_strokeMeshInfo.var0.__val_._storageClient.__cntrl_;
            if (cntrl)
            {
              atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
            }

            if (ptr && *ptr == storage && (*(storage + 40) & 1) == 0)
            {
              v101 = *(storage + 1) + v83;
              *storage += 32 * v23;
              *(storage + 1) = v101;
              v102 = *(ptr + 3) + v83;
              *(ptr + 2) += 32 * v23;
              *(ptr + 3) = v102;
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

            v82 = GEOGetVectorKitVKDefaultLog_log;
            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_1B2754000, v82, OS_LOG_TYPE_ERROR, "MeshSet: Cannot prepare space polygons points: polygon is too large", buf, 2u);
            }
          }
        }

        md::PolygonSection::~PolygonSection(&v134);
        v7 = v107;
      }

      ++v18;
    }

    while (v18 != v105);
  }

  std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear(&v137);
  std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear(&v140);
}

- (const)commitRangesToPointyRoofStrokeRenderItemBatcher:(void *)a3 forMeshAtIndex:(unint64_t)a4 cullingMask:(unsigned int)a5 featureIdPredicate:(function<BOOL (unsigned long)long
{
  v13 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v12, a6);
  _setupRenderItemBatcherForCullingMask(a3, a4, &self->_pointyRoofStrokeCullingGroups, a5, v12);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v12);
  return ggl::Batcher::commit(a3, 0, v10);
}

- (const)commitRangesToPointyRoofFillRenderItemBatcher:(void *)a3 forMeshAtIndex:(unint64_t)a4 cullingMask:(unsigned int)a5 featureIdPredicate:(function<BOOL (unsigned long)long
{
  v13 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v12, a6);
  _setupRenderItemBatcherForCullingMask(a3, a4, &self->_pointyRoofFillCullingGroups, a5, v12);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v12);
  return ggl::Batcher::commit(a3, 0, v10);
}

- (const)commitRangesToPointyRoofTopRenderItemBatcher:(void *)a3 forMeshAtIndex:(unint64_t)a4 cullingMask:(unsigned int)a5 featureIdPredicate:(function<BOOL (unsigned long)long
{
  v13 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v12, a6);
  _setupRenderItemBatcherForCullingMask(a3, a4, &self->_fillCullingGroupsForPointyRoofs, a5, v12);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v12);
  return ggl::Batcher::commit(a3, 0, v10);
}

- (const)commitRangesToExtrusionStrokeRenderItemBatcher:(void *)a3 forMeshAtIndex:(unint64_t)a4 cullingMask:(unsigned int)a5 featureIdPredicate:(function<BOOL (unsigned long)long
{
  v13 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v12, a6);
  _setupRenderItemBatcherForCullingMask(a3, a4, &self->_extrusionStrokeCullingGroups, a5, v12);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v12);
  return ggl::Batcher::commit(a3, 0, v10);
}

- (const)commitRangesToExtrusionFillRenderItemBatcher:(void *)a3 forMeshAtIndex:(unint64_t)a4 cullingMask:(unsigned int)a5 featureIdPredicate:(function<BOOL (unsigned long)long
{
  v13 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v12, a6);
  _setupRenderItemBatcherForCullingMask(a3, a4, &self->_extrusionFillCullingGroups, a5, v12);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v12);
  return ggl::Batcher::commit(a3, 0, v10);
}

- (void)styleQueriesForPointyRoofs:(BOOL)a3 selected:(BOOL)a4
{
  v4 = &OBJC_IVAR___VKBuildingGroup__selectedFlatRoofStyleQueries;
  if (a3)
  {
    v4 = &OBJC_IVAR___VKBuildingGroup__selectedStyleQueries;
    v5 = &OBJC_IVAR___VKBuildingGroup__styleQueries;
  }

  else
  {
    v5 = &OBJC_IVAR___VKBuildingGroup__flatRoofStyleQueries;
  }

  if (!a4)
  {
    v4 = v5;
  }

  return self + *v4;
}

- (VKBuildingGroup)initWithStyleQuery:(void *)a3 tileZoom:(float)a4 fixedAroundCentroid:(const void *)a5 contentScale:(float)a6
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VKBuildingGroup;
  if ([VKPolygonalItemGroup initWithStyleQuery:sel_initWithStyleQuery_tileZoom_fixedAroundCentroid_contentScale_ tileZoom:a3 fixedAroundCentroid:a5 contentScale:?])
  {
    operator new();
  }

  return 0;
}

@end