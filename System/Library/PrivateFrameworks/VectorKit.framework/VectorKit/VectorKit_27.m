void sub_1B298AD18(_Unwind_Exception *a1)
{
  *v1 = &unk_1F2A2D928;
  v4 = v1[3];
  v1[3] = 0;
  if (v4)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v4);
  }

  v5 = mdm::zone_mallocator::instance(v4);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v5, v1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  _Unwind_Resume(a1);
}

double gm::Matrix<double,4,4>::inverted<int,void>(double *a1, double *a2)
{
  v3 = a2[8];
  v2 = a2[9];
  v4 = a2[12];
  v5 = a2[13];
  v71 = v2 * v4 - v5 * v3;
  v57 = v5 * v3;
  v60 = v2 * v4;
  v7 = a2[6];
  v6 = a2[7];
  v8 = a2[4];
  v9 = a2[5];
  v10 = v9 * v3;
  v11 = v8 * v2;
  v68 = v9 * v3 - v8 * v2;
  v66 = v8 * v5 - v9 * v4;
  v63 = v8 * v5;
  v58 = v9 * v4;
  v13 = a2[14];
  v12 = a2[15];
  v14 = a2[10];
  v15 = a2[11];
  v74 = v71 * v7 + v68 * v13 + v66 * v14;
  v16 = a2[1];
  v17 = a2[2];
  v18 = *a2;
  v19 = v16 * v4;
  v20 = v16 * v3;
  v69 = v16 * v4 * v7;
  v21 = *a2 * v9;
  v64 = v12 * v17 * (v9 * v3) + v6 * v17 * (v2 * v4) + v21 * v13 * v15 + (v69 + v17 * (v8 * v5)) * v15;
  v67 = v16 * v3 * v7;
  v75 = v21 * v14;
  v22 = a2[3];
  v23 = *a2 * v5;
  v24 = v16 * v8;
  v72 = v23 * v7;
  v73 = v16 * v8 * v13;
  v62 = v16 * v4 * v14;
  v25 = *a2 * v2;
  v70 = v25 * v13;
  v65 = v74 * v22 + (v67 + v17 * (v8 * v2) + v21 * v14) * v12 + (v73 + v17 * (v9 * v4) + v23 * v7) * v15 + (v62 + v17 * (v5 * v3) + v25 * v13) * v6;
  v26 = v5 * v7;
  v27 = v7 * v2;
  v61 = (v13 * v2 - v14 * v5) * v6 + (v5 * v7 - v13 * v9) * v15 + (v14 * v9 - v7 * v2) * v12;
  v28 = (v14 * v5 - v13 * v2) * v22;
  v29 = v17 * v2;
  v30 = v16 * v14;
  v31 = v17 * v5;
  v59 = v28 + (v29 - v16 * v14) * v12 + (v16 * v13 - v31) * v15;
  v32 = (v13 * v9 - v26) * v22 + (v31 - v16 * v13) * v6;
  v33 = v16 * v7;
  v34 = v32 + (v33 - v17 * v9) * v12;
  v35 = (v27 - v14 * v9) * v22 + (v17 * v9 - v33) * v15 + (v30 - v29) * v6;
  v36 = v3 * v7;
  v37 = v8 * v14;
  v38 = v7 * v4;
  v39 = (v14 * v4 - v13 * v3) * v6 + (v3 * v7 - v8 * v14) * v12 + (v13 * v8 - v7 * v4) * v15;
  v40 = v17 * v4;
  v41 = v17 * v3;
  v42 = *a2 * v14;
  v43 = (v13 * v3 - v14 * v4) * v22 + (v17 * v4 - v18 * v13) * v15 + (v18 * v14 - v17 * v3) * v12;
  v44 = v20 * v13 + v23 * v14;
  v45 = v24 * v14 + v25 * v7;
  v46 = (v38 - v13 * v8) * v22 + (v17 * v8 - v18 * v7) * v12 + (v18 * v13 - v40) * v6;
  v47 = v15 * (v17 * v8) + v42 * v6;
  v48 = (v37 - v36) * v22 + v41 * v6 + *a2 * v7 * v15;
  v49 = v71 * v22 + (v20 - v25) * v12 + (v23 - v19) * v15;
  v50 = v66 * v22 + (v19 - v23) * v6;
  v51 = v68 * v22 + (v24 - v21) * v15 + (v25 - v20) * v6;
  v52 = v64 + v44 * v6;
  v53 = v6 * (v57 - v60) + (v58 - v63) * v15 + (v11 - v10) * v12;
  v54 = v50 + (v21 - v24) * v12;
  v55 = 1.0 / (v65 - (v52 + v45 * v12));
  *a1 = v55 * v61;
  a1[1] = v55 * v59;
  a1[2] = v55 * v34;
  a1[3] = v55 * v35;
  a1[4] = v55 * v39;
  a1[5] = v55 * v43;
  a1[6] = v55 * v46;
  a1[7] = v55 * (v48 - v47);
  a1[8] = v55 * v53;
  a1[9] = v55 * v49;
  a1[10] = v55 * v54;
  a1[11] = v55 * v51;
  a1[12] = v55 * v74;
  a1[13] = v55 * (v62 + v17 * (v57 - v60) + v70 - v44);
  result = v55 * (v67 + (v11 - v10) * v17 + v75 - v45);
  a1[14] = v55 * (v73 + v72 - (v69 - (v58 - v63) * v17) - v21 * v13);
  a1[15] = result;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[306];
}

std::__shared_weak_count *md::LabelLineStore::addRoad(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 128);
  if (v3)
  {
    v15 = (**v3)(v3, *(a2 + 40), *(a2 + 232));
    v4 = (*(**(a2 + 128) + 8))(*(a2 + 128), *(a2 + 40));
  }

  else
  {
    v4 = 0;
    v15 = 0;
  }

  v5 = *(a2 + 40);
  result = geo::codec::VectorTile::key(*(a2 + 48));
  v7 = *(a2 + 72);
  v8 = *(a2 + 80);
  if (v7 != v8)
  {
    v9 = BYTE1(result->__vftable);
    v10 = *(a2 + 224);
    do
    {
      v11 = *v7;
      v18 = 0;
      result = geo::codec::multiSectionFeaturePoints(v5, v11, &v18);
      v12 = v18;
      if (v18 >= 2)
      {
        v13 = result;
        v14 = geo::codec::multiSectionFeatureElevations(v5, v11, &v17);
        result = md::LabelLineStore::addSegment<GeoCodecsRoadFeature>(a1, v5, v11, v9 & 0x3F, v10, a2 + 192, a2 + 144, v13, v14, v12, v15, v4, 0);
      }

      ++v7;
    }

    while (v7 != v8);
  }

  return result;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
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

    std::__function::__value_func<void ()(ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(void *a1, uint64_t a2)
{
  v4 = std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>::operator()[abi:nn200100](a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>::operator()(i[2], a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_7DaVinci17LandCoverSettingsEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A14E48;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::SpecularBuilding::BuildingPipelineSetup>>::~unique_ptr[abi:nn200100](void **a1)
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

    std::vector<ggl::SpecularBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::SpecularBuilding::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::SpecularBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::SpecularBuilding::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
    MEMORY[0x1B8C62190](v2, 0x10A0C405CD4001ALL);
  }

  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
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

    std::__function::__value_func<void ()(ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci17LandCoverSettingsEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A14E48;
  a2[1] = v2;
  return result;
}

BOOL gss::Queryable<gss::PropertyID>::needsUpdate(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 232);
  v3 = *(*a2 + 520);
  v4 = *(*a2 + 528);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    v5 = *(*a2 + 520);
    v6 = *(*a2 + 528);
    if (!v6)
    {
      v7 = *(v5 + 264);
      if (!v4)
      {
        return v2 != v7;
      }

      goto LABEL_7;
    }

    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(v5 + 264);
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
LABEL_7:
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  return v2 != v7;
}

void std::vector<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *>(v2, v1);
  }
}

void md::LabelLineSegment::computeRadiusOfCurvature(float32x2_t *a1, unsigned int a2, double *a3, uint64_t a4)
{
  v36[1] = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    v7 = a3[2];
    v8 = *a3;
    v9 = a2;
    if (a2 > 0x1FF0)
    {
      v11 = malloc_type_malloc(8 * (a2 + 2), 0x100004000313F17uLL);
    }

    else
    {
      MEMORY[0x1EEE9AC00]();
      v11 = (v36 - v10);
      bzero(v36 - v10, v12);
    }

    v13 = vsub_f32(a1[1], *a1);
    v14 = vmul_n_f32(v13, 1.0 / sqrtf(vaddv_f32(vmul_f32(v13, v13))));
    *&v15 = v14;
    *(&v15 + 1) = v14;
    *v11->f32 = v15;
    v16 = a2 - 1;
    v17 = (a4 + 8);
    v18 = a1 + 2;
    v19 = v16 - 1;
    v20 = 2;
    do
    {
      v21 = vsub_f32(*v18, v18[-1]);
      v22 = vaddv_f32(vmul_f32(v21, v21));
      v23 = v14;
      if (v22 > 0.00000011921)
      {
        v23.f32[0] = sqrtf(v22);
        v23 = vdiv_f32(v21, vdup_lane_s32(v23, 0));
      }

      v24 = vmla_f32(v23, 0x3F0000003F000000, vsub_f32(v14, v23));
      v11[v20] = vmul_n_f32(v24, 1.0 / sqrtf(vaddv_f32(vmul_f32(v24, v24))));
      if (vaddv_f32(vmul_f32(v23, v14)) >= 0.7071)
      {
        v25 = 0.0;
      }

      else
      {
        v25 = 0.00000011920929;
      }

      *v17++ = v25;
      ++v18;
      ++v20;
      v14 = v23;
      --v19;
    }

    while (v19);
    v26 = 0;
    v11[v9] = v23;
    v11[a2 + 1] = v23;
    v27 = 1.0;
    v28 = 0.0;
    while (1)
    {
      v29 = &v11[v26];
      if (v26 >= v16)
      {
        v32 = v26 + 1;
        v31 = v29[2];
        v33 = vsub_f32(v31, v11[v26 + 1]);
        v31.i32[0] = 1.0;
      }

      else
      {
        v30 = vsub_f32(a1[v26 + 1], a1[v26]);
        v31 = vmul_f32(v30, v30);
        v31.f32[0] = sqrtf(vaddv_f32(v31));
        v32 = v26 + 1;
        v33 = vsub_f32(v29[2], v11[v26 + 1]);
        if (v31.f32[0] <= 0.00000011921)
        {
          goto LABEL_18;
        }
      }

      v33 = vdiv_f32(v33, vdup_lane_s32(v31, 0));
LABEL_18:
      v34 = sqrtf(vaddv_f32(vmul_f32(v33, v33)));
      if (*(a4 + 8 * v26) == 0.0)
      {
        if (v31.f32[0] >= v27)
        {
          v28 = v34;
        }

        if (v28 <= 0.00000011921)
        {
          v35 = 1.79769313e308;
        }

        else
        {
          v35 = (v7 - v8) / v28;
        }

        *(a4 + 8 * v26) = v35;
      }

      v26 = v32;
      v28 = v34;
      v27 = v31.f32[0];
      if (v32 == v9)
      {
        if (a2 >= 0x1FF1)
        {
          free(v11);
        }

        return;
      }
    }
  }
}

void std::vector<char16_t,geo::allocator_adapter<char16_t,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char16_t>(v2, v1);
  }
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignLinearDepthConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignLinearDepthConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignLinearDepthConstantData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup>>::reset[abi:nn200100](void **result, void *a2)
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

    std::__function::__value_func<void ()(ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *)>::~__value_func[abi:nn200100]((v2 + 12));
    std::__function::__value_func<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((v2 + 8));
    std::vector<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 4));
    std::vector<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PrepassConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PrepassConstantDataHandle>();
    unk_1EB83C700 = 0x1EBB3E0519E8FF9DLL;
    qword_1EB83C708 = "md::ls::PrepassConstantDataHandle]";
    qword_1EB83C710 = 33;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassConstantDataHandle>(void)::metadata >= 0x200)
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

void *geo::_retain_ptr<VKDeferredCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2A44148;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>>(void)::metadata >= 0x200)
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

uint64_t md::UniLineLabelFeature::updateText(md::UniLineLabelFeature *this, uint64_t a2, int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(this + 44) == *(this + 45) && geo::codec::featureGetNativeShieldCount(a2))
  {
    md::UniLineLabelFeature::shieldsForFeature(&v9, a2, a3);
    std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::__vdeallocate((this + 352));
    *(this + 22) = v9;
    *(this + 46) = v10;
    v10 = 0;
    v8 = &v9;
    v9 = 0uLL;
    std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v8);
  }

  std::vector<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::clear[abi:nn200100]((this + 384));
  v6 = *(this + 24);
  *&v9 = &unk_1F2A00108;
  *(&v9 + 1) = this;
  LOBYTE(v10) = a3;
  v11 = &v9;
  *(&v10 + 1) = 0;
  HIDWORD(v10) = 0;
  md::LabelLineStore::enumerateLabelLineSegments(*(v6 + 96), *(v6 + 104), &v9);
  return std::__function::__value_func<void ()(std::unique_ptr<md::LabelLineSegment> const&)>::~__value_func[abi:nn200100](&v9);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>>();
    unk_1EB83C290 = 0x6CB2880B0A690EDBLL;
    qword_1EB83C298 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>]";
    qword_1EB83C2A0 = 84;
  }
}

void std::vector<ggl::DiffuseBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuilding::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DiffuseBuilding::BuildingPipelineSetup *>(v2, v1);
  }
}

void *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(void *result, unsigned int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_18;
  }

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

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

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
      goto LABEL_18;
    }

LABEL_10:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_10;
  }

  return result;
}

void ecs2::Runtime::queueCommand()
{
  ecs2::Runtime::_localState();
  v0 = ecs2::Runtime::_stackIndex();
  v4 = *(v3 + 104 * *v0 + 16);
  if (v4 != -1)
  {
    v5 = (*(v2 + 24) + 24 * v4);

    std::vector<std::variant<ecs2::AddComponent,ecs2::AddComponentBundle,ecs2::RemoveComponent,ecs2::DestroyEntity,ecs2::ClearComponent>>::push_back[abi:nn200100](v5, v1);
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[330];
}

void md::LabelTile::LabelTile(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  *a1 = a4;
  *(a1 + 8) = *a5;
  v5 = a5[1];
  *(a1 + 16) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1B2992B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, md::PointLabelFeature *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39)
{
  std::mutex::unlock(v39);
  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a39);
  }

  v41 = *(a37 + 272);
  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  std::__tree<std::weak_ptr<md::OverlayLineLabelFeature>,std::owner_less<std::weak_ptr<md::OverlayLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::OverlayLineLabelFeature>,mdm::zone_mallocator>>::destroy(*(a37 + 240));
  std::__tree<std::weak_ptr<md::PointLabelFeature>,std::owner_less<std::weak_ptr<md::PointLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::PointLabelFeature>,mdm::zone_mallocator>>::destroy(*(a37 + 208));
  std::__tree<std::weak_ptr<md::TransitLineLabelFeature>,std::owner_less<std::weak_ptr<md::TransitLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::TransitLineLabelFeature>,mdm::zone_mallocator>>::destroy(*(a37 + 176));
  std::__tree<std::weak_ptr<md::ContourLineLabelFeature>,std::owner_less<std::weak_ptr<md::ContourLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::ContourLineLabelFeature>,mdm::zone_mallocator>>::destroy(*(a37 + 144));
  std::__tree<std::weak_ptr<md::PhysicalLabelFeature>,std::owner_less<std::weak_ptr<md::PhysicalLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::PhysicalLabelFeature>,mdm::zone_mallocator>>::destroy(*(a37 + 112));
  std::__tree<std::weak_ptr<md::UniLineLabelFeature>,std::owner_less<std::weak_ptr<md::UniLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::UniLineLabelFeature>,mdm::zone_mallocator>>::destroy(*(a37 + 80));
  std::__tree<std::weak_ptr<md::UniLineLabelFeature>,std::owner_less<std::weak_ptr<md::UniLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::UniLineLabelFeature>,mdm::zone_mallocator>>::destroy(*(a37 + 48));
  v42 = *(a37 + 32);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v42);
  }

  v43 = *(a37 + 16);
  if (v43)
  {
    std::__shared_weak_count::__release_weak(v43);
  }

  _Unwind_Resume(a1);
}

void std::vector<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *,geo::allocator_adapter<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *>(v2, v1);
  }
}

void std::vector<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelFeatureStylerItem>(v2, v1);
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_4Tile11LinearDepthEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A14B08;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

unint64_t std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>::operator()[abi:nn200100](uint64_t a1)
{
  v2 = gss::FeatureAttributeSet::hash(*(a1 + 240), *(a1 + 248));
  v4 = *(a1 + 284);
  if (*(a1 + 284))
  {
    v5 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      if (v9 < v4 && (v7 & 1) == 0)
      {
        v10 = *(a1 + 272);
        v8 = (v10 + 4 * v9);
        v3 = (v10 + *(a1 + 280) + 2 * v9);
        v7 = 1;
      }

      v5 ^= (*v3 - 0x61C8864680B583EBLL + ((((v5 << 6) - 0x61C8864680B583EBLL + (v5 >> 2) + *v8) ^ v5) << 6) + ((((v5 << 6) - 0x61C8864680B583EBLL + (v5 >> 2) + *v8) ^ v5) >> 2)) ^ ((v5 << 6) - 0x61C8864680B583EBLL + (v5 >> 2) + *v8);
      v11 = v9 + 1;
      if (v7)
      {
        v7 = 0;
      }

      if (v11 < v4)
      {
        ++v9;
      }

      else
      {
        v9 = *(a1 + 284);
      }
    }

    while (v11 < v4);
  }

  else
  {
    v5 = 0;
  }

  return v5 ^ v2;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_4Tile11LinearDepthEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A14B08;
  a2[1] = v2;
  return result;
}

void std::vector<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *>(v2, v1);
  }
}

unint64_t std::__unordered_map_hasher<gss::StyleKey,std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<gss::StyleKey>,std::equal_to<gss::StyleKey>,true>::operator()[abi:nn200100](uint64_t a1)
{
  v2 = gss::FeatureAttributeSet::hash(*a1, *(a1 + 8));
  v4 = *(a1 + 44);
  if (*(a1 + 44))
  {
    v5 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *(a1 + 32);
    do
    {
      if (!((v9 >= v4) | v7 & 1))
      {
        v8 = (v10 + 4 * v9);
        v3 = (v10 + *(a1 + 40) + 2 * v9);
        v7 = 1;
      }

      v5 ^= (*v3 - 0x61C8864680B583EBLL + ((((v5 << 6) - 0x61C8864680B583EBLL + (v5 >> 2) + *v8) ^ v5) << 6) + ((((v5 << 6) - 0x61C8864680B583EBLL + (v5 >> 2) + *v8) ^ v5) >> 2)) ^ ((v5 << 6) - 0x61C8864680B583EBLL + (v5 >> 2) + *v8);
      v11 = v9 + 1;
      if (v7)
      {
        v7 = 0;
      }

      if (v11 < v4)
      {
        ++v9;
      }

      else
      {
        v9 = *(a1 + 44);
      }
    }

    while (v11 < v4);
  }

  else
  {
    v5 = 0;
  }

  return v5 ^ v2;
}

void ecs2::BasicRegistry<void>::destroy(void *a1, int a2)
{
  v5 = HIWORD(a2);
  v6 = a1[5127];
  v7 = (v6 + (HIWORD(a2) << 6));
  v8 = v7[1];
  v23[0] = *v7;
  v23[1] = v8;
  v9 = v7[3];
  v23[2] = v7[2];
  v23[3] = v9;
  if (LODWORD(v23[0]))
  {
    v10 = LODWORD(v23[0]) << 32;
  }

  else
  {
    v20 = 0;
    while (v20 != 15)
    {
      v21 = v20 + 1;
      v22 = *(v23 + ++v20);
      if (v22)
      {
        goto LABEL_23;
      }
    }

    v22 = 0;
    v21 = 16;
LABEL_23:
    v10 = v21 + (v22 << 32);
  }

  if (v10 == 16)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v11 = HIDWORD(v10);
    v12 = __clz(__rbit32(*(v23 + v10) & HIDWORD(v10)));
    LODWORD(v24) = a2;
    v13 = a1[128 * v10 + 3082 + 4 * v12];
    if (!v13)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      goto LABEL_25;
    }

    v2 = v10;
    (*(*v13 + 48))(v13, &v24);
    v14 = (v11 - 1) & v11;
    if (((v11 - 1) & v11) == 0 && v2 <= 0xF)
    {
      break;
    }

LABEL_25:
    v15 = v2;
LABEL_9:
    v10 = v15 + (v14 << 32);
    if (v15 == 16)
    {
      goto LABEL_10;
    }
  }

  while (v2 != 15)
  {
    v15 = v2 + 1;
    v14 = *(v23 + ++v2);
    if (v14)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v6 = a1[5127];
LABEL_11:
  v16 = (v6 + (v5 << 6));
  v16[2] = 0u;
  v16[3] = 0u;
  *v16 = 0u;
  v16[1] = 0u;
  v17 = a1[516];
  if (v5 < (a1[517] - v17) >> 2)
  {
    v18 = (v17 + 4 * v5);
    if (*v18 == a2)
    {
      if (a2 <= 0xFFFDu)
      {
        v19 = a2 + 1;
      }

      else
      {
        v19 = 1;
      }

      *v18 = v19;
      v24 = v5;
      std::vector<unsigned long>::push_back[abi:nn200100]((a1 + 513), &v24);
    }
  }
}

mdm::zone_mallocator *md::PhysicalLabelFeature::textIndexForFeature(void *a1, std::__shared_weak_count **a2, int a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v28 = 0uLL;
  v29 = 0;
  v30 = 0uLL;
  v31 = 0;
  if ((*(*a1 + 64))(a1))
  {
    v6 = a1[58];
    v7 = *(v6 + 48);
    if (v7 == *(v6 + 56))
    {
      goto LABEL_14;
    }

    if (a3)
    {
      if ((*(v7 + 79) & 0x8000000000000000) != 0)
      {
        if (*(v7 + 64))
        {
          goto LABEL_6;
        }
      }

      else if (*(v7 + 79))
      {
LABEL_6:
        md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp<std::string>(&__dst, (v7 + 56));
LABEL_13:
        v28 = __dst;
        v29 = v25;
        v30 = v26;
        v31 = v27;
        goto LABEL_14;
      }
    }

    md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp<std::string>(&__dst, (v7 + 8));
    goto LABEL_13;
  }

  v22 = 0uLL;
  v23 = 0;
  v20 = 0uLL;
  v21 = 0;
  md::LabelFeature::textFromFeature(&__dst, a2, a3, &v20, 0);
  v22 = __dst;
  v23 = v25;
  v8 = md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(&__dst, &v22, &v20);
  v28 = __dst;
  v29 = v25;
  v30 = v26;
  v31 = v27;
  if (SHIBYTE(v21) < 0)
  {
    v9 = v20;
    v10 = mdm::zone_mallocator::instance(v8);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v10, v9);
  }

  if (SHIBYTE(v23) < 0)
  {
    v11 = v22;
    v12 = mdm::zone_mallocator::instance(v8);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v12, v11);
  }

LABEL_14:
  v13 = md::LineLabelFeature::textIndexForText(a1, &v28);
  v14 = v13;
  if (SHIBYTE(v31) < 0)
  {
    v15 = v30;
    v16 = mdm::zone_mallocator::instance(v13);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v16, v15);
  }

  if (SHIBYTE(v29) < 0)
  {
    v17 = v28;
    v18 = mdm::zone_mallocator::instance(v13);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v18, v17);
  }

  return v14;
}

