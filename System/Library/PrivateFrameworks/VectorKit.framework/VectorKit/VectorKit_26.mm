void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls26RequiresShaderDeviceDataIDIN3ggl15DeviceDataTypedINSC_7DaVinci17InstanceTransformEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A132A8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void md::LabelFeatureStyler::styleLabelFeatures(unsigned int *a1, void *a2, unsigned int a3, int a4, uint64_t a5)
{
  v87 = *MEMORY[0x1E69E9840];
  if (*a2 == a2[1])
  {
    return;
  }

  v10 = atomic_load(a1 + 2);
  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v11 = GEOGetVectorKitPerformanceLog_log;
  v12 = os_signpost_enabled(v11);
  if (a4)
  {
    if (!v12)
    {
      goto LABEL_10;
    }

    LOWORD(buf.__vftable) = 0;
    v13 = "LabelsTileDecodeStyleFeatures";
  }

  else
  {
    if (!v12)
    {
      goto LABEL_10;
    }

    LOWORD(buf.__vftable) = 0;
    v13 = "LabelsStyleFeatures";
  }

  _os_signpost_emit_with_name_impl(&dword_1B2754000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, v13, &unk_1B3514CAA, &buf, 2u);
LABEL_10:

  v77 = 0;
  v78 = 0;
  v79 = 0;
  v15 = a2[1] - *a2;
  v16 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 3);
  if (v15)
  {
    if (v16 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v86 = &v80;
    v17 = mdm::zone_mallocator::instance(v14);
    v18 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(v17, v16);
    memcpy(&v18[-(v78 - v77)], v77, v78 - v77);
    v19 = v77;
    v20 = v79;
    v77 = &v18[-(v78 - v77)];
    v78 = v18;
    v79 = &v18[16 * v16];
    buf.__shared_weak_owners_ = v19;
    v85 = v20;
    buf.__vftable = v19;
    buf.__shared_owners_ = v19;
    std::__split_buffer<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator> &>::~__split_buffer(&buf);
    v16 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  }

  v73 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::reserve(&v73, v16);
  v21 = *(*a1 + 336);
  std::mutex::lock((v21 + 64));
  v66 = a1;
  v63 = a3;
  v64 = a5;
  v65 = a4;
  v22 = *(v21 + 192);
  v70 = *(v21 + 184);
  v71 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock((v21 + 64));
  v23 = *a2;
  v24 = a2[1];
  if (*a2 != v24)
  {
    do
    {
      v23[1] = (v78 - v77) >> 4;
      v25 = (*(**v23 + 584))(*v23, &v77, &v70);
      v26 = (v78 - v77) >> 4;
      v27 = v23[1];
      v28 = v73;
      v29 = v74;
      v30 = v26 - v27;
      v23[2] = v26 - v27;
      v31 = xmmword_1B33B0560;
      if (v26 != v27)
      {
        if (v30 <= (v75 - v29) >> 3)
        {
          v39 = 0;
          v40 = *v23;
          v41 = (v30 - 1) & 0x1FFFFFFFFFFFFFFFLL;
          v42 = vdupq_n_s64(v41);
          do
          {
            v43 = vmovn_s64(vcgeq_u64(v42, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
            if (v43.i8[0])
            {
              *&v29[8 * v39] = v40;
            }

            if (v43.i8[4])
            {
              *&v29[8 * v39 + 8] = v40;
            }

            v39 += 2;
          }

          while (((v41 + 2) & 0x3FFFFFFFFFFFFFFELL) != v39);
          v74 = &v29[8 * v30];
        }

        else
        {
          v32 = v29 - v28;
          v33 = v30 + ((v29 - v28) >> 3);
          if (v33 >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v34 = v75 - v28;
          v35 = v34 >> 2;
          if (v34 >> 2 <= v33)
          {
            v35 = v33;
          }

          if (v34 >= 0x7FFFFFFFFFFFFFF8)
          {
            v36 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v36 = v35;
          }

          v86 = &v76;
          if (v36)
          {
            v37 = mdm::zone_mallocator::instance(v25);
            v38 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeature *>(v37, v36);
            v31 = xmmword_1B33B0560;
          }

          else
          {
            v38 = 0;
          }

          v44 = 0;
          v45 = &v38[8 * (v32 >> 3)];
          v46 = &v38[8 * v36];
          v47 = *v23;
          v48 = (v30 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
          v49 = vdupq_n_s64(v48);
          do
          {
            v50 = vmovn_s64(vcgeq_u64(v49, vorrq_s8(vdupq_n_s64(v44), v31)));
            if (v50.i8[0])
            {
              *&v45[8 * v44] = v47;
            }

            if (v50.i8[4])
            {
              *&v45[8 * v44 + 8] = v47;
            }

            v44 += 2;
          }

          while (v48 - ((v30 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v44);
          memcpy(&v45[8 * v30], v29, v74 - v29);
          v51 = &v45[8 * v30 + v74 - v29];
          v74 = v29;
          v52 = v29 - v73;
          v53 = &v45[-(v29 - v73)];
          memcpy(v53, v73, v52);
          v54 = v73;
          v55 = v75;
          v73 = v53;
          v74 = v51;
          v75 = v46;
          buf.__shared_weak_owners_ = v54;
          v85 = v55;
          buf.__vftable = v54;
          buf.__shared_owners_ = v54;
          std::__split_buffer<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator> &>::~__split_buffer(&buf);
        }
      }

      v23 += 3;
    }

    while (v23 != v24);
  }

  memset(&v72, 0, sizeof(v72));
  std::vector<std::shared_ptr<md::LabelStyle>,geo::allocator_adapter<std::shared_ptr<md::LabelStyle>,mdm::zone_mallocator>>::reserve(&v72, (v78 - v77) >> 4);
  md::LabelStyleCache::requestStyles(*(*v66 + 336), &v77, &v72, &v73);
  v57 = *a2;
  v56 = a2[1];
  if (v64 && 0xAAAAAAAAAAAAAAABLL * (v56 - v57) >= 0x15)
  {
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = ___ZN2md18LabelFeatureStyler18styleLabelFeaturesERNSt3__16vectorINS_22LabelFeatureStylerItemEN3geo17allocator_adapterIS3_N3mdm15zone_mallocatorEEEEEbbPNS4_9TaskQueueE_block_invoke;
    v67[3] = &__block_descriptor_69_e8_v16__0Q8l;
    v67[4] = 0xAAAAAAAAAAAAAAABLL * (v56 - v57);
    v67[5] = a2;
    v67[6] = &v77;
    v67[7] = &v72;
    v69 = v63;
    v68 = v10;
    v58 = v67;
    v82 = &unk_1F2A1E070;
    v83 = 0;
    v59 = [v58 copy];
    v60 = v83;
    v83 = v59;

    geo::_retain_ptr<void({block_pointer} {__strong})(unsigned long),geo::_copy_block_arc<void({block_pointer} {__strong})(unsigned long)>,geo::_release_block_arc<void({block_pointer} {__strong})(unsigned long)>,geo::_hash_ptr,geo::_equal_ptr>::_retain_ptr(v81, &v82);
    v81[6] = 0;
    operator new();
  }

  for (; v57 != v56; v57 += 3)
  {
    (*(**v57 + 592))(*v57, v77 + 2 * v57[1], v72.__vftable + 16 * v57[1], v57[2], v63, v10, 0);
  }

  if (v65)
  {
    if (GEOGetVectorKitPerformanceLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
    }

    v61 = GEOGetVectorKitPerformanceLog_log;
    if (!os_signpost_enabled(v61))
    {
      goto LABEL_57;
    }

    LOWORD(buf.__vftable) = 0;
    v62 = "LabelsTileDecodeStyleFeatures";
  }

  else
  {
    if (GEOGetVectorKitPerformanceLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
    }

    v61 = GEOGetVectorKitPerformanceLog_log;
    if (!os_signpost_enabled(v61))
    {
      goto LABEL_57;
    }

    LOWORD(buf.__vftable) = 0;
    v62 = "LabelsStyleFeatures";
  }

  _os_signpost_emit_with_name_impl(&dword_1B2754000, v61, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, v62, &unk_1B3514CAA, &buf, 2u);
LABEL_57:

  buf.__vftable = &v72;
  std::vector<std::shared_ptr<md::LabelStyle>,geo::allocator_adapter<std::shared_ptr<md::LabelStyle>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&buf);
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v71);
  }

  std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v73);
  buf.__vftable = &v77;
  std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&buf);
}

void sub_1B297B428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, char *a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char *a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, id a40)
{
  std::__function::__value_func<void ()(unsigned long)>::~__value_func[abi:nn200100](v43 - 232);
  a39 = &unk_1F2A1E070;

  *(v43 - 200) = v41;
  a26 = &a27;
  std::vector<std::shared_ptr<md::LabelStyle>,geo::allocator_adapter<std::shared_ptr<md::LabelStyle>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a26);
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a25);
  }

  std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a31);
  a31 = &a35;
  std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a31);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26RequiresShaderDeviceDataIDIN3ggl15DeviceDataTypedINS9_7DaVinci17InstanceTransformEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A132A8;
  a2[1] = v2;
  return result;
}

uint64_t md::LayoutContext::camera(md::LayoutContext *this)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(this + 736))
  {
    return this + 224;
  }

  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v2 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "_frameState.has_value()";
    v7 = 2080;
    v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/MDLayoutContext.mm";
    v9 = 1024;
    v10 = 92;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_ERROR, "Requesting frameState on context in undefined state: Assertion with expression - %s : Failed in file - %s line - %i", &v5, 0x1Cu);
  }

  if (*(this + 736))
  {
    return this + 224;
  }

  v4 = std::__throw_bad_optional_access[abi:nn200100]();
  return flushStyleFeatureQueue(v4);
}

void flushStyleFeatureQueue(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != a1[1])
  {
    md::LabelFeatureStyler::styleLabelFeatures(*(a2 + 296), a1, 1u, 1, *(*(a2 + 152) + 32));
    a1[1] = *a1;
    std::unique_lock<std::mutex>::unlock[abi:nn200100](a3);
    if (*a3)
    {
      if (*(a3 + 8) != 1)
      {
        std::mutex::lock(*a3);
        *(a3 + 8) = 1;
        return;
      }
    }

    else
    {
      std::__throw_system_error(1, "unique_lock::lock: references null mutex");
    }

    std::__throw_system_error(11, "unique_lock::lock: already locked");
    JUMPOUT(0x1B297B708);
  }
}

uint64_t md::ita::AssignShadowTextureIndex::operator()(uint64_t **a1, uint64_t a2)
{
  v73[3] = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  if (!v4)
  {
    v5 = **a1;
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v6 == v7)
    {
      goto LABEL_5;
    }

    while (*v6 != 0xD369A4D92C8FFE6CLL)
    {
      v6 += 5;
      if (v6 == v7)
      {
        goto LABEL_5;
      }
    }

    if (v6 == v7)
    {
LABEL_5:
      v4 = 0;
    }

    else
    {
      v4 = v6[3];
      v8 = v6[4];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }
    }

    a1[1] = v4;
  }

  result = (*(*v4 + 8))(v4);
  if (result)
  {
    v10 = result;
    v11 = a1[2];
    if (!v11)
    {
      v12 = **a1;
      v13 = *v12;
      v14 = *(v12 + 8);
      if (v13 == v14)
      {
        goto LABEL_15;
      }

      while (*v13 != 0x41D4E9297E100630)
      {
        v13 += 5;
        if (v13 == v14)
        {
          goto LABEL_15;
        }
      }

      if (v13 == v14)
      {
LABEL_15:
        v11 = 0;
      }

      else
      {
        v11 = v13[3];
        v15 = v13[4];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v15);
        }
      }

      a1[2] = v11;
    }

    v65 = v11;
    v16 = *(v10 + 8);
    result = md::FrameGraph::renderQueueForPass(v16, 0);
    if (result)
    {
      v17 = *(v10 + 104);
      if (!v17 || (v18 = *(v17 + 32), v19 = *(v16 + 12), v18 >= (*(v16 + 13) - v19) >> 3) || (v64 = *(*(v19 + 8 * v18) + 16)) == 0)
      {
        v20 = a1[3];
        if (!v20)
        {
          v21 = **a1;
          v22 = *v21;
          v23 = *(v21 + 8);
          if (v22 == v23)
          {
            goto LABEL_28;
          }

          while (*v22 != 0xC94DD89A7B09BE9CLL)
          {
            v22 += 5;
            if (v22 == v23)
            {
              goto LABEL_28;
            }
          }

          if (v22 == v23)
          {
LABEL_28:
            v20 = 0;
          }

          else
          {
            v20 = v22[3];
            v24 = v22[4];
            if (v24)
            {
              atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:nn200100](v24);
            }
          }

          a1[3] = v20;
        }

        v25 = *((*(*v20 + 48))(v20) + 2704);
        v27 = *v25;
        v26 = v25[1];
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
          v64 = v27;
          std::__shared_weak_count::__release_shared[abi:nn200100](v26);
        }

        else
        {
          v64 = *v25;
        }
      }

      v71[0] = &unk_1F2A160E0;
      v71[1] = &v65;
      v71[2] = &v64;
      v72 = v71;
      v28 = *(a2 + 8);
      v29 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v28);
      v30 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>(v28);
      v31 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v28);
      v73[0] = v29;
      v73[1] = v30;
      v32 = 1;
      v33 = v29;
      v34 = v73;
      v73[2] = v31;
      do
      {
        if (*(v73[v32] + 40) - *(v73[v32] + 32) < *(v33 + 40) - *(v33 + 32))
        {
          v33 = v73[v32];
          v34 = &v73[v32];
        }

        ++v32;
      }

      while (v32 != 3);
      v35 = *(*v34 + 32);
      v36 = *(*v34 + 40);
      v66 = v35;
      v67 = v36;
      v68 = v29;
      v69 = v30;
      v70 = v31;
      while (v35 != v36 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v66, *v35, v35[1]))
      {
        v35 += 2;
        v66 = v35;
      }

      v37 = v66;
      if (v66 == v36)
      {
        v41 = _ZTWN4ecs27Runtime11_localStateE();
        v42 = _ZTWN4ecs27Runtime11_stackIndexE();
        v43 = 0;
      }

      else
      {
        v63 = a2;
        v38 = v68;
        v39 = v69;
        v40 = v70;
        v41 = _ZTWN4ecs27Runtime11_localStateE();
        v42 = _ZTWN4ecs27Runtime11_stackIndexE();
        v43 = 0;
        v44 = v67;
        do
        {
          v45 = v37[1];
          v46 = v45 & 0x3F;
          v47 = (v45 >> 3) & 0x1FF8;
          v48 = *(*(*(v38 + 8) + v47) + 4 * v46 + 2);
          v49 = *(*(v38 + 56) + ((v48 >> 3) & 0x1FF8));
          v50 = *(*(*(v39 + 8) + v47) + 4 * v46 + 2);
          v51 = *(*(v39 + 56) + ((v50 >> 3) & 0x1FF8));
          v52 = *(*(*(v40 + 8) + v47) + 4 * v46 + 2);
          v53 = *(*(v40 + 56) + ((v52 >> 3) & 0x1FF8));
          *(v41 + 104 * *v42 + 24) = *v37;
          if (!v72)
          {
            std::__throw_bad_function_call[abi:nn200100]();
          }

          (*(*v72 + 48))(v72, v49 + 8 * (v48 & 0x3F), v51 + 12 * (v50 & 0x3F), v53 + 8 * (v52 & 0x3F));
          ++v43;
          v54 = v37 + 2;
          while (1)
          {
            v37 = v54;
            v66 = v54;
            if (v54 == v44)
            {
              break;
            }

            v55 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v66, *v54, v54[1]);
            v54 = v37 + 2;
            if (v55)
            {
              v56 = v37;
              goto LABEL_52;
            }
          }

          v56 = v44;
LABEL_52:
          ;
        }

        while (v56 != v36);
        v57 = *(v63 + 8);
        {
          ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
          *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
          qword_1EB83D950 = "md::ls::PipelineSetup]";
          qword_1EB83D958 = 21;
        }

        *(v57 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v57 + 4096);
      }

      *(v41 + 104 * *v42 + 24) = -65536;
      v58 = v41 + 104 * *v42;
      v59 = *(v58 + 92);
      *(v58 + 92) = v59 + 1;
      *(v58 + 4 * v59 + 28) = v43;
      v60 = v41 + 104 * *v42;
      v62 = *(v60 + 92);
      v61 = (v60 + 92);
      if (v62 >= 0x10)
      {
        *v61 = 0;
      }

      return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v71);
    }
  }

  return result;
}

void sub_1B297BC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void gdc::Camera::horizontalFieldOfView(gdc::Camera *this, double *a2)
{
  v3 = a2[46];
  v4 = a2[47];
  if (v3 >= v4)
  {
    v10 = a2[57];
  }

  else
  {
    v5 = v4 * v3;
    v6 = v3 / v4;
    if (v5 <= 0.0)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = v6;
    }

    v8 = tan(a2[57] * 0.5);
    v9 = atan(v8 * v7);
    v10 = v9 + v9;
  }

  *this = v10;
}

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Building::Gradient>>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::ConstantDataTyped<ggl::Building::Gradient> *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::Building::Gradient> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::ConstantDataTyped<ggl::Building::Gradient> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Building::Gradient> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::ConstantDataTyped<ggl::Building::Gradient> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Building::Gradient> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void gss::ClientStyleState<gss::PropertyID>::queryNightMode(uint64_t a1, BOOL *a2, BOOL *a3)
{
  v6 = pthread_rwlock_rdlock((a1 + 16));
  if (v6)
  {
    geo::read_write_lock::logFailure(v6, "read lock", v7);
  }

  *a2 = *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a1 + 216, 0x10001u) == 1;
  *a3 = *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a1 + 240, 0x10001u) == 1;
  v8 = pthread_rwlock_unlock((a1 + 16));
  if (v8)
  {

    geo::read_write_lock::logFailure(v8, "unlock", v9);
  }
}

void md::VenueWallRenderResources::~VenueWallRenderResources(md::VenueWallRenderResources *this)
{
  v2 = *(this + 183);
  *(this + 183) = 0;
  if (v2)
  {
    v3 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Building::Gradient>>::~FragmentedPool(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C405CD4001ALL);
  }

  ggl::RenderDataHolder::~RenderDataHolder((this + 1248));
  std::unique_ptr<ggl::FragmentedPool<ggl::VenueWallShadow::MeshPipelineSetup>>::~unique_ptr[abi:nn200100](this + 155);
  v4 = *(this + 154);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  ggl::RenderDataHolder::~RenderDataHolder((this + 1008));
  std::unique_ptr<ggl::FragmentedPool<ggl::VenueWallShadow::MeshPipelineSetup>>::~unique_ptr[abi:nn200100](this + 125);
  v5 = *(this + 124);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  ggl::RenderDataHolder::~RenderDataHolder((this + 768));
  v6 = *(this + 95);
  *(this + 95) = 0;
  if (v6)
  {
    v7 = ggl::FragmentedPool<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup>::~FragmentedPool(v6);
    MEMORY[0x1B8C62190](v7, 0x10A0C405CD4001ALL);
  }

  v8 = *(this + 94);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(this + 92);
  *(this + 92) = 0;
  if (v9)
  {
    v10 = ggl::FragmentedPool<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup>::~FragmentedPool(v9);
    MEMORY[0x1B8C62190](v10, 0x10A0C405CD4001ALL);
  }

  v11 = *(this + 91);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v12 = *(this + 89);
  *(this + 89) = 0;
  if (v12)
  {
    v13 = ggl::FragmentedPool<ggl::VenueWall::WallEndCapMeshPipelineSetup>::~FragmentedPool(v12);
    MEMORY[0x1B8C62190](v13, 0x10A0C405CD4001ALL);
  }

  v14 = *(this + 88);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  ggl::RenderDataHolder::~RenderDataHolder((this + 480));
  v15 = *(this + 59);
  *(this + 59) = 0;
  if (v15)
  {
    v16 = ggl::FragmentedPool<ggl::VenueWall::WallTopMeshPipelineSetup>::~FragmentedPool(v15);
    MEMORY[0x1B8C62190](v16, 0x10A0C405CD4001ALL);
  }

  v17 = *(this + 58);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  ggl::RenderDataHolder::~RenderDataHolder((this + 240));
  ggl::RenderDataHolder::~RenderDataHolder((this + 24));
  v18 = *(this + 2);
  *(this + 2) = 0;
  if (v18)
  {
    v19 = ggl::FragmentedPool<ggl::VenueWall::MeshPipelineSetup>::~FragmentedPool(v18);
    MEMORY[0x1B8C62190](v19, 0x10A0C405CD4001ALL);
  }

  v20 = *(this + 1);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }
}

double std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignShadowTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignShadowTextureIndex>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  md::ita::AssignShadowTextureIndex::operator()((a1 + 8), a2);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

void *std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v8 = mdm::zone_mallocator::instance(v4);
    v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v8, v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

void std::vector<ggl::ConstantDataTyped<ggl::Building::Gradient> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Building::Gradient> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::Building::Gradient> *>(v2, v1);
  }
}

void md::LabelLineSegment::createLists(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  if (a1[23] < 2u)
  {
    return;
  }

  md::LabelLineSegment::createPointList(a1, a3);
  v6 = (*(*a1 + 64))(a1);
  v7 = a1[23];
  v8 = v70;
  v66 = v70;
  v67 = v70;
  v68 = v70;
  v69 = 10;
  if (v7 < 0xB)
  {
    if (!v7)
    {
      v16 = 0;
      v15 = v70;
      goto LABEL_14;
    }
  }

  else
  {
    if (v7 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v7;
    }

    v10 = malloc_type_malloc(2 * v9, 0x1000040BDFB0063uLL);
    v8 = v10;
    v11 = v66;
    v12 = v67;
    if (v66 != v67)
    {
      v13 = v10;
      do
      {
        v14 = *v11++;
        *v13++ = v14;
      }

      while (v11 != v12);
    }

    v66 = v10;
    v69 = v9;
  }

  v15 = v8;
  do
  {
    *v15++ = 127;
    --v7;
  }

  while (v7);
  v16 = a1[23];
  v8 = v66;
LABEL_14:
  v67 = v15;
  v17 = *(a2 + 151);
  v18 = *(a3 + 4);
  v19 = *(a3 + 56);
  v20 = *(a2 + 8);
  if (v20 && (v20 = std::__shared_weak_count::lock(v20)) != 0)
  {
    v21 = *a2;
  }

  else
  {
    v21 = 0;
  }

  if (!v21[93])
  {
    v22 = *(a2 + 144);
    if (*(a2 + 144))
    {
      v23 = 0;
      v24 = v21[90];
      v25 = v21[87];
      v26 = v21[4];
      v27 = v21[92] + 8 * *(a2 + 132);
      do
      {
        v28 = *(v27 + 8 * v23);
        if (v28[2] == v18)
        {
          v29 = v28[3];
          v30 = v29 - v19;
          if (v29 >= v19 && v29 < v19 + v16)
          {
            v32 = (v25 + 32 * *v28);
            v33 = *v32;
            if (v33)
            {
              v34 = (v24 + 16 * v32[1]);
              v35 = 0x7FFFFFFF;
              v36 = 0.0;
              do
              {
                if (v34 != v28)
                {
                  v37 = v26 + 168 * v34[1];
                  v38 = *(v37 + 151);
                  if (v38 < 7 || *(v37 + 73))
                  {
                    v39 = *(v37 + 148);
                    if (v39)
                    {
                      v40 = v39 * 0.01;
                    }

                    else
                    {
                      v40 = 14.8;
                      if (v38 <= 8)
                      {
                        v40 = *(&unk_1B33B4180 + v38);
                      }
                    }

                    if (v35 >= v38)
                    {
                      v35 = v38;
                    }

                    v36 = fmaxf(v36, v40);
                  }
                }

                v34 += 4;
                --v33;
              }

              while (v33);
              if (v35 != 0x7FFFFFFF)
              {
                v41 = &v8[v30];
                *v41 = v35;
                *(v41 + 1) = (v36 * 5.0);
              }
            }
          }
        }

        ++v23;
      }

      while (v23 != v22);
    }
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  v42 = *(a3 + 32);
  v43 = *(a3 + 56);
  v44 = a1[23];
  v45 = v65;
  v64 = v65;
  if (v44 >= 0xB)
  {
    if (v44 <= 0x10)
    {
      v46 = 16;
    }

    else
    {
      v46 = a1[23];
    }

    v45 = malloc_type_malloc(8 * v46, 0x100004000313F17uLL);
    v64 = v45;
    goto LABEL_50;
  }

  if (a1[23])
  {
LABEL_50:
    v47 = v45;
    do
    {
      *v47++ = 0.0;
      --v44;
    }

    while (v44);
    v48 = a1[23];
    goto LABEL_53;
  }

  v48 = 0;
LABEL_53:
  md::LabelLineSegment::computeRadiusOfCurvature((v42 + 8 * v43), v48, *(a3 + 16), v45);
  v49 = *(a3 + 1);
  v50 = 26.0;
  if (v49 == 2)
  {
    v50 = 15.0;
  }

  if (v49 == 3)
  {
    v50 = 0.0;
  }

  if (a1[23])
  {
    v51 = 0;
    v52 = fabsf(*(a3 + 68));
    v53 = fabsf(*(a3 + 64));
    v54 = 2 * a1[23];
    v55 = v66 + 1;
    v56 = (v6 + 1);
    v57 = v64;
    do
    {
      if (v51)
      {
        if (v54 - 2 != v51)
        {
          v58 = v55[v51 - 1];
          v59 = *v57 * 512.0;
          goto LABEL_67;
        }

        if (v52 > 0.00000011921)
        {
LABEL_64:
          v58 = 127;
          goto LABEL_65;
        }
      }

      else if (v53 > 0.00000011921)
      {
        goto LABEL_64;
      }

      v58 = v55[v51 - 1];
LABEL_65:
      v59 = 512.0;
LABEL_67:
      v60 = v55[v51];
      *(v56 - 1) = v17;
      *v56 = v58;
      v56[2] = v60;
      v61 = (v50 / v59);
      v62 = 31 - __clz(v61);
      if (v61)
      {
        v63 = v62;
      }

      else
      {
        v63 = 0;
      }

      v56[1] = v63;
      v51 += 2;
      ++v57;
      v56 += 4;
    }

    while (v54 != v51);
  }

  if (v64 != v65)
  {
    free(v64);
  }

  if (v66 != v68)
  {
    free(v66);
  }
}

{
  v36[1] = *MEMORY[0x1E69E9840];
  if (a1[23] >= 2u)
  {
    md::LabelLineSegment::createPointList(a1, a3);
    v6 = (*(*a1 + 64))(a1);
    v7 = a1[23];
    if (v7 > 0x2000)
    {
      v11 = malloc_type_malloc(a1[23], 0x100004077774924uLL);
      if (!v11)
      {
        return;
      }

      v9 = v11;
      v10 = a1[23];
    }

    else
    {
      (MEMORY[0x1EEE9AC00])();
      v9 = v36 - v8;
      bzero(v36 - v8, v7);
      v10 = v7;
    }

    v12 = memset(v9, 127, v10);
    v13 = a1[23];
    if (!a2)
    {
LABEL_24:
      v20 = *(a3 + 32);
      v21 = *(a3 + 56);
      if (v13 > 0x400)
      {
        v23 = malloc_type_malloc(8 * v13, 0x100004000313F17uLL);
        if (!v23)
        {
LABEL_38:
          free(v23);
LABEL_39:
          if (v7 > 0x2000)
          {
            free(v9);
          }

          return;
        }

        v25 = a1[23];
      }

      else
      {
        MEMORY[0x1EEE9AC00](v12);
        v23 = v36 - v22;
        bzero(v36 - v22, v24);
        v25 = v13;
      }

      bzero(v23, 8 * v25);
      v27 = a1[23];
      v26 = a1 + 23;
      md::LabelLineSegment::computeRadiusOfCurvature((v20 + 8 * v21), v27, *(a3 + 16), v23);
      v28 = *v26;
      if (*v26)
      {
        v29 = 0;
        v30 = (v6 + 3);
        do
        {
          v31 = 512.0;
          if (v29 && v28 - 1 != v29)
          {
            v31 = *&v23[8 * v29] * 512.0;
          }

          v32 = v9[v29];
          *(v30 - 3) = v32;
          *(v30 - 2) = v32;
          *v30 = 0;
          v33 = (26.0 / v31);
          v34 = 31 - __clz(v33);
          if (v33)
          {
            v35 = v34;
          }

          else
          {
            v35 = 0;
          }

          *(v30 - 1) = v35;
          ++v29;
          v30 += 4;
        }

        while (v28 != v29);
      }

      if (v13 < 0x401)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v14 = *(a3 + 4);
    v12 = *(a2 + 8);
    if (v12 && (v12 = std::__shared_weak_count::lock(v12)) != 0)
    {
      v15 = *(*a2 + 1704);
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
      if (!v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v15 = MEMORY[0x6A8];
      if (!MEMORY[0x6A8])
      {
        goto LABEL_23;
      }
    }

    v16 = (v15 + 8 * *(a2 + 16) + 8 * v14);
    if (v14)
    {
      if (*(a2 + 20) - 1 != v14)
      {
        goto LABEL_23;
      }

      v17 = v16[1];
    }

    else
    {
      v18 = *v16;
      if (*(a2 + 20) != 1)
      {
        v19 = v9;
        if (v18 == 0.0)
        {
          goto LABEL_22;
        }

        goto LABEL_23;
      }

      v17 = v16[1];
      if (v18 == 0.0)
      {
        *v9 = 1;
      }
    }

    if (v17 == 1.0)
    {
      v19 = &v9[v13 - 1];
LABEL_22:
      *v19 = 1;
    }

LABEL_23:
    v13 = a1[23];
    goto LABEL_24;
  }
}

void sub_1B297C578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, void *a26)
{
  if (a10 != a12)
  {
    free(a10);
  }

  if (a24 != a26)
  {
    free(a24);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::VenueWallShadow::MeshPipelineSetup>>::~unique_ptr[abi:nn200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = ggl::FragmentedPool<ggl::VenueWallShadow::MeshPipelineSetup>::~FragmentedPool(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C405CD4001ALL);
  }

  return a1;
}

float md::DaVinciGroundSettings::valueForZoomLevel<float>(void *a1, int a2, unsigned int a3)
{
  v4 = a1[1];
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = a2;
    if (v4 <= a2)
    {
      v6 = a2 % v4;
    }
  }

  else
  {
    v6 = (v4 - 1) & a2;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_20:
    result = 0.0;
    if ((a2 - 4) < 3)
    {
      return 1.0;
    }

    return result;
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == a2)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= v4)
      {
        v9 %= v4;
      }
    }

    else
    {
      v9 &= v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_20;
    }

LABEL_16:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_20;
    }
  }

  if (*(v8 + 4) != a2)
  {
    goto LABEL_16;
  }

  if (*(v8 + 8))
  {
    goto LABEL_20;
  }

  v10 = (**v8[3])(v8[3], a3);
  if ((v10 & 0x100000000) == 0)
  {
    goto LABEL_20;
  }

  return *&v10;
}

