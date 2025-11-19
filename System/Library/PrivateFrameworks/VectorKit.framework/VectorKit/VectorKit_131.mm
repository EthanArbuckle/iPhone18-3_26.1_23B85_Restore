void sub_1B319CD84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int128 a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51)
{
  if (a32 != a34)
  {
    free(a32);
  }

  a40 = v52 - 192;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a40);
  _Unwind_Resume(a1);
}

id GEOGetVectorKitLabelExternalMeshLogicLog(void)
{
  if (GEOGetVectorKitLabelExternalMeshLogicLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitLabelExternalMeshLogicLog(void)::onceToken, &__block_literal_global_37367);
  }

  v1 = GEOGetVectorKitLabelExternalMeshLogicLog(void)::log;

  return v1;
}

void gdc::component::DataRequest<arComponents::XYPlaneMeshRequestData>::addRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::XYPlaneMeshRequestData>>(a1);
  v7 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v6, a2);
  if (v7)
  {
    v8 = v7;
    gdc::component::DataRequest<arComponents::XYPlaneMeshRequestData>::_clearRequest(a1, a2, v7);
    goto LABEL_24;
  }

  v9 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::XYPlaneMeshRequestData>>(a1);
  v44 = a2;
  v10 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v9 + 4, &v44);
  if (v11)
  {
    v13 = v9[11];
    v12 = v9[12];
    if (v13 >= v12)
    {
      v18 = v9[10];
      v19 = (v13 - v18);
      v20 = v13 - v18 + 1;
      if (v20 < 0)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v21 = v12 - v18;
      if (2 * v21 > v20)
      {
        v20 = 2 * v21;
      }

      if (v21 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v22 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        operator new();
      }

      v23 = v13 - v18;
      *v19 = 0;
      v14 = v19 + 1;
      memcpy(0, v18, v23);
      v9[10] = 0;
      v9[11] = (v19 + 1);
      v9[12] = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v13 = 0;
      v14 = v13 + 1;
    }

    v9[11] = v14;
    v16 = v9[31];
  }

  else
  {
    v15 = (v9[10] + ((v10 - v9[7]) >> 3));
    *v15 = 0;
    v16 = v9[31];
    if (v15 != v9[11])
    {
      for (i = v9[16]; i; i = *i)
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v16, &v44, 1);
      }

      goto LABEL_23;
    }
  }

  for (j = v9[22]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v16, &v44, 1);
  }

LABEL_23:
  v25 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::XYPlaneMeshRequestData>>(a1);
  v8 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v25, a2);
LABEL_24:
  gdc::component::DataRequest<arComponents::XYPlaneMeshRequestData>::_updateRequestStatus(a1, a2, v8, 2);
  v26 = gdc::Registry::storage<arComponents::XYPlaneMeshRequestData>(a1);
  v44 = a2;
  v27 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v26 + 4, &v44);
  if (v28)
  {
    v30 = v26[11];
    v29 = v26[12];
    if (v30 >= v29)
    {
      v35 = v26[10];
      v36 = (v30 - v35) >> 3;
      v37 = v36 + 1;
      if ((v36 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v38 = v29 - v35;
      if (v38 >> 2 > v37)
      {
        v37 = v38 >> 2;
      }

      if (v38 >= 0x7FFFFFFFFFFFFFF8)
      {
        v39 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = v37;
      }

      if (v39)
      {
        if (!(v39 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      *(8 * v36) = *a3;
      v31 = 8 * v36 + 8;
      if (v35 != v30)
      {
        v40 = v35;
        v41 = (8 * v36 + v35 - v30);
        do
        {
          v42 = *v40;
          v40 += 8;
          *v41++ = v42;
        }

        while (v40 != v30);
      }

      v26[10] = 8 * v36 + v35 - v30;
      v26[11] = v31;
      v26[12] = 0;
      if (v35)
      {
        operator delete(v35);
      }
    }

    else
    {
      *v30 = *a3;
      v31 = (v30 + 8);
    }

    v26[11] = v31;
    v33 = v26[31];
    goto LABEL_46;
  }

  v32 = (v26[10] + v27 - v26[7]);
  *v32 = *a3;
  v32[1] = *(a3 + 4);
  v33 = v26[31];
  if (v32 == v26[11])
  {
LABEL_46:
    for (k = v26[22]; k; k = *k)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(k[6], v33, &v44, 1);
    }

    return;
  }

  for (m = v26[16]; m; m = *m)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(m[6], v33, &v44, 1);
  }
}

uint64_t gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::LabelExternalMeshRequest>>>(uint64_t a1)
{
  v3 = 0xB1DB1DACA18D5329;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xB1DB1DACA18D5329);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::LabelFeatureArrivalModel>(uint64_t a1)
{
  v3 = 0x757F6D4F9C7E65A8;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x757F6D4F9C7E65A8uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::WorldTransform>>(uint64_t a1)
{
  v3 = 0x32AFEAA002EF563ELL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x32AFEAA002EF563EuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::VisibilityAlpha>>(uint64_t a1)
{
  v3 = 0xE77D1752D79CE08ELL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xE77D1752D79CE08ELL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::IsVisible>>(uint64_t a1)
{
  v3 = 0x347DBF5108282558;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x347DBF5108282558uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::IsVisible>>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::IsVisible>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::IsVisible>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

double _ZNSt3__110__function6__funcIZN2md23LabelsExternalMeshLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_13LabelsContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_25LabelsExternalMeshContextEE3__1NS_9allocatorISJ_EEFvRN12arComponents12ScaleToApplyEbEEclESO_Ob(uint64_t a1, double *a2)
{
  result = *a2 * *(**(a1 + 8) + 168);
  *a2 = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2md23LabelsExternalMeshLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_13LabelsContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_25LabelsExternalMeshContextEE3__1NS_9allocatorISJ_EEFvRN12arComponents12ScaleToApplyEbEE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A3BE80;
  a2[1] = v2;
  return result;
}

double _ZNSt3__110__function6__funcIZN2md23LabelsExternalMeshLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_13LabelsContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_25LabelsExternalMeshContextEE3__0NS_9allocatorISJ_EEFvRN12arComponents28UpRelativeTranslationToApplyEbEEclESO_Ob(uint64_t a1, double *a2)
{
  result = *a2 + *(**(a1 + 8) + 120) * 0.0000000249532021;
  *a2 = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2md23LabelsExternalMeshLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_13LabelsContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_25LabelsExternalMeshContextEE3__0NS_9allocatorISJ_EEFvRN12arComponents28UpRelativeTranslationToApplyEbEE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A3BE08;
  a2[1] = v2;
  return result;
}

BOOL gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::VisibilityAlpha>>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::VisibilityAlpha>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::VisibilityAlpha>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::WorldTransform>>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::WorldTransform>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::WorldTransform>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::Registry::remove<gdc::component::DataRequestObserver::Observer<gdc::component::DataRequest<arComponents::XYPlaneMeshRequestData>>>(uint64_t a1, uint64_t *a2)
{
  v3 = 0;
  v4 = 0xCBF29CE484222325;
  do
  {
    v4 = 0x100000001B3 * (v4 ^ aStdStringViewG_876[v3++ + 38]);
  }

  while (v3 != 112);
  v5 = gdc::Registry::storage<gdc::component::DataRequestObserver::Observer<gdc::component::DataRequest<arComponents::XYPlaneMeshRequestData>>>(a1, v4);
  v6 = *a2;

  return gdc::ComponentStorageWrapper<gdc::component::DataRequestObserver::Observer<gdc::component::DataRequest<arComponents::XYPlaneMeshRequestData>>>::remove(v5, v6);
}

BOOL gdc::ComponentStorageWrapper<arComponents::LabelFeatureArrivalModel>::remove(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = 2 * (v3 - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *(v6 + v7) = *(a1[11] - 16);
    a1[11] -= 16;
    v8 = a1[28];
    if (v8)
    {
      v9 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v8[6], v9, &v11, 1);
        v8 = *v8;
      }

      while (v8);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::LabelFeatureArrivalModel>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<arComponents::LabelFeatureArrivalModel>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<arComponents::Wrap<std::shared_ptr<md::LabelExternalMeshRequest>>>::remove(void *a1, uint64_t a2)
{
  v16 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 2 * (v3 - a1[7]));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v9 = *(v7 - 16);
    v8 = *(v7 - 8);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v6[1];
    *v6 = v9;
    v6[1] = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v11 = a1[11];
    v12 = *(v11 - 8);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    a1[11] = v11 - 16;
    v13 = a1[28];
    if (v13)
    {
      v14 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v13[6], v14, &v16, 1);
        v13 = *v13;
      }

      while (v13);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::Wrap<std::shared_ptr<md::LabelExternalMeshRequest>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<arComponents::Wrap<std::shared_ptr<md::LabelExternalMeshRequest>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

uint64_t gdc::component::DataRequest<arComponents::XYPlaneMeshRequestData>::_clearRequest(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = gdc::Registry::storage<arComponents::XYPlaneMeshRequestData>(a1);
  gdc::ComponentStorageWrapper<arComponents::XYPlaneMeshRequestData>::remove(v6, a2);
  result = gdc::component::DataRequest<arComponents::XYPlaneMeshRequestData>::_removeStatusTag(a1, a2, *a3);
  *a3 = 0;
  return result;
}

void ___ZL40GEOGetVectorKitLabelExternalMeshLogicLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "LabelExternalMeshLogic");
  v1 = GEOGetVectorKitLabelExternalMeshLogicLog(void)::log;
  GEOGetVectorKitLabelExternalMeshLogicLog(void)::log = v0;
}

uint64_t md::LabelsExternalMeshLogic::processPendingShadowRequests(void)::$_0::operator()(uint64_t a1, unint64_t a2)
{
  v2 = HIDWORD(a2);
  v3 = gdc::Registry::storage<arComponents::XYPlaneMeshRequest>(*(*a1 + 120));
  result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v3 + 32), v2);
  if (*(v3 + 64) == result)
  {
    operator new();
  }

  return result;
}

BOOL gdc::Registry::remove<arComponents::Wrap<std::shared_ptr<md::LabelExternalMeshRequest>>,gdc::Entity *>(_BOOL8 result, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::LabelExternalMeshRequest>>>(v5);
      v7 = *v4++;
      result = gdc::ComponentStorageWrapper<arComponents::Wrap<std::shared_ptr<md::LabelExternalMeshRequest>>>::remove(v6, v7);
    }

    while (v4 != a3);
  }

  return result;
}

char *geo::linear_map<md::LabelExternalMesh *,gdc::Entity,std::equal_to<md::LabelExternalMesh *>,std::allocator<std::pair<md::LabelExternalMesh *,gdc::Entity>>,std::vector<std::pair<md::LabelExternalMesh *,gdc::Entity>>>::operator[](uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*a1 == v3)
  {
    goto LABEL_7;
  }

  v5 = *a1;
  while (*v5 != a2)
  {
    v5 += 16;
    if (v5 == v3)
    {
      goto LABEL_7;
    }
  }

  if (v5 == v3)
  {
LABEL_7:
    if (v4 == v3)
    {
      goto LABEL_13;
    }

    v5 = *a1;
    while (*v5 != a2)
    {
      v5 += 16;
      if (v5 == v3)
      {
        goto LABEL_13;
      }
    }

    if (v5 == v3)
    {
LABEL_13:
      v6 = *(a1 + 16);
      if (v3 >= v6)
      {
        v8 = v3 - v4;
        v9 = (v3 - v4) >> 4;
        v10 = v9 + 1;
        if ((v9 + 1) >> 60)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v11 = v6 - v4;
        if (v11 >> 3 > v10)
        {
          v10 = v11 >> 3;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF0)
        {
          v12 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          if (!(v12 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v13 = v9;
        v14 = (16 * v9);
        *v14 = a2;
        v14[1] = 0xFFFFFFFF00000000;
        v7 = 16 * v9 + 16;
        v15 = &v14[-2 * v13];
        memcpy(v15, v4, v8);
        *a1 = v15;
        *(a1 + 8) = v7;
        *(a1 + 16) = 0;
        if (v4)
        {
          operator delete(v4);
        }
      }

      else
      {
        *v3 = a2;
        *(v3 + 1) = 0xFFFFFFFF00000000;
        v7 = (v3 + 16);
      }

      *(a1 + 8) = v7;
      v5 = (v7 - 16);
    }
  }

  return v5 + 8;
}

void std::__shared_ptr_emplace<md::ARFeatureShadowExternalMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3BF88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::Registry::storage<gdc::component::DataRequestObserver::IsFailed>(uint64_t a1)
{
  v3 = 0xBD48D0FDFECFEB54;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xBD48D0FDFECFEB54);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void md::LabelsExternalMeshLogic::processPendingArrivalRequests(void)::$_0::operator()(void **a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v14 = a2;
  v6 = a1[1];
  std::mutex::lock((a3 + 96));
  v7 = *(a3 + 160);
  if (v7)
  {
    atomic_store(1u, (v7 + 116));
  }

  std::mutex::lock((a3 + 96));
  v8 = *(a3 + 176);
  std::mutex::unlock((a3 + 96));
  if (v8 != 4)
  {
    *(a3 + 176) = 3;
  }

  std::mutex::unlock((a3 + 96));
  geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(*a1, &v14);
  v9 = gdc::Registry::storage<arComponents::LabelFeatureArrivalModel>(v6[15]);
  v10 = gdc::ComponentStorageWrapper<arComponents::RotationToApply>::get(v9, a2);
  if (v10)
  {
    v11 = v10;
    geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(*a1, v10);
    geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(*a1, v11 + 1);
  }

  v12 = GEOGetVectorKitLabelExternalMeshLogicLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a3 + 8);
    *buf = 67109890;
    v16 = v13;
    v17 = 2080;
    v18 = "false";
    v19 = 2080;
    v20 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/LabelsExternalMeshLogic.mm";
    v21 = 1024;
    v22 = 440;
    _os_log_impl(&dword_1B2754000, v12, OS_LOG_TYPE_ERROR, "Failed to fulfill request (id:%d): Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x22u);
  }
}

void md::LabelsExternalMeshLogic::processPendingArrivalRequests(void)::$_1::operator()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v35 = a2;
  v8 = *a1;
  v9 = *a4;
  v10 = gdc::Registry::storage<arComponents::Boundary>(*(*a1 + 120));
  v11 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v10 + 4, HIDWORD(v9));
  if (v10[8] == v11)
  {
    v14 = 1;
  }

  else
  {
    v12 = v10[10] + 24 * ((v11 - v10[7]) >> 3);
    v13 = v12 == v10[11] || v12 == 0;
    v14 = v13;
    if (!v13)
    {
      operator new();
    }
  }

  *buf = 0;
  *v37 = 0;
  v15 = md::LabelExternalMeshRequest::fulfillRequest(a3, buf);
  if (*v37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*v37);
  }

  if (v15)
  {
    v16 = GEOGetVectorKitLabelExternalMeshLogicLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a3 + 8);
      v18 = "ARFeatureShadow";
      if (!*(a3 + 12))
      {
        v18 = "ARArrival";
      }

      *buf = 67109378;
      *&buf[4] = v17;
      *v37 = 2080;
      *&v37[2] = v18;
      _os_log_impl(&dword_1B2754000, v16, OS_LOG_TYPE_INFO, "Fulfilled request(id:%d) for external mesh type:%s", buf, 0x12u);
    }

    v19 = *(v8 + 120);
    if (v14)
    {
      *v37 = 0;
    }

    else
    {
      atomic_fetch_add_explicit(8, 1uLL, memory_order_relaxed);
      *v37 = 0;
      atomic_fetch_add_explicit(8, 1uLL, memory_order_relaxed);
    }

    *buf = 0;
    v22 = gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::LabelExternalMesh>>>(v19);
    gdc::ComponentStorageWrapper<arComponents::TransformConstantDataComponent>::emplace(v22, a2, buf);
    if (*v37)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*v37);
    }

    if (v14)
    {
      v23 = *(v8 + 120);
      *v37 = 0;
    }

    else
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](0);
      v23 = *(v8 + 120);
      *v37 = 0;
      atomic_fetch_add_explicit(8, 1uLL, memory_order_relaxed);
    }

    *buf = 0;
    v24 = gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::ARArrivalExternalMesh>>>(v23);
    gdc::ComponentStorageWrapper<arComponents::TransformConstantDataComponent>::emplace(v24, a2, buf);
    if (*v37)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*v37);
    }

    v25 = *(v8 + 120);
    v26 = *a4;
    if (v14)
    {
      *v37 = 0;
    }

    else
    {
      atomic_fetch_add_explicit(8, 1uLL, memory_order_relaxed);
      *v37 = 0;
      atomic_fetch_add_explicit(8, 1uLL, memory_order_relaxed);
    }

    *buf = 0;
    v27 = gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::LabelExternalMesh>>>(v25);
    gdc::ComponentStorageWrapper<arComponents::TransformConstantDataComponent>::emplace(v27, v26, buf);
    if (*v37)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*v37);
    }

    if (v14)
    {
      v28 = *(v8 + 120);
      v29 = *a4;
      *v37 = 0;
    }

    else
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](0);
      v28 = *(v8 + 120);
      v29 = *a4;
      *v37 = 0;
      atomic_fetch_add_explicit(8, 1uLL, memory_order_relaxed);
    }

    *buf = 0;
    v30 = gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::ARArrivalExternalMesh>>>(v28);
    gdc::ComponentStorageWrapper<arComponents::TransformConstantDataComponent>::emplace(v30, v29, buf);
    if (*v37)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*v37);
    }

    v31 = *a4;
    v32 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(*(v8 + 120));
    gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v32, v31);
    v33 = a4[1];
    v34 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(*(v8 + 120));
    gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v34, v33);
    *geo::linear_map<md::LabelExternalMesh *,gdc::Entity,std::equal_to<md::LabelExternalMesh *>,std::allocator<std::pair<md::LabelExternalMesh *,gdc::Entity>>,std::vector<std::pair<md::LabelExternalMesh *,gdc::Entity>>>::operator[](v8 + 176, 0) = a2;
    geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(a1[1], &v35);
  }

  else
  {
    geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(a1[2], &v35);
    v20 = GEOGetVectorKitLabelExternalMeshLogicLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a3 + 8);
      *buf = 67109890;
      *&buf[4] = v21;
      *v37 = 2080;
      *&v37[2] = "false";
      v38 = 2080;
      v39 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/LabelsExternalMeshLogic.mm";
      v40 = 1024;
      v41 = 480;
      _os_log_impl(&dword_1B2754000, v20, OS_LOG_TYPE_ERROR, "Failed to fulfill request (id:%d): Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x22u);
    }
  }

  if ((v14 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](0);
  }
}

void sub_1B319F7C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<md::ARArrivalExternalMesh>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void std::__shared_ptr_emplace<md::ARArrivalExternalMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3BFC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::Registry::storage<gdc::component::DataRequestObserver::IsCompleted>(uint64_t a1)
{
  v3 = 0xB369A71FEF0EAB72;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xB369A71FEF0EAB72);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<gdc::component::DataRequestObserver::IsCompleted>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<gdc::component::DataRequestObserver::IsCompleted>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<gdc::component::DataRequestObserver::IsCompleted>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<gdc::component::DataRequestObserver::IsFailed>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<gdc::component::DataRequestObserver::IsFailed>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<gdc::component::DataRequestObserver::IsFailed>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

_BYTE *md::Logic<md::LabelsExternalMeshLogic,md::LabelsExternalMeshContext,md::LogicDependencies<gdc::TypeList<md::LabelsContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xF409241CDA31AF08 && (v4 = *(a3 + 32)) != 0)
  {
    v8[0] = gdc::Context::context<md::LabelsContext>(*(a2 + 8));
    return (*(*a1 + 160))(a1, a2, v8, v4);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t md::Logic<md::LabelsExternalMeshLogic,md::LabelsExternalMeshContext,md::LogicDependencies<gdc::TypeList<md::LabelsContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xF409241CDA31AF08)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::LabelsContext>(*(a2 + 8));
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::LabelsExternalMeshLogic,md::LabelsExternalMeshContext,md::LogicDependencies<gdc::TypeList<md::LabelsContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xF409241CDA31AF08)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::LabelsContext>(*(a2 + 8));
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::LabelsExternalMeshLogic,md::LabelsExternalMeshContext,md::LogicDependencies<gdc::TypeList<md::LabelsContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xF409241CDA31AF08)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::LabelsContext>(*(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::LabelsExternalMeshLogic,md::LabelsExternalMeshContext,md::LogicDependencies<gdc::TypeList<md::LabelsContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xF409241CDA31AF08)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::LabelsContext>(*(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::LabelsExternalMeshContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::LabelsExternalMeshContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A3BFF8;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::LabelsExternalMeshContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A3BFF8;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::LabelsExternalMeshLogic::createDebugNode(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(__p, "LabelExternalMeshLogic");
  gdc::DebugTreeNode::DebugTreeNode(a2, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    v5 = gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::LabelExternalMeshRequest>>>(v4);
    v6 = gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::LabelExternalMesh>>>(*(a1 + 120));
    std::string::basic_string[abi:nn200100]<0>(__p, "PendingRequests");
    gdc::DebugTreeValue::DebugTreeValue(v11, (*(v5 + 88) - *(v5 + 80)) >> 4);
    gdc::DebugTreeNode::addProperty(a2, __p, v11);
    if (v13 < 0)
    {
      operator delete(v12);
    }

    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:nn200100]<0>(__p, "ExternalMeshes");
    ChildNode = gdc::DebugTreeNode::createChildNode(a2, __p);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = v6[7];
    v9 = v6[8];
    if (v8 != v9)
    {
      for (i = v6[10]; *(*i + 4) != 1; i += 16)
      {
        if (!*(*i + 4))
        {
          std::string::basic_string[abi:nn200100]<0>(__p, "ARArrival");
          goto LABEL_16;
        }

LABEL_18:
        v8 += 8;
        if (v8 == v9)
        {
          return;
        }
      }

      std::string::basic_string[abi:nn200100]<0>(__p, "ARFeatureShadow");
LABEL_16:
      gdc::DebugTreeNode::createChildNode(ChildNode, __p);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_18;
    }
  }
}

void sub_1B31A0544(_Unwind_Exception *a1)
{
  *(v2 - 72) = v1 + 72;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v2 - 72));
  *(v2 - 72) = v1 + 48;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v2 - 72));
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

void md::LabelsExternalMeshLogic::~LabelsExternalMeshLogic(md::LabelsExternalMeshLogic *this)
{
  md::LabelsExternalMeshLogic::~LabelsExternalMeshLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A3B5B8;
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 16);
  if (v4)
  {
    *(this + 17) = v4;
    operator delete(v4);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void md::Logic<md::LabelsExternalMeshLogic,md::LabelsExternalMeshContext,md::LogicDependencies<gdc::TypeList<md::LabelsContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup::~MeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::VenueOpenToBelowShadow::MeshPipelineSetup::~MeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::CollisionTrianglesDebug>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CollisionTrianglesDebug>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CollisionTrianglesDebug>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CollisionTrianglesDebug>(void)::metadata >= 0x200)
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

