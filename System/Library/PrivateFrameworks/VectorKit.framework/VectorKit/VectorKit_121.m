void std::allocator_traits<std::allocator<md::OverlayTileData::OverlayTileResource::CustomTile>>::destroy[abi:nn200100]<md::OverlayTileData::OverlayTileResource::CustomTile,void,0>(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[13];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[11];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = a1[9];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  a1[5] = off_1F2A4C810;
  v6 = a1[6];
}

void *geo::_retain_ptr<objc_object * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = off_1F2A4C810;
  a1[1] = v3;
  return a1;
}

uint64_t __Block_byref_object_copy__28640(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

void PolylineOverlayRibbonBuilder::addPolylineRibbonTo(void *a1, unsigned int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, double a9, double a10)
{
  v19 = a3;
  v20 = [v19 lineCap];
  v55 = a4;
  v21 = a8;
  v22 = [v19 lineJoin];
  v23 = a5;
  if (v22 == 2)
  {
    v24 = 2;
  }

  else
  {
    v24 = v22 == 1;
  }

  v25 = ([v19 lineCap] - 1) < 2;
  v26 = [v19 miterLimit];
  v28 = v27;
  v29 = mdm::zone_mallocator::instance(v26);
  v30 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::PolylineOverlayRibbon>(v29);
  *(v30 + 49) = 0u;
  *(v30 + 40) = 0u;
  *(v30 + 24) = 0u;
  *(v30 + 8) = 0u;
  v31 = v28;
  *v30 = &unk_1F2A2D908;
  *(v30 + 13) = a9;
  *(v30 + 14) = a10;
  v30[120] = v25;
  v30[121] = v24;
  *(v30 + 31) = v31;
  *(v30 + 32) = 1043511491;
  v59 = v30;
  if (v20 == 1)
  {
    v32 = 0;
  }

  else
  {
    v32 = a7;
  }

  v30[96] = v32;
  if (v20 == 1)
  {
    v33 = 0;
  }

  else
  {
    v33 = v21;
  }

  v30[97] = v33;
  *(v30 + 10) = a6;
  *(v30 + 11) = v55;
  *(v30 + 9) = v23;
  v56 = a2;
  [v19 style];
  v57 = v60;
  v58 = a6 != 0;
  *&v60 = &v56;
  v34 = std::__hash_table<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::hash<md::PolylineOverlayBatchKey>,std::equal_to<md::PolylineOverlayBatchKey>,true>,std::__unordered_map_equal<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::PolylineOverlayBatchKey>,std::hash<md::PolylineOverlayBatchKey>,true>,std::allocator<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::PolylineOverlayBatchKey,std::piecewise_construct_t const&,std::tuple<md::PolylineOverlayBatchKey const&>,std::tuple<>>(a1, a2, a6 != 0);
  v35 = v34;
  v37 = v34[7];
  v36 = v34[8];
  if (v37 >= v36)
  {
    v40 = v34[6];
    v41 = v37 - v40;
    v42 = (v37 - v40) >> 3;
    v43 = v42 + 1;
    if ((v42 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v44 = v36 - v40;
    if (v44 >> 2 > v43)
    {
      v43 = v44 >> 2;
    }

    if (v44 >= 0x7FFFFFFFFFFFFFF8)
    {
      v45 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v45 = v43;
    }

    v63 = v34 + 9;
    if (v45)
    {
      v46 = mdm::zone_mallocator::instance(v34);
      v47 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>>(v46, v45);
      v40 = v35[6];
      v41 = v35[7] - v40;
      v48 = v41 >> 3;
    }

    else
    {
      v47 = 0;
      v48 = v42;
    }

    v49 = &v47[8 * v42];
    v50 = &v47[8 * v45];
    v51 = v59;
    v59 = 0;
    v52 = &v49[-8 * v48];
    *v49 = v51;
    v39 = v49 + 8;
    memcpy(v52, v40, v41);
    v53 = v35[6];
    v35[6] = v52;
    v35[7] = v39;
    v54 = v35[8];
    v35[8] = v50;
    v61 = v53;
    v62 = v54;
    *&v60 = v53;
    *(&v60 + 1) = v53;
    std::__split_buffer<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(&v60);
  }

  else
  {
    v38 = v59;
    v59 = 0;
    *v37 = v38;
    v39 = v37 + 8;
  }

  v35[7] = v39;
  if (*(&v57 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v57 + 1));
  }

  std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>::~unique_ptr[abi:nn200100](&v59);
}

void sub_1B30C67C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>::~unique_ptr[abi:nn200100](va);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__71(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t __Block_byref_object_dispose__72(uint64_t a1)
{
  result = *(a1 + 48);
  *(a1 + 48) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t __Block_byref_object_copy__75(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t __Block_byref_object_dispose__76(uint64_t a1)
{
  result = *(a1 + 48);
  *(a1 + 48) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1B30C8E68(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  MEMORY[0x1B8C62190](v3, v1);
  _Unwind_Resume(a1);
}

double __copy_helper_block_ea8_64c38_ZTSNSt3__18optionalIN3geo8QuadTileEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = 0;
  *(a1 + 96) = 0;
  if (*(a2 + 96) == 1)
  {
    *(a1 + 88) = 0;
    result = *(a2 + 68);
    *(a1 + 68) = result;
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = 1;
  }

  return result;
}

void PolylineOverlayRibbonBuilder::finalizePolylineBatch(uint64_t *a1, uint64_t *a2, int **a3, uint64_t a4, void *a5, uint64_t a6, char a7, char a8, double a9, double a10)
{
  v19 = *a4;
  v18 = *(a4 + 8);
  std::vector<gm::Matrix<float,2,1>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<gm::Matrix<float,2,1> const*>,std::__wrap_iter<gm::Matrix<float,2,1> const*>>(a4, *(a4 + 8), a1, a2, a2 - a1);
  if (a5)
  {
    v21 = *a3;
    v20 = a3[1];
    v22 = v20 - *a3;
    if (v22 >> 2 >= 1)
    {
      v24 = a5[1];
      v23 = a5[2];
      if (v23 - v24 >= v22)
      {
        while (v21 != v20)
        {
          v31 = *v21++;
          *v24++ = v31;
        }

        a5[1] = v24;
      }

      else
      {
        v55 = a7;
        v25 = *a5;
        v26 = v24 - *a5;
        v27 = (v22 >> 2) + (v26 >> 2);
        if (v27 >> 62)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v28 = v23 - v25;
        v29 = (v23 - v25) >> 1;
        if (v29 > v27)
        {
          v27 = v29;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v30 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v27;
        }

        v54 = a8;
        if (v30)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v30);
        }

        v32 = 4 * (v26 >> 2);
        v33 = (v32 + v22);
        v34 = v32;
        do
        {
          v35 = *v21++;
          *v34++ = v35;
          v22 -= 4;
        }

        while (v22);
        memcpy(v33, v24, a5[1] - v24);
        v36 = *a5;
        v37 = &v33[a5[1] - v24];
        a5[1] = v24;
        v38 = v24 - v36;
        v39 = (v32 - (v24 - v36));
        memcpy(v39, v36, v38);
        v40 = *a5;
        *a5 = v39;
        a5[1] = v37;
        a5[2] = 0;
        a8 = v54;
        a7 = v55;
        if (v40)
        {
          operator delete(v40);
        }
      }
    }
  }

  v41 = (v18 - v19) >> 3;
  v42 = ((*(a4 + 8) - *a4) >> 3) - v41;
  v43 = *(a6 + 8);
  v44 = *(a6 + 16);
  if (v43 >= v44)
  {
    v46 = *a6;
    v47 = v43 - *a6;
    v48 = 0xAAAAAAAAAAAAAAABLL * (v47 >> 4) + 1;
    if (v48 > 0x555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v49 = a7;
    v50 = 0xAAAAAAAAAAAAAAABLL * ((v44 - v46) >> 4);
    if (2 * v50 > v48)
    {
      v48 = 2 * v50;
    }

    if (v50 >= 0x2AAAAAAAAAAAAAALL)
    {
      v51 = 0x555555555555555;
    }

    else
    {
      v51 = v48;
    }

    if (v51)
    {
      if (v51 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v52 = 16 * (v47 >> 4);
    *v52 = v41;
    *(v52 + 8) = v42;
    *(v52 + 16) = v49;
    *(v52 + 17) = a8;
    *(v52 + 24) = a9;
    *(v52 + 32) = a10;
    *(v52 + 40) = 0;
    v45 = v52 + 48;
    v53 = v52 - v47;
    memcpy((v52 - v47), v46, v47);
    *a6 = v53;
    *(a6 + 8) = v45;
    *(a6 + 16) = 0;
    if (v46)
    {
      operator delete(v46);
    }
  }

  else
  {
    *v43 = v41;
    *(v43 + 8) = v42;
    *(v43 + 16) = a7;
    *(v43 + 17) = a8;
    *(v43 + 24) = a9;
    *(v43 + 32) = a10;
    v45 = v43 + 48;
    *(v43 + 40) = 0;
  }

  *(a6 + 8) = v45;
}

uint64_t std::__function::__func<generateTexture(std::shared_ptr<ggl::TextureData2D> const&,VKSharedResources const*)::$_0,std::allocator<generateTexture(std::shared_ptr<ggl::TextureData2D> const&,VKSharedResources const*)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A2D570;
  a2[1] = v2;
  return result;
}

void md::OverlayLayerDataSource::createDebugNode(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  gdc::LayerDataSource::createDebugNode(a1, a2);
  v9 = 13;
  strcpy(&v8, "Content Scale");
  v4 = COERCE_FLOAT(atomic_load((a1 + 632)));
  gdc::DebugTreeValue::DebugTreeValue(v5, v4);
  gdc::DebugTreeNode::addProperty(a2, &v8, v5);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }
}

void md::OverlayLayerDataSource::constructRequests(uint64_t a1, void **a2, void **a3)
{
  v84 = *MEMORY[0x1E69E9840];
  if (a2 != a3)
  {
    v3 = a2;
    v4 = a1;
    do
    {
      gdc::Tiled::tileFromLayerDataKey(&v65, (*v3)[2]);
      v5 = *(v4 + 32);
      if (v5 == 71 || v5 == 11)
      {
        md::OverlayContainer::belowOverlays(&v70, *(v4 + 640));
      }

      else
      {
        md::OverlayContainer::aboveOverlays(&v70, *(v4 + 640));
      }

      v7 = v70;
      v8 = v71;
      if (v70 != v71)
      {
        v57 = *(v4 + 32) - 71;
        v54 = v71;
        do
        {
          v9 = *(v7 + 8);
          v10 = [v9 areResourcesRequired];

          if (v57 < 2 == v10)
          {
            v68 = 0;
            v69 = 0;
            v67 = 0;
            v11 = *(v7 + 8);
            v64 = [v11 customTileProvider];

            if (v64)
            {
              v12 = v66;
              if ([v64 maximumZ] >= v12 && objc_msgSend(v64, "minimumZ") <= v12)
              {
                v60 = (*v3)[14];
                if (((*v3)[12] & 0x100000000) != 0)
                {
                  v13 = (*v3)[12];
                }

                else
                {
                  v13 = 2147483646;
                }

                v14 = v64;
                v15 = [v14 tileSize];
                v16 = [v14 minimumZ];
                v62 = v14;
                v17 = [v14 maximumZ];
                v55 = v7;
                v77 = 0;
                v78 = 0;
                v79 = 0;
                md::TileAdjustmentHelpers::adjustTileForSize(0x200u, v15, &v65, &v77);
                v19 = v77;
                v18 = v78;
                if (*&v77 != *&v78)
                {
                  do
                  {
                    v20 = *(*&v19 + 1);
                    if (v16 <= v20 && v17 >= v20)
                    {
                      v81 = vrev64_s32(*(*&v19 + 4));
                      v82.i32[0] = v20;
                      v82.i32[1] = [v62 providerID];
                      LODWORD(v83) = v15;
                      gdc::ResourceKey::ResourceKey(&v72, 0, 41, &v81, 5, v60, v13);
                      v22 = v68;
                      if (v68 >= v69)
                      {
                        v26 = std::vector<gdc::ResourceKey>::__emplace_back_slow_path<gdc::ResourceKey>(&v67, &v72);
                      }

                      else
                      {
                        v23 = v68 + 5;
                        *v68 = v72;
                        v22[1] = v22 + 5;
                        v22[2] = v22 + 5;
                        v22[3] = v22 + 5;
                        v24 = v74;
                        v22[4] = *(&v74 + 1);
                        v25 = v73;
                        if (v73 == v24)
                        {
                          v22[2] = &v23[*(&v73 + 1) - v73];
                          v27 = *(&v73 + 1);
                          while (v25 != v27)
                          {
                            v28 = *v25++;
                            *v23++ = v28;
                          }
                        }

                        else
                        {
                          *(v22 + 1) = v73;
                          v74 = 0u;
                          v73 = 0u;
                        }

                        v22[9] = v75;
                        *(v22 + 5) = v76;
                        v26 = (v22 + 12);
                      }

                      v68 = v26;
                      if (v73 != v74)
                      {
                        free(v73);
                      }
                    }

                    *&v19 += 32;
                  }

                  while (*&v19 != *&v18);
                  v19 = v77;
                }

                v8 = v54;
                if (v19)
                {
                  v78 = v19;
                  operator delete(*&v19);
                }

                v7 = v55;
              }
            }

            v29 = *(v7 + 8);
            v30 = [v29 rasterTileProvider];

            v58 = v30;
            if (v30)
            {
              v31 = v66;
              if ([v58 maximumZ] >= v31 && objc_msgSend(v58, "minimumZ") <= v31)
              {
                v56 = v7;
                v32 = (*v3)[14];
                if (((*v3)[12] & 0x100000000) != 0)
                {
                  v33 = (*v3)[12];
                }

                else
                {
                  v33 = 2147483646;
                }

                v34 = v58;
                v35 = [v34 tileSize];
                v63 = [v34 minimumZ];
                v61 = [v34 maximumZ];
                v36 = [v34 colorMap];
                v81 = 0;
                v82 = 0;
                v83 = 0;
                md::TileAdjustmentHelpers::adjustTileForSize(0x200u, v35, &v65, &v81);
                v37 = v81;
                v59 = v82;
                if (*&v81 != *&v82)
                {
                  v38 = v36 != 0;
                  do
                  {
                    v39 = *(*&v37 + 1);
                    if (v63 <= v39 && v61 >= v39)
                    {
                      for (i = 0; i < [v34 keyframesCount]; ++i)
                      {
                        v77 = vrev64_s32(*(*&v37 + 4));
                        v78.i32[0] = *(*&v37 + 1);
                        v78.i32[1] = [v34 providerID];
                        v79 = __PAIR64__(i, v35);
                        v80 = v38;
                        gdc::ResourceKey::ResourceKey(&v72, 0, 35, &v77, 7, v32, v33);
                        v42 = v68;
                        if (v68 >= v69)
                        {
                          v46 = std::vector<gdc::ResourceKey>::__emplace_back_slow_path<gdc::ResourceKey>(&v67, &v72);
                        }

                        else
                        {
                          v43 = v68 + 5;
                          *v68 = v72;
                          v42[1] = v42 + 5;
                          v42[2] = v42 + 5;
                          v42[3] = v42 + 5;
                          v44 = v74;
                          v42[4] = *(&v74 + 1);
                          v45 = v73;
                          if (v73 == v44)
                          {
                            v42[2] = &v43[*(&v73 + 1) - v73];
                            v47 = *(&v73 + 1);
                            while (v45 != v47)
                            {
                              v48 = *v45++;
                              *v43++ = v48;
                            }
                          }

                          else
                          {
                            *(v42 + 1) = v73;
                            v74 = 0u;
                            v73 = 0u;
                          }

                          v42[9] = v75;
                          *(v42 + 5) = v76;
                          v46 = (v42 + 12);
                        }

                        v68 = v46;
                        if (v73 != v74)
                        {
                          free(v73);
                        }
                      }
                    }

                    *&v37 += 32;
                  }

                  while (*&v37 != *&v59);
                  v37 = v81;
                  v4 = a1;
                }

                v8 = v54;
                v7 = v56;
                if (v37)
                {
                  v82 = v37;
                  operator delete(*&v37);
                }
              }
            }

            v49 = v67;
            v50 = v68;
            while (v49 != v50)
            {
              if (v10)
              {
                v51 = 0;
              }

              else
              {
                v51 = *(v4 + 636) ^ 1;
              }

              gdc::LayerDataRequest::request(*v3, v49, v51);
              v49 += 96;
            }

            v72 = &v67;
            std::vector<gdc::ResourceKey>::__destroy_vector::operator()[abi:nn200100](&v72);
          }

          v7 += 24;
        }

        while (v7 != v8);
      }

      v72 = &v70;
      std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v72);
      v3 += 2;
    }

    while (v3 != a3);
  }
}

void sub_1B30C9928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char *a30, void *a31, uint64_t a32, uint64_t a33)
{
  a30 = &a24;
  std::vector<gdc::ResourceKey>::__destroy_vector::operator()[abi:nn200100](&a30);
  a30 = &a27;
  std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&a30);
  _Unwind_Resume(a1);
}

uint64_t std::vector<gdc::ResourceKey>::__emplace_back_slow_path<gdc::ResourceKey>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::ResourceKey>>(v6);
  }

  v7 = 96 * v2;
  *(&v15 + 1) = 0;
  *v7 = *a2;
  geo::small_vector_base<unsigned char>::small_vector_base((v7 + 8), a2 + 8, (v7 + 40));
  *(v7 + 72) = *(a2 + 72);
  *(v7 + 80) = *(a2 + 80);
  *&v15 = v7 + 96;
  v8 = a1[1];
  v9 = v7 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::ResourceKey>,gdc::ResourceKey*>(*a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v15;
  *(a1 + 1) = v15;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v14[0] = v10;
  v14[1] = v10;
  std::__split_buffer<gdc::ResourceKey>::~__split_buffer(v14);
  return v13;
}

void md::OverlayLayerDataSource::addFallbackData(md::OverlayLayerDataSource *this, const gdc::SelectionContext *a2)
{
  v3 = *(a2 + 1);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  gdc::LayerDataCollector::missingData(&v20, v3, *(this + 16));
  v34[0] = v20;
  v34[1] = *v21;
  while (1)
  {
    v33[0] = v22;
    v33[1] = v23;
    if (!gdc::MissingDataIterator::operator!=(v34, v33))
    {
      break;
    }

    v4 = *(*(&v34[0] + 1) + 113);
    v5 = *(*(&v34[0] + 1) + 116);
    v6 = *(*(&v34[0] + 1) + 112);
    v7 = *(*(&v34[0] + 1) + 128);
    v8 = *(*(&v34[0] + 1) + 136);
    gdc::Tiled::tileFromLayerDataKey(v33, *(*(&v34[0] + 1) + 16));
    v9 = 1 << SBYTE1(v33[0]);
    v28[0] = v33[0];
    v29 = (SDWORD1(v33[0]) % v9 + v9) % v9;
    v30 = (SDWORD2(v33[0]) % v9 + v9) % v9;
    v31 = 0;
    v32 = 1;
    gdc::FallbackCollector::start((this + 648), v28);
    md::TileAdjustmentHelpers::getFallbackDataForTile(this + 94, *(this + 16), v28, *(this + 2), this + 648);
    v24[1] = v4;
    v25 = v5;
    v24[0] = v6;
    v26 = v7;
    v27 = v8;
    gdc::FallbackCollector::collectFallbackData(this + 648, &v35, 1, 0, v24);
    gdc::FallbackCollector::end((this + 648), v10);
    gdc::MissingDataIterator::operator++(v34);
  }

  v11 = v36;
  if (v35 != v36)
  {
    v12 = v35 + 120;
    do
    {
      v13 = *v12;
      v14 = *(v12 + 8);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!md::OverlayTileData::hasTileData(v13) || *(this + 16) - 71 <= 1)
      {
        v15 = *grl::IconMetricsRenderResult::getFillRect(*v12);
        gdc::LayerDataKey::LayerDataKey(v17, v12 - 88);
        gdc::LayerDataRequestKey::LayerDataRequestKey(&v20, v15, v17);
        gdc::LayerDataCollector::addFallbackData(v3, &v20, (v12 - 120), v12);
        if (v21[0] != v22)
        {
          free(v21[0]);
        }

        if (v18 != v19)
        {
          free(v18);
        }
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v14);
      }

      v16 = v12 + 16;
      v12 += 136;
    }

    while (v16 != v11);
  }

  *&v20 = &v35;
  std::vector<gdc::FallbackData>::__destroy_vector::operator()[abi:nn200100](&v20);
}

void sub_1B30C9DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  a21 = (v22 - 120);
  std::vector<gdc::FallbackData>::__destroy_vector::operator()[abi:nn200100](&a21);
  _Unwind_Resume(a1);
}

void md::OverlayLayerDataSource::didDeactivate(md::OverlayLayerDataSource *this)
{
  v1 = (this + 888);
  v2 = *(this + 112);
  *v1 = 0u;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void md::OverlayLayerDataSource::didActivate(md::OverlayLayerDataSource *this)
{
  v2 = *(this + 110);
  if (v2)
  {
    (*(*v2 + 48))(&v7);
    v4 = v7;
    v3 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    *(this + 111) = v4;
    v5 = *(this + 112);
    *(this + 112) = v3;
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
      v3 = v8;
    }

    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  else
  {
    v6 = std::__throw_bad_function_call[abi:nn200100]();
    md::OverlayLayerDataSource::~OverlayLayerDataSource(v6);
  }
}

void md::OverlayLayerDataSource::~OverlayLayerDataSource(md::OverlayLayerDataSource *this)
{
  md::OverlayLayerDataSource::~OverlayLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  v12[4] = *MEMORY[0x1E69E9840];
  *this = &unk_1F2A2D3E8;
  v2 = *(*(this + 74) + 56);
  v12[0] = &unk_1F2A2D6E8;
  v12[3] = v12;
  geo::TaskQueue::barrierSync(v2, v12);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v12);
  v3 = *(this + 100);
  os_unfair_lock_lock((v3 + 8));
  *v3 = 0;
  os_unfair_lock_unlock((v3 + 8));
  v4 = *(this + 101);
  *(this + 50) = 0u;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  objc_storeStrong(this + 114, 0);

  *(this + 113) = &unk_1F2A2D6C8;
  v5 = *(this + 112);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__function::__value_func<std::shared_ptr<md::LabelManager> ()(void)>::~__value_func[abi:nn200100](this + 856);
  v6 = *(this + 106);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 103);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 101);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(this + 97);
  if (v9)
  {
    *(this + 98) = v9;
    operator delete(v9);
  }

  v10 = *(this + 94);
  if (v10)
  {
    *(this + 95) = v10;
    operator delete(v10);
  }

  geo::Pool<gdc::FallbackNode>::~Pool(this + 704);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 85));
  *(this + 76) = &unk_1F2A59028;

  v11 = *(this + 75);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  gdc::LayerDataSource::~LayerDataSource(this);
}

void sub_1B30CA0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  *(v4 + 904) = &unk_1F2A2D6C8;

  v6 = *(v4 + 896);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  std::__function::__value_func<std::shared_ptr<md::LabelManager> ()(void)>::~__value_func[abi:nn200100](v4 + 856);
  v7 = *(v4 + 848);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(v4 + 824);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(v4 + 808);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(v4 + 776);
  if (v10)
  {
    *(v4 + 784) = v10;
    operator delete(v10);
  }

  v11 = *(v4 + 752);
  if (v11)
  {
    *(v4 + 760) = v11;
    operator delete(v11);
  }

  geo::Pool<gdc::FallbackNode>::~Pool(v4 + 704);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v4 + 680));
  *(v4 + 608) = &unk_1F2A59028;

  v12 = *(v4 + 600);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  gdc::LayerDataSource::~LayerDataSource(v4);
  _Unwind_Resume(a1);
}

void geo::_retain_ptr<OverlayLayerDataSourceRenderTargetSizeObserver * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2D6C8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<OverlayLayerDataSourceRenderTargetSizeObserver * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2D6C8;

  return a1;
}

uint64_t std::__shared_ptr_pointer<md::RasterTileOverlayStyle *,std::shared_ptr<md::RasterTileOverlayStyle>::__shared_ptr_default_delete<md::RasterTileOverlayStyle,md::RasterTileOverlayStyle>,std::allocator<md::RasterTileOverlayStyle>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::RasterTileOverlayStyle *,std::shared_ptr<md::RasterTileOverlayStyle>::__shared_ptr_default_delete<md::RasterTileOverlayStyle,md::RasterTileOverlayStyle>,std::allocator<md::RasterTileOverlayStyle>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *std::__shared_ptr_pointer<md::CallbackHolder<md::OverlayLayerDataSource> *,std::shared_ptr<md::CallbackHolder<md::OverlayLayerDataSource>>::__shared_ptr_default_delete<md::CallbackHolder<md::OverlayLayerDataSource>,md::CallbackHolder<md::OverlayLayerDataSource>>,std::allocator<md::CallbackHolder<md::OverlayLayerDataSource>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    *result = 0;
    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::CallbackHolder<md::OverlayLayerDataSource> *,std::shared_ptr<md::CallbackHolder<md::OverlayLayerDataSource>>::__shared_ptr_default_delete<md::CallbackHolder<md::OverlayLayerDataSource>,md::CallbackHolder<md::OverlayLayerDataSource>>,std::allocator<md::CallbackHolder<md::OverlayLayerDataSource>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::OverlayLayerDataSource::conditionalInvalidate(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 800);
  v11 = *(a1 + 808);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = **(a1 + 592);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3321888768;
  v13[2] = ___ZN2md22OverlayLayerDataSource21conditionalInvalidateENSt3__18functionIFbRKNS1_10shared_ptrINS_15OverlayTileDataEEEEEES9_bNS1_13unordered_setINS_19OverlayTileDataTypeENS1_4hashISB_EENS1_8equal_toISB_EENS1_9allocatorISB_EEEE_block_invoke;
  v13[3] = &__block_descriptor_161_ea8_40c75_ZTSNSt3__18weak_ptrIN2md14CallbackHolderINS1_22OverlayLayerDataSourceEEEEE56c68_ZTSNSt3__18functionIFbRKNS_10shared_ptrIN2md15OverlayTileDataEEEEEE88c68_ZTSNSt3__18functionIFbRKNS_10shared_ptrIN2md15OverlayTileDataEEEEEE120c107_ZTSKNSt3__113unordered_setIN2md19OverlayTileDataTypeENS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorIS2_EEEE_e5_v8__0l;
  v13[4] = a1;
  v13[5] = v10;
  v14 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v15, a2);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v16, a3);
  v17[40] = a4;
  std::unordered_set<md::OverlayTileDataType>::unordered_set(v17, a5);
  dispatch_async(v12, v13);

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v17);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v16);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v15);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }
}