uint64_t md::FrameGraph::renderQueueForPass(md::FrameGraph *this, int a2)
{
  v2 = *(this + 3);
  v3 = *(this + 4);
  v4 = v3 - v2;
  if (v3 == v2)
  {
    return 0;
  }

  v5 = 0;
  v6 = v4 >> 3;
  while (1)
  {
    v7 = *(v2 + 8 * v5);
    if (*v7 == a2)
    {
      v8 = *(v7 + 1);
      v9 = *(this + 15);
      if (v8 < (*(this + 16) - v9) >> 3)
      {
        break;
      }
    }

    if (++v5 >= v6)
    {
      return 0;
    }
  }

  return *(v9 + 8 * v8);
}

uint64_t md::LabelLineStore::WorkUnit::WorkUnit(uint64_t a1, int a2, uint64_t *a3, int **a4, uint64_t a5, uint64_t a6)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  geo::GEOFeatureTile_retain_ptr<GeoCodecsFeatureBase const>::reset((a1 + 40), a3);
  v11 = *a4;
  v10 = a4[1];
  *(a1 + 72) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  if (v10 != v11)
  {
    std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__vallocate[abi:nn200100]((a1 + 72), v10 - v11);
    v12 = *(a1 + 80);
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v11 != v10);
    *(a1 + 80) = v12;
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = a6;
  *(a1 + 136) = *a5;
  *(a1 + 168) = 0;
  *(a1 + 148) = *(a5 + 12);
  *(a1 + 144) = *(a5 + 8);
  *(a1 + 160) = *(a5 + 24);
  *(a1 + 168) = *(a5 + 32);
  v14 = *(a5 + 40);
  v15 = *(a5 + 56);
  v16 = *(a5 + 72);
  *(a1 + 219) = *(a5 + 83);
  *(a1 + 192) = v15;
  *(a1 + 208) = v16;
  *(a1 + 176) = v14;
  v17 = *(a5 + 112);
  *(a1 + 240) = *(a5 + 104);
  *(a1 + 248) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1B297C878(_Unwind_Exception *exception_object)
{
  v3 = v1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = v1[4];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = v1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void *ggl::FragmentedPool<ggl::VenueWallShadow::MeshPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::VenueWallShadow::MeshPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::VenueWallShadow::MeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::VenueWallShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWallShadow::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::VenueWallShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWallShadow::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

float md::DaVinciGroundSettings::valueForZoomLevel<float>(void *a1, int a2, float a3)
{
  v5 = a3;
  v6 = a3 - truncf(a3);
  v7 = md::DaVinciGroundSettings::valueForZoomLevel<float>(a1, a2, a3);
  return v7 + ((md::DaVinciGroundSettings::valueForZoomLevel<float>(a1, a2, (v5 + 1)) - v7) * v6);
}

unint64_t gms::ZoomablePropertyStore<float>::getProperty(uint64_t a1, float a2)
{
  v4 = floorf(a2);
  v5 = *(a1 + 64);
  if (((v5 == v4) & ~*(a1 + 68)) != 0 || v5 == a2)
  {
    v13 = *(a1 + 72);
    v15 = *(a1 + 76);
    v16 = (*(a1 + 77) << 40) | (*(a1 + 79) << 56);
  }

  else
  {
    if (v4 >= 0x17)
    {
      v6 = 23;
    }

    else
    {
      v6 = v4;
    }

    v7 = geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find((a1 + 40), v6 + 1);
    if (!*(a1 + 56) || (v8 = v7, v9 = geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find((a1 + 40), v6), (a1 + 48) == v9))
    {
      v15 = 0;
      *(a1 + 64) = v4;
      *(a1 + 68) = 0;
      v13 = 0.0;
    }

    else
    {
      v10 = *(a1 + 32);
      if (!v10 || (v11 = a2 - v6, v11 > 1.0) || (v11 >= 0.0 ? (v12 = a1 + 48 == v8) : (v12 = 1), v12))
      {
        v13 = v9[8];
        *(a1 + 64) = v4;
        v15 = 1;
        *(a1 + 68) = 0;
      }

      else
      {
        v13 = *(geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find((a1 + 40), v6) + 8);
        v20 = v13;
        v19 = *(geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find((a1 + 40), v6 + 1) + 8);
        if (v13 == v19)
        {
          v14 = 0;
        }

        else
        {
          std::function<float ()(float,float const&,float const&)>::operator()(v10, &v20, &v19, a2 - v6);
          v13 = v17;
          v14 = 1;
          v4 = a2;
        }

        *(a1 + 64) = v4;
        *(a1 + 68) = v14;
        v15 = 1;
      }
    }

    v16 = 0;
    *(a1 + 72) = v13;
    *(a1 + 76) = v15;
  }

  return v16 | (v15 << 32) | LODWORD(v13);
}

void md::LabelFeature::setStyle(md::LabelFeature *this, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6)
{
  v8 = a4;
  v11 = *(this + 12);
  v12 = *(this + 13);
  v13 = v12 - v11;
  v14 = (v12 - v11) >> 4;
  if (a4 > v14)
  {
    v15 = a4 - v14;
    v16 = *(this + 14);
    if (v15 <= (v16 - v12) >> 4)
    {
      bzero(*(this + 13), 16 * v15);
      *(this + 13) = v12 + 16 * v15;
    }

    else
    {
      if (a4 >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = v16 - v11;
      v18 = v17 >> 3;
      if (v17 >> 3 <= a4)
      {
        v18 = a4;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF0)
      {
        v19 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v18;
      }

      v70 = this + 120;
      v20 = mdm::zone_mallocator::instance(this);
      v21 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelStyle>>(v20, v19);
      v22 = &v21[v13];
      v23 = &v21[16 * v19];
      bzero(v22, 16 * v15);
      v24 = *(this + 12);
      v25 = *(this + 13) - v24;
      v26 = &v22[-v25];
      memcpy(&v22[-v25], v24, v25);
      v27 = *(this + 12);
      *(this + 12) = v26;
      *(this + 13) = &v22[16 * v15];
      v28 = *(this + 14);
      *(this + 14) = v23;
      v68.__shared_weak_owners_ = v27;
      v69 = v28;
      v68.__vftable = v27;
      v68.__shared_owners_ = v27;
      std::__split_buffer<std::shared_ptr<md::LabelStyle>,geo::allocator_adapter<std::shared_ptr<md::LabelStyle>,mdm::zone_mallocator> &>::~__split_buffer(&v68);
    }

LABEL_19:
    v31 = 0;
    do
    {
      v32 = *(this + 12);
      v33 = *(a3 + v31);
      v34 = *(a3 + v31 + 8);
      if (v34)
      {
        atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
      }

      v35 = v32 + v31;
      v36 = *(v35 + 8);
      *v35 = v33;
      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v36);
      }

      v31 += 16;
      --v8;
    }

    while (v8);
    goto LABEL_25;
  }

  if (a4 < v14)
  {
    v29 = v11 + 16 * a4;
    while (v12 != v29)
    {
      v30 = *(v12 - 8);
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v30);
      }

      v12 -= 16;
    }

    *(this + 13) = v29;
  }

  if (v8)
  {
    goto LABEL_19;
  }

LABEL_25:
  if (*(this + 32) == a6)
  {
    v37 = *(this + 33);
    if ((v37 + 1) > 1)
    {
      v38 = v37 + 1;
    }

    else
    {
      v38 = 1;
    }
  }

  else
  {
    v38 = 1;
    *(this + 32) = a6;
  }

  *(this + 33) = v38;
  v39 = *(this + 12);
  if (v39 == *(this + 13) || (v40 = *v39) == 0)
  {
    v48 = *(this + 11);
    *(this + 10) = 0;
    *(this + 11) = 0;
    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v48);
    }

    v50 = *(this + 20);
    for (i = *(this + 21); i != v50; std::__destroy_at[abi:nn200100]<md::TextDataEntry,0>(i))
    {
      i -= 56;
    }

    *(this + 21) = v50;
    md::LabelFeature::updateTextVector(this);
    *(this + 136) = 0;
    *(this + 138) = 0;
    return;
  }

  v41 = v39[1];
  if (v41)
  {
    atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
  }

  v42 = *(this + 11);
  *(this + 10) = v40;
  *(this + 11) = v41;
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v42);
  }

  if (!(*(*this + 496))(this))
  {
    return;
  }

  v43 = (*(*this + 480))(this, 0);
  if (!v43)
  {
    goto LABEL_55;
  }

  if ((*(v43 + 23) & 0x8000000000000000) != 0)
  {
    if (*(v43 + 8))
    {
      goto LABEL_40;
    }

LABEL_55:
    v47 = 0;
    goto LABEL_61;
  }

  if (!*(v43 + 23))
  {
    goto LABEL_55;
  }

LABEL_40:
  v44 = *(this + 10);
  v45 = *v44;
  v46 = v44[1];
  if (v46)
  {
    atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v68, v45, v46);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v46);
  }

  if (v70 == 1)
  {
    v47 = gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(125, 1, v68.__get_deleter);
    if (v70)
    {
      (*(v68.~__shared_weak_count + 7))(v68.__vftable);
    }
  }

  else
  {
    v47 = 0;
  }

  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v69);
  }

  if (v68.__shared_owners_)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v68.__shared_owners_);
  }

LABEL_61:
  *(this + 138) = v47;
  v51 = (*(*this + 480))(this, 0);
  v52 = (*(*this + 488))(this, 0);
  if (v51 && v52)
  {
    v53 = *(v51 + 23);
    if (v53 < 0)
    {
      v53 = *(v51 + 8);
    }

    if (v53)
    {
      v54 = (*(*this + 496))(this);
      v56 = *(this + 20);
      v55 = *(this + 21);
      if (v54 != 0x6DB6DB6DB6DB6DB7 * ((v55 - v56) >> 3) || a5)
      {
        if (v56 != v55)
        {
          v57 = *(this + 20);
          do
          {
            v58 = *(v57 + 24);
            v59 = *(v57 + 32);
            while (v58 != v59)
            {
              v60 = *v58;
              v58 += 2;
              *(v60 + 124) = 0;
            }

            v57 += 56;
          }

          while (v57 != v55);
          while (v55 != v56)
          {
            v55 -= 56;
            std::__destroy_at[abi:nn200100]<md::TextDataEntry,0>(v55);
          }
        }

        *(this + 21) = v56;
        md::LabelFeature::updateTextVector(this);
      }

      v61 = *(this + 10);
      v62 = *v61;
      if (*v61)
      {
        v63 = v61[1];
        if (v63)
        {
          atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v68, v62, v63);
        if (v63)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v63);
        }

        if (v70 == 1)
        {
          v64 = 0;
          while (1)
          {
            v65 = v64;
            if (gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v68.__get_deleter, 91, v64, 1u, 0))
            {
              break;
            }

            ++v64;
            if (v65 >= 0x17)
            {
              v64 = -4;
              break;
            }
          }

          if (v70)
          {
            (*(v68.~__shared_weak_count + 7))(v68.__vftable);
          }
        }

        else
        {
          v64 = -4;
        }

        if (v69)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v69);
        }

        if (v68.__shared_owners_)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v68.__shared_owners_);
        }
      }

      else
      {
        v64 = 0;
      }

      *(this + 137) = v64;
      if ((*(this + 141) & 1) == 0)
      {
        LODWORD(v68.__vftable) = 1;
        v66 = (*(*this + 240))(this, &v68);
        if (v66 == 254.0)
        {
          v66 = 0.0;
        }

        v67 = fminf(fmaxf(v66, 0.0), 252.0);
        if (*(this + 137) <= v67)
        {
          v64 = v67;
        }

        else
        {
          v64 = *(this + 137);
        }
      }

      *(this + 136) = v64;
    }
  }
}

void sub_1B297D3D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignAmbientTextureIndexAll>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignAmbientTextureIndexAll>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = a2;
  v3 = (a1 + 8);
  v37[0] = &unk_1F2A16098;
  v37[1] = a1 + 8;
  v38 = v37;
  v4 = *(a2 + 8);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>(v4);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v4);
  v7 = v6;
  if (*(v6 + 40) - *(v6 + 32) >= *(v5 + 40) - *(v5 + 32))
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(v8 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v35, *(v8 + 32), v9, v5, v6);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v34, v9, v9, v5, v7);
  v10 = v35[0];
  v11 = v34;
  if (v35[0] == v34)
  {
    v13 = _ZTWN4ecs27Runtime11_localStateE();
    v14 = _ZTWN4ecs27Runtime11_stackIndexE();
    v15 = 0;
  }

  else
  {
    v33 = v3;
    v12 = v36;
    v13 = _ZTWN4ecs27Runtime11_localStateE();
    v14 = _ZTWN4ecs27Runtime11_stackIndexE();
    v15 = 0;
    v16 = v35[1];
    do
    {
      v17 = v10[1];
      v18 = (v17 >> 3) & 0x1FF8;
      v19 = v17 & 0x3F;
      v20 = *(*(*(v12 + 8) + v18) + 4 * v19 + 2);
      v21 = *(*(v12 + 56) + ((v20 >> 3) & 0x1FF8));
      v22 = *(*(*(*(&v12 + 1) + 8) + v18) + 4 * v19 + 2);
      v23 = *(*(*(&v12 + 1) + 56) + ((v22 >> 3) & 0x1FF8));
      *(v13 + 104 * *v14 + 24) = *v10;
      if (!v38)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v38 + 48))(v38, v21 + 12 * (v20 & 0x3F), v23 + 8 * (v22 & 0x3F));
      ++v15;
      v24 = v10 + 2;
      do
      {
        v10 = v24;
        v35[0] = v24;
        if (v24 == v16)
        {
          break;
        }

        v25 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(v35, *v24, v24[1]);
        v24 = v10 + 2;
      }

      while (!v25);
    }

    while (v10 != v11);
    v26 = *(a2 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v26 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v26 + 4096);
    v3 = v33;
  }

  *(v13 + 104 * *v14 + 24) = -65536;
  v27 = v13 + 104 * *v14;
  v28 = *(v27 + 92);
  *(v27 + 92) = v28 + 1;
  *(v27 + 4 * v28 + 28) = v15;
  v29 = v13 + 104 * *v14;
  v31 = *(v29 + 92);
  v30 = (v29 + 92);
  if (v31 >= 0x10)
  {
    *v30 = 0;
  }

  result = std::__function::__value_func<void ()(md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v37);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  return result;
}

void std::vector<ggl::VenueWallShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWallShadow::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VenueWallShadow::MeshPipelineSetup *>(v2, v1);
  }
}

void *geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find(void *a1, unsigned __int8 a2)
{
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = 0;
    v6 = v3;
    do
    {
      v7 = v6[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      ++v5;
      v6 = v8;
    }

    while (v8 != v2);
    do
    {
      v10 = v5 >> 1;
      v11 = v3;
      if (v5 >= 2)
      {
        v12 = v5 >> 1;
        v13 = v3;
        do
        {
          v14 = v13[1];
          if (v14)
          {
            do
            {
              v11 = v14;
              v14 = *v14;
            }

            while (v14);
          }

          else
          {
            do
            {
              v11 = v13[2];
              v9 = *v11 == v13;
              v13 = v11;
            }

            while (!v9);
          }

          v13 = v11;
          v16 = v12-- <= 1;
        }

        while (!v16);
      }

      if (*(v11 + 29) <= a2)
      {
        v15 = v11[1];
        if (v15)
        {
          do
          {
            v3 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v3 = v11[2];
            v9 = *v3 == v11;
            v11 = v3;
          }

          while (!v9);
        }

        v10 = v5 + ~v10;
      }

      v5 = v10;
    }

    while (v10);
  }

  if (v2 == v3)
  {
    return v2;
  }

  v16 = *(v3 + 28) <= a2 && *(v3 + 29) > a2;
  if (!v16)
  {
    return v2;
  }

  return v3;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>();
    *algn_1EB83C978 = 0xAEACE637C9751345;
    qword_1EB83C980 = "md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>]";
    qword_1EB83C988 = 56;
  }
}

void ggl::VenueWallShadow::MeshPipelineState::~MeshPipelineState(ggl::VenueWallShadow::MeshPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

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

uint64_t std::function<float ()(float,float const&,float const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v6 = a4;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, a2, a3);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>(v5);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[397];
}

void md::LabelLineZSet::connectedSegmentInsert(_BOOL8 isWithinEpsilon, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v5 = a4;
  v8 = 80;
  if (a4)
  {
    v8 = 32;
  }

  v9 = a3 + v8;
  v10 = *a2;
  v11 = *(a2 + 8);
  if (*a2 == v11)
  {
LABEL_8:
    v14 = *(a2 + 16);
    if (v11 >= v14)
    {
      v18 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - *a2) >> 4);
      if (v18 + 1 > 0x333333333333333)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - *a2) >> 4);
      v20 = 2 * v19;
      if (2 * v19 <= v18 + 1)
      {
        v20 = v18 + 1;
      }

      if (v19 >= 0x199999999999999)
      {
        v21 = 0x333333333333333;
      }

      else
      {
        v21 = v20;
      }

      if (v21)
      {
        v22 = mdm::zone_mallocator::instance(isWithinEpsilon);
        v23 = pthread_rwlock_rdlock((v22 + 32));
        if (v23)
        {
          geo::read_write_lock::logFailure(v23, "read lock", v24);
        }

        v25 = malloc_type_zone_malloc(*v22, 80 * v21, 0x10200400FCC4FE7uLL);
        atomic_fetch_add((v22 + 24), 1u);
        geo::read_write_lock::unlock((v22 + 32));
      }

      else
      {
        v25 = 0;
      }

      v36 = &v25[80 * v18];
      v37 = *(v9 + 24);
      v78[0] = *(v9 + 40);
      *(v78 + 3) = *(v9 + 43);
      v38 = *(v9 + 16);
      *v36 = *v9;
      *(v36 + 2) = v38;
      *(v36 + 24) = v37;
      *(v36 + 10) = v78[0];
      *(v36 + 43) = *(v78 + 3);
      *(v36 + 7) = 0;
      *(v36 + 8) = 0;
      v17 = v36 + 80;
      *&v37 = v36 + 80;
      *(&v37 + 1) = &v25[80 * v21];
      v72 = v37;
      *(v36 + 6) = 0;
      v40 = *a2;
      v39 = *(a2 + 8);
      v41 = &v36[*a2 - v39];
      if (v39 != *a2)
      {
        v42 = *a2;
        v43 = &v36[*a2 - v39];
        do
        {
          v44 = *v42;
          *(v43 + 2) = *(v42 + 2);
          *v43 = v44;
          *(v43 + 24) = *(v42 + 24);
          v45 = *(v42 + 10);
          *(v43 + 43) = *(v42 + 43);
          *(v43 + 10) = v45;
          *(v43 + 7) = 0;
          *(v43 + 8) = 0;
          *(v43 + 6) = 0;
          v43[72] = *(v42 + 72);
          *(v43 + 3) = *(v42 + 3);
          *(v43 + 8) = *(v42 + 8);
          *(v42 + 6) = 0;
          *(v42 + 7) = 0;
          *(v42 + 8) = 0;
          v42 = (v42 + 80);
          v43 += 80;
        }

        while (v42 != v39);
        do
        {
          std::vector<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v40 + 48));
          v40 = (v40 + 80);
        }

        while (v40 != v39);
      }

      v46 = *a2;
      *a2 = v41;
      *(a2 + 8) = v72;
      if (v46)
      {
        v47 = mdm::zone_mallocator::instance(isWithinEpsilon);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::SegmentConnectionPoint>(v47, v46);
      }
    }

    else
    {
      v15 = *(v9 + 24);
      v78[0] = *(v9 + 40);
      *(v78 + 3) = *(v9 + 43);
      v16 = *(v9 + 16);
      *v11 = *v9;
      *(v11 + 16) = v16;
      *(v11 + 24) = v15;
      *(v11 + 40) = v78[0];
      *(v11 + 43) = *(v78 + 3);
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      *(v11 + 48) = 0;
      v17 = (v11 + 80);
    }

    *(a2 + 8) = v17;
    v48 = *(v17 - 3);
    v49 = *(v17 - 2);
    if (v48 >= v49)
    {
      v51 = *(v17 - 4);
      v52 = (v48 - v51) >> 4;
      v53 = v52 + 1;
      if ((v52 + 1) >> 60)
      {
        goto LABEL_53;
      }

      v54 = v49 - v51;
      if (v54 >> 3 > v53)
      {
        v53 = v54 >> 3;
      }

      if (v54 >= 0x7FFFFFFFFFFFFFF0)
      {
        v55 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v55 = v53;
      }

      v77 = v17 - 8;
      if (v55)
      {
        v56 = mdm::zone_mallocator::instance(isWithinEpsilon);
        v57 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::SegmentConnectionEntry>(v56, v55);
      }

      else
      {
        v57 = 0;
      }

      v58 = &v57[16 * v52];
      v59 = &v57[16 * v55];
      *v58 = a3;
      v58[8] = v5;
      v58[9] = 0;
      v50 = v58 + 16;
      v60 = *(v17 - 4);
      v61 = *(v17 - 3) - v60;
      v62 = &v58[-v61];
      memcpy(&v58[-v61], v60, v61);
      v63 = *(v17 - 4);
      *(v17 - 4) = v62;
      v74 = v63;
      *(v17 - 3) = v50;
      v75 = v63;
      v64 = *(v17 - 2);
      *(v17 - 2) = v59;
      v76 = v64;
      v73 = v63;
      std::__split_buffer<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator> &>::~__split_buffer(&v73);
    }

    else
    {
      *v48 = a3;
      *(v48 + 8) = v5;
      v50 = (v48 + 16);
      *(v48 + 9) = 0;
    }

    *(v17 - 3) = v50;
    return;
  }

  v13 = isWithinEpsilon;
  while (1)
  {
    isWithinEpsilon = md::LabelPoint::isWithinEpsilon(v10, v9, a5, *(v13 + 4));
    if (isWithinEpsilon)
    {
      break;
    }

    v10 = (v10 + 80);
    if (v10 == v11)
    {
      v11 = *(a2 + 8);
      goto LABEL_8;
    }
  }

  v26 = *(v10 + 7);
  v27 = *(v10 + 8);
  if (v26 >= v27)
  {
    v29 = *(v10 + 6);
    v30 = (v26 - v29) >> 4;
    v31 = v30 + 1;
    if (!((v30 + 1) >> 60))
    {
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

      v77 = v10 + 72;
      if (v33)
      {
        v34 = mdm::zone_mallocator::instance(isWithinEpsilon);
        v35 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::SegmentConnectionEntry>(v34, v33);
      }

      else
      {
        v35 = 0;
      }

      v65 = &v35[16 * v30];
      v66 = &v35[16 * v33];
      *v65 = a3;
      v65[8] = v5;
      v65[9] = 0;
      v28 = v65 + 16;
      v67 = *(v10 + 6);
      v68 = *(v10 + 7) - v67;
      v69 = &v65[-v68];
      memcpy(&v65[-v68], v67, v68);
      v70 = *(v10 + 6);
      *(v10 + 6) = v69;
      *(v10 + 7) = v28;
      v71 = *(v10 + 8);
      *(v10 + 8) = v66;
      v75 = v70;
      v76 = v71;
      v73 = v70;
      v74 = v70;
      std::__split_buffer<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator> &>::~__split_buffer(&v73);
      goto LABEL_52;
    }

LABEL_53:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *v26 = a3;
  *(v26 + 8) = v5;
  v28 = (v26 + 16);
  *(v26 + 9) = 0;
LABEL_52:
  *(v10 + 7) = v28;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci14AmbientTextureEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlS2_E_vEERS4_OSI_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A124B0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *ggl::FragmentedPool<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *,geo::allocator_adapter<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *,geo::allocator_adapter<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void std::vector<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *,geo::allocator_adapter<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *>(v2, v1);
  }
}