void geo::sparse_set<ecs2::Entity,unsigned short,256ul>::insert(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 2);
  v5 = v4 >> 7;
  v6 = *a1;
  v7 = a1[1] - *a1;
  if (v4 >> 7 >= v7 >> 3 || (v8 = *(v6 + 8 * v5)) == 0)
  {
    v10 = a1[4];
LABEL_7:
    v12 = v10;
    goto LABEL_8;
  }

  v9 = *(v8 + 2 * (v4 & 0x7F));
  v11 = a1[3];
  v10 = a1[4];
  if (v9 >= (v10 - v11) >> 2)
  {
    goto LABEL_7;
  }

  v12 = v11 + 4 * v9;
  if (*(v12 + 2) != v4)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v10 == v12)
  {
    v13 = a1[3];
    v14 = v4 & 0x7F;
    if (v5 >= v7 >> 3)
    {
      std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::resize(a1, v5 + 1);
      v6 = *a1;
    }

    v15 = v12 - v13;
    if (!*(v6 + 8 * v5))
    {
      operator new();
    }

    *(*(*a1 + 8 * v5) + 2 * v14) = v15 >> 2;
    v17 = a1[4];
    v16 = a1[5];
    if (v17 >= v16)
    {
      v19 = a1[3];
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
      *v24 = *a2;
      v18 = 4 * v20 + 4;
      v25 = a1[3];
      v26 = a1[4] - v25;
      v27 = v24 - v26;
      memcpy(v24 - v26, v25, v26);
      v28 = a1[3];
      a1[3] = v27;
      a1[4] = v18;
      a1[5] = 0;
      if (v28)
      {
        operator delete(v28);
      }
    }

    else
    {
      *v17 = *a2;
      v18 = (v17 + 1);
    }

    a1[4] = v18;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::CameraCollision>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollision>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollision>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollision>(void)::metadata >= 0x200)
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

uint64_t std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 4);
    if ((v7 + 1) > 0x249249249249249)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 4);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x124924924924924)
    {
      v10 = 0x249249249249249;
    }

    else
    {
      v10 = v9;
    }

    v19 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>>(v10);
    }

    v16 = 0;
    v17 = 112 * v7;
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](112 * v7, a2);
    v18 = (112 * v7 + 112);
    v11 = a1[1];
    v12 = 112 * v7 + *a1 - v11;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>,std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>*>(*a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    v14 = a1[2];
    v15 = v18;
    *(a1 + 1) = v18;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v16 = v13;
    v17 = v13;
    result = std::__split_buffer<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::~__split_buffer(&v16);
    v6 = v15;
  }

  else
  {
    result = std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](a1[1], a2);
    v6 = v4 + 112;
    a1[1] = v4 + 112;
  }

  a1[1] = v6;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::CameraCollisionPathDebug>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionPathDebug>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionPathDebug>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionPathDebug>(void)::metadata >= 0x200)
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

uint64_t ecs2::BasicRegistry<void>::storage<md::CameraCollisionVolumeDebug>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionVolumeDebug>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionVolumeDebug>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionVolumeDebug>(void)::metadata >= 0x200)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionVolumeDebug>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::CameraCollisionVolumeDebug>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionVolumeDebug>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::CameraCollisionVolumeDebug>(void)::localId;
    unk_1EB845E20 = 0x6347220B58E4F5B2;
    qword_1EB845E28 = "md::CameraCollisionVolumeDebug]";
    qword_1EB845E30 = 30;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md26CameraCollisionVolumeDebugEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESB_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISJ_EEFvSI_EEclEOSI_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionVolumeDebug>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionVolumeDebug>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::CameraCollisionVolumeDebug>(v3);
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

        v13 = 0;
        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v10[7];
        v17 = *(v16 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 40 * (v15 & 0x3F);
        v18 = *(v16 + ((v14 >> 3) & 0x1FF8)) + 40 * (v14 & 0x3F);
        v21 = *v18;
        v22 = *(v18 + 16);
        v19 = *(v18 + 24);
        v20 = *(v18 + 32);
        do
        {
          *(v18 + v13) = *(v17 + v13);
          v13 += 8;
        }

        while (v13 != 24);
        *(v18 + 24) = *(v17 + 24);
        *(v18 + 32) = *(v17 + 32);
        *v17 = v21;
        *(v17 + 16) = v22;
        *(v17 + 24) = v19;
        *(v17 + 32) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionVolumeDebug>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionVolumeDebug>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md26CameraCollisionVolumeDebugEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESB_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISJ_EEFvSI_EE7__cloneEPNS0_6__baseISM_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A444C8;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::CameraCollisionVolumeDebug,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A44488;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::CameraCollisionVolumeDebug,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::CameraCollisionVolumeDebug,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A444A8;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::CameraCollisionVolumeDebug,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::CameraCollisionVolumeDebug,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::CameraCollisionVolumeDebug,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A44488;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::CameraCollisionVolumeDebug,64ul>::~storage(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionPathDebug>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::CameraCollisionPathDebug>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionPathDebug>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::CameraCollisionPathDebug>(void)::localId;
    *algn_1EB845E98 = 0x3DEA0A6965AEDF5DLL;
    qword_1EB845EA0 = "md::CameraCollisionPathDebug]";
    qword_1EB845EA8 = 28;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md24CameraCollisionPathDebugEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESB_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISJ_EEFvSI_EEclEOSI_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionPathDebug>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionPathDebug>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::CameraCollisionPathDebug>(v3);
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

        v13 = 0;
        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v10[7];
        v17 = *(v16 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 56 * (v15 & 0x3F);
        v18 = *(v16 + ((v14 >> 3) & 0x1FF8)) + 56 * (v14 & 0x3F);
        v23 = *v18;
        *v24 = *(v18 + 16);
        *&v24[16] = *(v18 + 32);
        v19 = *(v18 + 48);
        do
        {
          *(v18 + v13) = *(v17 + v13);
          v13 += 8;
        }

        while (v13 != 24);
        v20 = 0;
        v21 = (v17 + 24);
        do
        {
          *(v18 + 24 + v20) = *(v21 + v20);
          v20 += 8;
        }

        while (v20 != 24);
        *(v18 + 48) = *(v17 + 48);
        *v17 = v23;
        *(v17 + 16) = *v24;
        *v21 = *&v24[8];
        *(v17 + 40) = *&v24[24];
        *(v17 + 48) = v19;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  v22 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v22 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionPathDebug>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionPathDebug>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md24CameraCollisionPathDebugEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESB_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISJ_EEFvSI_EE7__cloneEPNS0_6__baseISM_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A44738;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::CameraCollisionPathDebug,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A446F8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::CameraCollisionPathDebug,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::CameraCollisionPathDebug,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A44718;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::CameraCollisionPathDebug,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::CameraCollisionPathDebug,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::CameraCollisionPathDebug,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A446F8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::CameraCollisionPathDebug,64ul>::~storage(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollision>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::CameraCollision>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollision>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::CameraCollision>(void)::localId;
    *algn_1EB845DE8 = 0xAF52E84D5C37AC91;
    qword_1EB845DF0 = "md::CameraCollision]";
    qword_1EB845DF8 = 19;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md15CameraCollisionEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESB_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISJ_EEFvSI_EEclEOSI_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollision>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollision>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::CameraCollision>(v3);
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

        v13 = 0;
        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v10[7];
        v17 = *(v16 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 72 * (v15 & 0x3F);
        v18 = *(v16 + ((v14 >> 3) & 0x1FF8)) + 72 * (v14 & 0x3F);
        *&v24[16] = *(v18 + 32);
        v25 = *(v18 + 48);
        v26 = *(v18 + 64);
        v23 = *v18;
        *v24 = *(v18 + 16);
        do
        {
          *(v18 + v13) = *(v17 + v13);
          v13 += 8;
        }

        while (v13 != 24);
        v19 = 0;
        v20 = (v17 + 24);
        do
        {
          *(v18 + 24 + v19) = *(v20 + v19);
          v19 += 8;
        }

        while (v19 != 24);
        v21 = *(v17 + 48);
        *(v18 + 64) = *(v17 + 64);
        *(v18 + 48) = v21;
        *v17 = v23;
        *(v17 + 16) = *v24;
        *v20 = *&v24[8];
        *(v17 + 40) = *&v24[24];
        *(v17 + 48) = v25;
        *(v17 + 64) = v26;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  v22 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v22 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollision>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollision>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md15CameraCollisionEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESB_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISJ_EEFvSI_EE7__cloneEPNS0_6__baseISM_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A443D0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::CameraCollision,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A44390;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::CameraCollision,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::CameraCollision,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A443B0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::CameraCollision,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::CameraCollision,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::CameraCollision,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A44390;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::CameraCollision,64ul>::~storage(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CollisionTrianglesDebug>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::CollisionTrianglesDebug>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CollisionTrianglesDebug>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::CollisionTrianglesDebug>(void)::localId;
    unk_1EB845E60 = 0x2031092DD0D95BB0;
    qword_1EB845E68 = "md::CollisionTrianglesDebug]";
    qword_1EB845E70 = 27;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md23CollisionTrianglesDebugEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESB_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISJ_EEFvSI_EEclEOSI_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CollisionTrianglesDebug>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CollisionTrianglesDebug>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::CollisionTrianglesDebug>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F);
        v18 = *v17;
        v19 = *(v17 + 16);
        *v17 = 0;
        *(v17 + 8) = 0;
        *(v17 + 16) = 0;
        *v17 = *v16;
        *(v17 + 16) = *(v16 + 16);
        *v16 = v18;
        *(v16 + 16) = v19;
        if (v18)
        {
          *(v16 + 8) = v18;
          operator delete(v18);
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CollisionTrianglesDebug>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CollisionTrianglesDebug>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md23CollisionTrianglesDebugEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESB_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISJ_EEFvSI_EE7__cloneEPNS0_6__baseISM_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A44668;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::CollisionTrianglesDebug,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A44628;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::CollisionTrianglesDebug,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::CollisionTrianglesDebug,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A44648;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      v6 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v6;
        operator delete(v6);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v7 = a1[7];
  v8 = a1[8];
  while (v7 != v8)
  {
    if (*v7)
    {
      operator delete(*v7);
    }

    ++v7;
  }

  v9 = a1[10];
  if (v9)
  {
    a1[11] = v9;
    operator delete(v9);
  }

  v10 = a1[7];
  if (v10)
  {
    a1[8] = v10;
    operator delete(v10);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::CollisionTrianglesDebug,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::CollisionTrianglesDebug,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::CollisionTrianglesDebug,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A44628;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::CollisionTrianglesDebug,64ul>::~storage(a1);
}

void md::BVHDebugLogic::~BVHDebugLogic(md::BVHDebugLogic *this)
{
  *this = &unk_1F2A3C100;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  v3 = (this + 136);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A3C100;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  v3 = (this + 136);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void sub_1B31A301C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, char a21)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a21 == 1)
  {
    (*(*a17 + 56))(a17);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::__unordered_map_hasher<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::hash<std::pair<void const*,unsigned long>>,std::equal_to<std::pair<void const*,unsigned long>>,true>,std::__unordered_map_equal<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::equal_to<std::pair<void const*,unsigned long>>,std::hash<std::pair<void const*,unsigned long>>,true>,std::allocator<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>>>::__emplace_unique_key_args<std::pair<void const*,unsigned long>,std::piecewise_construct_t const&,std::tuple<std::pair<void const*,unsigned long> const&>,std::tuple<>>(void *a1, unint64_t a2, uint64_t a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = (a3 + 0x77FA823ACE0B5A40 * (v4 ^ (v4 >> 47)) + ((0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47))) >> 2) - 0x61C8864680B583EBLL) ^ (0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47)));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = (a3 + 0x77FA823ACE0B5A40 * (v4 ^ (v4 >> 47)) + ((0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47))) >> 2) - 0x61C8864680B583EBLL) ^ (0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47)));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_22;
    }

LABEL_21:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (v10[2] != a2 || v10[3] != a3)
  {
    goto LABEL_21;
  }

  return v10;
}