void sub_1B2993BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a36 < 0)
  {
    v44 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v44, a31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>(void)::metadata >= 0x200)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>();
    *algn_1EB83C198 = 0x5E7EAD35976A86ALL;
    qword_1EB83C1A0 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>]";
    qword_1EB83C1A8 = 87;
  }
}

void std::vector<ggl::BuildingFacadeDepth::BuildingPipelineSetup *,geo::allocator_adapter<ggl::BuildingFacadeDepth::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BuildingFacadeDepth::BuildingPipelineSetup *>(v2, v1);
  }
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleShadowConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleShadowConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignStyleShadowConstantData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

double md::LabelFeature::textFromFeature(void *a1, std::__shared_weak_count **a2, int a3, uint64_t a4, unsigned int a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0;
  __s = 0;
  geo::codec::featureGetNativeLabel(a2, a5, &__s, &v14);
  localizedLabel(a1, a2, __s, a3, &v14);
  if (v14)
  {
    v9 = v14;
  }

  else
  {
    v9 = "";
  }

  v10 = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&v16, v9);
  if (*(a4 + 23) < 0)
  {
    v11 = *a4;
    v12 = mdm::zone_mallocator::instance(v10);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v12, v11);
  }

  result = *&v16;
  *a4 = v16;
  *(a4 + 16) = v17;
  return result;
}

void sub_1B299407C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    v3 = *v1;
    v4 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v4, v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2cc14CameraCommandsEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::cc::CameraCommands>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::cc::CameraCommands>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::cc::CameraCommands>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 48 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 48 * (v13 & 0x3F);
        v19 = *v17;
        v20 = *(v17 + 16);
        *v17 = 0;
        *(v17 + 8) = 0;
        *(v17 + 16) = 0;
        geo::_retain_ptr<VKDeferredCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v21, v17 + 24);
        std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::__vdeallocate(v17);
        *v17 = *v16;
        *(v17 + 16) = *(v16 + 16);
        *v16 = 0;
        *(v16 + 8) = 0;
        *(v16 + 16) = 0;
        geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v17 + 24, v16 + 24);
        std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::__vdeallocate(v16);
        *v16 = v19;
        *(v16 + 16) = v20;
        v19 = 0uLL;
        v20 = 0;
        geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v16 + 24, v21);
        v21[0] = &unk_1F2A44148;

        v18 = &v19;
        std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::__destroy_vector::operator()[abi:nn200100](&v18);
        *(v16 + 24) = &unk_1F2A44148;

        *&v19 = v16;
        std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::__destroy_vector::operator()[abi:nn200100](&v19);
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::cc::CameraCommands>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::cc::CameraCommands>(void)::metadata) = *(v3 + 4096);
}

void std::vector<ggl::BuildingFlat::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::BuildingFlat::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BuildingFlat::CompressedMeshPipelineSetup *>(v2, v1);
  }
}

void md::LabelLineStore::queueWorkUnit(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 56);
  std::mutex::lock(v4);
  v7 = *(a1 + 72);
  v6 = *(a1 + 80);
  if (v7 >= v6)
  {
    v10 = *(a1 + 64);
    v11 = v7 - v10;
    v12 = (v7 - v10) >> 3;
    v13 = v12 + 1;
    if ((v12 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v14 = v6 - v10;
    if (v14 >> 2 > v13)
    {
      v13 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      v16 = mdm::zone_mallocator::instance(v5);
      v17 = pthread_rwlock_rdlock((v16 + 32));
      if (v17)
      {
        geo::read_write_lock::logFailure(v17, "read lock", v18);
      }

      v19 = malloc_type_zone_malloc(*v16, 8 * v15, 0x2004093837F09uLL);
      atomic_fetch_add((v16 + 24), 1u);
      geo::read_write_lock::unlock((v16 + 32));
      v10 = *(a1 + 64);
      v11 = *(a1 + 72) - v10;
      v20 = v11 >> 3;
    }

    else
    {
      v19 = 0;
      v20 = v12;
    }

    v21 = &v19[8 * v12];
    v22 = *a2;
    *a2 = 0;
    v23 = &v21[-8 * v20];
    *v21 = v22;
    v9 = v21 + 8;
    v24 = memcpy(v23, v10, v11);
    v25 = *(a1 + 64);
    *(a1 + 64) = v23;
    *(a1 + 72) = v9;
    *(a1 + 80) = &v19[8 * v15];
    if (v25)
    {
      v26 = mdm::zone_mallocator::instance(v24);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>>(v26, v25);
    }
  }

  else
  {
    v8 = *a2;
    *a2 = 0;
    *v7 = v8;
    v9 = v7 + 8;
  }

  *(a1 + 72) = v9;
  atomic_store(1u, (a1 + 155));

  std::mutex::unlock(v4);
}

void sub_1B29944D4(_Unwind_Exception *a1)
{
  geo::read_write_lock::unlock((v2 + 32));
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[319];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_7DaVinci11StyleShadowEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A143B8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci11StyleShadowEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A143B8;
  a2[1] = v2;
  return result;
}

std::__shared_weak_count *std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::push_back[abi:nn200100](std::__shared_weak_count *result, uint64_t a2)
{
  v3 = result;
  shared_owners = result->__shared_owners_;
  shared_weak_owners = result->__shared_weak_owners_;
  if (shared_owners >= shared_weak_owners)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((shared_owners - result->__vftable) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((shared_weak_owners - result->__vftable) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v23 = result + 1;
    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(result);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[24 * v8];
    *v14 = *a2;
    v15 = *(a2 + 16);
    *(v14 + 2) = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    v16 = &v13[24 * v11];
    v7 = v14 + 24;
    v17 = v3->__shared_owners_ - v3->__vftable;
    v18 = &v14[-v17];
    memcpy(&v14[-v17], v3->__vftable, v17);
    v19 = v3->__vftable;
    v3->__vftable = v18;
    v3->__shared_owners_ = v7;
    v20 = v3->__shared_weak_owners_;
    v3->__shared_weak_owners_ = v16;
    v21.__shared_weak_owners_ = v19;
    v22 = v20;
    v21.__vftable = v19;
    v21.__shared_owners_ = v19;
    result = std::__split_buffer<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator> &>::~__split_buffer(&v21);
  }

  else
  {
    *shared_owners = *a2;
    v6 = *(a2 + 16);
    *(shared_owners + 16) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (shared_owners + 24);
  }

  v3->__shared_owners_ = v7;
  return result;
}

{
  v3 = result;
  shared_owners = result->__shared_owners_;
  shared_weak_owners = result->__shared_weak_owners_;
  if (shared_owners >= shared_weak_owners)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((shared_owners - result->__vftable) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((shared_weak_owners - result->__vftable) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v21 = result + 1;
    if (v10)
    {
      v11 = mdm::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[24 * v7];
    v14 = &v12[24 * v10];
    *v13 = *a2;
    *(v13 + 2) = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = v13 + 24;
    v15 = v3->__shared_owners_ - v3->__vftable;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], v3->__vftable, v15);
    v17 = v3->__vftable;
    v3->__vftable = v16;
    v3->__shared_owners_ = v6;
    v18 = v3->__shared_weak_owners_;
    v3->__shared_weak_owners_ = v14;
    v19.__shared_weak_owners_ = v17;
    v20 = v18;
    v19.__vftable = v17;
    v19.__shared_owners_ = v17;
    result = std::__split_buffer<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator> &>::~__split_buffer(&v19);
  }

  else
  {
    *shared_owners = *a2;
    *(shared_owners + 16) = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (shared_owners + 24);
  }

  v3->__shared_owners_ = v6;
  return result;
}

void std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::__vdeallocate(void **a1)
{
  if (*a1)
  {
    std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::clear[abi:nn200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup *,geo::allocator_adapter<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup *>(v2, v1);
  }
}

void *ecs2::sparse_set<ecs2::Entity,64ul>::erase(void *result, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = result[1];
  if (v3 < (result[2] - v4) >> 3)
  {
    v5 = *(v4 + 8 * v3);
    if (v5)
    {
      v6 = a3 & 0x3F;
      if (*(v5 + 4 * v6) == a2)
      {
        return ecs2::sparse_set<ecs2::Entity,64ul>::erase(result, result[4] + 4 * *(v5 + 4 * v6 + 2));
      }
    }
  }

  return result;
}

void ggl::PrefilteredLine::PrefilteredLinePipelineState::~PrefilteredLinePipelineState(ggl::PrefilteredLine::PrefilteredLinePipelineState *this)
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

uint64_t ecs2::sparse_set<ecs2::Entity,64ul>::erase(void *a1, uint64_t a2)
{
  v2 = *(a1[1] + ((*(a2 + 2) >> 3) & 0x1FF8)) + 4 * (*(a2 + 2) & 0x3FLL);
  *(a1[4] + 4 * *(v2 + 2)) = *(a1[5] - 4);
  v3 = a1[5];
  *(*(a1[1] + ((*(v3 - 2) >> 3) & 0x1FF8)) + 4 * (*(v3 - 2) & 0x3FLL) + 2) = *(v2 + 2);
  a1[5] = v3 - 4;
  *v2 = 0xFFFF;
  return a1[4];
}

void std::vector<unsigned long>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v11);
    }

    v12 = (8 * (v8 >> 3));
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

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignDepthPrePassConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignDepthPrePassConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignDepthPrePassConstantData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>();
    *algn_1EB83BF38 = 0x58EA03DA808C73B1;
    qword_1EB83BF40 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>]";
    qword_1EB83BF48 = 82;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>(void)::metadata >= 0x200)
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

void ggl::BuildingShadow::MeshPipelineState::~MeshPipelineState(ggl::BuildingShadow::MeshPipelineState *this)
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

char *std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__vallocate[abi:nn200100](mdm::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = mdm::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned int>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[4 * a2];
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::CameraCollisionResolutionRequest>(ecs2::Entity,md::CameraCollisionResolutionRequest &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionResolutionRequest>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionResolutionRequest>(void)::metadata;
  v65 = a2;
  v6 = ecs2::BasicRegistry<void>::storage<md::CameraCollisionResolutionRequest>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (a1 + 8);
  v13 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    v56 = 0;
    v57 = *(*(v7 + 56) + ((v14 >> 3) & 0x1FF8)) + 104 * (v14 & 0x3F);
    do
    {
      *(v57 + v56) = *(v12 + v56);
      v56 += 8;
    }

    while (v56 != 24);
    v58 = 0;
    *(v57 + 24) = *(a1 + 32);
    do
    {
      *(v57 + 32 + v58) = *(a1 + 40 + v58);
      v58 += 8;
    }

    while (v58 != 24);
    for (i = 0; i != 24; i += 8)
    {
      *(v57 + 56 + i) = *(a1 + 64 + i);
    }

    geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v57 + 80, a1 + 88);
    goto LABEL_60;
  }

  v64 = a1;
  v17 = *(v7 + 40);
  v16 = *(v7 + 48);
  if (v17 >= v16)
  {
    v19 = *(v7 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    v24 = (4 * v20);
    *v24 = v4;
    v18 = 4 * v20 + 4;
    v25 = *(v7 + 32);
    v26 = *(v7 + 40) - v25;
    v27 = v24 - v26;
    memcpy(v24 - v26, v25, v26);
    v28 = *(v7 + 32);
    *(v7 + 32) = v27;
    *(v7 + 40) = v18;
    *(v7 + 48) = 0;
    if (v28)
    {
      operator delete(v28);
    }
  }

  else
  {
    *v17 = v4;
    v18 = (v17 + 1);
  }

  *(v7 + 40) = v18;
  v29 = ((v18 - *(v7 + 32)) >> 2) - 1;
  *v13 = v4;
  v13[1] = v29;
  v30 = v29 >> 6;
  v32 = *(v7 + 56);
  v31 = *(v7 + 64);
  if (v29 >> 6 >= (v31 - v32) >> 3)
  {
    v61 = v29;
    v62 = v5;
    v33 = v30 + 1;
    v34 = v30 + 1 - ((v31 - v32) >> 3);
    v35 = *(v7 + 72);
    v63 = v31 - v32;
    if (v34 > (v35 - v31) >> 3)
    {
      v36 = v35 - v32;
      v37 = (v35 - v32) >> 2;
      if (v37 <= v33)
      {
        v37 = v30 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_62;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v31 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v31 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v7 + 64) = v31 + 8 * v34;
    v43 = *(v7 + 80);
    v44 = *(v7 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v30)
    {
      v29 = v33 - v45;
      v46 = *(v7 + 96);
      if (v29 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v30 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_62:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v29);
      *(v7 + 88) = v44 + 16 * v29;
      LOBYTE(v29) = v61;
    }

    else if (v33 < v45)
    {
      *(v7 + 88) = v43 + 16 * v33;
    }

    v32 = *(v7 + 56);
    v5 = v62;
    if (v63 < *(v7 + 64) - v32)
    {
      operator new();
    }
  }

  v50 = (*(v32 + 8 * v30) + 104 * (v29 & 0x3F));
  *v50 = *v12;
  v51 = v12[1];
  v52 = v12[2];
  v53 = v12[4];
  v50[3] = v12[3];
  v50[4] = v53;
  v50[1] = v51;
  v50[2] = v52;
  geo::_retain_ptr<VKDeferredCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr((v50 + 5), v64 + 88);
  v54 = *(v7 + 152);
  v55 = *(v7 + 160);
  while (v54 != v55)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v54 + 24), v4);
    v54 += 32;
  }

LABEL_60:
  v60 = *(v65 + 41016) + (v4 >> 16 << 6);
  *(v60 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionResolutionRequest>();
  *(v65 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionResolutionRequest>(void)::metadata) = *(v65 + 4096);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PrepassShadowConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassShadowConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PrepassShadowConstantDataHandle>();
    *algn_1EB83BBD8 = 0x70E01531993BB945;
    qword_1EB83BBE0 = "md::ls::PrepassShadowConstantDataHandle]";
    qword_1EB83BBE8 = 39;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassShadowConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassShadowConstantDataHandle>(void)::metadata >= 0x200)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionResolutionRequest>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::CameraCollisionResolutionRequest>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionResolutionRequest>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::CameraCollisionResolutionRequest>(void)::localId;
    *algn_1EB82B338 = 0xB36DEFC5294276CCLL;
    qword_1EB82B340 = "md::CameraCollisionResolutionRequest]";
    qword_1EB82B348 = 36;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::CameraCollisionResolutionRequest>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionResolutionRequest>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionResolutionRequest>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionResolutionRequest>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[293];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_7DaVinci6ShadowEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A13D38;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](std::__shared_weak_count *a1)
{
  v1 = a1->__vftable;
  v2 = a1->~__shared_weak_count;
  if (v2)
  {
    v3 = v1->~__shared_weak_count_0;
    v4 = a1->~__shared_weak_count;
    if (v3 != v2)
    {
      v5 = a1;
      do
      {
        a1 = *(v3 - 1);
        if (a1)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](a1);
        }

        v3 = (v3 - 16);
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1->~__shared_weak_count_0 = v2;
    v6 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(v6, v4);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci6ShadowEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A13D38;
  a2[1] = v2;
  return result;
}

void ggl::SpecularBuildingPointyRoof::BuildingPipelineState::~BuildingPipelineState(ggl::SpecularBuildingPointyRoof::BuildingPipelineState *this)
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

void std::vector<std::shared_ptr<md::LabelStyle>,geo::allocator_adapter<std::shared_ptr<md::LabelStyle>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](std::__shared_weak_count *a1)
{
  v1 = a1->__vftable;
  v2 = a1->~__shared_weak_count;
  if (v2)
  {
    v3 = v1->~__shared_weak_count_0;
    v4 = a1->~__shared_weak_count;
    if (v3 != v2)
    {
      v5 = a1;
      do
      {
        a1 = *(v3 - 1);
        if (a1)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](a1);
        }

        v3 = (v3 - 16);
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1->~__shared_weak_count_0 = v2;
    v6 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelStyle>>(v6, v4);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md32CameraCollisionResolutionRequestEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESB_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISJ_EEFvSI_EE7__cloneEPNS0_6__baseISM_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A44550;
  a2[1] = v2;
  return result;
}

void *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<BOOL>(uint64_t a1, int a2, unsigned int a3, unsigned int a4, _BYTE *a5)
{
  v7 = *(a1 + 16 * a4 + 16);
  if (v7)
  {
    v9 = a1 + 16 * a4;
    if (*(v9 + 56))
    {
      v10 = *(v9 + 48);
      v11 = 8 * *(v9 + 56);
      while (1)
      {
        v12 = *(*v10 + 72);
        if (v12)
        {
          v15 = *v12;
          v13 = v12 + 2;
          v14 = v15;
          v16 = v15 + 120 * *(v13 + a3);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v16, a2) != *(v16 + 12))
          {
            break;
          }
        }

        v10 += 8;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_7;
        }
      }

      if (a3 >= 0x17)
      {
        v27 = 23;
      }

      else
      {
        v27 = a3;
      }

      v28 = v14 + 120 * *(v13 + v27);
      v23 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v28 + 24), a2);
      if (v23 != *(v28 + 36))
      {
        v25 = *(v28 + 24);
        v26 = *(v28 + 32);
        return (v25 + v26 + v23);
      }

      return &gss::PropertySetValueHelper<gss::PropertyID,BOOL>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

LABEL_7:
    v17 = *(v7 + 72);
    if (v17)
    {
      v18 = a3 >= 0x17 ? 23 : a3;
      v19 = *(v17 + v18 + 16);
      v20 = *v17;
      v21 = *v17 + 120 * v19;
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v21, a2) != *(v21 + 12))
      {
        v22 = v20 + 120 * v19;
        v23 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v22 + 24), a2);
        if (v23 != *(v22 + 36))
        {
          v25 = *(v22 + 24);
          v26 = *(v22 + 32);
          return (v25 + v26 + v23);
        }

        return &gss::PropertySetValueHelper<gss::PropertyID,BOOL>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
      }
    }
  }

  if (a5)
  {
    *a5 = 0;
  }

  return gss::defaultValueForKey<gss::PropertyID,BOOL>(a2);
}

void ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineState::~CompressedMeshPipelineState(ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineState *this)
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

void md::TextDataStringInfo::widenText()
{
  v21 = *MEMORY[0x1E69E9840];
  v0 = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&v18, "UtfConvertError");
  v1 = mdm::zone_mallocator::instance(v0);
  v2 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char16_t>(v1, 16);
  v16 = v2;
  v17 = xmmword_1B33B14E0;
  *(v2 + 14) = *L"ertError";
  *v2 = *L"UtfConvertError";
  *(v2 + 15) = 0;
  v5 = v20;
  if (SHIBYTE(v19) < 0)
  {
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&v3, v18, *(&v18 + 1));
  }

  else
  {
    v3 = v18;
    v4 = v19;
  }

  std::basic_string<char16_t,std::char_traits<char16_t>,geo::allocator_adapter<char16_t,mdm::zone_mallocator>>::__init_copy_ctor_external(&__src, v2, 0xFuLL);
  v15 = 0;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  operator new();
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignShadowConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignShadowConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignShadowConstantData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::ShadowConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ShadowConstantDataHandle>();
    *algn_1EB83C788 = 0xEAA0B82FC49F7277;
    qword_1EB83C790 = "md::ls::ShadowConstantDataHandle]";
    qword_1EB83C798 = 32;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowConstantDataHandle>(void)::metadata >= 0x200)
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

uint64_t std::wstring_convert<std::codecvt_utf8_utf16<char16_t,1114111ul,(std::codecvt_mode)0>,char16_t,geo::allocator_adapter<char16_t,mdm::zone_mallocator>,geo::allocator_adapter<char,mdm::zone_mallocator>>::~wstring_convert(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v2 = (*(*v2 + 8))(v2);
  }

  if (*(a1 + 55) < 0)
  {
    v3 = *(a1 + 32);
    v4 = mdm::zone_mallocator::instance(v2);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char16_t>(v4, v3);
  }

  if (*(a1 + 23) < 0)
  {
    v5 = *a1;
    v6 = mdm::zone_mallocator::instance(v2);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v6, v5);
  }

  return a1;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::CameraCollisionResolutionRequest>(ecs2::Entity,md::CameraCollisionResolutionRequest &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::destroy_deallocate(uint64_t a1)
{
  *(a1 + 88) = &unk_1F2A44148;

  operator delete(a1);
}

char *md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(char *__dst, __int128 *a2, __int128 *a3)
{
  __dst[24] = *(a2 + 24);
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  __dst[56] = *(a3 + 24);
  if (*(a3 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external((__dst + 32), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(__dst + 6) = *(a3 + 2);
    *(__dst + 2) = v6;
  }

  return __dst;
}

void sub_1B2996B00(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    v3 = *v1;
    v4 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v4, v3);
  }

  _Unwind_Resume(exception_object);
}

void ggl::FoggedSpecularBuilding::BuildingPipelineState::~BuildingPipelineState(ggl::FoggedSpecularBuilding::BuildingPipelineState *this)
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

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignRenderTargetSizeConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignRenderTargetSizeConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignRenderTargetSizeConstantData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>,std::__unordered_map_hasher<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>,std::hash<gdc::TypeInfo>,std::equal_to<gdc::TypeInfo>,true>,std::__unordered_map_equal<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>,std::equal_to<gdc::TypeInfo>,std::hash<gdc::TypeInfo>,true>,std::allocator<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[5];
      v2[5] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void std::__function::__func<md::LabelFeature::styleAttributes(md::LabelIdentifier)::$_0,std::allocator<md::LabelFeature::styleAttributes(md::LabelIdentifier)::$_0>,void ()(GeoCodecsFeature const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *v3) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v5 - *v3;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 16 * v8;
    v13 = *(v2 + 24);
    *(16 * v8) = v13;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = *v3;
    v15 = *(v3 + 8) - *v3;
    v16 = v12 - v15;
    memcpy((v12 - v15), *v3, v15);
    *v3 = v16;
    *(v3 + 8) = v7;
    *(v3 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v6 = *(v2 + 32);
    *v4 = *(v2 + 24);
    v4[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 2;
  }

  *(v3 + 8) = v7;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>(void)::metadata >= 0x200)
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::Venue const>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void ggl::SpecularBuildingTop::CompressedMeshPipelineState::~CompressedMeshPipelineState(ggl::SpecularBuildingTop::CompressedMeshPipelineState *this)
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

void md::LabelFeature::enumerateGEOFeatures(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 8));
  v4 = *(a1 + 152);
  if (v4)
  {
    (*(*v4 + 24))(v4, a2);
  }

  std::mutex::unlock((a1 + 8));
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>();
    unk_1EB83C0A0 = 0xA20E903AC8423AE1;
    qword_1EB83C0A8 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>]";
    qword_1EB83C0B0 = 92;
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[308];
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = v1;
      v1 = *v1;
      v3 = v2[6];
      if (v3 == v2 + 3)
      {
        (*(*v3 + 32))(v3);
      }

      else if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      operator delete(v2);
    }

    while (v1);
  }
}