void std::vector<BOOL,geo::allocator_adapter<BOOL,mdm::zone_mallocator>>::reserve(uint64_t **a1, unint64_t a2)
{
  if (a2 > a1[2] << 6)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v3 = ((a2 - 1) >> 6) + 1;
    v4 = mdm::zone_mallocator::instance(a1);
    v5 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned long>(v4, v3);
    v6 = *a1;
    v7 = a1[1];
    v8 = v7 & 0x3F;
    *&v9 = v7;
    *(&v9 + 1) = v3;
    v10 = (v7 - 1) >> 6;
    if (v7 < 0x41)
    {
      v10 = 0;
    }

    v5[v10] = 0;
    if (v7 > 0x3F || (v7 & 0x3F) != 0)
    {
      v11 = 0;
      v12 = 0;
      v13 = &v6[v7 >> 6];
      v14 = v5;
      v15 = v6;
      do
      {
        v16 = 1 << v11;
        if ((*v15 >> v12))
        {
          v17 = *v14 | v16;
        }

        else
        {
          v17 = *v14 & ~v16;
        }

        *v14 = v17;
        if (v12 == 63)
        {
          v6 = ++v15;
          v12 = 0;
        }

        else
        {
          ++v12;
        }

        v14 += v11 == 63;
        if (v11 == 63)
        {
          v15 = v6;
          v11 = 0;
        }

        else
        {
          ++v11;
        }
      }

      while (v15 != v13 || v12 != v8);
    }

    v18 = *a1;
    *a1 = v5;
    *(a1 + 1) = v9;

    std::vector<BOOL,geo::allocator_adapter<BOOL,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v18);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci14AmbientTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A124B0;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::GradientConstantDataHandle1>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle1>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::GradientConstantDataHandle1>();
    unk_1EB83C4C0 = 0x8963537098E96576;
    qword_1EB83C4C8 = "md::ls::GradientConstantDataHandle1]";
    qword_1EB83C4D0 = 35;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle1>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle1>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ggl::Venue3DStroke::VerticalVenue3DStrokePipelineState::~VerticalVenue3DStrokePipelineState(ggl::Venue3DStroke::VerticalVenue3DStrokePipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

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

void *ggl::FragmentedPool<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *,geo::allocator_adapter<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *,geo::allocator_adapter<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignGradientParametersConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignGradientParametersConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignGradientParametersConstantData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

void std::vector<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *,geo::allocator_adapter<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *>(v2, v1);
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::GradientConstantDataHandle1>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::GradientConstantDataHandle1>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[350];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls27GradientConstantDataHandle1EEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A35358;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t md::UniLineLabelFeature::textIndexForFeature(uint64_t a1, std::__shared_weak_count **a2, int a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v40 = 0uLL;
  v41 = 0;
  v38 = 0uLL;
  v39 = 0;
  if (*(a1 + 449) == 1)
  {
    md::LabelFeature::textFromFeature(&v34, a2, a3, &v38, 0);
    v41 = v35;
    v40 = v34;
    v6 = HIBYTE(v35);
    v7 = SHIBYTE(v35);
    if ((v35 & 0x8000000000000000) != 0)
    {
      v6 = *(&v34 + 1);
    }

    if (v6)
    {
      md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(&v34, &v40, &v38);
      v8 = md::LineLabelFeature::textIndexForText(a1, &v34);
      v9 = v8;
      if (v37 < 0)
      {
        v10 = v36;
        v11 = mdm::zone_mallocator::instance(v8);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v11, v10);
      }

      if (SHIBYTE(v35) < 0)
      {
        v12 = v34;
        v13 = mdm::zone_mallocator::instance(v8);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v13, v12);
      }
    }

    else
    {
      v9 = 255;
    }

    md::LabelFeature::textFromFeature(&v34, a2, a3, &v38, 1u);
    if (v7 < 0)
    {
      v21 = v40;
      v22 = mdm::zone_mallocator::instance(v15);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v22, v21);
    }

    v41 = v35;
    v40 = v34;
    v23 = HIBYTE(v35);
    if ((v35 & 0x8000000000000000) != 0)
    {
      v23 = *(&v34 + 1);
    }

    if (v23)
    {
      md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(&v34, &v40, &v38);
      v15 = md::LineLabelFeature::textIndexForText(a1, &v34);
      v24 = v15;
      if (v37 < 0)
      {
        v25 = v36;
        v26 = mdm::zone_mallocator::instance(v15);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v26, v25);
      }

      if (SHIBYTE(v35) < 0)
      {
        v27 = v34;
        v28 = mdm::zone_mallocator::instance(v15);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v28, v27);
      }

      LOBYTE(v23) = v24 != 255;
    }

    if (((v9 != 255) & v23) != 0)
    {
      v16 = v9;
    }

    else
    {
      v16 = -1;
    }
  }

  else
  {
    v14 = *(a1 + 472);
    if (v14)
    {
      std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=(&v40, (v14 + 8));
      std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=(&v38, (*(a1 + 472) + 40));
    }

    else
    {
      md::LabelFeature::textFromFeature(&v34, a2, a3, &v38, 0);
      v40 = v34;
      v41 = v35;
    }

    md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(&v34, &v40, &v38);
    v15 = md::LineLabelFeature::textIndexForText(a1, &v34);
    v16 = v15;
    if (v37 < 0)
    {
      v17 = v36;
      v18 = mdm::zone_mallocator::instance(v15);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v18, v17);
    }

    if (SHIBYTE(v35) < 0)
    {
      v19 = v34;
      v20 = mdm::zone_mallocator::instance(v15);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v20, v19);
    }
  }

  if (SHIBYTE(v39) < 0)
  {
    v29 = v38;
    v30 = mdm::zone_mallocator::instance(v15);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v30, v29);
  }

  if (SHIBYTE(v41) < 0)
  {
    v31 = v40;
    v32 = mdm::zone_mallocator::instance(v15);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v32, v31);
  }

  return v16;
}

void sub_1B297EA80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a28 < 0)
  {
    v36 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v36, a23);
  }

  if (a35 < 0)
  {
    v37 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v37, a30);
  }

  _Unwind_Resume(exception_object);
}

void ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineState::~HorizontalVenue3DStrokePipelineState(ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::GradientConstantDataHandle2>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle2>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::GradientConstantDataHandle2>();
    *algn_1EB83C498 = 0x8963527098E963C3;
    qword_1EB83C4A0 = "md::ls::GradientConstantDataHandle2]";
    qword_1EB83C4A8 = 35;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle2>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle2>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

mdm::zone_mallocator *std::vector<md::LabelLineSegmentInfo,geo::allocator_adapter<md::LabelLineSegmentInfo,mdm::zone_mallocator>>::resize(mdm::zone_mallocator *result, unint64_t a2)
{
  v3 = result;
  v5 = *result;
  v4 = *(result + 1);
  v6 = v4 - *result;
  v7 = v6 >> 4;
  if (a2 <= v6 >> 4)
  {
    if (a2 < v7)
    {
      *(result + 1) = v5 + 16 * a2;
    }
  }

  else
  {
    v8 = a2 - v7;
    v9 = *(result + 2);
    if (v8 <= (v9 - v4) >> 4)
    {
      v23 = &v4[2 * v8];
      do
      {
        *v4 = 0;
        v4[1] = 0;
        *(v4 + 8) = 1;
        v4 += 2;
      }

      while (v4 != v23);
      *(result + 1) = v23;
    }

    else
    {
      if (a2 >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v10 = v9 - v5;
      v11 = (v9 - v5) >> 3;
      if (v11 <= a2)
      {
        v11 = a2;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF0)
      {
        v12 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      v24[4] = result + 24;
      v13 = mdm::zone_mallocator::instance(result);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineSegmentInfo>(v13, v12);
      v15 = &v14[v6];
      v16 = &v14[16 * a2];
      v17 = v15;
      do
      {
        *v17 = 0;
        *(v17 + 1) = 0;
        v17[8] = 1;
        v17 += 16;
      }

      while (v17 != v16);
      v18 = &v14[16 * v12];
      v19 = *(v3 + 1) - *v3;
      v20 = &v15[-v19];
      memcpy(&v15[-v19], *v3, v19);
      v21 = *v3;
      *v3 = v20;
      *(v3 + 1) = v16;
      v22 = *(v3 + 2);
      *(v3 + 2) = v18;
      v24[2] = v21;
      v24[3] = v22;
      v24[0] = v21;
      v24[1] = v21;
      return std::__split_buffer<md::LabelLineSegmentInfo,geo::allocator_adapter<md::LabelLineSegmentInfo,mdm::zone_mallocator> &>::~__split_buffer(v24);
    }
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls27GradientConstantDataHandle1EEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A35358;
  a2[1] = v2;
  return result;
}

void *ggl::FragmentedPool<ggl::VenueWall::WallEndCapMeshPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::VenueWall::WallEndCapMeshPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::VenueWall::WallEndCapMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::VenueWall::WallEndCapMeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::WallEndCapMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::VenueWall::WallEndCapMeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::WallEndCapMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void gdc::CameraFrame<geo::Radians,double>::toLookAtGeocentric(uint64_t a1, double *a2)
{
  gdc::CameraFrame<geo::Radians,double>::toRigidTransformGeocentric(&v14, a2);
  v4 = a2[1];
  v5 = a2[2];
  v6 = __sincos_stret(*a2);
  v7 = 6378137.0 / sqrt(v6.__sinval * v6.__sinval * -0.00669437999 + 1.0);
  v8 = (v7 + v5) * v6.__cosval;
  v9 = __sincos_stret(v4);
  *(a1 + 24) = v8 * v9.__cosval;
  *(a1 + 32) = v8 * v9.__sinval;
  *(a1 + 40) = (v5 + v7 * 0.99330562) * v6.__sinval;
  *a1 = v14;
  *(a1 + 16) = v15;
  v12 = xmmword_1B33B0740;
  v13 = 0;
  *(a1 + 48) = gm::Quaternion<double>::operator*(&v16, &v12);
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
}

void std::vector<ggl::VenueWall::WallEndCapMeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::WallEndCapMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VenueWall::WallEndCapMeshPipelineSetup *>(v2, v1);
  }
}

void ggl::VenueWall::WallEndCapMeshPipelineState::~WallEndCapMeshPipelineState(ggl::VenueWall::WallEndCapMeshPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::GradientConstantDataHandle2>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::GradientConstantDataHandle2>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[349];
}

void gdc::CameraFrame<geo::Radians,double>::toRigidTransformGeocentric(uint64_t a1, double *a2)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = __sincos_stret(*a2);
  v7 = 6378137.0 / sqrt(v6.__sinval * v6.__sinval * -0.00669437999 + 1.0);
  v8 = (v7 + v5) * v6.__cosval;
  v9 = __sincos_stret(v4);
  *&v104 = v8 * v9.__cosval;
  *(&v104 + 1) = v8 * v9.__sinval;
  v105 = (v5 + v7 * 0.99330562) * v6.__sinval;
  v10 = __sincos_stret(v4 + 0.00001);
  v11 = 0;
  v103[0] = v8 * v10.__cosval;
  v103[1] = v8 * v10.__sinval;
  v103[2] = v105;
  v12 = 0.0;
  do
  {
    v12 = v12 + *(&v104 + v11) * *(&v104 + v11);
    v11 += 8;
  }

  while (v11 != 24);
  v13 = 0;
  v14 = 1.0 / sqrt(v12);
  do
  {
    *(&v100 + v13) = *(&v104 + v13) * v14;
    v13 += 8;
  }

  while (v13 != 24);
  v15 = 0;
  v16 = v100;
  v17 = v101;
  do
  {
    *(&v100 + v15 * 8) = v103[v15] - *(&v104 + v15 * 8);
    ++v15;
  }

  while (v15 != 3);
  v18 = 0;
  v97 = v100;
  v98 = v101;
  v19 = 0.0;
  do
  {
    v19 = v19 + *(&v97 + v18) * *(&v97 + v18);
    v18 += 8;
  }

  while (v18 != 24);
  v20 = 0;
  v21 = 1.0 / sqrt(v19);
  do
  {
    *(&v100 + v20) = *(&v97 + v20) * v21;
    v20 += 8;
  }

  while (v20 != 24);
  v22 = -(*(&v100 + 1) * v17 - v101 * *(&v16 + 1));
  v23 = -(v101 * *&v16 - *&v100 * v17);
  v24 = -(*&v100 * *(&v16 + 1) - *(&v100 + 1) * *&v16);
  v25 = -(v24 * *(&v16 + 1) - v23 * v17);
  v26 = -(v22 * v17 - v24 * *&v16);
  v27 = -(v23 * *&v16 - v22 * *(&v16 + 1));
  v28 = v23 - (v24 * *(&v16 + 1) - v23 * v17);
  if (v28 + v17 <= 0.0)
  {
    if (v25 <= v23 || v25 <= v17)
    {
      v72 = v23 <= v17;
      v73 = sqrt(v17 + 1.0 - v28);
      v74 = 1.0 / (v73 + v73);
      v75 = (*&v16 - (v23 * *&v16 - v22 * *(&v16 + 1))) * v74;
      v76 = *(&v16 + 1) - (*&v100 * *(&v16 + 1) - *(&v100 + 1) * *&v16);
      v77 = v76 * v74;
      v78 = v73 * 0.5;
      v79 = (v26 - v22) * v74;
      v80 = sqrt(1.0 - (v101 * *&v16 - *&v100 * v17) - (v17 + v25));
      v81 = v26 + v22;
      v82 = 1.0 / (v80 + v80);
      v83 = v81 * v82;
      v84 = v80 * 0.5;
      v85 = v76 * v82;
      v86 = (*&v16 - v27) * v82;
      if (v72)
      {
        v30 = v75;
      }

      else
      {
        v30 = v83;
      }

      if (v72)
      {
        v31 = v77;
      }

      else
      {
        v31 = v84;
      }

      if (v72)
      {
        v32 = v78;
      }

      else
      {
        v32 = v85;
      }

      if (v72)
      {
        v33 = v79;
      }

      else
      {
        v33 = v86;
      }
    }

    else
    {
      v87 = sqrt(1.0 - (v17 - (v101 * *&v16 - *&v100 * v17)) - (v24 * *(&v16 + 1) - v23 * v17));
      v30 = v87 * 0.5;
      v31 = (v26 + v22) * (1.0 / (v87 + v87));
      v32 = (v27 + *&v16) * (1.0 / (v87 + v87));
      v33 = (v24 - *(&v16 + 1)) * (1.0 / (v87 + v87));
    }
  }

  else
  {
    v29 = 0.5 / sqrt(v28 + v17 + 1.0);
    v30 = v29 * (v24 - *(&v16 + 1));
    v31 = (*&v16 - v27) * v29;
    v32 = (v26 - v22) * v29;
    v33 = 0.25 / v29;
  }

  v100 = v104;
  v101 = v105;
  v91 = v31;
  v92 = v30;
  *v102 = v30;
  *&v102[1] = v31;
  v90 = v32;
  *&v102[2] = v32;
  *&v102[3] = v33;
  v34 = a2[5];
  v35 = __sincos_stret(a2[4] * 0.5);
  v36 = __sincos_stret(v34 * 0.5);
  v37 = v35.__sinval * v36.__sinval;
  v38 = v35.__cosval * v36.__sinval;
  *&v97 = v35.__sinval * v36.__cosval;
  *(&v97 + 1) = v35.__sinval * v36.__sinval;
  v98 = v35.__cosval * v36.__sinval;
  v99 = v35.__cosval * v36.__cosval;
  v88 = v35.__sinval * v36.__cosval;
  v89 = v35.__cosval * v36.__cosval;
  v39 = a2[6];
  v40 = (v39 + v34) * 0.5;
  v41 = v34 - v39;
  v42 = v33;
  v43 = __sincos_stret(v41 * 0.5);
  v44 = v43.__cosval * v35.__sinval;
  v45 = v43.__sinval * v35.__sinval;
  v46 = __sincos_stret(v40);
  v47 = 0;
  v48 = v46.__sinval * v35.__cosval;
  v96[0] = v43.__cosval * v35.__sinval;
  v96[1] = v43.__sinval * v35.__sinval;
  v49 = v46.__cosval * v35.__cosval;
  v96[2] = v46.__sinval * v35.__cosval;
  v96[3] = v46.__cosval * v35.__cosval;
  do
  {
    *(&v93 + v47) = *(&v97 + v47) * v42;
    v47 += 8;
  }

  while (v47 != 24);
  v50 = 0;
  v111 = v93;
  v112 = v94;
  do
  {
    *(&v93 + v50 * 8) = *&v102[v50] * v89;
    ++v50;
  }

  while (v50 != 3);
  v51 = 0;
  v109 = v93;
  v110 = v94;
  do
  {
    *(&v93 + v51) = *(&v109 + v51) + *(&v111 + v51);
    v51 += 8;
  }

  while (v51 != 24);
  v52 = 0;
  v113 = v93;
  v114 = v94;
  v106 = -(v90 * v37 - v91 * v38);
  v107 = -(v38 * v92 - v90 * v88);
  v108 = -(v91 * v88 - v37 * v92);
  do
  {
    *(&v93 + v52) = *(&v106 + v52) + *(&v113 + v52);
    v52 += 8;
  }

  while (v52 != 24);
  v53 = 0;
  v54 = 0.0;
  do
  {
    v54 = v54 + *(&v97 + v53 * 8) * *&v102[v53];
    ++v53;
  }

  while (v53 != 3);
  v95 = -(v54 - v42 * v89);
  v106 = 0.0;
  v107 = 0.0;
  v108 = 1.0;
  v55 = gm::Quaternion<double>::operator*(&v93, &v106);
  v56 = 0;
  *&v109 = v55;
  *(&v109 + 1) = v57;
  v110 = v58;
  v59 = a2[3];
  do
  {
    *(&v113 + v56) = *(&v109 + v56) * v59;
    v56 += 8;
  }

  while (v56 != 24);
  v60 = 0;
  v111 = v113;
  v112 = v114;
  do
  {
    *(&v113 + v60) = *(&v111 + v60) + *(&v100 + v60);
    v60 += 8;
  }

  while (v60 != 24);
  v61 = 0;
  v62 = v113;
  v63 = v114;
  do
  {
    *(&v93 + v61 * 8) = v96[v61] * v42;
    ++v61;
  }

  while (v61 != 3);
  v64 = 0;
  v111 = v93;
  v112 = v94;
  do
  {
    *(&v93 + v64 * 8) = *&v102[v64] * v49;
    ++v64;
  }

  while (v64 != 3);
  v65 = 0;
  v109 = v93;
  v110 = v94;
  do
  {
    *(&v93 + v65) = *(&v109 + v65) + *(&v111 + v65);
    v65 += 8;
  }

  while (v65 != 24);
  v66 = 0;
  v113 = v93;
  v114 = v94;
  v106 = -(v90 * v45 - v91 * v48);
  v107 = -(v48 * v92 - v90 * v44);
  v108 = -(v91 * v44 - v45 * v92);
  do
  {
    *(&v93 + v66) = *(&v106 + v66) + *(&v113 + v66);
    v66 += 8;
  }

  while (v66 != 24);
  v67 = 0;
  v68 = v93;
  v69 = v94;
  v70 = 0.0;
  do
  {
    v70 = v70 + v96[v67] * *&v102[v67];
    ++v67;
  }

  while (v67 != 3);
  *a1 = v62;
  *(a1 + 16) = v63;
  *(a1 + 24) = v68;
  *(a1 + 40) = v69;
  *(a1 + 48) = -(v70 - v42 * v49);
}

void std::vector<md::SegmentConnectionPoint,geo::allocator_adapter<md::SegmentConnectionPoint,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        v6 = v3 - 80;
        std::vector<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v3 - 32));
        v3 = v6;
      }

      while (v6 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v7 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::SegmentConnectionPoint>(v7, v4);
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls27GradientConstantDataHandle2EEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A35470;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *ggl::FragmentedPool<ggl::VenueWall::WallTopMeshPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::VenueWall::WallTopMeshPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::VenueWall::WallTopMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::VenueWall::WallTopMeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::WallTopMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::VenueWall::WallTopMeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::WallTopMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

uint64_t md::Logic<md::ElevationLogic,md::ElevationContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::SettingsContext,md::GeometryContext>,gdc::TypeList<md::LayerDataLogicContext>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x8BD499FBD96FBB9ELL)
  {
    v15 = v3;
    v16 = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::SettingsContext,md::GeometryContext>,gdc::TypeList<md::LayerDataLogicContext>>::buildRequiredTuple<md::StyleLogicContext,md::SettingsContext,md::GeometryContext>(&v13, v8);
      v9 = gdc::Context::context<md::LayerDataLogicContext>(v8);
      v10 = v13;
      v11 = v14;
      v12 = v9;
      return (*(*v7 + 128))(v7, a2, &v10, v5);
    }
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls27GradientConstantDataHandle2EEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A35470;
  a2[1] = v2;
  return result;
}

void ecs2::FlowExecutor::run(ecs2::FlowExecutor *this)
{
  v1 = 0u;
  v2 = 0u;
  v3 = 1065353216;
  operator new();
}

void std::vector<ggl::VenueWall::WallTopMeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::WallTopMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VenueWall::WallTopMeshPipelineSetup *>(v2, v1);
  }
}

std::__shared_weak_count *std::vector<std::shared_ptr<md::LabelStyle>,geo::allocator_adapter<std::shared_ptr<md::LabelStyle>,mdm::zone_mallocator>>::reserve(std::__shared_weak_count *result, unint64_t a2)
{
  if (a2 > (result->__shared_weak_owners_ - result->__vftable) >> 4)
  {
    if (a2 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v3 = result;
    v4 = result->__shared_owners_ - result->__vftable;
    v15 = result + 1;
    v5 = mdm::zone_mallocator::instance(result);
    v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelStyle>>(v5, a2);
    v7 = &v6[v4];
    v8 = &v6[16 * a2];
    v9 = v3->__shared_owners_ - v3->__vftable;
    v10 = &v7[-v9];
    memcpy(&v7[-v9], v3->__vftable, v9);
    v11 = v3->__vftable;
    v3->__vftable = v10;
    v3->__shared_owners_ = v7;
    shared_weak_owners = v3->__shared_weak_owners_;
    v3->__shared_weak_owners_ = v8;
    v13.__shared_weak_owners_ = v11;
    v14 = shared_weak_owners;
    v13.__vftable = v11;
    v13.__shared_owners_ = v11;
    return std::__split_buffer<std::shared_ptr<md::LabelStyle>,geo::allocator_adapter<std::shared_ptr<md::LabelStyle>,mdm::zone_mallocator> &>::~__split_buffer(&v13);
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t gss::Queryable<gss::PropertyID>::lock(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  *(&v41 + 1) = std::__shared_weak_count::lock(v3);
  if (!*(&v41 + 1))
  {
    return 0;
  }

  *&v41 = *(a1 + 8);
  if (v41)
  {
    v5 = pthread_rwlock_rdlock((a1 + 32));
    if (v5)
    {
      geo::read_write_lock::logFailure(v5, "read lock", v6);
    }

    if (((*(*a1 + 32))(a1, &v41) & 1) == 0 && *(a1 + 24))
    {
      goto LABEL_8;
    }

    v11 = pthread_rwlock_unlock((a1 + 32));
    if (v11)
    {
      geo::read_write_lock::logFailure(v11, "unlock", v12);
    }

    v13 = pthread_rwlock_wrlock((a1 + 32));
    if (v13)
    {
      geo::read_write_lock::logFailure(v13, "write lock", v14);
    }

    if ((*(*a1 + 32))(a1, &v41))
    {
      v15 = *(v41 + 520);
      v16 = *(v41 + 528);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        *(a1 + 232) = *(v15 + 264);
        std::__shared_weak_count::__release_shared[abi:nn200100](v16);
      }

      else
      {
        *(a1 + 232) = *(v15 + 264);
      }

      (*(*a1 + 40))(a1);
      std::unique_ptr<gss::RenderStyle<gss::PropertyID>>::reset[abi:nn200100]((a1 + 24), 0);
    }

    (*(*a1 + 16))(&v39, a1);
    (*(*a1 + 24))(&v37, a1);
    v17 = v41;
    v18 = *(v41 + 520);
    v19 = *(v41 + 528);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v18)
    {
      v20 = *(v17 + 520);
      v21 = *(v17 + 528);
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        v22 = atomic_load((v20 + 270));
        std::__shared_weak_count::__release_shared[abi:nn200100](v21);
      }

      else
      {
        v22 = atomic_load((v20 + 270));
      }
    }

    else
    {
      v22 = 0;
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }

    v23 = v39;
    if (v39)
    {
      if (!*(a1 + 24))
      {
        v24 = *(v41 + 16);
        v25 = *(v41 + 24);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v26 = atomic_load((v23 + 122));
        if ((v26 & 1) == 0)
        {
          gss::CartoStyle<gss::PropertyID>::populateStyles(v23, v24);
        }

        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v25);
        }

LABEL_38:
        v27 = v37;
        if (v37)
        {
          v28 = *(v41 + 16);
          v29 = *(v41 + 24);
          if (v29)
          {
            atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v30 = atomic_load((v27 + 122));
          if ((v30 & 1) == 0)
          {
            gss::CartoStyle<gss::PropertyID>::populateStyles(v27, v28);
          }

          if (v29)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v29);
          }
        }

        operator new();
      }
    }

    else if ((v22 & (v37 != 0)) == 1 && !*(a1 + 24))
    {
      goto LABEL_38;
    }

    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v38);
    }

    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v40);
    }

    v31 = pthread_rwlock_unlock((a1 + 32));
    if (v31)
    {
      geo::read_write_lock::logFailure(v31, "unlock", v32);
    }

    v33 = pthread_rwlock_rdlock((a1 + 32));
    if (v33)
    {
      geo::read_write_lock::logFailure(v33, "read lock", v34);
    }

    if (*(a1 + 24))
    {
LABEL_8:
      if (a2)
      {
        v7 = v41;
        v41 = 0uLL;
        v8 = *(a2 + 8);
        *a2 = v7;
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v8);
        }
      }

      v9 = 1;
      goto LABEL_12;
    }

    v35 = pthread_rwlock_unlock((a1 + 32));
    if (v35)
    {
      geo::read_write_lock::logFailure(v35, "unlock", v36);
    }
  }

  v9 = 0;
LABEL_12:
  if (*(&v41 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v41 + 1));
  }

  return v9;
}

void sub_1B298081C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  v23 = pthread_rwlock_unlock((v20 + 32));
  if (v23)
  {
    geo::read_write_lock::logFailure(v23, "unlock", v24);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  _Unwind_Resume(a1);
}