uint64_t std::__function::__value_func<void ()(gm::Range<unsigned long> const&,gm::Range<unsigned long> const&,ggl::DataWrite<ggl::Venue3DStroke::HorizontalDefaultVbo> &,ggl::DataWrite<unsigned short> &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(gm::Range<unsigned long> const&,gm::Range<unsigned long> const&,ggl::DataWrite<ggl::Venue3DStroke::VerticalDefaultVbo> &,ggl::DataWrite<unsigned short> &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t numberOfStyleChanges(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *a3;
    a3 += 12;
    if (v5 == 1 && ((*(a1 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3) & 1) == 0)
    {
      v4 += (~*(a1 + ((((a2 + v3 - 1) % a2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> ((a2 + v3 - 1) % a2)) & 1;
    }

    ++v3;
  }

  while (a2 != v3);
  return v4;
}

uint64_t std::__function::__value_func<void ()(gm::Range<unsigned long> const&,gm::Range<unsigned long> const&,ggl::DataWrite<ggl::VenueWall::DefaultVbo> &,ggl::DataWrite<unsigned short> &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(gm::Range<unsigned long> const&,gm::Range<unsigned long> const&,ggl::DataWrite<ggl::VenueWall::EndCapVbo> &,ggl::DataWrite<unsigned short> &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__shared_ptr_emplace<ggl::Venue3DStroke::VerticalVenue3DStrokeMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3C520;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Venue3DStroke::HorizontalVenue3DStrokeMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3C4E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VenueWall::EndCapMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3C4B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VenueWall::MeshMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3C478;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B31A73D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B31A8310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31)
{
  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a31);
  }

  std::unique_ptr<md::MeshSetStorage>::reset[abi:nn200100](v33 + 20, 0);
  ggl::BufferMemory::~BufferMemory((v33 + 12));
  ggl::BufferMemory::~BufferMemory((v33 + 6));
  *(v34 - 144) = v32;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100]((v34 - 144));
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Venue3DStroke::VerticalDefaultVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3C400;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Venue3DStroke::HorizontalDefaultVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3C340;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::VenueWall::EndCapVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::VenueWall::EndCapVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::VenueWall::EndCapVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3C2C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::VenueWall::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::VenueWall::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::VenueWall::DefaultVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3C240;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::MarkedLRUCache<md::Label *,gm::Matrix<double,3,1>,std::hash<md::Label *>,std::equal_to<md::Label *>>::find(uint64_t a1, unint64_t a2)
{
  if (std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((a1 + 24), a2))
  {
    operator new();
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(gm::Matrix<double,4,4> const&,arComponents::LocalBounds const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(gm::Matrix<double,4,4> const&,gm::Box<float,3> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(gdc::Tiled const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

double std::__function::__func<md::ARWalkingLabeler::debugDrawMiniMap(md::DebugConsole *)::$_3,std::allocator<md::ARWalkingLabeler::debugDrawMiniMap(md::DebugConsole *)::$_3>,void ()(gdc::Tiled const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = 1 << *(*a2 + 1);
  v4 = 1.0 / v3;
  v5 = v4 * (v3 + ~*(*a2 + 4));
  v8.n128_f64[0] = v4 * *(*a2 + 8);
  v8.n128_f64[1] = v5;
  v9 = v8.n128_f64[0] + v4;
  v10 = v5 + v4;
  v7 = -16711681;
  md::DebugConsoleMapRect::drawWorldRect(v2, &v8, &v7, 0);
  return result;
}

uint64_t std::__function::__func<md::ARWalkingLabeler::debugDrawMiniMap(md::DebugConsole *)::$_3,std::allocator<md::ARWalkingLabeler::debugDrawMiniMap(md::DebugConsole *)::$_3>,void ()(gdc::Tiled const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A3C750;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::ARWalkingLabeler::debugDrawMiniMap(md::DebugConsole *)::$_2,std::allocator<md::ARWalkingLabeler::debugDrawMiniMap(md::DebugConsole *)::$_2>,void ()(gm::Matrix<double,4,4> const&,gm::Box<float,3> const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v11[4] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  do
  {
    v8[0].n128_f64[v4] = *(a3 + 4 * v4);
    ++v4;
  }

  while (v4 != 3);
  do
  {
    v8[0].n128_f64[v4] = *(a3 + 4 * v4);
    ++v4;
  }

  while (v4 != 6);
  v9 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *v10 = xmmword_1B33B0520;
  *&v10[16] = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v11[0] = &unk_1F2A61070;
  v11[1] = &v9;
  v11[2] = a2;
  v11[3] = v11;
  gm::Box<double,3>::forEachCorner(v8, v11);
  std::__function::__value_func<void ()(gm::Matrix<double,3,1> &)>::~__value_func[abi:nn200100](v11);
  v8[0] = v9;
  v8[1] = *&v10[8];
  v6 = *(a1 + 16);
  if (*(*(v5 + 2208) + 129) == 1)
  {
    v7 = -16776961;
  }

  else
  {
    v7 = 0x80000000;
  }

  LODWORD(v11[0]) = v7;
  md::DebugConsoleMapRect::drawWorldRect(v6, v8, v11, 0);
}

__n128 std::__function::__func<md::ARWalkingLabeler::debugDrawMiniMap(md::DebugConsole *)::$_2,std::allocator<md::ARWalkingLabeler::debugDrawMiniMap(md::DebugConsole *)::$_2>,void ()(gm::Matrix<double,4,4> const&,gm::Box<float,3> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A3C708;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::ARWalkingLabeler::debugDrawMiniMap(md::DebugConsole *)::$_1,std::allocator<md::ARWalkingLabeler::debugDrawMiniMap(md::DebugConsole *)::$_1>,void ()(gm::Matrix<double,4,4> const&,arComponents::LocalBounds const&)>::operator()(uint64_t a1, double *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if ((*(a3 + 160) & 1) == 0)
  {
    memset(v29, 0, sizeof(v29));
    memset(v28, 0, sizeof(v28));
    __p[0] = 0;
    __p[1] = 0;
    v26 = 0.0;
    __asm { FMOV            V0.4S, #1.0 }

    *v27 = _Q0;
    geo::DiscreteOrientedPolytope<arComponents::XY26DOPTraits<float>>::extractVertices(a3, v28, __p);
  }

  v12 = *(a3 + 136);
  v13 = *(a3 + 144);
  if (v13 != v12)
  {
    v14 = 0;
    do
    {
      *__p = *(v12 + 16 * v14);
      v26 = 0.0;
      v15 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(a2, __p);
      v17 = v16;
      if (v14 < ((v13 - v12) >> 4) - 1)
      {
        v18 = v14 + 1;
      }

      else
      {
        v18 = 0;
      }

      *__p = *(v12 + 16 * v18);
      v26 = 0.0;
      v19 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(a2, __p);
      v20 = *(a1 + 16);
      v21 = v19 - v15;
      v23 = v22 - *&v17;
      if (*(*(v6 + 2208) + 128) == 1)
      {
        v24 = -16776961;
      }

      else
      {
        v24 = 0x80000000;
      }

      LODWORD(v29[0]) = v24;
      __p[0] = *&v15;
      __p[1] = v17;
      v26 = v21;
      v27[0] = v23;
      md::DebugConsoleMapRect::drawWorldSegment(v20, __p, v29);
      ++v14;
      v12 = *(a3 + 136);
      v13 = *(a3 + 144);
    }

    while (v14 < (v13 - v12) >> 4);
  }
}

__n128 std::__function::__func<md::ARWalkingLabeler::debugDrawMiniMap(md::DebugConsole *)::$_1,std::allocator<md::ARWalkingLabeler::debugDrawMiniMap(md::DebugConsole *)::$_1>,void ()(gm::Matrix<double,4,4> const&,arComponents::LocalBounds const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A3C6C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

BOOL std::__function::__func<md::ARWalkingLabeler::debugDrawMiniMap(md::DebugConsole *)::$_0,std::allocator<md::ARWalkingLabeler::debugDrawMiniMap(md::DebugConsole *)::$_0>,BOOL ()(gm::Box<double,3> const&)>::operator()(uint64_t a1, __int128 *a2)
{
  v2 = 0;
  v3 = 0;
  v4 = &v11;
  v5 = *(a2 + 24);
  v11 = *a2;
  v12 = v5;
  v6 = *(a1 + 8);
  v7 = v6 + 24;
  v8 = v6 + 40;
  while (*(v8 + 8 * v3) > *v4)
  {
    result = *(v7 + 8 * v3) >= *(&v12 + v3);
    v10 = v2 | result;
    v2 = 1;
    v4 = &v11 + 1;
    v3 = 1;
    if (v10)
    {
      return result;
    }
  }

  return 1;
}

uint64_t std::__function::__func<md::ARWalkingLabeler::debugDrawMiniMap(md::DebugConsole *)::$_0,std::allocator<md::ARWalkingLabeler::debugDrawMiniMap(md::DebugConsole *)::$_0>,BOOL ()(gm::Box<double,3> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A3C678;
  a2[1] = v2;
  return result;
}

void md::ARWalkingLabeler::debugString(md::ARWalkingLabeler *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  md::ARWalkingLabeler::debugOutputLabelState(this, v4);
  std::string::basic_string[abi:nn200100]<0>(a2, -[NSMutableString UTF8String](v4, "UTF8String"));
}

void md::ARWalkingLabeler::debugOutputLabelState(md::ARWalkingLabeler *this, NSMutableString *a2)
{
  v5 = a2;
  BOOL = GEOConfigGetBOOL();
  v6 = *(this + 3);
  v7 = *(this + 257);

  v105 = v5;
  v102 = this;
  if (v7)
  {
    v8 = *(this + 257);
    v9 = [v8 routeInfo];
    v10 = [v9 route];

    v110 = v10;
    [v10 pointAtRouteCoordinate:*(*(v102 + 3) + 3600)];
    v12 = v11;
    v3 = v13;
    v2 = v14;
  }

  else
  {
    v110 = 0;
    v12 = 0.0;
  }

  [(NSMutableString *)v5 appendString:@"ARWalkingLabeler\n"];
  v15 = *(v102 + 2203);
  if (v15 > 3)
  {
    v16 = "<Invalid>";
  }

  else
  {
    v16 = off_1E7B3CF50[v15];
  }

  v17 = *(v102 + 2200);
  if (v17 > 3)
  {
    v18 = "<Invalid>";
  }

  else
  {
    v18 = off_1E7B3B9C0[v17];
  }

  [(NSMutableString *)v5 appendFormat:@"  arSessionState:%s|%s\n", v16, v18];
  v19 = *(*(v102 + 55) + 448);
  if (v19 && (v20 = [v19 state], (v20 - 1) <= 4))
  {
    v21 = *(&off_1E7B3B998 + v20 - 1);
  }

  else
  {
    v21 = @"VKARWalkingFeatureSetStateNone";
  }

  [(NSMutableString *)v5 appendFormat:@"  featureSetState:%@\n", v21];
  [(NSMutableString *)v5 appendFormat:@"  featureCount:%lu\n", 0xAAAAAAAAAAAAAAABLL * ((*(*(v102 + 55) + 472) - *(*(v102 + 55) + 464)) >> 3)];
  v22 = *(v102 + 276);
  v23 = *(v102 + 277);
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = v24;
  if (v22)
  {
    if (*(v22 + 128) == 1)
    {
      [v24 addObject:@"Building"];
    }

    if (*(v22 + 129) == 1)
    {
      [v25 addObject:@"Ground"];
    }
  }

  v26 = [v25 componentsJoinedByString:@"|"];

  [(NSMutableString *)v5 appendFormat:@"  avoidanceTypes:%@\n", v26];
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

  v27 = GEOPolylineCoordinateAsShortString();
  [(NSMutableString *)v5 appendFormat:@"  userRouteOffset:%@\n", v27];

  [(NSMutableString *)v5 appendFormat:@"  eye:%f, %f, %f\n", *(v102 + 51), *(v102 + 52), *(v102 + 53)];
  if (v7)
  {
    v111 = *(v102 + 52) * 0.0174532925;
    v28 = *(v102 + 53);
    v29 = __sincos_stret(*(v102 + 51) * 0.0174532925);
    v115 = v12;
    v113 = v2;
    v30 = 6378137.0 / sqrt(1.0 - v29.__sinval * v29.__sinval * 0.00669437999);
    v31 = (v30 + v28) * v29.__cosval;
    v32 = __sincos_stret(v111);
    *&v121 = v31 * v32.__cosval;
    *(&v121 + 1) = v31 * v32.__sinval;
    v122 = (v28 + v30 * 0.99330562) * v29.__sinval;
    v33 = __sincos_stret(v12 * 0.0174532925);
    v34 = 6378137.0 / sqrt(1.0 - v33.__sinval * v33.__sinval * 0.00669437999);
    v35 = (v34 + v113) * v33.__cosval;
    v36 = __sincos_stret(v3 * 0.0174532925);
    v128.f64[0] = v35 * v36.__cosval;
    v128.f64[1] = v35 * v36.__sinval;
    v129 = (v113 + v34 * 0.99330562) * v33.__sinval;
    [(NSMutableString *)v5 appendFormat:@"  routeEye:%f, %f, %f(%3.0fm)\n", *&v115, *&v3, *&v113, gm::Matrix<double, 3, 1>::distanceToPoint<int, void>(&v121, &v128)];
  }

  v37 = *(v102 + 253);
  v101 = *(v102 + 254);
  v38 = v110;
  if (v37 != v101)
  {
    while (1)
    {
      ARStringForFeature(v126, v37);
      v39 = (*(**v37 + 208))();
      v40 = [v39 intraFeaturePriority];

      v41 = v127 >= 0 ? v126 : v126[0];
      if (v40 == -1)
      {
        v42 = "-";
      }

      else
      {
        std::to_string(&v125, v40);
        v42 = &v125;
        if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v42 = v125.__r_.__value_.__r.__words[0];
        }
      }

      [(NSMutableString *)v5 appendFormat:@"=======%s (p:%s)", v41, v42];
      if (v40 != -1 && SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v125.__r_.__value_.__l.__data_);
      }

      v43 = *(v102 + 281);
      if (v43 && *v37 == *(v43 + 8))
      {
        [(NSMutableString *)v5 appendFormat:@" ACTIVE"];
      }

      [(NSMutableString *)v5 appendFormat:@"======="];
      if (isArrivalFeature(v37))
      {
        v44 = (*(**v37 + 264))(*v37);
        v45 = *v37;
        if (v44 == 27)
        {
          v46 = *(v45 + 744);
        }

        else
        {
          v46 = *(v45 + 232);
        }

        md::LabelExternalPointFeature::incident(v46);
        objc_claimAutoreleasedReturnValue();
        v47 = [v46 storeFronts];
        -[NSMutableString appendFormat:](v5, "appendFormat:", @"\n  storeFronts:%lu", [v47 count]);

        [(NSMutableString *)v5 appendString:@"\n  attrs:"];
        v48 = [v46 styleAttributes];
        if (v48)
        {
          for (i = 0; i < [v48 countAttrs]; ++i)
          {
            v50 = [v48 attributeAtIndex:i];
            [(NSMutableString *)v5 appendFormat:@"(%d, %d)", *v50, v50[1]];
            if (i + 1 < [v48 countAttrs])
            {
              [(NSMutableString *)v5 appendString:@", "];
            }
          }
        }
      }

      [(NSMutableString *)v5 appendFormat:@"\n"];
      v51 = (*(**v37 + 264))(*v37) == 24 ? 2 : 3;
      v52 = v37[2];
      v108 = v37[3];
      v109 = v51;
      if (v52 != v108)
      {
        break;
      }

LABEL_106:
      if (v127 < 0)
      {
        operator delete(v126[0]);
      }

      v37 += 5;
      v38 = v110;
      if (v37 == v101)
      {
        goto LABEL_109;
      }
    }

    v53 = 0;
    v107 = v37;
    while (1)
    {
      if (!((v53 < v109) | BOOL & 1))
      {
        [(NSMutableString *)v5 appendFormat:@"    ...+%lu more\n", ((v37[3] - v37[2]) >> 7) - v53];
        goto LABEL_106;
      }

      v54 = (*(**v37 + 264))(*v37);
      v55 = *v37;
      if (v54 == 26)
      {
        break;
      }

      v57 = (*(*v55 + 264))(*v37);
      v55 = *v37;
      if (v57 == 24)
      {
        v56 = md::ARWalkingManeuverLabelFeature::layoutTypeForLabelIdentifier(*v37, *(v52 + 32));
        goto LABEL_61;
      }

      v58 = 0;
      v114 = 0;
LABEL_63:
      v59 = (*(*v55 + 112))(v55, v52 + 32);
      v112 = v58;
      v121 = *v59;
      v122 = *(v59 + 16);
      v123 = *(v59 + 24);
      v124[0] = *(v59 + 40);
      *(v124 + 3) = *(v59 + 43);
      v60 = (*(**v37 + 304))(*v37, v52 + 32);
      v116 = v61;
      v62 = v60;
      for (j = 0; j != 3; ++j)
      {
        v128.f64[j] = *(v52 + j * 8 + 40) - *(v6 + 568 + j * 8);
      }

      v64 = gm::Matrix<double,3,1>::normalized<int,void>(&v128);
      v65 = 0;
      *v120 = v64;
      v120[1] = v66;
      v120[2] = v67;
      v68 = 0.0;
      do
      {
        v68 = v68 + *&v120[v65] * *(v6 + 592 + v65 * 8);
        ++v65;
      }

      while (v65 != 3);
      v69 = acos(v68);
      if (*(v52 + 76) == 1)
      {
        v70 = *(v52 + 72);
        v71 = *(v52 + 64);
      }

      else
      {
        v71 = 0;
        v70 = 1.0;
      }

      v72 = 0;
      v73 = v69 * 57.2957795;
      v119.__r_.__value_.__r.__words[0] = v71;
      *&v119.__r_.__value_.__r.__words[1] = v70;
      do
      {
        v128.f64[v72] = *(&v119.__r_.__value_.__l.__data_ + v72);
        ++v72;
      }

      while (v72 != 3);
      v74 = 0;
      v75 = 0.0;
      do
      {
        v75 = v75 + *&v120[v74] * v128.f64[v74];
        ++v74;
      }

      while (v74 != 3);
      v76 = acos(v75);
      v77 = 0;
      if (v110 && (v116 & 1) != 0)
      {
        [v110 distanceFromPoint:*(*(v102 + 3) + 3600) toPoint:v62];
        v77 = v78;
      }

      v79 = v53;
      v80 = &v119;
      md::LabelPoint::coordinate(&v128, &v121);
      if (*(v52 + 106))
      {
        v81 = " ";
      }

      else
      {
        v81 = "!";
      }

      md::LabelIdentifier::to_string(&v119, *(v52 + 32));
      if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v80 = v119.__r_.__value_.__r.__words[0];
      }

      v82 = *(v52 + 56);
      v83 = *(v52 + 120);
      v84 = *(v52 + 96);
      v85 = &stru_1F2A61C40;
      if (v116)
      {
        v86 = MEMORY[0x1E696AEC0];
        v104 = GEOPolylineCoordinateAsShortString();
        v103 = [v86 stringWithFormat:@"rc:%@", v104];
        v85 = v103;
      }

      v87 = v80;
      v88 = v128;
      v89 = v129;
      if (v114)
      {
        v90 = gss::to_string(v112);
      }

      else
      {
        v90 = "";
      }

      md::stringFromLabelOutcome(__p, *(v52 + 104));
      v91 = *(v52 + 105);
      v92 = "<NONE>";
      if (v91 <= 2)
      {
        v92 = off_1E7B39578[v91];
      }

      v93 = __p[0];
      if (v118 >= 0)
      {
        v93 = __p;
      }

      v100 = v81;
      v5 = v105;
      [(NSMutableString *)v105 appendFormat:@"%s   id:%2s v:(%3.0f, %3.0f) e:(l:%3.0f o:%2.0f) d:(%3.0f:%3.0f) \n    %@ %f, %f, %f \n    %s %s-%s\n", v100, v87, *&v73, v76 * 57.2957795, v82 * 40075017.0, v83, sqrt(v84), v77, v85, *&v88, *&v89, v90, v93, v92];
      if (v118 < 0)
      {
        operator delete(__p[0]);
      }

      v37 = v107;
      v94 = v79;
      if (v116)
      {
      }

      if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v119.__r_.__value_.__l.__data_);
      }

      if ((*(**v107 + 264))(*v107) == 27)
      {
        v95 = md::StorefrontLabelFeature::storefront(*v107, *(v52 + 32));
        if (v95)
        {
          v96 = *(v95 + 152);
          v97 = v96;
          if (v96)
          {
            [v96 faceWidthInMeters];
            v98 = v119.__r_.__value_.__r.__words[0];
            [v97 faceHeightInMeters];
            v99 = __p[0];
          }

          else
          {
            v119.__r_.__value_.__r.__words[0] = 0;
            __p[0] = 0;
            v99 = 0;
            v98 = 0;
          }

          [(NSMutableString *)v105 appendFormat:@"    storefront: w:%f h:%f\n", v98, v99];
        }
      }

      v53 = v94 + 1;
      v52 += 128;
      if (v52 == v108)
      {
        goto LABEL_106;
      }
    }

    v56 = md::ARWalkingContinueLabelFeature::layoutTypeForLabelIdentifier(*v37, *(v52 + 32));
LABEL_61:
    v58 = v56;
    v114 = v56 > 0xFFu;
    goto LABEL_63;
  }

LABEL_109:
}

void md::ARWalkingLabeler::populateDebugNode(uint64_t a1, void *a2, _BYTE *a3)
{
  v296 = *MEMORY[0x1E69E9840];
  md::StandardLabeler::populateDebugNode(a1, a2, a3);
  v104 = a1;
  v5 = *(a1 + 440);
  std::string::basic_string[abi:nn200100]<0>(v266, "ARWalkingSupport");
  ChildNode = gdc::DebugTreeNode::createChildNode(a2, v266);
  std::string::basic_string[abi:nn200100]<0>(&__p, "ARWalkingFeatures");
  v7 = gdc::DebugTreeNode::createChildNode(ChildNode, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v8 = v5[97];
  std::string::basic_string[abi:nn200100]<0>(&__p, "HighPrecisionAltitudeRequestor");
  v9 = gdc::DebugTreeNode::createChildNode(v7, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "Stats");
  v10 = gdc::DebugTreeNode::createChildNode(v9, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "VL");
  v11 = gdc::DebugTreeNode::createChildNode(v10, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&v293, "cacheHits");
  gdc::DebugTreeValue::DebugTreeValue(&__p, v8[68]);
  gdc::DebugTreeNode::addProperty(v11, &v293, &__p);
  if (v288 < 0)
  {
    operator delete(*(&v284 + 1));
  }

  if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v293.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&v290, "cacheMisses");
  gdc::DebugTreeValue::DebugTreeValue(&v293, v8[69]);
  gdc::DebugTreeNode::addProperty(v11, &v290, &v293);
  if (v295 < 0)
  {
    operator delete(v294);
  }

  if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v290.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&v280, "cachedRequests");
  gdc::DebugTreeValue::DebugTreeValue(&v290, v8[32]);
  gdc::DebugTreeNode::addProperty(v11, &v280, &v290);
  if (v292 < 0)
  {
    operator delete(v291);
  }

  if (SHIBYTE(v280.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v280.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&v280, "Requests");
  v12 = gdc::DebugTreeNode::createChildNode(v10, &v280);
  if (SHIBYTE(v280.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v280.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&v277, "cacheHits");
  gdc::DebugTreeValue::DebugTreeValue(&v280, v8[70]);
  gdc::DebugTreeNode::addProperty(v12, &v277, &v280);
  if (v282 < 0)
  {
    operator delete(v281);
  }

  if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v277.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&v274, "cacheMisses");
  gdc::DebugTreeValue::DebugTreeValue(&v277, v8[71]);
  gdc::DebugTreeNode::addProperty(v12, &v274, &v277);
  if (v279 < 0)
  {
    operator delete(v278);
  }

  if (SHIBYTE(v274.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v274.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(v268, "cachedRequests");
  gdc::DebugTreeValue::DebugTreeValue(&v274, v8[50]);
  gdc::DebugTreeNode::addProperty(v12, v268, &v274);
  if (v276 < 0)
  {
    operator delete(v275);
  }

  if (v269 < 0)
  {
    operator delete(v268[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v272, "deviceLocationHits");
  gdc::DebugTreeValue::DebugTreeValue(v268, v8[72]);
  gdc::DebugTreeNode::addProperty(v12, v272, v268);
  if (v271 < 0)
  {
    operator delete(v270);
  }

  if (v273 < 0)
  {
    operator delete(v272[0]);
  }

  if (v5[58] != v5[59])
  {
    std::string::basic_string[abi:nn200100]<0>(&v293, "FeatureCount");
    gdc::DebugTreeValue::DebugTreeValue(&__p, -1431655765 * ((v5[59] - v5[58]) >> 3));
    gdc::DebugTreeNode::addProperty(ChildNode, &v293, &__p);
    if (v288 < 0)
    {
      operator delete(*(&v284 + 1));
    }

    if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v293.__r_.__value_.__l.__data_);
    }

    v13 = v5[58];
    v14 = v5[59];
    if (v13 != v14)
    {
      v15 = 1;
      do
      {
        v16 = (*(**(v13 + 8) + 264))(*(v13 + 8));
        v17 = "";
        if (v16 <= 0x1B)
        {
          v17 = off_1E7B35C80[v16];
        }

        std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&v293, v17);
        if ((v293.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v293;
        }

        else
        {
          v18 = v293.__r_.__value_.__r.__words[0];
        }

        std::string::basic_string[abi:nn200100]<0>(&v290, v18);
        std::to_string(&v280, v15);
        v19 = gdc::DebugTreeNode::createChildNode(v7, &v290, &v280);
        if (SHIBYTE(v280.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v280.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v290.__r_.__value_.__l.__data_);
        }

        v20 = (*(**(v13 + 8) + 472))(*(v13 + 8), v19, *v5);
        if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
        {
          v21 = v293.__r_.__value_.__r.__words[0];
          v22 = mdm::zone_mallocator::instance(v20);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v22, v21);
        }

        v13 += 24;
        ++v15;
      }

      while (v13 != v14);
    }
  }

  if (v267 < 0)
  {
    operator delete(v266[0]);
  }

  v108 = *(v104 + 24);
  v23 = *(v104 + 2088);
  v24 = *(v104 + 2072) * 6.28318531;
  v25 = exp(*(v104 + 2080) * 6.28318531 + -3.14159265);
  v26 = atan(v25);
  v27 = fmod(v24, 6.28318531);
  v28 = fmod(v27 + 6.28318531, 6.28318531);
  std::string::basic_string[abi:nn200100]<0>(&__p, "ARWalkingLabeler");
  v102 = gdc::DebugTreeNode::createChildNode(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "arSessionState");
  v29 = *(v104 + 2203);
  if (v29 > 3)
  {
    v30 = "<Invalid>";
  }

  else
  {
    v30 = off_1E7B3CF50[v29];
  }

  gdc::DebugTreeValue::DebugTreeValue(v263, v30);
  gdc::DebugTreeNode::addProperty(v102, &__p, v263);
  if (v265 < 0)
  {
    operator delete(v264);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "arLocalizationState");
  v31 = *(v104 + 2200);
  if (v31 > 3)
  {
    v32 = "<Invalid>";
  }

  else
  {
    v32 = off_1E7B3B9C0[v31];
  }

  gdc::DebugTreeValue::DebugTreeValue(v260, v32);
  gdc::DebugTreeNode::addProperty(v102, &__p, v260);
  if (v262 < 0)
  {
    operator delete(v261);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "shouldLayoutLabels");
  gdc::DebugTreeValue::DebugTreeValue(v257, *(v104 + 400));
  gdc::DebugTreeNode::addProperty(v102, &__p, v257);
  if (v259 < 0)
  {
    operator delete(v258);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "userRouteOffset");
  v33 = gdc::DebugTreeNode::createChildNode(v102, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "index");
  gdc::DebugTreeValue::DebugTreeValue(v254, *(*(v104 + 24) + 3600));
  gdc::DebugTreeNode::addProperty(v33, &__p, v254);
  if (v256 < 0)
  {
    operator delete(v255);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "offset");
  gdc::DebugTreeValue::DebugTreeValue(v251, *(*(v104 + 24) + 3604));
  gdc::DebugTreeNode::addProperty(v33, &__p, v251);
  if (v253 < 0)
  {
    operator delete(v252);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "eyePos");
  v34 = gdc::DebugTreeNode::createChildNode(v102, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "x");
  v35 = v108 + 71;
  gdc::DebugTreeValue::DebugTreeValue(v248, v108[71]);
  gdc::DebugTreeNode::addProperty(v34, &__p, v248);
  if (v250 < 0)
  {
    operator delete(v249);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "y");
  gdc::DebugTreeValue::DebugTreeValue(v245, v108[72]);
  gdc::DebugTreeNode::addProperty(v34, &__p, v245);
  if (v247 < 0)
  {
    operator delete(v246);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "z");
  gdc::DebugTreeValue::DebugTreeValue(v242, v108[73]);
  gdc::DebugTreeNode::addProperty(v34, &__p, v242);
  if (v244 < 0)
  {
    operator delete(v243);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "resolvedEye");
  v36 = gdc::DebugTreeNode::createChildNode(v102, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "x");
  gdc::DebugTreeValue::DebugTreeValue(v239, *(v104 + 2072));
  gdc::DebugTreeNode::addProperty(v36, &__p, v239);
  if (v241 < 0)
  {
    operator delete(v240);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "y");
  gdc::DebugTreeValue::DebugTreeValue(v236, *(v104 + 2080));
  gdc::DebugTreeNode::addProperty(v36, &__p, v236);
  if (v238 < 0)
  {
    operator delete(v237);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "z");
  gdc::DebugTreeValue::DebugTreeValue(v233, *(v104 + 2088));
  gdc::DebugTreeNode::addProperty(v36, &__p, v233);
  if (v235 < 0)
  {
    operator delete(v234);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "eyeCoord");
  v37 = gdc::DebugTreeNode::createChildNode(v102, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "lat");
  gdc::DebugTreeValue::DebugTreeValue(v230, *(v104 + 408));
  gdc::DebugTreeNode::addProperty(v37, &__p, v230);
  if (v232 < 0)
  {
    operator delete(v231);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "lng");
  gdc::DebugTreeValue::DebugTreeValue(v227, *(v104 + 416));
  gdc::DebugTreeNode::addProperty(v37, &__p, v227);
  if (v229 < 0)
  {
    operator delete(v228);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "alt");
  gdc::DebugTreeValue::DebugTreeValue(v224, *(v104 + 424));
  gdc::DebugTreeNode::addProperty(v37, &__p, v224);
  if (v226 < 0)
  {
    operator delete(v225);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "resolvedEyeCoord");
  v38 = gdc::DebugTreeNode::createChildNode(v102, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "lat");
  gdc::DebugTreeValue::DebugTreeValue(v221, v26 * 114.591559 + -90.0);
  gdc::DebugTreeNode::addProperty(v38, &__p, v221);
  if (v223 < 0)
  {
    operator delete(v222);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "lng");
  gdc::DebugTreeValue::DebugTreeValue(v218, v28 * 57.2957795 + -180.0);
  gdc::DebugTreeNode::addProperty(v38, &__p, v218);
  if (v220 < 0)
  {
    operator delete(v219);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "alt");
  gdc::DebugTreeValue::DebugTreeValue(v215, v23 * 40075017.0);
  gdc::DebugTreeNode::addProperty(v38, &__p, v215);
  if (v217 < 0)
  {
    operator delete(v216);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "elevation");
  gdc::DebugTreeValue::DebugTreeValue(v212, v108[73] * 40075017.0);
  gdc::DebugTreeNode::addProperty(v102, &__p, v212);
  if (v214 < 0)
  {
    operator delete(v213);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "min clip range");
  gdc::DebugTreeValue::DebugTreeValue(v209, *(v104 + 784));
  gdc::DebugTreeNode::addProperty(v102, &__p, v209);
  if (v211 < 0)
  {
    operator delete(v210);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "max clip range");
  gdc::DebugTreeValue::DebugTreeValue(v206, *(v104 + 864));
  gdc::DebugTreeNode::addProperty(v102, &__p, v206);
  if (v208 < 0)
  {
    operator delete(v207);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v105 = *(v104 + 2208);
  if (v105)
  {
    std::string::basic_string[abi:nn200100]<0>(&__p, "ARWorldIntersector");
    v39 = gdc::DebugTreeNode::createChildNode(v102, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "isGroundOcclusionEnabled");
    gdc::DebugTreeValue::DebugTreeValue(&v293, *(v105 + 129));
    gdc::DebugTreeNode::addProperty(v39, &__p, &v293);
    if (v295 < 0)
    {
      operator delete(v294);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "isBuildingOcclusionEnabled");
    gdc::DebugTreeValue::DebugTreeValue(&v290, *(v105 + 128));
    gdc::DebugTreeNode::addProperty(v39, &__p, &v290);
    if (v292 < 0)
    {
      operator delete(v291);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v274.__r_.__value_.__r.__words[0] = 0;
    v40 = *v105;
    if (*v105 == v105 + 8)
    {
      LODWORD(v41) = 0;
    }

    else
    {
      v41 = 0;
      do
      {
        v42 = gdc::Registry::storage<arComponents::LocalBounds>(*(v40[4] + 792));
        v44 = *(v42 + 80);
        v43 = *(v42 + 88);
        FillRect = grl::IconMetricsRenderResult::getFillRect(v40[4]);
        v46 = gdc::Camera::cameraFrame(FillRect);
        gdc::LayerDataKey::createDebugNode(&__p, v46);
        gdc::DebugTreeNode::addChildNode(v39, &__p);
        v280.__r_.__value_.__r.__words[0] = v289;
        std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v280);
        v280.__r_.__value_.__r.__words[0] = v287;
        std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v280);
        if (v286 < 0)
        {
          operator delete(v284);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v47 = v40[1];
        if (v47)
        {
          do
          {
            v48 = v47;
            v47 = *v47;
          }

          while (v47);
        }

        else
        {
          do
          {
            v48 = v40[2];
            v49 = *v48 == v40;
            v40 = v48;
          }

          while (!v49);
        }

        v41 -= 0x30C30C30C30C30C3 * ((v43 - v44) >> 3);
        v40 = v48;
      }

      while (v48 != (v105 + 8));
    }

    v50 = *(v105 + 24);
    if (v50 != (v105 + 32))
    {
      do
      {
        (*(*v50[5] + 24))(&__p);
        gdc::DebugTreeNode::addChildNode(v39, &__p);
        v280.__r_.__value_.__r.__words[0] = v289;
        std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v280);
        v280.__r_.__value_.__r.__words[0] = v287;
        std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v280);
        if (v286 < 0)
        {
          operator delete(v284);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v51 = v50[1];
        if (v51)
        {
          do
          {
            v52 = v51;
            v51 = *v51;
          }

          while (v51);
        }

        else
        {
          do
          {
            v52 = v50[2];
            v49 = *v52 == v50;
            v50 = v52;
          }

          while (!v49);
        }

        v50 = v52;
      }

      while (v52 != (v105 + 32));
    }

    std::string::basic_string[abi:nn200100]<0>(&v280, "buildingOcclusionBoundsCount");
    gdc::DebugTreeValue::DebugTreeValue(&__p, v41);
    gdc::DebugTreeNode::addProperty(v39, &v280, &__p);
    if (v288 < 0)
    {
      operator delete(*(&v284 + 1));
    }

    if (SHIBYTE(v280.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v280.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&v277, "groundOcclusionBoundsCount");
    gdc::DebugTreeValue::DebugTreeValue(&v280, -1431655765 * ((*(v105 + 112) - *(v105 + 104)) >> 4));
    gdc::DebugTreeNode::addProperty(v39, &v277, &v280);
    if (v282 < 0)
    {
      operator delete(v281);
    }

    if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v277.__r_.__value_.__l.__data_);
    }
  }

  v53 = *(v104 + 2024);
  v101 = *(v104 + 2032);
  if (v53 != v101)
  {
    v54 = v108 + 74;
    v103 = v104 + 2096;
    do
    {
      ARStringForFeature(&v290, v53);
      v55 = *(v104 + 2248);
      if (v55 && *v53 == *(v55 + 8))
      {
        std::string::append(&v290, "  - ACTIVE", 0xAuLL);
      }

      v109 = gdc::DebugTreeNode::createChildNode(v102, &v290);
      if (isArrivalFeature(v53))
      {
        v56 = (*(**v53 + 264))(*v53);
        v57 = *v53;
        if (v56 == 27)
        {
          v58 = *(v57 + 744);
        }

        else
        {
          v58 = *(v57 + 232);
        }

        md::LabelExternalPointFeature::incident(v58);
        objc_claimAutoreleasedReturnValue();
        std::string::basic_string[abi:nn200100]<0>(&__p, "hasStoreFronts");
        v59 = [v58 storeFronts];
        gdc::DebugTreeValue::DebugTreeValue(v203, [v59 count] != 0);
        gdc::DebugTreeNode::addProperty(v109, &__p, v203);
        if (v205 < 0)
        {
          operator delete(v204);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:nn200100]<0>(&__p, "StyleAttributes");
        v106 = v58;
        v60 = gdc::DebugTreeNode::createChildNode(v109, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v61 = v53;
        (*(**v53 + 600))(&v280);
        v62 = v280.__r_.__value_.__r.__words[0];
        if (*(v280.__r_.__value_.__r.__words[0] + 33))
        {
          v63 = 0;
          v64 = 0;
          do
          {
            v65 = (*v62 + v63);
            v66 = *v65;
            v67 = gss::to_string(*v65);
            LODWORD(v65) = v65[1];
            std::string::basic_string[abi:nn200100]<0>(&__p, v67);
            v68 = gss::to_string(v66, v65);
            std::string::basic_string[abi:nn200100]<0>(&v293, v68);
            gdc::DebugTreeValue::DebugTreeValue(v200, &v293);
            gdc::DebugTreeNode::addProperty(v60, &__p, v200);
            if (v202 < 0)
            {
              operator delete(v201);
            }

            if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v293.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            ++v64;
            v62 = v280.__r_.__value_.__r.__words[0];
            v63 += 8;
          }

          while (v64 < *(v280.__r_.__value_.__r.__words[0] + 33));
        }

        if (v280.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v280.__r_.__value_.__l.__size_);
        }

        v53 = v61;
      }

      v69 = v53[2];
      v107 = v53;
      if (v69 != v53[3])
      {
        md::LabelIdentifier::to_string(&__p, *(v69 + 32));
        v70 = gdc::DebugTreeNode::createChildNode(v109, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        md::ARWalkingLabeler::screenHeadingForWorldPoint(&__p, *(v104 + 24) + 432, v69 + 40, *(v104 + 664));
        v71 = *&__p.__r_.__value_.__l.__data_;
        v72 = __p.__r_.__value_.__s.__data_[8];
        v73 = (*(**v53 + 112))(*v53, v69 + 32);
        v74 = 0;
        __p = *v73;
        v284 = *(v73 + 24);
        *v285 = *(v73 + 40);
        *&v285[3] = *(v73 + 43);
        do
        {
          *(&v293.__r_.__value_.__l.__data_ + v74 * 8) = *(v69 + v74 * 8 + 40) - v35[v74];
          ++v74;
        }

        while (v74 != 3);
        v75 = gm::Matrix<double,3,1>::normalized<int,void>(&v293);
        v77 = *&v76;
        v79 = *&v78;
        v80 = 0;
        *&v280.__r_.__value_.__l.__data_ = v75;
        v280.__r_.__value_.__l.__size_ = v76;
        v280.__r_.__value_.__r.__words[2] = v78;
        v81 = 0.0;
        do
        {
          v81 = v81 + *(&v280.__r_.__value_.__l.__data_ + v80 * 8) * v54[v80];
          ++v80;
        }

        while (v80 != 3);
        v82 = acos(v81);
        std::string::basic_string[abi:nn200100]<0>(&v293, "isDisplayLabel");
        gdc::DebugTreeValue::DebugTreeValue(v197, *(v69 + 106));
        gdc::DebugTreeNode::addProperty(v70, &v293, v197);
        if (v199 < 0)
        {
          operator delete(v198);
        }

        if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v293.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:nn200100]<0>(&v293, "hasBecomeVisible");
        v83 = gdc::DebugTreeNode::createChildNode(v70, &v293);
        if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v293.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:nn200100]<0>(&v293, "hasBecomeVisible");
        gdc::DebugTreeValue::DebugTreeValue(v194, *(v69 + 107));
        gdc::DebugTreeNode::addProperty(v83, &v293, v194);
        if (v196 < 0)
        {
          operator delete(v195);
        }

        if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v293.__r_.__value_.__l.__data_);
        }

        if (*(v69 + 112))
        {
          std::string::basic_string[abi:nn200100]<0>(&v293, "eyeCoordinate");
          v84 = gdc::DebugTreeNode::createChildNode(v83, &v293);
          if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v293.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:nn200100]<0>(&v293, "lat");
          gdc::DebugTreeValue::DebugTreeValue(v191, **(v69 + 112));
          gdc::DebugTreeNode::addProperty(v84, &v293, v191);
          if (v193 < 0)
          {
            operator delete(v192);
          }

          if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v293.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:nn200100]<0>(&v293, "lng");
          gdc::DebugTreeValue::DebugTreeValue(v188, *(*(v69 + 112) + 8));
          gdc::DebugTreeNode::addProperty(v84, &v293, v188);
          if (v190 < 0)
          {
            operator delete(v189);
          }

          if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v293.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:nn200100]<0>(&v293, "altitude");
          gdc::DebugTreeValue::DebugTreeValue(v185, *(*(v69 + 112) + 16));
          gdc::DebugTreeNode::addProperty(v84, &v293, v185);
          if (v187 < 0)
          {
            operator delete(v186);
          }

          if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v293.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:nn200100]<0>(&v293, "distance");
          gdc::DebugTreeValue::DebugTreeValue(v182, *(*(v69 + 112) + 32));
          gdc::DebugTreeNode::addProperty(v83, &v293, v182);
          if (v184 < 0)
          {
            operator delete(v183);
          }

          if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v293.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:nn200100]<0>(&v293, "faceAngleCosine");
          gdc::DebugTreeValue::DebugTreeValue(v179, *(*(v69 + 112) + 24));
          gdc::DebugTreeNode::addProperty(v83, &v293, v179);
          if (v181 < 0)
          {
            operator delete(v180);
          }

          if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v293.__r_.__value_.__l.__data_);
          }
        }

        std::string::basic_string[abi:nn200100]<0>(&v293, "fixedPerspectiveScale");
        gdc::DebugTreeValue::DebugTreeValue(v176, *(*(v69 + 16) + 1144));
        gdc::DebugTreeNode::addProperty(v70, &v293, v176);
        if (v178 < 0)
        {
          operator delete(v177);
        }

        if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v293.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:nn200100]<0>(&v293, "identifier");
        md::LabelIdentifier::to_string(&v277, *(v69 + 32));
        gdc::DebugTreeValue::DebugTreeValue(v173, &v277);
        gdc::DebugTreeNode::addProperty(v70, &v293, v173);
        if (v175 < 0)
        {
          operator delete(v174);
        }

        if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v277.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v293.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:nn200100]<0>(&v293, "screenHeading");
        gdc::DebugTreeValue::DebugTreeValue(v170, v71);
        gdc::DebugTreeNode::addProperty(v70, &v293, v170);
        if (v172 < 0)
        {
          operator delete(v171);
        }

        if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v293.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:nn200100]<0>(&v293, "isDirectlyBehind");
        gdc::DebugTreeValue::DebugTreeValue(v167, v72);
        gdc::DebugTreeNode::addProperty(v70, &v293, v167);
        if (v169 < 0)
        {
          operator delete(v168);
        }

        if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v293.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:nn200100]<0>(&v293, "angleFromView");
        gdc::DebugTreeValue::DebugTreeValue(v164, v82 * 57.2957795);
        gdc::DebugTreeNode::addProperty(v70, &v293, v164);
        if (v166 < 0)
        {
          operator delete(v165);
        }

        if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v293.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:nn200100]<0>(&v293, "pointDir");
        v85 = gdc::DebugTreeNode::createChildNode(v70, &v293);
        if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v293.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:nn200100]<0>(&v293, "x");
        gdc::DebugTreeValue::DebugTreeValue(v161, v75);
        gdc::DebugTreeNode::addProperty(v85, &v293, v161);
        if (v163 < 0)
        {
          operator delete(v162);
        }

        if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v293.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:nn200100]<0>(&v293, "y");
        gdc::DebugTreeValue::DebugTreeValue(v158, v77);
        gdc::DebugTreeNode::addProperty(v85, &v293, v158);
        if (v160 < 0)
        {
          operator delete(v159);
        }

        if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v293.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:nn200100]<0>(&v293, "z");
        gdc::DebugTreeValue::DebugTreeValue(v155, v79);
        gdc::DebugTreeNode::addProperty(v85, &v293, v155);
        if (v157 < 0)
        {
          operator delete(v156);
        }

        if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v293.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:nn200100]<0>(&v293, "elevation");
        gdc::DebugTreeValue::DebugTreeValue(v152, *(v69 + 56) * 40075017.0);
        gdc::DebugTreeNode::addProperty(v70, &v293, v152);
        if (v154 < 0)
        {
          operator delete(v153);
        }

        if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v293.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:nn200100]<0>(&v293, "elevationOffset");
        gdc::DebugTreeValue::DebugTreeValue(v149, *(v69 + 120));
        gdc::DebugTreeNode::addProperty(v70, &v293, v149);
        if (v151 < 0)
        {
          operator delete(v150);
        }

        if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v293.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:nn200100]<0>(&v293, "worldPoint");
        v86 = gdc::DebugTreeNode::createChildNode(v70, &v293);
        if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v293.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:nn200100]<0>(&v293, "x");
        gdc::DebugTreeValue::DebugTreeValue(v146, *(v69 + 40));
        gdc::DebugTreeNode::addProperty(v86, &v293, v146);
        if (v148 < 0)
        {
          operator delete(v147);
        }

        if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v293.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:nn200100]<0>(&v293, "y");
        gdc::DebugTreeValue::DebugTreeValue(v143, *(v69 + 48));
        gdc::DebugTreeNode::addProperty(v86, &v293, v143);
        if (v145 < 0)
        {
          operator delete(v144);
        }

        if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v293.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:nn200100]<0>(&v293, "z");
        gdc::DebugTreeValue::DebugTreeValue(v140, *(v69 + 56));
        gdc::DebugTreeNode::addProperty(v86, &v293, v140);
        if (v142 < 0)
        {
          operator delete(v141);
        }

        if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v293.__r_.__value_.__l.__data_);
        }

        md::LabelPoint::coordinate(&v293, &__p);
        std::string::basic_string[abi:nn200100]<0>(&v277, "coordinate");
        v87 = gdc::DebugTreeNode::createChildNode(v70, &v277);
        if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v277.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:nn200100]<0>(&v277, "lat");
        gdc::DebugTreeValue::DebugTreeValue(v137, *&v293.__r_.__value_.__l.__data_);
        gdc::DebugTreeNode::addProperty(v87, &v277, v137);
        if (v139 < 0)
        {
          operator delete(v138);
        }

        if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v277.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:nn200100]<0>(&v277, "lng");
        gdc::DebugTreeValue::DebugTreeValue(v134, *&v293.__r_.__value_.__l.__size_);
        gdc::DebugTreeNode::addProperty(v87, &v277, v134);
        if (v136 < 0)
        {
          operator delete(v135);
        }

        if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v277.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:nn200100]<0>(&v277, "altitude");
        gdc::DebugTreeValue::DebugTreeValue(v131, *&v293.__r_.__value_.__r.__words[2]);
        gdc::DebugTreeNode::addProperty(v87, &v277, v131);
        if (v133 < 0)
        {
          operator delete(v132);
        }

        if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v277.__r_.__value_.__l.__data_);
        }

        v88 = geo::MarkedLRUCache<md::Label *,gm::Matrix<double,3,1>,std::hash<md::Label *>,std::equal_to<md::Label *>>::find(v103, *(v69 + 16));
        if (v103 != v88)
        {
          v89 = v88[4];
          v90 = v88[5];
          v91 = v88[3];
          v92 = exp(v89 * 6.28318531 + -3.14159265);
          v93 = atan(v92);
          v94 = fmod(v91 * 6.28318531, 6.28318531);
          v95 = fmod(v94 + 6.28318531, 6.28318531);
          std::string::basic_string[abi:nn200100]<0>(&v277, "intersectionPoint");
          v96 = gdc::DebugTreeNode::createChildNode(v70, &v277);
          if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v277.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:nn200100]<0>(&v277, "mercator");
          v97 = gdc::DebugTreeNode::createChildNode(v96, &v277);
          if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v277.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:nn200100]<0>(&v277, "x");
          gdc::DebugTreeValue::DebugTreeValue(v128, v91);
          gdc::DebugTreeNode::addProperty(v97, &v277, v128);
          if (v130 < 0)
          {
            operator delete(v129);
          }

          if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v277.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:nn200100]<0>(&v277, "y");
          gdc::DebugTreeValue::DebugTreeValue(v125, v89);
          gdc::DebugTreeNode::addProperty(v97, &v277, v125);
          if (v127 < 0)
          {
            operator delete(v126);
          }

          if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v277.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:nn200100]<0>(&v277, "z");
          gdc::DebugTreeValue::DebugTreeValue(v122, v90 * 40075017.0);
          gdc::DebugTreeNode::addProperty(v97, &v277, v122);
          if (v124 < 0)
          {
            operator delete(v123);
          }

          if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v277.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:nn200100]<0>(&v277, "coordinate");
          v98 = gdc::DebugTreeNode::createChildNode(v96, &v277);
          if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v277.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:nn200100]<0>(&v277, "lat");
          gdc::DebugTreeValue::DebugTreeValue(v119, v93 * 114.591559 + -90.0);
          gdc::DebugTreeNode::addProperty(v98, &v277, v119);
          if (v121 < 0)
          {
            operator delete(v120);
          }

          if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v277.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:nn200100]<0>(&v277, "lng");
          gdc::DebugTreeValue::DebugTreeValue(v116, v95 * 57.2957795 + -180.0);
          gdc::DebugTreeNode::addProperty(v98, &v277, v116);
          if (v118 < 0)
          {
            operator delete(v117);
          }

          if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v277.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:nn200100]<0>(&v277, "altitude");
          gdc::DebugTreeValue::DebugTreeValue(v113, v90 * 40075017.0);
          gdc::DebugTreeNode::addProperty(v98, &v277, v113);
          if (v115 < 0)
          {
            operator delete(v114);
          }

          if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v277.__r_.__value_.__l.__data_);
          }
        }

        std::string::basic_string[abi:nn200100]<0>(&v277, "distance");
        gdc::DebugTreeValue::DebugTreeValue(v110, sqrt(*(v69 + 96)));
        gdc::DebugTreeNode::addProperty(v70, &v277, v110);
        if (v112 < 0)
        {
          operator delete(v111);
        }

        if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v277.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:nn200100]<0>(&v277, "label");
        md::LabelIdentifier::to_string(&v274, *(*(v69 + 16) + 48));
        v100 = gdc::DebugTreeNode::createChildNode(v70, &v277, &v274);
        if (SHIBYTE(v274.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v274.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v277.__r_.__value_.__l.__data_);
        }

        md::Label::populateDebugNode(*(v69 + 16), v100, v99);
      }

      if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v290.__r_.__value_.__l.__data_);
      }

      v53 += 5;
    }

    while (v107 + 5 != v101);
  }
}