void md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::find(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((a2 + 32), *a3);
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6;
  v8 = v6[6];
  if (v8 != a2)
  {
    v9 = *(a2 + 8);
    if (v9 != v8)
    {
      v10 = v8[1];
      if (v10 != v9)
      {
        v11 = *v8;
        *(v11 + 8) = v10;
        *v10 = v11;
        v12 = *v9;
        *(v12 + 8) = v8;
        *v8 = v12;
        *v9 = v8;
        v8[1] = v9;
      }
    }

    ++*(a2 + 92);
    v14 = v8[4];
    v13 = v8[5];
    *a1 = v14;
    *(a1 + 8) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    goto LABEL_10;
  }

  if (*(v6 + 56) == 1)
  {
    ++*(a2 + 92);
    *a1 = 0;
    *(a1 + 8) = 0;
LABEL_10:
    *(a1 + 16) = 1;
    return;
  }

  v15 = v6[5];
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = std::__shared_weak_count::lock(v15);
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = v16;
  v18 = v7[4];
  if (!v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
LABEL_18:
    ++*(a2 + 96);
    *a1 = 0;
    *(a1 + 16) = 0;
    return;
  }

  v19 = mdm::zone_mallocator::instance(v16);
  v20 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__list_node<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,void *>>(v19);
  *&v21 = v18;
  *(&v21 + 1) = v17;
  *v20 = 0;
  v20[1] = 0;
  v22 = a3[1];
  v20[2] = *a3;
  v20[3] = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v20[4] = v18;
  v20[5] = v17;
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v23 = *(a2 + 8);
  v24 = *(a2 + 16);
  *v20 = a2;
  v20[1] = v23;
  *v23 = v20;
  *(a2 + 8) = v20;
  *(a2 + 16) = v24 + 1;
  v7[6] = v20;
  ++*(a2 + 92);
  *a1 = v21;
  *(a1 + 16) = 1;
}

void ggl::SpecularBuilding::BuildingPipelineState::~BuildingPipelineState(ggl::SpecularBuilding::BuildingPipelineState *this)
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

void std::vector<ecs2::Transaction>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<std::variant<ecs2::AddComponent,ecs2::AddComponentBundle,ecs2::RemoveComponent,ecs2::DestroyEntity,ecs2::ClearComponent>>::__destroy_vector::operator()[abi:nn200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_7DaVinci16RenderTargetSizeEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A13C68;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci16RenderTargetSizeEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A13C68;
  a2[1] = v2;
  return result;
}

void sub_1B2997B90(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C62190](v2, 0x1060C4002C2C252);
  v5 = STACK[0x15E0];
  STACK[0x15E0] = 0;
  if (v5)
  {
    std::default_delete<md::SingleCameraContext>::operator()[abi:nn200100](v5);
  }

  v6 = STACK[0xB90];
  if (STACK[0xB90])
  {
    STACK[0xB98] = v6;
    operator delete(v6);
  }

  MEMORY[0x1B8C62190](v1, v3);
  _Unwind_Resume(a1);
}

std::__shared_weak_count *std::__split_buffer<std::shared_ptr<md::LabelStyle>,geo::allocator_adapter<std::shared_ptr<md::LabelStyle>,mdm::zone_mallocator> &>::~__split_buffer(std::__shared_weak_count *a1)
{
  v1 = a1;
  shared_owners = a1->__shared_owners_;
  shared_weak_owners = a1->__shared_weak_owners_;
  while (shared_weak_owners != shared_owners)
  {
    v1->__shared_weak_owners_ = shared_weak_owners - 16;
    a1 = *(shared_weak_owners - 8);
    if (a1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a1);
      shared_weak_owners = v1->__shared_weak_owners_;
    }

    else
    {
      shared_weak_owners -= 16;
    }
  }

  v4 = v1->__vftable;
  if (v1->__vftable)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelStyle>>(v5, v4);
  }

  return v1;
}

void ggl::DiffuseBuildingPointyRoof::BuildingPipelineState::~BuildingPipelineState(ggl::DiffuseBuildingPointyRoof::BuildingPipelineState *this)
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

double md::Logic<md::CameraLogic,md::CameraContext,md::LogicDependencies<gdc::TypeList<md::ElevationContext>,gdc::TypeList<>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  gdc::Camera::Camera(a1);
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 544) = 0x3FF0000000000000;
  *(a1 + 936) = 0xBFF0000000000000;
  *(a1 + 944) = 0x3FF0000000000000;
  *(a1 + 956) = 2;
  gdc::Camera::Camera((a1 + 1392));
  *(a1 + 1920) = 0u;
  *(a1 + 1904) = 0u;
  *(a1 + 1888) = 0u;
  *(a1 + 1936) = 0x3FF0000000000000;
  *(a1 + 2328) = 0xBFF0000000000000;
  *(a1 + 2336) = 0x3FF0000000000000;
  *(a1 + 2348) = 2;
  *(a1 + 2760) = 0;
  v9 = 0;
  v8 = 0u;
  geo::ConvexHull2<double>::convexHullEnclosingPoints((a1 + 2952), &v8);
  *(a1 + 3040) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 3072) = _D0;
  *(a1 + 3080) = 0;
  *(a1 + 3084) = 1;
  *(a1 + 3288) = 0u;
  *(a1 + 3304) = 0u;
  *(a1 + 3320) = 0u;
  *(a1 + 3336) = 0x3FF0000000000000;
  *(a1 + 3728) = xmmword_1B33B0530;
  *(a1 + 3748) = 2;
  *(a1 + 3784) = 0;
  *(a1 + 3792) = 0;
  gdc::Camera::Camera((a1 + 3800));
  *(a1 + 4312) = 0u;
  *(a1 + 4328) = 0u;
  *(a1 + 4296) = 0u;
  *(a1 + 4344) = 0x3FF0000000000000;
  *(a1 + 4736) = xmmword_1B33B0530;
  *(a1 + 4756) = 2;
  *(a1 + 5248) = 0;
  *(a1 + 5392) = 0u;
  *(a1 + 5408) = 0u;
  *(a1 + 5424) = 0u;
  *(a1 + 5440) = 0u;
  *(a1 + 5456) = 0u;
  *(a1 + 5472) = 0u;
  *(a1 + 5488) = 0u;
  *(a1 + 5168) = 0u;
  *(a1 + 5184) = 0u;
  *(a1 + 5200) = 0u;
  *(a1 + 5216) = 0u;
  *(a1 + 5228) = 0u;
  *(a1 + 5384) = 0x3FF0000000000000;
  *(a1 + 5424) = 0x3FF0000000000000;
  *(a1 + 5464) = 0x3FF0000000000000;
  *(a1 + 5504) = 0x3FF0000000000000;
  *(a1 + 5520) = 0u;
  *(a1 + 5536) = 0u;
  *(a1 + 5552) = 0u;
  *(a1 + 5584) = 0u;
  result = 0.0078125;
  *(a1 + 5600) = 0x3F80000000000000;
  return result;
}

uint64_t md::ita::AssignStyleSSAOConstantData::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A15D40;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StyleSSAODataKeyHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::StyleSSAODataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B29981F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::StyleSSAODataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineState::~CompressedMeshPipelineState(ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineState *this)
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

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleSSAOConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleSSAOConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignStyleSSAOConstantData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>(void)::metadata >= 0x200)
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

void geo::ConvexHull2<double>::convexHullEnclosingPoints(uint64_t *a1, double **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  geo::ConvexHull2<double>::getConvexHullPoints(a2, a1);
}

void sub_1B2998558(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gss::FeatureAttributeSet::FeatureAttributeSet(uint64_t a1, uint64_t a2)
{
  v3 = std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](a1, a2);
  gss::FeatureAttributeSet::sort(*v3, *(a1 + 8));
  return a1;
}

void geo::ConvexHull2<double>::getConvexHullPoints(double **a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = *a1;
  if (v3 == *a1)
  {

    std::vector<gm::Matrix<double,2,1>>::resize(a2, 0);
  }

  else
  {
    v6 = (v3 - *a1) >> 4;
    v7 = *a1;
    do
    {
      if (*v7 < *v4 || *v7 == *v4 && v7[1] < v4[1])
      {
        v4 = v7;
      }

      v7 += 2;
    }

    while (v7 != v3);
    v31 = 0uLL;
    v32 = 0;
    std::vector<gm::Matrix<double,2,1>>::reserve(&v31, v6 - 1);
    v8 = *a1;
    v9 = a1[1];
    while (v8 != v9)
    {
      if (*v8 != *v4 || *(v8 + 1) != *(v4 + 1))
      {
        std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100](&v31, v8);
      }

      v8 += 2;
    }

    v11 = *(&v31 + 1);
    v12 = v31;
    if (*(&v31 + 1) == v31)
    {
      std::vector<gm::Matrix<double,2,1>>::resize(a2, 1uLL);
      v30 = *a2;
      *v30 = *v4;
      v30[1] = *(v4 + 1);
    }

    else
    {
      *__p = *v4;
      std::__introsort<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,false>(v31, *(&v31 + 1), __p, 126 - 2 * __clz((*(&v31 + 1) - v31) >> 4), 1);
      std::vector<gm::Matrix<double,2,1>>::reserve(a2, (a1[1] - *a1) >> 4);
      std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100](a2, v4);
      std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100](a2, v12);
      v13 = v12 + 1;
      for (i = 1; v13 != v11; ++v13)
      {
        v23 = a2[1];
        if (*&v13->f64[0] != *(v23 - 16) || *&v13->f64[1] != *(v23 - 8))
        {
          v25 = *v13;
          v26 = (v23 - 16);
          v27 = *a2 - 16;
          do
          {
            v28 = vsubq_f64(v25, *v26);
            v29 = vmulq_f64(vextq_s8(v28, v28, 8uLL), vsubq_f64(*v26, *(v27 + 16 * i)));
            if (vmovn_s64(vcgtq_f64(v29, vdupq_laneq_s64(v29, 1))).u8[0])
            {
              break;
            }

            a2[1] = v26--;
            --i;
          }

          while (i);
          std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100](a2, v13);
          ++i;
        }
      }

      v15 = *a2;
      v16 = *v4;
      v17 = (a2[1] - 16);
      do
      {
        v18 = vsubq_f64(*v17, *(v15 + 16 * i - 16));
        v19 = vmulq_f64(vsubq_f64(v16, *v17), vextq_s8(v18, v18, 8uLL));
        if ((vmovn_s64(vcgtq_f64(v19, vdupq_laneq_s64(v19, 1))).u8[0] & 1) == 0)
        {
          break;
        }

        a2[1] = v17--;
        --i;
      }

      while (i);
      v20 = v17 + 1;
      v21 = a2[2] - v15;
      if (v21 > v20 - v15)
      {
        v22 = (v20 - v15) >> 4;
        v36 = a2;
        if (v20 != v15)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>((v20 - v15) >> 4);
        }

        __p[0] = 0;
        __p[1] = (16 * v22);
        v34 = 16 * v22;
        v35 = 0;
        if (v21 >> 4)
        {
          std::vector<gm::Matrix<double,2,1>>::__swap_out_circular_buffer(a2, __p);
        }

        if (__p[0])
        {
          operator delete(__p[0]);
        }
      }
    }

    if (v12)
    {

      operator delete(v12);
    }
  }
}

void sub_1B29988E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>();
    unk_1EB83BF10 = 0xCDC9872DC17B96C4;
    qword_1EB83BF18 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>]";
    qword_1EB83BF20 = 85;
  }
}

uint64_t *std::vector<gm::Matrix<double,2,1>>::resize(uint64_t *result, unint64_t a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (v3 - *result) >> 4;
  if (a2 > v4)
  {
    v6 = a2 - v4;
    v7 = result[2];
    if (v6 > (v7 - v3) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v2;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v10);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v5 = v3 + 16 * v6;
  }

  else
  {
    if (a2 >= v4)
    {
      return result;
    }

    v5 = v2 + 16 * a2;
  }

  result[1] = v5;
  return result;
}

gss::zone_mallocator *std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::reserve(gss::zone_mallocator *result, unint64_t a2)
{
  if (a2 > (*(result + 2) - *result) >> 3)
  {
    if (a2 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v3 = result;
    v4 = *(result + 1) - *result;
    v13[4] = result + 24;
    v5 = gss::zone_mallocator::instance(result);
    v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<gss::StyleAttribute,unsigned short>>(v5, a2);
    v7 = &v6[v4];
    v8 = &v6[8 * a2];
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
    return std::__split_buffer<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator> &>::~__split_buffer(v13);
  }

  return result;
}

void ggl::FoggedDiffuseBuilding::BuildingPipelineState::~BuildingPipelineState(ggl::FoggedDiffuseBuilding::BuildingPipelineState *this)
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::StyleSSAODataKeyHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleSSAODataKeyHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleSSAODataKeyHandle>();
    *algn_1EB83CAB8 = 0x3AC919C8A5243F9;
    qword_1EB83CAC0 = "md::ls::StyleSSAODataKeyHandle]";
    qword_1EB83CAC8 = 30;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleSSAODataKeyHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleSSAODataKeyHandle>(void)::metadata >= 0x200)
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[292];
}

void ggl::DiffuseBuildingTop::CompressedMeshPipelineState::~CompressedMeshPipelineState(ggl::DiffuseBuildingTop::CompressedMeshPipelineState *this)
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

mdm::zone_mallocator *std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::reserve(mdm::zone_mallocator *result, unint64_t a2)
{
  if (a2 > (*(result + 2) - *result) >> 3)
  {
    if (a2 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v3 = result;
    v4 = *(result + 1) - *result;
    v13[4] = result + 24;
    v5 = mdm::zone_mallocator::instance(result);
    v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeature *>(v5, a2);
    v7 = &v6[v4];
    v8 = &v6[8 * a2];
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
    return std::__split_buffer<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator> &>::~__split_buffer(v13);
  }

  return result;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_7DaVinci9StyleSSAOEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A14488;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci9StyleSSAOEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A14488;
  a2[1] = v2;
  return result;
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *>(v3, v2);
  }
}

uint64_t md::MercatorCameraContext::MercatorCameraContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v4 = *(a2 + 80);
  v5 = *(a2 + 96);
  v6 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v5;
  *(a1 + 112) = v6;
  *(a1 + 80) = v4;
  v7 = *(a2 + 200);
  v8 = *(a2 + 216);
  v9 = *(a2 + 232);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 232) = v9;
  *(a1 + 216) = v8;
  *(a1 + 200) = v7;
  v10 = *(a2 + 264);
  v11 = *(a2 + 280);
  v12 = *(a2 + 296);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 280) = v11;
  *(a1 + 296) = v12;
  *(a1 + 264) = v10;
  v14 = *(a2 + 328);
  v13 = *(a2 + 344);
  v15 = *(a2 + 312);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 328) = v14;
  *(a1 + 344) = v13;
  *(a1 + 312) = v15;
  v16 = *(a2 + 136);
  v17 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v17;
  *(a1 + 136) = v16;
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  v18 = *(a2 + 400);
  v19 = *(a2 + 416);
  v20 = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 416) = v19;
  *(a1 + 432) = v20;
  *(a1 + 400) = v18;
  *&v19 = *(a2 + 464);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = v19;
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 480) = *(a2 + 480);
  geo::View<double>::View(a1 + 496, a2 + 496, (a2 + 552), (a2 + 680), (a2 + 952), *(a2 + 956), *(a2 + 936));
  *(a1 + 960) = *(a2 + 960);
  *(a1 + 976) = *(a2 + 976);
  memcpy((a1 + 984), (a2 + 984), 0x1A0uLL);
  v21 = *(a2 + 1464);
  v22 = *(a2 + 1480);
  v23 = *(a2 + 1512);
  *(a1 + 1496) = *(a2 + 1496);
  *(a1 + 1512) = v23;
  *(a1 + 1464) = v21;
  *(a1 + 1480) = v22;
  v24 = *(a2 + 1400);
  v25 = *(a2 + 1416);
  v26 = *(a2 + 1448);
  *(a1 + 1432) = *(a2 + 1432);
  *(a1 + 1448) = v26;
  *(a1 + 1400) = v24;
  *(a1 + 1416) = v25;
  v27 = *(a2 + 1544);
  *(a1 + 1528) = *(a2 + 1528);
  *(a1 + 1544) = v27;
  geo::ConvexHull2<double>::ConvexHull2(a1 + 1560, (a2 + 1560));
  *(a1 + 1584) = *(a2 + 1584);
  v28 = *(a2 + 1592);
  *(a1 + 1608) = *(a2 + 1608);
  *(a1 + 1592) = v28;
  v29 = *(a2 + 1616);
  *(a1 + 1632) = *(a2 + 1632);
  *(a1 + 1616) = v29;
  *(a1 + 1640) = *(a2 + 1640);
  *(a1 + 1648) = 0;
  *(a1 + 1656) = *(a2 + 1656);
  *(a1 + 1664) = *(a2 + 1664);
  return a1;
}

void ggl::DiffuseBuilding::BuildingPipelineState::~BuildingPipelineState(ggl::DiffuseBuilding::BuildingPipelineState *this)
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

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::StyleSSAODataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t geo::ConvexHull2<double>::ConvexHull2(uint64_t a1, __int128 **a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a1 != a2)
  {
    std::vector<gm::Matrix<double,2,1>>::__assign_with_size[abi:nn200100]<gm::Matrix<double,2,1>*,gm::Matrix<double,2,1>*>(a1, *a2, a2[1], a2[1] - *a2);
  }

  return a1;
}

void sub_1B2999450(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<gm::Matrix<double,2,1>>::__assign_with_size[abi:nn200100]<gm::Matrix<double,2,1>*,gm::Matrix<double,2,1>*>(char **a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<gm::Matrix<double,2,1>>::__vallocate[abi:nn200100](a1, v10);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 1) = *(v5++ + 1);
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        *result = *v5;
        *(result + 1) = *(v5++ + 1);
        result += 16;
      }

      while (v5 != v12);
    }

    while (v12 != a3)
    {
      v13 = *v12++;
      *v11 = v13;
      v11 += 16;
    }

    a1[1] = v11;
  }

  return result;
}

void std::vector<md::LabelPoint,geo::allocator_adapter<md::LabelPoint,mdm::zone_mallocator>>::resize(mdm::zone_mallocator *a1, unint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 1);
  v6 = v4 - *a1;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 4);
  v8 = a2 >= v7;
  v9 = a2 - v7;
  if (v9 != 0 && v8)
  {
    v10 = *(a1 + 2);
    if (0xAAAAAAAAAAAAAAABLL * ((v10 - v4) >> 4) >= v9)
    {
      v28 = v4 + 48 * v9;
      do
      {
        *(v4 + 16) = 0uLL;
        *(v4 + 32) = 0uLL;
        *v4 = 0uLL;
        *(v4 + 40) = 2139095039;
        v4 += 48;
      }

      while (v4 != v28);
      *(a1 + 1) = v28;
    }

    else
    {
      if (a2 > 0x555555555555555)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v5) >> 4);
      v12 = 2 * v11;
      if (2 * v11 <= a2)
      {
        v12 = a2;
      }

      if (v11 >= 0x2AAAAAAAAAAAAAALL)
      {
        v13 = 0x555555555555555;
      }

      else
      {
        v13 = v12;
      }

      v14 = mdm::zone_mallocator::instance(a1);
      v15 = pthread_rwlock_rdlock((v14 + 32));
      if (v15)
      {
        geo::read_write_lock::logFailure(v15, "read lock", v16);
      }

      v17 = malloc_type_zone_malloc(*v14, 48 * v13, 0x10000406A557DB6uLL);
      atomic_fetch_add((v14 + 24), 1u);
      geo::read_write_lock::unlock((v14 + 32));
      v19 = &v17[48 * a2];
      v20 = &v17[v6];
      do
      {
        *(v20 + 1) = 0uLL;
        *(v20 + 2) = 0uLL;
        *v20 = 0uLL;
        *(v20 + 10) = 2139095039;
        v20 += 48;
      }

      while (v20 != v19);
      v22 = *a1;
      v21 = *(a1 + 1);
      v23 = &v17[v6 + *a1 - v21];
      if (v21 != *a1)
      {
        v24 = &v17[v6 + *a1 - v21];
        do
        {
          v25 = *v22;
          *(v24 + 2) = *(v22 + 2);
          *v24 = v25;
          *(v24 + 24) = *(v22 + 24);
          v26 = *(v22 + 10);
          *(v24 + 43) = *(v22 + 43);
          *(v24 + 10) = v26;
          v22 += 48;
          v24 += 48;
        }

        while (v22 != v21);
        v22 = *a1;
      }

      *a1 = v23;
      *(a1 + 1) = v19;
      *(a1 + 2) = &v17[48 * v13];
      if (v22)
      {
        v27 = mdm::zone_mallocator::instance(v18);

        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelPoint>(v27, v22);
      }
    }
  }

  else if (!v8)
  {
    *(a1 + 1) = &v5[48 * a2];
  }
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleBlendConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleBlendConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignStyleBlendConstantData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

void ggl::BuildingPointyRoofDepth::BuildingPipelineState::~BuildingPipelineState(ggl::BuildingPointyRoofDepth::BuildingPipelineState *this)
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

uint64_t md::LabelLineSegmentImpl::points(md::LabelLineSegmentImpl *this)
{
  std::vector<md::LabelPoint,geo::allocator_adapter<md::LabelPoint,mdm::zone_mallocator>>::resize((this + 48), *(this + 23));
  return *(this + 6);
}

{
  return *(this + 6);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>(void)::metadata >= 0x200)
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

uint64_t md::Logic<md::CameraLogic,md::CameraContext,md::LogicDependencies<gdc::TypeList<md::ElevationContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x1AF456233693CD46)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::ElevationContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 144))(v5, a2, &v7, v3);
    }
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>();
    unk_1EB83C1E0 = 0x24EEF26FD15B5B85;
    qword_1EB83C1E8 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>]";
    qword_1EB83C1F0 = 86;
  }
}

void ggl::BuildingTopDepth::CompressedMeshPipelineState::~CompressedMeshPipelineState(ggl::BuildingTopDepth::CompressedMeshPipelineState *this)
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