void ggl::VenueWall::WallTopMeshPipelineState::~WallTopMeshPipelineState(ggl::VenueWall::WallTopMeshPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

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

uint64_t md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::compare(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  v4 = *(a2 + 88);
  result = (v3 - v4);
  if (v3 != v4)
  {
    return result;
  }

  v6 = *(a1 + 80);
  v7 = *(a2 + 80);
  if (v6 | v7)
  {
    v15 = v6 >= v7;
    v16 = v6 == v7;
    goto LABEL_10;
  }

  v8 = *(a1 + 56);
  v9 = *(a2 + 56);
  v10 = *(v8 + 3);
  if (v10)
  {
    if (*(v10 + 33))
    {
      v11 = 0;
      v12 = *v10;
      while (1)
      {
        v13 = *v12;
        v12 += 2;
        if (v13 == 1)
        {
          break;
        }

        if (*(v10 + 33) == ++v11)
        {
          goto LABEL_8;
        }
      }

      v14 = *(*v10 + 8 * v11 + 4);
    }

    else
    {
LABEL_8:
      v14 = -1;
    }

    v18 = (v14 & ~(v14 >> 31)) == 12;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v9 + 24);
  if (v19)
  {
    if (*(v19 + 33))
    {
      v20 = 0;
      v21 = *v19;
      while (1)
      {
        v22 = *v21;
        v21 += 2;
        if (v22 == 1)
        {
          break;
        }

        if (*(v19 + 33) == ++v20)
        {
          goto LABEL_24;
        }
      }

      v23 = *(*v19 + 8 * v20 + 4);
    }

    else
    {
LABEL_24:
      v23 = -1;
    }

    v24 = (v23 & ~(v23 >> 31)) == 12;
  }

  else
  {
    v24 = 0;
  }

  if (v24 != v18)
  {
    v27 = v18 == 0;
    goto LABEL_35;
  }

  if (v10)
  {
    v25 = *(v10 + 33);
    if (*(v10 + 33))
    {
      v10 = *v10;
      if (*v10 == 189)
      {
        v26 = 0;
LABEL_33:
        LODWORD(v10) = LOBYTE(v10[2 * v26 + 1]) == 1;
        goto LABEL_44;
      }

      v26 = 0;
      v28 = v10 + 2;
      while (v25 - 1 != v26)
      {
        v29 = *v28;
        v28 += 2;
        ++v26;
        if (v29 == 189)
        {
          if (v26 < v25)
          {
            goto LABEL_33;
          }

          break;
        }
      }
    }

    LODWORD(v10) = 0;
  }

LABEL_44:
  if (v19)
  {
    v30 = *(v19 + 33);
    if (*(v19 + 33))
    {
      v19 = *v19;
      if (*v19 == 189)
      {
        v31 = 0;
LABEL_48:
        LODWORD(v19) = LOBYTE(v19[2 * v31 + 1]) == 1;
        goto LABEL_54;
      }

      v31 = 0;
      v32 = v19 + 2;
      while (v30 - 1 != v31)
      {
        v33 = *v32;
        v32 += 2;
        ++v31;
        if (v33 == 189)
        {
          if (v31 < v30)
          {
            goto LABEL_48;
          }

          break;
        }
      }
    }

    LODWORD(v19) = 0;
  }

LABEL_54:
  if ((v10 | v19))
  {
    if (v10 != v19)
    {
      v27 = v10 == 0;
LABEL_35:
      if (v27)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 1;
      }
    }

    v34 = *(v8 + 5);
    v35 = *(v9 + 40);
    if (v34 | v35)
    {
      v15 = v34 >= v35;
      v16 = v34 == v35;
LABEL_10:
      if (v15)
      {
        v17 = 1;
      }

      else
      {
        v17 = -1;
      }

      goto LABEL_13;
    }
  }

  if (geo::codec::featureGetNativeShieldCount(v8) || geo::codec::featureGetNativeShieldCount(v9))
  {

    return geo::codec::roadFeatureCompareShields(v8, v9, v36);
  }

  if (!geo::codec::featureGetNativeLabelCount(v8) && !geo::codec::featureGetNativeLabelCount(v9))
  {
    v16 = v8 == v9;
    if (v8 > v9)
    {
      v17 = 1;
    }

    else
    {
      v17 = -1;
    }

LABEL_13:
    if (v16)
    {
      return 0;
    }

    else
    {
      return v17;
    }
  }

  return geo::codec::roadFeatureCompareRoadNames(v8, v9, v37);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>();
    *algn_1EB83C058 = 0x7B8C320EC5754EB9;
    qword_1EB83C060 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>]";
    qword_1EB83C068 = 94;
  }
}

void gdc::tf::Executor::_runWithContext(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  *(a1 + 144) = a3;
  v4 = *(a1 + 104);
  v5 = *(a1 + 96);
  if (v5 == v4)
  {
    gdc::tf::Executor::consumeGraph(a1, a2);
    v8 = *(a1 + 96);
    if (v8)
    {
      *(a1 + 104) = v8;
      operator delete(v8);
    }

    v7 = 0;
    *(a1 + 96) = *(a1 + 120);
    v9 = *(a1 + 136);
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 112) = v9;
    *(a1 + 120) = 0;
  }

  else
  {
    do
    {
      v6 = *v5++;
      gdc::tf::Executor::invokeNode(a1, v6);
    }

    while (v5 != v4);
    v7 = *(a1 + 120);
  }

  *(a1 + 128) = v7;
  *(a1 + 144) = 0;
}

uint64_t *std::__tree<std::weak_ptr<md::UniLineLabelFeature>,std::owner_less<std::weak_ptr<md::UniLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::UniLineLabelFeature>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::weak_ptr<md::UniLineLabelFeature>,std::weak_ptr<md::UniLineLabelFeature>>(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v4 = result;
  v6 = result + 1;
  v5 = result[1];
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = v5[5];
        if (v8 <= a2)
        {
          break;
        }

        v5 = *v7;
        v6 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= a2)
      {
        break;
      }

      v5 = v7[1];
      if (!v5)
      {
        v6 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = result + 1;
LABEL_9:
    v9 = mdm::zone_mallocator::instance(result);
    v10 = pthread_rwlock_rdlock((v9 + 32));
    if (v10)
    {
      geo::read_write_lock::logFailure(v10, "read lock", v11);
    }

    v12 = malloc_type_zone_malloc(*v9, 0x30uLL, 0x10200409B2CA512uLL);
    atomic_fetch_add((v9 + 24), 1u);
    geo::read_write_lock::unlock((v9 + 32));
    v12[2] = *a3;
    *a3 = 0;
    *(a3 + 8) = 0;
    *v12 = 0;
    *(v12 + 1) = 0;
    *(v12 + 2) = v7;
    *v6 = v12;
    v13 = **v4;
    if (v13)
    {
      *v4 = v13;
      v12 = *v6;
    }

    result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v4[1], v12);
    ++v4[3];
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(std::unique_ptr<md::LabelLineSegment> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[305];
}

uint64_t md::LabelLineStore::enumerateLabelLineSegments(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    while (2)
    {
      v6 = *(v5 + 16);
      v7 = *(v5 + 24);
      while (v6 != v7)
      {
        v8 = *(a3 + 24);
        if (!v8)
        {
          v9 = std::__throw_bad_function_call[abi:nn200100]();
          return _ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_7DaVinci18GradientParametersEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(v9);
        }

        result = (*(*v8 + 48))(v8, v6);
        v6 += 8;
      }

      v5 += 112;
      if (v5 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_7DaVinci18GradientParametersEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A13858;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *ggl::FragmentedPool<ggl::VenueWall::MeshPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::VenueWall::MeshPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::VenueWall::MeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::VenueWall::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::VenueWall::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci18GradientParametersEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A13858;
  a2[1] = v2;
  return result;
}

void std::vector<ggl::VenueWall::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VenueWall::MeshPipelineSetup *>(v2, v1);
  }
}

mdm::zone_mallocator *std::vector<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator>>::reserve(mdm::zone_mallocator *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(result + 2) - *result) >> 3) < a2)
  {
    if (a2 >= 0xAAAAAAAAAAAAAABLL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v3 = result;
    v4 = *(result + 1) - *result;
    v13[4] = result + 24;
    v5 = mdm::zone_mallocator::instance(result);
    v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeatureStylerItem>(v5, a2);
    v7 = &v6[v4];
    v8 = &v6[24 * a2];
    v9 = *(v3 + 1) - *v3;
    v10 = &v7[-v9];
    memcpy(&v7[-v9], *v3, v9);
    v11 = *v3;
    *v3 = v10;
    *(v3 + 1) = v7;
    v12 = *(v3 + 2);
    *(v3 + 2) = v8;
    v13[2] = v11;
    v13[3] = v12;
    v13[0] = v11;
    v13[1] = v11;
    return std::__split_buffer<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator> &>::~__split_buffer(v13);
  }

  return result;
}

mdm::zone_mallocator *md::LineLabelFeature::populateStyleQueries(uint64_t *a1, std::__shared_weak_count *a2, uint64_t *a3)
{
  v9 = 0;
  if ((*(*a1 + 496))(a1) && (*(*a1 + 488))(a1, 0))
  {
    operator new();
  }

  md::LabelStyleCache::styleQueryForFeatureAttributes(&v7, a3, a1 + 52, 0);
  std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator>>::push_back[abi:nn200100](a2, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  return std::unique_ptr<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::reset[abi:nn200100](&v9, 0);
}

void sub_1B29813A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1B8C62190](v4, 0x1012C40B602C572);
  std::unique_ptr<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

void md::VenueDimmingOverlayRenderResources::~VenueDimmingOverlayRenderResources(md::VenueDimmingOverlayRenderResources *this)
{
  v2 = *(this + 64);
  *(this + 64) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 63);
  *(this + 63) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  ggl::RenderDataHolder::~RenderDataHolder((this + 288));
  ggl::RenderDataHolder::~RenderDataHolder((this + 72));
  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 3);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 1);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::MaterialStyleConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialStyleConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MaterialStyleConstantDataHandle>();
    unk_1EB83BC20 = 0x8DB28088BB3C2FE3;
    qword_1EB83BC28 = "md::ls::MaterialStyleConstantDataHandle]";
    qword_1EB83BC30 = 39;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialStyleConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialStyleConstantDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ggl::PolygonFill::MeshPipelineSetup::~MeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::VenueTileData>>::~CartographicTiledVectorRenderLayer(void *a1)
{
  *a1 = &unk_1F2A2E898;
  v2 = a1[44];
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  if (v3 != v4)
  {
    do
    {
      v5 = *v3;
      v6 = **v3;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      ggl::RenderItem::~RenderItem((v5 + 1));
      MEMORY[0x1B8C62190](v5, 0x10F0C40137B0629);
      ++v3;
    }

    while (v3 != v4);
    v2 = a1[44];
  }

  v7 = *(v2 + 80);
  v8 = *(v2 + 88);
  if (v7 == v8)
  {
    goto LABEL_11;
  }

  do
  {
    v9 = *v7;
    v10 = **v7;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    ggl::RenderItem::~RenderItem((v9 + 1));
    MEMORY[0x1B8C62190](v9, 0x10F0C40137B0629);
    ++v7;
  }

  while (v7 != v8);
  v2 = a1[44];
  if (v2)
  {
LABEL_11:
    md::CartographicTiledRenderResources::~CartographicTiledRenderResources(v2);
    MEMORY[0x1B8C62190]();
  }

  return md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::VenueTileData>>::~CartographicTiledRenderLayer(a1);
}

uint64_t md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::VenueTileData>>::~CartographicTiledRenderLayer(uint64_t a1)
{
  *a1 = &unk_1F2A2B6E0;
  v2 = *(a1 + 320);
  if (v2)
  {
    *(a1 + 328) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 296);
  if (v3)
  {
    *(a1 + 304) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 272);
  if (v4)
  {
    *(a1 + 280) = v4;
    operator delete(v4);
  }

  geo::Pool<md::MapTileDataRenderable<md::VenueTileData>>::disposeElements(a1 + 224);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 232));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 208));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 184));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 160));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 136));
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::__deallocate_node(*(a1 + 104));
  v5 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::~__value_func[abi:nn200100](a1 + 56);
  *a1 = &unk_1F2A16858;
  v6 = *(a1 + 8);
  if (v6)
  {
    *(a1 + 16) = v6;
    operator delete(v6);
  }

  return a1;
}

void md::LabelLineStore::addPhysicalFeature(mdm::zone_mallocator *a1, uint64_t *a2, int **a3, uint64_t a4, uint64_t a5)
{
  v10 = mdm::zone_mallocator::instance(a1);
  v11 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineStore::WorkUnit>(v10);
  v12 = md::LabelLineStore::WorkUnit::WorkUnit(v11, 3, a2, a3, a4, a5);
  md::LabelLineStore::queueWorkUnit(a1, &v12);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](&v12, 0);
}

void sub_1B2981AA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignMaterialStyleConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignMaterialStyleConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignMaterialStyleConstantData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

float64x2_t md::LabelPoint::vectorToPoint(md::LabelPoint *this, const md::LabelPoint *a2, int a3)
{
  if (a3)
  {
    md::LabelPoint::geocentricPoint(a2);
    md::LabelPoint::geocentricPoint(this);
    for (i = 0; i != 24; i += 8)
    {
      *(&v8 + i) = *(a2 + i) - *(this + i);
    }

    return v8;
  }

  else
  {
    v7 = md::LabelPoint::mercatorPoint(a2);
    return vsubq_f64(*v7, *md::LabelPoint::mercatorPoint(this));
  }
}

uint64_t std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t md::DetermineIfShouldRun_CameraEnhancement::operator()(void ****a1)
{
  v2 = *(gdc::ServiceLocator::resolve<md::ConfigSettingProvider>(***a1, (**a1)[1]) + 164);
  v3 = *(gdc::ServiceLocator::resolve<md::CameraStore>(***a1, (**a1)[1]) + 48) & v2;
  v6[0] = ~gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::TestCameraVertexCollision>();
  v4 = 0;
  v6[1] = ~gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ProcessCameraControllerResponse>();
  do
  {
    result = ecs2::UtilityTaskContext::toggleTask((*a1)[2], v6[v4++], v3 & 1);
  }

  while (v4 != 2);
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::DetermineIfShouldRun_CameraEnhancement>,std::allocator<ecs2::ForwardToExecute<md::DetermineIfShouldRun_CameraEnhancement>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::DetermineIfShouldRun_CameraEnhancement::operator()((a1 + 8));
  *v2 = 0;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MaterialStyleConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MaterialStyleConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[260];
}

void md::BuildingRenderLayer::~BuildingRenderLayer(md::BuildingRenderLayer *this)
{
  *this = off_1F2A09740;
  *(this + 46) = &unk_1F2A09838;
  v2 = *(this + 57);
  if (*(v2 + 40))
  {
    *(v2 + 40) = 0;
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 416);
  std::unique_ptr<md::LandmarkRenderResources>::reset[abi:nn200100](this + 50, 0);
  std::unique_ptr<md::BuildingRenderResources>::reset[abi:nn200100](this + 49, 0);
  v3 = *(this + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::CartographicTiledVectorRenderLayer<md::BuildingTileDataRenderable>::~CartographicTiledVectorRenderLayer(this);
}

{
  md::BuildingRenderLayer::~BuildingRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ServiceLocator::resolve<md::ConfigSettingProvider>(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  while (*a1 != 0xE72A6B9E738C2197)
  {
    a1 += 5;
    if (a1 == a2)
    {
      return 0;
    }
  }

  if (a1 == a2)
  {
    return 0;
  }

  v3 = a1[3];
  v2 = a1[4];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return v3;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls31MaterialStyleConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A15F78;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31MaterialStyleConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15F78;
  a2[1] = v2;
  return result;
}

uint64_t md::TextDataStore::addString(unsigned __int8 **inited, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 255;
  }

  v9 = inited;
  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a2 + 8))
    {
      v41 = *(a2 + 24);
      inited = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&__dst, *a2, *(a2 + 8));
      goto LABEL_7;
    }

    return 255;
  }

  if (!*(a2 + 23))
  {
    return 255;
  }

  v41 = *(a2 + 24);
  __dst = *a2;
  v40 = *(a2 + 16);
LABEL_7:
  v10 = &v42;
  v37 = a4;
  v38 = a5;
  if (a3)
  {
    v44 = *(a3 + 24);
    if (*(a3 + 23) < 0)
    {
      inited = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&v42, *a3, *(a3 + 8));
    }

    else
    {
      v42 = *a3;
      v43 = *(a3 + 16);
    }
  }

  else
  {
    inited = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&v42, "");
  }

  v13 = *v9;
  v12 = v9[1];
  if (*v9 == v12)
  {
LABEL_41:
    if ((0x6DB6DB6DB6DB6DB7 * ((v12 - v13) >> 3)) <= 0x63)
    {
      v28 = mdm::zone_mallocator::instance(inited);
      v29 = pthread_rwlock_rdlock((v28 + 32));
      if (v29)
      {
        geo::read_write_lock::logFailure(v29, "read lock", v30);
      }

      v31 = malloc_type_zone_malloc(*v28, 0xA8uLL, 0x1081040D79BF710uLL);
      atomic_fetch_add((v28 + 24), 1u);
      geo::read_write_lock::unlock((v28 + 32));
      *(v31 + 1) = 0;
      *(v31 + 2) = 0;
      *v31 = &unk_1F2A5B7F8;
      md::TextDataStringInfo::TextDataStringInfo(v31 + 32, a2, a3, v37, v38);
    }

    v11 = 255;
  }

  else
  {
    if (v40 >= 0)
    {
      v14 = HIBYTE(v40);
    }

    else
    {
      v14 = *(&__dst + 1);
    }

    if (v40 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    if (v43 >= 0)
    {
      v16 = HIBYTE(v43);
    }

    else
    {
      v16 = *(&v42 + 1);
    }

    if (v43 < 0)
    {
      v10 = v42;
    }

    v17 = *v9;
    while (1)
    {
      v18 = *(v17 + 1);
      v19 = *(v18 + 23);
      v20 = v19;
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(v18 + 8);
      }

      if (v14 == v19)
      {
        v21 = v20 >= 0 ? *(v17 + 1) : *v18;
        inited = memcmp(p_dst, v21, v14);
        if (!inited)
        {
          v22 = *(v18 + 55);
          v23 = v22;
          if ((v22 & 0x80u) != 0)
          {
            v22 = *(v18 + 40);
          }

          if (v16 == v22)
          {
            v26 = *(v18 + 32);
            v25 = v18 + 32;
            v24 = v26;
            v27 = (v23 >= 0 ? v25 : v24);
            inited = memcmp(v10, v27, v16);
            if (!inited)
            {
              break;
            }
          }
        }
      }

      v17 += 56;
      if (v17 == v12)
      {
        goto LABEL_41;
      }
    }

    v11 = *v17;
  }

  if (SHIBYTE(v43) < 0)
  {
    v32 = v42;
    v33 = mdm::zone_mallocator::instance(inited);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v33, v32);
  }

  if (SHIBYTE(v40) < 0)
  {
    v34 = __dst;
    v35 = mdm::zone_mallocator::instance(inited);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v35, v34);
  }

  return v11;
}

void sub_1B29823FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  a14 = &a23;
  std::vector<std::shared_ptr<md::TextDataString>,geo::allocator_adapter<std::shared_ptr<md::TextDataString>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a14);
  v40 = a22;
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a22);
  }

  if (a39 < 0)
  {
    v41 = a34;
    v42 = mdm::zone_mallocator::instance(v40);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v42, v41);
  }

  if (a32 < 0)
  {
    v43 = a27;
    v44 = mdm::zone_mallocator::instance(v40);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v44, v43);
  }

  _Unwind_Resume(a1);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>();
    *algn_1EB83C178 = 0x4B8054294B8B9B55;
    qword_1EB83C180 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>]";
    qword_1EB83C188 = 89;
  }
}

void ggl::FoggedSpecularLandmark::LandmarkPipelineState::~LandmarkPipelineState(ggl::FoggedSpecularLandmark::LandmarkPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

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

gss::FeatureAttributeSet *gss::FeatureAttributeSet::FeatureAttributeSet(uint64_t **this, uint64_t **a2)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  if (this != a2)
  {
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__assign_with_size[abi:nn200100]<std::pair<gss::StyleAttribute,unsigned short>*,std::pair<gss::StyleAttribute,unsigned short>*>(this, *a2, a2[1], a2[1] - *a2);
  }

  return this;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[317];
}

void ggl::SpecularLandmark::LandmarkPipelineState::~LandmarkPipelineState(ggl::SpecularLandmark::LandmarkPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_7DaVinci13MaterialStyleEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A139F8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void std::__function::__func<ecs2::ForwardToExecute<md::ProcessCameraControllerResponse>,std::allocator<ecs2::ForwardToExecute<md::ProcessCameraControllerResponse>>,void ()(ecs2::Runtime &)>::operator()(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  a1[1] = a2;
  v3 = (a1 + 1);
  if (GEOGetVectorKitVKDeferredCameraLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDeferredCameraLog_onceToken, &__block_literal_global_49);
  }

  v4 = GEOGetVectorKitVKDeferredCameraLog_log;
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CameraControllerTask", &unk_1B3514CAA, buf, 2u);
  }

  v5 = a1[2];
  if (!v5)
  {
    v6 = **v3;
    v7 = *v6;
    v8 = *(v6 + 8);
    if (v7 == v8)
    {
      goto LABEL_13;
    }

    while (*v7 != 0xB9631F07D158C85CLL)
    {
      v7 += 5;
      if (v7 == v8)
      {
        goto LABEL_13;
      }
    }

    if (v7 == v8)
    {
LABEL_13:
      v5 = 0;
    }

    else
    {
      v5 = v7[3];
      v9 = v7[4];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }
    }

    a1[2] = v5;
  }

  md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::SettingsContext,md::GeometryContext>,gdc::TypeList<md::LayerDataLogicContext>>::buildRequiredTuple<md::StyleLogicContext,md::SettingsContext,md::GeometryContext>(buf, *(*(v5 + 8) + 8));
  gdc::Context::context(*(v5 + 16), 0x8BD499FBD96FBB9ELL);
  if (!a1[3])
  {
    a1[3] = gdc::ServiceLocator::resolve<md::CameraStore>(**a1[1], *(*a1[1] + 8));
  }

  *(&v11 + 1) = 0;
  operator new();
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci13MaterialStyleEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A139F8;
  a2[1] = v2;
  return result;
}

os_log_t __GEOGetVectorKitVKDeferredCameraLog_block_invoke()
{
  result = os_log_create("com.apple.VectorKit", "VKDeferredCamera");
  GEOGetVectorKitVKDeferredCameraLog_log = result;
  return result;
}

void md::LineLabelFeature::setStyle(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6)
{
  md::LabelFeature::setStyle(a1, a2, a3, a4, a5, a6);
  v7 = *(a1 + 272);
  v8 = *(a1 + 280);
  while (v7 != v8)
  {
    v9 = v7[3];
    v7[2] = 0;
    v7[3] = 0;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    v10 = v7[5];
    v7[4] = 0;
    v7[5] = 0;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v11 = v7[7];
    v7[6] = 0;
    v7[7] = 0;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }

    v12 = v7[9];
    v7[8] = 0;
    v7[9] = 0;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    v7 += 10;
  }

  *(a1 + 304) = -1;
  std::unique_ptr<md::LineLabelStyleEntry>::reset[abi:nn200100]((a1 + 312), 0);
  std::__tree<std::__value_type<unsigned char,md::RoadMetricsEntry>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,md::RoadMetricsEntry>,std::less<unsigned char>,true>,geo::allocator_adapter<std::__value_type<unsigned char,md::RoadMetricsEntry>,mdm::zone_mallocator>>::destroy(*(a1 + 328));
  *(a1 + 344) = 0;
  *(a1 + 320) = a1 + 328;
  *(a1 + 328) = 0;
  *(a1 + 433) = 1;
}