void sub_1B31AC6C0(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0xF07]) < 0)
  {
    operator delete(STACK[0xEF0]);
  }

  _Unwind_Resume(a1);
}

uint64_t md::ARWalkingContinueFeatureDedupingGroup::getAlternateLayout(md::ARWalkingContinueFeatureDedupingGroup *this, md::LabelBase *a2)
{
  v2 = *(this + 36);
  v3 = *(v2 + 272);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v2 + 272;
  v5 = *(a2 + 12);
  v6 = v4;
  do
  {
    v7 = *(v3 + 32);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 != v4 && v5 >= *(v6 + 32))
  {
    v10 = *(v6 + 40);
    if (v10)
    {
      v17 = *(v10 + 160) == v5;
      v18 = 160;
      if (v17)
      {
        v18 = 164;
      }

      LODWORD(v10) = *(v10 + v18);
    }
  }

  else
  {
LABEL_9:
    LODWORD(v10) = 0;
  }

  v11 = *(this + 43);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      v13 = v10;
      if (v11 <= v10)
      {
        v13 = v10 % v11;
      }
    }

    else
    {
      v13 = (v11 - 1) & v10;
    }

    v14 = *(*(this + 42) + 8 * v13);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (*(i + 4) == v10)
          {
            return i[3];
          }
        }

        else
        {
          if (v12.u32[0] > 1uLL)
          {
            if (v16 >= v11)
            {
              v16 %= v11;
            }
          }

          else
          {
            v16 &= v11 - 1;
          }

          if (v16 != v13)
          {
            return 0;
          }
        }
      }
    }
  }

  return 0;
}