void *md::LayoutContext::get<md::ElevationContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x8BD499FBD96FBB9ELL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x8BD499FBD96FBB9ELL)
    {
      return *(v2 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void **md::LabelFeaturePool::addLineFeature(mdm::zone_mallocator *a1, uint64_t a2, uint64_t *a3, int **a4, uint64_t a5, uint64_t a6, float *a7, char a8)
{
  v36 = a5;
  v37 = a3;
  v16 = *(a6 + 104);
  if (v16)
  {
    v17 = *v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = mdm::zone_mallocator::instance(a1);
  v19 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::_fast_shared_ptr_control>(v18);
  *v19 = 1;
  md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::LabelFeatureThunk((v19 + 8), a3, a8, v17);
  v35 = v19;
  v20 = std::__hash_table<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::FeatureHash<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::FeatureEqual<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,mdm::zone_mallocator>>::__emplace_unique_key_args<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator> const&>((a2 + 64), &v35, &v35);
  *(a6 + 97) = v21 & 1;
  if (v21)
  {
    std::allocate_shared[abi:nn200100]<md::UniLineLabelFeature,geo::allocator_adapter<md::UniLineLabelFeature,mdm::zone_mallocator>,GeoCodecsRoadFeature const*&,std::vector<unsigned int> &,GeoCodecsTileLabelLine *&,md::LabelFeatureCreationParams &,0>(&v34, &v38, &v37, a4, &v36, a6);
    v22 = v35;
    if (v35)
    {
      v23 = v35 + 8;
    }

    else
    {
      v23 = 0;
    }

    v24 = v34;
    v25 = *(v23 + 2);
    *(v23 + 8) = v34;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v25);
      v26 = *(v23 + 1);
    }

    else
    {
      v26 = v24;
    }

    *(v26 + 152) = v23;
    v29 = *(a2 + 672) + 1;
    *(a2 + 672) = v29;
    *(v26 + 72) = v29;
    *(v26 + 148) = a8;
  }

  else
  {
    geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::operator=(&v35, v20 + 2);
    if (v35)
    {
      v27 = (v35 + 8);
    }

    else
    {
      v27 = 0;
    }

    md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::add(v27, a3);
    if (v35)
    {
      v28 = v35 + 8;
    }

    else
    {
      v28 = 0;
    }

    md::LabelLineStore::addRoadFeature(*(*(v28 + 1) + 192), a3, a4, a5, a6, *(v28 + 1) + 440);
    v22 = v35;
  }

  std::__hash_table<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,md::LabelFeaturePoolTileInfo::FeatureHash<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,md::LabelFeaturePoolTileInfo::FeatureEqual<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,mdm::zone_mallocator>>::__emplace_unique_key_args<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator> const&>(a7, v22, &v35);
  if (v35)
  {
    v30 = v35 + 8;
  }

  else
  {
    v30 = 0;
  }

  v32 = *(v30 + 1);
  v31 = *(v30 + 2);
  *a1 = v32;
  *(a1 + 1) = v31;
  if (v31)
  {
    atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
  }

  return geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::~fast_shared_ptr(&v35);
}

void sub_1B2999EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::~fast_shared_ptr(va);
  _Unwind_Resume(a1);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[322];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_7DaVinci10StyleBlendEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A13E08;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void md::CameraLogic::runBeforeLayout(uint64_t a1, id *a2, uint64_t *a3, md::CameraContext *this)
{
  v4 = *a3;
  v5 = *(*a3 + 16);
  v6 = *(*a3 + 20);
  *(this + 1401) = *(a1 + 120);
  if (*(v4 + 5) == 1)
  {
    v7 = *(a1 + 128);
  }

  else
  {
    v7 = 0;
  }

  md::CameraContext::_update(this, a2, v7, (v6 * v5));
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci10StyleBlendEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A13E08;
  a2[1] = v2;
  return result;
}

void ggl::BuildingFacadeDepth::BuildingPipelineState::~BuildingPipelineState(ggl::BuildingFacadeDepth::BuildingPipelineState *this)
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

void **geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::operator=(void **a1, void **a2)
{
  v4 = *a2;
  if (*a2)
  {
    ++*v4;
  }

  v5 = *a1;
  if (*a1)
  {
    if ((*v5)-- == 1)
    {
      *(v5 + 1) = &unk_1F2A579A0;
      v7 = *(v5 + 10);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      v12.__vftable = (v5 + 32);
      std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v12);
      v8 = *(v5 + 3);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }

      v9 = *a1;
      v10 = mdm::zone_mallocator::instance(v8);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::_fast_shared_ptr_control>(v10, v9);
      *a1 = 0;
      v4 = *a2;
    }
  }

  *a1 = v4;
  return a1;
}

void ggl::BuildingFlat::CompressedMeshPipelineState::~CompressedMeshPipelineState(ggl::BuildingFlat::CompressedMeshPipelineState *this)
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

void std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](std::__shared_weak_count *a1)
{
  v1 = a1->__vftable;
  v2 = a1->~__shared_weak_count;
  if (v2)
  {
    v3 = v1->~__shared_weak_count_0;
    v4 = a1->~__shared_weak_count;
    if (v3 != v2)
    {
      v5 = a1;
      do
      {
        a1 = *(v3 - 1);
        if (a1)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](a1);
        }

        v3 = (v3 - 24);
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1->~__shared_weak_count_0 = v2;
    v6 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>>(v6, v4);
  }
}

uint64_t gdc::CameraView::operator=(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(result + 48) = *(a2 + 48);
  *(result + 64) = v4;
  *(result + 16) = v2;
  *(result + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(result + 128) = *(a2 + 128);
  *(result + 96) = v6;
  *(result + 112) = v7;
  *(result + 80) = v5;
  *(result + 136) = *(a2 + 136);
  *(result + 144) = *(a2 + 144);
  *(result + 152) = *(a2 + 152);
  *(result + 160) = *(a2 + 160);
  *(result + 168) = *(a2 + 168);
  *(result + 176) = *(a2 + 176);
  *(result + 184) = *(a2 + 184);
  *(result + 192) = *(a2 + 192);
  *(result + 200) = *(a2 + 200);
  *(result + 208) = *(a2 + 208);
  *(result + 216) = *(a2 + 216);
  *(result + 224) = *(a2 + 224);
  *(result + 232) = *(a2 + 232);
  *(result + 240) = *(a2 + 240);
  *(result + 248) = *(a2 + 248);
  *(result + 256) = *(a2 + 256);
  *(result + 264) = *(a2 + 264);
  *(result + 272) = *(a2 + 272);
  *(result + 280) = *(a2 + 280);
  *(result + 288) = *(a2 + 288);
  *(result + 296) = *(a2 + 296);
  *(result + 304) = *(a2 + 304);
  *(result + 312) = *(a2 + 312);
  *(result + 320) = *(a2 + 320);
  *(result + 328) = *(a2 + 328);
  v8 = *(a2 + 352);
  *(result + 336) = *(a2 + 336);
  *(result + 352) = v8;
  *(result + 368) = *(a2 + 368);
  *(result + 384) = *(a2 + 384);
  *(result + 400) = *(a2 + 400);
  *(result + 408) = *(a2 + 408);
  *(result + 416) = *(a2 + 416);
  *(result + 424) = *(a2 + 424);
  v9 = *(a2 + 432);
  *(result + 448) = *(a2 + 448);
  *(result + 432) = v9;
  v10 = *(a2 + 472);
  *(result + 456) = *(a2 + 456);
  *(result + 472) = v10;
  *(result + 488) = *(a2 + 488);
  *(result + 492) = *(a2 + 492);
  for (i = 520; i != 544; i += 8)
  {
    *(result + i) = *(a2 + i);
  }

  *(result + 544) = *(a2 + 544);
  for (j = 496; j != 520; j += 8)
  {
    *(result + j) = *(a2 + j);
  }

  for (k = 552; k != 680; k += 8)
  {
    *(result + k) = *(a2 + k);
  }

  do
  {
    *(result + k) = *(a2 + k);
    k += 8;
  }

  while (k != 808);
  do
  {
    *(result + k) = *(a2 + k);
    k += 8;
  }

  while (k != 936);
  v14 = 0;
  v15 = *(a2 + 936);
  *(result + 952) = *(a2 + 952);
  *(result + 936) = v15;
  v16 = *(a2 + 960);
  *(result + 976) = *(a2 + 976);
  *(result + 960) = v16;
  v17 = a2 + 984;
  v18 = result + 984;
  do
  {
    for (m = 0; m != 24; m += 8)
    {
      *(v18 + m) = *(v17 + m);
    }

    *(result + 984 + 32 * v14 + 24) = *(a2 + 984 + 32 * v14 + 24);
    ++v14;
    v18 += 32;
    v17 += 32;
  }

  while (v14 != 6);
  v20 = 0;
  v21 = result + 1176;
  v22 = a2 + 1176;
  do
  {
    for (n = 0; n != 24; n += 8)
    {
      *(v21 + n) = *(v22 + n);
    }

    ++v20;
    v21 += 24;
    v22 += 24;
  }

  while (v20 != 8);
  return result;
}

uint64_t geo::codec::roadFeatureCompareRoadNames(geo::codec *this, const GeoCodecsRoadFeature *a2, const GeoCodecsRoadFeature *a3)
{
  result = 0;
  if (this && a2)
  {
    v6 = *(this + 73);
    v7 = *(a2 + 73);
    result = v6 < v7 ? 0xFFFFFFFFLL : 1;
    if (v6 == v7)
    {
      if (*(this + 73))
      {
        v8 = 0;
        v9 = 0;
        v10 = 24 * v6;
        do
        {
          v11 = *(this + 1);
          if (v11 && (v12 = std::__shared_weak_count::lock(v11)) != 0)
          {
            v13 = *this;
            if (v9 >= *(this + 73) || v13 == 0)
            {
              v16 = 0;
            }

            else
            {
              v16 = *(*(v13 + 1056) + 24 * *(this + 14) + v8);
            }

            if (atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v15 = *(a2 + 1);
              if (!v15)
              {
                goto LABEL_9;
              }
            }

            else
            {
              v20 = v12;
              (v12->__on_zero_shared)();
              std::__shared_weak_count::__release_weak(v20);
              v15 = *(a2 + 1);
              if (!v15)
              {
                goto LABEL_9;
              }
            }
          }

          else
          {
            v16 = 0;
            v15 = *(a2 + 1);
            if (!v15)
            {
              goto LABEL_9;
            }
          }

          v17 = std::__shared_weak_count::lock(v15);
          if (v17)
          {
            v18 = 0;
            if (v9 < *(a2 + 73) && *a2)
            {
              v18 = *(*(*a2 + 1056) + 24 * *(a2 + 14) + v8);
            }

            if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v19 = v17;
              (v17->__on_zero_shared)();
              std::__shared_weak_count::__release_weak(v19);
            }

            if (v16)
            {
              if (v18)
              {
                result = strcmp(v16, v18);
                if (result)
                {
                  return result;
                }
              }
            }
          }

LABEL_9:
          ++v9;
          v8 += 24;
        }

        while (v10 != v8);
      }

      return 0;
    }
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>(void)::metadata >= 0x200)
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

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignGroundAtmosphereConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignGroundAtmosphereConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignGroundAtmosphereConstantData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t gdc::CameraView::mercatorCameraView(gdc::CameraView *this, const gdc::Camera *a2)
{
  gdc::CameraFrame<geo::Radians,double>::toRigidTransformMercator(v21, a2 + 1, *a2 == 0);
  v4 = *(a2 + 1);
  v5 = *(a2 + 58);
  v6 = *(a2 + 59);
  v7 = *(a2 + 46);
  v8 = *(a2 + 47);
  v19[0] = v7;
  v19[1] = v8;
  v9 = *(a2 + 122);
  if (v8 >= v7)
  {
    v15 = *(a2 + 57);
  }

  else
  {
    v10 = v8 * v7;
    v11 = v8 / v7;
    if (v10 <= 0.0)
    {
      v12 = 1.0;
    }

    else
    {
      v12 = v11;
    }

    v13 = tan(*(a2 + 57) * 0.5);
    v14 = atan(v13 * v12);
    v15 = v14 + v14;
  }

  v16 = geo::WGS84::unitsPerMeterAtLatitude<geo::Radians,double>(v4);
  v18 = v15;
  gdc::ScaledOffsetPerspectiveView<double>::ScaledOffsetPerspectiveView(v20, v21, v19, &v18, v9, 0.0, 16.0, v5 * v16, v6 * v16, *(a2 + 60));
  return gdc::CameraView::CameraView(this, a2, v20);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>();
    unk_1EB83C0E0 = 0x2E4DB0E7E1795086;
    qword_1EB83C0E8 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>]";
    qword_1EB83C0F0 = 92;
  }
}

void ggl::BuildingFlatStroke::BuildingFlatStrokePipelineState::~BuildingFlatStrokePipelineState(ggl::BuildingFlatStroke::BuildingFlatStrokePipelineState *this)
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[312];
}

void geo::Intersect::intersection<double>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v109 = *MEMORY[0x1E69E9840];
  do
  {
    *(&v59 + v5) = *(a2 + v5 + 216) - *(a2 + v5 + 192);
    v5 += 8;
  }

  while (v5 != 24);
  v61 = *(a2 + 192);
  v62 = *(a2 + 208);
  v6 = (a2 + 240);
  v63 = v59;
  v64 = v60;
  v7 = 264;
  v8 = (a2 + 240);
  do
  {
    v9 = v8[3];
    v10 = *v8++;
    *(&v59 + v7 - 264) = v9 - v10;
    v7 += 8;
  }

  while (v7 != 288);
  v65 = *v6;
  v66 = *(a2 + 256);
  v11 = (a2 + 288);
  v67 = v59;
  v68 = v60;
  v12 = 312;
  v13 = (a2 + 288);
  do
  {
    v14 = v13[3];
    v15 = *v13++;
    *(&v59 + v12 - 312) = v14 - v15;
    v12 += 8;
  }

  while (v12 != 336);
  v69 = *v11;
  v70 = *(a2 + 304);
  v16 = (a2 + 336);
  v71 = v59;
  v72 = v60;
  v17 = 360;
  v18 = (a2 + 336);
  do
  {
    v19 = v18[3];
    v20 = *v18++;
    *(&v59 + v17 - 360) = v19 - v20;
    v17 += 8;
  }

  while (v17 != 384);
  v21 = 0;
  v73 = *v16;
  v74 = *(a2 + 352);
  v75 = v59;
  v76 = v60;
  do
  {
    *(&v59 + v21) = *(a2 + v21 + 240) - *(a2 + v21 + 192);
    v21 += 8;
  }

  while (v21 != 24);
  v77 = *(a2 + 192);
  v78 = *(a2 + 208);
  v79 = v59;
  v80 = v60;
  v22 = 336;
  v23 = (a2 + 240);
  do
  {
    v24 = v23[12];
    v25 = *v23++;
    *(&v59 + v22 - 336) = v24 - v25;
    v22 += 8;
  }

  while (v22 != 360);
  v81 = *v6;
  v82 = *(a2 + 256);
  v83 = v59;
  v84 = v60;
  v26 = 288;
  v27 = (a2 + 336);
  do
  {
    v28 = *(v27 - 6);
    v29 = *v27++;
    *(&v59 + v26 - 288) = v28 - v29;
    v26 += 8;
  }

  while (v26 != 312);
  v30 = 0;
  v85 = *v16;
  v86 = *(a2 + 352);
  v87 = v59;
  v88 = v60;
  do
  {
    *(&v59 + v30) = *(a2 + v30 + 192) - *(a2 + v30 + 288);
    v30 += 8;
  }

  while (v30 != 24);
  v89 = *v11;
  v90 = *(a2 + 304);
  v91 = v59;
  v92 = v60;
  v31 = 264;
  v32 = (a2 + 216);
  do
  {
    v33 = v32[6];
    v34 = *v32++;
    *(&v59 + v31 - 264) = v33 - v34;
    v31 += 8;
  }

  while (v31 != 288);
  v93 = *(a2 + 216);
  v94 = *(a2 + 232);
  v95 = v59;
  v96 = v60;
  v35 = 360;
  v36 = (a2 + 264);
  do
  {
    v37 = v36[12];
    v38 = *v36++;
    *(&v59 + v35 - 360) = v37 - v38;
    v35 += 8;
  }

  while (v35 != 384);
  v97 = *(a2 + 264);
  v98 = *(a2 + 280);
  v99 = v59;
  v100 = v60;
  v39 = 312;
  v40 = (a2 + 360);
  do
  {
    v41 = *(v40 - 6);
    v42 = *v40++;
    *(&v59 + v39 - 312) = v41 - v42;
    v39 += 8;
  }

  while (v39 != 336);
  v43 = 0;
  v101 = *(a2 + 360);
  v102 = *(a2 + 376);
  v103 = v59;
  v104 = v60;
  do
  {
    *(&v59 + v43) = *(a2 + v43 + 216) - *(a2 + v43 + 312);
    v43 += 8;
  }

  while (v43 != 24);
  v105 = *(a2 + 312);
  v106 = *(a2 + 328);
  v107 = v59;
  v108 = v60;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  std::vector<gm::Matrix<double,3,1>>::reserve(a1, 0xCuLL);
  v44 = 0;
  v45 = &v61;
  v46 = &v63;
  do
  {
    v47 = 0;
    v48 = 0.0;
    do
    {
      v48 = v48 + *(v46 + v47) * *(a3 + v47);
      v47 += 8;
    }

    while (v47 != 24);
    if (fabs(v48) > 2.22044605e-16)
    {
      v49 = 0;
      v50 = 0.0;
      do
      {
        v50 = v50 + *(v45 + v49) * *(a3 + v49);
        v49 += 8;
      }

      while (v49 != 24);
      v51 = -(v50 + *(a3 + 24)) / v48;
      if (v51 >= 0.0 && v51 <= 1.0)
      {
        for (i = 0; i != 24; i += 8)
        {
          *(&v59 + i) = *(v46 + i) * v51;
        }

        v54 = 0;
        v57 = v59;
        v58 = v60;
        do
        {
          *(&v59 + v54) = *(&v57 + v54) + *(v45 + v54);
          v54 += 8;
        }

        while (v54 != 24);
        v55 = v59;
        v56 = v60;
        std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](a1, &v55);
      }
    }

    ++v44;
    v46 += 3;
    v45 += 3;
  }

  while (v44 != 12);
}

void sub_1B299B2D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_7DaVinci16GroundAtmosphereEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A13928;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t md::UniLineLabelFeature::styleIndexForFeature(void *a1, uint64_t a2)
{
  md::UniLineLabelFeature::mergeAdditionalAttributes(&v5, a1[59], (a2 + 24));
  v3 = md::LineLabelFeature::styleIndexForAttributes(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  return v3;
}

void sub_1B299B3E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](uint64_t *a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    v6 = 24 * v7 + 24;
    v13 = *a1;
    v14 = a1[1];
    v15 = 24 * v7 + *a1 - v14;
    if (*a1 != v14)
    {
      v16 = 24 * v7 + *a1 - v14;
      do
      {
        v17 = *v13;
        *(v16 + 16) = v13[2];
        *v16 = v17;
        v16 += 24;
        v13 += 3;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v6;
    a1[2] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
  }

  a1[1] = v6;
}

void std::__shared_ptr_emplace<md::BuildingSharedRenderResources>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void *std::vector<gm::Matrix<double,2,1>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci16GroundAtmosphereEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A13928;
  a2[1] = v2;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100](uint64_t *a1, _OWORD *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v3 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v9);
    }

    *(16 * v6) = *a2;
    v5 = 16 * v6 + 16;
    v10 = *a1;
    v11 = a1[1];
    v12 = 16 * v6 + *a1 - v11;
    if (*a1 != v11)
    {
      v13 = (16 * v6 + *a1 - v11);
      do
      {
        v14 = *v10++;
        *v13++ = v14;
      }

      while (v10 != v11);
      v10 = *a1;
    }

    *a1 = v12;
    a1[1] = v5;
    a1[2] = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  a1[1] = v5;
}

uint64_t md::LineLabelFeature::textIndexForText(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    v6 = *(a1 + 384);
    v7 = *(a1 + 392);
    if (v6 == v7)
    {
      v8 = 0;
LABEL_34:
      if (v7 >= *(a1 + 400))
      {
        v22 = std::vector<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_back_slow_path<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>> const&>((a1 + 384), a2);
      }

      else
      {
        *(v7 + 24) = *(a2 + 24);
        if (*(a2 + 23) < 0)
        {
          std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(v7, *a2, *(a2 + 8));
        }

        else
        {
          v21 = *a2;
          *(v7 + 16) = *(a2 + 16);
          *v7 = v21;
        }

        *(v7 + 56) = *(a2 + 56);
        if (*(a2 + 55) < 0)
        {
          std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external((v7 + 32), *(a2 + 32), *(a2 + 40));
        }

        else
        {
          v23 = *(a2 + 32);
          *(v7 + 48) = *(a2 + 48);
          *(v7 + 32) = v23;
        }

        v22 = v7 + 64;
        *(a1 + 392) = v7 + 64;
      }

      *(a1 + 392) = v22;
    }

    else
    {
      v8 = 0;
      if (v2 >= 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      v10 = *(a2 + 55);
      if (v10 >= 0)
      {
        v11 = *(a2 + 55);
      }

      else
      {
        v11 = *(a2 + 40);
      }

      if (v10 >= 0)
      {
        v12 = (a2 + 32);
      }

      else
      {
        v12 = *(a2 + 32);
      }

      v13 = v6 + 32;
      while (1)
      {
        v14 = *(v13 - 9);
        v15 = v14;
        if ((v14 & 0x80u) != 0)
        {
          v14 = *(v13 - 24);
        }

        if (v3 == v14)
        {
          v16 = v15 >= 0 ? (v13 - 32) : *(v13 - 32);
          if (!memcmp(v9, v16, v3))
          {
            v17 = *(v13 + 23);
            v18 = v17;
            if ((v17 & 0x80u) != 0)
            {
              v17 = *(v13 + 8);
            }

            if (v11 == v17)
            {
              v19 = v18 >= 0 ? v13 : *v13;
              if (!memcmp(v12, v19, v11))
              {
                break;
              }
            }
          }
        }

        ++v8;
        v20 = v13 + 32;
        v13 += 64;
        if (v20 == v7)
        {
          if (v8 <= 0x64u)
          {
            goto LABEL_34;
          }

          return -1;
        }
      }
    }
  }

  else
  {
    return -1;
  }

  return v8;
}

void sub_1B299B918(_Unwind_Exception *exception_object)
{
  if (*(v2 + 23) < 0)
  {
    v4 = *v2;
    v5 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v5, v4);
  }

  *(v1 + 392) = v2;
  _Unwind_Resume(exception_object);
}

void std::__introsort<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,false>(double *a1, double *a2, double *a3, uint64_t a4, char a5)
{
  while (2)
  {
    v10 = a1;
LABEL_2:
    v11 = a4 - 1;
    while (1)
    {
      a1 = v10;
      a4 = v11;
      v12 = (a2 - v10) >> 4;
      if (v12 == 3)
      {

        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,0>(v10, v10 + 2, a2 - 2, a3);
        return;
      }

      if (v12 > 3)
      {
        if (v12 == 4)
        {

          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,0>(v10, v10 + 2, v10 + 4, a2 - 2, a3);
          return;
        }

        if (v12 == 5)
        {

          std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,0>(v10, v10 + 2, v10 + 4, v10 + 6, a2 - 2, a3);
          return;
        }
      }

      else
      {
        if (v12 < 2)
        {
          return;
        }

        if (v12 == 2)
        {
          v13 = *(a2 - 2);
          if (geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1}::operator()(*a3, a3[1], v13, *(a2 - 1), *v10, v10[1]))
          {
            v14 = *v10;
            *v10 = v13;
            v10[1] = *(a2 - 1);
            *(a2 - 1) = v14;
          }

          return;
        }
      }

      if (v12 <= 23)
      {
        if (a5)
        {

          std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*>(v10, a2, a3);
        }

        else
        {

          std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*>(v10, a2, a3);
        }

        return;
      }

      if (a4 == -1)
      {
        if (v10 != a2)
        {

          std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,gm::Matrix<double,2,1>*>(v10, a2, a2, a3);
        }

        return;
      }

      v15 = v12 >> 1;
      v16 = &a1[2 * (v12 >> 1)];
      if (v12 < 0x81)
      {
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,0>(&a1[2 * (v12 >> 1)], a1, a2 - 2, a3);
      }

      else
      {
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,0>(a1, v16, a2 - 2, a3);
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,0>(a1 + 2, v16 - 2, a2 - 4, a3);
        v17 = &a1[2 * v15 + 2];
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,0>(a1 + 4, v17, a2 - 6, a3);
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,0>(v16 - 2, v16, v17, a3);
        v18 = *a1;
        *a1 = *v16;
        *v16 = v18;
      }

      if ((a5 & 1) == 0 && !geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1}::operator()(*a3, a3[1], *(a1 - 2), *(a1 - 1), *a1, a1[1]))
      {
        v10 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,gm::Matrix<double,2,1> *,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &>(a1, a2, a3);
        a5 = 0;
        goto LABEL_2;
      }

      v19 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,gm::Matrix<double,2,1> *,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &>(a1, a2, a3);
      if ((v20 & 1) == 0)
      {
        goto LABEL_31;
      }

      v21 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*>(a1, v19, a3);
      v10 = v19 + 2;
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*>(v19 + 2, a2, a3))
      {
        break;
      }

      v11 = a4 - 1;
      if (!v21)
      {
LABEL_31:
        std::__introsort<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,false>(a1, v19, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v19 + 2;
        goto LABEL_2;
      }
    }

    a2 = v19;
    if (!v21)
    {
      continue;
    }

    break;
  }
}