void ggl::LandmarkDepth::BuildingPipelineState::~BuildingPipelineState(ggl::LandmarkDepth::BuildingPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

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

void *gdc::Context::context(void *a1, unint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>>>::find<unsigned long long>(a1, a2);
  if (result)
  {
    return result[5];
  }

  return result;
}

void md::LabelLineSegment::createPointList(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 46) < 2u)
  {
    return;
  }

  v111[4] = v11;
  v111[5] = v10;
  v111[6] = v9;
  v111[7] = v8;
  v111[8] = v7;
  v111[9] = v6;
  v111[10] = v5;
  v111[11] = v4;
  v111[22] = v2;
  v111[23] = v3;
  v14 = (*(*a1 + 48))(a1);
  v15 = v14;
  v109 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v110 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v16 = *(a1 + 46);
  v17 = v16 > 0xA || *(a1 + 24) != 0;
  v18 = *(a2 + 48);
  if (v18)
  {
    v101 = v17;
    if (*(a1 + 46))
    {
      v19 = 0;
      v20 = (v18 + 24 * *(a2 + 56));
      __asm { FMOV            V0.2D, #0.5 }

      v102 = _Q0;
      do
      {
        v26 = v15 + 48 * v19;
        if (*(a1 + 33) == 1)
        {
          v27 = v20[1] * 0.0174532925;
          v28 = __sincos_stret(*v20 * 0.0174532925);
          v29 = 6378137.0 / sqrt(v28.__sinval * v28.__sinval * -0.00669437999 + 1.0);
          v30 = __sincos_stret(v27);
          *v26 = v29 * v28.__cosval * v30.__cosval;
          *(v26 + 8) = v29 * v28.__cosval * v30.__sinval;
          *(v26 + 16) = v28.__sinval * 0.99330562 * v29;
          *(v26 + 44) = 1;
        }

        else
        {
          v104 = v20[1];
          v31 = tan(*v20 * 0.00872664626 + 0.785398163);
          v32 = log(v31);
          v33.f64[0] = v104;
          v33.f64[1] = v32;
          *(v26 + 24) = vmlaq_f64(v102, xmmword_1B33B0700, v33);
          *(v26 + 45) = 257;
        }

        v34 = v15 + 48 * v19;
        v35 = v20[2];
        if (v35 == 1.79769313e308)
        {
          v36 = 3.4028e38;
        }

        else
        {
          v36 = v35;
        }

        *(v34 + 40) = v36;
        v37 = md::LabelPoint::mercatorPoint((v15 + 48 * v19));
        v38 = 0;
        v39 = &v109;
        v40 = 1;
        do
        {
          v41 = *(v37 + 8 * v38);
          v42 = v40;
          *v39 = fmin(v41, *v39);
          *&v110.i64[v38] = fmax(*&v110.i64[v38], v41);
          v39 = &v109.i64[1];
          v38 = 1;
          v40 = 0;
        }

        while ((v42 & 1) != 0);
        if (v19)
        {
          v43 = md::LabelPoint::mercatorPoint((v34 - 48));
          v44 = vsubq_f64(*v43, *md::LabelPoint::mercatorPoint((v15 + 48 * v19)));
          *(a1 + 8) = sqrt(vaddvq_f64(vmulq_f64(v44, v44))) + *(a1 + 8);
        }

        ++v19;
        v20 += 3;
      }

      while (v19 < *(a1 + 46));
    }

    goto LABEL_65;
  }

  v45 = *(a2 + 24);
  if (!v45 || (v46 = *v45, v46 == 255))
  {
    v101 = v17;
    if (!*(a1 + 46))
    {
      v81 = -1.79769313e308;
      v82 = 1.79769313e308;
      v78 = 1.79769313e308;
LABEL_64:
      *&v109.i64[1] = v82;
      *v110.i64 = v81;
      *v109.i64 = v78;
LABEL_65:
      if (!v101)
      {
        return;
      }

      goto LABEL_69;
    }

    v75 = 0;
    v76 = *(a2 + 40);
    v77 = *(a2 + 32) + 8 * *(a2 + 56);
    v78 = 1.79769313e308;
    v79 = -1.79769313e308;
    v80 = *(a1 + 46);
    v81 = -1.79769313e308;
    v82 = 1.79769313e308;
    while (1)
    {
      v83 = (v77 + 8 * v75);
      v84 = *v83;
      if (v75 || (v85 = *(a2 + 64), fabsf(v85) <= 0.00000011921))
      {
        if (v75 != v80 - 1)
        {
          goto LABEL_52;
        }

        v85 = *(a2 + 68);
        if (fabsf(v85) <= 0.00000011921)
        {
          goto LABEL_52;
        }

        v86.f32[0] = (v83[-1].f32[0] - v84.f32[0]) * v85;
        v87 = &v83[-1] + 1;
      }

      else
      {
        v86.f32[0] = (*(v77 + 8) - v84.f32[0]) * v85;
        v87 = (v77 + 12);
      }

      v86.f32[1] = (*v87 - v84.f32[1]) * v85;
      v84 = vadd_f32(v86, v84);
LABEL_52:
      v88 = vcvtq_f64_f32(v84);
      v89 = gm::Box<double,2>::lerped(*(a2 + 16), v88, v88.f64[1]);
      v91 = v90;
      v92 = v15 + 48 * v75;
      *(v92 + 24) = v89;
      *(v92 + 32) = v90;
      *(v92 + 45) = 257;
      if (v76)
      {
        v93 = (v76 + 4 * v75);
        if (*v93 == 3.4028e38)
        {
          v93 = &md::kNoLabelElevation;
        }
      }

      else
      {
        v93 = &md::kNoLabelElevation;
      }

      *(v92 + 40) = *v93;
      if (v75)
      {
        v94 = *&md::LabelPoint::vectorToPoint((v92 - 48), v92, *(a1 + 33));
        v95 = 0;
        v111[0] = v94;
        v111[1] = v96;
        v111[2] = v97;
        v98 = 0.0;
        do
        {
          v98 = v98 + *&v111[v95] * *&v111[v95];
          ++v95;
        }

        while (v95 != 3);
        *(a1 + 8) = *(a1 + 8) + sqrt(v98);
        LODWORD(v16) = *(a1 + 46);
      }

      v78 = fmin(v89, v78);
      v81 = fmax(v81, v89);
      v82 = fmin(v91, v82);
      v79 = fmax(v79, v91);
      ++v75;
      v80 = v16;
      if (v75 >= v16)
      {
        *&v110.i64[1] = v79;
        goto LABEL_64;
      }
    }
  }

  v106 = vrev64_s32(*(v45 + 4));
  v47 = v45[1];
  v107 = v47;
  v108 = v46;
  if (v16)
  {
    v48 = 0;
    v49 = *(a2 + 40);
    v105 = *(a2 + 32) + 8 * *(a2 + 56);
    __e = -2 * v47;
    v50 = 1.79769313e308;
    v51 = -1.79769313e308;
    v52 = v14;
    v53 = v16;
    v54 = -1.79769313e308;
    v55 = 1.79769313e308;
    while (1)
    {
      v56 = (v105 + 8 * v48);
      v57 = *v56;
      v58 = v56[1];
      if (v48 || (v59 = *(a2 + 64), fabsf(v59) <= 0.00000011921))
      {
        if (v48 != v53 - 1)
        {
          goto LABEL_31;
        }

        v59 = *(a2 + 68);
        if (fabsf(v59) <= 0.00000011921)
        {
          goto LABEL_31;
        }

        v60 = (*(v56 - 2) - v57) * v59;
        v61 = v56 - 1;
      }

      else
      {
        v60 = (*(v105 + 8) - v57) * v59;
        v61 = (v105 + 12);
      }

      v57 = v60 + v57;
      v58 = v58 + ((*v61 - v58) * v59);
LABEL_31:
      v62 = v15 + 48 * v48;
      v63 = v57;
      v64 = v58;
      *v62 = geo::S2CellCoordinates::geocentricFromTileUnit<double>(&v106, v57, v58, 0.0);
      *(v62 + 8) = v65;
      *(v62 + 16) = v67;
      *(v62 + 44) = 1;
      if (v49)
      {
        v68 = *(v49 + 4 * v48);
        LODWORD(v66.f64[0]) = 2139095039;
        if (v68 != 3.4028e38)
        {
          *v66.f64 = sqrt(ldexp(2.0943951, __e) * 4.0538689e13) * v68;
        }
      }

      else
      {
        LODWORD(v66.f64[0]) = 2139095039;
      }

      *(v62 + 40) = LODWORD(v66.f64[0]);
      v66.f64[0] = v63;
      v69 = gm::Box<double,2>::lerped(*(a2 + 16), v66, v64);
      v71 = v70;
      if (v48)
      {
        md::LabelPoint::geocentricPoint((v62 - 48));
        md::LabelPoint::geocentricPoint((v15 + 48 * v48));
        for (i = 0; i != 3; ++i)
        {
          *&v111[i] = *(v52 + i * 8 - 48) - *(v52 + i * 8);
        }

        v73 = 0;
        v74 = 0.0;
        do
        {
          v74 = v74 + *&v111[v73] * *&v111[v73];
          ++v73;
        }

        while (v73 != 3);
        *(a1 + 8) = *(a1 + 8) + sqrt(v74);
        LODWORD(v16) = *(a1 + 46);
      }

      v50 = fmin(v69, v50);
      v54 = fmax(v54, v69);
      v55 = fmin(v71, v55);
      v51 = fmax(v51, v71);
      ++v48;
      v53 = v16;
      v52 += 48;
      if (v48 >= v16)
      {
        *&v110.i64[1] = v51;
        goto LABEL_68;
      }
    }
  }

  v54 = -1.79769313e308;
  v55 = 1.79769313e308;
  v50 = 1.79769313e308;
LABEL_68:
  *&v109.i64[1] = v55;
  *v110.i64 = v54;
  *v109.i64 = v50;
LABEL_69:
  v99 = *(a1 + 24);
  if (!v99)
  {
    operator new();
  }

  v100 = v110;
  if (v99[3].i8[0] == 1)
  {
    v99[1] = v109;
    v99[2] = v100;
  }

  else
  {
    v99[1] = v109;
    v99[2] = v100;
    v99[3].i8[0] = 1;
  }
}

uint64_t gdc::ServiceLocator::resolve<md::CameraStore>(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  while (*a1 != 0x7D307159AE5298B8)
  {
    a1 += 5;
    if (a1 == a2)
    {
      return 0;
    }
  }

  if (a1 == a2)
  {
    return 0;
  }

  v3 = a1[3];
  v2 = a1[4];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return v3;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleGroundOcclusionConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleGroundOcclusionConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignStyleGroundOcclusionConstantData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

void ggl::LandmarkFlat::LandmarkPipelineState::~LandmarkPipelineState(ggl::LandmarkFlat::LandmarkPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>();
    *algn_1EB83BFC8 = 0xCD7B3DB2C2D258CALL;
    qword_1EB83BFD0 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>]";
    qword_1EB83BFD8 = 96;
  }
}

char *std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__vallocate[abi:nn200100](gss::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = gss::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<gss::StyleAttribute,unsigned short>>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[8 * a2];
  return result;
}

uint64_t std::allocate_shared[abi:nn200100]<md::UniLineLabelFeature,geo::allocator_adapter<md::UniLineLabelFeature,mdm::zone_mallocator>,GeoCodecsRoadFeature const*&,std::vector<unsigned int> &,GeoCodecsTileLabelLine *&,md::LabelFeatureCreationParams &,0>(mdm::zone_mallocator *a1, char *a2, uint64_t **a3, int **a4, uint64_t *a5, uint64_t a6)
{
  v12 = mdm::zone_mallocator::instance(a1);
  v13 = pthread_rwlock_rdlock((v12 + 32));
  if (v13)
  {
    geo::read_write_lock::logFailure(v13, "read lock", v14);
  }

  v15 = malloc_type_zone_malloc(*v12, 0x210uLL, 0x1081040A04D5226uLL);
  atomic_fetch_add((v12 + 24), 1u);
  geo::read_write_lock::unlock((v12 + 32));
  v16 = *a2;
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  *v15 = &unk_1F2A579D0;
  v15[24] = v16;
  v17 = v15 + 32;
  v18 = *a3;
  v19 = *a5;
  md::LineLabelFeature::LineLabelFeature((v15 + 32), 2, 0);
  *(v15 + 4) = &unk_1F29FFE20;
  *(v15 + 59) = &unk_1F2A000E8;
  *(v15 + 240) = 2;
  v15[482] = 0;
  *(v15 + 65) = 0;
  *(v15 + 488) = 0u;
  *(v15 + 504) = 0u;
  v20 = v18[3];
  v21 = v18[4];
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  v22 = *(v15 + 57);
  *(v15 + 56) = v20;
  *(v15 + 57) = v21;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    v20 = *(v15 + 56);
  }

  if (!v20)
  {
    _ZNSt3__115allocate_sharedB8nn200100I22FeatureStyleAttributesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  *(v15 + 65) = v18[5];
  v23 = *(a6 + 104);
  if (v23)
  {
    v15[482] = 1;
    v24 = *(a6 + 112);
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    v25 = *(v15 + 64);
    *(v15 + 63) = v23;
    *(v15 + 64) = v24;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v25);
      v23 = *(v15 + 63);
    }

    *(v15 + 65) = *v23;
    md::UniLineLabelFeature::mergeAdditionalAttributes(&v43, v23, v15 + 56);
    v26 = *(v15 + 57);
    *(v15 + 28) = v43;
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v26);
    }
  }

  v27 = *(v15 + 56);
  v28 = *(v27 + 33);
  if (*(v27 + 33))
  {
    v29 = *v27;
    if (*v29 == 185)
    {
      v30 = 0;
LABEL_23:
      if ((v29[2 * v30 + 1] & 0xFD) == 0)
      {
        v15[481] = 2;
        v15[248] = 1;
        goto LABEL_28;
      }
    }

    else
    {
      v30 = 0;
      v31 = v29 + 2;
      while (v28 - 1 != v30)
      {
        v32 = *v31;
        v31 += 2;
        ++v30;
        if (v32 == 185)
        {
          if (v30 >= v28)
          {
            break;
          }

          goto LABEL_23;
        }
      }
    }
  }

  v33 = v18[3];
  v34 = *(v33 + 33);
  if (*(v33 + 33))
  {
    v35 = *v33;
    if (**v33 == 2)
    {
LABEL_27:
      v15[481] = 1;
    }

    else
    {
      v40 = 0;
      v41 = v35 + 2;
      while (v34 - 1 != v40)
      {
        v42 = *v41;
        v41 += 2;
        ++v40;
        if (v42 == 2)
        {
          if (v40 < v34)
          {
            goto LABEL_27;
          }

          break;
        }
      }
    }
  }

LABEL_28:
  v36 = *(v15 + 28);
  *(v36 + 154) = v15[481];
  md::LabelLineStore::addRoadFeature(v36, v18, a4, v19, a6, (v15 + 472));
  v37 = *(v15 + 28);
  v38 = atomic_load(v37 + 155);
  if (v38)
  {
    md::LabelLineStore::consumeWorkUnits(v37);
  }

  result = (*(*v17 + 32))(v15 + 32, v18, *(a6 + 96));
  *a1 = v17;
  *(a1 + 1) = v15;
  return result;
}

void sub_1B29844F8(_Unwind_Exception *a1)
{
  shared_owners = v1[21].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](shared_owners);
  }

  shared_weak_owners = v1[20].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](shared_weak_owners);
  }

  md::LineLabelFeature::~LineLabelFeature(v2);
  std::__shared_weak_count::~__shared_weak_count(v1);
  v7 = mdm::zone_mallocator::instance(v6);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<md::UniLineLabelFeature,geo::allocator_adapter<md::UniLineLabelFeature,mdm::zone_mallocator>>>(v7, v1);
  _Unwind_Resume(a1);
}

uint64_t md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::LabelFeatureThunk(uint64_t a1, uint64_t *a2, char a3, uint64_t a4)
{
  *a1 = &unk_1F2A579A0;
  *(a1 + 24) = 0u;
  v8 = (a1 + 24);
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0;
  v9 = a2[1];
  if (v9 && (v9 = std::__shared_weak_count::lock(v9)) != 0)
  {
    v10 = *a2;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 56) = a2;
  *(a1 + 64) = v10;
  *(a1 + 72) = v9;
  *(a1 + 80) = a4;
  *(a1 + 88) = a3;
  std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::push_back[abi:nn200100](v8, a1 + 56);
  return a1;
}

void sub_1B2984604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 + 72);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a10);
  v13 = *(v10 + 16);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  _Unwind_Resume(a1);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[299];
}

uint64_t ecs2::ExecutionTaskContext::currentEntity(ecs2::ExecutionTaskContext *this)
{
  ecs2::Runtime::_localState();
  v1 = ecs2::Runtime::_stackIndex();
  return *(v2 + 104 * *v1 + 24);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_7DaVinci20StyleGroundOcclusionEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A14218;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t std::__function::__func<md::ProcessCameraControllerResponse::operator()(ecs2::Query<md::cc::CameraCommands const&>)::$_0,std::allocator<md::ProcessCameraControllerResponse::operator()(ecs2::Query<md::cc::CameraCommands const&>)::$_0>,void ()(md::cc::CameraCommands const&)>::operator()(uint64_t *a1, uint64_t a2)
{
  v21 = a1[3];
  v4 = geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a1[1], *(a2 + 32));
  v6 = *a2;
  v5 = *(a2 + 8);
  if (*a2 != v5)
  {
    do
    {
      v7 = a1[2];
      v8 = v7[2];
      v9 = v7[1];
      if (v8 == v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = 85 * ((v8 - v9) >> 3) - 1;
      }

      v11 = v7[4];
      v12 = v7[5] + v11;
      if (v10 == v12)
      {
        if (v11 < 0x55)
        {
          v13 = v7[3];
          v14 = v13 - *v7;
          if (v8 - v9 < v14)
          {
            operator new();
          }

          v15 = v14 >> 2;
          if (v13 == *v7)
          {
            v16 = 1;
          }

          else
          {
            v16 = v15;
          }

          std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v16);
        }

        v7[4] = v11 - 85;
        v22 = *v9;
        v7[1] = v9 + 8;
        std::__split_buffer<gdc::TrianglePair *>::emplace_back<gdc::TrianglePair *&>(v7, &v22);
        v9 = v7[1];
        v12 = v7[5] + v7[4];
      }

      v17 = (*&v9[8 * (v12 / 0x55)] - 4080 * (v12 / 0x55) + 48 * v12);
      *v17 = *v6;
      v4 = std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100]((v17 + 8), (v6 + 8));
      ++v7[5];
      v6 += 48;
    }

    while (v6 != v5);
  }

  v18 = ecs2::ExecutionTaskContext::currentEntity(v4);
  v19 = *v21;

  return ecs2::ExecutionTaskContext::destroyEntity(v19, v18);
}

void sub_1B2984CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{
  operator delete(v15);
  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void std::vector<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *>(v2, v1);
  }
}

uint64_t ecs2::ExecutionTaskContext::destroyEntity(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = &unk_1F2A60A20;
  v10 = a2;
  v11 = &v9;
  v14 = &v12;
  v12 = &unk_1F2A60A20;
  v13 = a2;
  v15 = 3;
  ecs2::Runtime::_localState();
  v2 = ecs2::Runtime::_stackIndex();
  v6 = *(v5 + 104 * *v2 + 16);
  if (v6 == -1 || (std::vector<std::variant<ecs2::AddComponent,ecs2::AddComponentBundle,ecs2::RemoveComponent,ecs2::DestroyEntity,ecs2::ClearComponent>>::push_back[abi:nn200100]((*(v3 + 24) + 24 * v6), &v12), v4 = v15, v15 != -1))
  {
    (off_1F2A609C0[v4])(&v8, &v12);
  }

  v15 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v9);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci20StyleGroundOcclusionEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A14218;
  a2[1] = v2;
  return result;
}

void *std::__hash_table<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::FeatureHash<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::FeatureEqual<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,mdm::zone_mallocator>>::__emplace_unique_key_args<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator> const&>(float *a1, void *a2, void **a3)
{
  if (*a2)
  {
    v7 = *a2 + 8;
  }

  else
  {
    v7 = 0;
  }

  v8 = md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::hash(v7);
  v9 = v8;
  v10 = *(a1 + 1);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v3 = v8;
      if (v8 >= v10)
      {
        v3 = v8 % v10;
      }
    }

    else
    {
      v3 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v3);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = i[1];
        if (v15 == v9)
        {
          v16 = i[2];
          if (v16)
          {
            v17 = v16 + 8;
          }

          else
          {
            v17 = 0;
          }

          v8 = md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::compare(v17, *a2 + 8);
          if (!v8)
          {
            return i;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v15 >= v10)
            {
              v15 %= v10;
            }
          }

          else
          {
            v15 &= v10 - 1;
          }

          if (v15 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v18 = mdm::zone_mallocator::instance(v8);
  prime = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *>>(v18);
  i = prime;
  *prime = 0;
  prime[1] = v9;
  prime[2] = 0;
  v20 = *a3;
  prime[2] = *a3;
  if (v20)
  {
    ++*v20;
  }

  v21 = (*(a1 + 5) + 1);
  v22 = a1[12];
  if (!v10 || (v22 * v10) < v21)
  {
    v23 = 1;
    if (v10 >= 3)
    {
      v23 = (v10 & (v10 - 1)) != 0;
    }

    v24 = v23 | (2 * v10);
    v25 = vcvtps_u32_f32(v21 / v22);
    if (v24 <= v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = v24;
    }

    if (*&v26 == 1)
    {
      v26 = 2;
    }

    else if ((*&v26 & (*&v26 - 1)) != 0)
    {
      prime = std::__next_prime(*&v26);
      v26 = prime;
    }

    v10 = *(a1 + 1);
    if (*&v26 > v10)
    {
      goto LABEL_38;
    }

    if (*&v26 < v10)
    {
      prime = vcvtps_u32_f32(*(a1 + 5) / a1[12]);
      if (v10 < 3 || (v33 = vcnt_s8(v10), v33.i16[0] = vaddlv_u8(v33), v33.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v34 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v34;
        }
      }

      if (*&v26 <= prime)
      {
        v26 = prime;
      }

      if (*&v26 >= v10)
      {
        v10 = *(a1 + 1);
      }

      else
      {
        if (v26)
        {
LABEL_38:
          v27 = mdm::zone_mallocator::instance(prime);
          v28 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *>(v27, *&v26);
          std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> **,0>(a1, v28);
          v29 = 0;
          *(a1 + 1) = v26;
          do
          {
            *(*a1 + 8 * v29++) = 0;
          }

          while (*&v26 != v29);
          v30 = *(a1 + 3);
          if (v30)
          {
            v31 = v30[1];
            v32 = vcnt_s8(v26);
            v32.i16[0] = vaddlv_u8(v32);
            if (v32.u32[0] > 1uLL)
            {
              if (v31 >= *&v26)
              {
                v31 %= *&v26;
              }
            }

            else
            {
              v31 &= *&v26 - 1;
            }

            *(*a1 + 8 * v31) = a1 + 6;
            v35 = *v30;
            if (*v30)
            {
              do
              {
                v36 = v35[1];
                if (v32.u32[0] > 1uLL)
                {
                  if (v36 >= *&v26)
                  {
                    v36 %= *&v26;
                  }
                }

                else
                {
                  v36 &= *&v26 - 1;
                }

                if (v36 != v31)
                {
                  v37 = *a1;
                  if (!*(*a1 + 8 * v36))
                  {
                    *(v37 + 8 * v36) = v30;
                    goto LABEL_60;
                  }

                  *v30 = *v35;
                  *v35 = **(v37 + 8 * v36);
                  **(v37 + 8 * v36) = v35;
                  v35 = v30;
                }

                v36 = v31;
LABEL_60:
                v30 = v35;
                v35 = *v35;
                v31 = v36;
              }

              while (v35);
            }
          }

          v10 = v26;
          goto LABEL_64;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> **,0>(a1, 0);
        v10 = 0;
        *(a1 + 1) = 0;
      }
    }

LABEL_64:
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v3 = v9 % v10;
      }

      else
      {
        v3 = v9;
      }
    }

    else
    {
      v3 = (v10 - 1) & v9;
    }
  }

  v38 = *a1;
  v39 = *(*a1 + 8 * v3);
  if (v39)
  {
    *i = *v39;
LABEL_77:
    *v39 = i;
    goto LABEL_78;
  }

  *i = *(a1 + 3);
  *(a1 + 3) = i;
  *(v38 + 8 * v3) = a1 + 6;
  if (*i)
  {
    v40 = *(*i + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v40 >= v10)
      {
        v40 %= v10;
      }
    }

    else
    {
      v40 &= v10 - 1;
    }

    v39 = (*a1 + 8 * v40);
    goto LABEL_77;
  }

LABEL_78:
  ++*(a1 + 5);
  return i;
}

void std::vector<std::variant<ecs2::AddComponent,ecs2::AddComponentBundle,ecs2::RemoveComponent,ecs2::DestroyEntity,ecs2::ClearComponent>>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (v6 + 1 > 0x666666666666666)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (v9 <= 0x666666666666666)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 40 * v6;
    *v10 = 0;
    *(v10 + 32) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<ecs2::AddComponent,ecs2::AddComponentBundle,ecs2::RemoveComponent,ecs2::DestroyEntity,ecs2::ClearComponent>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ecs2::AddComponent,ecs2::AddComponentBundle,ecs2::RemoveComponent,ecs2::DestroyEntity,ecs2::ClearComponent>,(std::__variant_detail::_Trait)1>>(v10, a2);
    v5 = v10 + 40;
    v11 = *a1;
    v12 = a1[1];
    v13 = v10 + *a1 - v12;
    if (*a1 != v12)
    {
      v14 = *a1;
      v15 = v13;
      do
      {
        *v15 = 0;
        *(v15 + 32) = -1;
        std::__variant_detail::__ctor<std::__variant_detail::__traits<ecs2::AddComponent,ecs2::AddComponentBundle,ecs2::RemoveComponent,ecs2::DestroyEntity,ecs2::ClearComponent>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ecs2::AddComponent,ecs2::AddComponentBundle,ecs2::RemoveComponent,ecs2::DestroyEntity,ecs2::ClearComponent>,(std::__variant_detail::_Trait)1>>(v15, v14);
        v14 += 40;
        v15 += 40;
      }

      while (v14 != v12);
      do
      {
        v16 = *(v11 + 32);
        if (v16 != -1)
        {
          (off_1F2A609C0[v16])(&v18, v11);
        }

        *(v11 + 32) = -1;
        v11 += 40;
      }

      while (v11 != v12);
    }

    v17 = *a1;
    *a1 = v13;
    a1[1] = v5;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v4 = 0;
    *(v4 + 32) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<ecs2::AddComponent,ecs2::AddComponentBundle,ecs2::RemoveComponent,ecs2::DestroyEntity,ecs2::ClearComponent>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ecs2::AddComponent,ecs2::AddComponentBundle,ecs2::RemoveComponent,ecs2::DestroyEntity,ecs2::ClearComponent>,(std::__variant_detail::_Trait)1>>(v4, a2);
    v5 = v4 + 40;
  }

  a1[1] = v5;
}

uint64_t std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::vector<unsigned int>::push_back[abi:nn200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleRouteLineMaskConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleRouteLineMaskConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignStyleRouteLineMaskConstantData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<ecs2::AddComponent,ecs2::AddComponentBundle,ecs2::RemoveComponent,ecs2::DestroyEntity,ecs2::ClearComponent>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ecs2::AddComponent,ecs2::AddComponentBundle,ecs2::RemoveComponent,ecs2::DestroyEntity,ecs2::ClearComponent>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4 != -1)
  {
    result = (off_1F2A609C0[v4])(&v7, result);
  }

  *(v3 + 32) = -1;
  v5 = *(a2 + 32);
  if (v5 != -1)
  {
    v6 = v3;
    result = (off_1F2A609E8[v5])(&v6, a2);
    *(v3 + 32) = v5;
  }

  return result;
}

void std::vector<ggl::LandmarkFlat::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::LandmarkFlat::LandmarkPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::LandmarkFlat::LandmarkPipelineSetup *>(v2, v1);
  }
}

uint64_t std::__function::__func<ecs2::DestroyEntity::DestroyEntity(ecs2::Entity)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::DestroyEntity::DestroyEntity(ecs2::Entity)::{lambda(ecs2::BasicRegistry<void> &)#1}>,void ()(ecs2::BasicRegistry<void> &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A60A20;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>();
    unk_1EB83C010 = 0x12E52FADC2088C61;
    qword_1EB83C018 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>]";
    qword_1EB83C020 = 94;
  }
}

uint64_t gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(uint64_t a1, int a2, unsigned int a3, unsigned int a4, _BYTE *a5)
{
  if (a4 == 2)
  {
    v9 = *a1;
    if (*a1)
    {
      v10 = *v9;
      LODWORD(v9) = *v9 == 1.0;
      if (*(a1 + 10) == 1 && v10 != 0.0 && v10 != 1.0)
      {
        v12 = v10 < 1.0;
        goto LABEL_13;
      }
    }

    v13 = a1 + v9;
  }

  else
  {
    v13 = a1 + a4;
  }

  v14 = *(v13 + 11);
  if (v14 != 2)
  {
    v16 = *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<BOOL>(a1, a2, a3, v14, a5);
    return v16 & 1;
  }

  v12 = 1;
LABEL_13:
  v19 = 1;
  v18 = 1;
  v15 = *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<BOOL>(a1, a2, a3, 0, &v19);
  v16 = *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<BOOL>(a1, a2, a3, 1u, &v18);
  if (a5)
  {
    *a5 = (v19 | v18) & 1;
  }

  if (v12)
  {
    v16 = v15;
  }

  return v16 & 1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::StyleRouteLineMaskDataKeyHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskDataKeyHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleRouteLineMaskDataKeyHandle>();
    *algn_1EB83BB98 = 0x8E45E81B6E5A8E0ELL;
    qword_1EB83BBA0 = "md::ls::StyleRouteLineMaskDataKeyHandle]";
    qword_1EB83BBA8 = 39;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskDataKeyHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskDataKeyHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void std::vector<ggl::SpecularLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::SpecularLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::SpecularLandmark::LandmarkPipelineSetup *>(v2, v1);
  }
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::DiffuseLandmark::BuildingPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    std::__function::__value_func<void ()(ggl::DiffuseLandmark::BuildingPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::DiffuseLandmark::BuildingPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::DiffuseLandmark::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseLandmark::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::DiffuseLandmark::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseLandmark::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[302];
}