void md::ARWalkingContinueFeatureDedupingGroup::onLabelRemoved(int8x8_t *this, md::LabelBase *a2)
{
  md::ARWalkingLabelLayoutDedupingGroup::onLabelRemoved(this, a2);
  v4 = this[43];
  if (v4)
  {
    v5 = *(a2 + 12);
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      v7 = *(a2 + 12);
      if (*&v4 <= v5)
      {
        v7 = v5 % v4.i32[0];
      }
    }

    else
    {
      v7 = (v4.i32[0] - 1) & v5;
    }

    v8 = this[42];
    v9 = *(*&v8 + 8 * v7);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        v11 = *&v4 - 1;
        do
        {
          v12 = v10[1];
          if (v12 == v5)
          {
            if (v10[2].i32[0] == v5)
            {
              v13 = v10[1];
              if (v6.u32[0] > 1uLL)
              {
                if (v13 >= *&v4)
                {
                  v13 %= *&v4;
                }
              }

              else
              {
                v13 &= v11;
              }

              v14 = *(*&v8 + 8 * v13);
              do
              {
                v15 = v14;
                v14 = *v14;
              }

              while (v14 != v10);
              if (v15 == &this[44])
              {
                goto LABEL_36;
              }

              v16 = v15[1];
              if (v6.u32[0] > 1uLL)
              {
                if (v16 >= *&v4)
                {
                  v16 %= *&v4;
                }
              }

              else
              {
                v16 &= v11;
              }

              if (v16 != v13)
              {
LABEL_36:
                if (!*v10)
                {
                  goto LABEL_37;
                }

                v17 = *(*v10 + 8);
                if (v6.u32[0] > 1uLL)
                {
                  if (v17 >= *&v4)
                  {
                    v17 %= *&v4;
                  }
                }

                else
                {
                  v17 &= v11;
                }

                if (v17 != v13)
                {
LABEL_37:
                  *(*&v8 + 8 * v13) = 0;
                }
              }

              v18 = *v10;
              if (*v10)
              {
                v19 = *(*&v18 + 8);
                if (v6.u32[0] > 1uLL)
                {
                  if (v19 >= *&v4)
                  {
                    v19 %= *&v4;
                  }
                }

                else
                {
                  v19 &= v11;
                }

                if (v19 != v13)
                {
                  *(*&this[42] + 8 * v19) = v15;
                  v18 = *v10;
                }
              }

              *v15 = v18;
              *v10 = 0;
              --*&this[45];

              operator delete(v10);
              return;
            }
          }

          else
          {
            if (v6.u32[0] > 1uLL)
            {
              if (v12 >= *&v4)
              {
                v12 %= *&v4;
              }
            }

            else
            {
              v12 &= v11;
            }

            if (v12 != v7)
            {
              return;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }
}

void md::ARWalkingContinueFeatureDedupingGroup::onLabelAdded(int8x8_t *this, md::LabelBase *a2)
{
  md::ARWalkingLabelLayoutDedupingGroup::onLabelAdded(this, a2);
  v4 = *(a2 + 12);
  v5 = this[43];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *(a2 + 12);
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*&this[42] + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  v9[3] = a2;
}

void md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::ARWalkingContinueFeatureDedupingGroup *this, const LabelLayoutContext **a2)
{
  md::ARWalkingLabelLayoutDedupingGroup::prepareLayoutGroups(this, a2[53]);
  v4 = *(this + 5);
  if (v4 == *(this + 6))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(this + 6) = v4;
  *(this + 9) = 0;
  v57 = *(this + 32);
  if (*(this + 40))
  {
    v6 = *(this + 39);
    if (v6)
    {
      do
      {
        v7 = *v6;
        operator delete(v6);
        v6 = v7;
      }

      while (v7);
    }

    *(this + 39) = 0;
    v8 = *(this + 38);
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        *(*(this + 37) + 8 * i) = 0;
      }
    }

    *(this + 40) = 0;
  }

  v11 = *(this + 1);
  v10 = *(this + 2);
  if (v11 != v10)
  {
    while (1)
    {
      v12 = *v11;
      if ((*(*v11 + 1378) & 1) != 0 && std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(this + 26, *v11))
      {
        ++v11;
      }

      else
      {
        v10 = (v10 - 8);
        if (v11 == v10)
        {
          break;
        }

        while (1)
        {
          v13 = v10->i64[0];
          if (*(v10->i64[0] + 1378) == 1)
          {
            if (std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(this + 26, v10->i64[0]))
            {
              break;
            }
          }

          v10 = (v10 - 8);
          if (v10 == v11)
          {
            goto LABEL_23;
          }
        }

        *v11++ = v13;
        v10->i64[0] = v12;
      }

      if (v11 == v10)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_23:
  v10 = v11;
LABEL_24:
  v14 = *(this + 1);
  v54 = this;
  v55 = &v57;
  v56 = (a2 + 450);
  if (v14 != v10)
  {
    v15 = v10;
    do
    {
      while (1)
      {
        if (v5 == v14->i64[0])
        {
          v58 = v5;
          v16 = (*(**(v5 + 8) + 304))(*(v5 + 8), v5 + 48);
          v17 = 0.0;
          if (v18)
          {
            v19 = v16;
            v20 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(v54 + 37, v58);
            if (v20)
            {
              v17 = v20[3];
            }

            else
            {
              [*v55 distanceFromPoint:*v56 toPoint:v19];
              v17 = v21;
              if (*v56 > v19 || *v56 == v19 && v56[1] > *(&v19 + 1))
              {
                v17 = -v21;
              }

              v59 = &v58;
              *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>(v54 + 37, v58) + 3) = v17;
            }
          }

          if (v17 >= -(*(this + 35) * *(this + 34)))
          {
            break;
          }
        }

        v15 = (v15 - 8);
        if (v14 != v15)
        {
          while (1)
          {
            if (v5 == v15->i64[0])
            {
              v58 = v5;
              v22 = (*(**(v5 + 8) + 304))(*(v5 + 8), v5 + 48);
              v23 = 0.0;
              if (v24)
              {
                v25 = v22;
                v26 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(v54 + 37, v58);
                if (v26)
                {
                  v23 = v26[3];
                }

                else
                {
                  [*v55 distanceFromPoint:*v56 toPoint:v25];
                  v23 = v27;
                  if (*v56 > v25 || *v56 == v25 && v56[1] > *(&v25 + 1))
                  {
                    v23 = -v27;
                  }

                  v59 = &v58;
                  *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>(v54 + 37, v58) + 3) = v23;
                }
              }

              if (v23 >= -(*(this + 35) * *(this + 34)))
              {
                break;
              }
            }

            v15 = (v15 - 8);
            if (v15 == v14)
            {
              goto LABEL_52;
            }
          }

          v28 = v14->i64[0];
          v14->i64[0] = v15->i64[0];
          v14 = (v14 + 8);
          v15->i64[0] = v28;
          if (v14 != v15)
          {
            continue;
          }
        }

        goto LABEL_52;
      }

      v14 = (v14 + 8);
    }

    while (v14 != v15);
    v14 = v15;
  }

LABEL_52:
  v29 = v14;
  if (v14 == v10)
  {
    goto LABEL_83;
  }

  v30 = v10;
  v29 = v14;
  do
  {
    v31 = v54;
    while (1)
    {
      v58 = v29->i64[0];
      v32 = (*(**(v58 + 8) + 304))(*(v58 + 8), v58 + 48);
      if ((v33 & 1) == 0)
      {
        v36 = 0.0;
        goto LABEL_65;
      }

      v34 = v32;
      v35 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(v31 + 37, v58);
      if (v35)
      {
        v36 = v35[3];
      }

      else
      {
        [*v55 distanceFromPoint:*v56 toPoint:v34];
        v36 = v37;
        if (*v56 > v34 || *v56 == v34 && v56[1] > *(&v34 + 1))
        {
          v36 = -v37;
        }

        v59 = &v58;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>(v31 + 37, v58) + 3) = v36;
      }

      if (v36 < 0.0)
      {
        break;
      }

LABEL_65:
      if (v36 > *(this + 35))
      {
        break;
      }

      v29 = (v29 + 8);
      if (v29 == v30)
      {
        v29 = v30;
        goto LABEL_83;
      }
    }

    if (v29 == --v30)
    {
      break;
    }

LABEL_69:
    v58 = *v30;
    v38 = (*(**(v58 + 8) + 304))(*(v58 + 8), v58 + 48);
    if ((v39 & 1) == 0)
    {
      v42 = 0.0;
      goto LABEL_79;
    }

    v40 = v38;
    v41 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(v31 + 37, v58);
    if (v41)
    {
      v42 = v41[3];
    }

    else
    {
      [*v55 distanceFromPoint:*v56 toPoint:v40];
      v42 = v43;
      if (*v56 > v40 || *v56 == v40 && v56[1] > *(&v40 + 1))
      {
        v42 = -v43;
      }

      v59 = &v58;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>(v31 + 37, v58) + 3) = v42;
    }

    if (v42 < 0.0)
    {
LABEL_80:
      if (--v30 == v29)
      {
        break;
      }

      goto LABEL_69;
    }

LABEL_79:
    if (v42 > *(this + 35))
    {
      goto LABEL_80;
    }

    v44 = v29->i64[0];
    v29->i64[0] = *v30;
    v29 = (v29 + 8);
    *v30 = v44;
  }

  while (v29 != v30);
LABEL_83:
  v45 = 126 - 2 * __clz((v29 - v14) >> 3);
  v59 = &v54;
  if (v29 == v14)
  {
    v46 = 0;
  }

  else
  {
    v46 = v45;
  }

  std::__introsort<std::_ClassicAlgPolicy,md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,false>(v14, v29, &v59, v46, 1);
  v47 = 126 - 2 * __clz((v10 - v29) >> 3);
  v59 = &v54;
  if (v10 == v29)
  {
    v48 = 0;
  }

  else
  {
    v48 = v47;
  }

  std::__introsort<std::_ClassicAlgPolicy,md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4 &,md::LabelBase **,false>(v29, v10, &v59, v48, 1);
  v49 = *(this + 2);
  v50 = *(this + 1);
  if (v50 != v49)
  {
    v51 = 0;
    v52 = *(this + 1);
    do
    {
      v53 = *v52++;
      *(v53 + 32) = v51++;
    }

    while (v52 != v49);
    *(this + 9) = *v50;
  }
}

void *std::__hash_table<std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,false>(uint64_t result, int8x16_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = &a2[-1].u64[1];
  v10 = v8;
  v124 = a2;
  while (1)
  {
    v8 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *v9, v10->i64[0]);
      if (result)
      {
        v78 = v10->i64[0];
        v10->i64[0] = *v9;
LABEL_103:
        *v9 = v78;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v81 = &v10->u64[1];
      v83 = v10 == a2 || v81 == a2;
      if (a5)
      {
        if (!v83)
        {
          v84 = 0;
          v85 = v10;
          do
          {
            v87 = *v85;
            v86 = v85[1];
            v85 = v81;
            result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v86, v87);
            if (result)
            {
              v88 = *v85;
              v89 = v84;
              while (1)
              {
                *(&v10->i64[1] + v89) = *(v10->i64 + v89);
                if (!v89)
                {
                  break;
                }

                result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v88, *(&v10->u64[-1] + v89));
                v89 -= 8;
                if ((result & 1) == 0)
                {
                  i64 = (&v10->i64[1] + v89);
                  goto LABEL_125;
                }
              }

              i64 = v10->i64;
LABEL_125:
              *i64 = v88;
            }

            v81 = v85 + 1;
            v84 += 8;
          }

          while (v85 + 1 != a2);
        }
      }

      else if (!v83)
      {
        do
        {
          v119 = *v8;
          v118 = v8[1];
          v8 = v81;
          result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v118, v119);
          if (result)
          {
            v120 = *v8;
            v121 = v8;
            do
            {
              v122 = v121;
              v123 = *--v121;
              *v122 = v123;
              result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v120, *(v122 - 2));
            }

            while ((result & 1) != 0);
            *v121 = v120;
          }

          v81 = v8 + 1;
        }

        while (v8 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v91 = (v11 - 2) >> 1;
        v126 = v91;
        do
        {
          v92 = v91;
          if (v126 >= v91)
          {
            v93 = (2 * v91) | 1;
            v94 = &v8[v93];
            if (2 * v91 + 2 < v11 && md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *v94, v94[1]))
            {
              ++v94;
              v93 = 2 * v92 + 2;
            }

            v95 = &v8[v92];
            result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *v94, *v95);
            if ((result & 1) == 0)
            {
              v96 = *v95;
              do
              {
                v97 = v94;
                *v95 = *v94;
                if (v126 < v93)
                {
                  break;
                }

                v98 = (2 * v93) | 1;
                v94 = &v8[v98];
                v99 = 2 * v93 + 2;
                if (v99 < v11 && md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *v94, v94[1]))
                {
                  ++v94;
                  v98 = v99;
                }

                result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *v94, v96);
                v95 = v97;
                v93 = v98;
              }

              while (!result);
              *v97 = v96;
            }
          }

          v91 = v92 - 1;
        }

        while (v92);
        v100 = v124;
        do
        {
          v101 = v100;
          v102 = 0;
          v127 = *v8;
          v103 = v8;
          do
          {
            v104 = &v103[v102];
            v105 = v104 + 1;
            v106 = (2 * v102) | 1;
            v107 = 2 * v102 + 2;
            if (v107 >= v11)
            {
              v102 = (2 * v102) | 1;
            }

            else
            {
              v109 = v104[2];
              v108 = v104 + 2;
              result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *(v108 - 1), v109);
              if (result)
              {
                v105 = v108;
                v102 = v107;
              }

              else
              {
                v102 = v106;
              }
            }

            *v103 = *v105;
            v103 = v105;
          }

          while (v102 <= ((v11 - 2) >> 1));
          v100 = v101 - 1;
          if (v105 == v101 - 1)
          {
            *v105 = v127;
          }

          else
          {
            *v105 = *v100;
            *v100 = v127;
            v110 = (v105 - v8 + 8) >> 3;
            v111 = v110 < 2;
            v112 = v110 - 2;
            if (!v111)
            {
              v113 = v112 >> 1;
              v114 = &v8[v112 >> 1];
              result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *v114, *v105);
              if (result)
              {
                v115 = *v105;
                do
                {
                  v116 = v114;
                  *v105 = *v114;
                  if (!v113)
                  {
                    break;
                  }

                  v113 = (v113 - 1) >> 1;
                  v114 = &v8[v113];
                  result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *v114, v115);
                  v105 = v116;
                }

                while ((result & 1) != 0);
                *v116 = v115;
              }
            }
          }

          v111 = v11-- <= 2;
        }

        while (!v111);
      }

      return result;
    }

    v12 = v11 >> 1;
    if (v11 < 0x81)
    {
      v16 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v10->i64[0], v10->u64[v12]);
      v17 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *v9, v10->i64[0]);
      if (v16)
      {
        v18 = v10->u64[v12];
        if (v17)
        {
          v10->i64[v12] = *v9;
          *v9 = v18;
        }

        else
        {
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v18;
          if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *v9, v18))
          {
            v30 = v10->i64[0];
            v10->i64[0] = *v9;
            *v9 = v30;
          }
        }
      }

      else if (v17)
      {
        v21 = v10->i64[0];
        v10->i64[0] = *v9;
        *v9 = v21;
        if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v10->i64[0], v10->u64[v12]))
        {
          v22 = v10->i64[v12];
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v22;
        }
      }

      goto LABEL_55;
    }

    v13 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v10->u64[v12], v10->i64[0]);
    v14 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *v9, v10->u64[v12]);
    if (v13)
    {
      v15 = v10->i64[0];
      if (v14)
      {
        v10->i64[0] = *v9;
        *v9 = v15;
      }

      else
      {
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v15;
        if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *v9, v15))
        {
          v23 = v10->u64[v12];
          v10->i64[v12] = *v9;
          *v9 = v23;
        }
      }
    }

    else if (v14)
    {
      v19 = v10->u64[v12];
      v10->i64[v12] = *v9;
      *v9 = v19;
      if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v10->u64[v12], v10->i64[0]))
      {
        v20 = v10->i64[0];
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v20;
      }
    }

    v24 = v12 - 1;
    v25 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v8[v12 - 1], v8[1]);
    v26 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, a2[-1].u64[0], v8[v12 - 1]);
    if (v25)
    {
      v27 = v8[1];
      if (v26)
      {
        v8[1] = a2[-1].u64[0];
        a2[-1].i64[0] = v27;
      }

      else
      {
        v8[1] = v8[v24];
        v8[v24] = v27;
        if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, a2[-1].u64[0], v27))
        {
          v31 = v8[v24];
          v8[v24] = a2[-1].u64[0];
          a2[-1].i64[0] = v31;
        }
      }
    }

    else if (v26)
    {
      v28 = v8[v24];
      v8[v24] = a2[-1].u64[0];
      a2[-1].i64[0] = v28;
      if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v8[v24], v8[1]))
      {
        v29 = v8[1];
        v8[1] = v8[v24];
        v8[v24] = v29;
      }
    }

    v32 = a2;
    v33 = v12 + 1;
    v34 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v8[v12 + 1], v8[2]);
    v35 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v32[-2].u64[1], v8[v12 + 1]);
    if (v34)
    {
      v36 = v8[2];
      if (v35)
      {
        v8[2] = *(v124 - 3);
        *(v124 - 3) = v36;
      }

      else
      {
        v8[2] = v8[v33];
        v8[v33] = v36;
        if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *(v124 - 3), v36))
        {
          v39 = v8[v33];
          v8[v33] = *(v124 - 3);
          *(v124 - 3) = v39;
        }
      }
    }

    else if (v35)
    {
      v37 = v8[v33];
      v8[v33] = *(v124 - 3);
      *(v124 - 3) = v37;
      if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v8[v33], v8[2]))
      {
        v38 = v8[2];
        v8[2] = v8[v33];
        v8[v33] = v38;
      }
    }

    v40 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v8[v12], v8[v24]);
    v41 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v8[v33], v8[v12]);
    if (!v40)
    {
      v43 = v8[v12];
      if (!v41)
      {
        goto LABEL_54;
      }

      v44 = v8[v33];
      v8[v12] = v44;
      v8[v33] = v43;
      v45 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v44, v8[v24]);
      v43 = v8[v12];
      if (!v45)
      {
        goto LABEL_54;
      }

      v46 = v8[v24];
      v8[v24] = v43;
      v8[v12] = v46;
      goto LABEL_53;
    }

    v42 = v8[v24];
    if (v41)
    {
      v8[v24] = v8[v33];
      v8[v33] = v42;
      v43 = v8[v12];
    }

    else
    {
      v8[v24] = v8[v12];
      v8[v12] = v42;
      v47 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v8[v33], v42);
      v43 = v8[v12];
      if (v47)
      {
        v46 = v8[v33];
        v8[v12] = v46;
        v8[v33] = v43;
LABEL_53:
        v43 = v46;
      }
    }

LABEL_54:
    a2 = v124;
    v48 = *v8;
    *v8 = v43;
    v8[v12] = v48;
LABEL_55:
    --a4;
    v49 = *v8;
    if ((a5 & 1) != 0 || (v50 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *(v8 - 1), *v8), v49 = *v8, v50))
    {
      v51 = v8;
      do
      {
        v52 = v51;
        v53 = v51[1];
        ++v51;
      }

      while (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v53, v49));
      v54 = a2;
      if (v52 == v8)
      {
        v54 = a2;
        do
        {
          if (v51 >= v54)
          {
            break;
          }

          v56 = *--v54;
        }

        while (!md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v56, v49));
      }

      else
      {
        do
        {
          v55 = *--v54;
        }

        while (!md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v55, v49));
      }

      if (v51 < v54)
      {
        v57 = v51;
        v58 = v54;
        do
        {
          v59 = *v57;
          *v57 = *v58;
          *v58 = v59;
          do
          {
            v52 = v57;
            v60 = v57[1];
            ++v57;
          }

          while (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v60, v49));
          do
          {
            v61 = *--v58;
          }

          while (!md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v61, v49));
        }

        while (v57 < v58);
      }

      if (v52 != v8)
      {
        *v8 = *v52;
      }

      *v52 = v49;
      a2 = v124;
      if (v51 < v54)
      {
        goto LABEL_76;
      }

      v62 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **>(v8, v52, a3);
      v10 = (v52 + 1);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **>((v52 + 1), v124, a3);
      if (result)
      {
        a2 = v52;
        if (!v62)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v62)
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,false>(v8, v52, a3, a4, a5 & 1);
        a5 = 0;
        v10 = (v52 + 1);
      }
    }

    else
    {
      result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *v8, *v9);
      if (result)
      {
        v10 = v8;
        do
        {
          v63 = v10->u64[1];
          v10 = (v10 + 8);
          result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v49, v63);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v64 = (v8 + 1);
        do
        {
          v10 = v64;
          if (v64 >= a2)
          {
            break;
          }

          v64 = (v64 + 8);
          result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v49, v10->i64[0]);
        }

        while (!result);
      }

      v65 = a2;
      if (v10 < a2)
      {
        v65 = a2;
        do
        {
          v66 = v65[-1].u64[1];
          v65 = (v65 - 8);
          result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v49, v66);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v65)
      {
        v67 = v10->i64[0];
        v10->i64[0] = v65->i64[0];
        v65->i64[0] = v67;
        do
        {
          v68 = v10->u64[1];
          v10 = (v10 + 8);
        }

        while (!md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v49, v68));
        do
        {
          v69 = v65[-1].u64[1];
          v65 = (v65 - 8);
          result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v49, v69);
        }

        while ((result & 1) != 0);
      }

      v70 = &v10[-1].u64[1];
      if (&v10[-1].u64[1] != v8)
      {
        *v8 = *v70;
      }

      a5 = 0;
      *v70 = v49;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,0>(v10, &v10->u64[1], &v10[1], v9, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,0>(v10, &v10->u64[1], &v10[1], &v10[1].u64[1], a3);
      result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *v9, v10[1].u64[1]);
      if (!result)
      {
        return result;
      }

      v71 = v10[1].u64[1];
      v10[1].i64[1] = *v9;
      *v9 = v71;
      result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v10[1].u64[1], v10[1].u64[0]);
      if (!result)
      {
        return result;
      }

      v73 = v10[1].i64[0];
      v72 = v10[1].u64[1];
      v74 = v10->u64[1];
      v10[1].i64[0] = v72;
      v10[1].i64[1] = v73;
      result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v72, v74);
      if (!result)
      {
        return result;
      }

      v76 = v10->i64[1];
      v75 = v10[1].u64[0];
      v77 = v10->i64[0];
      v10->i64[1] = v75;
      v10[1].i64[0] = v76;
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v79 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v10->u64[1], v10->i64[0]);
  result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *v9, v10->u64[1]);
  if (!v79)
  {
    if (!result)
    {
      return result;
    }

    v117 = v10->u64[1];
    v10->i64[1] = *v9;
    *v9 = v117;
    v77 = v10->i64[0];
    v75 = v10->u64[1];
LABEL_164:
    result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v75, v77);
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v80 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = *v9;
    *v9 = v80;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v80;
    result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *v9, v80);
    if (result)
    {
      v78 = v10->u64[1];
      v10->i64[1] = *v9;
      goto LABEL_103;
    }
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4 &,md::LabelBase **,false>(uint64_t result, int8x16_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = &a2[-1].u64[1];
  v10 = v8;
  v124 = a2;
  while (1)
  {
    v8 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *v9, v10->i64[0]);
      if (result)
      {
        v78 = v10->i64[0];
        v10->i64[0] = *v9;
LABEL_103:
        *v9 = v78;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v81 = &v10->u64[1];
      v83 = v10 == a2 || v81 == a2;
      if (a5)
      {
        if (!v83)
        {
          v84 = 0;
          v85 = v10;
          do
          {
            v87 = *v85;
            v86 = v85[1];
            v85 = v81;
            result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v86, v87);
            if (result)
            {
              v88 = *v85;
              v89 = v84;
              while (1)
              {
                *(&v10->i64[1] + v89) = *(v10->i64 + v89);
                if (!v89)
                {
                  break;
                }

                result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v88, *(&v10->u64[-1] + v89));
                v89 -= 8;
                if ((result & 1) == 0)
                {
                  i64 = (&v10->i64[1] + v89);
                  goto LABEL_125;
                }
              }

              i64 = v10->i64;
LABEL_125:
              *i64 = v88;
            }

            v81 = v85 + 1;
            v84 += 8;
          }

          while (v85 + 1 != a2);
        }
      }

      else if (!v83)
      {
        do
        {
          v119 = *v8;
          v118 = v8[1];
          v8 = v81;
          result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v118, v119);
          if (result)
          {
            v120 = *v8;
            v121 = v8;
            do
            {
              v122 = v121;
              v123 = *--v121;
              *v122 = v123;
              result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v120, *(v122 - 2));
            }

            while ((result & 1) != 0);
            *v121 = v120;
          }

          v81 = v8 + 1;
        }

        while (v8 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v91 = (v11 - 2) >> 1;
        v126 = v91;
        do
        {
          v92 = v91;
          if (v126 >= v91)
          {
            v93 = (2 * v91) | 1;
            v94 = &v8[v93];
            if (2 * v91 + 2 < v11 && md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *v94, v94[1]))
            {
              ++v94;
              v93 = 2 * v92 + 2;
            }

            v95 = &v8[v92];
            result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *v94, *v95);
            if ((result & 1) == 0)
            {
              v96 = *v95;
              do
              {
                v97 = v94;
                *v95 = *v94;
                if (v126 < v93)
                {
                  break;
                }

                v98 = (2 * v93) | 1;
                v94 = &v8[v98];
                v99 = 2 * v93 + 2;
                if (v99 < v11 && md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *v94, v94[1]))
                {
                  ++v94;
                  v98 = v99;
                }

                result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *v94, v96);
                v95 = v97;
                v93 = v98;
              }

              while (!result);
              *v97 = v96;
            }
          }

          v91 = v92 - 1;
        }

        while (v92);
        v100 = v124;
        do
        {
          v101 = v100;
          v102 = 0;
          v127 = *v8;
          v103 = v8;
          do
          {
            v104 = &v103[v102];
            v105 = v104 + 1;
            v106 = (2 * v102) | 1;
            v107 = 2 * v102 + 2;
            if (v107 >= v11)
            {
              v102 = (2 * v102) | 1;
            }

            else
            {
              v109 = v104[2];
              v108 = v104 + 2;
              result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *(v108 - 1), v109);
              if (result)
              {
                v105 = v108;
                v102 = v107;
              }

              else
              {
                v102 = v106;
              }
            }

            *v103 = *v105;
            v103 = v105;
          }

          while (v102 <= ((v11 - 2) >> 1));
          v100 = v101 - 1;
          if (v105 == v101 - 1)
          {
            *v105 = v127;
          }

          else
          {
            *v105 = *v100;
            *v100 = v127;
            v110 = (v105 - v8 + 8) >> 3;
            v111 = v110 < 2;
            v112 = v110 - 2;
            if (!v111)
            {
              v113 = v112 >> 1;
              v114 = &v8[v112 >> 1];
              result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *v114, *v105);
              if (result)
              {
                v115 = *v105;
                do
                {
                  v116 = v114;
                  *v105 = *v114;
                  if (!v113)
                  {
                    break;
                  }

                  v113 = (v113 - 1) >> 1;
                  v114 = &v8[v113];
                  result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *v114, v115);
                  v105 = v116;
                }

                while ((result & 1) != 0);
                *v116 = v115;
              }
            }
          }

          v111 = v11-- <= 2;
        }

        while (!v111);
      }

      return result;
    }

    v12 = v11 >> 1;
    if (v11 < 0x81)
    {
      v16 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v10->i64[0], v10->u64[v12]);
      v17 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *v9, v10->i64[0]);
      if (v16)
      {
        v18 = v10->u64[v12];
        if (v17)
        {
          v10->i64[v12] = *v9;
          *v9 = v18;
        }

        else
        {
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v18;
          if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *v9, v18))
          {
            v30 = v10->i64[0];
            v10->i64[0] = *v9;
            *v9 = v30;
          }
        }
      }

      else if (v17)
      {
        v21 = v10->i64[0];
        v10->i64[0] = *v9;
        *v9 = v21;
        if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v10->i64[0], v10->u64[v12]))
        {
          v22 = v10->i64[v12];
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v22;
        }
      }

      goto LABEL_55;
    }

    v13 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v10->u64[v12], v10->i64[0]);
    v14 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *v9, v10->u64[v12]);
    if (v13)
    {
      v15 = v10->i64[0];
      if (v14)
      {
        v10->i64[0] = *v9;
        *v9 = v15;
      }

      else
      {
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v15;
        if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *v9, v15))
        {
          v23 = v10->u64[v12];
          v10->i64[v12] = *v9;
          *v9 = v23;
        }
      }
    }

    else if (v14)
    {
      v19 = v10->u64[v12];
      v10->i64[v12] = *v9;
      *v9 = v19;
      if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v10->u64[v12], v10->i64[0]))
      {
        v20 = v10->i64[0];
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v20;
      }
    }

    v24 = v12 - 1;
    v25 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v8[v12 - 1], v8[1]);
    v26 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, a2[-1].u64[0], v8[v12 - 1]);
    if (v25)
    {
      v27 = v8[1];
      if (v26)
      {
        v8[1] = a2[-1].u64[0];
        a2[-1].i64[0] = v27;
      }

      else
      {
        v8[1] = v8[v24];
        v8[v24] = v27;
        if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, a2[-1].u64[0], v27))
        {
          v31 = v8[v24];
          v8[v24] = a2[-1].u64[0];
          a2[-1].i64[0] = v31;
        }
      }
    }

    else if (v26)
    {
      v28 = v8[v24];
      v8[v24] = a2[-1].u64[0];
      a2[-1].i64[0] = v28;
      if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v8[v24], v8[1]))
      {
        v29 = v8[1];
        v8[1] = v8[v24];
        v8[v24] = v29;
      }
    }

    v32 = a2;
    v33 = v12 + 1;
    v34 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v8[v12 + 1], v8[2]);
    v35 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v32[-2].u64[1], v8[v12 + 1]);
    if (v34)
    {
      v36 = v8[2];
      if (v35)
      {
        v8[2] = *(v124 - 3);
        *(v124 - 3) = v36;
      }

      else
      {
        v8[2] = v8[v33];
        v8[v33] = v36;
        if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *(v124 - 3), v36))
        {
          v39 = v8[v33];
          v8[v33] = *(v124 - 3);
          *(v124 - 3) = v39;
        }
      }
    }

    else if (v35)
    {
      v37 = v8[v33];
      v8[v33] = *(v124 - 3);
      *(v124 - 3) = v37;
      if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v8[v33], v8[2]))
      {
        v38 = v8[2];
        v8[2] = v8[v33];
        v8[v33] = v38;
      }
    }

    v40 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v8[v12], v8[v24]);
    v41 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v8[v33], v8[v12]);
    if (!v40)
    {
      v43 = v8[v12];
      if (!v41)
      {
        goto LABEL_54;
      }

      v44 = v8[v33];
      v8[v12] = v44;
      v8[v33] = v43;
      v45 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v44, v8[v24]);
      v43 = v8[v12];
      if (!v45)
      {
        goto LABEL_54;
      }

      v46 = v8[v24];
      v8[v24] = v43;
      v8[v12] = v46;
      goto LABEL_53;
    }

    v42 = v8[v24];
    if (v41)
    {
      v8[v24] = v8[v33];
      v8[v33] = v42;
      v43 = v8[v12];
    }

    else
    {
      v8[v24] = v8[v12];
      v8[v12] = v42;
      v47 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v8[v33], v42);
      v43 = v8[v12];
      if (v47)
      {
        v46 = v8[v33];
        v8[v12] = v46;
        v8[v33] = v43;
LABEL_53:
        v43 = v46;
      }
    }