double *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,0>(double *result, double *a2, double *a3, double *a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *a4;
  v7 = a4[1];
  v8 = *result;
  v9 = result[1];
  v10 = (v5 - v7) / (*a2 - *a4);
  if (vabdd_f64(*a2, *a4) < 2.22044605e-16)
  {
    v10 = 1.79769313e308;
  }

  if (vabdd_f64(v8, v6) >= 2.22044605e-16)
  {
    v11 = (v9 - v7) / (*result - *a4);
  }

  else
  {
    v11 = 1.79769313e308;
  }

  if (v10 < v11 || v10 == v11 && (v4 < v8 || v4 == v8 && v5 < v9))
  {
    v12 = *a3;
    v13 = a3[1];
    v14 = (v13 - v7) / (*a3 - v6);
    v15 = vabdd_f64(*a3, v6) < 2.22044605e-16;
    v16 = 1.79769313e308;
    if (!v15)
    {
      v16 = v14;
    }

    if (v16 < v10 || v16 == v10 && (v12 < v4 || v12 == v4 && v13 < v5))
    {
      *result = v12;
      result[1] = a3[1];
LABEL_48:
      *a3 = v8;
      a3[1] = v9;
      return result;
    }

    *result = v4;
    result[1] = a2[1];
    *a2 = v8;
    a2[1] = v9;
    v31 = *a3;
    v32 = a3[1];
    v33 = a4[1];
    v34 = v32 - v33;
    v35 = v9 - v33;
    v36 = v34 / (*a3 - *a4);
    if (vabdd_f64(*a3, *a4) < 2.22044605e-16)
    {
      v36 = 1.79769313e308;
    }

    v37 = v35 / (v8 - *a4);
    if (vabdd_f64(v8, *a4) >= 2.22044605e-16)
    {
      v38 = v37;
    }

    else
    {
      v38 = 1.79769313e308;
    }

    if (v36 < v38 || v36 == v38 && (v31 < v8 || v31 == v8 && v32 < v9))
    {
      *a2 = v31;
      a2[1] = a3[1];
      goto LABEL_48;
    }
  }

  else
  {
    v17 = *a3;
    v18 = a3[1];
    v19 = (v18 - v7) / (*a3 - v6);
    v15 = vabdd_f64(*a3, v6) < 2.22044605e-16;
    v20 = 1.79769313e308;
    if (!v15)
    {
      v20 = v19;
    }

    if (v20 < v10 || v20 == v10 && (v17 < v4 || v17 == v4 && v18 < v5))
    {
      *a2 = v17;
      a2[1] = a3[1];
      *a3 = v4;
      a3[1] = v5;
      v21 = *a2;
      v22 = a2[1];
      v23 = a4[1];
      v24 = v22 - v23;
      v25 = *result;
      v26 = result[1];
      v27 = v26 - v23;
      v28 = v24 / (*a2 - *a4);
      if (vabdd_f64(*a2, *a4) < 2.22044605e-16)
      {
        v28 = 1.79769313e308;
      }

      v29 = v27 / (*result - *a4);
      if (vabdd_f64(v25, *a4) >= 2.22044605e-16)
      {
        v30 = v29;
      }

      else
      {
        v30 = 1.79769313e308;
      }

      if (v28 < v30 || v28 == v30 && (v21 < v25 || v21 == v25 && v22 < v26))
      {
        *result = v21;
        result[1] = a2[1];
        *a2 = v25;
        a2[1] = v26;
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignPlanarParametersConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignPlanarParametersConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignPlanarParametersConstantData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>(void)::metadata >= 0x200)
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

void std::vector<gm::Matrix<double,2,1>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t md::CartographicTiledVectorRenderLayer<md::BuildingTileDataRenderable>::~CartographicTiledVectorRenderLayer(void *a1)
{
  *a1 = &unk_1F2A2E988;
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

  return md::CartographicTiledRenderLayer<md::BuildingTileDataRenderable>::~CartographicTiledRenderLayer(a1);
}

double geo::ConvexHull2<double>::boundingBox(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1.79769313e308;
  }

  do
  {
    v2 = 0;
    v3 = &v8;
    v4 = 1;
    do
    {
      v5 = *(a1 + 8 * v2);
      v6 = v4;
      *v3 = fmin(v5, *v3);
      *&v9[8 * v2 + 8] = fmax(*&v9[8 * v2 + 8], v5);
      v3 = v9;
      v2 = 1;
      v4 = 0;
    }

    while ((v6 & 1) != 0);
    a1 += 16;
  }

  while (a1 != a2);
  return v8;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>();
    unk_1EB83C0C0 = 0xA14CF6DCDEA3F5F5;
    qword_1EB83C0C8 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>]";
    qword_1EB83C0D0 = 92;
  }
}

uint64_t md::CartographicTiledRenderLayer<md::BuildingTileDataRenderable>::~CartographicTiledRenderLayer(uint64_t a1)
{
  *a1 = &unk_1F2A2B7C8;
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

  geo::Pool<md::BuildingTileDataRenderable>::disposeElements(a1 + 224);
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

  std::__function::__value_func<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::~__value_func[abi:nn200100](a1 + 56);
  *a1 = &unk_1F2A16858;
  v6 = *(a1 + 8);
  if (v6)
  {
    *(a1 + 16) = v6;
    operator delete(v6);
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[310];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_7DaVinci16PlanarParametersEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A13AC8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void md::ViewTransform::setCoordinateSpaceEtc(unsigned __int8 *a1, unsigned __int8 a2, float64x2_t *a3, uint64_t a4)
{
  *a1 = a2;
  v6 = (a1 + 8);
  gdc::CameraView::operator=((a1 + 8), a4);
  for (i = 0; i != 24; i += 8)
  {
    *(v99 + i) = -*&a1[i + 528];
  }

  v8 = *&v99[1];
  v9 = *(a1 + 69);
  v84 = v99[0];
  *(&v99[1] + 1) = v9;
  v10 = gm::Quaternion<double>::operator*(v99, (a1 + 504));
  v11 = 0;
  *&v102 = v10;
  *(&v102 + 1) = v12;
  v103 = v13;
  do
  {
    *(&v91 + v11) = -*(&v102 + v11);
    v11 += 8;
  }

  while (v11 != 24);
  v14 = 0;
  v15 = v92;
  v16 = v91;
  v17 = v84;
  v18 = vmuld_lane_f64(v84.f64[1] + v84.f64[1], v84, 1);
  v19 = (v8 + v8) * v8;
  v20 = vmuld_lane_f64(v17.f64[0] + v17.f64[0], v17, 1);
  v21 = v9 * (v8 + v8);
  v22 = v20 - v21;
  v23 = v8 * (v17.f64[0] + v17.f64[0]);
  v24 = v9 * (v84.f64[1] + v84.f64[1]);
  *&v91 = 1.0 - (v18 + v19);
  *(&v91 + 1) = v21 + v20;
  v25 = 1.0 - v17.f64[0] * (v17.f64[0] + v17.f64[0]);
  v26 = (v84.f64[1] + v84.f64[1]) * v8;
  v27 = v9 * (v17.f64[0] + v17.f64[0]);
  *&v94 = v24 + v23;
  *(&v94 + 1) = v26 - v27;
  *&v92 = v23 - v24;
  *(&v92 + 1) = v22;
  *&v93 = v25 - v19;
  *(&v93 + 1) = v27 + v26;
  *&v95 = v25 - v18;
  v28 = v99;
  v29 = &v91;
  do
  {
    v30 = 0;
    v31 = v28;
    do
    {
      *v31 = *(v29 + v30);
      v31 += 4;
      v30 += 24;
    }

    while (v30 != 72);
    ++v14;
    v28 = (v28 + 8);
    v29 = (v29 + 8);
  }

  while (v14 != 3);
  v32 = 0;
  *(&v99[1] + 1) = 0;
  *(&v99[3] + 1) = 0;
  *&v101[8] = v16;
  *&v101[24] = v15;
  *&v101[32] = 0x3FF0000000000000;
  v33 = v100;
  *(a1 + 1528) = v99[4];
  *(a1 + 1544) = v33;
  v34 = *&v101[24];
  *(a1 + 1560) = *&v101[8];
  *(a1 + 1576) = v34;
  v35 = v99[1];
  *(a1 + 1464) = v99[0];
  *(a1 + 1480) = v35;
  v36 = v99[3];
  *(a1 + 1496) = v99[2];
  *(a1 + 1512) = v36;
  *&v101[16] = 0u;
  *v101 = 0u;
  memset(v99 + 8, 0, 72);
  v37 = v99;
  v100 = 0x3FF0000000000000;
  *&v101[32] = 0x3FF0000000000000;
  __asm { FMOV            V1.2D, #0.5 }

  v43 = vmulq_f64(*a3, _Q1);
  *(&v99[2] + 1) = *&v43.f64[1];
  *v99 = v43.f64[0];
  *&v101[8] = v43;
  do
  {
    v44 = 0;
    v45 = a1 + 816;
    do
    {
      v46 = 0;
      v47 = 0.0;
      v48 = v37;
      do
      {
        v49 = *v48;
        v48 += 4;
        v47 = v47 + *&v45[v46] * v49;
        v46 += 8;
      }

      while (v46 != 32);
      *(&v91 + 4 * v44++ + v32) = v47;
      v45 += 32;
    }

    while (v44 != 4);
    ++v32;
    v37 = (v37 + 8);
  }

  while (v32 != 4);
  v50 = v96;
  *(a1 + 1656) = v95;
  *(a1 + 1672) = v50;
  v51 = v98;
  *(a1 + 1688) = v97;
  *(a1 + 1704) = v51;
  v52 = v92;
  *(a1 + 1592) = v91;
  *(a1 + 1608) = v52;
  v53 = v94;
  *(a1 + 1624) = v93;
  *(a1 + 1640) = v53;
  v54 = gdc::CameraView::orientation(v6);
  v91 = xmmword_1B33B0740;
  *&v92 = 0;
  *(a1 + 172) = gm::Quaternion<double>::operator*(v54, &v91);
  *(a1 + 173) = v55;
  *(a1 + 174) = v56;
  *&v92 = 0;
  v91 = 0x3FF0000000000000uLL;
  *(a1 + 175) = gm::Quaternion<double>::operator*(v54, &v91);
  *(a1 + 176) = v57;
  *(a1 + 177) = v58;
  v91 = 0uLL;
  *&v92 = 0xBFF0000000000000;
  *(a1 + 178) = gm::Quaternion<double>::operator*(v54, &v91);
  *(a1 + 179) = v59;
  *(a1 + 180) = v60;
  v102 = 0uLL;
  v103 = 0xBFF0000000000000;
  v61 = *a1;
  if (v61 == 1)
  {
    v62 = gdc::CameraView::position(v6);
    v63 = 0;
    v89 = *v62;
    v90 = *(v62 + 16);
    v64 = 0.0;
    do
    {
      v64 = v64 + *(&v89 + v63) * *(&v89 + v63);
      v63 += 8;
    }

    while (v63 != 24);
    v65 = 0;
    v66 = 1.0 / sqrt(v64);
    do
    {
      *(&v91 + v65) = *(&v89 + v65) * v66;
      v65 += 8;
    }

    while (v65 != 24);
    v67 = 0;
    v87 = v91;
    v88 = *&v92;
    do
    {
      *(&v91 + v67) = -*(&v87 + v67);
      v67 += 8;
    }

    while (v67 != 24);
    v102 = v91;
    v103 = v92;
  }

  v68 = 0;
  v69 = (a1 + 1424);
  v70 = 0.0;
  do
  {
    v70 = v70 + *(v69 + v68) * *(&v102 + v68);
    v68 += 8;
  }

  while (v68 != 24);
  v71 = acos(fmin(fmax(v70, -1.0), 1.0)) * 57.2957795;
  *(a1 + 362) = v71;
  gdc::Camera::verticalFieldOfView(&v91, v6);
  v72 = tan(*&v91 * 0.5) * ((a3->f64[0] + a3->f64[0]) * *(a1 + 122)) / (*(a1 + 122) * a3->f64[1]);
  *(a1 + 182) = v72;
  if (!v61)
  {
    a1[1720] = 0;
    v73 = gdc::CameraView::position(v6);
    v89 = *v73;
    v90 = *(v73 + 16);
    v74 = gdc::Camera::cameraFrame(v6);
    v75 = 0;
    v76 = v90 + *(v74 + 16) * -0.0000000249532021;
    v87 = *v69;
    v88 = *(a1 + 180);
    if (v76 > 0.0)
    {
      v77 = v88;
      v78 = v88 < 0.0;
      a1[1720] = v88 < 0.0;
      if (!v78)
      {
        return;
      }

      v79 = 0;
      v80 = -v76 / v77;
      *(a1 + 222) = v80;
      do
      {
        *(&v91 + v79) = *(&v87 + v79) * v80;
        v79 += 8;
      }

      while (v79 != 24);
      v81 = 0;
      v85 = v91;
      v86 = v92;
      do
      {
        *(&v91 + v81) = *(&v85 + v81) + *(&v89 + v81);
        v81 += 8;
      }

      while (v81 != 24);
      v82 = v92;
      *(a1 + 1752) = v91;
      *(a1 + 221) = v82;
      v83 = v72 * v80;
      *(a1 + 223) = (v83 * v83);
      v75 = *&v89 > v83 && *&v89 < (1.0 - v83);
    }

    a1[1720] = v75;
  }
}

uint64_t md::LineLabelFeature::LineLabelFeature(uint64_t a1, int a2, int a3)
{
  *(a1 + 8) = 850045863;
  v6 = a1 + 8;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0x100000000;
  *(a1 + 136) = 0;
  *(a1 + 141) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *a1 = &unk_1F29E68D8;
  v7 = mdm::zone_mallocator::instance(a1);
  v8 = pthread_rwlock_rdlock((v7 + 32));
  if (v8)
  {
    geo::read_write_lock::logFailure(v8, "read lock", v9);
  }

  v10 = malloc_type_zone_malloc(*v7, 0xC0uLL, 0x108104033B5EEB0uLL);
  atomic_fetch_add((v7 + 24), 1u);
  geo::read_write_lock::unlock((v7 + 32));
  *(v10 + 8) = 0u;
  *v10 = &unk_1F29EEDD0;
  *(v10 + 2) = 0u;
  *(v10 + 12) = 0;
  *(v10 + 56) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(v10 + 72) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  *(v10 + 11) = v6;
  *(v10 + 12) = 0;
  *(v10 + 104) = 0u;
  *(v10 + 16) = 0;
  *(v10 + 136) = 0u;
  *(v10 + 20) = 0;
  *(v10 + 168) = 0u;
  v10[184] = a3;
  v10[185] = a2;
  *(v10 + 186) = 0;
  *(v10 + 95) = 0;
  if (a2 == 3)
  {
    v10[189] = 1;
  }

  if (a3 == 6)
  {
    v10[190] = 1;
  }

  for (i = 160; i != 184; ++i)
  {
    atomic_store(0xFEu, &v10[i]);
  }

  *(a1 + 192) = v10 + 32;
  *(a1 + 200) = v10;
  v12 = *(v10 + 5);
  if (!v12)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v10 + 2, 1uLL, memory_order_relaxed);
    *(v10 + 4) = v10 + 32;
    *(v10 + 5) = v10;
    goto LABEL_13;
  }

  if (v12->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v10 + 2, 1uLL, memory_order_relaxed);
    *(v10 + 4) = v10 + 32;
    *(v10 + 5) = v10;
    std::__shared_weak_count::__release_weak(v12);
LABEL_13:
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  *(a1 + 232) = 0;
  *(a1 + 248) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = a1 + 232;
  *(a1 + 256) = 1;
  *(a1 + 264) = a3;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0;
  *(a1 + 304) = -1;
  *(a1 + 320) = a1 + 328;
  *(a1 + 328) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 312) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  return a1;
}

void sub_1B299CF04(_Unwind_Exception *a1)
{
  geo::read_write_lock::unlock((v2 + 32));
  md::LabelFeature::~LabelFeature(v1);
  _Unwind_Resume(a1);
}

void md::HikingRenderLayer::~HikingRenderLayer(uint64_t **this)
{
  *this = &unk_1F2A32AD0;
  std::unique_ptr<md::TrailJunctionRenderable::SharedResources>::reset[abi:nn200100](this + 64, 0);
  md::RoadRenderLayer::~RoadRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A32AD0;
  std::unique_ptr<md::TrailJunctionRenderable::SharedResources>::reset[abi:nn200100](this + 64, 0);

  md::RoadRenderLayer::~RoadRenderLayer(this);
}

void md::RoadRenderLayer::~RoadRenderLayer(md::RoadRenderLayer *this)
{
  *this = &unk_1F2A36720;
  v2 = *(this + 60);
  if (v2)
  {
    v8 = *(this + 60);
    std::vector<md::RoadStyling::Entry>::__destroy_vector::operator()[abi:nn200100](&v8);
    MEMORY[0x1B8C62190](v2, 0x20C40960023A9);
  }

  v3 = *(this + 61);
  if (v3)
  {
    *(this + 62) = v3;
    operator delete(v3);
  }

  std::unique_ptr<md::PatternedSharedResources>::reset[abi:nn200100](this + 59, 0);
  v4 = *(this + 57);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  std::unique_ptr<md::RoadSharedResources>::reset[abi:nn200100](this + 55, 0);
  v5 = *(this + 52);
  if (v5)
  {
    *(this + 53) = v5;
    operator delete(v5);
  }

  v6 = *(this + 49);
  if (v6)
  {
    *(this + 50) = v6;
    operator delete(v6);
  }

  v7 = *(this + 46);
  if (v7)
  {
    *(this + 47) = v7;
    operator delete(v7);
  }

  md::CartographicTiledVectorRenderLayer<md::RoadTileDataRenderable>::~CartographicTiledVectorRenderLayer(this);
}

{
  md::RoadRenderLayer::~RoadRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci16PlanarParametersEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A13AC8;
  a2[1] = v2;
  return result;
}

std::__shared_weak_count *std::__split_buffer<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator> &>::~__split_buffer(std::__shared_weak_count *a1)
{
  v1 = a1;
  shared_owners = a1->__shared_owners_;
  shared_weak_owners = a1->__shared_weak_owners_;
  while (shared_weak_owners != shared_owners)
  {
    v1->__shared_weak_owners_ = shared_weak_owners - 24;
    a1 = *(shared_weak_owners - 8);
    if (a1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a1);
      shared_weak_owners = v1->__shared_weak_owners_;
    }

    else
    {
      shared_weak_owners -= 24;
    }
  }

  v4 = v1->__vftable;
  if (v1->__vftable)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>>(v5, v4);
  }

  return v1;
}

uint64_t md::CartographicTiledVectorRenderLayer<md::RoadTileDataRenderable>::~CartographicTiledVectorRenderLayer(void *a1)
{
  *a1 = &unk_1F2A2E5C8;
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

  return md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::~CartographicTiledRenderLayer(a1);
}

uint64_t md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::~CartographicTiledRenderLayer(uint64_t a1)
{
  *a1 = &unk_1F2A2B340;
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

  geo::Pool<md::RoadTileDataRenderable>::disposeElements(a1 + 224);
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

  std::__function::__value_func<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::~__value_func[abi:nn200100](a1 + 56);
  *a1 = &unk_1F2A16858;
  v6 = *(a1 + 8);
  if (v6)
  {
    *(a1 + 16) = v6;
    operator delete(v6);
  }

  return a1;
}

void md::ViewTransform::setFocus(uint64_t a1, uint64_t a2, double *a3)
{
  v5 = 0;
  v6 = a1 + 1728;
  do
  {
    *(v6 + v5) = *(a2 + v5);
    v5 += 8;
  }

  while (v5 != 24);
  v31 = a3[1];
  v7 = tan(*a3 * 0.00872664626 + 0.785398163);
  v8 = log(v7);
  v9.f64[0] = v31;
  v9.f64[1] = v8;
  __asm { FMOV            V1.2D, #0.5 }

  *(a1 + 1752) = vmlaq_f64(_Q1, xmmword_1B33B0700, v9);
  *(a1 + 1768) = 0;
  v15 = gdc::CameraView::position((a1 + 8));
  for (i = 0; i != 24; i += 8)
  {
    *(&v32 + i) = *(v6 + i) - *(v15 + i);
  }

  v17 = 0;
  v18 = 0.0;
  do
  {
    v18 = v18 + *(&v32 + v17) * *(&v32 + v17);
    v17 += 8;
  }

  while (v17 != 24);
  v19 = sqrt(v18);
  *(a1 + 1776) = v19;
  v20 = *(a1 + 1456) * v19;
  v21 = *a3;
  v22 = cos(*a3 * 0.034906585) * -559.82 + 111132.92;
  v23 = v22 + cos(v21 * 0.0698131701) * 1.175;
  v24 = v23 + cos(v21 * 0.104719755) * -0.0023;
  v25 = v21 * 0.00872664626;
  v26 = tan(v25 + 0.78103484);
  v27 = log(v26);
  v28 = tan(v25 + 0.789761487);
  v29 = fabs((log(v28) - v27) * 0.159154943) / v24;
  v30 = 1.0 / v29;
  *(a1 + 1792) = log2f(v30);
  *(a1 + 1784) = v20 * v29 * (v20 * v29);
  *(a1 + 1720) = v20 * v29 < 0.1;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignTileTransformConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignTileTransformConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignTileTransformConstantData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>>(void)::metadata >= 0x200)
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

uint64_t md::Logic<md::CameraLogic,md::CameraContext,md::LogicDependencies<gdc::TypeList<md::ElevationContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x1AF456233693CD46)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::ElevationContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 128))(v5, a2, &v7, v3);
    }
  }

  return result;
}

void md::TransitRenderLayer::~TransitRenderLayer(md::TransitRenderLayer *this)
{
  *this = off_1F2A39BE0;
  *(this + 32) = 0;
  md::CartographicTiledRenderLayer<md::TransitTileDataRenderable>::clearScene(this);
  *(this + 32) = 0;
  (*(*this + 48))(this);
  md::TransitRenderLayer::updateActiveTileDatas(this);
  [*(*(this + 47) + 112) stop];
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 63));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 60));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 57));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 54));
  v2 = *(this + 49);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::unique_ptr<md::CTransitRenderResources>::reset[abi:nn200100](this + 47, 0);

  md::CartographicTiledVectorRenderLayer<md::TransitTileDataRenderable>::~CartographicTiledVectorRenderLayer(this);
}

{
  md::TransitRenderLayer::~TransitRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B299DA34(_Unwind_Exception *a1)
{
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(v1 + 504));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(v1 + 480));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(v1 + 456));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(v1 + 432));
  v3 = *(v1 + 392);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::unique_ptr<md::CTransitRenderResources>::reset[abi:nn200100]((v1 + 376), 0);
  md::CartographicTiledVectorRenderLayer<md::TransitTileDataRenderable>::~CartographicTiledVectorRenderLayer(v1);
  _Unwind_Resume(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>>();
    unk_1EB83C200 = 0xCDFBB34DE0FFB731;
    qword_1EB83C208 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>]";
    qword_1EB83C210 = 82;
  }
}