void sub_1B30CA524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v17 + 88);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v18 + 56);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  _Unwind_Resume(a1);
}

void ___ZN2md22OverlayLayerDataSource21conditionalInvalidateENSt3__18functionIFbRKNS1_10shared_ptrINS_15OverlayTileDataEEEEEES9_bNS1_13unordered_setINS_19OverlayTileDataTypeENS1_4hashISB_EENS1_8equal_toISB_EENS1_9allocatorISB_EEEE_block_invoke(uint64_t a1)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (*(a1 + 40))
      {
        v5 = *(*(v3 + 592) + 8);
        v9[0] = &unk_1F2A2D7A0;
        v9[3] = v9;
        geo::TaskQueue::barrierSync(v5, v9);
        std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v9);
        std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v6, a1 + 56);
        std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v7, a1 + 88);
        v7[32] = *(a1 + 160);
        std::unordered_set<md::OverlayTileDataType>::unordered_set(v8, a1 + 120);
        v8[8] = 0;
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

void sub_1B30CA71C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  std::__function::__value_func<void ()(md::OverlayLayerDataSource *)>::~__value_func[abi:nn200100](va1);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v4 + 72);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v3 + 32);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](va);
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void __destroy_helper_block_ea8_40c75_ZTSNSt3__18weak_ptrIN2md14CallbackHolderINS1_22OverlayLayerDataSourceEEEEE56c68_ZTSNSt3__18functionIFbRKNS_10shared_ptrIN2md15OverlayTileDataEEEEEE88c68_ZTSNSt3__18functionIFbRKNS_10shared_ptrIN2md15OverlayTileDataEEEEEE120c107_ZTSKNSt3__113unordered_setIN2md19OverlayTileDataTypeENS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorIS2_EEEE(uint64_t a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 120);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](a1 + 88);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t __copy_helper_block_ea8_40c75_ZTSNSt3__18weak_ptrIN2md14CallbackHolderINS1_22OverlayLayerDataSourceEEEEE56c68_ZTSNSt3__18functionIFbRKNS_10shared_ptrIN2md15OverlayTileDataEEEEEE88c68_ZTSNSt3__18functionIFbRKNS_10shared_ptrIN2md15OverlayTileDataEEEEEE120c107_ZTSKNSt3__113unordered_setIN2md19OverlayTileDataTypeENS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorIS2_EEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](a1 + 56, a2 + 56);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](a1 + 88, a2 + 88);
  return std::unordered_set<md::OverlayTileDataType>::unordered_set(a1 + 120, a2 + 120);
}

void sub_1B30CA904(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v1 + 88);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v1 + 56);
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void md::CallbackHolder<md::OverlayLayerDataSource>::call(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 2);
  if (*&a1->_os_unfair_lock_opaque)
  {
    v6 = *&a1->_os_unfair_lock_opaque;
    v4 = *(a2 + 24);
    if (!v4)
    {
      v5 = std::__throw_bad_function_call[abi:nn200100]();
      os_unfair_lock_unlock(a1 + 2);
      _Unwind_Resume(v5);
    }

    (*(*v4 + 48))(v4, &v6);
  }

  os_unfair_lock_unlock(a1 + 2);
}

uint64_t std::__function::__value_func<void ()(md::OverlayLayerDataSource *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource21conditionalInvalidateENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEESB_bNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISD_EENS_8equal_toISD_EENS_9allocatorISD_EEEEEUb_E3__2NSI_ISL_EEFvPS3_EEclEOSN_(uint64_t a1, uint64_t **a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v37, a1 + 8);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v35, a1 + 40);
  v4 = *(a1 + 72);
  gdc::LayerDataSource::cancelAllLayerDataRequests(v3);
  v29 = 0;
  v30 = 0uLL;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v5 = v3[2];
  v6 = *(v5 + 8);
  if (v6 != v5)
  {
    do
    {
      v7 = *(v6 + 136);
      v25[0] = *(v6 + 128);
      v25[1] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
      }

      if (!v38)
      {
        goto LABEL_46;
      }

      if ((*(*v38 + 48))(v38, v25))
      {
        gdc::LayerDataSource::cancelLayerDataRequest(v3, (v6 + 16));
        if (!v36)
        {
          goto LABEL_46;
        }

        if ((((*(*v36 + 48))(v36, v25) | v4 ^ 1) & 1) != 0 || !md::OverlayTileData::hasTileData(v25[0]))
        {
          if (!v36)
          {
            goto LABEL_46;
          }

          if ((*(*v36 + 48))(v36, v25))
          {
            if (v30 >= *(&v30 + 1))
            {
              v9 = 0x6DB6DB6DB6DB6DB7 * ((v30 - v29) >> 4) + 1;
              if (v9 > 0x249249249249249)
              {
                goto LABEL_47;
              }

              if (0xDB6DB6DB6DB6DB6ELL * ((*(&v30 + 1) - v29) >> 4) > v9)
              {
                v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(&v30 + 1) - v29) >> 4);
              }

              if ((0x6DB6DB6DB6DB6DB7 * ((*(&v30 + 1) - v29) >> 4)) >= 0x124924924924924)
              {
                v10 = 0x249249249249249;
              }

              else
              {
                v10 = v9;
              }

              v34 = &v29;
              if (v10)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>>(v10);
              }

              v31 = 0;
              v32 = 16 * ((v30 - v29) >> 4);
              v33 = v32;
              gdc::LayerDataRequestKey::LayerDataRequestKey(v32, v6 + 16);
              *&v33 = v33 + 112;
              v11 = &v29[v32 - v30];
              std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKey*>(v29, v30, v11);
              v12 = v29;
              v13 = *(&v30 + 1);
              v29 = v11;
              v22 = v33;
              v30 = v33;
              *&v33 = v12;
              *(&v33 + 1) = v13;
              v31 = v12;
              v32 = v12;
              std::__split_buffer<gdc::LayerDataRequestKey>::~__split_buffer(&v31);
              v8 = v22;
            }

            else
            {
              v8 = gdc::LayerDataRequestKey::LayerDataRequestKey(v30, v6 + 16) + 112;
            }

            *&v30 = v8;
          }

          else
          {
            gdc::LayerData::invalidate(v25[0]);
          }
        }

        else
        {
          std::vector<std::shared_ptr<md::RouteLineOverlayGroup>>::emplace_back<std::shared_ptr<md::RouteLineOverlayGroup> const&>(&v26, v25);
        }
      }

      if (v25[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v25[1]);
      }

      v6 = *(v6 + 8);
    }

    while (v6 != v5);
    v14 = v29;
    v15 = v30;
    while (v14 != v15)
    {
      gdc::LayerDataStore::remove(v3[2], v14);
      v14 += 112;
    }
  }

  if ((v4 & 1) != 0 && v26 != v27)
  {
    v17 = *v26;
    v16 = v26[1];
    if (v16)
    {
      atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
    }

    std::unordered_set<md::OverlayTileDataType>::unordered_set(&v31, a1 + 80);
    md::OverlayLayerDataSource::_updateNonTileOverlays(v3, v17, v16, &v31);
  }

  gdc::LayerDataStore::pending(v25, v3[2]);
  v18 = v25[0];
  v19 = v25[1];
  if (v25[0] != v25[1])
  {
    while (1)
    {
      v20 = *(v18 + 15);
      v23 = *(v18 + 14);
      v24 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v38)
      {
        break;
      }

      if ((*(*v38 + 48))(v38, &v23))
      {
        gdc::LayerDataSource::cancelLayerDataRequest(v3, v18);
        gdc::LayerData::invalidate(v23);
      }

      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v24);
      }

      v18 = (v18 + 128);
      if (v18 == v19)
      {
        goto LABEL_45;
      }
    }

LABEL_46:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_47:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_45:
  gdc::LayerDataSource::requestUpdate(v3);
  v23 = v25;
  std::vector<std::pair<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>::__destroy_vector::operator()[abi:nn200100](&v23);
  v25[0] = &v26;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](v25);
  v26 = &v29;
  std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&v26);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v35);
  return std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v37);
}

uint64_t std::vector<gdc::LayerDataRequestKey>::__emplace_back_slow_path<gdc::LayerDataRequestKey&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v5 = 0x249249249249249;
  }

  else
  {
    v5 = v3;
  }

  v15 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>>(v5);
  }

  v6 = 112 * v2;
  gdc::LayerDataRequestKey::LayerDataRequestKey(v6, a2);
  v14 = (v6 + 112);
  v7 = a1[1];
  v8 = v6 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKey*>(*a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v14;
  *(a1 + 1) = v14;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v13[0] = v9;
  v13[1] = v9;
  std::__split_buffer<gdc::LayerDataRequestKey>::~__split_buffer(v13);
  return v12;
}

void md::OverlayLayerDataSource::_updateNonTileOverlays(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 16), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((a3 + 16), 1uLL, memory_order_relaxed);
  }

  std::unordered_set<md::OverlayTileDataType>::unordered_set(v4, a4);
  v4[12] = 0;
  operator new();
}

void sub_1B30CB1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v14 - 88);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v13 + 24);
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::pair<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 16;
        std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__function::__func<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0,std::allocator<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = a1[2];
      if (!v6)
      {
LABEL_59:
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        return;
      }

      v7 = *(v3 + 616);
      (*(*[v7 gglDevice] + 24))(&v38);

      v35 = &v35;
      v36 = &v35;
      v37 = 0;
      memset(v34, 0, sizeof(v34));
      [*(v3 + 912) size];
      v33[0] = v8;
      v33[1] = v9;
      v10 = *(grl::IconMetricsRenderResult::getFillRect(v6) + 8);
      if (v10 > 0x46)
      {
        if (v10 == 72)
        {
LABEL_13:
          v11 = *(v3 + 616);
          md::OverlayContainer::aboveOverlays(v32, *(v3 + 640));
          v13 = *(v6 + 736);
          v30 = *(v6 + 728);
          v31 = v13;
          if (v13)
          {
            atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          }

LABEL_15:
          _processOverlays((v6 + 168), 1.0, v33, v11, &v38, v32, &v35, v34, &v30, v6 + 744, v3 + 840, 0, *(v3 + 32) - 71 < 2, a1 + 4);
          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v31);
          }

          v39 = v32;
          std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v39);

LABEL_18:
          v32[0] = (v6 + 880);
          v14 = pthread_rwlock_wrlock((v6 + 880));
          if (v14)
          {
            geo::read_write_lock::logFailure(v14, "write lock", v15);
          }

          for (i = *(v6 + 768); i != v6 + 760; i = *(i + 8))
          {
            if (std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(a1 + 4, *(i + 152)))
            {
              atomic_store(1u, (i + 153));
            }
          }

          geo::write_lock_guard::~write_lock_guard(v32);
          if (!a1[7])
          {
            goto LABEL_58;
          }

          v32[0] = (v6 + 880);
          v17 = pthread_rwlock_wrlock((v6 + 880));
          if (v17)
          {
            geo::read_write_lock::logFailure(v17, "write lock", v18);
          }

          v19 = a1[7];
          if (v19 == 2)
          {
            std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear((v6 + 784));
            std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear((v6 + 808));
            if (std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(a1 + 4, 2u))
            {
              for (j = v36; j != &v35; j = j[1])
              {
                if (j[3])
                {
                  std::list<md::OverlayTileData::OverlayTileResource>::emplace_back<std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>>,std::vector<unsigned int>>();
                }

                if (j[4])
                {
                  std::list<md::OverlayTileData::OverlayTileResource>::emplace_back<std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>>,std::vector<unsigned int>>();
                }

                if (j[5])
                {
                  std::list<md::OverlayTileData::OverlayTileResource>::emplace_back<std::unique_ptr<md::OverlayTileData::OverlayTileResource::CircleResource>,std::vector<unsigned int>>();
                }

                if (j[6] != j[7])
                {
                  std::__list_imp<md::OverlayTileData::OverlayTileResource>::__create_node[abi:nn200100]<std::vector<std::unique_ptr<md::PolygonOverlayRenderable>>,std::vector<unsigned int>>();
                }

                if (j[11])
                {
                  std::__list_imp<md::OverlayTileData::OverlayTileResource>::__create_node[abi:nn200100]<std::unique_ptr<md::OverlayTileData::OverlayTileResource::ElevatedRibbonLayer>,std::vector<unsigned int>>();
                }

                if (j[12])
                {
                  std::__list_imp<md::OverlayTileData::OverlayTileResource>::__create_node[abi:nn200100]<std::unique_ptr<md::OverlayTileData::OverlayTileResource::ElevatedGradientRibbonLayer>,std::vector<unsigned int>>();
                }
              }
            }

            if (std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(a1 + 4, 1u))
            {
              for (k = v36; k != &v35; k = k[1])
              {
                if (k[2])
                {
                  std::__list_imp<md::OverlayTileData::OverlayTileResource>::__create_node[abi:nn200100]<std::unique_ptr<md::OverlayTileData::OverlayTileResource::Texture>,std::vector<unsigned int>>();
                }
              }
            }

            goto LABEL_57;
          }

          if (v19 == 1)
          {
            if (std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(a1 + 4, 2u))
            {
              v20 = 784;
              goto LABEL_55;
            }

            if (std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(a1 + 4, 1u))
            {
              v20 = 808;
LABEL_55:
              v23 = (v6 + v20);
              std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear(v23);
              v24 = v37;
              if (v37)
              {
                v26 = v35;
                v25 = v36;
                v27 = *(v35 + 8);
                v28 = *v36;
                *(v28 + 8) = v27;
                *v27 = v28;
                v29 = *v23;
                *(v29 + 8) = v25;
                *v25 = v29;
                *v23 = v26;
                *(v26 + 8) = v23;
                v23[2] += v24;
                v37 = 0;
              }
            }
          }

LABEL_57:
          geo::write_lock_guard::~write_lock_guard(v32);
LABEL_58:
          v32[0] = v34;
          std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>::__destroy_vector::operator()[abi:nn200100](v32);
          std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear(&v35);
          ggl::Loader::~Loader(&v38);
          goto LABEL_59;
        }

        if (v10 != 71)
        {
          goto LABEL_18;
        }
      }

      else if (v10 != 11)
      {
        if (v10 != 12)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      v11 = *(v3 + 616);
      md::OverlayContainer::belowOverlays(v32, *(v3 + 640));
      v12 = *(v6 + 736);
      v30 = *(v6 + 728);
      v31 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      goto LABEL_15;
    }
  }
}

void sub_1B30CB790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, char a21)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  *(v23 - 72) = &a16;
  std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100]((v23 - 72));

  a19 = &a21;
  std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>::__destroy_vector::operator()[abi:nn200100](&a19);
  std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear((v23 - 104));
  ggl::Loader::~Loader((v23 - 80));
  std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0,std::allocator<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0,std::allocator<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0>,void ()(void)>::destroy[abi:nn200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__alloc_func<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0,std::allocator<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0>,void ()(void)>::destroy[abi:nn200100](uint64_t a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t std::__function::__func<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0,std::allocator<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2D830;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return std::unordered_set<md::OverlayTileDataType>::unordered_set(a2 + 32, a1 + 32);
}

void sub_1B30CB91C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B30CB9BC(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0,std::allocator<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2D830;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0,std::allocator<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2D830;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource21conditionalInvalidateENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEESB_bNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISD_EENS_8equal_toISD_EENS_9allocatorISD_EEEEEUb_E3__2NSI_ISL_EEFvPS3_EE18destroy_deallocateEv(void *a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 80);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](a1 + 40);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](a1 + 8);

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource21conditionalInvalidateENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEESB_bNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISD_EENS_8equal_toISD_EENS_9allocatorISD_EEEEEUb_E3__2NSI_ISL_EEFvPS3_EE7destroyEv(uint64_t a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 80);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](a1 + 40);

  return std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](a1 + 8);
}

uint64_t _ZNKSt3__110__function6__funcIZZN2md22OverlayLayerDataSource21conditionalInvalidateENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEESB_bNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISD_EENS_8equal_toISD_EENS_9allocatorISD_EEEEEUb_E3__2NSI_ISL_EEFvPS3_EE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2D7E8;
  v4 = a2 + 40;
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](a2 + 8, a1 + 8);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v4, a1 + 40);
  *(a2 + 72) = *(a1 + 72);
  return std::unordered_set<md::OverlayTileDataType>::unordered_set(a2 + 80, a1 + 80);
}

void sub_1B30CBBA4(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v1 + 8);
  _Unwind_Resume(a1);
}

void sub_1B30CBC5C(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v1 + 40);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource21conditionalInvalidateENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEESB_bNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISD_EENS_8equal_toISD_EENS_9allocatorISD_EEEEEUb_E3__2NSI_ISL_EEFvPS3_EED0Ev(void *a1)
{
  *a1 = &unk_1F2A2D7E8;
  v2 = (a1 + 5);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 10));
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1B8C62190);
}

void *_ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource21conditionalInvalidateENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEESB_bNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISD_EENS_8equal_toISD_EENS_9allocatorISD_EEEEEUb_E3__2NSI_ISL_EEFvPS3_EED1Ev(void *a1)
{
  *a1 = &unk_1F2A2D7E8;
  v2 = (a1 + 5);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 10));
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void md::OverlayLayerDataSource::invalidateRect(uint64_t a1, __int128 *a2, __int16 a3, uint64_t a4, char a5, uint64_t a6)
{
  v22 = *MEMORY[0x1E69E9840];
  v13 = *a2;
  v14 = a2[1];
  v10 = *(a1 + 800);
  v11 = *(a1 + 808);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = **(a1 + 592);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2md22OverlayLayerDataSource14invalidateRectERKN2gm3BoxIdLi2EEENSt3__18optionalIhEENS6_8functionIFbRKNS6_10shared_ptrINS_15OverlayTileDataEEEEEEbNS6_13unordered_setINS_19OverlayTileDataTypeENS6_4hashISI_EENS6_8equal_toISI_EENS6_9allocatorISI_EEEE_block_invoke;
  block[3] = &__block_descriptor_155_ea8_32c75_ZTSNSt3__18weak_ptrIN2md14CallbackHolderINS1_22OverlayLayerDataSourceEEEEE80c68_ZTSNSt3__18functionIFbRKNS_10shared_ptrIN2md15OverlayTileDataEEEEEE112c107_ZTSKNSt3__113unordered_setIN2md19OverlayTileDataTypeENS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorIS2_EEEE_e5_v8__0l;
  block[4] = v10;
  v16 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v13;
  v18 = v14;
  v20[20] = a3;
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v19, a4);
  v21 = a5;
  std::unordered_set<md::OverlayTileDataType>::unordered_set(v20, a6);
  dispatch_async(v12, block);

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v20);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v19);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }
}

void sub_1B30CBF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v21 + 80);
  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  _Unwind_Resume(a1);
}

void ___ZN2md22OverlayLayerDataSource14invalidateRectERKN2gm3BoxIdLi2EEENSt3__18optionalIhEENS6_8functionIFbRKNS6_10shared_ptrINS_15OverlayTileDataEEEEEEbNS6_13unordered_setINS_19OverlayTileDataTypeENS6_4hashISI_EENS6_8equal_toISI_EENS6_9allocatorISI_EEEE_block_invoke(uint64_t a1)
{
  v5[9] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*(a1 + 32))
      {
        std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v4, a1 + 80);
        v4[32] = *(a1 + 154);
        std::unordered_set<md::OverlayTileDataType>::unordered_set(v5, a1 + 112);
        v5[8] = 0;
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }
}

void sub_1B30CC0F8(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(md::OverlayLayerDataSource *)>::~__value_func[abi:nn200100](v3 - 72);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 80);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v2 + 40);
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_32c75_ZTSNSt3__18weak_ptrIN2md14CallbackHolderINS1_22OverlayLayerDataSourceEEEEE80c68_ZTSNSt3__18functionIFbRKNS_10shared_ptrIN2md15OverlayTileDataEEEEEE112c107_ZTSKNSt3__113unordered_setIN2md19OverlayTileDataTypeENS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorIS2_EEEE(uint64_t a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 112);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](a1 + 80);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t __copy_helper_block_ea8_32c75_ZTSNSt3__18weak_ptrIN2md14CallbackHolderINS1_22OverlayLayerDataSourceEEEEE80c68_ZTSNSt3__18functionIFbRKNS_10shared_ptrIN2md15OverlayTileDataEEEEEE112c107_ZTSKNSt3__113unordered_setIN2md19OverlayTileDataTypeENS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorIS2_EEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](a1 + 80, a2 + 80);
  return std::unordered_set<md::OverlayTileDataType>::unordered_set(a1 + 112, a2 + 112);
}

void sub_1B30CC204(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v1 + 80);
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource14invalidateRectERKN2gm3BoxIdLi2EEENS_8optionalIhEENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEEbNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISK_EENS_8equal_toISK_EENS_9allocatorISK_EEEEEUb0_E3__4NSP_ISS_EEFvPS3_EEclEOSU_(uint64_t a1, uint64_t **a2)
{
  i = a1;
  v94 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a1 + 40);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v92, a1 + 48);
  v5 = i + 8;
  v70 = *(i + 80);
  v80 = 0;
  v81 = 0uLL;
  v6 = v3[7];
  v69 = i;
  if (v6)
  {
    v7 = 0;
    v8 = i + 24;
    do
    {
      gdc::Tiled::tileFromLayerDataKey(&v88, *(v6 + 32));
      v9 = BYTE1(v88);
      if ((v4 & 0x100) == 0 || (v9 = v4, BYTE1(v88) == v4))
      {
        v10 = 0;
        v11 = 1;
        v12 = 1 << v9;
        v13 = 1.0 / v12;
        *&v85 = v13 * v89;
        *(&v85 + 1) = v13 * (v12 + ~HIDWORD(v88));
        v86 = *&v85 + v13;
        v87 = *(&v85 + 1) + v13;
        v14 = &v85;
        while (*(&v86 + v10) > *(v5 + 8 * v10) && *v14 < *(v8 + 8 * v10))
        {
          v15 = v11;
          v11 = 0;
          v14 = (&v85 + 8);
          v10 = 1;
          if ((v15 & 1) == 0)
          {
            if (v7 >= *(&v81 + 1))
            {
              v16 = 0x6DB6DB6DB6DB6DB7 * ((v7 - v80) >> 4);
              v17 = v16 + 1;
              if ((v16 + 1) > 0x249249249249249)
              {
                goto LABEL_90;
              }

              if (0xDB6DB6DB6DB6DB6ELL * ((*(&v81 + 1) - v80) >> 4) > v17)
              {
                v17 = 0xDB6DB6DB6DB6DB6ELL * ((*(&v81 + 1) - v80) >> 4);
              }

              if ((0x6DB6DB6DB6DB6DB7 * ((*(&v81 + 1) - v80) >> 4)) >= 0x124924924924924)
              {
                v18 = 0x249249249249249;
              }

              else
              {
                v18 = v17;
              }

              v91 = &v80;
              if (v18)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>>(v18);
              }

              v88 = 0;
              v89 = 112 * v16;
              v90 = (112 * v16);
              gdc::LayerDataRequestKey::LayerDataRequestKey(112 * v16, v6 + 16);
              *&v90 = v90 + 112;
              v19 = (v80 + v89 - v81);
              std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKey*>(v80, v81, v19);
              v20 = v80;
              v21 = *(&v81 + 1);
              v80 = v19;
              v71 = v90;
              v81 = v90;
              *&v90 = v20;
              *(&v90 + 1) = v21;
              v88 = v20;
              v89 = v20;
              std::__split_buffer<gdc::LayerDataRequestKey>::~__split_buffer(&v88);
              v7 = v71;
            }

            else
            {
              gdc::LayerDataRequestKey::LayerDataRequestKey(v7, v6 + 16);
              v7 += 112;
            }

            *&v81 = v7;
            break;
          }
        }
      }

      v6 = *v6;
    }

    while (v6);
    v22 = v80;
    for (i = v69; v22 != v7; v22 = (v22 + 112))
    {
      gdc::LayerDataSource::cancelLayerDataRequest(v3, v22);
    }
  }

  v23 = v3[12];
  while (v23)
  {
    gdc::Tiled::tileFromLayerDataKey(&v88, *(v23 + 32));
    v24 = BYTE1(v88);
    if ((v4 & 0x100) == 0 || (v24 = v4, BYTE1(v88) == v4))
    {
      v25 = 0;
      v26 = 1;
      v27 = 1 << v24;
      v28 = 1.0 / v27;
      *&v85 = v28 * v89;
      *(&v85 + 1) = v28 * (v27 + ~HIDWORD(v88));
      v86 = *&v85 + v28;
      v87 = *(&v85 + 1) + v28;
      v29 = &v85;
      while (*(&v86 + v25) > *(v5 + 8 * v25) && *v29 < *(i + 24 + 8 * v25))
      {
        v30 = v26;
        v26 = 0;
        v29 = (&v85 + 8);
        v25 = 1;
        if ((v30 & 1) == 0)
        {
          v23 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::erase(v3 + 10, v23);
          goto LABEL_33;
        }
      }
    }

    v23 = *v23;
LABEL_33:
    ;
  }

  for (j = v3[17]; j; j = *j)
  {
LABEL_35:
    gdc::Tiled::tileFromLayerDataKey(&v88, *(j + 32));
    v32 = BYTE1(v88);
    if ((v4 & 0x100) != 0)
    {
      v32 = v4;
      if (BYTE1(v88) != v4)
      {
        continue;
      }
    }

    v33 = 0;
    v34 = 1;
    v35 = 1 << v32;
    v36 = 1.0 / v35;
    *&v85 = v36 * v89;
    *(&v85 + 1) = v36 * (v35 + ~HIDWORD(v88));
    v86 = *&v85 + v36;
    v87 = *(&v85 + 1) + v36;
    v37 = &v85;
    while (*(&v86 + v33) > *(v5 + 8 * v33) && *v37 < *(i + 24 + 8 * v33))
    {
      v38 = v34;
      v34 = 0;
      v37 = (&v85 + 8);
      v33 = 1;
      if ((v38 & 1) == 0)
      {
        j = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::erase(v3 + 15, j);
        if (j)
        {
          goto LABEL_35;
        }

        goto LABEL_44;
      }
    }
  }