LABEL_54:
    a2 = v124;
    v48 = *v8;
    *v8 = v43;
    v8[v12] = v48;
LABEL_55:
    --a4;
    v49 = *v8;
    if ((a5 & 1) != 0 || (v50 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *(v8 - 1), *v8), v49 = *v8, v50))
    {
      v51 = v8;
      do
      {
        v52 = v51;
        v53 = v51[1];
        ++v51;
      }

      while (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v53, v49));
      v54 = a2;
      if (v52 == v8)
      {
        v54 = a2;
        do
        {
          if (v51 >= v54)
          {
            break;
          }

          v56 = *--v54;
        }

        while (!md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v56, v49));
      }

      else
      {
        do
        {
          v55 = *--v54;
        }

        while (!md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v55, v49));
      }

      if (v51 < v54)
      {
        v57 = v51;
        v58 = v54;
        do
        {
          v59 = *v57;
          *v57 = *v58;
          *v58 = v59;
          do
          {
            v52 = v57;
            v60 = v57[1];
            ++v57;
          }

          while (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v60, v49));
          do
          {
            v61 = *--v58;
          }

          while (!md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v61, v49));
        }

        while (v57 < v58);
      }

      if (v52 != v8)
      {
        *v8 = *v52;
      }

      *v52 = v49;
      a2 = v124;
      if (v51 < v54)
      {
        goto LABEL_76;
      }

      v62 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4 &,md::LabelBase **>(v8, v52, a3);
      v10 = (v52 + 1);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4 &,md::LabelBase **>((v52 + 1), v124, a3);
      if (result)
      {
        a2 = v52;
        if (!v62)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v62)
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4 &,md::LabelBase **,false>(v8, v52, a3, a4, a5 & 1);
        a5 = 0;
        v10 = (v52 + 1);
      }
    }

    else
    {
      result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *v8, *v9);
      if (result)
      {
        v10 = v8;
        do
        {
          v63 = v10->u64[1];
          v10 = (v10 + 8);
          result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v49, v63);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v64 = (v8 + 1);
        do
        {
          v10 = v64;
          if (v64 >= a2)
          {
            break;
          }

          v64 = (v64 + 8);
          result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v49, v10->i64[0]);
        }

        while (!result);
      }

      v65 = a2;
      if (v10 < a2)
      {
        v65 = a2;
        do
        {
          v66 = v65[-1].u64[1];
          v65 = (v65 - 8);
          result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v49, v66);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v65)
      {
        v67 = v10->i64[0];
        v10->i64[0] = v65->i64[0];
        v65->i64[0] = v67;
        do
        {
          v68 = v10->u64[1];
          v10 = (v10 + 8);
        }

        while (!md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v49, v68));
        do
        {
          v69 = v65[-1].u64[1];
          v65 = (v65 - 8);
          result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v49, v69);
        }

        while ((result & 1) != 0);
      }

      v70 = &v10[-1].u64[1];
      if (&v10[-1].u64[1] != v8)
      {
        *v8 = *v70;
      }

      a5 = 0;
      *v70 = v49;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4 &,md::LabelBase **,0>(v10, &v10->u64[1], &v10[1], v9, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4 &,md::LabelBase **,0>(v10, &v10->u64[1], &v10[1], &v10[1].u64[1], a3);
      result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *v9, v10[1].u64[1]);
      if (!result)
      {
        return result;
      }

      v71 = v10[1].u64[1];
      v10[1].i64[1] = *v9;
      *v9 = v71;
      result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v10[1].u64[1], v10[1].u64[0]);
      if (!result)
      {
        return result;
      }

      v73 = v10[1].i64[0];
      v72 = v10[1].u64[1];
      v74 = v10->u64[1];
      v10[1].i64[0] = v72;
      v10[1].i64[1] = v73;
      result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v72, v74);
      if (!result)
      {
        return result;
      }

      v76 = v10->i64[1];
      v75 = v10[1].u64[0];
      v77 = v10->i64[0];
      v10->i64[1] = v75;
      v10[1].i64[0] = v76;
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v79 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v10->u64[1], v10->i64[0]);
  result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *v9, v10->u64[1]);
  if (!v79)
  {
    if (!result)
    {
      return result;
    }

    v117 = v10->u64[1];
    v10->i64[1] = *v9;
    *v9 = v117;
    v77 = v10->i64[0];
    v75 = v10->u64[1];
LABEL_164:
    result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v75, v77);
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v80 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = *v9;
    *v9 = v80;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v80;
    result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *v9, v80);
    if (result)
    {
      v78 = v10->u64[1];
      v10->i64[1] = *v9;
      goto LABEL_103;
    }
  }

  return result;
}

BOOL md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(uint64_t **a1, unint64_t a2, unint64_t a3)
{
  v6 = *a1;
  v25 = a2;
  v7 = *v6;
  v8 = (*(**(a2 + 8) + 304))(*(a2 + 8), a2 + 48);
  v9 = 0.0;
  if (v10)
  {
    v11 = v8;
    v12 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v7 + 296), a2);
    if (v12)
    {
      v9 = v12[3];
    }

    else
    {
      [*v6[1] distanceFromPoint:*v6[2] toPoint:v11];
      v9 = v13;
      v14 = v6[2];
      if (*v14 > v11 || *v14 == v11 && *(v14 + 4) > *(&v11 + 1))
      {
        v9 = -v13;
      }

      v26 = &v25;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v7 + 296), a2) + 3) = v9;
    }
  }

  v15 = *a1;
  v25 = a3;
  v16 = *v15;
  v17 = (*(**(a3 + 8) + 304))(*(a3 + 8), a3 + 48);
  if ((v18 & 1) == 0)
  {
    v21 = 0.0;
    if (v9 >= 0.0)
    {
      return v9 < v21;
    }

    return v9 > v21;
  }

  v19 = v17;
  v20 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v16 + 296), a3);
  if (v20)
  {
    v21 = v20[3];
  }

  else
  {
    [*v15[1] distanceFromPoint:*v15[2] toPoint:v19];
    v21 = v22;
    v23 = v15[2];
    if (*v23 > v19 || *v23 == v19 && *(v23 + 4) > *(&v19 + 1))
    {
      v21 = -v22;
    }

    v26 = &v25;
    *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v16 + 296), a3) + 3) = v21;
  }

  result = v9 >= 0.0;
  if (v9 >= 0.0 && v21 >= 0.0)
  {
    return v9 < v21;
  }

  if (v9 <= 0.0 && v21 <= 0.0)
  {
    return v9 > v21;
  }

  return result;
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4 &,md::LabelBase **,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t **a5)
{
  v10 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a5, *a2, *a1);
  v11 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a5, *a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a5, *a3, v12))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a5, *a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a5, *a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a5, *a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a5, *a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4 &,md::LabelBase **>(uint64_t a1, unint64_t *a2, uint64_t **a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *(a1 + 8), *a1);
        v16 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *(a2 - 1), *(a1 + 8));
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = *(a1 + 8);
          *(a1 + 8) = v17;
          if (!md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *(a2 - 1), v17))
          {
            return 1;
          }

          v7 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = *(a1 + 8);
        *(a1 + 8) = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = *a1;
        v12 = *(a1 + 8);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4 &,md::LabelBase **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4 &,md::LabelBase **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), a3);
        if (!md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *(a2 - 1), *(a1 + 24)))
        {
          return 1;
        }

        v8 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *(a1 + 24), *(a1 + 16)))
        {
          return 1;
        }

        v10 = *(a1 + 16);
        v9 = *(a1 + 24);
        v11 = *(a1 + 8);
        *(a1 + 16) = v9;
        *(a1 + 24) = v10;
        if (!md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v9, v11))
        {
          return 1;
        }

        v13 = *(a1 + 8);
        v12 = *(a1 + 16);
        v14 = *a1;
        *(a1 + 8) = v12;
        *(a1 + 16) = v13;
        break;
      default:
        goto LABEL_17;
    }

    if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v12, v14))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *(a1 + 8), *a1);
  v19 = (a1 + 16);
  v20 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *(a1 + 16), *(a1 + 8));
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v21;
    }

    else
    {
      v26 = *(a1 + 16);
      *a1 = *(a1 + 8);
      *(a1 + 8) = v21;
      if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v26, v21))
      {
        *(a1 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
      }
    }
  }

  else if (v20)
  {
    v24 = *(a1 + 8);
    v23 = *(a1 + 16);
    v25 = *a1;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v23, v25))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v27 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, *v27, *v19))
    {
      v30 = *v27;
      v31 = v28;
      while (1)
      {
        v32 = a1 + v31;
        *(a1 + v31 + 24) = *(a1 + v31 + 16);
        if (v31 == -16)
        {
          break;
        }

        v31 -= 8;
        if (!md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_4::operator()(a3, v30, *(v32 + 8)))
        {
          v33 = (a1 + v31 + 24);
          goto LABEL_40;
        }
      }

      v33 = a1;
LABEL_40:
      *v33 = v30;
      if (++v29 == 8)
      {
        return v27 + 1 == a2;
      }
    }

    v19 = v27;
    v28 += 8;
    if (++v27 == a2)
    {
      return 1;
    }
  }
}

BOOL md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(uint64_t **a1, unint64_t a2, unint64_t a3)
{
  v6 = *a1;
  v25 = a2;
  v7 = *v6;
  v8 = (*(**(a2 + 8) + 304))(*(a2 + 8), a2 + 48);
  v9 = 0.0;
  v10 = 0.0;
  if (v11)
  {
    v12 = v8;
    v13 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v7 + 296), a2);
    if (v13)
    {
      v10 = v13[3];
    }

    else
    {
      [*v6[1] distanceFromPoint:*v6[2] toPoint:v12];
      v10 = v14;
      v15 = v6[2];
      if (*v15 > v12 || *v15 == v12 && *(v15 + 4) > *(&v12 + 1))
      {
        v10 = -v14;
      }

      v26 = &v25;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v7 + 296), a2) + 3) = v10;
    }
  }

  v16 = *a1;
  v25 = a3;
  v17 = *v16;
  v18 = (*(**(a3 + 8) + 304))(*(a3 + 8), a3 + 48);
  if (v19)
  {
    v20 = v18;
    v21 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v17 + 296), a3);
    if (v21)
    {
      v9 = v21[3];
    }

    else
    {
      [*v16[1] distanceFromPoint:*v16[2] toPoint:v20];
      v9 = v22;
      v23 = v16[2];
      if (*v23 > v20 || *v23 == v20 && *(v23 + 4) > *(&v20 + 1))
      {
        v9 = -v22;
      }

      v26 = &v25;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,geo::Unit<geo::MeterUnitDescription,double>>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v17 + 296), a3) + 3) = v9;
    }
  }

  return v10 > v9;
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t **a5)
{
  v10 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a5, *a2, *a1);
  v11 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a5, *a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a5, *a3, v12))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a5, *a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a5, *a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a5, *a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a5, *a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **>(uint64_t a1, unint64_t *a2, uint64_t **a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *(a1 + 8), *a1);
        v16 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *(a2 - 1), *(a1 + 8));
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = *(a1 + 8);
          *(a1 + 8) = v17;
          if (!md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *(a2 - 1), v17))
          {
            return 1;
          }

          v7 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = *(a1 + 8);
        *(a1 + 8) = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = *a1;
        v12 = *(a1 + 8);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), a3);
        if (!md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *(a2 - 1), *(a1 + 24)))
        {
          return 1;
        }

        v8 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *(a1 + 24), *(a1 + 16)))
        {
          return 1;
        }

        v10 = *(a1 + 16);
        v9 = *(a1 + 24);
        v11 = *(a1 + 8);
        *(a1 + 16) = v9;
        *(a1 + 24) = v10;
        if (!md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v9, v11))
        {
          return 1;
        }

        v13 = *(a1 + 8);
        v12 = *(a1 + 16);
        v14 = *a1;
        *(a1 + 8) = v12;
        *(a1 + 16) = v13;
        break;
      default:
        goto LABEL_17;
    }

    if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v12, v14))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *(a1 + 8), *a1);
  v19 = (a1 + 16);
  v20 = md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *(a1 + 16), *(a1 + 8));
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v21;
    }

    else
    {
      v26 = *(a1 + 16);
      *a1 = *(a1 + 8);
      *(a1 + 8) = v21;
      if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v26, v21))
      {
        *(a1 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
      }
    }
  }

  else if (v20)
  {
    v24 = *(a1 + 8);
    v23 = *(a1 + 16);
    v25 = *a1;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v23, v25))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v27 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    if (md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, *v27, *v19))
    {
      v30 = *v27;
      v31 = v28;
      while (1)
      {
        v32 = a1 + v31;
        *(a1 + v31 + 24) = *(a1 + v31 + 16);
        if (v31 == -16)
        {
          break;
        }

        v31 -= 8;
        if (!md::ARWalkingContinueFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::$_3::operator()(a3, v30, *(v32 + 8)))
        {
          v33 = (a1 + v31 + 24);
          goto LABEL_40;
        }
      }

      v33 = a1;
LABEL_40:
      *v33 = v30;
      if (++v29 == 8)
      {
        return v27 + 1 == a2;
      }
    }

    v19 = v27;
    v28 += 8;
    if (++v27 == a2)
    {
      return 1;
    }
  }
}

void md::ARWalkingContinueFeatureDedupingGroup::~ARWalkingContinueFeatureDedupingGroup(md::ARWalkingContinueFeatureDedupingGroup *this)
{
  *this = &unk_1F2A3C798;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 336);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 296);
  *(this + 31) = &unk_1F2A4C308;

  *this = &unk_1F2A54330;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 208);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 168);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 88);
  *this = off_1F2A55B58;
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 40));
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 8));

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A3C798;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 336);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 296);
  *(this + 31) = &unk_1F2A4C308;

  *this = &unk_1F2A54330;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 208);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 168);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 88);
  *this = off_1F2A55B58;
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 40));
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 8));
}

uint64_t md::raySphereIntersection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6)
{
  for (i = 0; i != 24; i += 8)
  {
    *(&v28 + i) = *(a1 + i) - *(a3 + i);
  }

  v7 = 0;
  v26 = v28;
  v27 = v29;
  v8 = 0.0;
  do
  {
    v8 = v8 + *(a2 + v7) * *(a2 + v7);
    v7 += 8;
  }

  while (v7 != 24);
  v9 = 0;
  v10 = 0.0;
  do
  {
    v10 = v10 + *(a2 + v9) * *(&v26 + v9);
    v9 += 8;
  }

  while (v9 != 24);
  v11 = 0;
  v12 = 0.0;
  do
  {
    v12 = v12 + *(&v26 + v11) * *(&v26 + v11);
    v11 += 8;
  }

  while (v11 != 24);
  v13 = v10 + v10;
  v14 = v8 * -4.0 * (v12 - a6 * a6) + v13 * v13;
  if (v14 < 0.0)
  {
    return 0;
  }

  v16 = sqrt(v14);
  v17 = (v16 + v13) * -0.5 / v8;
  if (v17 >= 0.0)
  {
    for (j = 0; j != 24; j += 8)
    {
      *(&v28 + j) = *(a2 + j) * v17;
    }

    v22 = 0;
    v24 = v28;
    v25 = v29;
    do
    {
      *(&v28 + v22) = *(&v24 + v22) + *(a1 + v22);
      v22 += 8;
    }

    while (v22 != 24);
  }

  else
  {
    if (!a5)
    {
      return 0;
    }

    v18 = (v16 - v13) * 0.5 / v8;
    if (v18 < 0.0)
    {
      return 0;
    }

    for (k = 0; k != 24; k += 8)
    {
      *(&v28 + k) = *(a2 + k) * v18;
    }

    v20 = 0;
    v24 = v28;
    v25 = v29;
    do
    {
      *(&v28 + v20) = *(&v24 + v20) + *(a1 + v20);
      v20 += 8;
    }

    while (v20 != 24);
  }

  v23 = v29;
  *a4 = v28;
  *(a4 + 16) = v23;
  return 1;
}

void md::getDirFromScreenPosition(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v8 = gdc::Camera::cameraFrame(a1);
  gdc::CameraFrame<geo::Radians,double>::toRigidTransformGeocentric(v26, v8);
  v10 = gdc::Camera::horizontalOffset(v9, *(a1 + 488));
  v11 = *(a1 + 384);
  v12 = v11 * v10;
  v14 = gdc::Camera::horizontalOffset(v13, *(a1 + 492));
  v15 = *(a1 + 392);
  *&v14 = v15 * v14;
  v16 = ((v12 - a3) + (v12 - a3)) / v11;
  v17 = ((*&v14 - a4) + (*&v14 - a4)) / v15;
  gdc::Camera::verticalFieldOfView(v25, a1);
  v18 = tan(v25[0] * 0.5);
  gdc::Camera::horizontalFieldOfView(v25, a1);
  v19 = tan(v25[0] * 0.5);
  v24[0] = -(v19 + v16 * v19);
  v24[1] = v18 + v17 * v18;
  v24[2] = -1.0;
  v25[0] = gm::Matrix<double,3,1>::normalized<int,void>(v24);
  v25[1] = v20;
  v25[2] = v21;
  *a2 = gm::Quaternion<double>::operator*(&v27, v25);
  *(a2 + 8) = v22;
  *(a2 + 16) = v23;
}