void geo::codec::featureGetLocalizedLabelForNativeLabel(std::__shared_weak_count **a1, unint64_t a2, void *a3, void *a4)
{
  if (a1)
  {
    if (a1[1])
    {
      v5 = a2;
      v6 = a3;
      v7 = a4;
      v8 = std::__shared_weak_count::lock(a1[1]);
      v9 = v8;
      if (v8)
      {
        v8 = *a1;
      }

      a4 = v7;
      a3 = v6;
      a2 = v5;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    geo::codec::vectorTileGetLocalizedLabelForNativeLabel(v8, a2, a3, a4);
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);

      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

void sub_1B299DBE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TransformConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransformConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TransformConstantDataHandle>();
    *algn_1EB83C3D8 = 0x74DC502726E97929;
    qword_1EB83C3E0 = "md::ls::TransformConstantDataHandle]";
    qword_1EB83C3E8 = 35;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransformConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransformConstantDataHandle>(void)::metadata >= 0x200)
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

uint64_t std::__function::__func<md::UniLineLabelFeature::updateText(void const*,BOOL)::$_0,std::allocator<md::UniLineLabelFeature::updateText(void const*,BOOL)::$_0>,void ()(std::unique_ptr<md::LabelLineSegment> const&)>::operator()(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (!*(*a2 + 32))
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      result = (*(**(result + 8) + 680))(*(result + 8), v3, *(result + 16));
      *(v2 + 38) = result;
    }
  }

  return result;
}

void sub_1B299E0CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, void *a23)
{
  v27 = *v25;
  if (*v25)
  {
    *(v25 + 8) = v27;
    operator delete(v27);
  }

  MEMORY[0x1B8C62190](v25, 0x10A0C40149C9738);
  std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>>>::__deallocate_node(a23);
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>>>::__deallocate_node(a18);
  if (a16)
  {
    operator delete(a16);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a10)
  {
    operator delete(a10);
  }

  MEMORY[0x1B8C62190](v23, v24);
  _Unwind_Resume(a1);
}

void std::vector<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::clear[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 9) < 0)
      {
        v4 = *(v3 - 32);
        v5 = mdm::zone_mallocator::instance(a1);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v5, v4);
      }

      v6 = (v3 - 64);
      if (*(v3 - 41) < 0)
      {
        v7 = *v6;
        v8 = mdm::zone_mallocator::instance(a1);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v8, v7);
      }

      v3 -= 64;
    }

    while (v6 != v2);
  }

  *(a1 + 1) = v2;
}

void md::TransitRenderLayer::updateActiveTileDatas(md::TransitRenderLayer *this)
{
  v148 = *MEMORY[0x1E69E9840];
  v2 = this + 472;
  v3 = (this + 496);
  v4 = this + 480;
  v5 = (this + 504);
  v6 = *(this + 504);
  v7 = *(this + 61);
  v8 = *(this + 472);
  *(this + 59) = *(this + 62);
  *(this + 30) = v6;
  *(this + 31) = v8;
  *(this + 64) = v7;
  if (*(&v6 + 1))
  {
    v9 = (v6 + 16);
  }

  else
  {
    v9 = (this + 472);
  }

  *v9 = v4;
  if (v7)
  {
    v3 = (*v5 + 16);
  }

  v135 = (this + 504);
  *v3 = v5;
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 60));
  *(this + 60) = 0;
  *(this + 61) = 0;
  v136 = v4;
  *(this + 59) = v4;
  v139 = this;
  v10 = *(this + 34);
  v11 = *(this + 35);
  while (v10 != v11)
  {
    v12 = *v10++;
    std::__tree<std::shared_ptr<md::TransitTileData>,md::TransitTileSetCompare,std::allocator<std::shared_ptr<md::TransitTileData>>>::__emplace_unique_key_args<std::shared_ptr<md::TransitTileData>,std::shared_ptr<md::TransitTileData> const&>(v2, *(v12 + 392));
  }

  v13 = *(v139 + 53);
  v137 = (v139 + 432);
  if (v13 != (v139 + 432))
  {
    while (1)
    {
      v14 = v13[4];
      if (!std::__tree<std::shared_ptr<md::TransitTileData>,md::TransitTileSetCompare,std::allocator<std::shared_ptr<md::TransitTileData>>>::__count_unique<std::shared_ptr<md::TransitTileData>>(*v135, v14))
      {
        break;
      }

LABEL_11:
      v15 = v13[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v13[2];
          v17 = *v16 == v13;
          v13 = v16;
        }

        while (!v17);
      }

      v13 = v16;
      if (v16 == v137)
      {
        goto LABEL_105;
      }
    }

    v18 = *(*(v139 + 47) + 80);
    v19 = *(v14 + 172);
    v20 = *(v14 + 176);
    *&v143 = __PAIR64__(v19, v20);
    v140 = v14;
    v21 = *(v14 + 169);
    DWORD2(v143) = v21;
    v22 = 1 << v21;
    if (v20 < 0)
    {
      v20 += v22;
    }

    else
    {
      v23 = __OFSUB__(v20, v22);
      v24 = v20 - v22;
      if (v24 < 0 != v23)
      {
        goto LABEL_23;
      }

      v20 = v24;
    }

    LODWORD(v143) = v20;
LABEL_23:
    v25 = *(v18 + 8);
    if (!v25)
    {
LABEL_37:
      operator new();
    }

    while (1)
    {
      v26 = v25;
      v27 = *(v25 + 8);
      if (v20 != v27)
      {
        break;
      }

      v28 = *(v26 + 9);
      if (v19 == v28)
      {
        v29 = *(v26 + 10);
        if (v29 <= v21)
        {
          if (v29 >= v21)
          {
            goto LABEL_38;
          }

          goto LABEL_36;
        }

LABEL_33:
        v25 = *v26;
        if (!*v26)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v19 < v28)
        {
          goto LABEL_33;
        }

        if (v28 >= v19)
        {
LABEL_38:
          v31 = v26[8];
          v30 = v26[9];
          if (v31 >= v30)
          {
            v33 = v26[7];
            v34 = (v31 - v33) >> 3;
            if ((v34 + 1) >> 61)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v35 = v30 - v33;
            v36 = v35 >> 2;
            if (v35 >> 2 <= (v34 + 1))
            {
              v36 = v34 + 1;
            }

            if (v35 >= 0x7FFFFFFFFFFFFFF8)
            {
              v37 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v37 = v36;
            }

            if (v37)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v37);
            }

            v38 = (8 * v34);
            *v38 = v140;
            v32 = 8 * v34 + 8;
            v39 = v26[7];
            v40 = v26[8] - v39;
            v41 = v38 - v40;
            memcpy(v38 - v40, v39, v40);
            v42 = v26[7];
            v26[7] = v41;
            v26[8] = v32;
            v26[9] = 0;
            if (v42)
            {
              operator delete(v42);
            }
          }

          else
          {
            *v31 = v140;
            v32 = (v31 + 1);
          }

          v26[8] = v32;
          v43 = *(v139 + 47);
          v45 = *(v43 + 80);
          v44 = *(v43 + 88);
          if (v44)
          {
            atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
          }

          *(v140 + 1240) = v45;
          v46 = *(v140 + 1248);
          *(v140 + 1248) = v44;
          if (v46)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v46);
          }

          *(v140 + 1379) = 1;
          *(v140 + 1377) = 1;
          if (*(v140 + 792))
          {
            v47 = *(v140 + 896);
            for (i = *(v140 + 904); v47 != i; v47 += 31)
            {
              v49 = v47[3];
              if (!v49)
              {
                md::LabelExternalObjectsModerator::externalTransitLink(&v143, *(v140 + 792), *v47);
                if (!v143)
                {
                  operator new();
                }

                v50 = v143;
                v51 = v47[4];
                *(v47 + 3) = v143;
                if (v51)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v51);
                  v49 = v47[3];
                }

                else
                {
                  v49 = v50;
                }
              }

              atomic_store(1u, (v49 + 104));
            }
          }

          v52 = *(*(v139 + 47) + 96);
          if (!v52)
          {
            goto LABEL_11;
          }

          *(v140 + 1232) = v52;
          v53 = *(v140 + 952);
          v54 = *(v140 + 960);
          while (2)
          {
            if (v53 == v54)
            {
              goto LABEL_11;
            }

            v55 = *v53;
            *(v55 + 64) = 1;
            v56 = *(*(v55 + 8) + 40);
            v57 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v52 + 32), v56);
            if (v57)
            {
              v59 = v57[3];
              v58 = v57[4];
              if (v58)
              {
                atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
              }
            }

            else
            {
              v60 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v52 + 72), v56);
              if (!v60)
              {
                operator new();
              }

              v61 = v60;
              v59 = v60[3];
              v58 = v60[4];
              if (v58)
              {
                atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
                v56 = *(*(*v53 + 8) + 40);
              }

              v142 = v56;
              *&v143 = &v142;
              v62 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::TransitNodeFeature>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::TransitNodeFeature>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::TransitNodeFeature>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::TransitNodeFeature>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v52 + 32), v56);
              if (v58)
              {
                atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v63 = v62[4];
              v62[3] = v59;
              v62[4] = v58;
              if (v63)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v63);
              }

              std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::TransitNodeFeature>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::TransitNodeFeature>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::TransitNodeFeature>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::TransitNodeFeature>>>>::erase((v52 + 72), v61);
            }

            v64 = v59 + 4;
            v65 = v59[5];
            v66 = v59[6];
            if (v65 >= v66)
            {
              v69 = (v65 - *v64) >> 4;
              v70 = v69 + 1;
              if ((v69 + 1) >> 60)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v71 = v66 - *v64;
              if (v71 >> 3 > v70)
              {
                v70 = v71 >> 3;
              }

              if (v71 >= 0x7FFFFFFFFFFFFFF0)
              {
                v72 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v72 = v70;
              }

              v145 = v59 + 4;
              if (v72)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v72);
              }

              v73 = 16 * v69;
              v74 = *v53;
              *(16 * v69) = *v53;
              if (*(&v74 + 1))
              {
                atomic_fetch_add_explicit((*(&v74 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              v68 = (v73 + 16);
              v75 = v59[4];
              v76 = v59[5] - v75;
              v77 = v73 - v76;
              memcpy((v73 - v76), v75, v76);
              v78 = v59[4];
              v59[4] = v77;
              v59[5] = v68;
              v79 = v59[6];
              v59[6] = 0;
              *&v144 = v78;
              *(&v144 + 1) = v79;
              *&v143 = v78;
              *(&v143 + 1) = v78;
              std::__split_buffer<std::shared_ptr<md::MuninRoadLabel>>::~__split_buffer(&v143);
            }

            else
            {
              *v65 = *v53;
              v67 = v53[1];
              v65[1] = v67;
              if (v67)
              {
                atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
              }

              v68 = v65 + 2;
            }

            v80 = v59[4];
            v81 = 126 - 2 * __clz((v68 - v80) >> 4);
            v59[5] = v68;
            if (v68 == v80)
            {
              v82 = 0;
            }

            else
            {
              v82 = v81;
            }

            std::__introsort<std::_ClassicAlgPolicy,md::TransitNodeFeature::addNode(std::shared_ptr<md::TransitNode> const&)::$_0 &,std::shared_ptr<md::TransitNode>*,false>(v80, v68, v82, 1);
            v83 = v59[5];
            v84 = *(v83 - 16);
            if (v84 == *v53)
            {
              if (*v64 == v83)
              {
                v85 = 5;
              }

              else
              {
                v85 = *(v84 + 61);
              }

              atomic_store(v85, (v59[2] + 25));
              atomic_store(v59[4] != v59[5], (v59[2] + 24));
              if (v58)
              {
LABEL_98:
                std::__shared_weak_count::__release_shared[abi:nn200100](v58);
              }
            }

            else if (v58)
            {
              goto LABEL_98;
            }

            v53 += 2;
            continue;
          }
        }

LABEL_36:
        v25 = v26[1];
        if (!v25)
        {
          goto LABEL_37;
        }
      }
    }

    if (v20 >= v27)
    {
      if (v27 >= v20)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    goto LABEL_33;
  }

LABEL_105:
  v86 = *(v139 + 56);
  v138 = (v139 + 456);
  if (v86 != (v139 + 456))
  {
    while (1)
    {
      v87 = v86[4];
      if (!std::__tree<std::shared_ptr<md::TransitTileData>,md::TransitTileSetCompare,std::allocator<std::shared_ptr<md::TransitTileData>>>::__count_unique<std::shared_ptr<md::TransitTileData>>(*v136, v87))
      {
        break;
      }

LABEL_107:
      v88 = v86[1];
      if (v88)
      {
        do
        {
          v89 = v88;
          v88 = *v88;
        }

        while (v88);
      }

      else
      {
        do
        {
          v89 = v86[2];
          v17 = *v89 == v86;
          v86 = v89;
        }

        while (!v17);
      }

      v86 = v89;
      if (v89 == v138)
      {
        goto LABEL_193;
      }
    }

    v143 = 0uLL;
    v146 = 0;
    *(&v144 + 1) = 0;
    *(&v144 + 1) = 0;
    v147 = 1065353216;
    md::TransitTileData::setSelectedLines(v87, &v143);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(0);
    v90 = *(v87 + 976);
    v91 = *(v87 + 984);
    v143 = 0uLL;
    v146 = 0;
    *(&v144 + 1) = 0;
    *(&v144 + 1) = 0;
    v147 = 1065353216;
    md::TransitTileData::setSelectedNodes(v90, v91, &v143);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(*(&v144 + 1));
    v93 = v143;
    if (v143)
    {
      v94 = mdm::zone_mallocator::instance(v92);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(v94, v93);
    }

    *(v87 + 1379) = 0;
    if (*(v87 + 792))
    {
      v95 = *(v87 + 896);
      v96 = *(v87 + 904);
      while (v95 != v96)
      {
        v97 = *(v95 + 24);
        atomic_store(0, (v97 + 104));
        atomic_store(0, (v97 + 105));
        v95 += 248;
      }
    }

    v98 = *(*(v139 + 47) + 80);
    v99 = *(v87 + 176);
    *&v143 = __PAIR64__(*(v87 + 172), v99);
    DWORD2(v143) = *(v87 + 169);
    v100 = 1 << SBYTE8(v143);
    if ((v99 & 0x80000000) != 0)
    {
      v101 = v100 + v99;
    }

    else
    {
      v23 = __OFSUB__(v99, v100);
      v101 = v99 - v100;
      if (v101 < 0 != v23)
      {
        goto LABEL_126;
      }
    }

    LODWORD(v143) = v101;
LABEL_126:
    v102 = std::__tree<std::__value_type<md::TransitInterTileMediator::TileKey,md::TransitInterTileMediator::TileInfo>,std::__map_value_compare<md::TransitInterTileMediator::TileKey,std::__value_type<md::TransitInterTileMediator::TileKey,md::TransitInterTileMediator::TileInfo>,std::less<md::TransitInterTileMediator::TileKey>,true>,std::allocator<std::__value_type<md::TransitInterTileMediator::TileKey,md::TransitInterTileMediator::TileInfo>>>::find<md::TransitInterTileMediator::TileKey>(v98, &v143);
    if (v98 + 1 != v102)
    {
      v103 = v102;
      v105 = v102[7];
      v104 = v102[8];
      if (v105 == v104)
      {
        v104 = v102[7];
        v106 = v104;
      }

      else
      {
        v106 = v102[7];
        while (*v106 != v87)
        {
          if (++v106 == v104)
          {
            v106 = v102[8];
            goto LABEL_139;
          }
        }

        if (v106 != v104)
        {
          v107 = v106 + 1;
          if (v106 + 1 != v104)
          {
            do
            {
              if (*v107 != v87)
              {
                *v106++ = *v107;
              }

              ++v107;
            }

            while (v107 != v104);
            v105 = v102[7];
            v104 = v102[8];
          }
        }
      }

LABEL_139:
      v108 = v104 - (v106 + 1);
      if (v104 != v106 + 1)
      {
        memmove(v106, v106 + 1, v104 - (v106 + 1));
        v105 = v103[7];
      }

      v103[8] = v106 + v108;
      if (v105 == (v106 + v108))
      {
        md::TransitInterTileMediator::updateTileInfos(v98, &v143, (v103 + 6));
        v109 = v103[1];
        if (v109)
        {
          do
          {
            v110 = v109;
            v109 = *v109;
          }

          while (v109);
        }

        else
        {
          v111 = v103;
          do
          {
            v110 = v111[2];
            v17 = *v110 == v111;
            v111 = v110;
          }

          while (!v17);
        }

        if (*v98 == v103)
        {
          *v98 = v110;
        }

        v112 = v98[1];
        v98[2] = (v98[2] - 1);
        std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v112, v103);
        v113 = v103[7];
        if (v113)
        {
          v103[8] = v113;
          operator delete(v113);
        }

        operator delete(v103);
      }
    }

    v114 = *(*(v139 + 47) + 96);
    if (v114)
    {
      *(v87 + 1232) = 0;
      v115 = *(v87 + 952);
      v116 = *(v87 + 960);
      if (v115 != v116)
      {
        v141 = *(v87 + 960);
        do
        {
          v117 = *v115;
          *(v117 + 64) = 0;
          v118 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v114 + 32), *(*(v117 + 8) + 40));
          if (v118)
          {
            v119 = v118;
            v120 = v118[3];
            v121 = v120[5];
            v122 = *(v121 - 2);
            if (v120[4] == v121)
            {
              goto LABEL_178;
            }

            v123 = v120[4];
            while (*v123 != v117)
            {
              v123 += 2;
              if (v123 == v121)
              {
                goto LABEL_178;
              }
            }

            if (v123 != v121)
            {
              v124 = v123 + 2;
              if (v123 + 2 != v121)
              {
                do
                {
                  v125 = *v124;
                  if (*v124 != *v115)
                  {
                    v126 = v124[1];
                    *v124 = 0;
                    v124[1] = 0;
                    v127 = v123[1];
                    *v123 = v125;
                    v123[1] = v126;
                    if (v127)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v127);
                    }

                    v123 += 2;
                  }

                  v124 += 2;
                }

                while (v124 != v121);
                v121 = v120[5];
              }

              v116 = v141;
            }

            if (v123 == v121)
            {
LABEL_178:
              v123 = v121;
            }

            else
            {
              while (v121 != v123)
              {
                v128 = *(v121 - 1);
                if (v128)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v128);
                }

                v121 -= 2;
              }

              v120[5] = v123;
            }

            if (v122 == v117)
            {
              if (v120[4] == v123)
              {
                v129 = 5;
              }

              else
              {
                v129 = *(*(v123 - 2) + 61);
              }

              atomic_store(v129, (v120[2] + 25));
              atomic_store(v120[4] != v120[5], (v120[2] + 24));
            }

            v130 = v119[3];
            if (v130[5] == v130[4])
            {
              if ((*(*v130 + 16))(v130))
              {
                v142 = *(*(*v115 + 8) + 40);
                *&v143 = &v142;
                v131 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::TransitNodeFeature>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::TransitNodeFeature>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::TransitNodeFeature>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::TransitNodeFeature>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v114 + 72), v142);
                v133 = v119[3];
                v132 = v119[4];
                if (v132)
                {
                  atomic_fetch_add_explicit((v132 + 8), 1uLL, memory_order_relaxed);
                }

                v134 = v131[4];
                v131[3] = v133;
                v131[4] = v132;
                if (v134)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v134);
                }
              }

              std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::TransitNodeFeature>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::TransitNodeFeature>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::TransitNodeFeature>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::TransitNodeFeature>>>>::erase((v114 + 32), v119);
            }
          }

          v115 += 2;
        }

        while (v115 != v116);
      }
    }

    goto LABEL_107;
  }

LABEL_193:
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(v139 + 54));
  *(v139 + 54) = 0;
  *(v139 + 55) = 0;
  *(v139 + 53) = v137;
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(v139 + 57));
  *(v139 + 57) = 0;
  *(v139 + 58) = 0;
  *(v139 + 56) = v138;
}

void sub_1B299F368(_Unwind_Exception *a1)
{
  geo::read_write_lock::unlock((v2 + 32));
  std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v1);
  std::mutex::unlock((v3 + 304));
  std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  _Unwind_Resume(a1);
}

double md::Logic<md::TileSelectionLogic,md::TileSelectionContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::StyleLogicContext>,gdc::TypeList<>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 1065353216;
  *(a1 + 136) = 0;
  return result;
}

uint64_t *std::set<gdc::LayerDataWithWorld>::swap[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v5 = result[1];
  v4 = result[2];
  v3 = result + 1;
  *(result + 1) = *(a2 + 8);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (result[2])
  {
    result = (*v3 + 16);
  }

  *result = v3;
  v6 = (*(a2 + 8) + 16);
  if (!v4)
  {
    v6 = a2;
  }

  *v6 = a2 + 8;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[324];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_4Tile9TransformEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A14CA8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

double std::__function::__func<md::LabelLineStore::updateLineSets(void)::$_1,std::allocator<md::LabelLineStore::updateLineSets(void)::$_1>,void ()(std::unique_ptr<md::LabelLineSegment> const&)>::operator()(uint64_t a1, unsigned __int16 **a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(*a2 + 3);
  if (v4 && v4[3].i8[0] == 1)
  {
    v5 = v4[2];
    v23 = v4[1];
    v24 = v5;
  }

  else
  {
    v6 = (*(*v3 + 56))(*a2);
    v23 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v24 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    if (v3[23])
    {
      v7 = v6;
      v8 = 0;
      do
      {
        v9 = md::LabelPoint::mercatorPoint((v7 + 48 * v8));
        v10 = 0;
        v11 = &v23;
        v12 = 1;
        do
        {
          v13 = *(v9 + 8 * v10);
          v14 = v12;
          *v11 = fmin(v13, *v11);
          *&v24.i64[v10] = fmax(*&v24.i64[v10], v13);
          v11 = &v23.i64[1];
          v10 = 1;
          v12 = 0;
        }

        while ((v14 & 1) != 0);
        ++v8;
      }

      while (v8 < v3[23]);
    }
  }

  v15 = 0;
  v16 = &v21;
  v21 = v23;
  v22 = v24;
  v17 = v2 + 16;
  v18 = 1;
  do
  {
    v19 = v18;
    *(v2 + 8 * v15) = fmin(*v16, *(v2 + 8 * v15));
    result = fmax(*(v17 + 8 * v15), *&v22.i64[v15]);
    *(v17 + 8 * v15) = result;
    v16 = &v21.i64[1];
    v15 = 1;
    v18 = 0;
  }

  while ((v19 & 1) != 0);
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_4Tile9TransformEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A14CA8;
  a2[1] = v2;
  return result;
}

void std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v1 + 10));
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v1 + 4));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__shared_ptr_emplace<md::TransitLineSharedResources>::__on_zero_shared(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

uint64_t md::Logic<md::TileSelectionLogic,md::TileSelectionContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::StyleLogicContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v14[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x64780CBD71DF7CF5)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x1AF456233693CD46uLL);
      if (v7 && (v8 = v7[5], *(v8 + 8) == 0x1AF456233693CD46))
      {
        v9 = *(v8 + 32);
      }

      else
      {
        v9 = 0;
      }

      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x8BD499FBD96FBB9ELL);
      if (v10 && (v11 = v10[5], *(v11 + 8) == 0x8BD499FBD96FBB9ELL))
      {
        v12 = *(v11 + 32);
      }

      else
      {
        v12 = 0;
      }

      v13 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0xE42D19AFCA302E68)[5] + 32);
      v14[0] = v9;
      v14[1] = v12;
      v14[2] = v13;
      return (*(*v5 + 144))(v5, a2, v14, v3);
    }
  }

  return result;
}

void md::TileSelectionLogic::runBeforeLayout(uint64_t a1, md::LayoutContext *a2, uint64_t a3, uint64_t a4)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v7 = *a3;
  v8 = *(a3 + 16);
  if (*(v8 + 82) == 1)
  {
    v9[0] = &unk_1F2A213A0;
    v9[1] = a1;
    v9[3] = v9;
    md::StyleLogicContext::parseEvents(v8, v9);
    std::__function::__value_func<void ()(md::StyleManagerEvent)>::~__value_func[abi:nn200100](v9);
  }

  std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>>>::clear(a4 + 88);
  geo::linear_set<md::TileSelectionTileSetType,std::less<md::TileSelectionTileSetType>,std::allocator<md::TileSelectionTileSetType>,std::vector<md::TileSelectionTileSetType>>::operator=(a4, a1 + 240);
  md::TileSelectionLogic::processActiveTileSelection(a1, (a1 + 240), (a4 + 88), v7, a4, a2);
}