LABEL_44:
  v78 = 0;
  v79 = 0uLL;
  v76 = 0;
  v77 = 0;
  v75 = 0;
  v39 = v3[2];
  for (k = *(v39 + 8); k != v39; k = *(k + 8))
  {
    gdc::Tiled::tileFromLayerDataKey(&v88, *(k + 32));
    v41 = BYTE1(v88);
    if ((v4 & 0x100) == 0 || (v41 = v4, BYTE1(v88) == v4))
    {
      v42 = 0;
      v43 = 1;
      v44 = 1 << v41;
      v45 = 1.0 / v44;
      *&v85 = v45 * v89;
      *(&v85 + 1) = v45 * (v44 + ~HIDWORD(v88));
      v86 = *&v85 + v45;
      v87 = *(&v85 + 1) + v45;
      v46 = &v85;
      do
      {
        if (*(&v86 + v42) <= *(v5 + 8 * v42) || *v46 >= *(v69 + 24 + 8 * v42))
        {
          goto LABEL_72;
        }

        v47 = v43;
        v43 = 0;
        v46 = (&v85 + 8);
        v42 = 1;
      }

      while ((v47 & 1) != 0);
      v48 = *(k + 136);
      *&v85 = *(k + 128);
      *(&v85 + 1) = v48;
      if (v48)
      {
        atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
      }

      gdc::LayerDataSource::cancelLayerDataRequest(v3, (k + 16));
      if (!v93)
      {
        std::__throw_bad_function_call[abi:nn200100]();
LABEL_90:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      if ((*(*v93 + 48))(v93, &v85))
      {
        if (v79 >= *(&v79 + 1))
        {
          v50 = 0x6DB6DB6DB6DB6DB7 * ((v79 - v78) >> 4) + 1;
          if (v50 > 0x249249249249249)
          {
            goto LABEL_90;
          }

          if (0xDB6DB6DB6DB6DB6ELL * ((*(&v79 + 1) - v78) >> 4) > v50)
          {
            v50 = 0xDB6DB6DB6DB6DB6ELL * ((*(&v79 + 1) - v78) >> 4);
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((*(&v79 + 1) - v78) >> 4)) >= 0x124924924924924)
          {
            v51 = 0x249249249249249;
          }

          else
          {
            v51 = v50;
          }

          v91 = &v78;
          if (v51)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>>(v51);
          }

          v88 = 0;
          v89 = 16 * ((v79 - v78) >> 4);
          v90 = v89;
          gdc::LayerDataRequestKey::LayerDataRequestKey(v89, k + 16);
          *&v90 = v90 + 112;
          v52 = &v78[v89 - v79];
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKey*>(v78, v79, v52);
          v53 = v78;
          v54 = *(&v79 + 1);
          v78 = v52;
          v72 = v90;
          v79 = v90;
          *&v90 = v53;
          *(&v90 + 1) = v54;
          v88 = v53;
          v89 = v53;
          std::__split_buffer<gdc::LayerDataRequestKey>::~__split_buffer(&v88);
          v49 = v72;
        }

        else
        {
          v49 = gdc::LayerDataRequestKey::LayerDataRequestKey(v79, k + 16) + 112;
        }

        *&v79 = v49;
      }

      else if (v70)
      {
        std::vector<std::shared_ptr<md::RouteLineOverlayGroup>>::emplace_back<std::shared_ptr<md::RouteLineOverlayGroup> const&>(&v75, &v85);
      }

      else
      {
        gdc::LayerData::invalidate(v85);
      }

      if (*(&v85 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v85 + 1));
      }
    }

LABEL_72:
    ;
  }

  if (v70)
  {
    v55 = v75;
    if (v75 != v76)
    {
      std::unordered_set<md::OverlayTileDataType>::unordered_set(&v88, v69 + 88);
      md::OverlayLayerDataSource::_updateNonTileOverlays(v3, *v55, v55[1], &v88);
    }
  }

  v57 = v78;
  v56 = v79;
  while (v57 != v56)
  {
    gdc::LayerDataStore::remove(v3[2], v57);
    v57 += 112;
  }

  gdc::LayerDataStore::pending(&v73, v3[2]);
  v58 = v73;
  for (m = v74; v58 != m; v58 += 128)
  {
    gdc::Tiled::tileFromLayerDataKey(&v85, *(v58 + 16));
    v60 = BYTE1(v85);
    if ((v4 & 0x100) != 0)
    {
      v60 = v4;
      if (BYTE1(v85) != v4)
      {
        continue;
      }
    }

    v61 = 0;
    v62 = 1;
    v63 = 1 << v60;
    v64 = 1.0 / v63;
    v82 = v64 * SDWORD2(v85);
    v83 = v64 * (v63 + ~DWORD1(v85));
    v84[0] = v82 + v64;
    v84[1] = v83 + v64;
    v65 = &v82;
    while (v84[v61] > *(v5 + 8 * v61) && *v65 < *(v69 + 24 + 8 * v61))
    {
      v66 = v62;
      v62 = 0;
      v65 = &v83;
      v61 = 1;
      if ((v66 & 1) == 0)
      {
        v67 = *(v58 + 112);
        gdc::LayerDataSource::cancelLayerDataRequest(v3, v58);
        gdc::LayerData::invalidate(v67);
        break;
      }
    }
  }

  gdc::LayerDataSource::requestUpdate(v3);
  *&v85 = &v73;
  std::vector<std::pair<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>::__destroy_vector::operator()[abi:nn200100](&v85);
  *&v85 = &v75;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v85);
  *&v85 = &v78;
  std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&v85);
  *&v85 = &v80;
  std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&v85);
  return std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v92);
}

uint64_t std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::__unordered_map_hasher<gdc::EntityId,std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::hash<gdc::EntityId>,std::equal_to<gdc::EntityId>,true>,std::__unordered_map_equal<gdc::EntityId,std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::equal_to<gdc::EntityId>,std::hash<gdc::EntityId>,true>,std::allocator<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>>>::remove(&__p, a1, a2);
  v3 = __p;
  if (__p)
  {
    if (v6 == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>,0>(__p + 2);
    }

    operator delete(v3);
  }

  return v2;
}

void _ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource14invalidateRectERKN2gm3BoxIdLi2EEENS_8optionalIhEENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEEbNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISK_EENS_8equal_toISK_EENS_9allocatorISK_EEEEEUb0_E3__4NSP_ISS_EEFvPS3_EE18destroy_deallocateEv(void *a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 88);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](a1 + 48);

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource14invalidateRectERKN2gm3BoxIdLi2EEENS_8optionalIhEENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEEbNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISK_EENS_8equal_toISK_EENS_9allocatorISK_EEEEEUb0_E3__4NSP_ISS_EEFvPS3_EE7destroyEv(uint64_t a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 88);

  return std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](a1 + 48);
}

uint64_t _ZNKSt3__110__function6__funcIZZN2md22OverlayLayerDataSource14invalidateRectERKN2gm3BoxIdLi2EEENS_8optionalIhEENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEEbNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISK_EENS_8equal_toISK_EENS_9allocatorISK_EEEEEUb0_E3__4NSP_ISS_EEFvPS3_EE7__cloneEPNS0_6__baseISV_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2D878;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v5;
  *(a2 + 8) = v4;
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](a2 + 48, a1 + 48);
  *(a2 + 80) = *(a1 + 80);
  return std::unordered_set<md::OverlayTileDataType>::unordered_set(a2 + 88, a1 + 88);
}

void sub_1B30CCD10(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v1 + 48);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource14invalidateRectERKN2gm3BoxIdLi2EEENS_8optionalIhEENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEEbNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISK_EENS_8equal_toISK_EENS_9allocatorISK_EEEEEUb0_E3__4NSP_ISS_EEFvPS3_EED0Ev(void *a1)
{
  *a1 = &unk_1F2A2D878;
  v1 = (a1 + 6);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 11));
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v1);

  JUMPOUT(0x1B8C62190);
}

void *_ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource14invalidateRectERKN2gm3BoxIdLi2EEENS_8optionalIhEENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEEbNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISK_EENS_8equal_toISK_EENS_9allocatorISK_EEEEEUb0_E3__4NSP_ISS_EEFvPS3_EED1Ev(void *a1)
{
  *a1 = &unk_1F2A2D878;
  v2 = (a1 + 6);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 11));
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v2);
  return a1;
}

void md::OverlayLayerDataSource::invalidate(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 800);
  v8 = *(a1 + 808);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = **(a1 + 592);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2md22OverlayLayerDataSource10invalidateENSt3__18functionIFbRKNS1_10shared_ptrINS_15OverlayTileDataEEEEEEbNS1_13unordered_setINS_19OverlayTileDataTypeENS1_4hashISB_EENS1_8equal_toISB_EENS1_9allocatorISB_EEEE_block_invoke;
  block[3] = &__block_descriptor_121_ea8_32c75_ZTSNSt3__18weak_ptrIN2md14CallbackHolderINS1_22OverlayLayerDataSourceEEEEE48c68_ZTSNSt3__18functionIFbRKNS_10shared_ptrIN2md15OverlayTileDataEEEEEE80c107_ZTSKNSt3__113unordered_setIN2md19OverlayTileDataTypeENS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorIS2_EEEE_e5_v8__0l;
  block[4] = v7;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v12, a2);
  v13[40] = a3;
  std::unordered_set<md::OverlayTileDataType>::unordered_set(v13, a4);
  dispatch_async(v9, block);

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v13);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v12);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_1B30CCF48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v17 + 48);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  _Unwind_Resume(a1);
}

void ___ZN2md22OverlayLayerDataSource10invalidateENSt3__18functionIFbRKNS1_10shared_ptrINS_15OverlayTileDataEEEEEEbNS1_13unordered_setINS_19OverlayTileDataTypeENS1_4hashISB_EENS1_8equal_toISB_EENS1_9allocatorISB_EEEE_block_invoke(uint64_t a1)
{
  v5[9] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*(a1 + 32))
      {
        std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v4, a1 + 48);
        v4[32] = *(a1 + 120);
        std::unordered_set<md::OverlayTileDataType>::unordered_set(v5, a1 + 80);
        v5[8] = 0;
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }
}

void sub_1B30CD0C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  std::__function::__value_func<void ()(md::OverlayLayerDataSource *)>::~__value_func[abi:nn200100](va1);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v3 + 40);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](va);
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_32c75_ZTSNSt3__18weak_ptrIN2md14CallbackHolderINS1_22OverlayLayerDataSourceEEEEE48c68_ZTSNSt3__18functionIFbRKNS_10shared_ptrIN2md15OverlayTileDataEEEEEE80c107_ZTSKNSt3__113unordered_setIN2md19OverlayTileDataTypeENS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorIS2_EEEE(uint64_t a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 80);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t __copy_helper_block_ea8_32c75_ZTSNSt3__18weak_ptrIN2md14CallbackHolderINS1_22OverlayLayerDataSourceEEEEE48c68_ZTSNSt3__18functionIFbRKNS_10shared_ptrIN2md15OverlayTileDataEEEEEE80c107_ZTSKNSt3__113unordered_setIN2md19OverlayTileDataTypeENS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorIS2_EEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](a1 + 48, a2 + 48);
  return std::unordered_set<md::OverlayTileDataType>::unordered_set(a1 + 80, a2 + 80);
}

void sub_1B30CD1D0(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v1 + 48);
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource10invalidateENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEEbNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISD_EENS_8equal_toISD_EENS_9allocatorISD_EEEEEUb1_E3__6NSI_ISL_EEFvPS3_EEclEOSN_(uint64_t a1, gdc::LayerDataSource **a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v29, a1 + 8);
  v4 = *(a1 + 40);
  gdc::LayerDataSource::cancelAllLayerDataRequests(v3);
  v23 = 0;
  v24 = 0uLL;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v5 = *(v3 + 2);
  for (i = v5[1]; i != v5; i = i[1])
  {
    v7 = i[17];
    *&v19 = i[16];
    *(&v19 + 1) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    if (!v30)
    {
      std::__throw_bad_function_call[abi:nn200100]();
LABEL_32:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if ((*(*v30 + 48))(v30, &v19))
    {
      if (v24 >= *(&v24 + 1))
      {
        v9 = 0x6DB6DB6DB6DB6DB7 * ((v24 - v23) >> 4) + 1;
        if (v9 > 0x249249249249249)
        {
          goto LABEL_32;
        }

        if (0xDB6DB6DB6DB6DB6ELL * ((*(&v24 + 1) - v23) >> 4) > v9)
        {
          v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(&v24 + 1) - v23) >> 4);
        }

        if ((0x6DB6DB6DB6DB6DB7 * ((*(&v24 + 1) - v23) >> 4)) >= 0x124924924924924)
        {
          v10 = 0x249249249249249;
        }

        else
        {
          v10 = v9;
        }

        v28 = &v23;
        if (v10)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>>(v10);
        }

        v25 = 0;
        v26 = 16 * ((v24 - v23) >> 4);
        v27 = v26;
        gdc::LayerDataRequestKey::LayerDataRequestKey(v26, (i + 2));
        *&v27 = v27 + 112;
        v11 = &v23[v26 - v24];
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKey*>(v23, v24, v11);
        v12 = v23;
        v13 = *(&v24 + 1);
        v23 = v11;
        v18 = v27;
        v24 = v27;
        *&v27 = v12;
        *(&v27 + 1) = v13;
        v25 = v12;
        v26 = v12;
        std::__split_buffer<gdc::LayerDataRequestKey>::~__split_buffer(&v25);
        v8 = v18;
      }

      else
      {
        v8 = gdc::LayerDataRequestKey::LayerDataRequestKey(v24, (i + 2)) + 112;
      }

      *&v24 = v8;
    }

    else if (v4)
    {
      std::vector<std::shared_ptr<md::RouteLineOverlayGroup>>::emplace_back<std::shared_ptr<md::RouteLineOverlayGroup> const&>(&v20, &v19);
    }

    else
    {
      gdc::LayerData::invalidate(v19);
    }

    if (*(&v19 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v19 + 1));
    }
  }

  if (v4)
  {
    v14 = v20;
    if (v20 != v21)
    {
      std::unordered_set<md::OverlayTileDataType>::unordered_set(&v25, a1 + 48);
      md::OverlayLayerDataSource::_updateNonTileOverlays(v3, *v14, v14[1], &v25);
    }
  }

  v15 = v23;
  v16 = v24;
  while (v15 != v16)
  {
    gdc::LayerDataStore::remove(*(v3 + 2), v15);
    v15 += 112;
  }

  gdc::LayerDataSource::requestUpdate(v3);
  *&v19 = &v20;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v19);
  v20 = &v23;
  std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&v20);
  return std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v29);
}

void _ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource10invalidateENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEEbNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISD_EENS_8equal_toISD_EENS_9allocatorISD_EEEEEUb1_E3__6NSI_ISL_EEFvPS3_EE18destroy_deallocateEv(void *a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 48);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](a1 + 8);

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource10invalidateENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEEbNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISD_EENS_8equal_toISD_EENS_9allocatorISD_EEEEEUb1_E3__6NSI_ISL_EEFvPS3_EE7destroyEv(uint64_t a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 48);

  return std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](a1 + 8);
}

uint64_t _ZNKSt3__110__function6__funcIZZN2md22OverlayLayerDataSource10invalidateENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEEbNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISD_EENS_8equal_toISD_EENS_9allocatorISD_EEEEEUb1_E3__6NSI_ISL_EEFvPS3_EE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2D8C0;
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](a2 + 8, a1 + 8);
  *(a2 + 40) = *(a1 + 40);
  return std::unordered_set<md::OverlayTileDataType>::unordered_set(a2 + 48, a1 + 48);
}

void sub_1B30CD6B0(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource10invalidateENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEEbNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISD_EENS_8equal_toISD_EENS_9allocatorISD_EEEEEUb1_E3__6NSI_ISL_EEFvPS3_EED0Ev(void *a1)
{
  *a1 = &unk_1F2A2D8C0;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 6));
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1B8C62190);
}

void *_ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource10invalidateENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEEbNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISD_EENS_8equal_toISD_EENS_9allocatorISD_EEEEEUb1_E3__6NSI_ISL_EEFvPS3_EED1Ev(void *a1)
{
  *a1 = &unk_1F2A2D8C0;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 6));
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void md::LabelLineSegment::LabelLineSegment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2A2D928;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 33) = *(a3 + 88);
  *(a1 + 34) = *(a3 + 8);
  *(a1 + 36) = 0;
  *(a1 + 38) = *(a3 + 72);
  *(a1 + 40) = 0;
  *(a1 + 44) = *(a3 + 4);
  *(a1 + 46) = *(a3 + 60);
  operator new();
}

{
  *a1 = &unk_1F2A2D928;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 33) = *(a3 + 88);
  *(a1 + 34) = *(a3 + 8);
  *(a1 + 36) = 0;
  *(a1 + 38) = *(a3 + 72);
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 46) = *(a3 + 60);
  operator new();
}

void sub_1B30CD890(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v3)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B30CD9AC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v3)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void md::LabelLineSegment::createLists(unsigned __int16 *a1, uint64_t a2)
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (a1[23] >= 2u)
  {
    md::LabelLineSegment::createPointList(a1, a2);
    v4 = (*(*a1 + 64))(a1);
    v5 = v4;
    v6 = a1[23];
    if (v6 > 0x2000)
    {
      v9 = malloc_type_malloc(a1[23], 0x100004077774924uLL);
      if (!v9)
      {
        return;
      }

      v8 = v9;
      v10 = a1[23];
    }

    else
    {
      MEMORY[0x1EEE9AC00](v4);
      v8 = v24 - v7;
      bzero(v24 - v7, v6);
      v10 = v6;
    }

    v11 = *(a2 + 32);
    v12 = *(a2 + 56);
    if (v10 > 0x400)
    {
      v14 = malloc_type_malloc(8 * v10, 0x100004000313F17uLL);
      if (!v14)
      {
LABEL_20:
        free(v14);
LABEL_21:
        if (v6 > 0x2000)
        {
          free(v8);
        }

        return;
      }

      v16 = a1[23];
    }

    else
    {
      MEMORY[0x1EEE9AC00](v9);
      v14 = v24 - v13;
      bzero(v24 - v13, v15);
      v16 = v10;
    }

    bzero(v14, 8 * v16);
    md::LabelLineSegment::computeRadiusOfCurvature((v11 + 8 * v12), a1[23], *(a2 + 16), v14);
    if (a1[23])
    {
      v17 = 0;
      v18 = 8 * a1[23];
      v19 = (v5 + 3);
      do
      {
        v20 = 512.0;
        if (v17 && v18 - 8 != v17)
        {
          v20 = *&v14[v17] * 512.0;
        }

        *(v19 - 3) = 32512;
        *v19 = 0;
        v21 = (26.0 / v20);
        v22 = 31 - __clz(v21);
        if (v21)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        *(v19 - 1) = v23;
        v17 += 8;
        v19 += 4;
      }

      while (v18 != v17);
    }

    if (v10 < 0x401)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }
}

{
  v24[1] = *MEMORY[0x1E69E9840];
  if (a1[23] >= 2u)
  {
    md::LabelLineSegment::createPointList(a1, a2);
    v4 = (*(*a1 + 64))(a1);
    v5 = v4;
    v6 = a1[23];
    if (v6 > 0x2000)
    {
      v9 = malloc_type_malloc(a1[23], 0x100004077774924uLL);
      if (!v9)
      {
        return;
      }

      v8 = v9;
      v10 = a1[23];
    }

    else
    {
      MEMORY[0x1EEE9AC00](v4);
      v8 = v24 - v7;
      bzero(v24 - v7, v6);
      v10 = v6;
    }

    v11 = *(a2 + 32);
    v12 = *(a2 + 56);
    if (v10 > 0x400)
    {
      v14 = malloc_type_malloc(8 * v10, 0x100004000313F17uLL);
      if (!v14)
      {
LABEL_20:
        free(v14);
LABEL_21:
        if (v6 > 0x2000)
        {
          free(v8);
        }

        return;
      }

      v16 = a1[23];
    }

    else
    {
      MEMORY[0x1EEE9AC00](v9);
      v14 = v24 - v13;
      bzero(v24 - v13, v15);
      v16 = v10;
    }

    bzero(v14, 8 * v16);
    md::LabelLineSegment::computeRadiusOfCurvature((v11 + 8 * v12), a1[23], *(a2 + 16), v14);
    if (a1[23])
    {
      v17 = 0;
      v18 = 8 * a1[23];
      v19 = (v5 + 3);
      do
      {
        v20 = 512.0;
        if (v17 && v18 - 8 != v17)
        {
          v20 = *&v14[v17] * 512.0;
        }

        *(v19 - 3) = 32512;
        *v19 = 0;
        v21 = (1000.0 / v20);
        v22 = 31 - __clz(v21);
        if (v21)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        *(v19 - 1) = v23;
        v17 += 8;
        v19 += 4;
      }

      while (v18 != v17);
    }

    if (v10 < 0x401)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }
}

{
  v27[1] = *MEMORY[0x1E69E9840];
  if (a1[23] >= 2u)
  {
    md::LabelLineSegment::createPointList(a1, a2);
    v4 = (*(*a1 + 64))(a1);
    v5 = v4;
    v6 = a1[23];
    if (v6 > 0x2000)
    {
      v10 = malloc_type_malloc(a1[23], 0x100004077774924uLL);
      if (!v10)
      {
        return;
      }

      v8 = v10;
      v9 = a1[23];
    }

    else
    {
      MEMORY[0x1EEE9AC00](v4);
      v8 = v27 - v7;
      bzero(v27 - v7, v6);
      v9 = v6;
    }

    v11 = memset(v8, 127, v9);
    v8[a1[23] - 1] = 1;
    *v8 = 1;
    v12 = *(a2 + 32);
    v13 = *(a2 + 56);
    v14 = a1[23];
    if (v14 > 0x400)
    {
      v16 = malloc_type_malloc(8 * v14, 0x100004000313F17uLL);
      if (!v16)
      {
LABEL_20:
        free(v16);
LABEL_21:
        if (v6 > 0x2000)
        {
          free(v8);
        }

        return;
      }

      v18 = a1[23];
    }

    else
    {
      MEMORY[0x1EEE9AC00](v11);
      v16 = v27 - v15;
      bzero(v27 - v15, v17);
      v18 = v14;
    }

    bzero(v16, 8 * v18);
    md::LabelLineSegment::computeRadiusOfCurvature((v12 + 8 * v13), a1[23], *(a2 + 16), v16);
    v19 = a1[23];
    if (a1[23])
    {
      v20 = 0;
      v21 = (v5 + 3);
      do
      {
        v22 = 512.0;
        if (v20 && v19 - 1 != v20)
        {
          v22 = *&v16[8 * v20] * 512.0;
        }

        v23 = v8[v20];
        *(v21 - 3) = v23;
        *(v21 - 2) = v23;
        *v21 = 0;
        v24 = (26.0 / v22);
        v25 = 31 - __clz(v24);
        if (v24)
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        *(v21 - 1) = v26;
        ++v20;
        v21 += 4;
      }

      while (v19 != v20);
    }

    if (v14 < 0x401)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }
}