void md::CameraManager::update(uint64_t a1, gdc::Camera **a2, int a3)
{
  if ((*(a1 + 16) & 1) != 0 || (*(a1 + 81) & 1) != 0 || (*(a1 + 128) & 1) != 0 || *(a1 + 184) == 1)
  {
    v5 = *(a1 + 8);
    v6 = gdc::Camera::cameraFrame(*a2);
    v7 = COERCE_DOUBLE(md::MapDataAccess::heightAtCoordinate(v5, v6));
    if ((v8 & 0x100) != 0)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0.0;
    }

    v10 = *a2;
    v11 = gdc::Camera::cameraFrame(*a2);
    gdc::Camera::setAltitude(v10, COERCE__INT64(fmax(v9, *(v11 + 16))));
    v12 = 1;
    if (*(a1 + 16))
    {
      v13 = *(a1 + 8);
      v14 = gdc::Camera::cameraFrame(*a2);
      md::MapDataAccess::groundCoordinateForScreenCursor(v369, v13, v14, *(a1 + 20));
      *(a1 + 48) = *v369;
      *(a1 + 64) = *&v369[16];
      *(a1 + 17) = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (*(a1 + 81) == 1)
  {
    v15 = *(a1 + 8);
    v16 = gdc::Camera::cameraFrame(*a2);
    md::MapDataAccess::groundCoordinateForScreenCursor(v369, v15, v16, *(a1 + 112));
    *(a1 + 88) = *v369;
    *(a1 + 104) = *&v369[16];
    *(a1 + 82) = 1;
  }

  if (*(a1 + 128) == 1)
  {
    v17 = *(a1 + 8);
    v18 = gdc::Camera::cameraFrame(*a2);
    md::MapDataAccess::groundCoordinateForScreenCursor(v369, v17, v18, *(a1 + 160));
    *(a1 + 136) = *v369;
    *(a1 + 152) = *&v369[16];
    *(a1 + 129) = 1;
  }

  if (*(a1 + 184) == 1)
  {
    v19 = *(a1 + 8);
    v20 = gdc::Camera::cameraFrame(*a2);
    md::MapDataAccess::groundCoordinateForScreenCursor(v369, v19, v20, *(a1 + 216));
    *(a1 + 192) = *v369;
    *(a1 + 208) = *&v369[16];
    *(a1 + 232) = *grl::IconMetricsRenderResult::size(*a2);
    *(a1 + 185) = 1;
  }

  if (v12 && (*(a1 + 16) != 1 || (*(a1 + 243) & 1) == 0))
  {
    *(a1 + 244) = 0;
  }

  v21 = *a2;
  v22 = gdc::Camera::cameraFrame(*a2);
  gdc::CameraFrame<geo::Radians,double>::toLookAtGeocentric(v369, v22);
  if (*(a1 + 17) == 1)
  {
    v23 = *(a1 + 20);
    v24 = *(a1 + 28);
    v25 = v23 - v24;
    if (v23 == v24)
    {
      v26 = *(a1 + 24);
      v27 = *(a1 + 32);
      if (v26 == v27)
      {
        v28 = 0;
        goto LABEL_78;
      }
    }

    else
    {
      v27 = *(a1 + 32);
      v26 = *(a1 + 24);
    }

    v29 = *grl::IconMetricsRenderResult::size(v21);
    if (*(a1 + 80) == 1)
    {
      v30 = v26 - v27;
      v24 = *(a1 + 36);
      v27 = *(a1 + 40);
      v23 = v25 + v24;
      v26 = v30 + v27;
    }

    v31 = v29 * 0.2;
    md::getDirFromScreenPosition(v21, &v387, v23, v26);
    md::getDirFromScreenPosition(*a2, &v385, v24, v27);
    *&v32.f64[0] = vdupq_laneq_s64(v388, 1).u64[0];
    v32.f64[1] = v387;
    *&v33.f64[0] = vdupq_laneq_s64(v386, 1).u64[0];
    v33.f64[1] = v385;
    *v398 = vmlaq_f64(vnegq_f64(vmulq_f64(v33, v388)), v386, v32);
    *&v398[16] = -(v387 * *v386.i64 - v385 * *v388.i64);
    v384[0] = gm::Matrix<double,3,1>::normalized<int,void>(v398);
    v384[1] = v34;
    v384[2] = v35;
    v21 = *a2;
    v36 = gdc::Camera::cameraFrame(*a2);
    gdc::CameraFrame<geo::Radians,double>::toRigidTransformGeocentric(v398, v36);
    v404 = *v398;
    v405 = *&v398[16];
    v38 = gdc::Camera::horizontalOffset(v37, *(v21 + 122));
    v39 = *(v21 + 48);
    v40 = v39 * v38;
    v42 = gdc::Camera::horizontalOffset(v41, *(v21 + 123));
    v43 = *(v21 + 49);
    *&v42 = v43 * v42;
    v44 = ((v40 - v23) + (v40 - v23)) / v39;
    v45 = ((*&v42 - v26) + (*&v42 - v26)) / v43;
    gdc::Camera::verticalFieldOfView(&v395, v21);
    v46 = tan(v395.f64[0] * 0.5);
    gdc::Camera::horizontalFieldOfView(&v395, v21);
    v47 = tan(v395.f64[0] * 0.5);
    v389.f64[0] = -(v47 + v44 * v47);
    v389.f64[1] = v46 + v45 * v46;
    v390 = -1.0;
    v395.f64[0] = gm::Matrix<double,3,1>::normalized<int,void>(&v389);
    v395.f64[1] = v48;
    v396 = v49;
    v374.f64[0] = gm::Quaternion<double>::operator*(v399, &v395);
    v374.f64[1] = v50;
    v375 = v51;
    v402.f64[0] = gm::Matrix<double,3,1>::normalized<int,void>(&v404);
    v402.f64[1] = v52;
    v403 = v53;
    v54 = gm::Matrix<double,3,1>::normalized<int,void>(&v402);
    v55 = 0;
    v389.f64[0] = v54;
    v389.f64[1] = v56;
    v390 = v57;
    v58 = 0.0;
    do
    {
      v58 = v58 + v389.f64[v55] * v374.f64[v55];
      ++v55;
    }

    while (v55 != 3);
    v59 = v58 + 0.1;
    if (v59 > 0.0)
    {
      v60 = 0;
      v61 = v59 * 0.8;
      do
      {
        v395.f64[v60] = v61 * v389.f64[v60];
        ++v60;
      }

      while (v60 != 3);
      v62 = 0;
      v377 = v395;
      v378 = v396;
      do
      {
        v395.f64[v62] = v374.f64[v62] - v377.f64[v62];
        ++v62;
      }

      while (v62 != 3);
      v374 = v395;
      v375 = v396;
    }

    v63 = 0;
    v64 = 0.0;
    do
    {
      v64 = v64 + v374.f64[v63] * v374.f64[v63];
      ++v63;
    }

    while (v63 != 3);
    v65 = 0;
    v66 = 1.0 / sqrt(v64);
    do
    {
      v374.f64[v65] = v374.f64[v65] * v66;
      ++v65;
    }

    while (v65 != 3);
    v67 = *(a1 + 56);
    v68 = *(a1 + 64);
    v69 = __sincos_stret(*(a1 + 48));
    v70 = 6378137.0 / sqrt(v69.__sinval * v69.__sinval * -0.00669437999 + 1.0);
    v71 = (v70 + v68) * v69.__cosval;
    v72 = __sincos_stret(v67);
    v73 = 0;
    v395.f64[0] = v71 * v72.__cosval;
    v395.f64[1] = v71 * v72.__sinval;
    v396 = (v68 + v70 * 0.99330562) * v69.__sinval;
    v74 = 0.0;
    do
    {
      v74 = v74 + v395.f64[v73] * v395.f64[v73];
      ++v73;
    }

    while (v73 != 3);
    v377 = 0uLL;
    v378 = 0.0;
    v75 = sqrt(v74);
    if (md::raySphereIntersection(&v404, &v374, &v377, &v389, 0, v75))
    {
      goto LABEL_46;
    }

    for (i = 0; i != 3; ++i)
    {
      v395.f64[i] = -v374.f64[i];
    }

    v402 = v395;
    v403 = v396;
    v401 = 0;
    v400 = 0uLL;
    if (md::raySphereIntersection(&v404, &v402, &v400, &v389, 1, v75))
    {
LABEL_46:
      v402 = v389;
      v403 = v390;
    }

    else
    {
      v77 = gdc::CameraUtil::calculateAltitude(v36);
      v79 = gdc::CameraUtil::calculateHorizonDistance(v78, v77);
      for (j = 0; j != 3; ++j)
      {
        v395.f64[j] = v374.f64[j] * v79;
      }

      v81 = 0;
      v377 = v395;
      v378 = v396;
      do
      {
        v395.f64[v81] = v377.f64[v81] + v404.f64[v81];
        ++v81;
      }

      while (v81 != 3);
      geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(&v377, v395.f64);
      v82 = v377.f64[1];
      v83 = __sincos_stret(v377.f64[0]);
      v84 = 6378137.0 / sqrt(v83.__sinval * v83.__sinval * -0.00669437999 + 1.0);
      v85 = (v84 + v68) * v83.__cosval;
      v86 = __sincos_stret(v82);
      v402.f64[0] = v85 * v86.__cosval;
      v402.f64[1] = v85 * v86.__sinval;
      v403 = (v68 + v84 * 0.99330562) * v83.__sinval;
    }

    v404 = v402;
    v405 = v403;
    geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(&v400, v402.f64);
    for (k = 0; k != 3; ++k)
    {
      *&v398[k * 8] = v404.f64[k] - *&v369[k * 8];
    }

    v88 = 0;
    v89 = 0.0;
    do
    {
      v89 = v89 + *&v398[v88] * *&v398[v88];
      v88 += 8;
    }

    while (v88 != 24);
    v90 = 0;
    v91 = 0.0;
    v92 = sqrt(v89);
    do
    {
      v91 = v91 + *(&v385 + v90) * *(&v387 + v90);
      v90 += 8;
    }

    while (v90 != 24);
    v93 = fmax(v31, v92);
    v94 = sqrt(v93 * v93 + v93 * v93 - v91 * (v93 * v93 + v93 * v93));
    *(a1 + 72) = v94;
    v95 = gm::Matrix<double,3,1>::normalized<int,void>(v369);
    v96 = 0;
    *v398 = v95;
    *&v398[8] = v97;
    *&v398[16] = v98;
    v99 = 0.0;
    do
    {
      v99 = v99 + *&v398[v96] * *(&v387 + v96);
      v96 += 8;
    }

    while (v96 != 24);
    v100 = fmin(1.0 / fabs(v99), 2.0);
    v383[0] = 0;
    v383[1] = 0;
    v383[2] = 0x3FF0000000000000;
    v101 = gm::Matrix<double,3,1>::normalized<int,void>(&v370);
    *v398 = -v102;
    *&v398[8] = v101;
    *&v398[16] = 0;
    v103 = gm::Matrix<double,3,1>::normalized<int,void>(v398);
    v106 = 0;
    *v382 = v103;
    *&v382[1] = v104;
    v382[2] = *&v105.f64[0];
    *v381 = v104;
    *&v381[1] = -v103;
    v381[2] = 0;
    v107 = 0.0;
    do
    {
      v107 = v107 + *&v383[v106] * *&v384[v106];
      ++v106;
    }

    while (v106 != 3);
    v108 = 0;
    v109 = v100 * 0.000000156961014;
    v110 = 0.0;
    do
    {
      v110 = v110 + *&v382[v108] * *&v384[v108];
      ++v108;
    }

    while (v108 != 3);
    v111 = 0;
    v112 = 0.0;
    do
    {
      v112 = v112 + *&v381[v111] * *&v384[v111];
      ++v111;
    }

    while (v111 != 3);
    *&v113.f64[0] = vdupq_laneq_s64(*&v369[8], 1).u64[0];
    v113.f64[1] = *v369;
    v114.f64[0] = v104;
    v114.f64[1] = v105.f64[0];
    v105.f64[1] = v103;
    *v398 = vmlaq_f64(vnegq_f64(vmulq_f64(v113, v114)), v105, *&v369[8]);
    *&v398[16] = -(v103 * *&v369[8] - *v369 * v104);
    v380[0] = gm::Matrix<double,3,1>::normalized<int,void>(v398);
    v380[1] = v115;
    v380[2] = v116;
    v117 = *&v400;
    v118 = cos(*&v400);
    v119 = 0;
    v120 = 0.0;
    v121 = 1.0 / v118;
    do
    {
      v120 = v120 + *&v380[v119] * *&v384[v119];
      ++v119;
    }

    while (v119 != 3);
    v122 = v109 * v94;
    v123 = fmin(v121, 4.0) * v122 * v120;
    v124 = fmin(fmax(fabs(v117), 1.30899694), 1.48352986) * 5.72957795 + -7.5;
    v125 = v124 * v124 * (v124 * -2.0 + 3.0);
    v126 = v123 + -(v123 - v107 * v122) * v125;
    v127 = 1.0;
    if (*grl::IconMetricsRenderResult::size(v21) > 1000000.0)
    {
      v128 = *(a1 + 24) - *(a1 + 40);
      if (v128)
      {
        v129 = fmin(fmax(fabs((*(a1 + 20) - *(a1 + 36)) / v128), 1.0), 2.0) + -1.0;
        v127 = v129 * v129 * (v129 * 2.0 + -3.0) + 1.0;
      }
    }

    v130 = v126 * 0.5;
    v131 = sin(v130);
    for (m = 0; m != 3; ++m)
    {
      *&v398[m * 8] = *&v383[m] * v131;
    }

    v361 = *v398;
    v133 = *&v398[16];
    v134 = cos(v130);
    v389 = v361;
    v390 = v133;
    v391 = v134;
    v135 = v122 * 0.5;
    v136 = v135 * v110 * v127;
    v137 = sin(v136);
    for (n = 0; n != 3; ++n)
    {
      *&v398[n * 8] = *&v382[n] * v137;
    }

    v362 = *v398;
    v139 = *&v398[16];
    v140 = cos(v136);
    v377 = v362;
    v378 = v139;
    v379 = v140;
    gm::Quaternion<double>::operator*(&v395, &v389, &v377);
    v141 = v135 * v112 * v125;
    v142 = sin(v141);
    for (ii = 0; ii != 3; ++ii)
    {
      *&v398[ii * 8] = *&v381[ii] * v142;
    }

    v363 = *v398;
    v144 = *&v398[16];
    v145 = cos(v141);
    v374 = v363;
    v375 = v144;
    v376 = v145;
    gm::Quaternion<double>::operator*(v398, &v395, &v374);
    *v369 = gm::Quaternion<double>::operator*(v398, v369);
    *&v369[8] = v146;
    *&v369[16] = v147;
    v370.f64[0] = gm::Quaternion<double>::operator*(v398, &v370);
    v370.f64[1] = v148;
    v371 = v149;
    v372 = gm::Quaternion<double>::operator*(v398, &v372);
    *v373.i64 = v150;
    *&v373.i64[1] = v151;
    *(a1 + 28) = *(a1 + 20);
    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

LABEL_78:
  if (*(a1 + 82) == 1)
  {
    v152 = *(a1 + 96);
    v153 = *(a1 + 104);
    v154 = __sincos_stret(*(a1 + 88));
    v155 = 6378137.0 / sqrt(v154.__sinval * v154.__sinval * -0.00669437999 + 1.0);
    v156 = (v155 + v153) * v154.__cosval;
    v157 = __sincos_stret(v152);
    v395.f64[0] = v156 * v157.__cosval;
    v395.f64[1] = v156 * v157.__sinval;
    v396 = (v153 + v155 * 0.99330562) * v154.__sinval;
    v389.f64[0] = gm::Matrix<double,3,1>::normalized<int,void>(&v395);
    v389.f64[1] = v158;
    v390 = v159;
    v160 = *(a1 + 120) * 0.5;
    v161 = sin(v160);
    for (jj = 0; jj != 3; ++jj)
    {
      *&v398[jj * 8] = v389.f64[jj] * v161;
    }

    v364 = *v398;
    v163 = *&v398[16];
    v164 = cos(v160);
    *v398 = v364;
    *&v398[16] = v163;
    *v399 = v164;
    *v369 = gm::Quaternion<double>::operator*(v398, v369);
    *&v369[8] = v165;
    *&v369[16] = v166;
    v370.f64[0] = gm::Quaternion<double>::operator*(v398, &v370);
    v370.f64[1] = v167;
    v371 = v168;
    v372 = gm::Quaternion<double>::operator*(v398, &v372);
    *v373.i64 = v169;
    *&v373.i64[1] = v170;
    *(a1 + 120) = 0;
    v28 = 1;
  }

  if (*(a1 + 129) == 1)
  {
    v171 = *(gdc::Camera::cameraFrame(v21) + 32);
    v172 = fmax(v171 + *(a1 + 176), 0.0);
    v173 = *(a1 + 144);
    v174 = *(a1 + 152);
    v175 = __sincos_stret(*(a1 + 136));
    v176 = 6378137.0 / sqrt(v175.__sinval * v175.__sinval * -0.00669437999 + 1.0);
    v177 = (v176 + v174) * v175.__cosval;
    v178 = __sincos_stret(v173);
    v179 = 0;
    v389.f64[0] = v177 * v178.__cosval;
    v389.f64[1] = v177 * v178.__sinval;
    v390 = (v174 + v176 * 0.99330562) * v175.__sinval;
    do
    {
      *&v398[v179 * 8] = *&v369[v179 * 8] - v389.f64[v179];
      ++v179;
    }

    while (v179 != 3);
    v180 = 0;
    v377 = *v398;
    v378 = *&v398[16];
    do
    {
      *&v398[v180 * 8] = *&v369[v180 * 8 + 24] - v389.f64[v180];
      ++v180;
    }

    while (v180 != 3);
    v181 = 0;
    v374 = *v398;
    v375 = *&v398[16];
    do
    {
      *&v398[v181] = *&v369[v181 + 24] - *&v369[v181];
      v181 += 8;
    }

    while (v181 != 24);
    *&v182.f64[0] = vdupq_laneq_s64(v373, 1).u64[0];
    v182.f64[1] = v372;
    *&v183.f64[0] = vdupq_laneq_s64(*&v398[8], 1).u64[0];
    v183.f64[1] = *v398;
    v184 = -(v372 * *&v398[8] - *v373.i64 * *v398);
    *v398 = vmlaq_f64(vnegq_f64(vmulq_f64(v373, v183)), *&v398[8], v182);
    *&v398[16] = v184;
    v404.f64[0] = gm::Matrix<double,3,1>::normalized<int,void>(v398);
    v404.f64[1] = v185;
    v405 = v186;
    v187 = (fmin(v172, 3.14159265) - v171) * 0.5;
    v188 = sin(v187);
    for (kk = 0; kk != 3; ++kk)
    {
      *&v398[kk * 8] = v404.f64[kk] * v188;
    }

    v365 = *v398;
    v190 = *&v398[16];
    v191 = cos(v187);
    *v398 = v365;
    *&v398[16] = v190;
    *v399 = v191;
    v192 = gm::Quaternion<double>::operator*(v398, &v377);
    v193 = 0;
    v402.f64[0] = v192;
    v402.f64[1] = v194;
    v403 = v195;
    do
    {
      v395.f64[v193] = v402.f64[v193] + v389.f64[v193];
      ++v193;
    }

    while (v193 != 3);
    *v369 = v395;
    *&v369[16] = v396;
    v196 = gm::Quaternion<double>::operator*(v398, &v374);
    v197 = 0;
    v402.f64[0] = v196;
    v402.f64[1] = v198;
    v403 = v199;
    do
    {
      v395.f64[v197] = v402.f64[v197] + v389.f64[v197];
      ++v197;
    }

    while (v197 != 3);
    v370 = v395;
    v371 = v396;
    v372 = gm::Quaternion<double>::operator*(v398, &v372);
    *v373.i64 = v200;
    *&v373.i64[1] = v201;
    *(a1 + 176) = 0;
    v28 = 1;
  }

  v202 = (a1 + 296);
  if (*(a1 + 185) == 1)
  {
    LabelingPoint = grl::IconMetricsRenderResult::getLabelingPoint(v21);
    v204 = grl::IconMetricsRenderResult::size(LabelingPoint);
    v205 = *v204;
    v366 = v204[1];
    v206 = grl::IconMetricsRenderResult::size(v21);
    v207 = *v206;
    if (*v206 < *(a1 + 232) * 0.125)
    {
      v208 = *(a1 + 8);
      v209 = gdc::Camera::cameraFrame(v21);
      md::MapDataAccess::groundCoordinateForScreenCursor(v398, v208, v209, *(a1 + 216));
      *(a1 + 192) = *v398;
      *(a1 + 208) = *&v398[16];
      v21 = *a2;
      *(a1 + 232) = *grl::IconMetricsRenderResult::size(*a2);
    }

    v210 = *(a1 + 200);
    v211 = *(a1 + 208);
    v212 = __sincos_stret(*(a1 + 192));
    v213 = 6378137.0 / sqrt(v212.__sinval * v212.__sinval * -0.00669437999 + 1.0);
    v214 = (v213 + v211) * v212.__cosval;
    v215 = __sincos_stret(v210);
    v395.f64[0] = v214 * v215.__cosval;
    v395.f64[1] = v214 * v215.__sinval;
    v396 = (v211 + v213 * 0.99330562) * v212.__sinval;
    v216 = *(a1 + 224);
    if (v216 <= 1.0)
    {
      goto LABEL_116;
    }

    v217 = 0;
    v218 = 0.0;
    do
    {
      v218 = v218 + *&v369[v217] * *&v369[v217];
      v217 += 8;
    }

    while (v217 != 24);
    v219 = 0;
    v220 = 0.0;
    do
    {
      v220 = v220 + v395.f64[v219] * v395.f64[v219];
      ++v219;
    }

    while (v219 != 3);
    if (sqrt(v218) - sqrt(v220) >= v207 * 0.2)
    {
LABEL_116:
      for (mm = 0; mm != 3; ++mm)
      {
        *&v398[mm * 8] = v395.f64[mm] - *&v369[mm * 8];
      }

      v229 = 0;
      v230 = 0.0;
      do
      {
        v230 = v230 + *&v398[v229] * *&v398[v229];
        v229 += 8;
      }

      while (v229 != 24);
      v231 = sqrt(v215.__cosval);
      if (v216 >= 1.0)
      {
        if (v216 <= 1.0)
        {
          v232 = v231 * v216;
        }

        else
        {
          v232 = v231;
          if (v231 <= v366)
          {
            v232 = v231 * v216;
            if (v215.__cosval > v366)
            {
              v232 = v366;
            }
          }
        }
      }

      else
      {
        v232 = v231;
        if (v231 >= v205)
        {
          v232 = v231 * v216;
          if (v215.__cosval < v205)
          {
            v232 = v205;
          }
        }
      }

      for (nn = 0; nn != 3; ++nn)
      {
        *&v398[nn * 8] = v395.f64[nn] - *&v369[nn * 8];
      }

      v234 = gm::Matrix<double,3,1>::normalized<int,void>(v398);
      v235 = 0;
      v389.f64[0] = v234;
      v389.f64[1] = v236;
      v390 = v237;
      do
      {
        *&v398[v235] = *&v369[v235 + 24] - *&v369[v235];
        v235 += 8;
      }

      while (v235 != 24);
      v238 = v231 - v232;
      v239 = gm::Matrix<double,3,1>::normalized<int,void>(v398);
      v240 = 0;
      v377.f64[0] = v239;
      v377.f64[1] = v241;
      v378 = v242;
      do
      {
        *&v398[v240 * 8] = v389.f64[v240] * v238;
        ++v240;
      }

      while (v240 != 3);
      v243 = 0;
      v374 = *v398;
      v375 = *&v398[16];
      do
      {
        *&v398[v243 * 8] = v374.f64[v243] + *&v369[v243 * 8];
        ++v243;
      }

      while (v243 != 3);
      v244 = 0;
      v245 = 0.0;
      do
      {
        v245 = v245 + v395.f64[v244] * v395.f64[v244];
        ++v244;
      }

      while (v244 != 3);
      v404 = 0uLL;
      v405 = 0.0;
      v227 = md::raySphereIntersection(v398, &v377, &v404, &v374, 0, sqrt(v245));
      if (v227)
      {
        v370 = v374;
        v371 = v375;
        *v369 = *v398;
        *&v369[16] = *&v398[16];
        *(a1 + 224) = 0x3FF0000000000000;
      }
    }

    else
    {
      for (i1 = 0; i1 != 24; i1 += 8)
      {
        *&v398[i1] = *&v369[i1 + 24] - *&v369[i1];
      }

      v222 = 0;
      v377 = *v398;
      v378 = *&v398[16];
      v223 = 1.0 - v216;
      do
      {
        *&v398[v222 * 8] = v377.f64[v222] * v223;
        ++v222;
      }

      while (v222 != 3);
      v224 = 0;
      v389 = *v398;
      v390 = *&v398[16];
      do
      {
        *&v398[v224 * 8] = v389.f64[v224] * 0.2;
        ++v224;
      }

      while (v224 != 3);
      for (i2 = 0; i2 != 24; i2 += 8)
      {
        *&v369[i2] = *&v369[i2] + *&v398[i2];
      }

      for (i3 = 0; i3 != 3; ++i3)
      {
        v370.f64[i3] = v370.f64[i3] + *&v398[i3 * 8];
      }

      *(a1 + 224) = 0x3FF0000000000000;
      v227 = 1;
    }

    v28 |= v227;
  }

  v246 = *(a1 + 18);
  if (v246 & 1) != 0 || (*(a1 + 130) & 1) != 0 || (*(a1 + 83) & 1) != 0 || (*(a1 + 186))
  {
    if (*(a1 + 243) == 1)
    {
      if (*(a1 + 256) < 1.0)
      {
        goto LABEL_150;
      }

      *(a1 + 243) = 0;
    }

    goto LABEL_149;
  }

  if ((*(a1 + 243) & 1) == 0)
  {
LABEL_149:
    *(a1 + 264) = *gdc::Camera::pitch(v21);
  }

LABEL_150:
  v247 = gdc::Camera::cameraFrame(v21);
  v248 = *(v247 + 8);
  v249 = *(v247 + 16);
  v250 = __sincos_stret(*v247);
  v251 = 6378137.0 / sqrt(v250.__sinval * v250.__sinval * -0.00669437999 + 1.0);
  v252 = (v251 + v249) * v250.__cosval;
  v253 = __sincos_stret(v248);
  *(a1 + 272) = v252 * v253.__cosval;
  *(a1 + 280) = v252 * v253.__sinval;
  *(a1 + 288) = (v249 + v251 * 0.99330562) * v250.__sinval;
  *(a1 + 256) = 0;
  *(a1 + 244) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *v202 = 0;
  v254 = *a2;
  v255 = grl::IconMetricsRenderResult::size(v254);
  md::CameraManager::getMaxTilt(a1, *v255);
  v257 = v256;
  v258 = gdc::Camera::pitch(v254);
  v259 = v257 < *v258;
  *(a1 + 243) = v259;
  *(a1 + 320) = 0x3FD3333333333333;
  if (v259)
  {
    v260 = gdc::Camera::cameraFrame(v254);
    v261 = *(v260 + 8);
    v262 = *(v260 + 16);
    v263 = __sincos_stret(*v260);
    v264 = 6378137.0 / sqrt(v263.__sinval * v263.__sinval * -0.00669437999 + 1.0);
    v265 = (v264 + v262) * v263.__cosval;
    v266 = __sincos_stret(v261);
    v267 = 0;
    v395.f64[0] = v265 * v266.__cosval;
    v395.f64[1] = v265 * v266.__sinval;
    v396 = (v262 + v264 * 0.99330562) * v263.__sinval;
    do
    {
      *&v398[v267 * 8] = v395.f64[v267] - *(a1 + 272 + v267 * 8);
      ++v267;
    }

    while (v267 != 3);
    v268 = 0;
    v269 = 0.0;
    do
    {
      v269 = v269 + *&v398[v268] * *&v398[v268];
      v268 += 8;
    }

    while (v268 != 24);
    if (sqrt(v269) > 1.0)
    {
      v270 = 0;
      v271 = 0.0;
      do
      {
        v271 = v271 + *&v398[v270] * *&v398[v270];
        v270 += 8;
      }

      while (v270 != 24);
      v272 = 0;
      v273 = 1.0 / sqrt(v271);
      do
      {
        *&v398[v272] = *&v398[v272] * v273;
        v272 += 8;
      }

      while (v272 != 24);
      *v202 = *v398;
      *(a1 + 312) = *&v398[16];
    }

    *(a1 + 256) = 0;
  }

  if ((v28 | a3) != 1)
  {
    if (!v246)
    {
      goto LABEL_178;
    }

    goto LABEL_177;
  }

  geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(&v377, v370.f64);
  v274 = gm::Matrix<double,3,1>::normalized<int,void>(&v370);
  v275 = 0;
  v374.f64[0] = v274;
  v374.f64[1] = v276;
  v375 = v277;
  do
  {
    *&v398[v275] = *&v369[v275 + 24] - *&v369[v275];
    v275 += 8;
  }

  while (v275 != 24);
  v278 = 0;
  v404 = *v398;
  v405 = *&v398[16];
  v279 = 0.0;
  do
  {
    v279 = v279 + v404.f64[v278] * v404.f64[v278];
    ++v278;
  }

  while (v278 != 3);
  v280 = 0;
  v281 = 0.0;
  do
  {
    v281 = v281 + v404.f64[v280] * v404.f64[v280];
    ++v280;
  }

  while (v280 != 3);
  v282 = 0;
  v283 = 1.0 / sqrt(v281);
  do
  {
    v404.f64[v282] = v404.f64[v282] * v283;
    ++v282;
  }

  while (v282 != 3);
  v402.f64[0] = gm::Matrix<double,3,1>::normalized<int,void>(&v372);
  v402.f64[1] = v284;
  v403 = v285;
  v286 = *(a1 + 129);
  if (v286 == 1)
  {
    v287 = 0;
    v288 = 0.0;
    do
    {
      v288 = v288 + v404.f64[v287] * v374.f64[v287];
      ++v287;
    }

    while (v287 != 3);
    v289 = acos(fmin(fmax(-v288, -1.0), 1.0));
  }

  else
  {
    v289 = *v258;
  }

  v290 = sqrt(v279);
  v291 = cos(v289);
  for (i4 = 0; i4 != 3; ++i4)
  {
    *&v398[i4 * 8] = v402.f64[i4] * v291;
  }

  v395 = *v398;
  v396 = *&v398[16];
  v293 = sin(v289);
  for (i5 = 0; i5 != 3; ++i5)
  {
    *&v398[i5 * 8] = v404.f64[i5] * v293;
  }

  v295 = 0;
  v389 = *v398;
  v390 = *&v398[16];
  do
  {
    *&v398[v295 * 8] = v389.f64[v295] + v395.f64[v295];
    ++v295;
  }

  while (v295 != 3);
  v400 = *v398;
  v401 = *&v398[16];
  memset(v399, 0, 32);
  *v398 = v377;
  *&v398[16] = v378;
  gdc::CameraFrame<geo::Radians,double>::toRigidTransformGeocentric(&v389, v398);
  geo::RigidTransform<double,double>::inverse(&v395, &v389);
  v296 = gm::Quaternion<double>::operator*(&v397, &v400);
  v298 = atan2(-v296, v297);
  v389 = v377;
  v390 = v378;
  v394 = 0;
  v392 = v289;
  v393 = v298;
  if ((v286 & 1) == 0)
  {
    md::CameraManager::getMaxTilt(a1, v290);
    if (v289 > v299)
    {
      if (*(a1 + 242) == 1)
      {
        *(a1 + 244) = 1;
        *(a1 + 248) = v289;
      }

      v392 = v299;
    }
  }

  if ((*(a1 + 82) & 1) == 0 && fabs(v377.f64[0]) < 1.30899694)
  {
    v300 = gdc::Camera::heading(v254);
    if (v290 >= 400000.0)
    {
      v301 = *v300;
      v302 = fabs(*v300);
      if (v302 >= 0.01)
      {
        v303 = gdc::Camera::cameraFrame(v254);
        v304 = fmod(3.14159265 - *(v303 + 8) + v377.f64[1], 6.28318531);
        v305 = fabs(fmod(v304 + 6.28318531, 6.28318531) + -3.14159265);
        v306 = v305 + v305;
        v307 = 0.0;
        if (*(a1 + 240) == 1)
        {
          v308 = *v255;
          if (v290 >= *v255)
          {
            v309 = v290 * 0.785398163 / v308;
          }

          else
          {
            v309 = v308 * 0.785398163 / v290;
          }

          v307 = v309 + -0.785398163;
        }

        v310 = fmin(v302, fmax(v306, v307));
        if (v301 > 0.0)
        {
          v310 = -v310;
        }

        v393 = v310 + v298;
      }

      else
      {
        v393 = 0.0;
      }
    }

    else
    {
      v393 = *v300;
    }
  }

  v311 = 0;
  v312 = 0;
  v391 = fmin(v290, 60592301.5);
  v313 = v389.f64[0];
  v314 = (a1 + 328);
  v315 = (a1 + 344);
  do
  {
    v316 = v315[v312];
    v317 = v314[v312];
    if (v311)
    {
      break;
    }

    v311 = 1;
    v312 = 1;
  }

  while (v316 >= v317);
  v318 = v389.f64[1];
  if (v316 < v317)
  {
LABEL_222:
    v323 = 0;
    v324 = 0;
    v325 = (a1 + 360);
    v326 = a1 + 376;
    do
    {
      v327 = *(v326 + 8 * v324);
      v328 = *&v325->i64[v324];
      if (v323)
      {
        break;
      }

      v323 = 1;
      v324 = 1;
    }

    while (v327 >= v328);
    if (v327 < v328)
    {
      goto LABEL_258;
    }

    v329 = 0;
    v330 = 0;
    v331 = a1 + 392;
    v332 = a1 + 408;
    do
    {
      v333 = *(v332 + 8 * v330);
      v334 = *(v331 + 8 * v330);
      if (v329)
      {
        break;
      }

      v329 = 1;
      v330 = 1;
    }

    while (v333 >= v334);
    if (v333 < v334)
    {
      goto LABEL_258;
    }

    v335 = 0;
    v336 = 0.0;
    v337 = 1;
    v338 = v389.f64[1];
    v339 = 1;
    while (1)
    {
      v340 = v337;
      v341 = *(v326 + 8 * v335);
      if (v338 > v341)
      {
        break;
      }

      v343 = *&v325->i64[v335];
      if (v338 < v343)
      {
        v339 = 0;
        v342 = v343 - v338;
        goto LABEL_235;
      }

LABEL_236:
      v337 = 0;
      v338 = v389.f64[0];
      v335 = 1;
      if ((v340 & 1) == 0)
      {
        if (v339)
        {
          goto LABEL_258;
        }

        v344 = 0;
        v345 = 0.0;
        v346 = 1;
        v347 = 1;
        v348 = sqrt(v336);
        while (1)
        {
          v349 = v346;
          v350 = *(v332 + 8 * v344);
          if (v318 > v350)
          {
            break;
          }

          v352 = *(v331 + 8 * v344);
          if (v318 < v352)
          {
            v347 = 0;
            v351 = v352 - v318;
            goto LABEL_243;
          }

LABEL_244:
          v346 = 0;
          v318 = v389.f64[0];
          v344 = 1;
          if ((v349 & 1) == 0)
          {
            if ((v347 & 1) == 0)
            {
              if (v348 > sqrt(v345))
              {
                v325 = (a1 + 392);
              }

              v389 = vminnmq_f64(vmaxnmq_f64(v389, vextq_s8(*v325, *v325, 8uLL)), vextq_s8(v325[1], v325[1], 8uLL));
            }

            goto LABEL_258;
          }
        }

        v347 = 0;
        v351 = v318 - v350;
LABEL_243:
        v345 = v345 + v351 * v351;
        goto LABEL_244;
      }
    }

    v339 = 0;
    v342 = v338 - v341;
LABEL_235:
    v336 = v336 + v342 * v342;
    goto LABEL_236;
  }

  v319 = 0;
  v320 = 1;
  v321 = v389.f64[1];
  while (v321 >= v314[v319] && v321 < v315[v319])
  {
    v322 = v320;
    v320 = 0;
    v321 = v389.f64[0];
    v319 = 1;
    if ((v322 & 1) == 0)
    {
      goto LABEL_222;
    }
  }

  v353 = *v315;
  if (v389.f64[1] < *v314 || v389.f64[1] > v353)
  {
    v355 = v389.f64[1] + -3.14159265;
    v368 = v389.f64[0];
    v356 = fmod(*v314 - (v389.f64[1] + -3.14159265), 6.28318531);
    v357 = fabs(fmod(v356 + 6.28318531, 6.28318531) + -3.14159265);
    v358 = fmod(v353 - v355, 6.28318531);
    v359 = fmod(v358 + 6.28318531, 6.28318531);
    v313 = v368;
    if (v357 <= fabs(v359 + -3.14159265))
    {
      v360 = (a1 + 328);
    }

    else
    {
      v360 = (a1 + 344);
    }

    v389.f64[1] = *v360;
  }

  v389.f64[0] = fmin(fmax(v313, *(a1 + 336)), *(a1 + 352));
LABEL_258:
  gdc::Camera::setCameraFrame(v254, &v389);
  if (*(a1 + 18))
  {
LABEL_177:
    *(a1 + 17) = 0;
  }

LABEL_178:
  if (*(a1 + 130) == 1)
  {
    *(a1 + 129) = 0;
  }

  if (*(a1 + 83) == 1)
  {
    *(a1 + 82) = 0;
  }

  if (*(a1 + 186) == 1)
  {
    *(a1 + 185) = 0;
  }

  *(a1 + 16) = 0;
  *(a1 + 128) = 0;
  *(a1 + 81) = 0;
  *(a1 + 184) = 0;
}

void md::CameraManager::getMaxTilt(md::CameraManager *this, double a2)
{
  if (*(this + 241) == 1 && a2 <= 1500000.0)
  {
    cos(sqrt(fmax(a2, 1.0) * 0.000000666666667) * 3.7699104 + 2.5132736);
  }
}

uint64_t *md::Ribbons::RibbonWriter<md::Ribbons::RoadRibbonDescriptor>::writeVertex(uint64_t *result, uint64_t a2)
{
  v2 = 0;
  v3 = *result;
  v4 = *(a2 + 16);
  v5 = 1;
  do
  {
    v6 = fminf(fmaxf(*(a2 + 12), 0.0), 1.0);
    v7 = v5;
    *v3 = (fminf(fmaxf(*(a2 + 8), 0.0), 1.0) * 65535.0);
    *(v3 + 2) = (v6 * 65535.0);
    *(v3 + 12) = v4;
    v8.i64[0] = *(a2 + 20 + 8 * v2);
    v8.i64[1] = *(a2 + 44 + 8 * v2);
    v9.i64[0] = 0xBF000000BF000000;
    v9.i64[1] = 0xBF000000BF000000;
    *(v3 + 4) = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v9, xmmword_1B33B0C70, v8)));
    v3 += 16;
    v2 = 1;
    v5 = 0;
  }

  while ((v7 & 1) != 0);
  *result = v3;
  return result;
}