uint64_t std::__function::__value_func<void ()(md::cc::CameraCommands const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::function<void ()(GeoCodecsFeature const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x1B29861F0);
  }

  return (*(*a1 + 48))(a1, &v3);
}

void std::vector<ggl::LandmarkDepth::BuildingPipelineSetup *,geo::allocator_adapter<ggl::LandmarkDepth::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::LandmarkDepth::BuildingPipelineSetup *>(v2, v1);
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_7DaVinci18StyleRouteLineMaskEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A142E8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::enumerateGEOVectorObjects(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  for (i = *(result + 32); v2 != i; result = std::function<void ()(GeoCodecsFeature const*)>::operator()(*(a2 + 24), v5))
  {
    v5 = *v2;
    v2 += 3;
  }

  return result;
}

void *std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(mdm::zone_mallocator *__dst, void *__src, unint64_t a3)
{
  v5 = __dst;
  if (a3 > 0x16)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if ((a3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (a3 | 7) + 1;
    }

    v7 = mdm::zone_mallocator::instance(__dst);
    v8 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v7, v6);
    *(v5 + 1) = a3;
    *(v5 + 2) = v6 | 0x8000000000000000;
    *v5 = v8;
    v5 = v8;
  }

  else
  {
    *(__dst + 23) = a3;
  }

  return memmove(v5, __src, a3 + 1);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci18StyleRouteLineMaskEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A142E8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleEmissiveColorConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleEmissiveColorConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignStyleEmissiveColorConstantData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t doesRoadNeedLabeling(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v5 = a1;
  if (!a2 || (v6 = *a2) == 0)
  {
    if (a1)
    {
      if (*(a1 + 153) - 1 < 2)
      {
        return 1;
      }
    }

    else
    {
      a1 = 0;
    }

    return geo::codec::featureGetNativeLabelCount(a1) || geo::codec::featureGetNativeShieldCount(v5) || a4 && *(v5 + 150);
  }

  if (*(a1 + 40) == v6)
  {
    return 1;
  }

  v7 = *(a1 + 74);
  if (!*(a1 + 74))
  {
    return 0;
  }

  v8 = (*(a3 + 3488) + 8 * *(a1 + 64));
  v9 = &v8[v7];
  v10 = 8 * v7;
  while (*v8 != v6)
  {
    ++v8;
    v10 -= 8;
    if (!v10)
    {
      v8 = v9;
      return v8 != v9;
    }
  }

  return v8 != v9;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>();
    unk_1EB83C030 = 0xB22A7749D4CDB850;
    qword_1EB83C038 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>]";
    qword_1EB83C040 = 94;
  }
}

void std::vector<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *,geo::allocator_adapter<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *>(v2, v1);
  }
}

void std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](gss::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = gss::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<gss::StyleAttribute,unsigned short>>(v2, v1);
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t gdc::CameraView::geocentricCameraView(gdc::CameraView *this, const gdc::Camera *a2)
{
  gdc::CameraFrame<geo::Radians,double>::toRigidTransformGeocentric(v18, a2 + 1);
  v4 = *(a2 + 46);
  v5 = *(a2 + 47);
  v16[0] = v4;
  v16[1] = v5;
  v6 = *(a2 + 122);
  v7 = *(a2 + 123);
  if (v5 >= v4)
  {
    v13 = *(a2 + 57);
  }

  else
  {
    v8 = v5 * v4;
    v9 = v5 / v4;
    if (v8 <= 0.0)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = v9;
    }

    v11 = tan(*(a2 + 57) * 0.5);
    v12 = atan(v11 * v10);
    v13 = v12 + v12;
  }

  v15 = v13;
  gdc::ScaledOffsetPerspectiveView<double>::ScaledOffsetPerspectiveView(v17, v18, v16, &v15, v6, v7, 1.0, *(a2 + 58), *(a2 + 59), *(a2 + 60));
  return gdc::CameraView::CameraView(this, a2, v17);
}

void std::vector<ggl::BuildingShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::BuildingShadow::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BuildingShadow::MeshPipelineSetup *>(v2, v1);
  }
}

mdm::zone_mallocator *std::__split_buffer<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    *(a1 + 2) = i - 64;
    std::allocator_traits<geo::allocator_adapter<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy[abi:nn200100]<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,void,0>(i - 64);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>>(v5, v4);
  }

  return a1;
}

uint64_t std::vector<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_back_slow_path<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>> const&>(char **a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v29 = a1 + 3;
  if (v7)
  {
    v8 = mdm::zone_mallocator::instance(a1);
    v9 = pthread_rwlock_rdlock((v8 + 32));
    if (v9)
    {
      geo::read_write_lock::logFailure(v9, "read lock", v10);
    }

    v11 = malloc_type_zone_malloc(*v8, v7 << 6, 0x1012040A55E7F8AuLL);
    atomic_fetch_add((v8 + 24), 1u);
    geo::read_write_lock::unlock((v8 + 32));
  }

  else
  {
    v11 = 0;
  }

  v12 = &v11[64 * v2];
  v26 = v11;
  v27 = v12;
  *&v28 = v12;
  *(&v28 + 1) = &v11[64 * v7];
  v12[24] = *(a2 + 24);
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&v11[64 * v2], *a2, *(a2 + 1));
  }

  else
  {
    v13 = *a2;
    *(v12 + 2) = *(a2 + 2);
    *v12 = v13;
  }

  v12[56] = *(a2 + 56);
  if (*(a2 + 55) < 0)
  {
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external((v12 + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v14 = a2[2];
    *(v12 + 6) = *(a2 + 6);
    *(v12 + 2) = v14;
  }

  *&v28 = v28 + 64;
  v15 = *a1;
  v16 = a1[1];
  v17 = &v27[*a1 - v16];
  if (*a1 != v16)
  {
    v18 = *a1;
    v19 = &v27[*a1 - v16];
    do
    {
      v20 = *v18;
      *(v19 + 2) = *(v18 + 2);
      *v19 = v20;
      v19[24] = v18[24];
      *v18 = 0;
      *(v18 + 1) = 0;
      *(v18 + 2) = 0;
      v21 = *(v18 + 2);
      *(v19 + 6) = *(v18 + 6);
      *(v19 + 2) = v21;
      v19[56] = v18[56];
      *(v18 + 4) = 0;
      *(v18 + 5) = 0;
      *(v18 + 6) = 0;
      v18 += 64;
      v19 += 64;
    }

    while (v18 != v16);
    do
    {
      std::allocator_traits<geo::allocator_adapter<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy[abi:nn200100]<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,void,0>(v15);
      v15 += 64;
    }

    while (v15 != v16);
  }

  v22 = *a1;
  *a1 = v17;
  v23 = a1[2];
  v25 = v28;
  *(a1 + 1) = v28;
  *&v28 = v22;
  *(&v28 + 1) = v23;
  v26 = v22;
  v27 = v22;
  std::__split_buffer<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,mdm::zone_mallocator> &>::~__split_buffer(&v26);
  return v25;
}

void sub_1B2986BE4(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 23) < 0)
  {
    v6 = *v4;
    v7 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v7, v6);
  }

  std::__split_buffer<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,mdm::zone_mallocator> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[304];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_7DaVinci18StyleEmissiveColorEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A14148;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t gdc::ScaledOffsetPerspectiveView<double>::ScaledOffsetPerspectiveView(uint64_t a1, uint64_t a2, _WORD *a3, double *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v100 = *a4;
  geo::PerspectiveView<double>::PerspectiveView(a1, a2, a3, &v100, a8, a9, a10);
  *(v17 + 488) = a7;
  v103 = 0u;
  v105 = 0;
  v108 = 0u;
  v107 = 0u;
  v104 = 0u;
  v102 = 0u;
  v101 = 0u;
  v109 = 0x3FF0000000000000;
  v100 = a7;
  *&v103 = a7;
  v106 = a7;
  v18 = a8 * a7;
  v19 = a9 * a7;
  v20 = *(v17 + 448);
  v21 = tan(*a4 * 0.5);
  v22 = 0;
  v89 = 0u;
  v90 = 0u;
  v88 = (v18 + v18) / ((v18 + v18) * v20 * v21);
  v91 = 1.0 / v21;
  v92 = 0u;
  v93 = 0u;
  v94 = -(v19 - v18 * a10) / (v19 - v18);
  v97 = 0;
  v95 = 0xBFF0000000000000;
  v96 = 0;
  v98 = -(v19 * v18 - a10 * (v19 * v18)) / (v19 - v18);
  v99 = 0;
  v23.f64[0] = v64;
  v23.f64[1] = v65;
  v81 = 0u;
  v83 = 0;
  v82 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0x3FF0000000000000;
  *&v81 = 0x3FF0000000000000;
  v85 = 0;
  v84 = 0x3FF0000000000000;
  v86 = vaddq_f64(v23, v23);
  v87 = xmmword_1B33B0740;
  v24 = &v78;
  do
  {
    v25 = 0;
    v26 = a1 + 56;
    do
    {
      v27 = 0;
      v28 = 0.0;
      v29 = v24;
      do
      {
        v30 = *v29;
        v29 += 4;
        v28 = v28 + *(v26 + v27) * v30;
        v27 += 8;
      }

      while (v27 != 32);
      *(&v70 + 4 * v25++ + v22) = v28;
      v26 += 32;
    }

    while (v25 != 4);
    ++v22;
    ++v24;
  }

  while (v22 != 4);
  v31 = 0;
  v32 = v75;
  *(a1 + 120) = v74;
  *(a1 + 136) = v32;
  v33 = v77;
  *(a1 + 152) = v76;
  *(a1 + 168) = v33;
  v34 = v71;
  *(a1 + 56) = v70;
  *(a1 + 72) = v34;
  v35 = v73;
  v36 = &v78;
  *(a1 + 88) = v72;
  *(a1 + 104) = v35;
  do
  {
    v37 = 0;
    v38 = &v88;
    do
    {
      v39 = 0;
      v40 = 0.0;
      v41 = v36;
      do
      {
        v42 = *v41;
        v41 += 4;
        v40 = v40 + v38[v39++] * v42;
      }

      while (v39 != 4);
      v68[4 * v37++ + v31] = v40;
      v38 += 4;
    }

    while (v37 != 4);
    ++v31;
    ++v36;
  }

  while (v31 != 4);
  v43 = 0;
  v44 = v68;
  do
  {
    v45 = 0;
    v46 = &v100;
    do
    {
      v47 = 0;
      v48 = 0.0;
      v49 = v44;
      do
      {
        v50 = *v49;
        v49 += 4;
        v48 = v48 + v46[v47++] * v50;
      }

      while (v47 != 4);
      v69[4 * v45++ + v43] = v48;
      v46 += 4;
    }

    while (v45 != 4);
    ++v43;
    ++v44;
  }

  while (v43 != 4);
  geo::RigidTransform<double,double>::inverse(v66, a2);
  geo::RigidTransform<double,double>::toMatrix(v67, v66);
  v51 = 0;
  v52 = v69;
  do
  {
    v53 = 0;
    v54 = v67;
    do
    {
      v55 = 0;
      v56 = 0.0;
      v57 = v52;
      do
      {
        v58 = *v57;
        v57 += 4;
        v56 = v56 + *&v54[v55] * v58;
        v55 += 8;
      }

      while (v55 != 32);
      *(&v70 + 4 * v53++ + v51) = v56;
      v54 += 32;
    }

    while (v53 != 4);
    ++v51;
    ++v52;
  }

  while (v51 != 4);
  v59 = v75;
  *(a1 + 376) = v74;
  *(a1 + 392) = v59;
  v60 = v77;
  *(a1 + 408) = v76;
  *(a1 + 424) = v60;
  v61 = v71;
  *(a1 + 312) = v70;
  *(a1 + 328) = v61;
  v62 = v73;
  *(a1 + 344) = v72;
  *(a1 + 360) = v62;
  return a1;
}

uint64_t md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>::operator()(uint64_t *a1, uint64_t a2)
{
  result = gss::FeatureAttributeSet::operator==(a1[30], a1[31], *(a2 + 240), *(a2 + 248));
  if (result)
  {

    return geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>(a1 + 34, a2 + 272);
  }

  return result;
}

uint64_t geo::View<double>::View(uint64_t a1, uint64_t a2, double *a3, __int128 *a4, _WORD *a5, int a6, double a7)
{
  v9 = a3;
  v12 = 0;
  v13 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v13;
  v14 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v14;
  *(a1 + 48) = *(a2 + 48);
  v15 = *a3;
  v16 = *(a3 + 1);
  v17 = *(a3 + 2);
  *(a1 + 104) = *(a3 + 3);
  *(a1 + 88) = v17;
  *(a1 + 72) = v16;
  *(a1 + 56) = v15;
  v18 = *(a3 + 4);
  v19 = *(a3 + 5);
  v20 = *(a3 + 6);
  *(a1 + 168) = *(a3 + 7);
  *(a1 + 152) = v20;
  *(a1 + 136) = v19;
  *(a1 + 120) = v18;
  v21 = a4[7];
  v23 = a4[4];
  v22 = a4[5];
  *(a1 + 280) = a4[6];
  *(a1 + 296) = v21;
  *(a1 + 264) = v22;
  *(a1 + 248) = v23;
  v24 = *a4;
  v25 = a4[1];
  v26 = a4[2];
  *(a1 + 232) = a4[3];
  *(a1 + 216) = v26;
  *(a1 + 200) = v25;
  *(a1 + 184) = v24;
  do
  {
    v63.f64[v12] = -*(a2 + v12 * 8 + 24);
    ++v12;
  }

  while (v12 != 3);
  *&v27 = v64;
  v61 = *(a2 + 48);
  v62 = *&v64;
  *(&v27 + 1) = v61;
  v64 = v27;
  v60 = v63;
  v28 = gm::Quaternion<double>::operator*(&v63, a2);
  v29 = 0;
  *v78 = v28;
  v78[1] = v30;
  v78[2] = v31;
  do
  {
    *(&v70 + v29 * 8) = -*&v78[v29];
    ++v29;
  }

  while (v29 != 3);
  v32 = 0;
  v33 = v70;
  v34 = v71;
  v35 = v60;
  v36 = vmuld_lane_f64(v60.f64[1] + v60.f64[1], v60, 1);
  v37 = v62;
  v38 = (v37 + v37) * v37;
  v39 = vmuld_lane_f64(v35.f64[0] + v35.f64[0], v35, 1);
  v40 = v61 * (v37 + v37);
  v41 = v39 - v40;
  v42 = v62 * (v35.f64[0] + v35.f64[0]);
  v43 = v61 * (v60.f64[1] + v60.f64[1]);
  *&v70 = 1.0 - (v36 + v38);
  *(&v70 + 1) = v40 + v39;
  v44 = 1.0 - v35.f64[0] * (v35.f64[0] + v35.f64[0]);
  v45 = (v60.f64[1] + v60.f64[1]) * v62;
  v46 = v61 * (v35.f64[0] + v35.f64[0]);
  v75 = v43 + v42;
  v76 = v45 - v46;
  v71 = v42 - v43;
  v72 = v41;
  v73 = v44 - v38;
  v74 = v46 + v45;
  v77 = v44 - v36;
  v47 = &v63;
  v48 = &v70;
  do
  {
    v49 = 0;
    f64 = v47->f64;
    do
    {
      *f64 = *(v48 + v49);
      f64 += 4;
      v49 += 24;
    }

    while (v49 != 72);
    ++v32;
    v47 = (v47 + 8);
    v48 = (v48 + 8);
  }

  while (v32 != 3);
  v51 = 0;
  *(&v64 + 1) = 0;
  v65 = 0;
  v66 = 0;
  v67 = v33;
  v68 = v34;
  v69 = 0x3FF0000000000000;
  do
  {
    v52 = 0;
    v53 = &v63;
    do
    {
      v54 = 0;
      v55 = 0.0;
      v56 = v9;
      do
      {
        v57 = *v56;
        v56 += 4;
        v58 = *&v57;
        v55 = v55 + v53->f64[v54++] * v57;
      }

      while (v54 != 4);
      *(a1 + 312 + 8 * (4 * v52++ + v51)) = v55;
      v53 += 2;
    }

    while (v52 != 4);
    ++v51;
    ++v9;
  }

  while (v51 != 4);
  *(a1 + 440) = a7;
  LOWORD(v55) = *a5;
  LOWORD(v58) = a5[1];
  *(a1 + 448) = *&v55 / v58;
  *(a1 + 456) = *a5;
  *(a1 + 460) = a6;
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci18StyleEmissiveColorEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A14148;
  a2[1] = v2;
  return result;
}

void std::vector<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup *,geo::allocator_adapter<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup *>(v2, v1);
  }
}

double geo::PerspectiveView<double>::PerspectiveView(uint64_t a1, uint64_t a2, _WORD *a3, double *a4, double a5, double a6, double a7)
{
  v10 = a6;
  LOWORD(a6) = *a3;
  v14 = *&a6;
  LOWORD(a6) = a3[1];
  v15 = *&a6;
  v16 = tan(*a4 * 0.5);
  v17 = (a5 + a5) * v14 * v16 / v15;
  v34 = 0u;
  v35 = 0u;
  v33 = (a5 + a5) / v17;
  v36 = 1.0 / v16;
  v18 = -(v10 - a7 * a5);
  v37 = 0u;
  v38 = 0u;
  v39 = v18 / (v10 - a5);
  v19 = -(v10 * a5 - a7 * (v10 * a5));
  v41 = 0;
  v42 = 0;
  v40 = 0xBFF0000000000000;
  v43 = v19 / (v10 - a5);
  v44 = 0;
  v21 = v17 / (a5 + a5);
  v22 = 0u;
  v23 = 0u;
  v24 = v16;
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  v28 = (v10 - a5) / v19;
  v29 = 0;
  v30 = 0;
  v31 = 0xBFF0000000000000;
  v32 = v18 / v19;
  geo::View<double>::View(a1, a2, &v33, &v21, a3, 0, a7);
  result = *a4;
  *(a1 + 464) = *a4;
  *(a1 + 472) = a5;
  *(a1 + 480) = v10;
  return result;
}

uint64_t gm::operator*<double,4,4,4>(uint64_t result, double *a2, uint64_t a3)
{
  for (i = 0; i != 4; ++i)
  {
    v4 = 0;
    v5 = a3;
    do
    {
      v6 = 0;
      v7 = 0.0;
      v8 = a2;
      do
      {
        v9 = *v8;
        v8 += 4;
        v7 = v7 + *(v5 + v6) * v9;
        v6 += 8;
      }

      while (v6 != 32);
      *(result + 8 * (4 * v4++ + i)) = v7;
      v5 += 32;
    }

    while (v4 != 4);
    ++a2;
  }

  return result;
}

void *md::LabelLineStore::addSegment<GeoCodecsRoadFeature>(uint64_t a1, uint64_t a2, int a3, int a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int32 a12, uint64_t a13)
{
  if (a10 < 2)
  {
    return 0;
  }

  v54 = 0;
  v39[0] = *(a1 + 153);
  v40 = a3;
  LOBYTE(v41) = a5;
  HIBYTE(v41) = a4;
  v42 = a6;
  v43 = a7;
  v44 = a8;
  v45 = a9;
  v46 = 0;
  v47 = 0;
  v48 = a10;
  v49 = 0;
  v50 = a11;
  v51 = a12;
  v52 = a13;
  v53 = *(a1 + 159);
  v18 = mdm::zone_mallocator::instance(a1);
  if (a10 > 3)
  {
    if (a10 == 4)
    {
      v33 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v18, 0x100uLL);
      i64 = v33->i64;
      v34 = 0;
      v33->i64[1] = 0;
      v33[1].i64[0] = a2;
      v33[1].i64[1] = 0;
      v33[2].i8[0] = 0;
      v33[2].i8[1] = v53;
      v33[2].i16[1] = v41;
      v33[2].i8[4] = *(a2 + 151);
      v33[2].i8[5] = v52 != 0;
      v35 = v48;
      v33[2].i8[6] = v50;
      v33[2].i32[2] = v51;
      v33[2].i16[6] = v40;
      v33[2].i16[7] = v35;
      v33->i64[0] = &unk_1F2A08B78;
      do
      {
        v36 = &v33[v34];
        v36[5].i64[0] = 0;
        v36[3] = 0uLL;
        v36[4] = 0uLL;
        v36[5].i32[2] = 2139095039;
        v36[5].i16[6] = 0;
        v34 += 3;
        v36[5].i8[14] = 0;
      }

      while (v34 != 12);
      v33[15] = vdupq_lane_s32(32639, 0);
      md::LabelLineSegment::createLists(v33, a2, v39);
    }

    else
    {
      if (a10 != 5)
      {
        goto LABEL_16;
      }

      v23 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v18, 0x138uLL);
      i64 = v23;
      v24 = 0;
      *(v23 + 1) = 0;
      *(v23 + 2) = a2;
      *(v23 + 3) = 0;
      v23[32] = 0;
      v23[33] = v53;
      *(v23 + 17) = v41;
      v23[36] = *(a2 + 151);
      v23[37] = v52 != 0;
      v25 = v48;
      v23[38] = v50;
      *(v23 + 10) = v51;
      *(v23 + 22) = v40;
      *(v23 + 23) = v25;
      *v23 = &unk_1F2A08BD0;
      do
      {
        v26 = &v23[v24];
        *(v26 + 10) = 0;
        *(v26 + 3) = 0uLL;
        *(v26 + 4) = 0uLL;
        *(v26 + 22) = 2139095039;
        *(v26 + 46) = 0;
        v24 += 48;
        v26[94] = 0;
      }

      while (v24 != 240);
      for (i = 288; i != 308; i += 4)
      {
        *&v23[i] = 32639;
      }

      md::LabelLineSegment::createLists(v23, a2, v39);
    }
  }

  else
  {
    if (a10 != 2)
    {
      if (a10 == 3)
      {
        v19 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v18, 0xD0uLL);
        i64 = v19;
        v20 = 0;
        v19[1] = 0;
        v19[2] = a2;
        v19[3] = 0;
        v19[4].i8[0] = 0;
        v19[4].i8[1] = v53;
        v19[4].i16[1] = v41;
        v19[4].i8[4] = *(a2 + 151);
        v19[4].i8[5] = v52 != 0;
        v21 = v48;
        v19[4].i8[6] = v50;
        v19[5].i32[0] = v51;
        v19[5].i16[2] = v40;
        v19[5].i16[3] = v21;
        *v19 = &unk_1F2A08B20;
        do
        {
          v22 = &v19[v20];
          v22[10] = 0;
          *v22[6].i8 = 0uLL;
          *v22[8].i8 = 0uLL;
          v22[11].i32[0] = 2139095039;
          v22[11].i16[2] = 0;
          v20 += 6;
          v22[11].i8[6] = 0;
        }

        while (v20 != 18);
        v19[25].i32[0] = 32639;
        v19[24] = vdup_n_s32(0x7F7Fu);
        md::LabelLineSegment::createLists(v19, a2, v39);
        goto LABEL_23;
      }

LABEL_16:
      i64 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v18, 0x70uLL);
      i64[1] = 0;
      i64[2] = a2;
      i64[3] = 0;
      *(i64 + 32) = 0;
      *(i64 + 33) = v53;
      *(i64 + 17) = v41;
      *(i64 + 36) = *(a2 + 151);
      *(i64 + 37) = v52 != 0;
      v28 = v48;
      *(i64 + 38) = v50;
      *(i64 + 10) = v51;
      *(i64 + 22) = v40;
      *(i64 + 23) = v28;
      *i64 = &unk_1F2A08A70;
      i64[6] = 0;
      i64[7] = 0;
      i64[8] = 0;
      i64[10] = 0;
      i64[11] = 0;
      i64[12] = 0;
      md::LabelLineSegment::createLists(i64, a2, v39);
      goto LABEL_23;
    }

    v29 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v18, 0x98uLL);
    i64 = v29;
    v30 = 0;
    v29[1] = 0;
    v29[2] = a2;
    v29[3] = 0;
    v29[4].i8[0] = 0;
    v29[4].i8[1] = v53;
    v29[4].i16[1] = v41;
    v29[4].i8[4] = *(a2 + 151);
    v29[4].i8[5] = v52 != 0;
    v31 = v48;
    v29[4].i8[6] = v50;
    v29[5].i32[0] = v51;
    v29[5].i16[2] = v40;
    v29[5].i16[3] = v31;
    *v29 = &unk_1F2A08AC8;
    do
    {
      v32 = &v29[v30];
      v32[10] = 0;
      *v32[6].i8 = 0uLL;
      *v32[8].i8 = 0uLL;
      v32[11].i32[0] = 2139095039;
      v32[11].i16[2] = 0;
      v30 += 6;
      v32[11].i8[6] = 0;
    }

    while (v30 != 12);
    v29[18] = vdup_n_s32(0x7F7Fu);
    md::LabelLineSegment::createLists(v29, a2, v39);
  }

LABEL_23:
  v54 = i64;
  v37 = md::LabelLineStore::lineZSetForZ(a1, a4, a5);
  md::LabelLineZSet::addSegment(v37, &v54);
  atomic_store(0, (a1 + 156));
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  return i64;
}

void sub_1B2987B94(_Unwind_Exception *a1)
{
  *v1 = v2;
  v4 = v1[3];
  v1[3] = 0;
  if (v4)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v4);
  }

  v5 = mdm::zone_mallocator::instance(v4);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v5, v1);
  _Unwind_Resume(a1);
}

void *localizedLabel(void *result, std::__shared_weak_count **a2, char *__s, int a4, void *a5)
{
  v5 = result;
  if (__s)
  {
    if (a4 && (v10 = 0, v11 = 0, geo::codec::featureGetLocalizedLabelForNativeLabel(a2, __s, &v11, &v10), (v8 = v11) != 0) && *v11)
    {
      if (a5)
      {
        *a5 = v10;
      }

      v9 = v5;
    }

    else
    {
      v9 = v5;
      v8 = __s;
    }

    return std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(v9, v8);
  }

  else
  {
    *result = 0;
    result[1] = 0;
    result[2] = 0;
  }

  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignLandCoverSettingsConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignLandCoverSettingsConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignLandCoverSettingsConstantData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

void std::vector<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup *>(v2, v1);
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>>();
    unk_1EB83C080 = 0x6635AEA306F3CF3ELL;
    qword_1EB83C088 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>]";
    qword_1EB83C090 = 93;
  }
}

uint64_t gdc::CameraView::CameraView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = v5;
  v8 = *(a2 + 200);
  v9 = *(a2 + 216);
  v10 = *(a2 + 232);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 232) = v10;
  *(a1 + 216) = v9;
  *(a1 + 200) = v8;
  v11 = *(a2 + 264);
  v12 = *(a2 + 280);
  v13 = *(a2 + 296);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 280) = v12;
  *(a1 + 296) = v13;
  *(a1 + 264) = v11;
  v15 = *(a2 + 328);
  v14 = *(a2 + 344);
  v16 = *(a2 + 312);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 328) = v15;
  *(a1 + 344) = v14;
  *(a1 + 312) = v16;
  v17 = *(a2 + 136);
  v18 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v18;
  *(a1 + 136) = v17;
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  v19 = *(a2 + 400);
  v20 = *(a2 + 416);
  v21 = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 416) = v20;
  *(a1 + 432) = v21;
  *(a1 + 400) = v19;
  *&v20 = *(a2 + 464);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = v20;
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 480) = *(a2 + 480);
  geo::View<double>::View(a1 + 496, a3, (a3 + 56), (a3 + 184), (a3 + 456), *(a3 + 460), *(a3 + 440));
  *(a1 + 960) = *(a3 + 464);
  *(a1 + 976) = *(a3 + 480);
  geo::Frustum<double>::Frustum(a1 + 984, (a3 + 312), *(a3 + 440));
  return a1;
}