uint64_t md::LabelLineSegment::createLists(uint64_t result, uint64_t a2)
{
  if (*(result + 46) >= 2u)
  {
    v2 = result;
    md::LabelLineSegment::createPointList(result, a2);
    result = (*(*v2 + 64))(v2);
    v3 = v2[23];
    if (v2[23])
    {
      do
      {
        *result = 32512;
        result += 4;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

void md::LabelTextStyleGroup::~LabelTextStyleGroup(void **this)
{
  *this = &unk_1F2A2D980;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2D980;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }
}

uint64_t md::LabelIconStyleGroup::update(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, float a5, float a6)
{
  if (a5 >= 0x17)
  {
    v11 = 23;
  }

  else
  {
    v11 = a5;
  }

  *(a1 + 8) = 0u;
  v12 = (a1 + 8);
  *(a1 + 84) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 101) == 1)
  {
    *(a1 + 101) = 0;
  }

  *(a1 + 88) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 170, v11, 1, 0);
  *(a1 + 64) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 186, v11, 1, 0);
  *(a1 + 68) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 190, v11, 1, 0);
  *(a1 + 93) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 192, v11, 1, 0);
  *(a1 + 92) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 189, v11, 1, 0);
  *(a1 + 89) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 212, v11, 1, 0);
  v13 = fminf(v11, 23.0);
  gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v37, *(*a2 + 24), 211, 1u, v13);
  v36 = vdupq_n_s32(0x3B7F00FFu);
  v14 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v37)), v36)));
  *(a1 + 72) = vuzp1_s8(v14, v14).u32[0];
  gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v37, *(*a2 + 24), 172, 1u, v13);
  v15 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v37)), v36)));
  *(a1 + 76) = vuzp1_s8(v15, v15).u32[0];
  gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v37, *(*a2 + 24), 93, 1u, v13);
  v16 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v37)), v36)));
  *(a1 + 80) = vuzp1_s8(v16, v16).u32[0];
  gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v37, *(*a2 + 24), 403, 1u, v13);
  v17 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v37)), v36)));
  *(a1 + 84) = vuzp1_s8(v17, v17).u32[0];
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 94, v11, 1u, 0);
  *(a1 + 44) = v18 * a6;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 97, v11, 1u, 0);
  *(a1 + 48) = v19 * a6;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 404, v11, 1u, 0);
  *(a1 + 52) = v20 * a6;
  *(a1 + 90) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 209, v11, 1, 0);
  *(a1 + 91) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 207, v11, 1, 0);
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 218, v11, 1u, 0);
  *(a1 + 16) = v21;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 187, v11, 1u, 0);
  *(a1 + 20) = v22;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 274, v11, 1u, 0);
  *(a1 + 28) = v23;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 166, v11, 1u, 0);
  *(a1 + 24) = v24;
  *(a1 + 96) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(*a2 + 24), 386, v11, 1u, 0);
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 433, v11, 1u, 0);
  *(a1 + 32) = v25;
  v26 = *(*a2 + 24);
  *(a1 + 97) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned char>(v26, 474, v11, 0);
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v26, 479, v11, 1u, 0);
  *(a1 + 40) = v27;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 475, v11, 1u, 0);
  *(a1 + 36) = v28;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 273, v11, 1u, 0);
  v29 = a3 + 20 * a4;
  v31 = *(v29 + 12);
  v30 = (v29 + 12);
  *(a1 + 8) = v32 * (a6 * v31);
  v37.i8[0] = 1;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 370, v11, 1u, &v37);
  if (v37.u8[0] == 1)
  {
    v34 = fminf((v33 * a6) * *v30, *v12);
  }

  else
  {
    v34 = *v12;
  }

  *(a1 + 12) = v34;
  *(a1 + 95) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(*a2 + 24), 371, v11, 1u, 0);
  *(a1 + 94) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 275, v11, 1, 0);
  *(a1 + 56) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 364, v11, 1, 0);
  *(a1 + 60) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 372, v11, 1, 0);
  v37.i8[0] = 1;
  result = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 354, v11, 1, &v37);
  if (v37.u8[0] == 1)
  {
    *(a1 + 100) = result;
    *(a1 + 101) = 1;
  }

  return result;
}

void md::LabelLineStyleGroup::~LabelLineStyleGroup(md::LabelLineStyleGroup *this)
{
  *this = &unk_1F2A2D9C0;
  if (*(this + 95) < 0)
  {
    v1 = *(this + 9);
    v2 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v2, v1);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2D9C0;
  if (*(this + 95) < 0)
  {
    v1 = *(this + 9);
    v2 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v2, v1);
  }
}

uint64_t md::LabelPointStyleGroup::clear(uint64_t this)
{
  *(this + 72) = 0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  if (*(this + 103) < 0)
  {
    **(this + 80) = 0;
    *(this + 88) = 0;
  }

  else
  {
    *(this + 80) = 0;
    *(this + 103) = 0;
  }

  if (*(this + 135) < 0)
  {
    **(this + 112) = 0;
    *(this + 120) = 0;
  }

  else
  {
    *(this + 112) = 0;
    *(this + 135) = 0;
  }

  if (*(this + 167) < 0)
  {
    **(this + 144) = 0;
    *(this + 152) = 0;
  }

  else
  {
    *(this + 144) = 0;
    *(this + 167) = 0;
  }

  if (*(this + 199) < 0)
  {
    **(this + 176) = 0;
    *(this + 184) = 0;
  }

  else
  {
    *(this + 176) = 0;
    *(this + 199) = 0;
  }

  if (*(this + 231) < 0)
  {
    **(this + 208) = 0;
    *(this + 216) = 0;
  }

  else
  {
    *(this + 208) = 0;
    *(this + 231) = 0;
  }

  if (*(this + 263) < 0)
  {
    **(this + 240) = 0;
    *(this + 248) = 0;
  }

  else
  {
    *(this + 240) = 0;
    *(this + 263) = 0;
  }

  return this;
}

void md::LabelPointStyleGroup::~LabelPointStyleGroup(md::LabelPointStyleGroup *this)
{
  md::LabelPointStyleGroup::~LabelPointStyleGroup(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2D9E0;
  if (*(this + 263) < 0)
  {
    v2 = *(this + 30);
    v3 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, v2);
  }

  if (*(this + 231) < 0)
  {
    v4 = *(this + 26);
    v5 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v5, v4);
  }

  if (*(this + 199) < 0)
  {
    v6 = *(this + 22);
    v7 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v7, v6);
  }

  if (*(this + 167) < 0)
  {
    v8 = *(this + 18);
    v9 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v9, v8);
  }

  if (*(this + 135) < 0)
  {
    v10 = *(this + 14);
    v11 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v11, v10);
  }

  if (*(this + 103) < 0)
  {
    v12 = *(this + 10);
    v13 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v13, v12);
  }
}

void md::StandardCommandBufferSelector::~StandardCommandBufferSelector(md::StandardCommandBufferSelector *this)
{
  md::CommandBufferSelector::~CommandBufferSelector(this);

  JUMPOUT(0x1B8C62190);
}

void md::CommandBufferSelector::~CommandBufferSelector(md::CommandBufferSelector *this)
{
  *this = &unk_1F2A2DA70;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

{
  md::CommandBufferSelector::~CommandBufferSelector(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B30CF10C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B30CFE80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VKScreenCameraController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *gdc::SubtileClipMask::removeSubTile(void *this, unint64_t a2, unint64_t a3)
{
  if (this[4])
  {
    v3 = this[3];
    if (v3 > a2 && v3 > a3)
    {
      v5 = a2 + v3 * a3;
      v6 = v5 >> 6;
      v7 = 1 << v5;
      v8 = *(*this + 8 * v6);
      if ((v8 & v7) != 0)
      {
        *(*this + 8 * v6) = v8 & ~v7;
        --this[4];
      }
    }
  }

  return this;
}

void *gdc::SubtileClipMask::setSubTileVisible(void *this, unint64_t a2, unint64_t a3, int a4)
{
  if (a4)
  {
    return gdc::SubtileClipMask::addSubTile(this, a2, a3);
  }

  else
  {
    return gdc::SubtileClipMask::removeSubTile(this, a2, a3);
  }
}

void anonymous namespace::_evaluateOverlappingDataOfType(void *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v5 = a1;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = *a3;
  v7 = a3[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(v6 + 169);
  v9 = *(v6 + 172);
  v10 = *(v6 + 176);
  v42 = *(v6 + 168);
  v11 = *(a3 + 16);
  v12 = *a2;
  {
    qword_1ED65AC10 = 0;
    qword_1ED65AC08 = 0;
    md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet = &qword_1ED65AC08;
  }

  v13 = *(v12 + 48);
  v14 = *(v12 + 56);
  v15 = &md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet;
  if (v13 == v14)
  {
    v17 = v42;
  }

  else
  {
    v16 = *(v12 + 48);
    v17 = v42;
    while (*v16 != a4)
    {
      v16 += 16;
      if (v16 == v14)
      {
        goto LABEL_16;
      }
    }

    if (v16 == v14)
    {
      v15 = &md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet;
    }

    else
    {
      while (*v13 != a4)
      {
        v13 += 16;
        if (v13 == v14)
        {
          v13 = v14;
          break;
        }
      }

      v15 = (v13 + 4);
    }
  }

LABEL_16:
  v20 = *v15;
  v19 = v15 + 1;
  v18 = v20;
  if (v20 != v19)
  {
    v40 = v5;
    v41 = v7;
    v38 = v10;
    v39 = v9;
    while (*(v18 + 48) != v11)
    {
LABEL_57:
      v35 = v18[1];
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = v18[2];
          v37 = *v36 == v18;
          v18 = v36;
        }

        while (!v37);
      }

      v18 = v36;
      if (v36 == v19)
      {
        goto LABEL_63;
      }
    }

    v21 = *(v18 + 2);
    v22 = v18[5];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v17 != *(v21 + 168))
    {
      goto LABEL_55;
    }

    v23 = *(v21 + 169);
    v24 = v8 - v23;
    if (v8 >= v23)
    {
      if (v8 == v23 && v9 == *(v21 + 172))
      {
        v25 = *(v21 + 176);
LABEL_28:
        if (v10 == v25)
        {
          goto LABEL_36;
        }
      }
    }

    else if (v9 == *(v21 + 172) >> (v23 - v8))
    {
      v25 = *(v21 + 176) >> (v23 - v8);
      goto LABEL_28;
    }

    if (v23 < v8)
    {
      if (*(v21 + 172) != v9 >> v24 || *(v21 + 176) != v10 >> v24)
      {
        goto LABEL_55;
      }

LABEL_36:
      v26 = v5[1];
      v27 = v5[2];
      if (v26 >= v27)
      {
        v29 = *v5;
        v30 = v26 - *v5;
        v31 = (v30 >> 4) + 1;
        if (v31 >> 60)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v32 = v27 - v29;
        if (v32 >> 3 > v31)
        {
          v31 = v32 >> 3;
        }

        if (v32 >= 0x7FFFFFFFFFFFFFF0)
        {
          v33 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v31;
        }

        if (v33)
        {
          if (!(v33 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v34 = (16 * (v30 >> 4));
        *v34 = v21;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v28 = v34 + 1;
        memcpy(0, v29, v30);
        *v40 = 0;
        v40[1] = v28;
        v5 = v40;
        v40[2] = 0;
        if (v29)
        {
          operator delete(v29);
        }

        v7 = v41;
        v10 = v38;
        v9 = v39;
      }

      else
      {
        *v26 = v21;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v28 = v26 + 1;
      }

      v5[1] = v28;
      v17 = v42;
      goto LABEL_55;
    }

    if (v23 == v8 && *(v21 + 172) == v9 && *(v21 + 176) == v10)
    {
      goto LABEL_36;
    }

LABEL_55:
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    }

    goto LABEL_57;
  }

LABEL_63:
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

void sub_1B30D038C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, std::__shared_weak_count *a14, uint64_t a15, void **a16)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  a16 = a13;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a16);
  _Unwind_Resume(a1);
}

void md::PairedTiledRenderLayer<md::ElevatedPolygonRenderable>::_determineEnteringRenderables(md::LayoutContext const&)::{lambda(std::shared_ptr<md::ElevatedStrokeTileData> const&,unsigned char,std::shared_ptr<md::DaVinciGroundTileData> const&)#1}::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  v11 = *(*a4 + 172);
  *v10 = *(v5 + 168);
  v12 = *(v5 + 184);
  v13 = *(v5 + 192);
  v6 = *(v5 + 608);
  v7 = *(v5 + 616);
  v8 = md::LayoutContext::cameraType(*(a1 + 16));
  gdc::ToCoordinateSystem(v8);
  md::GeometryContext::transformConstantData(v6, v7, &v9, *(a1 + 24), v10, v8, -1);
}

void sub_1B30D05A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ggl::MaskingOverlay::FillPipelineSetup::~FillPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::MaskingOverlay::MaskingPipelineSetup::~MaskingPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::FlyoverDsmDataRequester::requestDataKeys(md::FlyoverDsmDataRequester *this, const gdc::SelectionContext *a2, char a3)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v10 = a2;
  if (*(a2 + 82) != 1)
  {
    v11[0] = &unk_1F2A2DCB8;
    v11[1] = &v10;
    v11[2] = this;
    v11[3] = v11;
    v6 = this + 48;
    v13 = v12;
    v7 = std::__function::__func<md::FlyoverDsmDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::$_0,std::allocator<md::FlyoverDsmDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::$_0>,BOOL ()(geo::QuadTile const&)>::__clone(v11, v12);
    if (v6 != v12)
    {
      v8 = v13;
      v9 = *(this + 9);
      if (v13 == v12)
      {
        if (v9 == v6)
        {
          (*(*v13 + 24))(v7);
          (*(*v13 + 32))(v13);
          v13 = 0;
          (*(**(this + 9) + 24))(*(this + 9), v12);
          (*(**(this + 9) + 32))(*(this + 9));
          *(this + 9) = 0;
          v13 = v12;
          (*(v14[0] + 24))(v14, v6);
          (*(v14[0] + 32))(v14);
        }

        else
        {
          (*(*v13 + 24))(v7);
          (*(*v13 + 32))(v13);
          v13 = *(this + 9);
        }

        *(this + 9) = v6;
      }

      else if (v9 == v6)
      {
        (*(*v9 + 24))(*(this + 9), v12, v7);
        (*(**(this + 9) + 32))(*(this + 9));
        *(this + 9) = v13;
        v13 = v12;
      }

      else
      {
        v13 = *(this + 9);
        *(this + 9) = v8;
      }
    }

    std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](v12);
    std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](v11);
    md::SingleGEOResourceDataRequester::requestDataKeys(this, a2, a3);
  }
}

__n128 std::__function::__func<md::FlyoverDsmDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::$_0,std::allocator<md::FlyoverDsmDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::$_0>,BOOL ()(geo::QuadTile const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2DCB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unint64_t md::FlyoverDsmManifestInformer::downloadZoomRange(md::FlyoverDsmManifestInformer *this)
{
  v2 = (*(**(this + 1) + 24))(*(this + 1), 20);
  v4 = v3;
  v5 = (*(**(this + 1) + 24))(*(this + 1), 50);
  v6 = HIDWORD(v5);
  if (v4)
  {
    if (v5 >= v2)
    {
      LODWORD(v5) = v2;
    }

    if (HIDWORD(v2) > v6)
    {
      v6 = HIDWORD(v2);
    }

    v7 = v5 & 0xFFFFFF00;
  }

  else
  {
    v6 = 0;
    LOBYTE(v5) = 0;
    v7 = 0;
  }

  return v7 | v5 | (v6 << 32);
}

uint64_t md::FlyoverDsmManifestInformer::resourceTileForTile(md::FlyoverDsmManifestInformer *this, unsigned __int16 a2, const geo::QuadTile *a3)
{
  v3 = *(this + 1);
  if (*(a3 + 1) <= 0xDu)
  {
    v4 = 50;
  }

  else
  {
    v4 = 20;
  }

  return (*(*v3 + 16))(v3, v4);
}

void md::FlyoverDsmDataRequester::~FlyoverDsmDataRequester(md::FlyoverDsmDataRequester *this)
{
  *this = &unk_1F2A2DBB0;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F2A2DC50;
  std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](this + 48);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2DBB0;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F2A2DC50;
  std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](this + 48);
}

void md::RoadTileDataRenderable::~RoadTileDataRenderable(md::RoadTileDataRenderable *this)
{
  *this = &unk_1F2A2DD00;
  std::unique_ptr<md::TrailJunctionsResource>::reset[abi:nn200100]((this + 408), 0);
  md::MapTileDataRenderable<md::RoadTileData>::~MapTileDataRenderable(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2DD00;
  std::unique_ptr<md::TrailJunctionsResource>::reset[abi:nn200100]((this + 408), 0);

  md::MapTileDataRenderable<md::RoadTileData>::~MapTileDataRenderable(this);
}

void md::MapTileDataRenderable<md::RoadTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *this)
{
  *this = &unk_1F2A2DD20;
  v2 = *(this + 50);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::BaseMapTileDataRenderable::~BaseMapTileDataRenderable(this);
}

void md::MapTileDataRenderable<md::RoadTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *a1)
{
  md::MapTileDataRenderable<md::RoadTileData>::~MapTileDataRenderable(a1);

  JUMPOUT(0x1B8C62190);
}

std::string *std::optional<std::string>::operator=[abi:nn200100]<char const*&,void>(std::string *a1, std::string::value_type *a2)
{
  if (a1[1].__r_.__value_.__s.__data_[0] == 1)
  {
    return std::string::__assign_external(a1, a2);
  }

  result = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  result[1].__r_.__value_.__s.__data_[0] = 1;
  return result;
}

md::VenueLevel *md::VenueLevel::VenueLevel(md::VenueLevel *this, uint64_t a2, __int16 a3, char *__s, char *a5, std::string::value_type *a6, std::string::value_type *a7, char a8, double a9)
{
  *this = a2;
  *(this + 4) = a3;
  *(this + 16) = 0;
  v13 = this + 16;
  *(this + 40) = 0;
  *(this + 72) = 0;
  *(this + 48) = 0;
  v14 = this + 48;
  *(this + 80) = 0;
  v15 = (this + 80);
  *(this + 104) = 0;
  *(this + 112) = 0;
  v16 = (this + 112);
  *(this + 136) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 18) = 0;
  *(this + 168) = a8;
  *(this + 22) = a9;
  if (__s)
  {
    std::string::basic_string[abi:nn200100]<0>(&v18, __s);
    if (*(this + 40) != 1)
    {
      *v13 = v18;
      *(v13 + 2) = v19;
      *(this + 40) = 1;
      if (!a5)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }

    if (*(this + 39) < 0)
    {
      operator delete(*v13);
    }

    *v13 = v18;
    *(v13 + 2) = v19;
  }

  if (!a5)
  {
    goto LABEL_13;
  }

LABEL_9:
  std::string::basic_string[abi:nn200100]<0>(&v18, a5);
  if (*(this + 72) == 1)
  {
    if (*(this + 71) < 0)
    {
      operator delete(*v14);
    }

    *v14 = v18;
    *(v14 + 2) = v19;
LABEL_13:
    if (!a6)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  *v14 = v18;
  *(v14 + 2) = v19;
  *(this + 72) = 1;
  if (a6)
  {
LABEL_14:
    std::optional<std::string>::operator=[abi:nn200100]<char const*&,void>(v15, a6);
  }

LABEL_15:
  if (a7)
  {
    std::optional<std::string>::operator=[abi:nn200100]<char const*&,void>(v16, a7);
  }

  return this;
}

uint64_t std::__function::__func<md::ita::CheckIfMaterialNeedsUpdate::operator()(ecs2::Query<md::ls::UniqueMaterialData const&>)::$_1,std::allocator<md::ita::CheckIfMaterialNeedsUpdate::operator()(ecs2::Query<md::ls::UniqueMaterialData const&>)::$_1>,void ()(md::ls::UniqueMaterialData const&)>::operator()(ecs2::ExecutionTaskContext *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = &unk_1F2A2DE08;
  v4 = ecs2::ExecutionTaskContext::currentEntity(a1) << 32;
  v5 = &v3;
  v6[3] = v6;
  v6[0] = &unk_1F2A2DE08;
  v6[1] = v4;
  v7 = 0;
  ecs2::Runtime::queueCommand();
  if (v7 != -1)
  {
    (off_1F2A2DE40[v7])(&v2, v6);
  }

  v7 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v3);
}

void ecs2::BasicRegistry<void>::add<md::ls::MaterialPendingProcessing>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialPendingProcessing>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialPendingProcessing>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialPendingProcessing>(a1);
  v6 = v5;
  v7 = a2 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v7 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((a2 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v17 = v6[4];
      v18 = (v14 - v17) >> 2;
      if ((v18 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = v13 - v17;
      v20 = v19 >> 1;
      if (v19 >> 1 <= (v18 + 1))
      {
        v20 = v18 + 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v21);
      }

      v22 = (4 * v18);
      v15 = a2;
      *v22 = a2;
      v16 = v22 + 1;
      v23 = v6[4];
      v24 = v6[5] - v23;
      v25 = v22 - v24;
      memcpy(v22 - v24, v23, v24);
      v26 = v6[4];
      v6[4] = v25;
      v6[5] = v16;
      v6[6] = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      v15 = a2;
      *v14 = a2;
      v16 = v14 + 1;
    }

    v6[5] = v16;
    v27 = ((v16 - *(v6 + 8)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v27;
    v28 = v6[13];
    for (i = v6[14]; v28 != i; v28 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v28 + 24), v15);
    }
  }

  v30 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v30 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialPendingProcessing>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialPendingProcessing>(void)::metadata) = *(a1 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::MaterialPendingProcessing>(ecs2::Entity,md::ls::MaterialPendingProcessing &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A2DE08;
  a2[1] = *(result + 8);
  return result;
}

uint64_t std::__function::__func<md::ita::CheckIfMaterialNeedsUpdate::operator()(ecs2::Query<md::ls::UniqueMaterialData const&>)::$_1,std::allocator<md::ita::CheckIfMaterialNeedsUpdate::operator()(ecs2::Query<md::ls::UniqueMaterialData const&>)::$_1>,void ()(md::ls::UniqueMaterialData const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A2DDC0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::ita::CheckIfMaterialNeedsUpdate::operator()(ecs2::Query<md::ls::UniqueMaterialData const&>)::$_0,std::allocator<md::ita::CheckIfMaterialNeedsUpdate::operator()(ecs2::Query<md::ls::UniqueMaterialData const&>)::$_0>,void ()(md::StyleManagerEvent)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A2DD78;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::ita::ProcessMaterialsForUpdatedStyle::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialVisibilityOptionsHandle &>,ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialZIndexHandle &>)::$_1,std::allocator<md::ita::ProcessMaterialsForUpdatedStyle::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialVisibilityOptionsHandle &>,ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialZIndexHandle &>)::$_1>,void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialZIndexHandle &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2DEC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::ita::ProcessMaterialsForUpdatedStyle::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialVisibilityOptionsHandle &>,ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialZIndexHandle &>)::$_0,std::allocator<md::ita::ProcessMaterialsForUpdatedStyle::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialVisibilityOptionsHandle &>,ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialZIndexHandle &>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialVisibilityOptionsHandle &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2DE78;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void non-virtual thunk toggl::MeshTyped<ggl::Draping::FoundationVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::Draping::FoundationVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void md::Logic<md::LoadingStatusLogic,md::LoadingStatusContext,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<md::IdentifiedResourceContext>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void ___ZN2md18LoadingStatusLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_12SceneContextEEEENS6_IJNS_25IdentifiedResourceContextEEEEEE20ResolvedDependenciesERNS_20LoadingStatusContextE_block_invoke(uint64_t a1)
{
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v2 = GEOGetVectorKitVKDefaultLog_log;
  v3 = v2;
  v4 = *(*(a1 + 32) + 80);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v3, OS_SIGNPOST_INTERVAL_END, v4, "LoadAllLayers", &unk_1B3514CAA, v5, 2u);
  }
}

_BYTE *md::Logic<md::LoadingStatusLogic,md::LoadingStatusContext,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<md::IdentifiedResourceContext>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x90B6813830DCB581 && (v5 = *(a3 + 32)) != 0)
  {
    v9[0] = md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<md::IdentifiedResourceContext>>::resolveDependencies(*(a2 + 8));
    v9[1] = v8;
    return (*(*a1 + 160))(a1, a2, v9, v5);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t gdc::ObjectHolder<md::LoadingStatusContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::LoadingStatusContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A2E158;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::LoadingStatusContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A2E158;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::LoadingStatusLogic::createDebugNode(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(&v12, "LoadingStatusLogic");
  gdc::DebugTreeNode::DebugTreeNode(a2, &v12);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  std::string::basic_string[abi:nn200100]<0>(&v12, "skipFullyLoadedReport");
  gdc::DebugTreeValue::DebugTreeValue(v9, *(a1 + 128));
  gdc::DebugTreeNode::addProperty(a2, &v12, v9);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if ((*(a1 + 128) & 1) == 0)
  {
    std::string::basic_string[abi:nn200100]<0>(&v12, "sceneStatus");
    v4 = *(a1 + 120);
    if (*(v4 + 89) == 1)
    {
      v5 = *(v4 + 88);
    }

    else
    {
      v5 = 0;
    }

    gdc::DebugTreeValue::DebugTreeValue(v6, v5);
    gdc::DebugTreeNode::addProperty(a2, &v12, v6);
    if (v8 < 0)
    {
      operator delete(v7);
    }

    if (v13 < 0)
    {
      operator delete(v12);
    }
  }
}

void sub_1B30D1C54(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1 + 72;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v2 - 40));
  *(v2 - 40) = v1 + 48;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v2 - 40));
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void md::LoadingStatusLogic::~LoadingStatusLogic(md::LoadingStatusLogic *this)
{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));

  JUMPOUT(0x1B8C62190);
}