void sub_1B299FA68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(md::StyleManagerEvent)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void ggl::SolidRibbon::PipelineState::~PipelineState(ggl::SolidRibbon::PipelineState *this)
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

BOOL md::LabelLinePosition::pointExists(md::LabelLinePosition *this)
{
  if (!*this)
  {
    return 0;
  }

  if (*(this + 10) == *(*this + 16))
  {
    v1 = *(this + 3);
    if (v1)
    {
      v2 = *(this + 17);
      if ((v2 & 0x8000000000000000) == 0)
      {
        return (*(**v1 + 16))() > v2;
      }
    }
  }

  return 0;
}

uint64_t md::StyleLogicContext::parseEvents(uint64_t result, uint64_t a2)
{
  if (*(result + 82) == 1)
  {
    v2 = *(result + 48);
    v3 = *(result + 56);
    if (v2 != v3)
    {
      while (1)
      {
        v7 = *v2;
        v5 = *(a2 + 24);
        if (!v5)
        {
          break;
        }

        result = (*(*v5 + 48))(v5, &v7);
        if (++v2 == v3)
        {
          return result;
        }
      }

      v6 = std::__throw_bad_function_call[abi:nn200100]();
      return md::LabelLinePosition::vertexInfo(v6);
    }
  }

  return result;
}

uint64_t md::LabelLinePosition::vertexInfo(md::LabelLinePosition *this)
{
  if (!*this)
  {
    return 32639;
  }

  if (*(this + 10) == *(*this + 16))
  {
    v2 = *(this + 3);
    if (v2)
    {
      v3 = *(this + 17);
      if ((v3 & 0x8000000000000000) == 0 && (*(**v2 + 16))() > v3)
      {
        return *(*(***(this + 3) + 32))(**(this + 3), *(this + 17));
      }
    }
  }

  return 32639;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleCameraLightingConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleCameraLightingConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignStyleCameraLightingConstantData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>(void)::metadata >= 0x200)
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

uint64_t _ZNSt3__110__function6__funcIZN2md18TileSelectionLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_13CameraContextENS2_16ElevationContextENS2_17StyleLogicContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_20TileSelectionContextEE3__0NS_9allocatorISL_EEFvNS2_17StyleManagerEventEEEclEOSO_(uint64_t result, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(*(result + 8) + 296);
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 25);
      if (v2 >= v5)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= v2)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void ggl::TransitLineRibbon::PatternedBasePipelineState::~PatternedBasePipelineState(ggl::TransitLineRibbon::PatternedBasePipelineState *this)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>();
    *algn_1EB83BFE8 = 0x8AED3586A1D729D9;
    qword_1EB83BFF0 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>]";
    qword_1EB83BFF8 = 95;
  }
}

uint64_t std::__function::__value_func<void ()(md::StyleManagerEvent)>::~__value_func[abi:nn200100](uint64_t a1)
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

mdm::zone_mallocator *std::vector<md::LabelLineStitchSegment,geo::allocator_adapter<md::LabelLineStitchSegment,mdm::zone_mallocator>>::reserve(mdm::zone_mallocator *result, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((*(result + 2) - *result) >> 3) < a2)
  {
    if (a2 >= 0x1E1E1E1E1E1E1E2)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v3 = result;
    v4 = *(result + 1) - *result;
    v6[4] = result + 24;
    v5 = mdm::zone_mallocator::instance(result);
    v6[0] = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineStitchSegment>(v5, a2);
    v6[1] = v6[0] + v4;
    v6[2] = v6[0] + v4;
    v6[3] = v6[0] + 136 * a2;
    std::vector<md::LabelLineStitchSegment,geo::allocator_adapter<md::LabelLineStitchSegment,mdm::zone_mallocator>>::__swap_out_circular_buffer(v3, v6);
    return std::__split_buffer<md::LabelLineStitchSegment,geo::allocator_adapter<md::LabelLineStitchSegment,mdm::zone_mallocator> &>::~__split_buffer(v6);
  }

  return result;
}

void std::vector<md::LabelLineStitchSegment,geo::allocator_adapter<md::LabelLineStitchSegment,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineStitchSegment>(v2, v1);
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::StyleCameraConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleCameraConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleCameraConstantDataHandle>();
    *algn_1EB83BD78 = 0x96F87A2692FE4013;
    qword_1EB83BD80 = "md::ls::StyleCameraConstantDataHandle]";
    qword_1EB83BD88 = 37;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleCameraConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleCameraConstantDataHandle>(void)::metadata >= 0x200)
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

void ggl::TransitLineRibbon::BasePipelineState::~BasePipelineState(ggl::TransitLineRibbon::BasePipelineState *this)
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[301];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_7DaVinci19StyleCameraLightingEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A13ED8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

char **geo::linear_set<md::TileSelectionTileSetType,std::less<md::TileSelectionTileSetType>,std::allocator<md::TileSelectionTileSetType>,std::vector<md::TileSelectionTileSetType>>::operator=(char **a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    v6 = *(a2 + 8) - v4;
    v7 = v6 >> 1;
    v8 = *a1;
    v9 = a1[1];
    v10 = (v9 - *a1) >> 1;
    if (v6 >> 1 <= v10)
    {
      if (v7 < v10)
      {
        a1[1] = &v8[v6];
      }
    }

    else
    {
      v11 = v7 - v10;
      v12 = a1[2];
      if (v7 - v10 > (v12 - v9) >> 1)
      {
        if ((v7 & 0x8000000000000000) == 0)
        {
          v13 = v12 - v8;
          if (v13 > v7)
          {
            v7 = v13;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v14 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v7;
          }

          std::__allocate_at_least[abi:nn200100]<std::allocator<md::MapDataType>>(v14);
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(a1[1], 2 * v11);
      a1[1] = &v9[2 * v11];
      v4 = *a2;
    }

    v15 = *(a2 + 8);
    if (v15 != v4)
    {
      memmove(v8, v4, v15 - v4);
    }
  }

  return a1;
}

void std::vector<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::SegmentConnectionEntry>(v2, v1);
  }
}

void md::TileSelectionLogic::processActiveTileSelection(uint64_t a1, unsigned __int16 **a2, NSObject *a3, double *a4, uint64_t a5, md::LayoutContext *this)
{
  v58 = *MEMORY[0x1E69E9840];
  md::LayoutContext::frameState(this);
  v13 = *(v12 + 88);
  v41 = v45;
  v42 = v45;
  v43 = v45;
  v44 = 9;
  v14 = *a2;
  v15 = a2[1];
  if (*a2 == v15)
  {
    goto LABEL_39;
  }

  v30 = (v13 * 1000.0);
  do
  {
    v40 = *v14;
    v16 = v40;
    if (v40 != 1)
    {
      if (v40 == 8)
      {
        gdc::Camera::convertToMeters(&__p, a4[380], a4);
        *(a1 + 432) = __p;
        goto LABEL_9;
      }

      if (v40 != 4)
      {
        goto LABEL_9;
      }
    }

    if (*(a1 + 424) == 1)
    {
      *(a1 + 424) = 0;
    }

LABEL_9:
    v17 = *(a1 + 128 + 8 * v16);
    if (v17)
    {
      (*(*v17 + 16))(buf, 1.0);
      if (v50 > 0x7F || v56 >= 0x80)
      {
        __p = &v40;
        if (v30 - std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,long long>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,long long>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,long long>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,long long>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>((a1 + 200), v40)[3] >= 30001)
        {
          __p = &v40;
          std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,long long>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,long long>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,long long>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,long long>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>((a1 + 200), v40)[3] = v30;
          v25 = v50;
          if (v50 <= v56)
          {
            v25 = v56;
          }

          __p = v25;
          geo::small_vector_base<std::pair<md::TileSelectionTileSetType,unsigned long>>::emplace_back<md::TileSelectionTileSetType&,unsigned long const&>(&v41, &v40, &__p);
        }
      }

      v18 = v40;
      LOWORD(__p) = v40;
      v32 = *buf;
      v19 = *&v47[4];
      v20 = v48;
      *&v47[4] = 0;
      v48 = 0;
      v33[0] = v19;
      v33[1] = v20;
      v34[0] = v49;
      v34[1] = v50;
      v35 = v51;
      if (v50)
      {
        v21 = *(v49 + 8);
        if ((v20 & (v20 - 1)) != 0)
        {
          if (v21 >= v20)
          {
            v21 %= v20;
          }
        }

        else
        {
          v21 &= v20 - 1;
        }

        *(v19 + 8 * v21) = v34;
        v49 = 0;
        v50 = 0;
      }

      v36 = v52;
      v22 = v53;
      v23 = v54;
      v53 = 0;
      v54 = 0;
      v37[0] = v22;
      v37[1] = v23;
      v38[0] = v55;
      v38[1] = v56;
      v39 = v57;
      if (v56)
      {
        v24 = *(v55 + 8);
        if ((v23 & (v23 - 1)) != 0)
        {
          if (v24 >= v23)
          {
            v24 %= v23;
          }
        }

        else
        {
          v24 &= v23 - 1;
        }

        *(v22 + 8 * v24) = v38;
        v55 = 0;
        v56 = 0;
      }

      std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::pair<md::TileSelectionTileSetType,gdc::TileSelectionResults>>(a3, v18);
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v37);
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v33);
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v53);
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v47[4]);
    }

    ++v14;
  }

  while (v14 != v15);
  if (v41 != v42)
  {
    a3 = GEOGetVectorKitTileSelectionLogicLog();
    if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
    {
      md::buildTileSelectionSizeWarningString(&__p, &v41, a4);
      v26 = v33[0] >= 0 ? &__p : __p;
      *buf = 136315138;
      *v47 = v26;
      _os_log_impl(&dword_1B2754000, a3, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      if (SHIBYTE(v33[0]) < 0)
      {
        operator delete(__p);
      }
    }
  }

LABEL_39:
  *(a5 + 130) = 0;
  v27 = md::LayoutContext::cameraType(this);
  if (gdc::ToCoordinateSystem(v27))
  {
    v28 = 1;
    goto LABEL_41;
  }

  if (*(a1 + 316) == 1)
  {
    v28 = 4;
LABEL_41:
    *(a5 + 130) = v28;
  }

  if (*(a1 + 424) == 1)
  {
    *(a5 + 136) = *(a1 + 416);
    *(a5 + 144) = 1;
    if ((*(a1 + 424) & 1) == 0)
    {
      v29 = std::__throw_bad_optional_access[abi:nn200100]();

      if (v41 != v43)
      {
        free(v41);
      }

      _Unwind_Resume(v29);
    }

    *(*(a1 + 120) + 376) = *(a1 + 416);
  }

  if (v41 != v43)
  {
    free(v41);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci19StyleCameraLightingEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A13ED8;
  a2[1] = v2;
  return result;
}

md::TransitNodeFeaturePool **std::unique_ptr<md::TransitNodeFeaturePool>::~unique_ptr[abi:nn200100](md::TransitNodeFeaturePool **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    md::TransitNodeFeaturePool::~TransitNodeFeaturePool(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

uint64_t gdc::GlobeTileSelector::tilesInView@<X0>(gdc::GlobeTileSelector *this@<X0>, const gdc::CameraView *a2@<X1>, double a3@<D0>, int a4@<W2>, _DWORD *a5@<X8>)
{
  v10 = *(this + 49);
  if (v10)
  {
    *v22 = *(this + 2);
    (*(*v10 + 48))(v10, v22, this + 272);
  }

  memset(v68, 0, sizeof(v68));
  v69 = 1065353216;
  memset(v66, 0, sizeof(v66));
  v67 = 1065353216;
  memset(v22, 0, 32);
  *&v22[32] = 1065353216;
  gdc::GlobeTileSelector::tilesInViewInternal(this, a2, v68, v22, a3);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v22);
  if (!a4 || *(this + 312) != 1)
  {
    goto LABEL_13;
  }

  v11 = *(this + 38);
  if (!v11)
  {
LABEL_14:
    std::__throw_bad_function_call[abi:nn200100]();
    goto LABEL_15;
  }

  (*(*v11 + 48))(&v61);
  v12 = vceqzq_f64(v65);
  v13 = vmvnq_s8(vuzp1q_s32(vceqzq_f64(v64), v12));
  v13.n128_u64[0] = vmovn_s32(v13);
  v13.n128_u16[0] = vmaxv_u16(v13.n128_u64[0]);
  if ((v13.n128_u8[0] & 1) == 0)
  {
    v12.n128_f64[0] = v61;
    v13.n128_u64[0] = 0xC00921FB54442D18;
    if (v61 == -3.14159265)
    {
      v12.n128_f64[0] = v62;
      if (v62 == -3.14159265)
      {
        v13.n128_f64[0] = v63;
        if (v63 == 0.0)
        {
          goto LABEL_13;
        }
      }
    }
  }

  if (*(this + 312))
  {
    v14 = *(this + 38);
    if (v14)
    {
      (*(*v14 + 48))(v22, v13, v12);
      v15 = *(a2 + 60);
      v25 = *v22;
      v26 = *&v22[8];
      v27 = *&v22[24];
      v28 = v23;
      v30 = 0;
      v29 = 0;
      v33 = 0;
      v31 = 0;
      v32 = 0;
      v34 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v35 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v36 = v34;
      v37 = v35;
      v38 = v34;
      v39 = v35;
      v40 = v34;
      v41 = v35;
      v42 = v34;
      v43 = v35;
      v44 = v34;
      v45 = v35;
      v46 = 1;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v16 = *(a2 + 24);
      v51 = *(a2 + 23);
      v52 = v16;
      v17 = *(a2 + 26);
      v53 = *(a2 + 25);
      v54 = v17;
      v55 = *(a2 + 27);
      v56 = *(a2 + 112);
      v18 = *(a2 + 57);
      v58 = *(a2 + 29);
      v57 = v18;
      v59 = v15;
      v60 = 0;
      gdc::CameraView::geocentricCameraView(v22, v24);
      gdc::GlobeTileSelector::tilesInViewInternal(this, v22, v66, v68, a3);
LABEL_13:
      v19 = *(this + 2);
      *a5 = v19;
      std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::unordered_set((a5 + 2), v68);
      a5[12] = v19;
      std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::unordered_set((a5 + 14), v66);
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v66);
      return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v68);
    }

    goto LABEL_14;
  }

LABEL_15:
  v21 = std::__throw_bad_optional_access[abi:nn200100]();
  return std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignClippingConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignClippingConstantData>>,void ()(ecs2::Runtime &)>::operator()(v21);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignClippingConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignClippingConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignClippingConstantData::operator()((a1 + 8), a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

void std::__tree<std::__value_type<md::TransitInterTileMediator::TileKey,md::TransitInterTileMediator::TileInfo>,std::__map_value_compare<md::TransitInterTileMediator::TileKey,std::__value_type<md::TransitInterTileMediator::TileKey,md::TransitInterTileMediator::TileInfo>,std::less<md::TransitInterTileMediator::TileKey>,true>,std::allocator<std::__value_type<md::TransitInterTileMediator::TileKey,md::TransitInterTileMediator::TileInfo>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<md::TransitInterTileMediator::TileKey,md::TransitInterTileMediator::TileInfo>,std::__map_value_compare<md::TransitInterTileMediator::TileKey,std::__value_type<md::TransitInterTileMediator::TileKey,md::TransitInterTileMediator::TileInfo>,std::less<md::TransitInterTileMediator::TileKey>,true>,std::allocator<std::__value_type<md::TransitInterTileMediator::TileKey,md::TransitInterTileMediator::TileInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<md::TransitInterTileMediator::TileKey,md::TransitInterTileMediator::TileInfo>,std::__map_value_compare<md::TransitInterTileMediator::TileKey,std::__value_type<md::TransitInterTileMediator::TileKey,md::TransitInterTileMediator::TileInfo>,std::less<md::TransitInterTileMediator::TileKey>,true>,std::allocator<std::__value_type<md::TransitInterTileMediator::TileKey,md::TransitInterTileMediator::TileInfo>>>::destroy(a1[1]);
    v2 = a1[7];
    if (v2)
    {
      a1[8] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

void std::__function::__func<md::TileSelectionLogic::TileSelectionLogic(md::World *)::$_2,std::allocator<md::TileSelectionLogic::TileSelectionLogic(md::World *)::$_2>,void ()(unsigned int,gdc::GlobeTileSelectorOptions &)>::operator()(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a1 + 8);
  v15 = +[VKDebugSettings sharedSettings];
  *a3 = [v15 daVinciPitchedGlobeTileSelection];
  if ([v15 daVinciCameraController])
  {
    v6 = [v15 daVinciBiasLatitudeGlobeTileSelection];
  }

  else
  {
    v6 = 1;
  }

  *(a3 + 1) = v6;
  *(a3 + 3) = *(v5 + 324);
  *(a3 + 88) = *(v5 + 326);
  std::__optional_storage_base<std::function<gdc::CameraFrame<geo::Radians,double> ()(void)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<gdc::CameraFrame<geo::Radians,double> ()(void)>,false> const&>(a3 + 8, v5 + 376);
  v7 = *(v5 + 120);
  if (*(v7 + 248))
  {
    *(a3 + 2) = 0;
    v8 = *(v7 + 240);
    if (!v8)
    {
      goto LABEL_24;
    }

    v9 = 0;
    do
    {
      v10 = *(v8 + 4);
      if (v10)
      {
        if (v4)
        {
          if (v10 >= v4)
          {
            v11 = 0;
          }

          else
          {
            v11 = 0;
            do
            {
              ++v11;
              v10 *= 2;
            }

            while (v10 < v4);
          }

          v12 = v4;
          if (v10 > v4)
          {
            do
            {
              --v11;
              v13 = v10 > 2 * v12;
              v12 *= 2;
            }

            while (v13);
          }
        }

        else
        {
          v11 = 0;
        }

        LODWORD(v10) = -v11 & ~(-v11 >> 31);
      }

      v14 = *(v8 + 6) + v10;
      if (v14 > v9)
      {
        v9 = v14;
      }

      v8 = *v8;
    }

    while (v8);
  }

  else
  {
    v9 = 25;
  }

  *(a3 + 2) = v9;
LABEL_24:
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>>(void)::metadata >= 0x200)
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

uint64_t md::CartographicTiledVectorRenderLayer<md::TransitTileDataRenderable>::~CartographicTiledVectorRenderLayer(void *a1)
{
  *a1 = &unk_1F2A2EB68;
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

  return md::CartographicTiledRenderLayer<md::TransitTileDataRenderable>::~CartographicTiledRenderLayer(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>>();
    *algn_1EB83C228 = 0x365426C0E4B6F01DLL;
    qword_1EB83C230 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>]";
    qword_1EB83C238 = 81;
  }
}

BOOL md::LabelPoint::isWithinEpsilon(md::LabelPoint *this, const md::LabelPoint *a2, double a3, int a4)
{
  if (a4)
  {
    md::LabelPoint::geocentricPoint(this);
    md::LabelPoint::geocentricPoint(a2);
    if (vabdd_f64(*this, *a2) >= a3)
    {
      return 0;
    }

    else
    {
      v7 = 0;
      v8 = 2;
      while (v7 != 2)
      {
        v9 = vabdd_f64(*(this + v7 + 1), *(a2 + v7 + 1));
        ++v7;
        if (v9 >= a3)
        {
          v8 = v7 - 1;
          return v8 > 1;
        }
      }

      return v8 > 1;
    }
  }

  else
  {
    v11 = md::LabelPoint::mercatorPoint(this);
    v12 = md::LabelPoint::mercatorPoint(a2);
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = vabdd_f64(*(v11 + 8 * v13), *(v12 + 8 * v13));
      v10 = v15 < a3;
      if ((v14 & 1) == 0)
      {
        break;
      }

      v14 = 0;
      v13 = 1;
    }

    while (v15 < a3);
  }

  return v10;
}

uint64_t md::CartographicTiledRenderLayer<md::TransitTileDataRenderable>::~CartographicTiledRenderLayer(uint64_t a1)
{
  *a1 = &unk_1F2A2BA80;
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

  geo::Pool<md::TransitTileDataRenderable>::disposeElements(a1 + 224);
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

  std::__function::__value_func<BOOL ()(md::TransitTileDataRenderable *,md::TransitTileDataRenderable *)>::~__value_func[abi:nn200100](a1 + 56);
  *a1 = &unk_1F2A16858;
  v6 = *(a1 + 8);
  if (v6)
  {
    *(a1 + 16) = v6;
    operator delete(v6);
  }

  return a1;
}