__n128 md::LabelLineStitchSegment::point(md::LabelLineStitchSegment *this, void *a2, unint64_t a3)
{
  if (*a2)
  {
    v5 = (*(**a2 + 24))(*a2, a3);
    *this = *v5;
    *(this + 2) = *(v5 + 16);
    result = *(v5 + 24);
    *(this + 24) = result;
    *(this + 10) = *(v5 + 40);
    *(this + 43) = *(v5 + 43);
  }

  else
  {
    v7 = a2[1];
    if (v7)
    {
      {
        md::TileLabelLine::point(unsigned long)const::kInvalidPoint = 0uLL;
      }

      v8 = *(v7 + 24);
      v9 = *(v7 + 32);
      if (v8 == v9)
      {
        v11 = &md::TileLabelLine::point(unsigned long)const::kInvalidPoint;
      }

      else
      {
        v10 = 0;
        v11 = &md::TileLabelLine::point(unsigned long)const::kInvalidPoint;
        while (1)
        {
          v12 = (*(**v8 + 16))();
          if (v12 + v10 > a3)
          {
            break;
          }

          v8 += 16;
          v10 += v12;
          if (v8 == v9)
          {
            goto LABEL_16;
          }
        }

        if (v8[8])
        {
          v13 = a3 - v10;
        }

        else
        {
          v13 = v12 + ~(a3 - v10);
        }

        v14 = (*(**v8 + 24))(*v8, v13);
        v11 = md::LabelPoint::mercatorPoint(v14);
      }

LABEL_16:
      *this = 0;
      *(this + 1) = 0;
      *(this + 2) = 0;
      result = *v11;
      *(this + 24) = *v11;
      *(this + 10) = 2139095039;
      *(this + 22) = 256;
      *(this + 46) = 1;
    }

    else
    {
      result.n128_u64[0] = 0;
      *(this + 1) = 0u;
      *(this + 2) = 0u;
      *this = 0u;
      *(this + 10) = 2139095039;
    }
  }

  return result;
}

uint64_t geo::Frustum<double>::Frustum(uint64_t a1, double *a2, double a3)
{
  v4 = 0;
  v34 = *MEMORY[0x1E69E9840];
  v5 = &v21;
  v6 = a2;
  do
  {
    v7 = 0;
    v8 = v6;
    do
    {
      v9 = *v8;
      v8 += 4;
      v5->f64[v7++] = v9;
    }

    while (v7 != 4);
    ++v4;
    v5 += 2;
    ++v6;
  }

  while (v4 != 4);
  v10 = 0;
  v33[8] = vaddq_f64(v21, v27);
  v33[9] = vaddq_f64(v22, v28);
  v33[10] = vsubq_f64(v27, v21);
  v33[11] = vsubq_f64(v28, v22);
  v33[4] = vaddq_f64(v23, v27);
  v33[5] = vaddq_f64(v24, v28);
  v33[6] = vsubq_f64(v27, v23);
  v33[7] = vsubq_f64(v28, v24);
  v33[0] = vmlsq_lane_f64(v25, v27, a3, 0);
  v33[1] = vmlsq_lane_f64(v26, v28, a3, 0);
  v33[2] = vsubq_f64(v27, v25);
  v33[3] = vsubq_f64(v28, v26);
  do
  {
    v11 = 0;
    v12 = &v33[2 * v10];
    v13 = *(v12 + 2);
    v29 = *v12;
    v30 = v13;
    v14 = 0.0;
    do
    {
      v14 = v14 + *(&v29 + v11) * *(&v29 + v11);
      v11 += 8;
    }

    while (v11 != 24);
    v15 = 0;
    v16 = 1.0 / sqrt(v14);
    do
    {
      *(&v31 + v15) = *(&v29 + v15) * v16;
      v15 += 8;
    }

    while (v15 != 24);
    v17 = a1 + 32 * v10;
    v18 = v32;
    v19 = *(v12 + 3) * v16;
    *v17 = v31;
    *(v17 + 16) = v18;
    *(v17 + 24) = v19;
    ++v10;
  }

  while (v10 != 6);
  geo::Frustum<double>::calculateCorners(a1, a2, a3);
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::FoggedSpecularBuilding::BuildingPipelineSetup>>::~unique_ptr[abi:nn200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[4];
    v4 = v2[5];
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    v5 = *v2;
    v6 = v2[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    v7 = v2[15];
    if (v7 == v2 + 12)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v2[11];
    if (v8 == v2 + 8)
    {
      (*(*v8 + 32))(v8);
    }

    else if (v8)
    {
      (*(*v8 + 40))(v8);
    }

    std::vector<ggl::FoggedSpecularBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::FoggedSpecularBuilding::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::FoggedSpecularBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::FoggedSpecularBuilding::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
    MEMORY[0x1B8C62190](v2, 0x10A0C405CD4001ALL);
  }

  return a1;
}

float64x2_t geo::Frustum<double>::calculateCorners(uint64_t a1, double *a2, double a3)
{
  v5 = (a1 + 264);
  gm::Matrix<double,4,4>::inverted<int,void>(v80, a2);
  __asm { FMOV            V0.2D, #-1.0 }

  v78 = _Q0;
  v81 = _Q0;
  v82.f64[0] = a3;
  v11 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v80, &v81);
  v12 = 0;
  *(a1 + 192) = v11;
  *(a1 + 200) = v13;
  *(a1 + 208) = v14;
  *v79 = v78;
  v15 = v80;
  *&v79[16] = 0x3FF0000000000000;
  do
  {
    v16 = 0;
    v17 = 0.0;
    v18 = v15;
    do
    {
      v19 = *v18;
      v18 += 4;
      v17 = v17 + *&v79[v16] * v19;
      v16 += 8;
    }

    while (v16 != 24);
    v81.f64[v12] = v80[v12 + 12] + v17;
    ++v12;
    ++v15;
  }

  while (v12 != 4);
  v20 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v22 = vdivq_f64(_Q0, vdupq_lane_s64(*&v82.f64[1], 0));
  v23 = vmulq_f64(v81, v22);
  v24 = vmulq_f64(v82, v22);
  v82 = v24;
  *(a1 + 216) = v23;
  *(a1 + 232) = v24.f64[0];
  *v79 = xmmword_1B33B0530;
  *&v79[16] = a3;
  v25 = v80;
  do
  {
    v26 = 0;
    v27 = 0.0;
    v28 = v25;
    do
    {
      v29 = *v28;
      v28 += 4;
      v27 = v27 + *&v79[v26] * v29;
      v26 += 8;
    }

    while (v26 != 24);
    v81.f64[v20] = v80[v20 + 12] + v27;
    ++v20;
    ++v25;
  }

  while (v20 != 4);
  v30 = 0;
  v31 = vdivq_f64(_Q0, vdupq_lane_s64(*&v82.f64[1], 0));
  v32 = vmulq_f64(v81, v31);
  v33 = vmulq_f64(v82, v31);
  v82 = v33;
  *(a1 + 240) = v32;
  *(a1 + 256) = v33.f64[0];
  *v79 = xmmword_1B33B0530;
  *&v79[16] = 0x3FF0000000000000;
  v34 = v80;
  do
  {
    v35 = 0;
    v36 = 0.0;
    v37 = v34;
    do
    {
      v38 = *v37;
      v37 += 4;
      v36 = v36 + *&v79[v35] * v38;
      v35 += 8;
    }

    while (v35 != 24);
    v81.f64[v30] = v80[v30 + 12] + v36;
    ++v30;
    ++v34;
  }

  while (v30 != 4);
  v39 = 0;
  v40 = vdivq_f64(_Q0, vdupq_lane_s64(*&v82.f64[1], 0));
  v41 = vmulq_f64(v81, v40);
  v42 = vmulq_f64(v82, v40);
  v82 = v42;
  *v5 = v41;
  *(a1 + 280) = v42.f64[0];
  *v79 = xmmword_1B33B0540;
  *&v79[16] = a3;
  v43 = v80;
  do
  {
    v44 = 0;
    v45 = 0.0;
    v46 = v43;
    do
    {
      v47 = *v46;
      v46 += 4;
      v45 = v45 + *&v79[v44] * v47;
      v44 += 8;
    }

    while (v44 != 24);
    v81.f64[v39] = v80[v39 + 12] + v45;
    ++v39;
    ++v43;
  }

  while (v39 != 4);
  v48 = 0;
  v49 = vdivq_f64(_Q0, vdupq_lane_s64(*&v82.f64[1], 0));
  v50 = vmulq_f64(v81, v49);
  v51 = vmulq_f64(v82, v49);
  v82 = v51;
  *(a1 + 288) = v50;
  *(a1 + 304) = v51.f64[0];
  *v79 = 0x3FF0000000000000;
  *&v79[8] = xmmword_1B33B0530;
  v52 = v80;
  do
  {
    v53 = 0;
    v54 = 0.0;
    v55 = v52;
    do
    {
      v56 = *v55;
      v55 += 4;
      v54 = v54 + *&v79[v53] * v56;
      v53 += 8;
    }

    while (v53 != 24);
    v81.f64[v48] = v80[v48 + 12] + v54;
    ++v48;
    ++v52;
  }

  while (v48 != 4);
  v57 = 0;
  v58 = vdivq_f64(_Q0, vdupq_lane_s64(*&v82.f64[1], 0));
  v59 = vmulq_f64(v81, v58);
  v60 = vmulq_f64(v82, v58);
  v82 = v60;
  v5[3] = v59;
  *(a1 + 328) = v60.f64[0];
  *v79 = _Q0;
  *&v79[16] = a3;
  v61 = v80;
  do
  {
    v62 = 0;
    v63 = 0.0;
    v64 = v61;
    do
    {
      v65 = *v64;
      v64 += 4;
      v63 = v63 + *&v79[v62] * v65;
      v62 += 8;
    }

    while (v62 != 24);
    v81.f64[v57] = v80[v57 + 12] + v63;
    ++v57;
    ++v61;
  }

  while (v57 != 4);
  v66 = 0;
  v67 = vdivq_f64(_Q0, vdupq_lane_s64(*&v82.f64[1], 0));
  v68 = vmulq_f64(v81, v67);
  v69 = vmulq_f64(v82, v67);
  v82 = v69;
  *(a1 + 336) = v68;
  *(a1 + 352) = v69.f64[0];
  *v79 = _Q0;
  *&v79[16] = 0x3FF0000000000000;
  v70 = v80;
  do
  {
    v71 = 0;
    v72 = 0.0;
    v73 = v70;
    do
    {
      v74 = *v73;
      v73 += 4;
      v72 = v72 + *&v79[v71] * v74;
      v71 += 8;
    }

    while (v71 != 24);
    v81.f64[v66] = v80[v66 + 12] + v72;
    ++v66;
    ++v70;
  }

  while (v66 != 4);
  v75 = vdivq_f64(_Q0, vdupq_lane_s64(*&v82.f64[1], 0));
  v76 = vmulq_f64(v81, v75);
  result = vmulq_f64(v82, v75);
  v5[6] = v76;
  *(a1 + 376) = result.f64[0];
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::LandCoverSettingsConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LandCoverSettingsConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::LandCoverSettingsConstantDataHandle>();
    unk_1EB83BAD0 = 0xDC98991DB7473274;
    qword_1EB83BAD8 = "md::ls::LandCoverSettingsConstantDataHandle]";
    qword_1EB83BAE0 = 43;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LandCoverSettingsConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LandCoverSettingsConstantDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void std::vector<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup *>(v2, v1);
  }
}

void md::LabelLineStore::processWorkUnits(_BYTE *shared_owners, int **a2, int **a3)
{
  v245 = shared_owners;
  if (a2 != a3)
  {
    v3 = a2;
    v226 = vdupq_lane_s32(32639, 0);
    v224 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v225 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    while (1)
    {
      v4 = *v3;
      v5 = **v3;
      v244 = v3;
      if (v5 > 4)
      {
        break;
      }

      if (v5 <= 1)
      {
        if (v5)
        {
          if (v5 != 1)
          {
            goto LABEL_292;
          }

          v13 = *(v4 + 10);
          v14 = *(*&v13 + 48);
          if (!v14)
          {
            goto LABEL_292;
          }

          v15 = *(v4 + 16);
          v239 = v15 ? (*(*v15 + 8))(v15, *(v4 + 5)) : 0;
          v147 = *(v14 + 32);
          v237 = v147[1];
          shared_owners = geo::codec::VectorTile::key(*(v4 + 6));
          v148 = *(*&v13 + 20);
          if (!v148)
          {
            goto LABEL_292;
          }

          v149 = 0;
          v150 = shared_owners[1] & 0x3F;
          v151 = *(v4 + 224);
          v152 = v147[4];
          v231 = (v4 + 48);
          *v234 = v147[3];
          v229 = v4 + 36;
          while (2)
          {
            v153 = *(*&v13 + 16) + v149;
            v154 = (v152 + 16 * v153);
            v155 = v154[1];
            if (v155 >= 2)
            {
              v156 = *v154;
              *&v246[0] = 0;
              v157 = v237 + 8 * v156;
              LOWORD(v248.__vftable) = *(v245 + 153);
              v158 = *v234 + 4 * v156;
              if (!*v234)
              {
                v158 = 0;
              }

              HIDWORD(v248.__vftable) = v153;
              LOBYTE(v248.__shared_owners_) = v151;
              BYTE1(v248.__shared_owners_) = v150;
              v248.__shared_weak_owners_ = v231;
              v249 = v229;
              v250 = v157;
              v251 = v158;
              v252 = 0;
              v253 = 0;
              v254 = v155;
              v255 = 0;
              LODWORD(v256) = 0;
              HIDWORD(v256) = v239;
              v257 = 0;
              v159 = *(v245 + 159);
              v258 = v159;
              v160 = mdm::zone_mallocator::instance(shared_owners);
              if (v155 > 3)
              {
                if (v155 == 4)
                {
                  v172 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v160, 0x100uLL);
                  i64 = v172->i64;
                  v173 = 0;
                  v172[2].i8[1] = v159;
                  v172->i64[1] = 0;
                  *v172[1].i8 = v13;
                  v172[1].i64[1] = 0;
                  v172[2].i8[0] = 3;
                  v172[2].i8[2] = v151;
                  v172[2].i8[3] = v150;
                  v172[2].i16[2] = 0;
                  v172[2].i32[2] = v239;
                  v172[2].i16[6] = v153;
                  v172[2].i16[7] = 4;
                  v172->i64[0] = &unk_1F2A08B78;
                  do
                  {
                    v174 = &v172[v173];
                    v174[5].i64[0] = 0;
                    v174[3] = 0uLL;
                    v174[4] = 0uLL;
                    v174[5].i32[2] = 2139095039;
                    v174[5].i16[6] = 0;
                    v173 += 3;
                    v174[5].i8[14] = 0;
                  }

                  while (v173 != 12);
                  v172[15] = v226;
                  md::LabelLineSegment::createLists(v172, &v248);
                }

                else
                {
                  if (v155 != 5)
                  {
                    goto LABEL_169;
                  }

                  v165 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v160, 0x138uLL);
                  i64 = v165;
                  v166 = 0;
                  v165[4].i8[1] = v159;
                  v165[1] = 0;
                  v165[2] = v13;
                  v165[3] = 0;
                  v165[4].i8[0] = 3;
                  v165[4].i8[2] = v151;
                  v165[4].i8[3] = v150;
                  v165[4].i16[2] = 0;
                  v165[5].i32[0] = v239;
                  v165[5].i16[2] = v153;
                  v165[5].i16[3] = 5;
                  *v165 = &unk_1F2A08BD0;
                  do
                  {
                    v167 = &v165[v166];
                    *(v167 + 10) = 0;
                    *(v167 + 3) = 0uLL;
                    *(v167 + 4) = 0uLL;
                    *(v167 + 22) = 2139095039;
                    *(v167 + 46) = 0;
                    v166 += 6;
                    v167[94] = 0;
                  }

                  while (v166 != 30);
                  for (i = 72; i != 77; ++i)
                  {
                    v165->i32[i] = 32639;
                  }

                  md::LabelLineSegment::createLists(v165, &v248);
                }
              }

              else
              {
                if (v155 != 2)
                {
                  if (v155 == 3)
                  {
                    v161 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v160, 0xD0uLL);
                    i64 = v161;
                    v163 = 0;
                    v161[4].i8[1] = v159;
                    v161[1] = 0;
                    v161[2] = v13;
                    v161[3] = 0;
                    v161[4].i8[0] = 3;
                    v161[4].i8[2] = v151;
                    v161[4].i8[3] = v150;
                    v161[4].i16[2] = 0;
                    v161[5].i32[0] = v239;
                    v161[5].i16[2] = v153;
                    v161[5].i16[3] = 3;
                    *v161 = &unk_1F2A08B20;
                    do
                    {
                      v164 = &v161[v163];
                      v164[10] = 0;
                      *v164[6].i8 = 0uLL;
                      *v164[8].i8 = 0uLL;
                      v164[11].i32[0] = 2139095039;
                      v164[11].i16[2] = 0;
                      v163 += 6;
                      v164[11].i8[6] = 0;
                    }

                    while (v163 != 18);
                    v161[24] = vdup_n_s32(0x7F7Fu);
                    v161[25].i32[0] = 32639;
                    md::LabelLineSegment::createLists(v161, &v248);
                    goto LABEL_176;
                  }

LABEL_169:
                  i64 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v160, 0x70uLL);
                  i64[1] = 0;
                  i64[2] = v13;
                  i64[3] = 0;
                  *(i64 + 32) = 3;
                  *(i64 + 33) = v159;
                  *(i64 + 34) = v151;
                  *(i64 + 35) = v150;
                  *(i64 + 18) = 0;
                  *(i64 + 10) = v239;
                  *(i64 + 22) = v153;
                  *(i64 + 23) = v155;
                  *i64 = &unk_1F2A08A70;
                  i64[6] = 0;
                  i64[7] = 0;
                  i64[8] = 0;
                  i64[10] = 0;
                  i64[11] = 0;
                  i64[12] = 0;
                  md::LabelLineSegment::createLists(i64, &v248);
                  goto LABEL_176;
                }

                v169 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v160, 0x98uLL);
                i64 = v169;
                v170 = 0;
                v169[4].i8[1] = v159;
                v169[1] = 0;
                v169[2] = v13;
                v169[3] = 0;
                v169[4].i8[0] = 3;
                v169[4].i8[2] = v151;
                v169[4].i8[3] = v150;
                v169[4].i16[2] = 0;
                v169[5].i32[0] = v239;
                v169[5].i16[2] = v153;
                v169[5].i16[3] = 2;
                *v169 = &unk_1F2A08AC8;
                do
                {
                  v171 = &v169[v170];
                  v171[10] = 0;
                  *v171[6].i8 = 0uLL;
                  *v171[8].i8 = 0uLL;
                  v171[11].i32[0] = 2139095039;
                  v171[11].i16[2] = 0;
                  v170 += 6;
                  v171[11].i8[6] = 0;
                }

                while (v170 != 12);
                v169[18] = vdup_n_s32(0x7F7Fu);
                md::LabelLineSegment::createLists(v169, &v248);
              }

LABEL_176:
              *&v246[0] = i64;
              v175 = md::LabelLineStore::lineZSetForZ(v245, v150, v151);
              md::LabelLineZSet::addSegment(v175, v246);
              shared_owners = *&v246[0];
              atomic_store(0, v245 + 156);
              if (shared_owners)
              {
                shared_owners = (*(*shared_owners + 8))(shared_owners);
              }

              v148 = *(*&v13 + 20);
            }

            if (++v149 >= v148)
            {
              goto LABEL_292;
            }

            continue;
          }
        }

LABEL_27:
        shared_owners = md::LabelLineStore::addRoad(v245, v4);
        goto LABEL_292;
      }

      if (v5 == 2)
      {
        v22 = *(v4 + 16);
        v24 = *(*&v22 + 32);
        v23 = *(*&v22 + 40);
        if (v23 == v24)
        {
          goto LABEL_292;
        }

        v25 = 0;
        v26 = 0;
        v27 = v4 + 36;
        v28 = *(v4 + 145);
        v29 = *(v4 + 224);
        v30 = (v4 + 48);
        while (2)
        {
          v32 = (v24 + 24 * v25);
          v31 = *v32;
          v33 = v32[1] - *v32;
          v34 = v33 >> 3;
          if ((v33 >> 3) >= 2)
          {
            *&v246[0] = 0;
            v35 = v33 >> 3;
            LOWORD(v248.__vftable) = *(v245 + 153);
            HIDWORD(v248.__vftable) = v26;
            LOBYTE(v248.__shared_owners_) = v29;
            BYTE1(v248.__shared_owners_) = v28;
            v248.__shared_weak_owners_ = v30;
            v249 = v27;
            v254 = v33 >> 3;
            v250 = v31;
            v251 = 0;
            v252 = 0;
            v253 = 0;
            v256 = 0;
            v257 = 0;
            v255 = 0;
            v36 = *(v245 + 159);
            v258 = v36;
            v37 = mdm::zone_mallocator::instance(shared_owners);
            if (v34 > 3)
            {
              if (v34 == 4)
              {
                v49 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v37, 0x100uLL);
                v39 = v49->i64;
                v50 = 0;
                v49->i64[1] = 0;
                *v49[1].i8 = v22;
                v49[1].i64[1] = 0;
                v49[2].i8[0] = 4;
                v49[2].i8[1] = v36;
                v49[2].i8[2] = v29;
                v49[2].i8[3] = v28;
                v49[2].i16[2] = 0;
                v49[2].i32[2] = 0;
                v49[2].i16[6] = v26;
                v49[2].i16[7] = v35;
                v49->i64[0] = &unk_1F2A08B78;
                do
                {
                  v51 = &v49[v50];
                  v51[5].i64[0] = 0;
                  v51[3] = 0uLL;
                  v51[4] = 0uLL;
                  v51[5].i32[2] = 2139095039;
                  v51[5].i16[6] = 0;
                  v50 += 3;
                  v51[5].i8[14] = 0;
                }

                while (v50 != 12);
                v49[15] = v226;
                md::LabelLineSegment::createLists(v49, &v248);
              }

              else
              {
                if (v34 != 5)
                {
                  goto LABEL_51;
                }

                v42 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v37, 0x138uLL);
                v39 = v42;
                v43 = 0;
                v42[1] = 0;
                v42[2] = v22;
                v42[3] = 0;
                v42[4].i8[0] = 4;
                v42[4].i8[1] = v36;
                v42[4].i8[2] = v29;
                v42[4].i8[3] = v28;
                v42[4].i16[2] = 0;
                v42[5].i32[0] = 0;
                v42[5].i16[2] = v26;
                v42[5].i16[3] = v35;
                *v42 = &unk_1F2A08BD0;
                do
                {
                  v44 = &v42[v43];
                  *(v44 + 10) = 0;
                  *(v44 + 3) = 0uLL;
                  *(v44 + 4) = 0uLL;
                  *(v44 + 22) = 2139095039;
                  *(v44 + 46) = 0;
                  v43 += 6;
                  v44[94] = 0;
                }

                while (v43 != 30);
                for (j = 72; j != 77; ++j)
                {
                  v42->i32[j] = 32639;
                }

                md::LabelLineSegment::createLists(v42, &v248);
              }
            }

            else
            {
              if (v34 != 2)
              {
                if (v34 == 3)
                {
                  v38 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v37, 0xD0uLL);
                  v39 = v38;
                  v40 = 0;
                  v38[1] = 0;
                  v38[2] = v22;
                  v38[3] = 0;
                  v38[4].i8[0] = 4;
                  v38[4].i8[1] = v36;
                  v38[4].i8[2] = v29;
                  v38[4].i8[3] = v28;
                  v38[4].i16[2] = 0;
                  v38[5].i32[0] = 0;
                  v38[5].i16[2] = v26;
                  v38[5].i16[3] = v35;
                  *v38 = &unk_1F2A08B20;
                  do
                  {
                    v41 = &v38[v40];
                    v41[10] = 0;
                    *v41[6].i8 = 0uLL;
                    *v41[8].i8 = 0uLL;
                    v41[11].i32[0] = 2139095039;
                    v41[11].i16[2] = 0;
                    v40 += 6;
                    v41[11].i8[6] = 0;
                  }

                  while (v40 != 18);
                  v38[24] = vdup_n_s32(0x7F7Fu);
                  v38[25].i32[0] = 32639;
                  md::LabelLineSegment::createLists(v38, &v248);
                  goto LABEL_58;
                }

LABEL_51:
                v39 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v37, 0x70uLL);
                v39[1] = 0;
                v39[2] = v22;
                v39[3] = 0;
                *(v39 + 32) = 4;
                *(v39 + 33) = v36;
                *(v39 + 34) = v29;
                *(v39 + 35) = v28;
                *(v39 + 18) = 0;
                *(v39 + 10) = 0;
                *(v39 + 22) = v26;
                *(v39 + 23) = v35;
                *v39 = &unk_1F2A08A70;
                v39[6] = 0;
                v39[7] = 0;
                v39[8] = 0;
                v39[10] = 0;
                v39[11] = 0;
                v39[12] = 0;
                md::LabelLineSegment::createLists(v39, &v248);
                goto LABEL_58;
              }

              v46 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v37, 0x98uLL);
              v39 = v46;
              v47 = 0;
              v46[1] = 0;
              v46[2] = v22;
              v46[3] = 0;
              v46[4].i8[0] = 4;
              v46[4].i8[1] = v36;
              v46[4].i8[2] = v29;
              v46[4].i8[3] = v28;
              v46[4].i16[2] = 0;
              v46[5].i32[0] = 0;
              v46[5].i16[2] = v26;
              v46[5].i16[3] = v35;
              *v46 = &unk_1F2A08AC8;
              do
              {
                v48 = &v46[v47];
                v48[10] = 0;
                *v48[6].i8 = 0uLL;
                *v48[8].i8 = 0uLL;
                v48[11].i32[0] = 2139095039;
                v48[11].i16[2] = 0;
                v47 += 6;
                v48[11].i8[6] = 0;
              }

              while (v47 != 12);
              v46[18] = vdup_n_s32(0x7F7Fu);
              md::LabelLineSegment::createLists(v46, &v248);
            }

LABEL_58:
            *&v246[0] = v39;
            v52 = md::LabelLineStore::lineZSetForZ(v245, v28, v29);
            md::LabelLineZSet::addSegment(v52, v246);
            shared_owners = *&v246[0];
            atomic_store(0, v245 + 156);
            if (shared_owners)
            {
              shared_owners = (*(*shared_owners + 8))(shared_owners);
            }

            v24 = *(*&v22 + 32);
            v23 = *(*&v22 + 40);
          }

          v25 = ++v26;
          if (0xAAAAAAAAAAAAAAABLL * ((v23 - v24) >> 3) <= v26)
          {
            goto LABEL_292;
          }

          continue;
        }
      }

      if (v5 == 3)
      {
        goto LABEL_27;
      }

      v8 = *(v245 + 12);
      v7 = *(v245 + 13);
      if (v8 != v7)
      {
        do
        {
          v7 -= 14;
          std::allocator_traits<geo::allocator_adapter<md::LabelLineZSet,mdm::zone_mallocator>>::destroy[abi:nn200100]<md::LabelLineZSet,void,0>(v7);
        }

        while (v7 != v8);
        v9 = v245;
        *(v245 + 13) = v8;
        goto LABEL_269;
      }