{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void ggl::FlyoverLibrary::~FlyoverLibrary(ggl::FlyoverLibrary *this)
{
  ggl::ShaderLibrary::~ShaderLibrary(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::FlyoverLibraryBundleMTLData::~FlyoverLibraryBundleMTLData(ggl::FlyoverLibraryBundleMTLData *this)
{
  ggl::MTLBundleShaderLibraryData::~MTLBundleShaderLibraryData(this);

  JUMPOUT(0x1B8C62190);
}

void md::DaVinciElevationRaster::~DaVinciElevationRaster(md::DaVinciElevationRaster *this)
{
  *this = &unk_1F2A2E1C0;
  *(this + 80) = &unk_1F2A2E228;
  v2 = *(this + 95);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 92);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::MapTileData::~MapTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2E1C0;
  *(this + 80) = &unk_1F2A2E228;
  v2 = *(this + 95);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 92);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::MapTileData::~MapTileData(this);
}

void std::__shared_ptr_emplace<md::BoundingVolume>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void std::__shared_ptr_emplace<md::BoundingVolume>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2E240;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::CartographicGlobeMapEngineConfiguration::~CartographicGlobeMapEngineConfiguration(md::CartographicGlobeMapEngineConfiguration *this)
{
  *this = &unk_1F2A2E2E8;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = &unk_1F2A58798;
  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2E2E8;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = &unk_1F2A58798;
  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

uint64_t md::RenderBatch::remove(int8x8_t *a1, unint64_t a2)
{
  v2 = a1[31];
  if (!*&v2)
  {
    return 0;
  }

  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v2 <= a2)
    {
      v5 = a2 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & a2;
  }

  v7 = a1[30];
  v8 = *(*&v7 + 8 * v5);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (!*v8)
  {
    return result;
  }

  v9 = *&v2 - 1;
  while (1)
  {
    v10 = *(result + 8);
    if (v10 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v10 >= *&v2)
      {
        v10 %= *&v2;
      }
    }

    else
    {
      v10 &= v9;
    }

    if (v10 != v5)
    {
      return 0;
    }

LABEL_19:
    result = *result;
    if (!result)
    {
      return result;
    }
  }

  if (__PAIR64__(*(result + 18), *(result + 16)) != __PAIR64__(WORD1(a2), a2) || *(result + 20) != HIDWORD(a2))
  {
    goto LABEL_19;
  }

  v11 = *(result + 8);
  if (v4.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= v9;
  }

  v12 = *(*&v7 + 8 * v11);
  do
  {
    v13 = v12;
    v12 = *v12;
  }

  while (v12 != result);
  if (v13 == &a1[32])
  {
    goto LABEL_40;
  }

  v14 = v13[1];
  if (v4.u32[0] > 1uLL)
  {
    if (v14 >= *&v2)
    {
      v14 %= *&v2;
    }
  }

  else
  {
    v14 &= v9;
  }

  if (v14 != v11)
  {
LABEL_40:
    if (!*result)
    {
      goto LABEL_41;
    }

    v15 = *(*result + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v15 >= *&v2)
      {
        v15 %= *&v2;
      }
    }

    else
    {
      v15 &= v9;
    }

    if (v15 != v11)
    {
LABEL_41:
      *(*&v7 + 8 * v11) = 0;
    }
  }

  v16 = *result;
  if (*result)
  {
    v17 = *(v16 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v17 >= *&v2)
      {
        v17 %= *&v2;
      }
    }

    else
    {
      v17 &= v9;
    }

    if (v17 != v11)
    {
      *(*&a1[30] + 8 * v17) = v13;
      v16 = *result;
    }
  }

  *v13 = v16;
  *result = 0;
  --*&a1[33];
  operator delete(result);
  result = 1;
  if ((a1[44].i8[0] & 1) == 0)
  {
    a1[44].i8[0] = 1;
    if (a1[46].i8[0] == 1)
    {
      a1[46].i8[0] = 0;
    }

    ++*&a1[47];
  }

  return result;
}

uint64_t std::construct_at[abi:nn200100]<md::MeshRenderable,std::shared_ptr<md::InstanceData> const&,md::MeshRenderableType,md::components::MeshInstance *&,md::MeshRenderable*>(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, char *a4, uint64_t **a5)
{
  v8[0] = a2;
  v8[1] = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  md::MeshRenderable::MeshRenderable(a1, v8, *a4, *a5);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  return a1;
}

uint64_t std::vector<md::MeshRenderable>::__emplace_back_slow_path<std::shared_ptr<md::InstanceData> const&,md::MeshRenderableType,md::components::MeshInstance *&>(uint64_t a1, uint64_t a2, char *a3, uint64_t **a4)
{
  v4 = 0x84BDA12F684BDA13 * ((*(a1 + 8) - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x12F684BDA12F684)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x97B425ED097B426 * ((*(a1 + 16) - *a1) >> 3) > v5)
  {
    v5 = 0x97B425ED097B426 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x84BDA12F684BDA13 * ((*(a1 + 16) - *a1) >> 3) >= 0x97B425ED097B42)
  {
    v7 = 0x12F684BDA12F684;
  }

  else
  {
    v7 = v5;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<md::MeshRenderable>>(v7);
  }

  v14 = 0;
  v15 = 216 * v4;
  v16 = 216 * v4;
  std::construct_at[abi:nn200100]<md::MeshRenderable,std::shared_ptr<md::InstanceData> const&,md::MeshRenderableType,md::components::MeshInstance *&,md::MeshRenderable*>(216 * v4, *a2, *(a2 + 8), a3, a4);
  *&v16 = 216 * v4 + 216;
  v8 = *(a1 + 8);
  v9 = 216 * v4 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::MeshRenderable>,md::MeshRenderable*>(*a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<md::MeshRenderable>::~__split_buffer(&v14);
  return v13;
}

void sub_1B30D2514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<md::MeshRenderable>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:nn200100]<md::MeshRenderable,std::shared_ptr<md::InstanceData> const&,md::MeshRenderableType,md::Mesh *,gm::Box<float,3> &,md::MeshRenderable*>(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t *a4, uint64_t a5)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *a4;
  *a1 = &unk_1F2A3CEF8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 76) = xmmword_1B33AFF10;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 92) = 0x80000000800000;
  *(a1 + 100) = 0;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  *(a1 + 140) = 0;
  *(a1 + 144) = 1;
  *(a1 + 146) = 1;
  *(a1 + 152) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0;
  *(a1 + 192) = 0;
  *(a1 + 196) = 0;
  *(a1 + 200) = 0;
  *(a1 + 147) = 0;
  *(a1 + 204) = atomic_fetch_add(&md::MeshRenderable::generateId(void)::sId, 1u);
  *(a1 + 208) = 0;
  if (v6)
  {
    v7 = 0;
    *(a1 + 208) = v6;
    *(a1 + 16) = *(v6 + 16);
    do
    {
      *(a1 + 76 + v7) = *(a5 + v7);
      v7 += 4;
    }

    while (v7 != 12);
    for (i = 0; i != 12; i += 4)
    {
      *(a1 + 88 + i) = *(a5 + 12 + i);
    }
  }

  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::MeshRenderable>>(unint64_t a1)
{
  if (a1 < 0x12F684BDA12F685)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void (***std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::MeshRenderable>,md::MeshRenderable*>(void (***result)(void), void (***a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v4 = 0;
    do
    {
      v5 = a3 + v4 * 8;
      *v5 = &unk_1F2A3CEF8;
      v6 = &result[v4];
      v7 = *&result[v4 + 1];
      *(v5 + 24) = result[v4 + 3];
      *(v5 + 8) = v7;
      v8 = result[v4 + 5];
      *(v5 + 32) = result[v4 + 4];
      *(v5 + 40) = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
      }

      v9 = *(v6 + 3);
      v10 = *(v6 + 5);
      *(v5 + 64) = *(v6 + 4);
      *(v5 + 80) = v10;
      *(v5 + 48) = v9;
      v11 = *(v6 + 6);
      v12 = *(v6 + 7);
      v13 = *(v6 + 8);
      *(v5 + 143) = *(v6 + 143);
      *(v5 + 112) = v12;
      *(v5 + 128) = v13;
      *(v5 + 96) = v11;
      *(v5 + 152) = 0;
      *(v5 + 176) = 0;
      if (*(v6 + 176) == 1)
      {
        v14 = result[v4 + 20];
        *(v5 + 152) = result[v4 + 19];
        *(a3 + v4 * 8 + 160) = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
        }

        *(a3 + v4 * 8 + 168) = result[v4 + 21];
        *(v5 + 176) = 1;
      }

      v15 = a3 + v4 * 8;
      v16 = &result[v4];
      *(v15 + 184) = result[v4 + 23];
      *(v15 + 192) = 0;
      if (BYTE1(result[v4 + 24]) == 1)
      {
        *(v15 + 192) = *(v16 + 192);
        *(v15 + 193) = 1;
      }

      v17 = *(v16 + 196);
      *(v15 + 212) = *(v16 + 53);
      *(v15 + 196) = v17;
      v4 += 27;
    }

    while (&result[v4] != a2);
    v18 = result;
    v19 = result;
    do
    {
      v20 = *v19;
      v19 += 27;
      (*v20)();
      v18 += 27;
      result = v19;
    }

    while (v19 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<md::MeshRenderable>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 216);
    *(a1 + 16) = i - 216;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void md::RenderBatch::destroyRenderables(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 320);
  v4 = *(a1 + 328);
  if (v3 == v4)
  {
LABEL_5:
    *(a1 + 328) = v3;
  }

  else
  {
    while (1)
    {
      v9 = *v3;
      v6 = *(a2 + 24);
      if (!v6)
      {
        break;
      }

      (*(*v6 + 48))(v6, &v9);
      if (++v3 == v4)
      {
        v3 = *(a1 + 320);
        goto LABEL_5;
      }
    }

    v7 = std::__throw_bad_function_call[abi:nn200100]();
    [(GRLResourceGroupObserver *)v7 .cxx_destruct];
  }
}

void sub_1B30D2BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id GEOGetVectorKitVKGeoResourceProviderLog(void)
{
  if (GEOGetVectorKitVKGeoResourceProviderLog(void)::onceToken[0] != -1)
  {
    dispatch_once(GEOGetVectorKitVKGeoResourceProviderLog(void)::onceToken, &__block_literal_global_85);
  }

  v1 = GEOGetVectorKitVKGeoResourceProviderLog(void)::log;

  return v1;
}

void std::vector<std::pair<std::bitset<2ul>,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  a1[1] = v2;
}

void ___ZL39GEOGetVectorKitVKGeoResourceProviderLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "VKGeoResourceProvider");
  v1 = GEOGetVectorKitVKGeoResourceProviderLog(void)::log;
  GEOGetVectorKitVKGeoResourceProviderLog(void)::log = v0;
}

void md::GeoResourceProvider::onTileGroupChange(md::GeoResourceProvider *this)
{
  v6 = *MEMORY[0x1E69E9840];
  std::mutex::lock((this + 112));
  v2 = GEOGetVectorKitVKGeoResourceProviderLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 41) - *(this + 40)) >> 3);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_INFO, "Received tileGroupChange - clearing cached resource names (count:%lu)", &v4, 0xCu);
  }

  std::vector<std::pair<std::bitset<2ul>,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>>>::clear[abi:nn200100](this + 40);
  grl::ResourceProvider::clearResourceNamesCache(this);
  std::mutex::unlock((this + 112));
}

void non-virtual thunk tomd::GeoResourceProvider::~GeoResourceProvider(md::GeoResourceProvider *this)
{
  md::GeoResourceProvider::~GeoResourceProvider((this - 264));

  JUMPOUT(0x1B8C62190);
}

{
  md::GeoResourceProvider::~GeoResourceProvider((this - 264));
}

void md::GeoResourceProvider::~GeoResourceProvider(md::GeoResourceProvider *this)
{
  *this = &unk_1F2A2E3A8;
  *(this + 33) = &unk_1F2A2E400;
  grl::ResourceProvider::removeObserver(this, this + 264);
  [*(this + 38) clearProvider];
  [*(this + 35) clearProvider];
  v2 = [MEMORY[0x1E69A2478] modernManager];
  [v2 removeTileGroupObserver:*(this + 35)];

  v3 = (this + 320);
  std::vector<std::pair<std::bitset<2ul>,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>>>::__destroy_vector::operator()[abi:nn200100](&v3);
  *(this + 37) = &unk_1F2A2E4A8;

  *(this + 34) = &unk_1F2A2E488;

  grl::ResourceProvider::~ResourceProvider(this);
}

{
  md::GeoResourceProvider::~GeoResourceProvider(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B30D308C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;

  a10 = (v10 + 320);
  std::vector<std::pair<std::bitset<2ul>,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>>>::__destroy_vector::operator()[abi:nn200100](&a10);
  *(v10 + 296) = &unk_1F2A2E4A8;

  *(v10 + 272) = &unk_1F2A2E488;
  grl::ResourceProvider::~ResourceProvider(v10);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::bitset<2ul>,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::bitset<2ul>,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void grl::ResourceProvider::~ResourceProvider(grl::ResourceProvider *this)
{
  *this = &unk_1F2A5FA10;
  std::__tree<std::__value_type<geo::c3mm::C3mmFileIndex,std::shared_ptr<geo::c3mm::C3mmFile>>,std::__map_value_compare<geo::c3mm::C3mmFileIndex,std::__value_type<geo::c3mm::C3mmFileIndex,std::shared_ptr<geo::c3mm::C3mmFile>>,std::less<geo::c3mm::C3mmFileIndex>,true>,std::allocator<std::__value_type<geo::c3mm::C3mmFileIndex,std::shared_ptr<geo::c3mm::C3mmFile>>>>::destroy(*(this + 31));
  std::mutex::~mutex((this + 176));
  std::mutex::~mutex((this + 112));
  std::mutex::~mutex((this + 48));
  v2 = *(this + 3);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    operator delete(v4);
  }
}

void geo::_retain_ptr<GRLResourceGroupObserver * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2E488;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<GRLResourceGroupObserver * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2E488;

  return a1;
}

void geo::_retain_ptr<RegionalResourceObserver * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2E4A8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<RegionalResourceObserver * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2E4A8;

  return a1;
}

void md::GeoResourceProvider::streamForResourceName(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v4 = [MEMORY[0x1E69A2468] sharedManager];
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
  v7 = [v4 pathForResourceWithName:v6 fallbackBundle:0 fallbackNameHandler:&__block_literal_global_82];

  if (v7 && [v7 UTF8String])
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_1B30D35D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  std::istream::~istream();
  MEMORY[0x1B8C620C0](v11);
  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v13);

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<std::ifstream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2E4C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::GeoResourceProvider::dataForResourceName(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v11 = [MEMORY[0x1E69A2468] sharedManager];
  if (*(a1 + 23) >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
  v6 = [v11 dataForResourceWithName:v5 fallbackBundle:0 fallbackNameHandler:&__block_literal_global_29478];

  if (v6 && [v6 length])
  {
    v12 = v6;
  }

  else
  {
    v12 = 0;
  }

  v7 = [v12 bytes];
  v8 = [v12 bytes];
  v9 = [v12 length];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v10 = v8 + v9 - v7;
  if (v10)
  {
    std::vector<unsigned char>::__vallocate[abi:nn200100](a2, v10);
  }
}

_BYTE *std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__emplace_back_slow_path<char const*&>(grl::zone_mallocator *a1, char **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 2) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 2) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 2) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = (a1 + 24);
  if (v6)
  {
    v7 = grl::zone_mallocator::instance(a1);
    v8 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::string>(v7, v6);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[24 * v2];
  v17 = v16;
  v18 = &v8[24 * v6];
  std::allocator_traits<std::allocator<std::string>>::construct[abi:nn200100]<std::string,char const*&,void,0>(v16, *a2);
  v9 = v16 + 24;
  v10 = *(a1 + 1) - *a1;
  v11 = &v16[-v10];
  memcpy(&v16[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 1) = v9;
  v13 = *(a1 + 2);
  *(a1 + 2) = v18;
  v17 = v12;
  v18 = v13;
  v15 = v12;
  v16 = v12;
  std::__split_buffer<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator> &>::~__split_buffer(&v15);
  return v9;
}

void sub_1B30D3974(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5F7D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::string>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 24 * a2, 0x1012040EC159624uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::vector<std::pair<std::shared_ptr<md::TextDataString>,float>,geo::allocator_adapter<std::pair<std::shared_ptr<md::TextDataString>,float>,mdm::zone_mallocator>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v4 = *(i - 16);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  a1[1] = v2;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<std::shared_ptr<md::TextDataString>,float>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::__shared_ptr_emplace<md::weak_interface_ptr<md::LabelTextDataLoader>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2E500;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *std::vector<std::pair<std::shared_ptr<md::TextDataString>,float>,geo::allocator_adapter<std::pair<std::shared_ptr<md::TextDataString>,float>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<std::pair<std::shared_ptr<md::TextDataString>,float>*,std::pair<std::shared_ptr<md::TextDataString>,float>*>(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 >= 0xAAAAAAAAAAAAAABLL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = result;
    v8 = mdm::zone_mallocator::instance(result);
    result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<std::shared_ptr<md::TextDataString>,float>>(v8, a4);
    *v7 = result;
    v7[1] = result;
    for (v7[2] = &result[3 * a4]; a2 != a3; result += 3)
    {
      v9 = *(a2 + 8);
      *result = *a2;
      result[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      *(result + 4) = *(a2 + 16);
      a2 += 24;
    }

    v7[1] = result;
  }

  return result;
}

uint64_t md::LabelTextDataLoader::finishBatch(void)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v5 = a1;
  std::vector<std::pair<std::shared_ptr<md::TextDataString>,float>,geo::allocator_adapter<std::pair<std::shared_ptr<md::TextDataString>,float>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

void std::__function::__func<md::LabelTextDataLoader::finishBatch(void)::$_0,std::allocator<md::LabelTextDataLoader::finishBatch(void)::$_0>,void ()(void)>::operator()(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  for (i = a1[2]; v2 != i; v2 += 24)
  {
    v5 = *v2;
    v4 = *(v2 + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    md::TextDataString::generateGlyphInfos(v5, [*(a1[5] + 96) grlFontManager], *(v2 + 16));
    atomic_store(0, (v5 + 129));
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  v6 = a1[6];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a1[8];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1B30D3F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::LabelTextDataLoader::finishBatch(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelTextDataLoader::finishBatch(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  std::recursive_mutex::lock((v2 + 24));
  v3 = *(a1 + 24);
  std::mutex::lock(v3);
  sig = v3[1].__m_.__sig;
  if (sig)
  {
    atomic_fetch_add((sig + 56), 0xFFFFFFFF);
    v5 = *(a1 + 8);
    *(v5 + 3038) = 1;
    *(v5 + 3040) = 1;
    v6 = atomic_load((v5 + 3053));
    if (v6)
    {
      v7 = *(v5 + 136);
      if (v7)
      {
        v8 = *(v7 + 56);
        if (v8)
        {
          std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v8, v5, 9);
        }
      }
    }
  }

  std::mutex::unlock(v3);

  std::recursive_mutex::unlock((v2 + 24));
}

void sub_1B30D404C(_Unwind_Exception *a1)
{
  std::mutex::unlock(v1);
  std::recursive_mutex::unlock((v2 + 24));
  _Unwind_Resume(a1);
}

void std::__function::__func<md::LabelTextDataLoader::finishBatch(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelTextDataLoader::finishBatch(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(a1 + 8);

  operator delete(a1);
}

void *std::__function::__func<md::LabelTextDataLoader::finishBatch(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelTextDataLoader::finishBatch(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F2A2E580;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::LabelTextDataLoader::finishBatch(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelTextDataLoader::finishBatch(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2E580;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelTextDataLoader::finishBatch(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelTextDataLoader::finishBatch(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2E580;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void std::__function::__func<md::LabelTextDataLoader::finishBatch(void)::$_0,std::allocator<md::LabelTextDataLoader::finishBatch(void)::$_0>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = (a1 + 8);
  std::vector<std::pair<std::shared_ptr<md::TextDataString>,float>,geo::allocator_adapter<std::pair<std::shared_ptr<md::TextDataString>,float>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);

  operator delete(a1);
}

void std::__function::__func<md::LabelTextDataLoader::finishBatch(void)::$_0,std::allocator<md::LabelTextDataLoader::finishBatch(void)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = (a1 + 8);
  std::vector<std::pair<std::shared_ptr<md::TextDataString>,float>,geo::allocator_adapter<std::pair<std::shared_ptr<md::TextDataString>,float>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
}

void *std::__function::__func<md::LabelTextDataLoader::finishBatch(void)::$_0,std::allocator<md::LabelTextDataLoader::finishBatch(void)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2E538;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a2 + 32) = *(a1 + 32);
  result = std::vector<std::pair<std::shared_ptr<md::TextDataString>,float>,geo::allocator_adapter<std::pair<std::shared_ptr<md::TextDataString>,float>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<std::pair<std::shared_ptr<md::TextDataString>,float>*,std::pair<std::shared_ptr<md::TextDataString>,float>*>((a2 + 8), *(a1 + 8), *(a1 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  v5 = *(a1 + 48);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 64);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::LabelTextDataLoader::finishBatch(void)::$_0,std::allocator<md::LabelTextDataLoader::finishBatch(void)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A2E538;
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = (a1 + 8);
  std::vector<std::pair<std::shared_ptr<md::TextDataString>,float>,geo::allocator_adapter<std::pair<std::shared_ptr<md::TextDataString>,float>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::LabelTextDataLoader::finishBatch(void)::$_0,std::allocator<md::LabelTextDataLoader::finishBatch(void)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A2E538;
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v5 = (a1 + 8);
  std::vector<std::pair<std::shared_ptr<md::TextDataString>,float>,geo::allocator_adapter<std::pair<std::shared_ptr<md::TextDataString>,float>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<std::shared_ptr<md::TextDataString>,float>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 24 * a2, 0x1020040EDCEB4C7uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void md::CartographicTiledVectorRenderLayer<md::RoadTileDataRenderable>::featureMarkerAt(uint64_t a1@<X0>, float64x2_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 32);
  *a3 = 0;
  a3[1] = 0;
  if (v3 == 1)
  {
    v5 = *(a1 + 272);
    v6 = *(a1 + 280);
    if (v5 != v6)
    {
      v20 = a3;
      v8 = 0;
      v9 = xmmword_1B33B09C0;
      while (1)
      {
        v10 = *(*v5 + 392);
        v11 = 1 << *(v10 + 169);
        v12 = ~*(v10 + 172);
        v13 = a2[1].f64[0];
        v25 = v13;
        v14.i64[0] = *(v10 + 176);
        v14.i64[1] = v11 + v12;
        v15 = vmulq_n_f64(vmlsq_lane_f64(*a2, vcvtq_f64_s64(v14), 1.0 / v11, 0), v11);
        v24 = vcvt_f32_f64(v15);
        v16 = vcvt_hight_f32_f64(v24, v15);
        LODWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v16, v9)).u32[0];
        HIDWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v9, v16)).i32[1];
        if ((vmaxv_u16(vcltz_s16(vshl_n_s16(*&v15.f64[0], 0xFuLL))) & 1) == 0)
        {
          for (i = 0; i != 3; ++i)
          {
            v21[i] = *&v24.i32[i];
          }

          (*(*a1 + 216))(&v22, a1);
          v19 = v22;
          v18 = v23;
          v22 = 0;
          v23 = 0;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v23);
            }
          }

          if (v19)
          {
            *v20 = v19;
            v20[1] = v18;
            return;
          }

          v8 = v18;
          v9 = xmmword_1B33B09C0;
        }

        v5 += 8;
        if (v5 == v6)
        {
          a3 = v20;
          v20[1] = v8;
          break;
        }
      }
    }

    *a3 = 0;
  }
}

void sub_1B30D47BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = v10;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void md::CartographicTiledVectorRenderLayer<md::DaVinciRoadTileDataRenderable>::featureMarkerAt(uint64_t a1@<X0>, float64x2_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 32);
  *a3 = 0;
  a3[1] = 0;
  if (v3 == 1)
  {
    v5 = *(a1 + 272);
    v6 = *(a1 + 280);
    if (v5 != v6)
    {
      v20 = a3;
      v8 = 0;
      v9 = xmmword_1B33B09C0;
      while (1)
      {
        v10 = *(*v5 + 392);
        v11 = 1 << *(v10 + 169);
        v12 = ~*(v10 + 172);
        v13 = a2[1].f64[0];
        v25 = v13;
        v14.i64[0] = *(v10 + 176);
        v14.i64[1] = v11 + v12;
        v15 = vmulq_n_f64(vmlsq_lane_f64(*a2, vcvtq_f64_s64(v14), 1.0 / v11, 0), v11);
        v24 = vcvt_f32_f64(v15);
        v16 = vcvt_hight_f32_f64(v24, v15);
        LODWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v16, v9)).u32[0];
        HIDWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v9, v16)).i32[1];
        if ((vmaxv_u16(vcltz_s16(vshl_n_s16(*&v15.f64[0], 0xFuLL))) & 1) == 0)
        {
          for (i = 0; i != 3; ++i)
          {
            v21[i] = *&v24.i32[i];
          }

          (*(*a1 + 216))(&v22, a1);
          v19 = v22;
          v18 = v23;
          v22 = 0;
          v23 = 0;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v23);
            }
          }

          if (v19)
          {
            *v20 = v19;
            v20[1] = v18;
            return;
          }

          v8 = v18;
          v9 = xmmword_1B33B09C0;
        }

        v5 += 8;
        if (v5 == v6)
        {
          a3 = v20;
          v20[1] = v8;
          break;
        }
      }
    }

    *a3 = 0;
  }
}

void sub_1B30D499C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = v10;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::featureMarkerAt(uint64_t a1@<X0>, float64x2_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 32);
  *a3 = 0;
  a3[1] = 0;
  if (v3 == 1)
  {
    v5 = *(a1 + 272);
    v6 = *(a1 + 280);
    if (v5 != v6)
    {
      v20 = a3;
      v8 = 0;
      v9 = xmmword_1B33B09C0;
      while (1)
      {
        v10 = *(*v5 + 392);
        v11 = 1 << *(v10 + 169);
        v12 = ~*(v10 + 172);
        v13 = a2[1].f64[0];
        v25 = v13;
        v14.i64[0] = *(v10 + 176);
        v14.i64[1] = v11 + v12;
        v15 = vmulq_n_f64(vmlsq_lane_f64(*a2, vcvtq_f64_s64(v14), 1.0 / v11, 0), v11);
        v24 = vcvt_f32_f64(v15);
        v16 = vcvt_hight_f32_f64(v24, v15);
        LODWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v16, v9)).u32[0];
        HIDWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v9, v16)).i32[1];
        if ((vmaxv_u16(vcltz_s16(vshl_n_s16(*&v15.f64[0], 0xFuLL))) & 1) == 0)
        {
          for (i = 0; i != 3; ++i)
          {
            v21[i] = *&v24.i32[i];
          }

          (*(*a1 + 216))(&v22, a1);
          v19 = v22;
          v18 = v23;
          v22 = 0;
          v23 = 0;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v23);
            }
          }

          if (v19)
          {
            *v20 = v19;
            v20[1] = v18;
            return;
          }

          v8 = v18;
          v9 = xmmword_1B33B09C0;
        }

        v5 += 8;
        if (v5 == v6)
        {
          a3 = v20;
          v20[1] = v8;
          break;
        }
      }
    }

    *a3 = 0;
  }
}