uint64_t gdc::GlobeTileSelector::tilesInViewInternal(uint64_t a1, gdc::GlobeTileSelector *this, void *a3, void *a4, double a5)
{
  v266 = *MEMORY[0x1E69E9840];
  v7 = gdc::GlobeTileSelector::calculateLodConstant(this, *(a1 + 8), a5, *(a1 + 273));
  v227 = *(this + 31);
  v228 = *(this + 64);
  v225 = *(this + 31);
  v226 = *(this + 64);
  v220 = 0uLL;
  v219 = 0.0;
  geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(&v225, &v219);
  v180 = v220;
  v8 = tan(v219 * 0.5 + 0.785398163);
  v9 = log(v8);
  *&v10.f64[0] = v180;
  v10.f64[1] = v9;
  __asm { FMOV            V0.2D, #0.5 }

  v187 = _Q0;
  __p = vdupq_n_s64(0x3FC45F306DC9C883uLL);
  v223 = vmlaq_f64(_Q0, __p, v10);
  v224 = *(&v180 + 1);
  v17 = *(this + 1);
  v16 = *(this + 2);
  v19 = *(this + 3);
  v18 = *(this + 4);
  gdc::CameraView::geocentricCameraView(&v219, this);
  memset(v217, 0, sizeof(v217));
  v218 = 1065353216;
  v216 = 0u;
  memset(v215, 0, sizeof(v215));
  v172 = this;
  v20 = *(this + 5);
  v167 = v7;
  v21 = gdc::GlobeTileSelector::tileZForDepth(a1, v18, v7);
  if (*(a1 + 361) == 1)
  {
    if (v21 <= 2)
    {
      v22 = 2;
    }

    else
    {
      v22 = v21;
    }

    v168 = v22;
    v166 = v21 < 0xC;
    if (v21 >= *(a1 + 360))
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v21 <= 2)
    {
      v23 = 2;
    }

    else
    {
      v23 = v21;
    }

    v168 = v23;
    v166 = v21 < 0xC;
  }

  if (v20 <= 0.699999988)
  {
    v24 = 0;
LABEL_25:
    v36 = tan(fmin(fmax(v17, -1.48352986), 1.48352986) * 0.5 + 0.785398163);
    v37 = log(v36);
    v38 = (1 << v168);
    v211[0] = -1;
    v211[1] = v168;
    *&v211[4] = (1 << v168) + ~vcvtmd_s64_f64((v37 * 0.159154943 + 0.5) * v38);
    *&v211[8] = vcvtmd_s64_f64((v16 * 0.159154943 + 0.5) * v38);
    *&v211[16] = 0;
    LOBYTE(v212) = 1;
    std::deque<geo::QuadTile>::push_back(v215, v211);
    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile const&>(v217, v211);
    v169 = 0;
    goto LABEL_53;
  }

LABEL_13:
  if (*(a1 + 272) != 1)
  {
    v24 = 1;
    goto LABEL_25;
  }

  *v196 = 0uLL;
  v197 = 0.0;
  std::vector<gm::Matrix<double,3,1>>::__insert_with_size[abi:nn200100]<gm::Matrix<double,3,1> const*,gm::Matrix<double,3,1> const*>(v196, this + 1176, (this + 1368));
  v26 = v196[1];
  v25 = v196[0];
  v27 = 0.0;
  if (v196[0] == v196[1])
  {
    v32 = gdc::GlobeTileSelector::tileZForDepth(a1, 0.0, v7);
    v193 = 0uLL;
    *&v194 = 0;
  }

  else
  {
    v28 = v196[0];
    do
    {
      for (i = 0; i != 24; i += 8)
      {
        *&v211[i] = *&v28[i] - *(&v227 + i);
      }

      v30 = 0;
      v31 = 0.0;
      do
      {
        v31 = v31 + *&v211[v30] * *&v211[v30];
        v30 += 8;
      }

      while (v30 != 24);
      v27 = fmax(sqrt(v31), v27);
      v28 += 24;
    }

    while (v28 != v26);
    v32 = gdc::GlobeTileSelector::tileZForDepth(a1, v27, v7);
    v193 = 0uLL;
    for (*&v194 = 0; v25 != v26; v25 += 24)
    {
      v201[0] = *v25;
      *&v201[1] = *(v25 + 2);
      memset(v211, 0, sizeof(v211));
      geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(v201, v211);
      v181 = *&v211[8];
      v33 = tan(*v211 * 0.5 + 0.785398163);
      v34 = log(v33);
      *&v35.f64[0] = v181;
      v35.f64[1] = v34;
      v231 = vmlaq_f64(v187, __p, v35);
      *v232 = *(&v181 + 1);
      std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](v193.i64, &v231);
    }
  }

  std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](v193.i64, &v223);
  if (*(a1 + 352))
  {
    v39 = *(a1 + 344);
    if (!v39)
    {
LABEL_145:
      std::__throw_bad_function_call[abi:nn200100]();
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v40 = COERCE_DOUBLE((*(*v39 + 48))(v39));
    v169 = 0;
    if (v41)
    {
      v42 = v40;
      if (v40 != 0.0)
      {
        v43 = *(v172 + 2);
        *v188 = *(v172 + 1);
        v44 = *v188;
        *&v188[8] = v43;
        v45 = *(v172 + 40);
        *&v188[16] = *(v172 + 24);
        v175 = *&v188[16];
        *&v188[32] = v45;
        v186 = *(&v45 + 1);
        v176 = *(v172 + 7);
        v189 = v176;
        gdc::CameraFrame<geo::Radians,double>::toLookAtGeocentric(v201, v188);
        v231 = v201[0];
        *v232 = *&v201[1];
        v46 = v175 - v42;
        *&v174 = v44;
        v47 = __sincos_stret(v44);
        v48 = 6378137.0 / sqrt(v47.__sinval * v47.__sinval * -0.00669437999 + 1.0);
        v49 = (v48 + v175 - v42) * v47.__cosval;
        *(&v174 + 1) = v43;
        v50 = __sincos_stret(v43);
        v51 = 0;
        *&v206 = v49 * v50.__cosval;
        *(&v206 + 1) = v49 * v50.__sinval;
        v207 = (v46 + v48 * 0.99330562) * v47.__sinval;
        do
        {
          *&v211[v51 * 8] = v231.f64[v51] - *(&v206 + v51 * 8);
          ++v51;
        }

        while (v51 != 3);
        v52 = 0;
        v53 = 0.0;
        do
        {
          v53 = v53 + *&v211[v52] * *&v211[v52];
          v52 += 8;
        }

        while (v52 != 24);
        *v188 = v174;
        *&v188[16] = v46;
        *&v188[24] = fmax(sqrt(v53), v18);
        v54 = *(v172 + 23);
        v55 = *(v172 + 24);
        v56 = *(v172 + 26);
        v258 = *(v172 + 25);
        v259 = v56;
        v260 = *(v172 + 27);
        v261 = *(v172 + 112);
        v57 = *(v172 + 57);
        v58 = *(v172 + 29);
        v59 = *(v172 + 60);
        *&v231.f64[1] = v174;
        *v232 = *&v188[8];
        *&v232[16] = *&v188[24];
        *&v233 = v186;
        *(&v233 + 1) = v176;
        v235 = 0;
        v234 = 0;
        v237 = 0;
        v236 = 0;
        v238 = 0;
        v239 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        v240 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
        v241 = v239;
        v242 = v240;
        v243 = v239;
        v244 = v240;
        v245 = v239;
        v246 = v240;
        v247 = v239;
        v248 = v240;
        v249 = v239;
        v250 = v240;
        v251 = 1;
        v252 = 0;
        v253 = 0;
        v254 = 0;
        v255 = 0;
        v256 = v54;
        v257 = v55;
        v262 = v57;
        v263 = v58;
        v264 = v59;
        v265 = 0;
        gdc::CameraView::geocentricCameraView(v211, &v231);
        gdc::CameraView::operator=(&v219, v211);
        v206 = 0uLL;
        v207 = 0.0;
        std::vector<gm::Matrix<double,3,1>>::__insert_with_size[abi:nn200100]<gm::Matrix<double,3,1> const*,gm::Matrix<double,3,1> const*>(&v206, &v222, &v223);
        v60 = v206;
        if (v206 != *(&v206 + 1))
        {
          v61 = v206;
          do
          {
            v209 = *v61;
            v210 = *(v61 + 16);
            memset(v211, 0, sizeof(v211));
            geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(v209.f64, v211);
            v182 = *&v211[8];
            v62 = tan(*v211 * 0.5 + 0.785398163);
            v63 = log(v62);
            *&v64.f64[0] = v182;
            v64.f64[1] = v63;
            v229 = vmlaq_f64(v187, __p, v64);
            v230 = *(&v182 + 1);
            std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](v193.i64, &v229);
            v61 += 24;
          }

          while (v61 != *(&v60 + 1));
        }

        gdc::CameraFrame<geo::Radians,double>::toRigidTransformGeocentric(v211, v188);
        v229 = *v211;
        v230 = *&v211[16];
        memset(v211, 0, sizeof(v211));
        geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(v229.f64, v211);
        v183 = *&v211[8];
        v65 = tan(*v211 * 0.5 + 0.785398163);
        v66 = log(v65);
        *&v67.f64[0] = v183;
        v67.f64[1] = v66;
        v209 = vmlaq_f64(v187, __p, v67);
        v210 = *(&v183 + 1);
        std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](v193.i64, &v209);
        if (v60)
        {
          *(&v206 + 1) = v60;
          operator delete(v60);
        }

        v169 = 1;
      }
    }
  }

  else
  {
    v169 = 0;
  }

  __pa = v193.i64[0];
  gm::Box<double,3>::boxEnclosingPoints(v211, v193.i64[0], v193.i64[1]);
  v68 = (1 << v32);
  v69 = vcvtmd_s64_f64(*&v211[8] * v68);
  v70 = vcvtmd_s64_f64(v213 * v68) - v69;
  if (v70 >= 0)
  {
    v71 = 0;
    v72 = vcvtmd_s64_f64(*v211 * v68);
    v184 = (1 << v32) + ~v69;
    v73 = vcvtmd_s64_f64(v212 * v68);
    v74 = v70 + 1;
    do
    {
      if (v73 >= v72)
      {
        v75 = v72;
        do
        {
          LOBYTE(v231.f64[0]) = -1;
          BYTE1(v231.f64[0]) = v32;
          HIDWORD(v231.f64[0]) = v184 - v71;
          LODWORD(v231.f64[1]) = v75;
          *v232 = 0;
          v232[8] = 1;
          std::deque<geo::QuadTile>::push_back(v215, &v231);
          ++v75;
        }

        while (v73 + 1 != v75);
      }

      ++v71;
    }

    while (v71 != v74);
  }

  if (__pa)
  {
    operator delete(__pa);
  }

  if (v196[0])
  {
    operator delete(v196[0]);
  }

  v24 = 1;
LABEL_53:
  v76 = *(&v216 + 1);
  if (*(&v216 + 1))
  {
    v185 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v177 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v171 = v24;
    do
    {
      v77 = v216;
      v78 = *(*(&v215[0] + 1) + ((v216 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v216 & 0x7F);
      v208 = 0;
      *(&v206 + 4) = *(v78 + 4);
      LOWORD(v206) = *v78;
      v207 = *(v78 + 16);
      v208 = *(v78 + 24);
      *(&v216 + 1) = v76 - 1;
      *&v216 = v216 + 1;
      if ((v77 + 1) >= 0x100)
      {
        operator delete(**(&v215[0] + 1));
        *(&v215[0] + 1) += 8;
        *&v216 = v216 - 128;
      }

      v79 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,gm::Box<double,2>>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,gm::Box<double,2>>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,gm::Box<double,2>>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,gm::Box<double,2>>,void *>>>>::find<geo::QuadTile>((a1 + 208), &v206);
      if (!v79)
      {
        goto LABEL_64;
      }

      v80 = *(a1 + 256);
      v81 = *(v79 + 6);
      if (v80 != v81)
      {
        v82 = v81[1];
        if (v82 != v80)
        {
          v83 = *v81;
          *(v83 + 8) = v82;
          *v82 = v83;
          v84 = *v80;
          *(*&v84 + 8) = v81;
          *v81 = v84;
          *v80 = v81;
          v81[1] = v80;
          v80 = *(a1 + 256);
        }
      }

      if (*(a1 + 48) == 1 && (a1 + 248) != v80)
      {
        v85 = v80[6];
        v86 = v80[7];
      }

      else
      {
LABEL_64:
        v87 = *(a1 + 424);
        v85 = v19;
        v86 = v19 + 300.0;
        if (v87)
        {
          (*(*v87 + 48))(&v231);
          v85 = v19;
          v86 = v19 + 300.0;
          if (v232[0] == 1)
          {
            v85 = v19;
            v86 = v19 + 300.0;
            if (v231.f64[1] >= v231.f64[0])
            {
              if (*(a1 + 48) == 1)
              {
                v88 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,gm::Box<double,2>>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,gm::Box<double,2>>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,gm::Box<double,2>>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,gm::Box<double,2>>,void *>>>>::find<geo::QuadTile>((a1 + 208), &v206);
                if (v88)
                {
                  v89 = v88;
                  v90 = *(v88 + 6);
                  v92 = *v90;
                  v91 = v90[1];
                  *(v92 + 8) = v91;
                  *v91 = v92;
                  --*(a1 + 264);
                  operator delete(v90);
                  std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase((a1 + 208), v89);
                }

                operator new();
              }

              v86 = v231.f64[1];
              v85 = v231.f64[0];
            }
          }
        }
      }

      memset(v201, 0, sizeof(v201));
      v93 = 56;
      if (v85 == 0.0 && v86 == 0.0)
      {
        v93 = 128;
      }

      v94 = (a1 + v93);
      v202 = 0x3FF0000000000000;
      v203 = v185;
      v204 = xmmword_1B33B0520;
      v205 = v177;
      *&v211[4] = *(&v206 + 4);
      *v211 = v206;
      *&v211[16] = v207;
      LOBYTE(v212) = v208;
      v213 = v85;
      v214 = v86;
      v95 = a1 + v93 + 48;
      v96 = std::__hash_table<std::__hash_value_type<gdc::TileZBoundsEntry,std::__list_iterator<std::pair<gdc::TileZBoundsEntry,geo::OrientedBox<double,3u,double,double>>,void *>>,std::__unordered_map_hasher<gdc::TileZBoundsEntry,std::__hash_value_type<gdc::TileZBoundsEntry,std::__list_iterator<std::pair<gdc::TileZBoundsEntry,geo::OrientedBox<double,3u,double,double>>,void *>>,gdc::TileZBoundsEntryHash,std::equal_to<gdc::TileZBoundsEntry>,true>,std::__unordered_map_equal<gdc::TileZBoundsEntry,std::__hash_value_type<gdc::TileZBoundsEntry,std::__list_iterator<std::pair<gdc::TileZBoundsEntry,geo::OrientedBox<double,3u,double,double>>,void *>>,std::equal_to<gdc::TileZBoundsEntry>,gdc::TileZBoundsEntryHash,true>,std::allocator<std::__hash_value_type<gdc::TileZBoundsEntry,std::__list_iterator<std::pair<gdc::TileZBoundsEntry,geo::OrientedBox<double,3u,double,double>>,void *>>>>::find<gdc::TileZBoundsEntry>((a1 + v93 + 8), v211);
      if (!v96)
      {
        goto LABEL_80;
      }

      v97 = v94[7];
      v98 = *(v96 + 8);
      if (v97 != v98)
      {
        v99 = v98[1];
        if (v99 != v97)
        {
          v100 = *v98;
          *(v100 + 8) = v99;
          *v99 = v100;
          v101 = *v97;
          *(v101 + 8) = v98;
          *v98 = v101;
          *v97 = v98;
          v98[1] = v97;
          v97 = v94[7];
        }
      }

      if (v95 == v97)
      {
LABEL_80:
        v102 = BYTE1(v206);
        v103 = 1.0 / (1 << SBYTE1(v206));
        v104 = (1 << SBYTE1(v206)) + ~DWORD1(v206);
        v231.f64[0] = v103 * SDWORD2(v206);
        v231.f64[1] = v103 * v104;
        *v232 = v103 + SDWORD2(v206) * v103;
        *&v232[8] = v103 + v104 * v103;
        gdc::GlobeTileUtils::boundsFromMercatorRect(v211, v231.f64, v85, v86);
        geo::OrientedBox<double,3u,double,double>::operator=(v201, v211);
        BYTE1(v196[0]) = v102;
        *(v196 + 4) = *(&v206 + 4);
        LOBYTE(v196[0]) = v206;
        v197 = v207;
        v198 = v208;
        v199 = v85;
        v200 = v86;
        *v188 = v203;
        *&v188[16] = v204;
        *&v188[32] = v205;
        v231 = v201[0];
        *v232 = *&v201[1];
        *&v232[8] = *(&v201[1] + 8);
        *&v232[24] = *(&v201[2] + 1);
        v105 = std::__hash_table<std::__hash_value_type<gdc::TileZBoundsEntry,std::__list_iterator<std::pair<gdc::TileZBoundsEntry,geo::OrientedBox<double,3u,double,double>>,void *>>,std::__unordered_map_hasher<gdc::TileZBoundsEntry,std::__hash_value_type<gdc::TileZBoundsEntry,std::__list_iterator<std::pair<gdc::TileZBoundsEntry,geo::OrientedBox<double,3u,double,double>>,void *>>,gdc::TileZBoundsEntryHash,std::equal_to<gdc::TileZBoundsEntry>,true>,std::__unordered_map_equal<gdc::TileZBoundsEntry,std::__hash_value_type<gdc::TileZBoundsEntry,std::__list_iterator<std::pair<gdc::TileZBoundsEntry,geo::OrientedBox<double,3u,double,double>>,void *>>,std::equal_to<gdc::TileZBoundsEntry>,gdc::TileZBoundsEntryHash,true>,std::allocator<std::__hash_value_type<gdc::TileZBoundsEntry,std::__list_iterator<std::pair<gdc::TileZBoundsEntry,geo::OrientedBox<double,3u,double,double>>,void *>>>>::find<gdc::TileZBoundsEntry>(v94 + 1, v196);
        if (v105)
        {
          v106 = v105;
          v107 = *(v105 + 8);
          v109 = *v107;
          v108 = v107[1];
          *(v109 + 8) = v108;
          *v108 = v109;
          --v94[8];
          operator delete(v107);
          std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase(v94 + 1, v106);
        }

        operator new();
      }

      geo::OrientedBox<double,3u,double,double>::operator=(v201, (v97 + 8));
      v110 = (a1 + 275);
      if (!*(a1 + 276))
      {
      }

      if (BYTE1(v206) > *v110)
      {
        v111 = 1;
      }

      else
      {
        v111 = v24;
      }

      if (v111)
      {
        goto LABEL_92;
      }

      v112 = *&v205.i64[1];
      v113 = *&v204;
      v114 = *(&v204 + 1) - *v203.i64;
      *v188 = v187;
      *&v188[16] = 0x3FE0000000000000;
      v231.f64[0] = geo::OrientedBox<double,3u,double,double>::pointAt(v201, v188);
      v231.f64[1] = v115;
      *v232 = v116;
      *v211 = gm::Matrix<double,3,1>::normalized<int,void>(&v231);
      *&v211[8] = v117;
      *&v211[16] = v118;
      v119 = gm::Matrix<double,3,1>::normalized<int,void>(&v227);
      v120 = 0;
      v196[0] = *&v119;
      v196[1] = v121;
      v197 = v122;
      v123 = 0.0;
      do
      {
        v123 = v123 + *&v196[v120] * *&v211[v120 * 8];
        ++v120;
      }

      while (v120 != 3);
      if (v123 > (v113 - v112) / (v114 * 0.5))
      {
LABEL_92:
        geo::RigidTransform<double,double>::inverse(v196, v201);
        geo::Frustum<double>::transformed(v211, v172 + 984, v196);
        v193 = v203;
        v194 = v204;
        v195 = v205;
        v124 = *(a1 + 456);
        if (v124)
        {
          v125 = (*(*v124 + 48))(v124);
          *&v194 = *&v194 * v125;
          v126 = *(a1 + 456);
          if (!v126)
          {
            goto LABEL_145;
          }

          v127 = (*(*v126 + 48))(v126);
          *&v195.i64[1] = *&v195.i64[1] * v127;
        }

        v128 = gdc::fastFrustumBoxIntersection<double>(v211, v193.i64);
        v129 = v187;
        if (v128 || v169 && (geo::Frustum<double>::transformed(&v231, &v221, v196), v143 = gdc::fastFrustumBoxIntersection<double>(&v231, v193.i64), v129 = v187, v143))
        {
          if (v24 && *(a1 + 272) == 1)
          {
            v229 = v129;
            v230 = 0x3FE0000000000000;
            v130 = geo::OrientedBox<double,3u,double,double>::pointAt(v201, &v229);
            v131 = 0;
            *v188 = v130;
            *&v188[8] = v132;
            *&v188[16] = v133;
            do
            {
              v231.f64[v131] = *(&v227 + v131 * 8) - *&v188[v131 * 8];
              ++v131;
            }

            while (v131 != 3);
            v229 = 0x3FF0000000000000uLL;
            v230 = 0;
            v134 = gm::Quaternion<double>::operator*(&v201[1] + 8, &v229);
            v135 = 0;
            *v188 = v134;
            *&v188[8] = v136;
            *&v188[16] = v137;
            v138 = 0.0;
            do
            {
              v138 = v138 + *&v188[v135 * 8] * v231.f64[v135];
              ++v135;
            }

            while (v135 != 3);
            v139 = (*(&v204 + 1) - *v203.i64) * 0.5;
            if (v138 >= -v139)
            {
              v140 = 0.0;
              if (v138 > v139)
              {
                v140 = v138 - v139;
              }
            }

            else
            {
              v140 = v138 + v139;
            }

            v229 = xmmword_1B33B0740;
            v230 = 0;
            v144 = gm::Quaternion<double>::operator*(&v201[1] + 8, &v229);
            v145 = 0;
            *v188 = v144;
            *&v188[8] = v146;
            *&v188[16] = v147;
            v148 = 0.0;
            do
            {
              v148 = v148 + *&v188[v145 * 8] * v231.f64[v145];
              ++v145;
            }

            while (v145 != 3);
            v149 = (*&v205.i64[1] - *&v204) * 0.5;
            if (v148 >= -v149)
            {
              v150 = 0.0;
              if (v148 > v149)
              {
                v150 = v148 - v149;
              }
            }

            else
            {
              v150 = v148 + v149;
            }

            v229 = 0uLL;
            v230 = 0x3FF0000000000000;
            v151 = gm::Quaternion<double>::operator*(&v201[1] + 8, &v229);
            v152 = 0;
            *v188 = v151;
            *&v188[8] = v153;
            *&v188[16] = v154;
            v155 = 0.0;
            do
            {
              v155 = v155 + *&v188[v152 * 8] * v231.f64[v152];
              ++v152;
            }

            while (v152 != 3);
            v156 = (*v205.i64 - *&v203.i64[1]) * 0.5;
            if (v155 >= -v156)
            {
              v157 = 0.0;
              if (v155 > v156)
              {
                v157 = v155 - v156;
              }
            }

            else
            {
              v157 = v155 + v156;
            }

            v158 = BYTE1(v206);
            v159 = gdc::GlobeTileSelector::tileZForDepth(a1, sqrt(v140 * v140 + v150 * v150 + v157 * v157), v167);
            v160 = v166;
            if (v158 < v168)
            {
              v160 = 0;
            }

            if (v158 >= v159 || v160)
            {
              if (!a4[3] || !std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::find<geo::QuadTile>(a4, &v206))
              {
                std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile const&>(a3, &v206);
              }
            }

            else
            {
              v161 = v206;
              v162 = v207;
              v163 = v208;
              BYTE1(v231.f64[0]) = v158;
              LOBYTE(v231.f64[0]) = v206;
              *v232 = v207;
              v232[8] = v208;
              v232[16] = 1;
              *&v232[24] = 0;
              BYTE1(v233) = v158 + 1;
              v164 = *(&v206 + 4);
              *(v231.f64 + 4) = *(&v206 + 4);
              *(&v233 + 4) = vadd_s32(v164, v164);
              LOBYTE(v233) = v206;
              while (1)
              {
                v234 = 0;
                LOBYTE(v235) = 1;
                v188[1] = v158;
                *&v188[4] = v164;
                v188[0] = v161;
                *&v188[16] = v162;
                v188[24] = v163;
                v188[32] = 1;
                *&v188[40] = 4;
                HIDWORD(v189) = 0;
                v190 = 0;
                LOWORD(v189) = 255;
                v191 = 0;
                v192 = 1;
                if (!geo::QuadTileIterator::operator!=(&v231, v188))
                {
                  break;
                }

                *&v188[4] = *(&v233 + 4);
                *v188 = v233;
                *&v188[16] = v234;
                v188[24] = v235;
                std::deque<geo::QuadTile>::push_back(v215, v188);
                ++*&v232[24];
                LOBYTE(v233) = LOBYTE(v231.f64[0]);
                BYTE1(v233) = BYTE1(v231.f64[0]) + v232[16];
                DWORD1(v233) = (HIDWORD(v231.f64[0]) << v232[16]) + *&v232[24] / (1 << v232[16]);
                DWORD2(v233) = (LODWORD(v231.f64[1]) << v232[16]) + *&v232[24] % (1 << v232[16]);
              }

              v24 = v171;
            }
          }

          else
          {
            if (!a4[3] || !std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::find<geo::QuadTile>(a4, &v206))
            {
              std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile const&>(a3, &v206);
            }

            for (j = -1; j != 2; ++j)
            {
              for (k = -1; k != 2; ++k)
              {
                if (k | j)
                {
                  LOBYTE(v231.f64[0]) = -1;
                  BYTE1(v231.f64[0]) = BYTE1(v206);
                  HIDWORD(v231.f64[0]) = (DWORD1(v206) + j + (1 << SBYTE1(v206))) % (1 << SBYTE1(v206));
                  LODWORD(v231.f64[1]) = (k + DWORD2(v206) + (1 << SBYTE1(v206))) % (1 << SBYTE1(v206));
                  *v232 = 0;
                  v232[8] = 1;
                  if (!std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::find<geo::QuadTile>(v217, &v231))
                  {
                    std::deque<geo::QuadTile>::push_back(v215, &v231);
                    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile const&>(v217, &v231);
                  }
                }
              }
            }
          }
        }
      }

      v76 = *(&v216 + 1);
    }

    while (*(&v216 + 1));
  }

  std::deque<geo::QuadTile>::~deque[abi:nn200100](v215);
  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v217);
}