LABEL_292:
      v3 = v244 + 1;
      if (v244 + 1 == a3)
      {
        return;
      }
    }

    if (v5 <= 7)
    {
      if (v5 == 5)
      {
        v53 = *(v4 + 1);
        v54 = *(v4 + 2);
        if (v54)
        {
          atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
        }

        v55 = v4;
        v56 = *(v4 + 13);
        v235 = v53;
        v57 = geo::codec::VectorTile::key(v53);
        v230 = *(v57 + 1);
        v240 = v55;
        v232 = *(v55 + 224);
        v58 = mdm::zone_mallocator::instance(v57);
        v59 = pthread_rwlock_rdlock((v58 + 32));
        if (v59)
        {
          geo::read_write_lock::logFailure(v59, "read lock", v60);
        }

        v61 = malloc_type_zone_malloc(*v58, 0x40uLL, 0x10600401BC8BD14uLL);
        atomic_fetch_add((v58 + 24), 1u);
        geo::read_write_lock::unlock((v58 + 32));
        v62 = *(v240 + 234);
        v63 = v235;
        v61->~__shared_weak_count = v235;
        v61->~__shared_weak_count_0 = v54;
        if (v54)
        {
          atomic_fetch_add_explicit((v54 + 16), 1uLL, memory_order_relaxed);
        }

        v61->__on_zero_shared = v56;
        v61->__get_deleter = 0;
        p_get_deleter = &v61->__get_deleter;
        v61->__on_zero_shared_weak = 0;
        v61[1].~__shared_weak_count = 0;
        LODWORD(v61[1].__on_zero_shared) = 0;
        BYTE4(v61[1].__on_zero_shared) = v62;
        v248.__vftable = v61;
        v64 = *(v56 + 42);
        if (*(v56 + 42))
        {
          v223 = v54;
          v65 = 0;
          v66 = (*(v235 + 231) + 40 * *(v56 + 32) + 24);
          v227 = v61;
          do
          {
            if ((v66[4] & 1) == 0)
            {
              v67 = (*(v63 + 4) + 168 * *(v66 - 6));
              *&v246[0] = 0;
              v68 = geo::codec::multiSectionFeaturePoints(v67, *v66, v246);
              v69 = geo::codec::multiSectionFeatureElevations(v67, *v66, v247);
              v70 = *&v246[0];
              if (*&v246[0] >= 2uLL)
              {
                v71 = v69;
                v72 = *(v240 + 16);
                if (v72)
                {
                  v73 = (**v72)(v72, v67, *(v240 + 232));
                  LODWORD(v72) = (*(**(v240 + 16) + 8))(*(v240 + 16), v67);
                }

                else
                {
                  v73 = 0;
                }

                v61 = v227;
                v74 = md::LabelLineStore::addSegment<GeoCodecsRoadFeature>(v245, v67, *v66, v230 & 0x3F, v232, (v240 + 48), (v240 + 36), v68, v71, v70, v73, v72, *(v56 + 24));
                LODWORD(v227[1].__on_zero_shared) += (*(*v74 + 16))(v74);
                std::vector<md::LabelLineSegmentInfo,geo::allocator_adapter<md::LabelLineSegmentInfo,mdm::zone_mallocator>>::resize(p_get_deleter, ((v61->__on_zero_shared_weak - v61->__get_deleter) >> 4) + 1);
                on_zero_shared_weak = v227->__on_zero_shared_weak;
                *(on_zero_shared_weak - 2) = v74;
                *(on_zero_shared_weak - 8) = *(v66 + 6) ^ 1;
                v63 = v235;
              }

              v64 = *(v56 + 42);
            }

            ++v65;
            v66 += 20;
          }

          while (v65 < v64);
          v54 = v223;
          if (v61->__get_deleter != v61->__on_zero_shared_weak)
          {
            v76 = md::LabelLineStore::lineZSetForZ(v245, v230 & 0x3F, v232);
            v77 = v76;
            v79 = *(v76 + 7);
            v78 = *(v76 + 8);
            if (v79 >= v78)
            {
              v176 = *(v76 + 6);
              v177 = v79 - v176;
              v178 = (v79 - v176) >> 3;
              v179 = v178 + 1;
              if ((v178 + 1) >> 61)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v180 = v78 - v176;
              if (v180 >> 2 > v179)
              {
                v179 = v180 >> 2;
              }

              if (v180 >= 0x7FFFFFFFFFFFFFF8)
              {
                v181 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v181 = v179;
              }

              if (v181)
              {
                v182 = mdm::zone_mallocator::instance(v76);
                v183 = pthread_rwlock_rdlock((v182 + 32));
                if (v183)
                {
                  geo::read_write_lock::logFailure(v183, "read lock", v184);
                }

                v185 = malloc_type_zone_malloc(*v182, 8 * v181, 0x2004093837F09uLL);
                atomic_fetch_add((v182 + 24), 1u);
                geo::read_write_lock::unlock((v182 + 32));
                v176 = *(v77 + 6);
                v177 = *(v77 + 7) - v176;
                v186 = v177 >> 3;
                v61 = v248.__vftable;
              }

              else
              {
                v185 = 0;
                v186 = v178;
              }

              v217 = &v185[8 * v178];
              v218 = &v185[8 * v181];
              v248.__vftable = 0;
              v219 = &v217[-v186];
              *v217 = v61;
              v80 = v217 + 1;
              v220 = memcpy(v219, v176, v177);
              v221 = *(v77 + 6);
              *(v77 + 6) = v219;
              *(v77 + 7) = v80;
              *(v77 + 8) = v218;
              if (v221)
              {
                v222 = mdm::zone_mallocator::instance(v220);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>>(v222, v221);
              }
            }

            else
            {
              v248.__vftable = 0;
              *v79 = v61;
              v80 = v79 + 8;
            }

            *(v77 + 7) = v80;
          }
        }

        std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>::reset[abi:nn200100](&v248.__vftable, 0);
        if (!v54)
        {
          goto LABEL_292;
        }

        shared_owners = v54;
      }

      else if (v5 == 6)
      {
        v16 = *(v4 + 16);
        if (v16)
        {
          v17 = (**v16)(v16, *(v4 + 5), *(v4 + 232));
          v16 = (*(**(v4 + 16) + 8))(*(v4 + 16), *(v4 + 5));
          v18 = v16;
        }

        else
        {
          v18 = 0;
          v17 = 0;
        }

        v84 = *(v4 + 14);
        v83 = *(v4 + 15);
        *&v246[0] = v84;
        *(&v246[0] + 1) = v83;
        if (v83)
        {
          atomic_fetch_add_explicit((v83 + 8), 1uLL, memory_order_relaxed);
        }

        v242 = v83;
        v85 = *(v84 + 216) - *(v84 + 208);
        if (v85)
        {
          v86 = 0;
          v87 = 0;
          v88 = *(v84 + 177);
          v89 = 0xAAAAAAAAAAAAAAABLL * (v85 >> 5);
          do
          {
            v90 = (*(v84 + 208) + 96 * v86);
            v91 = *v90;
            v92 = v90[1] - *v90;
            v93 = v92 >> 3;
            if ((v92 >> 3) >= 2)
            {
              v94 = v92 >> 3;
              if (v90[5] == v90[4])
              {
                v95 = 0;
              }

              else
              {
                v95 = v90[4];
              }

              v247[0] = 0;
              LOWORD(v248.__vftable) = *(v245 + 153);
              HIDWORD(v248.__vftable) = v87;
              LOBYTE(v248.__shared_owners_) = v88;
              BYTE1(v248.__shared_owners_) = v88;
              v248.__shared_weak_owners_ = (v90 + 8);
              v249 = 0;
              v250 = v91;
              v251 = v95;
              v252 = 0;
              v253 = 0;
              v254 = v94;
              v255 = 0;
              v256 = __PAIR64__(v18, v17);
              v257 = 0;
              v258 = *(v245 + 159);
              v96 = mdm::zone_mallocator::instance(v16);
              if (v93 > 3)
              {
                if (v93 == 4)
                {
                  v101 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v96, 0x100uLL);
                  md::LabelLineSegment::LabelLineSegment(v101, v246, &v248);
                }

                if (v93 == 5)
                {
                  v98 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v96, 0x138uLL);
                  md::LabelLineSegment::LabelLineSegment(v98, v246, &v248);
                }
              }

              else
              {
                if (v93 == 2)
                {
                  v100 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v96, 0x98uLL);
                  md::LabelLineSegment::LabelLineSegment(v100, v246, &v248);
                }

                if (v93 == 3)
                {
                  v97 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v96, 0xD0uLL);
                  md::LabelLineSegment::LabelLineSegment(v97, v246, &v248);
                }
              }

              v99 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v96, 0x70uLL);
              md::LabelLineSegment::LabelLineSegment(v99, v246, &v248);
            }

            v86 = ++v87;
          }

          while (v89 > v87);
        }

        shared_owners = v242;
        if (!v242)
        {
          goto LABEL_292;
        }
      }

      else
      {
        shared_owners = *(v4 + 16);
        if (shared_owners)
        {
          v6 = (**shared_owners)(shared_owners, *(v4 + 5), *(v4 + 232));
          shared_owners = (*(**(v4 + 16) + 8))(*(v4 + 16), *(v4 + 5));
        }

        else
        {
          v6 = 0;
        }

        v102 = *(v4 + 14);
        v103 = *(v4 + 15);
        v247[0] = v102;
        v247[1] = v103;
        if (v103)
        {
          atomic_fetch_add_explicit((v103 + 8), 1uLL, memory_order_relaxed);
        }

        v105 = v102 + 184;
        v104 = *(v102 + 184);
        v106 = 0xAAAAAAAAAAAAAAABLL * ((*(v105 + 8) - v104) >> 3);
        v246[0] = v225;
        v246[1] = v224;
        if (v106 >= 2)
        {
          v247[2] = 0;
          LOWORD(v248.__vftable) = *(v245 + 153);
          HIDWORD(v248.__vftable) = 0;
          LOWORD(v248.__shared_owners_) = 0;
          v248.__shared_weak_owners_ = v246;
          v249 = 0;
          v250 = 0;
          v251 = 0;
          v252 = v104;
          v253 = 0;
          v254 = v106;
          v255 = 0x3F80000000000000;
          v256 = __PAIR64__(shared_owners, v6);
          v257 = 0;
          v258 = *(v245 + 159);
          v107 = mdm::zone_mallocator::instance(shared_owners);
          if (v106 > 3)
          {
            if (v106 == 4)
            {
              v216 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v107, 0x100uLL);
              md::LabelLineSegment::LabelLineSegment(v216, v247, &v248);
            }

            if (v106 == 5)
            {
              v146 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v107, 0x138uLL);
              md::LabelLineSegment::LabelLineSegment(v146, v247, &v248);
            }
          }

          else
          {
            if (v106 == 2)
            {
              v215 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v107, 0x98uLL);
              md::LabelLineSegment::LabelLineSegment(v215, v247, &v248);
            }

            if (v106 == 3)
            {
              v108 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v107, 0xD0uLL);
              md::LabelLineSegment::LabelLineSegment(v108, v247, &v248);
            }
          }

          v214 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v107, 0x70uLL);
          md::LabelLineSegment::LabelLineSegment(v214, v247, &v248);
        }

        if (!v103)
        {
          goto LABEL_292;
        }

        shared_owners = v103;
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](shared_owners);
      goto LABEL_292;
    }

    if (v5 != 8)
    {
      if (v5 != 10)
      {
        if (v5 != 9)
        {
          goto LABEL_292;
        }

        v10 = *(v4 + 1);
        shared_owners = geo::codec::VectorTile::key(v10);
        v12 = *(v245 + 12);
        v11 = *(v245 + 13);
        if (v12 == v11)
        {
          goto LABEL_292;
        }

        while (*(v12 + 1) != (*(shared_owners + 1) & 0x3F))
        {
          v12 += 112;
          if (v12 == v11)
          {
            goto LABEL_292;
          }
        }

        v142 = *(v4 + 2);
        if (v142)
        {
          atomic_fetch_add_explicit(&v142->__shared_owners_, 1uLL, memory_order_relaxed);
          v143 = v12 + 16;
          v144 = *(v12 + 16);
          v145 = *(v12 + 24);
          v243 = (v12 + 24);
          atomic_fetch_add_explicit(&v142->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v143 = v12 + 16;
          v144 = *(v12 + 16);
          v145 = *(v12 + 24);
          v243 = (v12 + 24);
        }

        while (1)
        {
          if (v144 == v145)
          {
            goto LABEL_238;
          }

          md::LabelLineSegment::tile(&v248, *v144);
          v191 = v248.__vftable;
          shared_owners = v248.__shared_owners_;
          if (v248.__shared_owners_)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v248.__shared_owners_);
          }

          if (v191 == v10)
          {
            break;
          }

          ++v144;
        }

        if (v144 == v145)
        {
LABEL_238:
          v144 = v145;
          goto LABEL_239;
        }

        for (k = v144 + 1; k != v145; ++k)
        {
          md::LabelLineSegment::tile(&v248, *k);
          v197 = v248.__vftable;
          shared_owners = v248.__shared_owners_;
          if (v248.__shared_owners_)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v248.__shared_owners_);
          }

          if (v197 != v10)
          {
            v198 = *k;
            *k = 0;
            shared_owners = *v144;
            *v144 = v198;
            if (shared_owners)
            {
              shared_owners = (*(*shared_owners + 8))(shared_owners);
            }

            ++v144;
          }
        }

LABEL_239:
        if (v142)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v142);
        }

        v199 = v144 != *v243;
        if (v144 != *v243)
        {
          shared_owners = std::vector<std::unique_ptr<md::LabelLineSegment>,geo::allocator_adapter<std::unique_ptr<md::LabelLineSegment>,mdm::zone_mallocator>>::erase(v143, v144, *v243);
        }

        if (v142)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v142);
        }

        v201 = *(v4 + 1);
        v200 = *(v4 + 2);
        if (v200)
        {
          atomic_fetch_add_explicit(&v200->__shared_owners_, 1uLL, memory_order_relaxed);
          v202 = (v12 + 56);
          v203 = *(v12 + 56);
          v204 = *(v12 + 48);
          atomic_fetch_add_explicit(&v200->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v202 = (v12 + 56);
          v203 = *(v12 + 56);
          v204 = *(v12 + 48);
        }

        while (2)
        {
          if (v204 == v203)
          {
            v204 = v203;
          }

          else
          {
            v205 = *v204;
            shared_owners = *(*v204 + 1);
            if (shared_owners)
            {
              shared_owners = std::__shared_weak_count::lock(shared_owners);
              if (shared_owners)
              {
                v206 = *v205;
                std::__shared_weak_count::__release_shared[abi:nn200100](shared_owners);
                if (v206 == v201)
                {
                  goto LABEL_270;
                }

                goto LABEL_254;
              }
            }

            if (v201)
            {
LABEL_254:
              ++v204;
              continue;
            }

LABEL_270:
            if (v204 != v203)
            {
              for (m = v204 + 1; ; ++m)
              {
                if (m == v203)
                {
                  goto LABEL_256;
                }

                v211 = *m;
                shared_owners = *(*m + 1);
                if (!shared_owners)
                {
                  break;
                }

                shared_owners = std::__shared_weak_count::lock(shared_owners);
                if (!shared_owners)
                {
                  break;
                }

                v212 = *v211;
                std::__shared_weak_count::__release_shared[abi:nn200100](shared_owners);
                if (v212 != v201)
                {
                  goto LABEL_278;
                }

LABEL_279:
                ;
              }

              if (!v201)
              {
                goto LABEL_279;
              }

LABEL_278:
              v213 = *m;
              *m = 0;
              std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>::reset[abi:nn200100](v204++, v213);
              goto LABEL_279;
            }
          }

          break;
        }

LABEL_256:
        if (v200)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v200);
        }

        v207 = *v202;
        if (v204 != v207)
        {
          v208 = *(v12 + 56);
          if (v207 != v208)
          {
            do
            {
              v209 = *v207;
              *v207++ = 0;
              std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>::reset[abi:nn200100](v204++, v209);
            }

            while (v207 != v208);
            v208 = *(v12 + 56);
          }

          while (v208 != v204)
          {
            std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>::reset[abi:nn200100](--v208, 0);
          }

          *(v12 + 56) = v204;
          v199 = 1;
        }

        if (v200)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v200);
        }

        if (!v199)
        {
          goto LABEL_292;
        }

LABEL_268:
        v9 = v245;
LABEL_269:
        atomic_store(0, v9 + 156);
        goto LABEL_292;
      }

      v20 = *(v245 + 12);
      v19 = *(v245 + 13);
      if (v20 == v19)
      {
        goto LABEL_292;
      }

      v21 = *(v4 + 3);
      while (*(v20 + 1) != *(v21 + 1))
      {
        v20 += 112;
        if (v20 == v19)
        {
          goto LABEL_292;
        }
      }

      v136 = *(v4 + 4);
      if (v136)
      {
        atomic_fetch_add_explicit(&v136->__shared_owners_, 1uLL, memory_order_relaxed);
        v139 = *(v20 + 16);
        v137 = v20 + 16;
        v138 = v139;
        v140 = (v137 + 8);
        v141 = *(v137 + 8);
        atomic_fetch_add_explicit(&v136->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v187 = *(v20 + 16);
        v137 = v20 + 16;
        v138 = v187;
        v140 = (v137 + 8);
        v141 = *(v137 + 8);
      }

      while (2)
      {
        if (v138 == v141)
        {
          v138 = v141;
        }

        else
        {
          if (*(*v138 + 32) == 4)
          {
            v188 = *(*v138 + 16);
            shared_owners = v188[1];
            if (shared_owners)
            {
              shared_owners = std::__shared_weak_count::lock(shared_owners);
              if (shared_owners)
              {
                v189 = *v188;
                std::__shared_weak_count::__release_shared[abi:nn200100](shared_owners);
                if (v189 == v21)
                {
                  goto LABEL_215;
                }

                goto LABEL_199;
              }
            }
          }

          if (v21)
          {
LABEL_199:
            ++v138;
            continue;
          }

LABEL_215:
          if (v138 != v141)
          {
            for (n = v138 + 1; ; ++n)
            {
              if (n == v141)
              {
                goto LABEL_201;
              }

              if (*(*n + 32) == 4 && (v193 = *(*n + 16), (shared_owners = v193[1]) != 0) && (shared_owners = std::__shared_weak_count::lock(shared_owners)) != 0)
              {
                v194 = *v193;
                std::__shared_weak_count::__release_shared[abi:nn200100](shared_owners);
                if (v194 == v21)
                {
                  continue;
                }
              }

              else if (!v21)
              {
                continue;
              }

              v195 = *n;
              *n = 0;
              shared_owners = *v138;
              *v138 = v195;
              if (shared_owners)
              {
                shared_owners = (*(*shared_owners + 8))(shared_owners);
              }

              ++v138;
            }
          }
        }

        break;
      }

LABEL_201:
      if (v136)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v136);
      }

      v190 = *v140;
      if (v138 != *v140)
      {
        shared_owners = std::vector<std::unique_ptr<md::LabelLineSegment>,geo::allocator_adapter<std::unique_ptr<md::LabelLineSegment>,mdm::zone_mallocator>>::erase(v137, v138, *v140);
      }

      if (v136)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v136);
      }

      if (v138 == v190)
      {
        goto LABEL_292;
      }

      goto LABEL_268;
    }

    v81 = *(v4 + 16);
    if (v81)
    {
      v82 = (**v81)(v81, *(v4 + 5), *(v4 + 232));
      v241 = (*(**(v4 + 16) + 8))(*(v4 + 16), *(v4 + 5));
    }

    else
    {
      v241 = 0;
      v82 = 0;
    }

    v110 = *(v4 + 5);
    v109 = *(v4 + 6);
    shared_owners = geo::codec::VectorTile::key(v109);
    v111 = *(v110 + 20);
    if (!v111)
    {
      goto LABEL_292;
    }

    v112 = 0;
    v113 = shared_owners[1] & 0x3F;
    v114 = *(v4 + 224);
    v115 = *(v109 + 176);
    *v233 = v4 + 36;
    v236 = (v4 + 48);
    while (1)
    {
      v116 = (*(v115 + 32) + 16 * *(v110 + 16) + 16 * v112);
      v117 = v116[1];
      if (v117 >= 2)
      {
        break;
      }

LABEL_141:
      if (++v112 >= v111)
      {
        goto LABEL_292;
      }
    }

    v118 = *(v115 + 8) + 8 * *v116;
    *&v246[0] = 0;
    LOWORD(v248.__vftable) = *(v245 + 153);
    HIDWORD(v248.__vftable) = v112;
    LOBYTE(v248.__shared_owners_) = v114;
    BYTE1(v248.__shared_owners_) = v113;
    v248.__shared_weak_owners_ = v236;
    v249 = *v233;
    v250 = v118;
    v254 = v117;
    v255 = 0;
    v251 = 0;
    v252 = 0;
    v253 = 0;
    v256 = __PAIR64__(v241, v82);
    v257 = 0;
    v119 = *(v245 + 159);
    v258 = v119;
    v120 = mdm::zone_mallocator::instance(shared_owners);
    if (v117 > 3)
    {
      if (v117 == 4)
      {
        v132 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v120, 0x100uLL);
        v122 = v132->i64;
        v133 = 0;
        v132->i64[1] = 0;
        v132[1].i64[0] = v110;
        v132[1].i64[1] = 0;
        v132[2].i8[0] = 2;
        v132[2].i8[1] = v119;
        v132[2].i8[2] = v114;
        v132[2].i8[3] = v113;
        v132[2].i16[2] = 0;
        v132[2].i8[6] = v82;
        v132[2].i32[2] = 0;
        v132[2].i16[6] = v112;
        v132[2].i16[7] = 4;
        v132->i64[0] = &unk_1F2A08B78;
        do
        {
          v134 = &v132[v133];
          v134[5].i64[0] = 0;
          v134[3] = 0uLL;
          v134[4] = 0uLL;
          v134[5].i32[2] = 2139095039;
          v134[5].i16[6] = 0;
          v133 += 3;
          v134[5].i8[14] = 0;
        }

        while (v133 != 12);
        v132[15] = v226;
        md::LabelLineSegment::createLists(v132, v110, &v248);
        goto LABEL_138;
      }

      if (v117 == 5)
      {
        v125 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v120, 0x138uLL);
        v122 = v125;
        v126 = 0;
        *(v125 + 1) = 0;
        *(v125 + 2) = v110;
        *(v125 + 3) = 0;
        v125[32] = 2;
        v125[33] = v119;
        v125[34] = v114;
        v125[35] = v113;
        *(v125 + 18) = 0;
        v125[38] = v82;
        *(v125 + 10) = 0;
        *(v125 + 22) = v112;
        *(v125 + 23) = 5;
        *v125 = &unk_1F2A08BD0;
        do
        {
          v127 = &v125[v126];
          *(v127 + 10) = 0;
          *(v127 + 3) = 0uLL;
          *(v127 + 4) = 0uLL;
          *(v127 + 22) = 2139095039;
          *(v127 + 46) = 0;
          v126 += 48;
          v127[94] = 0;
        }

        while (v126 != 240);
        for (ii = 288; ii != 308; ii += 4)
        {
          *&v125[ii] = 32639;
        }

        md::LabelLineSegment::createLists(v125, v110, &v248);
        goto LABEL_138;
      }
    }

    else
    {
      if (v117 == 2)
      {
        v129 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v120, 0x98uLL);
        v122 = v129;
        v130 = 0;
        v129[1] = 0;
        v129[2] = v110;
        v129[3] = 0;
        v129[4].i8[0] = 2;
        v129[4].i8[1] = v119;
        v129[4].i8[2] = v114;
        v129[4].i8[3] = v113;
        v129[4].i16[2] = 0;
        v129[4].i8[6] = v82;
        v129[5].i32[0] = 0;
        v129[5].i16[2] = v112;
        v129[5].i16[3] = 2;
        *v129 = &unk_1F2A08AC8;
        do
        {
          v131 = &v129[v130];
          v131[10] = 0;
          *v131[6].i8 = 0uLL;
          *v131[8].i8 = 0uLL;
          v131[11].i32[0] = 2139095039;
          v131[11].i16[2] = 0;
          v130 += 6;
          v131[11].i8[6] = 0;
        }

        while (v130 != 12);
        v129[18] = vdup_n_s32(0x7F7Fu);
        md::LabelLineSegment::createLists(v129, v110, &v248);
        goto LABEL_138;
      }

      if (v117 == 3)
      {
        v121 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v120, 0xD0uLL);
        v122 = v121;
        v123 = 0;
        v121[1] = 0;
        v121[2] = v110;
        v121[3] = 0;
        v121[4].i8[0] = 2;
        v121[4].i8[1] = v119;
        v121[4].i8[2] = v114;
        v121[4].i8[3] = v113;
        v121[4].i16[2] = 0;
        v121[4].i8[6] = v82;
        v121[5].i32[0] = 0;
        v121[5].i16[2] = v112;
        v121[5].i16[3] = 3;
        *v121 = &unk_1F2A08B20;
        do
        {
          v124 = &v121[v123];
          v124[10] = 0;
          *v124[6].i8 = 0uLL;
          *v124[8].i8 = 0uLL;
          v124[11].i32[0] = 2139095039;
          v124[11].i16[2] = 0;
          v123 += 6;
          v124[11].i8[6] = 0;
        }

        while (v123 != 18);
        v121[24] = vdup_n_s32(0x7F7Fu);
        v121[25].i32[0] = 32639;
        md::LabelLineSegment::createLists(v121, v110, &v248);
        goto LABEL_138;
      }
    }

    v122 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v120, 0x70uLL);
    v122[1] = 0;
    v122[2] = v110;
    v122[3] = 0;
    *(v122 + 32) = 2;
    *(v122 + 33) = v119;
    *(v122 + 34) = v114;
    *(v122 + 35) = v113;
    *(v122 + 18) = 0;
    *(v122 + 38) = v82;
    *(v122 + 10) = 0;
    *(v122 + 22) = v112;
    *(v122 + 23) = v117;
    *v122 = &unk_1F2A08A70;
    v122[6] = 0;
    v122[7] = 0;
    v122[8] = 0;
    v122[10] = 0;
    v122[11] = 0;
    v122[12] = 0;
    md::LabelLineSegment::createLists(v122, v110, &v248);
LABEL_138:
    *&v246[0] = v122;
    v135 = md::LabelLineStore::lineZSetForZ(v245, v113, v114);
    md::LabelLineZSet::addSegment(v135, v246);
    shared_owners = *&v246[0];
    atomic_store(0, v245 + 156);
    if (shared_owners)
    {
      shared_owners = (*(*shared_owners + 8))(shared_owners);
    }

    v111 = *(v110 + 20);
    goto LABEL_141;
  }
}