void sub_1B30D4B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = v10;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::VenueTileData>>::featureMarkerAt(uint64_t a1@<X0>, float64x2_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 32);
  *a3 = 0;
  a3[1] = 0;
  if (v3 == 1)
  {
    v5 = *(a1 + 272);
    v6 = *(a1 + 280);
    if (v5 != v6)
    {
      v20 = a3;
      v8 = 0;
      v9 = xmmword_1B33B09C0;
      while (1)
      {
        v10 = *(*v5 + 392);
        v11 = 1 << *(v10 + 169);
        v12 = ~*(v10 + 172);
        v13 = a2[1].f64[0];
        v25 = v13;
        v14.i64[0] = *(v10 + 176);
        v14.i64[1] = v11 + v12;
        v15 = vmulq_n_f64(vmlsq_lane_f64(*a2, vcvtq_f64_s64(v14), 1.0 / v11, 0), v11);
        v24 = vcvt_f32_f64(v15);
        v16 = vcvt_hight_f32_f64(v24, v15);
        LODWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v16, v9)).u32[0];
        HIDWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v9, v16)).i32[1];
        if ((vmaxv_u16(vcltz_s16(vshl_n_s16(*&v15.f64[0], 0xFuLL))) & 1) == 0)
        {
          for (i = 0; i != 3; ++i)
          {
            v21[i] = *&v24.i32[i];
          }

          (*(*a1 + 216))(&v22, a1);
          v19 = v22;
          v18 = v23;
          v22 = 0;
          v23 = 0;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v23);
            }
          }

          if (v19)
          {
            *v20 = v19;
            v20[1] = v18;
            return;
          }

          v8 = v18;
          v9 = xmmword_1B33B09C0;
        }

        v5 += 8;
        if (v5 == v6)
        {
          a3 = v20;
          v20[1] = v8;
          break;
        }
      }
    }

    *a3 = 0;
  }
}

void sub_1B30D4D5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = v10;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void md::CartographicTiledVectorRenderLayer<md::BuildingTileDataRenderable>::featureMarkerAt(uint64_t a1@<X0>, float64x2_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 32);
  *a3 = 0;
  a3[1] = 0;
  if (v3 == 1)
  {
    v5 = *(a1 + 272);
    v6 = *(a1 + 280);
    if (v5 != v6)
    {
      v20 = a3;
      v8 = 0;
      v9 = xmmword_1B33B09C0;
      while (1)
      {
        v10 = *(*v5 + 392);
        v11 = 1 << *(v10 + 169);
        v12 = ~*(v10 + 172);
        v13 = a2[1].f64[0];
        v25 = v13;
        v14.i64[0] = *(v10 + 176);
        v14.i64[1] = v11 + v12;
        v15 = vmulq_n_f64(vmlsq_lane_f64(*a2, vcvtq_f64_s64(v14), 1.0 / v11, 0), v11);
        v24 = vcvt_f32_f64(v15);
        v16 = vcvt_hight_f32_f64(v24, v15);
        LODWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v16, v9)).u32[0];
        HIDWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v9, v16)).i32[1];
        if ((vmaxv_u16(vcltz_s16(vshl_n_s16(*&v15.f64[0], 0xFuLL))) & 1) == 0)
        {
          for (i = 0; i != 3; ++i)
          {
            v21[i] = *&v24.i32[i];
          }

          (*(*a1 + 216))(&v22, a1);
          v19 = v22;
          v18 = v23;
          v22 = 0;
          v23 = 0;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v23);
            }
          }

          if (v19)
          {
            *v20 = v19;
            v20[1] = v18;
            return;
          }

          v8 = v18;
          v9 = xmmword_1B33B09C0;
        }

        v5 += 8;
        if (v5 == v6)
        {
          a3 = v20;
          v20[1] = v8;
          break;
        }
      }
    }

    *a3 = 0;
  }
}

void sub_1B30D4F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = v10;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::TrafficTileData>>::featureMarkerAt(uint64_t a1@<X0>, float64x2_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 32);
  *a3 = 0;
  a3[1] = 0;
  if (v3 == 1)
  {
    v5 = *(a1 + 272);
    v6 = *(a1 + 280);
    if (v5 != v6)
    {
      v20 = a3;
      v8 = 0;
      v9 = xmmword_1B33B09C0;
      while (1)
      {
        v10 = *(*v5 + 392);
        v11 = 1 << *(v10 + 169);
        v12 = ~*(v10 + 172);
        v13 = a2[1].f64[0];
        v25 = v13;
        v14.i64[0] = *(v10 + 176);
        v14.i64[1] = v11 + v12;
        v15 = vmulq_n_f64(vmlsq_lane_f64(*a2, vcvtq_f64_s64(v14), 1.0 / v11, 0), v11);
        v24 = vcvt_f32_f64(v15);
        v16 = vcvt_hight_f32_f64(v24, v15);
        LODWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v16, v9)).u32[0];
        HIDWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v9, v16)).i32[1];
        if ((vmaxv_u16(vcltz_s16(vshl_n_s16(*&v15.f64[0], 0xFuLL))) & 1) == 0)
        {
          for (i = 0; i != 3; ++i)
          {
            v21[i] = *&v24.i32[i];
          }

          (*(*a1 + 216))(&v22, a1);
          v19 = v22;
          v18 = v23;
          v22 = 0;
          v23 = 0;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v23);
            }
          }

          if (v19)
          {
            *v20 = v19;
            v20[1] = v18;
            return;
          }

          v8 = v18;
          v9 = xmmword_1B33B09C0;
        }

        v5 += 8;
        if (v5 == v6)
        {
          a3 = v20;
          v20[1] = v8;
          break;
        }
      }
    }

    *a3 = 0;
  }
}

void sub_1B30D511C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = v10;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void md::CartographicTiledVectorRenderLayer<md::TransitTileDataRenderable>::featureMarkerAt(uint64_t a1@<X0>, float64x2_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 32);
  *a3 = 0;
  a3[1] = 0;
  if (v3 == 1)
  {
    v5 = *(a1 + 272);
    v6 = *(a1 + 280);
    if (v5 != v6)
    {
      v20 = a3;
      v8 = 0;
      v9 = xmmword_1B33B09C0;
      while (1)
      {
        v10 = *(*v5 + 392);
        v11 = 1 << *(v10 + 169);
        v12 = ~*(v10 + 172);
        v13 = a2[1].f64[0];
        v25 = v13;
        v14.i64[0] = *(v10 + 176);
        v14.i64[1] = v11 + v12;
        v15 = vmulq_n_f64(vmlsq_lane_f64(*a2, vcvtq_f64_s64(v14), 1.0 / v11, 0), v11);
        v24 = vcvt_f32_f64(v15);
        v16 = vcvt_hight_f32_f64(v24, v15);
        LODWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v16, v9)).u32[0];
        HIDWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v9, v16)).i32[1];
        if ((vmaxv_u16(vcltz_s16(vshl_n_s16(*&v15.f64[0], 0xFuLL))) & 1) == 0)
        {
          for (i = 0; i != 3; ++i)
          {
            v21[i] = *&v24.i32[i];
          }

          (*(*a1 + 216))(&v22, a1);
          v19 = v22;
          v18 = v23;
          v22 = 0;
          v23 = 0;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v23);
            }
          }

          if (v19)
          {
            *v20 = v19;
            v20[1] = v18;
            return;
          }

          v8 = v18;
          v9 = xmmword_1B33B09C0;
        }

        v5 += 8;
        if (v5 == v6)
        {
          a3 = v20;
          v20[1] = v8;
          break;
        }
      }
    }

    *a3 = 0;
  }
}

void sub_1B30D52FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = v10;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void md::CartographicTiledVectorRenderLayer<md::DaVinciGroundRenderable>::featureMarkerAt(uint64_t a1@<X0>, float64x2_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 32);
  *a3 = 0;
  a3[1] = 0;
  if (v3 == 1)
  {
    v5 = *(a1 + 272);
    v6 = *(a1 + 280);
    if (v5 != v6)
    {
      v20 = a3;
      v8 = 0;
      v9 = xmmword_1B33B09C0;
      while (1)
      {
        v10 = *(*v5 + 392);
        v11 = 1 << *(v10 + 169);
        v12 = ~*(v10 + 172);
        v13 = a2[1].f64[0];
        v25 = v13;
        v14.i64[0] = *(v10 + 176);
        v14.i64[1] = v11 + v12;
        v15 = vmulq_n_f64(vmlsq_lane_f64(*a2, vcvtq_f64_s64(v14), 1.0 / v11, 0), v11);
        v24 = vcvt_f32_f64(v15);
        v16 = vcvt_hight_f32_f64(v24, v15);
        LODWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v16, v9)).u32[0];
        HIDWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v9, v16)).i32[1];
        if ((vmaxv_u16(vcltz_s16(vshl_n_s16(*&v15.f64[0], 0xFuLL))) & 1) == 0)
        {
          for (i = 0; i != 3; ++i)
          {
            v21[i] = *&v24.i32[i];
          }

          (*(*a1 + 216))(&v22, a1);
          v19 = v22;
          v18 = v23;
          v22 = 0;
          v23 = 0;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v23);
            }
          }

          if (v19)
          {
            *v20 = v19;
            v20[1] = v18;
            return;
          }

          v8 = v18;
          v9 = xmmword_1B33B09C0;
        }

        v5 += 8;
        if (v5 == v6)
        {
          a3 = v20;
          v20[1] = v8;
          break;
        }
      }
    }

    *a3 = 0;
  }
}

void sub_1B30D54DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = v10;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::DaVinciTrafficTileData>>::featureMarkerAt(uint64_t a1@<X0>, float64x2_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 32);
  *a3 = 0;
  a3[1] = 0;
  if (v3 == 1)
  {
    v5 = *(a1 + 272);
    v6 = *(a1 + 280);
    if (v5 != v6)
    {
      v20 = a3;
      v8 = 0;
      v9 = xmmword_1B33B09C0;
      while (1)
      {
        v10 = *(*v5 + 392);
        v11 = 1 << *(v10 + 169);
        v12 = ~*(v10 + 172);
        v13 = a2[1].f64[0];
        v25 = v13;
        v14.i64[0] = *(v10 + 176);
        v14.i64[1] = v11 + v12;
        v15 = vmulq_n_f64(vmlsq_lane_f64(*a2, vcvtq_f64_s64(v14), 1.0 / v11, 0), v11);
        v24 = vcvt_f32_f64(v15);
        v16 = vcvt_hight_f32_f64(v24, v15);
        LODWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v16, v9)).u32[0];
        HIDWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v9, v16)).i32[1];
        if ((vmaxv_u16(vcltz_s16(vshl_n_s16(*&v15.f64[0], 0xFuLL))) & 1) == 0)
        {
          for (i = 0; i != 3; ++i)
          {
            v21[i] = *&v24.i32[i];
          }

          (*(*a1 + 216))(&v22, a1);
          v19 = v22;
          v18 = v23;
          v22 = 0;
          v23 = 0;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v23);
            }
          }

          if (v19)
          {
            *v20 = v19;
            v20[1] = v18;
            return;
          }

          v8 = v18;
          v9 = xmmword_1B33B09C0;
        }

        v5 += 8;
        if (v5 == v6)
        {
          a3 = v20;
          v20[1] = v8;
          break;
        }
      }
    }

    *a3 = 0;
  }
}

void sub_1B30D56BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = v10;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void md::CartographicTiledVectorRenderLayer<HillshadeRenderable>::featureMarkerAt(uint64_t a1@<X0>, float64x2_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 32);
  *a3 = 0;
  a3[1] = 0;
  if (v3 == 1)
  {
    v5 = *(a1 + 272);
    v6 = *(a1 + 280);
    if (v5 != v6)
    {
      v20 = a3;
      v8 = 0;
      v9 = xmmword_1B33B09C0;
      while (1)
      {
        v10 = *(*v5 + 392);
        v11 = 1 << *(v10 + 169);
        v12 = ~*(v10 + 172);
        v13 = a2[1].f64[0];
        v25 = v13;
        v14.i64[0] = *(v10 + 176);
        v14.i64[1] = v11 + v12;
        v15 = vmulq_n_f64(vmlsq_lane_f64(*a2, vcvtq_f64_s64(v14), 1.0 / v11, 0), v11);
        v24 = vcvt_f32_f64(v15);
        v16 = vcvt_hight_f32_f64(v24, v15);
        LODWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v16, v9)).u32[0];
        HIDWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v9, v16)).i32[1];
        if ((vmaxv_u16(vcltz_s16(vshl_n_s16(*&v15.f64[0], 0xFuLL))) & 1) == 0)
        {
          for (i = 0; i != 3; ++i)
          {
            v21[i] = *&v24.i32[i];
          }

          (*(*a1 + 216))(&v22, a1);
          v19 = v22;
          v18 = v23;
          v22 = 0;
          v23 = 0;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v23);
            }
          }

          if (v19)
          {
            *v20 = v19;
            v20[1] = v18;
            return;
          }

          v8 = v18;
          v9 = xmmword_1B33B09C0;
        }

        v5 += 8;
        if (v5 == v6)
        {
          a3 = v20;
          v20[1] = v8;
          break;
        }
      }
    }

    *a3 = 0;
  }
}

void sub_1B30D589C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = v10;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void md::CartographicTiledVectorRenderLayer<md::FlyoverRenderable>::featureMarkerAt(uint64_t a1@<X0>, float64x2_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 32);
  *a3 = 0;
  a3[1] = 0;
  if (v3 == 1)
  {
    v5 = *(a1 + 272);
    v6 = *(a1 + 280);
    if (v5 != v6)
    {
      v20 = a3;
      v8 = 0;
      v9 = xmmword_1B33B09C0;
      while (1)
      {
        v10 = *(*v5 + 392);
        v11 = 1 << *(v10 + 169);
        v12 = ~*(v10 + 172);
        v13 = a2[1].f64[0];
        v25 = v13;
        v14.i64[0] = *(v10 + 176);
        v14.i64[1] = v11 + v12;
        v15 = vmulq_n_f64(vmlsq_lane_f64(*a2, vcvtq_f64_s64(v14), 1.0 / v11, 0), v11);
        v24 = vcvt_f32_f64(v15);
        v16 = vcvt_hight_f32_f64(v24, v15);
        LODWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v16, v9)).u32[0];
        HIDWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v9, v16)).i32[1];
        if ((vmaxv_u16(vcltz_s16(vshl_n_s16(*&v15.f64[0], 0xFuLL))) & 1) == 0)
        {
          for (i = 0; i != 3; ++i)
          {
            v21[i] = *&v24.i32[i];
          }

          (*(*a1 + 216))(&v22, a1);
          v19 = v22;
          v18 = v23;
          v22 = 0;
          v23 = 0;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v23);
            }
          }

          if (v19)
          {
            *v20 = v19;
            v20[1] = v18;
            return;
          }

          v8 = v18;
          v9 = xmmword_1B33B09C0;
        }

        v5 += 8;
        if (v5 == v6)
        {
          a3 = v20;
          v20[1] = v8;
          break;
        }
      }
    }

    *a3 = 0;
  }
}

void sub_1B30D5A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = v10;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B30D5B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<ggl::PolygonSolidFill::S2MeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2F050;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::function<BOOL ()(md::RoadTileDataRenderable const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<BOOL ()(md::RoadTileDataRenderable const*)>::~__value_func[abi:nn200100](v3);
}

uint64_t std::__function::__value_func<BOOL ()(md::RoadTileDataRenderable const*)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t md::CartographicTiledVectorRenderLayer<md::RoadTileDataRenderable>::layoutStencilTiles(unsigned __int8 *a1, md::LayoutContext *a2, ggl::zone_mallocator *a3, int a4, uint64_t a5)
{
  v116 = *MEMORY[0x1E69E9840];
  v114[0] = &unk_1F2A2F170;
  v115 = v114;
  v6 = *(a2 + 1);
  v7 = gdc::Context::get<md::GeometryContext>(v6);
  v83 = md::LayoutContext::get<md::SceneContext>(v6);
  v87 = v7;
  if (v7)
  {
    v95 = a1;
    if (md::SceneStateManager::isFinishedLoadingRequiredLayers(*v83))
    {
      v8 = a1;
      v9 = a1[48];
      v10 = a1[49];
      a1[360] = v9 != v10;
      if (v9 == v10)
      {
        return std::__function::__value_func<BOOL ()(md::RoadTileDataRenderable const*)>::~__value_func[abi:nn200100](v114);
      }
    }

    else
    {
      v8 = a1;
      a1[360] = 1;
    }

    v11 = *(v8 + 44);
    v13 = v11[14];
    v12 = v11[15];
    v14 = *(v8 + 34);
    v15 = *(v8 + 35);
    if (v14 != v15)
    {
      do
      {
        v16 = *v14;
        if (!v115 || std::function<BOOL ()(md::RoadTileDataRenderable const*)>::operator()(v115, *v14))
        {
          v17 = *(v16 + 392);
          FillRect = grl::IconMetricsRenderResult::getFillRect(v17);
          v19 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(*v83 + 1, FillRect);
          if (v19)
          {
            v20 = (*(v19 + 17) - *(v19 + 16)) >> 5;
            if (v17[168] == 255)
            {
              v13 += v20;
            }

            else
            {
              v12 += v20;
            }
          }
        }

        ++v14;
      }

      while (v14 != v15);
      v11 = *(v95 + 44);
    }

    v93 = v11;
    v21 = gdc::ToCoordinateSystem(v87[320]);
    v22 = 128;
    if (v21)
    {
      v22 = 144;
    }

    v23 = *&v87[v22 + 8];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v81 = v23;
    if (v13 > (v93[8] - v93[7]) >> 3)
    {
      __asm { FMOV            V0.4S, #1.0 }

      operator new();
    }

    if (v12 > (v93[11] - v93[10]) >> 3)
    {
      operator new();
    }

    v29 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
    v30 = md::LayoutContext::cameraType(a2);
    if (*(a5 + 128))
    {
      v31 = a5;
    }

    else
    {
      v31 = (v29 + 808);
    }

    v32 = v31[5];
    v113[4] = v31[4];
    v113[5] = v32;
    v33 = v31[7];
    v113[6] = v31[6];
    v113[7] = v33;
    v34 = v31[1];
    v113[0] = *v31;
    v113[1] = v34;
    v35 = v31[3];
    v113[2] = v31[2];
    v113[3] = v35;
    v36 = *(v95 + 34);
    v82 = *(v95 + 35);
    v37 = v93;
    if (v36 != v82)
    {
      v38 = v30;
      v89 = v30;
      do
      {
        v84 = v36;
        v39 = *v36;
        if (!v115 || (std::function<BOOL ()(md::RoadTileDataRenderable const*)>::operator()(v115, *v36) & 1) != 0)
        {
          v94 = *(v39 + 392);
          v40 = grl::IconMetricsRenderResult::getFillRect(v94);
          v41 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(*v83 + 1, v40);
          if (v41)
          {
            v42 = *(v41 + 16);
            v92 = *(v41 + 17);
            if (v92 != v42)
            {
              v86 = v39;
              do
              {
                v43 = *(v95 + 44);
                if (*(*(v39 + 392) + 168) != 255)
                {
                  v44 = v43[15];
                  v45 = v37[10];
                  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v96, *(*(**(v45 + 8 * v44) + 136) + 32));
                  v46 = (*(**(v39 + 392) + 32))(*(v39 + 392));
                  v47 = 0;
                  v48 = v97 + 32;
                  do
                  {
                    *(v48 + v47) = *(v46 + v47);
                    v47 += 4;
                  }

                  while (v47 != 12);
                  v49 = (*(**(v39 + 392) + 32))(*(v39 + 392));
                  v50 = 0;
                  v51 = v97 + 48;
                  do
                  {
                    *(v51 + v50) = *(v49 + 12 + v50);
                    v50 += 4;
                  }

                  while (v50 != 12);
                  *(*(v45 + 8 * v44) + 32) = **(v95 + 44);
                  *(*(v45 + 8 * v44) + 40) = **(v45 + 8 * v44);
                  v52 = *(v45 + 8 * v44);
                  *(v52 + 56) = 0;
                  *(v52 + 48) = *(v94 + 169) + a4;
                  v106 = 0u;
                  v105 = 0u;
                  v108 = 0u;
                  v109 = 0u;
                  v111 = 0u;
                  *v112 = 0u;
                  v104 = 1.0;
                  v107 = 1.0;
                  v110 = 1.0;
                  *&v112[16] = 0x3FF0000000000000;
                  md::GeometryContext::transformConstantData(0.0, 0.0, v98, v87, (v94 + 168), v38, -1);
                }

                v53 = v43[14];
                v54 = v37[7];
                *(*(v54 + 8 * v53) + 32) = *v43;
                *(*(v54 + 8 * v53) + 40) = **(v54 + 8 * v53);
                v55 = v38;
                v56 = *(v54 + 8 * v53);
                *(v56 + 56) = 0;
                v57 = *(v94 + 169);
                *(v56 + 48) = v57 + a4;
                if (gdc::ToCoordinateSystem(v55))
                {
                  v58 = *(v94 + 176);
                  v59 = 1.0 / (1 << v57);
                  v60 = (1 << v57) + ~*(v94 + 172);
                  *&v100 = v59 * v58;
                  *(&v100 + 1) = v59 * v60;
                  *&v101 = v59 + v58 * v59;
                  *(&v101 + 1) = v59 + v60 * v59;
                  gdc::GlobeTileUtils::boundsFromMercatorRect(v98, &v100, 0.0, 0.0);
                  geo::OrientedBox<double,3u,double,double>::toMatrix(&v104, v98);
                  md::GeometryContext::transformConstantData(0.0, 0.0, &v100, v87, (v94 + 168), v55, -1);
                }

                v61 = 1 << *(v42 + 1);
                v62 = 1.0 / v61;
                v63 = v62 * *(v42 + 8);
                v64 = v62 * (v61 + ~*(v42 + 4));
                v105 = 0u;
                v106 = 0u;
                v108 = 0u;
                v109 = 0u;
                v104 = v62;
                v107 = v62;
                v110 = v62;
                *&v111 = 0;
                *(&v111 + 1) = v63;
                *v112 = v64;
                *&v112[8] = xmmword_1B33B0740;
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(*v56 + 136), *(*v56 + 232), v43[1], v43[2]);
                v37 = v93;
                v39 = v86;
                v65 = 0;
                v66 = v113;
                v38 = v89;
                do
                {
                  v67 = 0;
                  v68 = &v104;
                  do
                  {
                    v69 = 0;
                    v70 = 0.0;
                    v71 = v66;
                    do
                    {
                      v72 = *v71;
                      v71 += 4;
                      v70 = v70 + v68[v69++] * v72;
                    }

                    while (v69 != 4);
                    *(&v98[2 * v67++] + v65) = v70;
                    v68 += 4;
                  }

                  while (v67 != 4);
                  ++v65;
                  v66 = (v66 + 8);
                }

                while (v65 != 4);
                v73 = 0;
                v74 = v98;
                do
                {
                  v76 = *v74;
                  v75 = v74[1];
                  v74 += 2;
                  *(&v100 + v73) = vcvt_hight_f32_f64(vcvt_f32_f64(v76), v75);
                  v73 += 16;
                }

                while (v73 != 64);
                ggl::DataAccess<ggl::Tile::View>::DataAccess(v98, **(**(v54 + 8 * v53) + 136), 1);
                v77 = v99;
                v78 = v101;
                *v99 = v100;
                v77[1] = v78;
                v79 = v103;
                v77[2] = v102;
                v77[3] = v79;
                ggl::BufferMemory::~BufferMemory(v98);
                ggl::CommandBuffer::pushRenderItem(a3, (*(v54 + 8 * v53) + 8));
                ++*(*(v95 + 44) + 112);
                v42 += 32;
              }

              while (v42 != v92);
            }
          }
        }

        v36 = v84 + 1;
      }

      while (v84 + 1 != v82);
    }

    if (v81)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v81);
    }
  }

  return std::__function::__value_func<BOOL ()(md::RoadTileDataRenderable const*)>::~__value_func[abi:nn200100](v114);
}

void sub_1B30D6888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  std::__function::__value_func<BOOL ()(md::RoadTileDataRenderable const*)>::~__value_func[abi:nn200100](v10 - 144);
  _Unwind_Resume(a1);
}

void md::CartographicTiledVectorRenderLayer<md::DaVinciRoadTileDataRenderable>::updateZScaleAndOffset(uint64_t ***a1, void *a2)
{
  v4 = md::LayoutContext::get<md::ElevationContext>(a2);
  v5 = md::LayoutContext::get<md::SettingsContext>(a2);
  if (v5)
  {
    v6 = v5[6];
  }

  else
  {
    v6 = 0;
  }

  v7 = md::LayoutContext::get<md::CameraContext>(a2);
  v8 = v7;
  if (v6 && v7)
  {
    v9 = md::DaVinciGroundSettings::valueForZoomLevel<float>(v6, 6, fmaxf(*(v7 + 3080) + *(v7 + 3076), 1.0));
  }

  else
  {
    v9 = 0.0;
    v10 = 0.0;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  v10 = fmin(*(v8 + 3776), 0.0);
LABEL_9:
  if (v4)
  {
    v11 = v4[4];
    v12 = v4[5];
  }

  else
  {
    v11 = 1.0;
    v12 = 1.0;
  }

  v13 = *a1;
  v14 = a1[1];
  if (*a1 != v14)
  {
    v15 = v12 * v9;
    do
    {
      v16 = *v13++;
      v17 = v16[49];
      md::BaseMapTileDataRenderable::adjustZScale(v16, v11, v12);
      gdc::Tiled::unitsPerMeter((v17 + 168));
      v19 = v15 * v18;
      ggl::ConstantDataTyped<ggl::Grid::Style>::write(v22, v16[30]);
      *(v23 + 336) = v19;
      ggl::BufferMemory::~BufferMemory(v22);
      gdc::Tiled::unitsPerMeter((v17 + 168));
      v21 = v20;
      ggl::ConstantDataTyped<ggl::Grid::Style>::write(v22, v16[30]);
      *(v23 + 352) = v21 * v10;
      ggl::BufferMemory::~BufferMemory(v22);
    }

    while (v13 != v14);
  }
}

uint64_t std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::~__value_func[abi:nn200100](v3);
}