void ggl::ConstantDataTyped<ggl::OffsetRibbon::Noise>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::OffsetRibbon::Noise>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3C9C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::TexturedInnerShadowRibbon::ShadowStyle>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::TexturedInnerShadowRibbon::ShadowStyle>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3C970;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Line::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Line::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3C918;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::OuterShadowRibbon::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::OuterShadowRibbon::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3C8C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::OffsetRibbon::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::OffsetRibbon::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5B568;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::TexturedInnerShadowRibbon::PipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3CAC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::TexturedSolidRibbon::PipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3CA90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Line::BasePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3CA58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::OuterShadowRibbon::PipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3CA20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::Ribbons::RibbonBatch<md::Ribbons::RoadRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  *a1 = &unk_1F2A3C868;
  v6 = (a1 + 1016);
  std::vector<std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  md::FrameAllocator<ggl::RenderItem>::reset(a1 + 992);
  free(*(a1 + 992));
  v2 = *(a1 + 968);
  if (v2)
  {
    *(a1 + 976) = v2;
    operator delete(v2);
  }

  v6 = (a1 + 936);
  std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v3 = *(a1 + 912);
  if (v3)
  {
    *(a1 + 920) = v3;
    operator delete(v3);
  }

  for (i = 784; i != -112; i -= 128)
  {
    ggl::RenderItem::~RenderItem((a1 + i));
  }

  return a1;
}

void md::Ribbons::RibbonBatch<md::Ribbons::RoadRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  md::Ribbons::RibbonBatch<md::Ribbons::RoadRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonBatch<md::Ribbons::RoadRibbonDescriptor>::~RibbonBatch(void *a1)
{
  *a1 = &unk_1F2A3C848;
  v2 = a1[132];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::RoadRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::RibbonBatch<md::Ribbons::RoadRibbonDescriptor>::~RibbonBatch(void *a1)
{
  *a1 = &unk_1F2A3C848;
  v2 = a1[132];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return md::Ribbons::RibbonBatch<md::Ribbons::RoadRibbonDescriptor>::~RibbonBatch(a1);
}

void md::RoadBatch::~RoadBatch(md::RoadBatch *this)
{
  *this = &unk_1F2A3C808;
  v2 = 1136;
  while (1)
  {
    v3 = *(this + v2);
    *(this + v2) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v2 -= 8;
    if (v2 == 1080)
    {
      v4 = *(this + 135);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      *this = &unk_1F2A3C848;
      v5 = *(this + 132);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }

      md::Ribbons::RibbonBatch<md::Ribbons::RoadRibbonDescriptor>::~RibbonBatch(this);

      JUMPOUT(0x1B8C62190);
    }
  }
}

{
  *this = &unk_1F2A3C808;
  for (i = 1136; i != 1080; i -= 8)
  {
    v3 = *(this + i);
    *(this + i) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  v4 = *(this + 135);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *this = &unk_1F2A3C848;
  v5 = *(this + 132);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::RoadRibbonDescriptor>::~RibbonBatch(this);
}

void md::RoadBatch::setStyle(void *a1, void *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  a1[134] = v5;
  v6 = a1[135];
  a1[135] = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  if (*a2)
  {
    ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(*(a1[139] + 136), *(a1[139] + 232), *(*a2 + 96), *(*a2 + 104));
    ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(*(a1[138] + 136), *(a1[138] + 232), *(*a2 + 144), *(*a2 + 152));
    ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(*(a1[136] + 136), *(a1[136] + 232), *(*a2 + 80), *(*a2 + 88));
    v7 = a1[137];
    v8 = *(v7 + 136);
    v9 = *(*a2 + 160);
    v10 = *(*a2 + 168);
    *(v8 + 32) = v9;
    *(v8 + 40) = 0;
    v11 = *(v7 + 232);
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = *(v11 + 40);
    *(v11 + 32) = v9;
    *(v11 + 40) = v10;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    v13 = a1[140];
    v14 = *(v13 + 136);
    v15 = *(*a2 + 96);
    v16 = *(*a2 + 104);
    *(v14 + 32) = v15;
    *(v14 + 40) = 0;
    v17 = *(v13 + 232);
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    v18 = *(v17 + 40);
    *(v17 + 32) = v15;
    *(v17 + 40) = v16;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v18);
    }

    v19 = *(v13 + 136);
    v20 = *(*a2 + 192);
    v21 = *(*a2 + 200);
    *(v19 + 48) = v20;
    *(v19 + 56) = 0;
    v22 = *(v13 + 232);
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    v23 = *(v22 + 56);
    *(v22 + 48) = v20;
    *(v22 + 56) = v21;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    }

    v24 = a1[141];
    v25 = *(v24 + 136);
    v26 = *(*a2 + 112);
    v27 = *(*a2 + 120);
    *(v25 + 32) = v26;
    *(v25 + 40) = 0;
    v28 = *(v24 + 232);
    if (v27)
    {
      atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
    }

    v29 = *(v28 + 40);
    *(v28 + 32) = v26;
    *(v28 + 40) = v27;
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v29);
    }

    v30 = *(v24 + 136);
    v31 = *(*a2 + 128);
    v32 = *(*a2 + 136);
    *(v30 + 64) = v31;
    *(v30 + 72) = 0;
    v33 = *(v24 + 232);
    if (v32)
    {
      atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
    }

    v34 = *(v33 + 72);
    *(v33 + 64) = v31;
    *(v33 + 72) = v32;
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v34);
    }

    v35 = *(v24 + 136);
    v36 = *(*a2 + 192);
    v37 = *(*a2 + 200);
    *(v35 + 48) = v36;
    *(v35 + 56) = 0;
    v38 = *(v24 + 232);
    if (v37)
    {
      atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
    }

    v39 = *(v38 + 56);
    *(v38 + 48) = v36;
    *(v38 + 56) = v37;
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v39);
    }

    v40 = a1[142];
    v41 = *(v40 + 136);
    v42 = *(*a2 + 176);
    v43 = *(*a2 + 184);
    *(v41 + 16) = v42;
    *(v41 + 24) = 0;
    v44 = *(v40 + 232);
    if (v43)
    {
      atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
    }

    v45 = *(v44 + 24);
    *(v44 + 16) = v42;
    *(v44 + 24) = v43;
    if (v45)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](v45);
    }
  }
}

uint64_t std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SolidRibbon::PipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SolidRibbon::PipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SolidRibbon::PipelineState>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,std::shared_ptr<ggl::SolidRibbon::PipelineState>>>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}