uint64_t std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::layoutStencilTiles(unsigned __int8 *a1, md::LayoutContext *a2, ggl::zone_mallocator *a3, int a4, char a5, uint64_t a6)
{
  v118 = *MEMORY[0x1E69E9840];
  v116[0] = &unk_1F2A2F1B8;
  v117 = v116;
  v8 = *(a2 + 1);
  v9 = gdc::Context::get<md::GeometryContext>(v8);
  v85 = md::LayoutContext::get<md::SceneContext>(v8);
  v89 = v9;
  if (v9)
  {
    v97 = a1;
    if ((a5 & 1) != 0 || !md::SceneStateManager::isFinishedLoadingRequiredLayers(*v85))
    {
      v10 = a1;
      a1[360] = 1;
    }

    else
    {
      v10 = a1;
      v11 = a1[48];
      v12 = a1[49];
      a1[360] = v11 != v12;
      if (v11 == v12)
      {
        return std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::~__value_func[abi:nn200100](v116);
      }
    }

    v13 = *(v10 + 44);
    v15 = v13[14];
    v14 = v13[15];
    v16 = *(v10 + 34);
    v17 = *(v10 + 35);
    if (v16 != v17)
    {
      do
      {
        v18 = *v16;
        if (!v117 || std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::operator()(v117, *v16))
        {
          v19 = *(v18 + 392);
          FillRect = grl::IconMetricsRenderResult::getFillRect(v19);
          v21 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(*v85 + 1, FillRect);
          if (v21)
          {
            v22 = (*(v21 + 17) - *(v21 + 16)) >> 5;
            if (v19[168] == 255)
            {
              v15 += v22;
            }

            else
            {
              v14 += v22;
            }
          }
        }

        ++v16;
      }

      while (v16 != v17);
      v13 = *(v97 + 44);
    }

    v95 = v13;
    v23 = gdc::ToCoordinateSystem(v89[320]);
    v24 = 128;
    if (v23)
    {
      v24 = 144;
    }

    v25 = *&v89[v24 + 8];
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v83 = v25;
    if (v15 > (v95[8] - v95[7]) >> 3)
    {
      __asm { FMOV            V0.4S, #1.0 }

      operator new();
    }

    if (v14 > (v95[11] - v95[10]) >> 3)
    {
      operator new();
    }

    v31 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
    v32 = md::LayoutContext::cameraType(a2);
    if (*(a6 + 128))
    {
      v33 = a6;
    }

    else
    {
      v33 = (v31 + 808);
    }

    v34 = v33[5];
    v115[4] = v33[4];
    v115[5] = v34;
    v35 = v33[7];
    v115[6] = v33[6];
    v115[7] = v35;
    v36 = v33[1];
    v115[0] = *v33;
    v115[1] = v36;
    v37 = v33[3];
    v115[2] = v33[2];
    v115[3] = v37;
    v38 = *(v97 + 34);
    v84 = *(v97 + 35);
    v39 = v95;
    if (v38 != v84)
    {
      v40 = v32;
      v91 = v32;
      do
      {
        v86 = v38;
        v41 = *v38;
        if (!v117 || (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::operator()(v117, *v38) & 1) != 0)
        {
          v96 = *(v41 + 392);
          v42 = grl::IconMetricsRenderResult::getFillRect(v96);
          v43 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(*v85 + 1, v42);
          if (v43)
          {
            v44 = *(v43 + 16);
            v94 = *(v43 + 17);
            if (v94 != v44)
            {
              v88 = v41;
              do
              {
                v45 = *(v97 + 44);
                if (*(*(v41 + 392) + 168) != 255)
                {
                  v46 = v45[15];
                  v47 = v39[10];
                  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v98, *(*(**(v47 + 8 * v46) + 136) + 32));
                  v48 = (*(**(v41 + 392) + 32))(*(v41 + 392));
                  v49 = 0;
                  v50 = v99 + 32;
                  do
                  {
                    *(v50 + v49) = *(v48 + v49);
                    v49 += 4;
                  }

                  while (v49 != 12);
                  v51 = (*(**(v41 + 392) + 32))(*(v41 + 392));
                  v52 = 0;
                  v53 = v99 + 48;
                  do
                  {
                    *(v53 + v52) = *(v51 + 12 + v52);
                    v52 += 4;
                  }

                  while (v52 != 12);
                  *(*(v47 + 8 * v46) + 32) = **(v97 + 44);
                  *(*(v47 + 8 * v46) + 40) = **(v47 + 8 * v46);
                  v54 = *(v47 + 8 * v46);
                  *(v54 + 56) = 0;
                  *(v54 + 48) = *(v96 + 169) + a4;
                  v108 = 0u;
                  v107 = 0u;
                  v110 = 0u;
                  v111 = 0u;
                  v113 = 0u;
                  *v114 = 0u;
                  v106 = 1.0;
                  v109 = 1.0;
                  v112 = 1.0;
                  *&v114[16] = 0x3FF0000000000000;
                  md::GeometryContext::transformConstantData(0.0, 0.0, v100, v89, (v96 + 168), v40, -1);
                }

                v55 = v45[14];
                v56 = v39[7];
                *(*(v56 + 8 * v55) + 32) = *v45;
                *(*(v56 + 8 * v55) + 40) = **(v56 + 8 * v55);
                v57 = v40;
                v58 = *(v56 + 8 * v55);
                *(v58 + 56) = 0;
                v59 = *(v96 + 169);
                *(v58 + 48) = v59 + a4;
                if (gdc::ToCoordinateSystem(v57))
                {
                  v60 = *(v96 + 176);
                  v61 = 1.0 / (1 << v59);
                  v62 = (1 << v59) + ~*(v96 + 172);
                  *&v102 = v61 * v60;
                  *(&v102 + 1) = v61 * v62;
                  *&v103 = v61 + v60 * v61;
                  *(&v103 + 1) = v61 + v62 * v61;
                  gdc::GlobeTileUtils::boundsFromMercatorRect(v100, &v102, 0.0, 0.0);
                  geo::OrientedBox<double,3u,double,double>::toMatrix(&v106, v100);
                  md::GeometryContext::transformConstantData(0.0, 0.0, &v102, v89, (v96 + 168), v57, -1);
                }

                v63 = 1 << *(v44 + 1);
                v64 = 1.0 / v63;
                v65 = v64 * *(v44 + 8);
                v66 = v64 * (v63 + ~*(v44 + 4));
                v107 = 0u;
                v108 = 0u;
                v110 = 0u;
                v111 = 0u;
                v106 = v64;
                v109 = v64;
                v112 = v64;
                *&v113 = 0;
                *(&v113 + 1) = v65;
                *v114 = v66;
                *&v114[8] = xmmword_1B33B0740;
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(*v58 + 136), *(*v58 + 232), v45[1], v45[2]);
                v39 = v95;
                v41 = v88;
                v67 = 0;
                v68 = v115;
                v40 = v91;
                do
                {
                  v69 = 0;
                  v70 = &v106;
                  do
                  {
                    v71 = 0;
                    v72 = 0.0;
                    v73 = v68;
                    do
                    {
                      v74 = *v73;
                      v73 += 4;
                      v72 = v72 + v70[v71++] * v74;
                    }

                    while (v71 != 4);
                    *(&v100[2 * v69++] + v67) = v72;
                    v70 += 4;
                  }

                  while (v69 != 4);
                  ++v67;
                  v68 = (v68 + 8);
                }

                while (v67 != 4);
                v75 = 0;
                v76 = v100;
                do
                {
                  v78 = *v76;
                  v77 = v76[1];
                  v76 += 2;
                  *(&v102 + v75) = vcvt_hight_f32_f64(vcvt_f32_f64(v78), v77);
                  v75 += 16;
                }

                while (v75 != 64);
                ggl::DataAccess<ggl::Tile::View>::DataAccess(v100, **(**(v56 + 8 * v55) + 136), 1);
                v79 = v101;
                v80 = v103;
                *v101 = v102;
                v79[1] = v80;
                v81 = v105;
                v79[2] = v104;
                v79[3] = v81;
                ggl::BufferMemory::~BufferMemory(v100);
                ggl::CommandBuffer::pushRenderItem(a3, (*(v56 + 8 * v55) + 8));
                ++*(*(v97 + 44) + 112);
                v44 += 32;
              }

              while (v44 != v94);
            }
          }
        }

        v38 = v86 + 1;
      }

      while (v86 + 1 != v84);
    }

    if (v83)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v83);
    }
  }

  return std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::~__value_func[abi:nn200100](v116);
}

void sub_1B30D76F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::~__value_func[abi:nn200100](v10 - 144);
  _Unwind_Resume(a1);
}

uint64_t std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>::~__value_func[abi:nn200100](v3);
}

uint64_t std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::function<BOOL ()(md::MapTileDataRenderable<md::TrafficTileData> const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::TrafficTileData> const*)>::~__value_func[abi:nn200100](v3);
}

uint64_t std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::TrafficTileData> const*)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::function<BOOL ()(md::TransitTileDataRenderable const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<BOOL ()(md::TransitTileDataRenderable const*)>::~__value_func[abi:nn200100](v3);
}

uint64_t std::__function::__value_func<BOOL ()(md::TransitTileDataRenderable const*)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t md::CartographicTiledVectorRenderLayer<md::TransitTileDataRenderable>::layoutStencilTiles(unsigned __int8 *a1, md::LayoutContext *a2, ggl::zone_mallocator *a3, int a4, uint64_t a5)
{
  v116 = *MEMORY[0x1E69E9840];
  v114[0] = &unk_1F2A2F248;
  v115 = v114;
  v6 = *(a2 + 1);
  v7 = gdc::Context::get<md::GeometryContext>(v6);
  v83 = md::LayoutContext::get<md::SceneContext>(v6);
  v87 = v7;
  if (v7)
  {
    v95 = a1;
    if (md::SceneStateManager::isFinishedLoadingRequiredLayers(*v83))
    {
      v8 = a1;
      v9 = a1[48];
      v10 = a1[49];
      a1[360] = v9 != v10;
      if (v9 == v10)
      {
        return std::__function::__value_func<BOOL ()(md::TransitTileDataRenderable const*)>::~__value_func[abi:nn200100](v114);
      }
    }

    else
    {
      v8 = a1;
      a1[360] = 1;
    }

    v11 = *(v8 + 44);
    v13 = v11[14];
    v12 = v11[15];
    v14 = *(v8 + 34);
    v15 = *(v8 + 35);
    if (v14 != v15)
    {
      do
      {
        v16 = *v14;
        if (!v115 || std::function<BOOL ()(md::TransitTileDataRenderable const*)>::operator()(v115, *v14))
        {
          v17 = *(v16 + 392);
          FillRect = grl::IconMetricsRenderResult::getFillRect(v17);
          v19 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(*v83 + 1, FillRect);
          if (v19)
          {
            v20 = (*(v19 + 17) - *(v19 + 16)) >> 5;
            if (v17[168] == 255)
            {
              v13 += v20;
            }

            else
            {
              v12 += v20;
            }
          }
        }

        ++v14;
      }

      while (v14 != v15);
      v11 = *(v95 + 44);
    }

    v93 = v11;
    v21 = gdc::ToCoordinateSystem(v87[320]);
    v22 = 128;
    if (v21)
    {
      v22 = 144;
    }

    v23 = *&v87[v22 + 8];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v81 = v23;
    if (v13 > (v93[8] - v93[7]) >> 3)
    {
      __asm { FMOV            V0.4S, #1.0 }

      operator new();
    }

    if (v12 > (v93[11] - v93[10]) >> 3)
    {
      operator new();
    }

    v29 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
    v30 = md::LayoutContext::cameraType(a2);
    if (*(a5 + 128))
    {
      v31 = a5;
    }

    else
    {
      v31 = (v29 + 808);
    }

    v32 = v31[5];
    v113[4] = v31[4];
    v113[5] = v32;
    v33 = v31[7];
    v113[6] = v31[6];
    v113[7] = v33;
    v34 = v31[1];
    v113[0] = *v31;
    v113[1] = v34;
    v35 = v31[3];
    v113[2] = v31[2];
    v113[3] = v35;
    v36 = *(v95 + 34);
    v82 = *(v95 + 35);
    v37 = v93;
    if (v36 != v82)
    {
      v38 = v30;
      v89 = v30;
      do
      {
        v84 = v36;
        v39 = *v36;
        if (!v115 || (std::function<BOOL ()(md::TransitTileDataRenderable const*)>::operator()(v115, *v36) & 1) != 0)
        {
          v94 = *(v39 + 392);
          v40 = grl::IconMetricsRenderResult::getFillRect(v94);
          v41 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(*v83 + 1, v40);
          if (v41)
          {
            v42 = *(v41 + 16);
            v92 = *(v41 + 17);
            if (v92 != v42)
            {
              v86 = v39;
              do
              {
                v43 = *(v95 + 44);
                if (*(*(v39 + 392) + 168) != 255)
                {
                  v44 = v43[15];
                  v45 = v37[10];
                  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v96, *(*(**(v45 + 8 * v44) + 136) + 32));
                  v46 = (*(**(v39 + 392) + 32))(*(v39 + 392));
                  v47 = 0;
                  v48 = v97 + 32;
                  do
                  {
                    *(v48 + v47) = *(v46 + v47);
                    v47 += 4;
                  }

                  while (v47 != 12);
                  v49 = (*(**(v39 + 392) + 32))(*(v39 + 392));
                  v50 = 0;
                  v51 = v97 + 48;
                  do
                  {
                    *(v51 + v50) = *(v49 + 12 + v50);
                    v50 += 4;
                  }

                  while (v50 != 12);
                  *(*(v45 + 8 * v44) + 32) = **(v95 + 44);
                  *(*(v45 + 8 * v44) + 40) = **(v45 + 8 * v44);
                  v52 = *(v45 + 8 * v44);
                  *(v52 + 56) = 0;
                  *(v52 + 48) = *(v94 + 169) + a4;
                  v106 = 0u;
                  v105 = 0u;
                  v108 = 0u;
                  v109 = 0u;
                  v111 = 0u;
                  *v112 = 0u;
                  v104 = 1.0;
                  v107 = 1.0;
                  v110 = 1.0;
                  *&v112[16] = 0x3FF0000000000000;
                  md::GeometryContext::transformConstantData(0.0, 0.0, v98, v87, (v94 + 168), v38, -1);
                }

                v53 = v43[14];
                v54 = v37[7];
                *(*(v54 + 8 * v53) + 32) = *v43;
                *(*(v54 + 8 * v53) + 40) = **(v54 + 8 * v53);
                v55 = v38;
                v56 = *(v54 + 8 * v53);
                *(v56 + 56) = 0;
                v57 = *(v94 + 169);
                *(v56 + 48) = v57 + a4;
                if (gdc::ToCoordinateSystem(v55))
                {
                  v58 = *(v94 + 176);
                  v59 = 1.0 / (1 << v57);
                  v60 = (1 << v57) + ~*(v94 + 172);
                  *&v100 = v59 * v58;
                  *(&v100 + 1) = v59 * v60;
                  *&v101 = v59 + v58 * v59;
                  *(&v101 + 1) = v59 + v60 * v59;
                  gdc::GlobeTileUtils::boundsFromMercatorRect(v98, &v100, 0.0, 0.0);
                  geo::OrientedBox<double,3u,double,double>::toMatrix(&v104, v98);
                  md::GeometryContext::transformConstantData(0.0, 0.0, &v100, v87, (v94 + 168), v55, -1);
                }

                v61 = 1 << *(v42 + 1);
                v62 = 1.0 / v61;
                v63 = v62 * *(v42 + 8);
                v64 = v62 * (v61 + ~*(v42 + 4));
                v105 = 0u;
                v106 = 0u;
                v108 = 0u;
                v109 = 0u;
                v104 = v62;
                v107 = v62;
                v110 = v62;
                *&v111 = 0;
                *(&v111 + 1) = v63;
                *v112 = v64;
                *&v112[8] = xmmword_1B33B0740;
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(*v56 + 136), *(*v56 + 232), v43[1], v43[2]);
                v37 = v93;
                v39 = v86;
                v65 = 0;
                v66 = v113;
                v38 = v89;
                do
                {
                  v67 = 0;
                  v68 = &v104;
                  do
                  {
                    v69 = 0;
                    v70 = 0.0;
                    v71 = v66;
                    do
                    {
                      v72 = *v71;
                      v71 += 4;
                      v70 = v70 + v68[v69++] * v72;
                    }

                    while (v69 != 4);
                    *(&v98[2 * v67++] + v65) = v70;
                    v68 += 4;
                  }

                  while (v67 != 4);
                  ++v65;
                  v66 = (v66 + 8);
                }

                while (v65 != 4);
                v73 = 0;
                v74 = v98;
                do
                {
                  v76 = *v74;
                  v75 = v74[1];
                  v74 += 2;
                  *(&v100 + v73) = vcvt_hight_f32_f64(vcvt_f32_f64(v76), v75);
                  v73 += 16;
                }

                while (v73 != 64);
                ggl::DataAccess<ggl::Tile::View>::DataAccess(v98, **(**(v54 + 8 * v53) + 136), 1);
                v77 = v99;
                v78 = v101;
                *v99 = v100;
                v77[1] = v78;
                v79 = v103;
                v77[2] = v102;
                v77[3] = v79;
                ggl::BufferMemory::~BufferMemory(v98);
                ggl::CommandBuffer::pushRenderItem(a3, (*(v54 + 8 * v53) + 8));
                ++*(*(v95 + 44) + 112);
                v42 += 32;
              }

              while (v42 != v92);
            }
          }
        }

        v36 = v84 + 1;
      }

      while (v84 + 1 != v82);
    }

    if (v81)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v81);
    }
  }

  return std::__function::__value_func<BOOL ()(md::TransitTileDataRenderable const*)>::~__value_func[abi:nn200100](v114);
}

void sub_1B30D8624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  std::__function::__value_func<BOOL ()(md::TransitTileDataRenderable const*)>::~__value_func[abi:nn200100](v10 - 144);
  _Unwind_Resume(a1);
}

uint64_t std::function<BOOL ()(HillshadeRenderable const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<BOOL ()(HillshadeRenderable const*)>::~__value_func[abi:nn200100](v3);
}

uint64_t std::__function::__value_func<BOOL ()(HillshadeRenderable const*)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__function::__func<md::LabelManager::stylesheetDidFinishDecodingGlobalProperties(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0,std::allocator<md::LabelManager::stylesheetDidFinishDecodingGlobalProperties(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 336);
  std::mutex::lock(v2);
  v3 = *(a1 + 16);
  v4 = *(v2 + 184);
  if (v3 == v4)
  {
    if (v3)
    {
      gss::StylesheetManager<gss::PropertyID>::styleGlobalProperties(&v6, *(v4 + 16));
      v5 = v6;
      if (v6)
      {
        v5 = *(v6 + 256);
      }
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
    }

    *(v2 + 157) = v5 & 1;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    md::LabelStyleCache::updateNavRoadSignScale(v2);
  }

  std::mutex::unlock(v2);
}

void std::__function::__func<md::LabelManager::stylesheetDidFinishDecodingGlobalProperties(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0,std::allocator<md::LabelManager::stylesheetDidFinishDecodingGlobalProperties(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<md::LabelManager::stylesheetDidFinishDecodingGlobalProperties(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0,std::allocator<md::LabelManager::stylesheetDidFinishDecodingGlobalProperties(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A2F2D8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::LabelManager::stylesheetDidFinishDecodingGlobalProperties(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0,std::allocator<md::LabelManager::stylesheetDidFinishDecodingGlobalProperties(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2F2D8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelManager::stylesheetDidFinishDecodingGlobalProperties(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0,std::allocator<md::LabelManager::stylesheetDidFinishDecodingGlobalProperties(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2F2D8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void std::__function::__func<md::LabelManager::updateStyleManager(void)::$_0,std::allocator<md::LabelManager::updateStyleManager(void)::$_0>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::LabelManager::updateStyleManager(void)::$_0,std::allocator<md::LabelManager::updateStyleManager(void)::$_0>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2F398;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelManager::updateStyleManager(void)::$_0,std::allocator<md::LabelManager::updateStyleManager(void)::$_0>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2F398;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

__n128 std::__function::__func<md::LabelManager::stylesheetWillTransition(gss::DisplayStyle,BOOL)::$_0,std::allocator<md::LabelManager::stylesheetWillTransition(gss::DisplayStyle,BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2F3E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 25) = 0;
  *(a2 + 28) = 0;
  return result;
}

void md::LabelManager::resolveLabelScaleFactor(md::LabelManager *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(this + 3400);
  v2 = 0x505040302uLL >> (8 * ((v1 - 1) & 0x1Fu));
  if ((v1 - 1) > 4)
  {
    LOBYTE(v2) = 1;
  }

  if (*(this + 3402) == 1)
  {
    v3 = v2;
  }

  else
  {
    v3 = *(this + 3400);
  }

  *(this + 3401) = v3;
  v4 = *(this + 42);
  std::mutex::lock(v4);
  if (*(v4 + 159) != v1)
  {
    *(v4 + 159) = v1;
    md::LabelStyleCache::updateNavRoadSignScale(v4);
  }

  if (*(v4 + 158) != v3)
  {
    *(v4 + 158) = v3;
    v10 = &unk_1F2A3A188;
    v11 = v3;
    v12 = &v10;
    md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::forEach(*(v4 + 264), &v10);
    std::__function::__value_func<void ()(std::shared_ptr<md::LabelStyle> const&)>::~__value_func[abi:nn200100](&v10);
    v7 = &unk_1F2A3A188;
    v8 = v3;
    v9 = &v7;
    md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::forEach(*(v4 + 376), &v7);
    std::__function::__value_func<void ()(std::shared_ptr<md::LabelStyle> const&)>::~__value_func[abi:nn200100](&v7);
    v5 = *(v4 + 432);
    v6 = *(v4 + 158);
    if (*(v5 + 93) != v6)
    {
      *(v5 + 93) = v6;
      md::LabelStyle::invalidateCachedProperties(v5);
    }
  }

  std::mutex::unlock(v4);
}

void sub_1B30D8E64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::shared_ptr<md::LabelStyle> const&)>::~__value_func[abi:nn200100](va);
  std::mutex::unlock(v2);
  _Unwind_Resume(a1);
}

void md::LabelManager::styleForFeatureAttributes(uint64_t *a1, void *a2, uint64_t *a3, void *a4)
{
  v6 = a2[16];
  if (v6)
  {
    v7 = atomic_load((v6 + 3699));
    if (v7)
    {
      v8 = a2[55];
      *a1 = a2[54];
      a1[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      return;
    }
  }

  md::LabelStyleCache::styleQueryForFeatureAttributes(&v24, a2 + 23, a3, a4);
  *a1 = 0;
  a1[1] = 0;
  v9 = v24;
  v10 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v19, v9, v10);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v11 = v23;
  if (v23 == 1)
  {
    (*(*v19 + 56))(v19);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  if (v11)
  {
    md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::find(&v19, (a2 + 26), &v24);
    if (v21 != 1)
    {
      operator new();
    }

    v13 = v19;
    v12 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *a1 = v13;
    a1[1] = v12;
    v14 = v20;
    if (!v20)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v15 = a2[16];
    if (!v15)
    {
      goto LABEL_28;
    }

    v16 = atomic_load((v15 + 3698));
    if ((v16 & 1) == 0)
    {
      goto LABEL_28;
    }

    v18 = a2[54];
    v17 = a2[55];
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = a1[1];
    *a1 = v18;
    a1[1] = v17;
    if (!v14)
    {
      goto LABEL_28;
    }
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v14);
LABEL_28:
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }
}

void sub_1B30D90B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[3];
      v1[3] = 0;
      if (v3)
      {
        v4 = v3[12];
        if (v4)
        {
          v3[13] = v4;
          operator delete(v4);
        }

        v5 = v3[9];
        if (v5)
        {
          v3[10] = v5;
          operator delete(v5);
        }

        v6 = v3[6];
        if (v6)
        {
          v3[7] = v6;
          operator delete(v6);
        }

        v7 = v3[5];
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        }

        v8 = v3[3];
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v8);
        }

        v9 = v3[1];
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v9);
        }

        MEMORY[0x1B8C62190](v3, 0x1030C4040757CC0);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t md::StyleAttributeRasterSet::textureForAttribute(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = vcnt_s8(v2);
    v3.i16[0] = vaddlv_u8(v3);
    if (v3.u32[0] > 1uLL)
    {
      v4 = a2;
      if (v2 <= a2)
      {
        v4 = a2 % v2;
      }
    }

    else
    {
      v4 = (v2 - 1) & a2;
    }

    v5 = *(*a1 + 8 * v4);
    if (v5)
    {
      for (i = *v5; i; i = *i)
      {
        v7 = i[1];
        if (v7 == a2)
        {
          if (*(i + 4) == a2)
          {
            return i[3];
          }
        }

        else
        {
          if (v3.u32[0] > 1uLL)
          {
            if (v7 >= v2)
            {
              v7 %= v2;
            }
          }

          else
          {
            v7 &= v2 - 1;
          }

          if (v7 != v4)
          {
            return 0;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t *md::StyleAttributeRasterSet::materialRasterForID(md::StyleAttributeRasterSet *this, unsigned int a2)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = vcnt_s8(v2);
    v3.i16[0] = vaddlv_u8(v3);
    if (v3.u32[0] > 1uLL)
    {
      v4 = a2;
      if (v2 <= a2)
      {
        v4 = a2 % *(this + 6);
      }
    }

    else
    {
      v4 = (v2 - 1) & a2;
    }

    v5 = *(*(this + 5) + 8 * v4);
    if (v5)
    {
      for (i = *v5; i; i = *i)
      {
        v7 = i[1];
        if (v7 == a2)
        {
          if (*(i + 16) == a2)
          {
            return i[3];
          }
        }

        else
        {
          if (v3.u32[0] > 1uLL)
          {
            if (v7 >= v2)
            {
              v7 %= v2;
            }
          }

          else
          {
            v7 &= v2 - 1;
          }

          if (v7 != v4)
          {
            return 0;
          }
        }
      }
    }
  }

  return 0;
}

void md::MapTileData::createDebugNode(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  gdc::LayerData::createDebugNode(a1, a2);
  if (*(a1 + 688))
  {
    std::string::basic_string[abi:nn200100]<0>(&__p, "Debug Model Tile");
    gdc::DebugTreeNode::DebugTreeNode(v49, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Key");
    FillRect = grl::IconMetricsRenderResult::getFillRect(a1);
    gdc::DebugTreeValue::DebugTreeValue(v46, *(FillRect + 104));
    gdc::DebugTreeNode::addProperty(v49, &__p, v46);
    if (v48 < 0)
    {
      operator delete(v47);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(v44, "Tile Key");
    std::to_string(&v57, *(a1 + 176));
    v5 = std::string::insert(&v57, 0, "x: ", 3uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v58.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v58, ", y: ", 5uLL);
    v8 = v7->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v56, *(a1 + 172));
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v56;
    }

    else
    {
      v9 = v56.__r_.__value_.__r.__words[0];
    }

    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v56.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v59, v9, size);
    v12 = v11->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v60, ", z: ", 5uLL);
    v14 = v13->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = *&v13->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v55, *(a1 + 169));
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v55;
    }

    else
    {
      v15 = v55.__r_.__value_.__r.__words[0];
    }

    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = v55.__r_.__value_.__l.__size_;
    }

    v17 = std::string::append(&__p, v15, v16);
    v18 = v17->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    gdc::DebugTreeValue::DebugTreeValue(v41, &v40);
    gdc::DebugTreeNode::addProperty(v49, v44, v41);
    if (v43 < 0)
    {
      operator delete(v42);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Style");
    gdc::DebugTreeValue::DebugTreeValue(v37, *(*(a1 + 688) + 48));
    gdc::DebugTreeNode::addProperty(v49, &__p, v37);
    if (v39 < 0)
    {
      operator delete(v38);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Byte Count");
    gdc::DebugTreeValue::DebugTreeValue(v34, *(*(a1 + 688) + 40));
    gdc::DebugTreeNode::addProperty(v49, &__p, v34);
    if (v36 < 0)
    {
      operator delete(v35);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    for (i = *(*(a1 + 688) + 16); i; i = *i)
    {
      v20 = *(i + 3);
      v21 = i[4];
      v22 = geo::codec::chapterDetailTypeAsString(*(i + 2));
      std::string::basic_string[abi:nn200100]<0>(&v60, v22);
      gdc::DebugTreeNode::DebugTreeNode(&__p, &v60);
      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:nn200100]<0>(&v60, "Byte Count");
      gdc::DebugTreeValue::DebugTreeValue(v26, v20);
      gdc::DebugTreeNode::addProperty(&__p, &v60, v26);
      if (v28 < 0)
      {
        operator delete(v27);
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:nn200100]<0>(&v60, "Decode Time");
      gdc::DebugTreeValue::DebugTreeValue(v23, v21);
      gdc::DebugTreeNode::addProperty(&__p, &v60, v23);
      if (v25 < 0)
      {
        operator delete(v24);
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      gdc::DebugTreeNode::addChildNode(v49, &__p);
      v60.__r_.__value_.__r.__words[0] = &v33;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v60);
      v60.__r_.__value_.__r.__words[0] = &v32;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v60);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    gdc::DebugTreeNode::addChildNode(a2, v49);
    __p.__r_.__value_.__r.__words[0] = &v54;
    std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__p);
    __p.__r_.__value_.__r.__words[0] = &v53;
    std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__p);
    if (v52 < 0)
    {
      operator delete(v51);
    }

    if (v50 < 0)
    {
      operator delete(v49[0]);
    }
  }
}

void sub_1B30D988C(_Unwind_Exception *a1)
{
  *(v2 - 224) = &STACK[0x260];
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v2 - 224));
  *(v2 - 224) = &STACK[0x248];
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v2 - 224));
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  STACK[0x218] = v1 + 72;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&STACK[0x218]);
  STACK[0x218] = v1 + 48;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&STACK[0x218]);
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t md::DaVinciAssetLayerDataSource::descriptionForKey@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  UInt64 = gdc::ResourceKey::getUInt64(*(a1 + 16), 0);
  std::ostringstream::basic_ostringstream[abi:nn200100](&v13);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v13, "gdc::LayerDataRequestKey<Type:", 30);
  v5 = *(a1 + 8);
  if (v5 > 0x51)
  {
    v6 = "<Invalid>";
  }

  else
  {
    v6 = off_1E7B30210[v5];
  }

  v7 = strlen(v6);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v13, v6, v7);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v13, ", Asset ID: ", 12);
  v8 = MEMORY[0x1B8C61CF0](&v13, UInt64);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, ">", 1);
  if ((v20 & 0x10) != 0)
  {
    v10 = v19;
    if (v19 < v16)
    {
      v19 = v16;
      v10 = v16;
    }

    locale = v15[4].__locale_;
  }

  else
  {
    if ((v20 & 8) == 0)
    {
      v9 = 0;
      a2[23] = 0;
      goto LABEL_17;
    }

    locale = v15[1].__locale_;
    v10 = v15[3].__locale_;
  }

  v9 = v10 - locale;
  if ((v10 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a2[23] = v9;
  if (v9)
  {
    memmove(a2, locale, v9);
  }

LABEL_17:
  a2[v9] = 0;
  v13 = *MEMORY[0x1E69E54E8];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v14 = MEMORY[0x1E69E5548] + 16;
  if (v18 < 0)
  {
    operator delete(__p);
  }

  v14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v21);
}

void sub_1B30D9CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v27 + *(*MEMORY[0x1E69E54E8] - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a12);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a27);
  _Unwind_Resume(a1);
}

uint64_t md::DaVinciAssetLayerDataSource::updateRequest(uint64_t a1, unsigned __int8 **a2, uint64_t a3, unsigned __int16 **a4)
{
  v48[1] = *MEMORY[0x1E69E9840];
  gdc::LayerDataSource::getResourceFromMap(&v40, 28, *a4, a4[1]);
  v8 = v40;
  v7 = v41[0];
  if (v41[0])
  {
    atomic_fetch_add_explicit(v41[0] + 1, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  if (!v8 || (v9 = *(v8 + 152)) == 0 || *(a1 + 648) != 1 || (v11 = *(v9 + 56), v10 = *(v9 + 64), v12 = v10 - v11, v10 == v11))
  {
    v16 = 0;
    goto LABEL_14;
  }

  if (v10 - v11 < 0)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v13 = malloc_type_malloc(v10 - v11, 0x100004000313F17uLL);
  memmove(v13, v11, v12);
  if (!v12)
  {
    v16 = 0;
    if (!v13)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

  v14 = *a4;
  v15 = a4[1];
  while (1)
  {
    if (v14 == v15)
    {
      v18 = **a2;
LABEL_18:
      v19 = v13;
      while (1)
      {
        v20 = *v19;
        v21 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>>>::find<unsigned long long>((*(a1 + 616) + 16), *v19);
        if (v21)
        {
          v22 = v21[3];
          v23 = v21[4];
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v22 && (v18 || *(std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((*(a1 + 616) + 56), v20) + 24) != 1))
          {
            goto LABEL_29;
          }
        }

        else
        {
          v23 = 0;
        }

        v24 = *(*a2 + 14);
        v48[0] = v20;
        gdc::ResourceKey::ResourceKey(&v40, v18, 36, v48, 1, v24);
        gdc::LayerDataRequest::request(*a2, &v40, 0);
        if (v41[0] != v42)
        {
          free(v41[0]);
        }

LABEL_29:
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v23);
        }

        ++v19;
        v12 -= 8;
        if (!v12)
        {
          v16 = 1;
          if (!v13)
          {
            goto LABEL_14;
          }

LABEL_35:
          free(v13);
          goto LABEL_14;
        }
      }
    }

    if (*v14 == 36)
    {
      break;
    }

    v14 += 24;
  }

  v18 = **a2;
  if (v14 == v15 || !*(v14 + 4))
  {
    goto LABEL_18;
  }

  v38 = v13;
  v25 = *(v14 + 3);
  if (v25)
  {
    while (1)
    {
      v40 = v25[2];
      v41[0] = v44;
      v41[1] = v44;
      v42 = v44;
      v43 = 32;
      geo::small_vector_base<unsigned char>::append<unsigned char const*>(v41, v25[3], v25[4]);
      v26 = v25[11];
      v45 = *(v25 + 6);
      v28 = v25[14];
      v27 = v25[15];
      v44[4] = v26;
      v46 = v28;
      v47 = v27;
      if (v27)
      {
        v29 = 1;
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        v28 = v46;
        v30 = v47;
        if (v47)
        {
          v29 = 0;
          atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v30 = 0;
        v29 = 1;
      }

      UInt64 = gdc::ResourceKey::getUInt64(v41[0], 0);
      v32 = *(a1 + 616);
      v33 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>>>::find<unsigned long long>((v32 + 16), UInt64);
      if (!v33)
      {
        break;
      }

      v34 = v33[3];
      v35 = v33[4];
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v34)
      {
        v32 = *(a1 + 616);
        goto LABEL_52;
      }

      if (!v18)
      {
        v32 = *(a1 + 616);
        if (*(std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v32 + 56), UInt64) + 24) == 1)
        {
          goto LABEL_52;
        }
      }

LABEL_56:
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v35);
      }

      if ((v29 & 1) == 0)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v30);
      }

      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v47);
      }

      if (v41[0] != v42)
      {
        free(v41[0]);
      }

      v25 = *v25;
      if (!v25)
      {
        goto LABEL_65;
      }
    }

    v35 = 0;
LABEL_52:
    LOBYTE(v48[0]) = *v28 == 1;
    v36 = *(v28 + 144);
    v37 = *(v28 + 152);
    v39[0] = v36;
    v39[1] = v37;
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gms::MaterialManager<ggl::Texture2D>::replaceMaterialSheet(v32, UInt64, v39);
    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v37);
    }

    goto LABEL_56;
  }

LABEL_65:
  v16 = 0;
  v13 = v38;
  if (v38)
  {
    goto LABEL_35;
  }

LABEL_14:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  return v16;
}

void sub_1B30DA18C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void md::DaVinciAssetLayerDataSource::createLayerData(uint64_t a1, uint64_t a2, unsigned __int16 **a3)
{
  v10 = *MEMORY[0x1E69E9840];
  gdc::LayerDataSource::getResourceFromMap(&v8, 28, *a3, a3[1]);
  v4 = v9;
  v6 = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(a1 + 600);
  operator new();
}

void sub_1B30DA458(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::AssetData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2F5B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::DaVinciAssetLayerDataSource::~DaVinciAssetLayerDataSource(md::DaVinciAssetLayerDataSource *this)
{
  *this = &unk_1F2A2F510;
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 632);
  v2 = *(this + 78);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *(this + 74) = &unk_1F2A59028;

  gdc::LayerDataSource::~LayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2F510;
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 632);
  v2 = *(this + 78);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *(this + 74) = &unk_1F2A59028;

  gdc::LayerDataSource::~LayerDataSource(this);
}

void ggl::SinglePassRouteLine::BasePipelineState::~BasePipelineState(ggl::SinglePassRouteLine::BasePipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::SinglePassRouteLine::BasePipelineSetup::typedReflection(ggl::SinglePassRouteLine::BasePipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::RouteLine::DefaultVbo>::typedReflection();
    ggl::SinglePassRouteLine::BasePipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::RouteLine::DefaultVbo>::typedReflection(void)::r;
    unk_1EB835AA0 = &ggl::SinglePassRouteLine::pipelineDataBasePipelineDeviceStructs(void)::ref;
    qword_1EB835AA8 = 0;
    {
      ggl::SinglePassRouteLine::pipelineDataBasePipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      *algn_1EB835A78 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1EB835A80 = ggl::SinglePassRouteLine::Style::reflection(void)::reflection;
      unk_1EB835A88 = ggl::SinglePassRouteLine::ClipParams::reflection(void)::reflection;
      qword_1EB835A90 = ggl::SinglePassRouteLine::DrawAnimationDescription::reflection(void)::reflection;
    }

    qword_1EB835AB0 = &ggl::SinglePassRouteLine::pipelineDataBasePipelineConstantStructs(void)::ref;
    unk_1EB835AB8 = xmmword_1B33B1000;
  }
}

void ggl::SinglePassRouteLine::BasePipelineSetup::~BasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::DaVinci::ScreenVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::DaVinci::ScreenVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::DaVinci::ScreenVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::DaVinci::ScreenVbo>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2F6C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::DaVinci::ScreenMesh::~ScreenMesh(ggl::DaVinci::ScreenMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void non-virtual thunk toggl::MeshTyped<ggl::DaVinci::ScreenVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::DaVinci::ScreenVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RouteLineSection::~RouteLineSection(md::RouteLineSection *this)
{
  md::RouteLineSection::~RouteLineSection(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2F738;
  *(this + 16) = -1082130432;
  v2 = *(this + 13);
  if (v2)
  {
    free(v2);
    *(this + 13) = 0;
  }

  *(this + 14) = 0;
  *(this + 15) = 0xBFF0000000000000;
  v3 = *(this + 9);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 46);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 44);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 42);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 40);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 38);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(this + 36);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(this + 34);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v11 = *(this + 32);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  objc_destroyWeak(this + 25);
  *(this + 4) = &unk_1F2A2F880;

  v12 = *(this + 1);
  if (v12)
  {
    *(this + 2) = v12;
    operator delete(v12);
  }
}

void geo::_retain_ptr<GEOStyleAttributes * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2F880;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<GEOStyleAttributes * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2F880;

  return a1;
}

__n128 md::RouteLineSection::SingleLayerVertexSource::operator[]@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = **(a1 + 8) + 48 * a2;
  v4 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 16) = v4;
  result = *(v3 + 32);
  *(a3 + 32) = result;
  return result;
}

__n128 md::RouteLineSection::DoubleLayerVertexSource::operator[]@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = **(a1 + 8) + 48 * *(*(a1 + 16) + 8 * a2);
  v4 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 16) = v4;
  result = *(v3 + 32);
  *(a3 + 32) = result;
  return result;
}

uint64_t ___ZN2md16RouteLineSection19simplifyWithEpsilonERKd_block_invoke(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v4 = *a2 + 48 * a3;
  if (*(v4 + 44) != *(v4 + 45))
  {
    v5 = *(v4 + 40);
    if (v5 == 0.0 || v5 == 1.0)
    {
      return 1;
    }
  }

  v8 = *(v4 + 36);
  v9 = *(v4 - 12);
  result = v8 != v9;
  if (v8 == v9 && (a4 & 1) == 0)
  {
    return v8 != *(v4 + 84);
  }

  return result;
}

BOOL ___ZN2md16RouteLineSection19simplifyWithEpsilonERKd_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v4 = *a2 + 48 * a3;
  v5 = *(v4 - 4);
  v6 = *(v4 + 44);
  result = v5 != v6;
  if (v5 == v6 && (a4 & 1) == 0)
  {
    return v5 != *(v4 + 92);
  }

  return result;
}

unint64_t md::RouteLineSection::simplifiedCoordinate(md::RouteLineSection *this, VKPolylineOverlay *a2, PolylineCoordinate a3)
{
  v5 = a2;
  v6 = v5;
  v7 = fabsf(*(this + 15));
  if (v7 <= (v7 * 0.000011921) || v7 < 1.1755e-38)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v11 = [(VKPolylineOverlay *)v5 composedRoute];
    [v11 distanceFromPoint:*(*(this + 1) + 12) toPoint:a3];
    v13 = v12;

    v14 = v13 * *(this + 14);
    if (v14 <= 0.0)
    {
      if (v14 < 0.0)
      {
        (*(**(this + 10) + 24))(*(this + 10));
      }

      v10 = 0;
      v16 = 0;
    }

    else if ((*(**(this + 10) + 24))(*(this + 10)) == 1)
    {
      v15 = (*(**(this + 10) + 24))(*(this + 10));
      v10 = 0;
      v16 = v15 - 1;
    }

    else
    {
      (*(**(this + 10) + 16))(&v31);
      (*(**(this + 10) + 16))(&v29);
      v17 = vsub_f32(v31, v29);
      v18 = v14 - sqrtf(vaddv_f32(vmul_f32(v17, v17)));
      v16 = 0;
      if (v18 <= 0.0)
      {
LABEL_16:
        (*(**(this + 10) + 16))(&v24);
        v31 = v24;
        v33 = v26;
        v34 = v27;
        v32 = v25;
        v35 = v28;
        (*(**(this + 10) + 16))(&v24);
        v29 = v24;
        v30 = v25;
        v20 = vsub_f32(v31, v24);
        v21 = (v18 / sqrtf(vaddv_f32(vmul_f32(v20, v20)))) + 1.0;
        if (v21 >= 1.0)
        {
          v16 += vcvtms_u32_f32(v21);
          v21 = v21 - floorf(v21);
        }
      }

      else
      {
        while ((*(**(this + 10) + 24))(*(this + 10)) - 1 > (v16 + 1))
        {
          (*(**(this + 10) + 16))(&v24);
          (*(**(this + 10) + 16))(v23);
          v19 = vsub_f32(v24, v23[0]);
          v18 = v18 - sqrtf(vaddv_f32(vmul_f32(v19, v19)));
          ++v16;
          if (v18 <= 0.0)
          {
            goto LABEL_16;
          }
        }

        v16 = (*(**(this + 10) + 24))(*(this + 10)) - 1;
        v21 = 0.0;
      }

      v10 = LODWORD(v21) << 32;
    }

    v9 = v16;
  }

  return v10 | v9;
}

void md::RouteLineSection::split(md::RouteLineSection *this, const PolylineCoordinate *a2)
{
  index = a2->index;
  if (index == *md::RouteLineSection::kSplitLocationAfterSection && vabds_f32(a2->offset, *(md::RouteLineSection::kSplitLocationAfterSection + 4)) < 0.00000011921 || (*(**(this + 9) + 24))(*(this + 9)) - 1 <= index)
  {
    v5 = 3.4028e38;
  }

  else if (a2->index != *md::RouteLineSection::kSplitLocationBeforeSection || (v5 = -1.0, vabds_f32(a2->offset, *(md::RouteLineSection::kSplitLocationBeforeSection + 4)) >= 0.00000011921))
  {
    v6 = *((*(**(this + 9) + 32))(*(this + 9), index) + 32);
    v5 = v6 + ((*((*(**(this + 9) + 32))(*(this + 9), index + 1) + 32) - v6) * a2->offset);
  }

  *(this + 16) = v5;
  v7 = *(this + 94);
  if ((v7 & 0x80000000) == 0)
  {
    WeakRetained = objc_loadWeakRetained(this + 25);
    v9 = [WeakRetained composedRouteSegmentIndex];

    if (v7 != v9)
    {
      *(this + 16) = -1082130432;
    }
  }
}

__n128 __Block_byref_object_copy__30246(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  v3 = a2[4].n128_u64[0];
  a1[4].n128_u32[2] = a2[4].n128_u32[2];
  a1[4].n128_u64[0] = v3;
  return result;
}

void __Block_byref_object_dispose__30247(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t (****___ZNK2md16RouteLineSection17addTrafficRibbonsERNSt3__113unordered_mapINS_15TrafficBatchKeyENS1_6vectorINS1_10unique_ptrINS_13TrafficRibbonEN3mdm11TypeDeleterIS6_EEEEN3geo17allocator_adapterISA_NS7_15zone_mallocatorEEEEENS1_4hashIS3_EENS1_8equal_toIS3_EENS1_9allocatorINS1_4pairIKS3_SF_EEEEEERNS2_IS3_NS4_INS5_INS_18SolidTrafficRibbonENS8_ISR_EEEENSC_IST_SD_EEEESH_SJ_NSK_INSL_ISM_SV_EEEEEERKNS1_10shared_ptrIN3gss15StylesheetQueryINS11_10PropertyIDEEEEERKNS_16TrafficMeshStyleE_block_invoke(uint64_t (****result)(void), unsigned int a2, uint64_t a3, uint64_t a4))(void)
{
  if (a2 <= 3)
  {
    v6 = result;
    v7 = result[5];
    *(result[4][1] + 68) = a2;
    v8 = *(result[6] + *(result[4][1] + 68));
    if ((v8 - 1) >= 2)
    {
      if (!v8)
      {
        v20 = mdm::zone_mallocator::instance(result);
        v21 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TrafficRibbon>(v20);
        v22 = md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::StandardModeRibbonUsingPositionType(v21, a4);
        *v22 = &unk_1F2A2F8A0;
        v61 = v22;
        if (a4)
        {
          v23 = 0;
          do
          {
            *(v21[9] + v23) = *(*(*v7[9] + 4))(v7[9], a3);
            v23 += 8;
            ++a3;
            --a4;
          }

          while (a4);
        }

        v24 = v6[7];
        v62 = *(v6[4] + 8) + 48;
        v25 = std::__hash_table<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::TrafficBatchKey>,std::equal_to<md::TrafficBatchKey>,true>,std::__unordered_map_equal<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::TrafficBatchKey>,std::hash<md::TrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::TrafficBatchKey,std::piecewise_construct_t const&,std::tuple<md::TrafficBatchKey const&>,std::tuple<>>(v24, v62);
        v26 = v25;
        v28 = *(v25 + 7);
        v27 = *(v25 + 8);
        if (v28 >= v27)
        {
          v40 = *(v25 + 6);
          v41 = v28 - v40;
          v42 = (v28 - v40) >> 3;
          v43 = v42 + 1;
          if ((v42 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v44 = v27 - v40;
          if (v44 >> 2 > v43)
          {
            v43 = v44 >> 2;
          }

          if (v44 >= 0x7FFFFFFFFFFFFFF8)
          {
            v45 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v45 = v43;
          }

          v66 = v25 + 18;
          if (v45)
          {
            v46 = mdm::zone_mallocator::instance(v25);
            v47 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>>(v46, v45);
            v40 = *(v26 + 6);
            v41 = *(v26 + 7) - v40;
            v48 = v41 >> 3;
          }

          else
          {
            v47 = 0;
            v48 = v42;
          }

          v55 = &v47[8 * v42];
          v56 = &v47[8 * v45];
          v57 = v61;
          v61 = 0;
          v58 = &v55[-8 * v48];
          *v55 = v57;
          v30 = v55 + 8;
          memcpy(v58, v40, v41);
          v59 = *(v26 + 6);
          *(v26 + 6) = v58;
          *(v26 + 7) = v30;
          v60 = *(v26 + 8);
          *(v26 + 8) = v56;
          v64 = v59;
          v65 = v60;
          v62 = v59;
          v63 = v59;
          std::__split_buffer<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(&v62);
        }

        else
        {
          v29 = v61;
          v61 = 0;
          *v28 = v29;
          v30 = v28 + 8;
        }

        *(v26 + 7) = v30;
        return std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>::~unique_ptr[abi:nn200100](&v61);
      }
    }

    else
    {
      v9 = mdm::zone_mallocator::instance(result);
      v10 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::SolidTrafficRibbon>(v9);
      v11 = md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::StandardModeRibbonUsingPositionType(v10, a4);
      *v11 = &unk_1F2A2F8C0;
      v61 = v11;
      if (a4)
      {
        v12 = 0;
        do
        {
          *(v10[9] + v12) = *(*(*v7[9] + 4))(v7[9], a3);
          v12 += 8;
          ++a3;
          --a4;
        }

        while (a4);
      }

      v13 = v6[8];
      v62 = *(v6[4] + 8) + 48;
      v14 = std::__hash_table<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::TrafficBatchKey>,std::equal_to<md::TrafficBatchKey>,true>,std::__unordered_map_equal<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::TrafficBatchKey>,std::hash<md::TrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::TrafficBatchKey,std::piecewise_construct_t const&,std::tuple<md::TrafficBatchKey const&>,std::tuple<>>(v13, v62);
      v15 = v14;
      v17 = *(v14 + 7);
      v16 = *(v14 + 8);
      if (v17 >= v16)
      {
        v31 = *(v14 + 6);
        v32 = v17 - v31;
        v33 = (v17 - v31) >> 3;
        v34 = v33 + 1;
        if ((v33 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v35 = v16 - v31;
        if (v35 >> 2 > v34)
        {
          v34 = v35 >> 2;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF8)
        {
          v36 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v34;
        }

        v66 = v14 + 18;
        if (v36)
        {
          v37 = mdm::zone_mallocator::instance(v14);
          v38 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>>(v37, v36);
          v31 = *(v15 + 6);
          v32 = *(v15 + 7) - v31;
          v39 = v32 >> 3;
        }

        else
        {
          v38 = 0;
          v39 = v33;
        }

        v49 = &v38[8 * v33];
        v50 = &v38[8 * v36];
        v51 = v61;
        v61 = 0;
        v52 = &v49[-8 * v39];
        *v49 = v51;
        v19 = v49 + 8;
        memcpy(v52, v31, v32);
        v53 = *(v15 + 6);
        *(v15 + 6) = v52;
        *(v15 + 7) = v19;
        v54 = *(v15 + 8);
        *(v15 + 8) = v50;
        v64 = v53;
        v65 = v54;
        v62 = v53;
        v63 = v53;
        std::__split_buffer<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(&v62);
      }

      else
      {
        v18 = v61;
        v61 = 0;
        *v17 = v18;
        v19 = v17 + 8;
      }

      *(v15 + 7) = v19;
      return std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>::~unique_ptr[abi:nn200100](&v61);
    }
  }

  return result;
}