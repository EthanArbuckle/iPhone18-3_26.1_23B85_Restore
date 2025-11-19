void sub_1B2F3A914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, void *a25)
{
  if (a14 != a16)
  {
    free(a14);
  }

  if (a23 != a25)
  {
    free(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::Registry::storage<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)2>>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  v2 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), a2);
  if (!v2)
  {
    operator new();
  }

  return v2[3];
}

uint64_t gdc::Registry::view<arComponents::ExternalAssetRequestData,gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)3>>(uint64_t a1)
{
  v2 = gdc::Registry::storage<arComponents::ExternalAssetRequestData>(a1);
  v3 = 0;
  v4 = 0xCBF29CE484222325;
  do
  {
    v4 = 0x100000001B3 * (v4 ^ aStdStringViewG_702[v3++ + 38]);
  }

  while (v3 != 122);
  gdc::Registry::storage<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)3>>(a1, v4);
  return v2;
}

void gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::updateRequestStatus(uint64_t a1, uint64_t a2, int a3)
{
  v6 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>(a1);
  v7 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v6, a2);
  if (v7)
  {

    gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::_updateRequestStatus(a1, a2, v7, a3);
  }
}

void assignDataToComponentUsingAssetMap(gdc::Registry *,std::unordered_map<unsigned long long,std::shared_ptr<md::AssetData>> &)::$_0::operator()(uint64_t **a1, uint64_t a2, unint64_t a3)
{
  v21 = a2;
  **a1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a1[1], a3);
  v6 = **a1;
  if (v6)
  {
    v7 = *(v6 + 24);
    v8 = *(v7 + 184);
    if (*(v7 + 192) - v8 == 80)
    {
      v9 = *a1[3];
      *&v17 = a3;
      *(&v17 + 1) = v7;
      v10 = *(v6 + 32);
      v18 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = 0;
      v20 = 0;
      v11 = gdc::Registry::storage<arComponents::AssetDataReference>(v9);
      gdc::ComponentStorageWrapper<arComponents::AssetDataReference>::emplace(v11, a2, &v17);
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v18);
      }

      v12 = *a1[3];
      v17 = *(v8 + 36);
      v18 = *(v8 + 52);
      v13 = gdc::Registry::storage<arComponents::Boundary>(v12);
      gdc::ComponentStorageWrapper<arComponents::Boundary>::emplace(v13, a2, &v17);
      v14 = *a1[3];
      *&v17 = v8;
      v15 = gdc::Registry::storage<arComponents::MeshDataComponent>(v14);
      gdc::ComponentStorageWrapper<arComponents::MeshDataComponent>::emplace(v15, a2, &v17);
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(a1[v16], &v21);
  }
}

void sub_1B2F3AD8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::Registry::storage<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>(uint64_t a1)
{
  v3 = 0x8EC220D18D2A89D2;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x8EC220D18D2A89D2);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::DidChange>(uint64_t a1)
{
  v3 = 0x1191E9FBDD885ABFLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x1191E9FBDD885ABFuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::DidChange>::remove(void *a1, uint64_t a2)
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

void gdc::component::DataRequestObserver::notifyObservers<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v17 = a2;
  v6 = gdc::Registry::_get<gdc::component::DataRequestObserver::ObserverList<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>>(a1, a2);
  if (v6)
  {
    v7 = v6;
    v9 = *v6;
    v8 = *(v6 + 8);
    if (*v6 != v8)
    {
      while (1)
      {
        v18 = *v9;
        if (!gdc::Registry::isValid(a1, &v18))
        {
          break;
        }

        ++v9;
LABEL_5:
        if (v9 == v8)
        {
          goto LABEL_12;
        }
      }

      v10 = v8 - 1;
      while (v10 != v9)
      {
        v8 = v10;
        v11 = *v10--;
        v18 = v11;
        if (gdc::Registry::isValid(a1, &v18))
        {
          v12 = *v9;
          *v9++ = *v8;
          *v8 = v12;
          goto LABEL_5;
        }
      }
    }

    v8 = v9;
LABEL_12:
    v13 = *v7;
    if (*v7 != v8)
    {
      do
      {
        v14 = *v13++;
        v15 = gdc::Registry::_get<gdc::component::DataRequestObserver::Observer<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>>(a1, v14);
        v16 = *(v15 + 8);
        *(v15 + 8) = a3;
        gdc::component::DataRequestObserver::updateStatusCounts(a1, v14, a2, v16, a3);
      }

      while (v13 != v8);
      v13 = *v7;
    }

    if (v13 == v8)
    {
      gdc::Registry::remove<gdc::component::DataRequestObserver::ObserverList<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>>(a1, &v17);
    }

    else if (v8 != *(v7 + 8))
    {
      *(v7 + 8) = v8;
    }
  }
}

uint64_t gdc::Registry::_get<gdc::component::DataRequestObserver::ObserverList<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>>(uint64_t a1, uint64_t a2)
{
  v2 = HIDWORD(a2);
  v3 = 0;
  v4 = 0xCBF29CE484222325;
  do
  {
    v4 = 0x100000001B3 * (v4 ^ aStdStringViewG_871[v3++ + 38]);
  }

  while (v3 != 118);
  v5 = gdc::Registry::storage<gdc::component::DataRequestObserver::ObserverList<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>>(a1, v4);
  v6 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v5 + 4, v2);
  if (v5[8] == v6)
  {
    v7 = v5[11];
  }

  else
  {
    v7 = v5[10] + 24 * ((v6 - v5[7]) >> 3);
  }

  if (v7 == v5[11])
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t gdc::Registry::_get<gdc::component::DataRequestObserver::Observer<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>>(uint64_t a1, uint64_t a2)
{
  v2 = HIDWORD(a2);
  v3 = 0;
  v4 = 0xCBF29CE484222325;
  do
  {
    v4 = 0x100000001B3 * (v4 ^ aStdStringViewG_872[v3++ + 38]);
  }

  while (v3 != 114);
  v5 = gdc::Registry::storage<gdc::component::DataRequestObserver::Observer<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>>(a1, v4);
  v6 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v5 + 4, v2);
  if (v5[8] == v6)
  {
    v7 = v5[11];
  }

  else
  {
    v7 = v5[10] + 12 * ((v6 - v5[7]) >> 3);
  }

  if (v7 == v5[11])
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

BOOL gdc::Registry::remove<gdc::component::DataRequestObserver::ObserverList<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>>(uint64_t a1, uint64_t *a2)
{
  v3 = 0;
  v4 = 0xCBF29CE484222325;
  do
  {
    v4 = 0x100000001B3 * (v4 ^ aStdStringViewG_871[v3++ + 38]);
  }

  while (v3 != 118);
  v5 = gdc::Registry::storage<gdc::component::DataRequestObserver::ObserverList<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>>(a1, v4);
  v6 = *a2;

  return gdc::ComponentStorageWrapper<gdc::component::DataRequestObserver::ObserverList<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>>::remove(v5, v6);
}

uint64_t gdc::Registry::storage<gdc::component::DataRequestObserver::ObserverList<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  v2 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), a2);
  if (!v2)
  {
    operator new();
  }

  return v2[3];
}

BOOL gdc::ComponentStorageWrapper<gdc::component::DataRequestObserver::ObserverList<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>>::remove(void *a1, uint64_t a2)
{
  v13 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 24 * ((v3 - a1[7]) >> 3));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    if (v6 != (v7 - 24))
    {
      std::vector<gdc::Entity>::__assign_with_size[abi:nn200100]<gdc::Entity*,gdc::Entity*>(v6, *(v7 - 24), *(v7 - 16), (*(v7 - 16) - *(v7 - 24)) >> 3);
      v7 = a1[11];
    }

    v9 = v7 - 24;
    v8 = *(v7 - 24);
    if (v8)
    {
      *(v7 - 16) = v8;
      operator delete(v8);
    }

    a1[11] = v9;
    v10 = a1[28];
    if (v10)
    {
      v11 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v10[6], v11, &v13, 1);
        v10 = *v10;
      }

      while (v10);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<gdc::component::DataRequestObserver::ObserverList<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v3);
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

uint64_t gdc::ComponentStorageWrapper<gdc::component::DataRequestObserver::ObserverList<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v4);
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

uint64_t gdc::Registry::storage<gdc::component::DataRequestObserver::Observer<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  v2 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), a2);
  if (!v2)
  {
    operator new();
  }

  return v2[3];
}

BOOL gdc::ComponentStorageWrapper<gdc::component::DataRequestObserver::Observer<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 12 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v8 = *(v7 - 4);
    *v6 = *(v7 - 12);
    *(v6 + 8) = v8;
    a1[11] -= 12;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<gdc::component::DataRequestObserver::Observer<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<gdc::component::DataRequestObserver::Observer<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>>::~ComponentStorageWrapper(uint64_t a1)
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

void gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::DidChange>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::DidChange>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 3;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v8 = a1[11];
    *(v6 + v7) = *(v8 - 1);
    a1[11] = v8 - 1;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>::~ComponentStorageWrapper(uint64_t a1)
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

void gdc::ComponentStorageWrapper<arComponents::MeshDataComponent>::emplace(uint64_t *a1, uint64_t a2, void *a3)
{
  v22 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v22);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v13 = a1[10];
      v14 = (v8 - v13) >> 3;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v16 = v7 - v13;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (!(v17 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      *(8 * v14) = *a3;
      v9 = 8 * v14 + 8;
      if (v13 != v8)
      {
        v18 = v13;
        v19 = (8 * v14 + v13 - v8);
        do
        {
          v20 = *v18;
          v18 += 8;
          *v19++ = v20;
        }

        while (v18 != v8);
      }

      a1[10] = 8 * v14 + v13 - v8;
      a1[11] = v9;
      a1[12] = 0;
      if (v13)
      {
        operator delete(v13);
      }
    }

    else
    {
      *v8 = *a3;
      v9 = (v8 + 8);
    }

    a1[11] = v9;
    v11 = a1[31];
    goto LABEL_23;
  }

  v10 = (a1[10] + v5 - a1[7]);
  *v10 = *a3;
  v11 = a1[31];
  if (v10 == a1[11])
  {
LABEL_23:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v11, &v22, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v11, &v22, 1);
  }
}

void gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::_updateRequestStatus(uint64_t a1, uint64_t a2, _BYTE *a3, int a4)
{
  v5 = *a3;
  if (v5 == a4)
  {
    return;
  }

  gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::_removeStatusTag(a1, a2, v5);
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v17 = 0;
      v18 = 0xCBF29CE484222325;
      do
      {
        v18 = 0x100000001B3 * (v18 ^ aStdStringViewG_702[v17++ + 38]);
      }

      while (v17 != 122);
      v19 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)3>>(a1, v18);
      v82 = a2;
      v20 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v19 + 4, &v82);
      if (v21)
      {
        v22 = v19[11];
        v23 = v19[12];
        if (v22 >= v23)
        {
          v53 = v19[10];
          v54 = v22 - v53 + 1;
          if (v54 < 0)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v55 = v23 - v53;
          if (2 * v55 > v54)
          {
            v54 = 2 * v55;
          }

          if (v55 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v56 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v56 = v54;
          }

          if (v56)
          {
            operator new();
          }

          v24 = v22 - v53 + 1;
          memcpy(0, v53, v22 - v53);
          v19[10] = 0;
          v19[11] = v24;
          v19[12] = 0;
          if (v53)
          {
            operator delete(v53);
          }
        }

        else
        {
          v24 = v22 + 1;
        }

        v19[11] = v24;
        v43 = v19[31];
      }

      else
      {
        v43 = v19[31];
        if (v19[10] + ((v20 - v19[7]) >> 3) != v19[11])
        {
          for (i = v19[16]; i; i = *i)
          {
            std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v43, &v82, 1);
          }

          goto LABEL_96;
        }
      }

      for (j = v19[22]; j; j = *j)
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v43, &v82, 1);
      }

      goto LABEL_96;
    }

    v33 = 0;
    v34 = 0xCBF29CE484222325;
    do
    {
      v34 = 0x100000001B3 * (v34 ^ aStdStringViewG_704[v33++ + 38]);
    }

    while (v33 != 124);
    v35 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)4>>(a1, v34);
    v82 = a2;
    v36 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v35 + 4, &v82);
    if (v37)
    {
      v38 = v35[11];
      v39 = v35[12];
      if (v38 >= v39)
      {
        v61 = v35[10];
        v62 = v38 - v61 + 1;
        if (v62 < 0)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v63 = v39 - v61;
        if (2 * v63 > v62)
        {
          v62 = 2 * v63;
        }

        if (v63 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v64 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v64 = v62;
        }

        if (v64)
        {
          operator new();
        }

        v40 = v38 - v61 + 1;
        memcpy(0, v61, v38 - v61);
        v35[10] = 0;
        v35[11] = v40;
        v35[12] = 0;
        if (v61)
        {
          operator delete(v61);
        }
      }

      else
      {
        v40 = v38 + 1;
      }

      v35[11] = v40;
      v47 = v35[31];
    }

    else
    {
      v47 = v35[31];
      if (v35[10] + ((v36 - v35[7]) >> 3) != v35[11])
      {
        for (k = v35[16]; k; k = *k)
        {
          std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(k[6], v47, &v82, 1);
        }

        goto LABEL_96;
      }
    }

    for (m = v35[22]; m; m = *m)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(m[6], v47, &v82, 1);
    }

    goto LABEL_96;
  }

  if (a4 != 1)
  {
    v25 = 0;
    v26 = 0xCBF29CE484222325;
    do
    {
      v26 = 0x100000001B3 * (v26 ^ aStdStringViewG_700[v25++ + 38]);
    }

    while (v25 != 124);
    v27 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)2>>(a1, v26);
    v82 = a2;
    v28 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v27 + 4, &v82);
    if (v29)
    {
      v30 = v27[11];
      v31 = v27[12];
      if (v30 >= v31)
      {
        v57 = v27[10];
        v58 = v30 - v57 + 1;
        if (v58 < 0)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v59 = v31 - v57;
        if (2 * v59 > v58)
        {
          v58 = 2 * v59;
        }

        if (v59 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v60 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v60 = v58;
        }

        if (v60)
        {
          operator new();
        }

        v32 = v30 - v57 + 1;
        memcpy(0, v57, v30 - v57);
        v27[10] = 0;
        v27[11] = v32;
        v27[12] = 0;
        if (v57)
        {
          operator delete(v57);
        }
      }

      else
      {
        v32 = v30 + 1;
      }

      v27[11] = v32;
      v45 = v27[31];
    }

    else
    {
      v45 = v27[31];
      if (v27[10] + ((v28 - v27[7]) >> 3) != v27[11])
      {
        for (n = v27[16]; n; n = *n)
        {
          std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(n[6], v45, &v82, 1);
        }

        goto LABEL_96;
      }
    }

    for (ii = v27[22]; ii; ii = *ii)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(ii[6], v45, &v82, 1);
    }

    goto LABEL_96;
  }

  v9 = 0;
  v10 = 0xCBF29CE484222325;
  do
  {
    v10 = 0x100000001B3 * (v10 ^ aStdStringViewG_703[v9++ + 38]);
  }

  while (v9 != 121);
  v11 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)1>>(a1, v10);
  v82 = a2;
  v12 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v11 + 4, &v82);
  if (v13)
  {
    v14 = v11[11];
    v15 = v11[12];
    if (v14 >= v15)
    {
      v49 = v11[10];
      v50 = v14 - v49 + 1;
      if (v50 < 0)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v51 = v15 - v49;
      if (2 * v51 > v50)
      {
        v50 = 2 * v51;
      }

      if (v51 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v52 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v52 = v50;
      }

      if (v52)
      {
        operator new();
      }

      v16 = v14 - v49 + 1;
      memcpy(0, v49, v14 - v49);
      v11[10] = 0;
      v11[11] = v16;
      v11[12] = 0;
      if (v49)
      {
        operator delete(v49);
      }
    }

    else
    {
      v16 = v14 + 1;
    }

    v11[11] = v16;
    v41 = v11[31];
    goto LABEL_76;
  }

  v41 = v11[31];
  if (v11[10] + ((v12 - v11[7]) >> 3) == v11[11])
  {
LABEL_76:
    for (jj = v11[22]; jj; jj = *jj)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(jj[6], v41, &v82, 1);
    }

    goto LABEL_96;
  }

  for (kk = v11[16]; kk; kk = *kk)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(kk[6], v41, &v82, 1);
  }

LABEL_96:
  *a3 = a4;
  v69 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::DidChange>(a1);
  v82 = a2;
  v70 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v69 + 4, &v82);
  if (v71)
  {
    v72 = v69[11];
    v73 = v69[12];
    if (v72 >= v73)
    {
      v77 = v69[10];
      v78 = v72 - v77 + 1;
      if (v78 < 0)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v79 = v73 - v77;
      if (2 * v79 > v78)
      {
        v78 = 2 * v79;
      }

      if (v79 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v80 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v80 = v78;
      }

      if (v80)
      {
        operator new();
      }

      v74 = v72 - v77 + 1;
      memcpy(0, v77, v72 - v77);
      v69[10] = 0;
      v69[11] = v74;
      v69[12] = 0;
      if (v77)
      {
        operator delete(v77);
      }
    }

    else
    {
      v74 = v72 + 1;
    }

    v69[11] = v74;
    v75 = v69[31];
    goto LABEL_114;
  }

  v75 = v69[31];
  if (v69[10] + ((v70 - v69[7]) >> 3) == v69[11])
  {
LABEL_114:
    for (mm = v69[22]; mm; mm = *mm)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(mm[6], v75, &v82, 1);
    }

    return;
  }

  for (nn = v69[16]; nn; nn = *nn)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(nn[6], v75, &v82, 1);
  }
}

uint64_t gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::_removeStatusTag(uint64_t result, uint64_t a2, int a3)
{
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v13 = 0;
      v14 = 0xCBF29CE484222325;
      do
      {
        v14 = 0x100000001B3 * (v14 ^ aStdStringViewG_702[v13++ + 38]);
      }

      while (v13 != 122);
      v15 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)3>>(result, v14);

      return gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)3>>::remove(v15, a2);
    }

    else if (a3 == 4)
    {
      v7 = 0;
      v8 = 0xCBF29CE484222325;
      do
      {
        v8 = 0x100000001B3 * (v8 ^ aStdStringViewG_704[v7++ + 38]);
      }

      while (v7 != 124);
      v9 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)4>>(result, v8);

      return gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)4>>::remove(v9, a2);
    }
  }

  else if (a3 == 1)
  {
    v10 = 0;
    v11 = 0xCBF29CE484222325;
    do
    {
      v11 = 0x100000001B3 * (v11 ^ aStdStringViewG_703[v10++ + 38]);
    }

    while (v10 != 121);
    v12 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)1>>(result, v11);

    return gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)1>>::remove(v12, a2);
  }

  else if (a3 == 2)
  {
    v4 = 0;
    v5 = 0xCBF29CE484222325;
    do
    {
      v5 = 0x100000001B3 * (v5 ^ aStdStringViewG_700[v4++ + 38]);
    }

    while (v4 != 124);
    v6 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)2>>(result, v5);

    return gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)2>>::remove(v6, a2);
  }

  return result;
}

uint64_t gdc::Registry::storage<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)4>>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  v2 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), a2);
  if (!v2)
  {
    operator new();
  }

  return v2[3];
}

BOOL gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)4>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)4>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)4>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)1>>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  v2 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), a2);
  if (!v2)
  {
    operator new();
  }

  return v2[3];
}

BOOL gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)1>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)1>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)1>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)3>>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  v2 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), a2);
  if (!v2)
  {
    operator new();
  }

  return v2[3];
}

BOOL gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)3>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)3>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)3>>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)2>>::remove(void *a1, uint64_t a2)
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

uint64_t gdc::Registry::storage<arComponents::ExternalAssetRequestData>(uint64_t a1)
{
  v3 = 0x6195BF5ED04FDED0;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x6195BF5ED04FDED0uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::ExternalAssetRequestData>::remove(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    *v6 = *(v7 - 8);
    a1[11] = v7 - 8;
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

void gdc::ComponentStorageWrapper<arComponents::ExternalAssetRequestData>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::ExternalAssetRequestData>::~ComponentStorageWrapper(uint64_t a1)
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

void gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)2>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)2>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t md::Logic<md::ARExternalAssetDataRequestLogic,md::ARExternalAssetDataRequestContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::LayerDataLogicContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x18488114F1AD890 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v7 = *(a2 + 8);
    v8[0] = gdc::Context::context<md::ARLogicContext>(v7);
    v8[1] = gdc::Context::context<md::LayerDataLogicContext>(v7);
    return (*(*v6 + 160))(v6, a2, v8, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t md::Logic<md::ARExternalAssetDataRequestLogic,md::ARExternalAssetDataRequestContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::LayerDataLogicContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x18488114F1AD890)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7[0] = gdc::Context::context<md::ARLogicContext>(v6);
      v7[1] = gdc::Context::context<md::LayerDataLogicContext>(v6);
      return (*(*v5 + 152))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARExternalAssetDataRequestLogic,md::ARExternalAssetDataRequestContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::LayerDataLogicContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x18488114F1AD890)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7[0] = gdc::Context::context<md::ARLogicContext>(v6);
      v7[1] = gdc::Context::context<md::LayerDataLogicContext>(v6);
      return (*(*v5 + 144))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARExternalAssetDataRequestLogic,md::ARExternalAssetDataRequestContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::LayerDataLogicContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x18488114F1AD890)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7[0] = gdc::Context::context<md::ARLogicContext>(v6);
      v7[1] = gdc::Context::context<md::LayerDataLogicContext>(v6);
      return (*(*v5 + 136))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARExternalAssetDataRequestLogic,md::ARExternalAssetDataRequestContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::LayerDataLogicContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x18488114F1AD890)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7[0] = gdc::Context::context<md::ARLogicContext>(v6);
      v7[1] = gdc::Context::context<md::LayerDataLogicContext>(v6);
      return (*(*v5 + 128))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::ARExternalAssetDataRequestContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARExternalAssetDataRequestContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A17B68;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARExternalAssetDataRequestContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A17B68;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::ARExternalAssetDataRequestLogic::~ARExternalAssetDataRequestLogic(gdc::LayerDataCollector **this)
{
  md::ARExternalAssetDataRequestLogic::~ARExternalAssetDataRequestLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A179F8;
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table((this + 17));
  std::unique_ptr<gdc::LayerDataCollector>::reset[abi:nn200100](this + 16, 0);
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[13]);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[10]);
}

void std::vector<md::TextDataStringInfo::TextFragment,geo::allocator_adapter<md::TextDataStringInfo::TextFragment,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TextDataStringInfo::TextFragment>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char16_t>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TextDataStringInfo::TextFragment>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char16_t>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 2 * a2, 0x1000040BDFB0063uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void **std::basic_string<char16_t,std::char_traits<char16_t>,geo::allocator_adapter<char16_t,mdm::zone_mallocator>>::__assign_external(void **__dst, void *__src, unint64_t a3)
{
  v6 = *(__dst + 23);
  if (v6 < 0)
  {
    v9 = __dst[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < a3)
    {
      v6 = __dst[1];
      goto LABEL_6;
    }

    v6 = HIBYTE(v9);
    v7 = *__dst;
  }

  else
  {
    v7 = __dst;
    if (a3 > 0xA)
    {
      v8 = 10;
LABEL_6:
      std::basic_string<char16_t,std::char_traits<char16_t>,geo::allocator_adapter<char16_t,mdm::zone_mallocator>>::__grow_by_and_replace(__dst, v8, a3 - v8, v6, 0, v6, a3, __src);
      return __dst;
    }
  }

  if (a3)
  {
    memmove(v7, __src, 2 * a3);
    LOBYTE(v6) = *(__dst + 23);
  }

  if ((v6 & 0x80) != 0)
  {
    __dst[1] = a3;
  }

  else
  {
    *(__dst + 23) = a3 & 0x7F;
  }

  *(v7 + a3) = 0;
  return __dst;
}

void std::basic_string<char16_t,std::char_traits<char16_t>,geo::allocator_adapter<char16_t,mdm::zone_mallocator>>::__grow_by_and_replace(void **a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8)
{
  if (0x7FFFFFFFFFFFFFF6 - a2 < a3)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v14 = a1;
  if (*(a1 + 23) < 0)
  {
    v14 = *a1;
  }

  v15 = a3 + a2;
  if (a3 + a2 <= 2 * a2)
  {
    v15 = 2 * a2;
  }

  if ((v15 | 3) == 0xB)
  {
    v16 = 13;
  }

  else
  {
    v16 = (v15 | 3) + 1;
  }

  v17 = v15 >= 0xB;
  v18 = 11;
  if (v17)
  {
    v18 = v16;
  }

  if (a2 > 0x3FFFFFFFFFFFFFF2)
  {
    v19 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v19 = v18;
  }

  v20 = mdm::zone_mallocator::instance(a1);
  v21 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char16_t>(v20, v19);
  v22 = v21;
  if (a5)
  {
    v21 = memmove(v21, v14, 2 * a5);
  }

  if (a7)
  {
    v21 = memmove(&v22[2 * a5], a8, 2 * a7);
  }

  v23 = a4 - (a6 + a5);
  if (v23)
  {
    v21 = memmove(&v22[2 * a5 + 2 * a7], &v14[2 * a5 + 2 * a6], 2 * v23);
  }

  if (a2 != 10)
  {
    v24 = mdm::zone_mallocator::instance(v21);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char16_t>(v24, v14);
  }

  v25 = (a7 + a5 + v23);
  *a1 = v22;
  a1[1] = v25;
  a1[2] = (v19 | 0x8000000000000000);
  *&v22[2 * v25] = 0;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TextDataStringInfo::TextFragment>(uint64_t a1, size_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, a2, 0x100004061B89338uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::basic_string<char16_t,std::char_traits<char16_t>,geo::allocator_adapter<char16_t,mdm::zone_mallocator>>::__grow_by(void **a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (0x7FFFFFFFFFFFFFF7 - a2 < a3)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v9 = a1;
  if (*(a1 + 23) < 0)
  {
    v9 = *a1;
  }

  v10 = a3 + a2;
  if (a3 + a2 <= 2 * a2)
  {
    v10 = 2 * a2;
  }

  if ((v10 | 3) == 0xB)
  {
    v11 = 13;
  }

  else
  {
    v11 = (v10 | 3) + 1;
  }

  v12 = v10 >= 0xB;
  v13 = 11;
  if (v12)
  {
    v13 = v11;
  }

  if (a2 <= 0x3FFFFFFFFFFFFFF2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0x7FFFFFFFFFFFFFF7;
  }

  v15 = mdm::zone_mallocator::instance(a1);
  v16 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char16_t>(v15, v14);
  v17 = v16;
  if (a5)
  {
    v16 = memmove(v16, v9, 2 * a5);
  }

  if (a4 != a5)
  {
    v16 = memmove(&v17[2 * a5], &v9[2 * a5], 2 * (a4 - a5));
  }

  if (a2 != 10)
  {
    v18 = mdm::zone_mallocator::instance(v16);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char16_t>(v18, v9);
  }

  *a1 = v17;
  a1[2] = (v14 | 0x8000000000000000);
}

void **std::basic_string<char16_t,std::char_traits<char16_t>,geo::allocator_adapter<char16_t,mdm::zone_mallocator>>::__assign_no_alias<true>(void **__dst, void *__src, unint64_t a3)
{
  v5 = a3 > 0xA;
  v6 = a3 - 10;
  if (v5)
  {
    std::basic_string<char16_t,std::char_traits<char16_t>,geo::allocator_adapter<char16_t,mdm::zone_mallocator>>::__grow_by_and_replace(__dst, 0xAuLL, v6, *(__dst + 23) & 0x7F, 0, *(__dst + 23) & 0x7F, a3, __src);
  }

  else
  {
    *(__dst + 23) = a3;
    if (a3)
    {
      memmove(__dst, __src, 2 * a3);
    }

    *(__dst + a3) = 0;
  }

  return __dst;
}

void *std::set<unsigned short>::set[abi:nn200100]<unsigned short *>(void *result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  if (a2 != a3)
  {
    v3 = a2;
    v4 = 0;
    v5 = result + 1;
    while (1)
    {
      v6 = result + 1;
      if (v5 == result + 1)
      {
        goto LABEL_9;
      }

      v7 = v4;
      v8 = result + 1;
      if (v4)
      {
        do
        {
          v6 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v6 = v8[2];
          v9 = *v6 == v8;
          v8 = v6;
        }

        while (v9);
      }

      v10 = *v3;
      if (*(v6 + 13) < v10)
      {
LABEL_9:
        v11 = v4 ? v6 + 1 : result + 1;
      }

      else
      {
        v11 = result + 1;
        if (v4)
        {
          v11 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v4;
              v13 = *(v4 + 26);
              if (v10 >= v13)
              {
                break;
              }

              v4 = *v12;
              v11 = v12;
              if (!*v12)
              {
                goto LABEL_13;
              }
            }

            if (v13 >= v10)
            {
              break;
            }

            v11 = v12 + 1;
            v4 = v12[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v11)
      {
LABEL_13:
        operator new();
      }

      if (++v3 == a3)
      {
        break;
      }

      v5 = *result;
      v4 = result[1];
    }
  }

  return result;
}

void md::TextDataStringInfo::generateLineBreakInfo(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 length];
  v7 = v6;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = mdm::zone_mallocator::instance(v6);
    v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned short>(v8, v7);
    v51[0] = v9;
    v52 = &v9[2 * v7];
    bzero(v9, 2 * v7);
    v51[1] = v52;
    [v5 getCharacters:v9 range:{0, v7}];
    v10 = *(a1 + 128);
    switch(v10)
    {
      case 3:
        if (md::TextDataStringInfo::getBreakingCharacterSets(std::set<unsigned short> const*&,std::set<unsigned short> const*&)const::onceToken != -1)
        {
          dispatch_once(&md::TextDataStringInfo::getBreakingCharacterSets(std::set<unsigned short> const*&,std::set<unsigned short> const*&)const::onceToken, &__block_literal_global_14_17428);
        }

        v11 = &md::TextDataStringInfo::getBreakingCharacterSets(std::set<unsigned short> const*&,std::set<unsigned short> const*&)const::localeLeadingCharacterSet;
        v12 = &md::TextDataStringInfo::getBreakingCharacterSets(std::set<unsigned short> const*&,std::set<unsigned short> const*&)const::localeFollowingCharacterSet;
        break;
      case 2:
        if (md::TextDataStringInfo::getBreakingCharacterSets(std::set<unsigned short> const*&,std::set<unsigned short> const*&)const::onceToken[0] != -1)
        {
          dispatch_once(md::TextDataStringInfo::getBreakingCharacterSets(std::set<unsigned short> const*&,std::set<unsigned short> const*&)const::onceToken, &__block_literal_global_16_17429);
        }

        v11 = &md::TextDataStringInfo::getBreakingCharacterSets(std::set<unsigned short> const*&,std::set<unsigned short> const*&)const::localeLeadingCharacterSet;
        v12 = &md::TextDataStringInfo::getBreakingCharacterSets(std::set<unsigned short> const*&,std::set<unsigned short> const*&)const::localeFollowingCharacterSet;
        break;
      case 1:
        if (md::TextDataStringInfo::getBreakingCharacterSets(std::set<unsigned short> const*&,std::set<unsigned short> const*&)const::onceToken != -1)
        {
          dispatch_once(&md::TextDataStringInfo::getBreakingCharacterSets(std::set<unsigned short> const*&,std::set<unsigned short> const*&)const::onceToken, &__block_literal_global_17427);
        }

        v11 = &md::TextDataStringInfo::getBreakingCharacterSets(std::set<unsigned short> const*&,std::set<unsigned short> const*&)const::localeLeadingCharacterSet;
        v12 = &md::TextDataStringInfo::getBreakingCharacterSets(std::set<unsigned short> const*&,std::set<unsigned short> const*&)const::localeFollowingCharacterSet;
        break;
      default:
        if (md::TextDataStringInfo::getBreakingCharacterSets(std::set<unsigned short> const*&,std::set<unsigned short> const*&)const::onceToken != -1)
        {
          dispatch_once(&md::TextDataStringInfo::getBreakingCharacterSets(std::set<unsigned short> const*&,std::set<unsigned short> const*&)const::onceToken, &__block_literal_global_18_17430);
        }

        v11 = &md::TextDataStringInfo::getBreakingCharacterSets(std::set<unsigned short> const*&,std::set<unsigned short> const*&)const::localeLeadingCharacterSet;
        v12 = &md::TextDataStringInfo::getBreakingCharacterSets(std::set<unsigned short> const*&,std::set<unsigned short> const*&)const::localeFollowingCharacterSet;
        break;
    }

    v13 = *v12;
    if (*v12)
    {
      v14 = *v11;
      if (*v11)
      {
        v48 = 0;
        v49 = 0;
        v50 = 0;
        std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__vallocate[abi:nn200100](&v48, v7);
        v15 = v49;
        bzero(v49, 4 * v7);
        v49 = &v15[4 * v7];
        if (*(a1 + 104) - *(a1 + 96) >= 2uLL)
        {
          v16 = 0;
          v17 = v48;
          v18 = v9;
          v19 = v7;
          do
          {
            v20 = *v18;
            v18 += 2;
            if (v20 == 30)
            {
              ++v16;
            }

            *v17++ = v16;
            --v19;
          }

          while (v19);
        }

        v21 = a3[1];
        v22 = v21 - *a3;
        if (v21 == *a3)
        {
          goto LABEL_63;
        }

        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0xCCCCCCCCCCCCCCCDLL * (v22 >> 3);
        if (v26 <= 1)
        {
          v26 = 1;
        }

        v27 = v48;
        while (1)
        {
          v28 = *a3 + 40 * v23;
          v29 = *(v28 + 24);
          if (v7 <= v29)
          {
            goto LABEL_62;
          }

          v30 = v27[v29];
          v31 = *(v28 + 32);
          if (v30 != v24)
          {
            v31 = v31 & 0xFFFFFFEF | (16 * (*(*(a1 + 96) + v30) & 1));
            *(v28 + 32) = v31;
            v24 = v30;
          }

          v32 = *&v9[2 * v29];
          if (v32 - 0x2000 < 0xC || v32 == 32)
          {
            v34 = 8;
          }

          else
          {
            v34 = 0;
          }

          v35 = v34 | v31 & 0xFFFFFFF7;
          *(v28 + 32) = v35;
          v36 = v35 & 0xFFFFFFDF | (32 * ((*(*(a1 + 96) + v24) >> 1) & 1));
          *(v28 + 32) = v36;
          for (i = *(v13 + 8); i; i = *i)
          {
            v38 = *(i + 13);
            if (v32 >= v38)
            {
              if (v38 >= v32)
              {
                v39 = 0;
                goto LABEL_45;
              }

              ++i;
            }
          }

          v39 = 2;
LABEL_45:
          v40 = v39 | v36 & 0xFD;
          *(v28 + 32) = v40;
          v41 = *(v14 + 8);
          if (!v41)
          {
LABEL_50:
            v43 = 1;
            goto LABEL_52;
          }

          while (1)
          {
            v42 = *(v41 + 13);
            if (v32 >= v42)
            {
              break;
            }

LABEL_49:
            v41 = *v41;
            if (!v41)
            {
              goto LABEL_50;
            }
          }

          if (v42 < v32)
          {
            break;
          }

          v43 = 0;
LABEL_52:
          v44 = v40 & 0xFE | v43;
          *(v28 + 32) = v44;
          if (*(a1 + 128))
          {
            v45 = v32 > 0x7F;
          }

          else
          {
            v45 = 0;
          }

          v46 = v45;
          if ((v25 | v46))
          {
            v47 = 4;
          }

          else
          {
            v47 = 0;
          }

          *(v28 + 32) = v47 | v44 & 0xFB;
          v25 = v46;
LABEL_62:
          if (++v23 == v26)
          {
LABEL_63:
            std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v48);
            goto LABEL_64;
          }
        }

        ++v41;
        goto LABEL_49;
      }
    }

LABEL_64:
    std::vector<unsigned short,geo::allocator_adapter<unsigned short,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v51);
  }
}

void sub_1B2F3EF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<unsigned short,geo::allocator_adapter<unsigned short,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void std::vector<unsigned short,geo::allocator_adapter<unsigned short,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned short>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned short>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned short>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 2 * a2, 0x1000040BDFB0063uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::DottedRouteLine::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::DottedRouteLine::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::DottedRouteLine::BaseMesh::~BaseMesh(ggl::DottedRouteLine::BaseMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::DottedRouteLine::BaseMesh::~BaseMesh(ggl::DottedRouteLine::BaseMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::DottedRouteLine::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::DottedRouteLine::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::DottedRouteLine::BasePipelineSetup::~BasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::Logic<md::OverlaysLogic,md::OverlaysContext,md::LogicDependencies<gdc::TypeList<md::PendingSceneContext,md::ElevationContext,md::CameraContext,md::PendingRegistryContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void *std::list<md::OverlayTileData::OverlayTileResource>::erase(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *(v3 + 8) = v4;
  *v4 = v3;
  --*(a1 + 16);
  md::OverlayTileData::OverlayTileResource::~OverlayTileResource((a2 + 2));
  operator delete(a2);
  return v4;
}

void *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,unsigned int,unsigned int>(void *result, unsigned int a2)
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

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

md::OverlaysContext::KeyframeAnimationParameters *md::OverlaysContext::KeyframeAnimationParameters::KeyframeAnimationParameters(md::OverlaysContext::KeyframeAnimationParameters *this, VKRasterTileOverlayProviderData *a2)
{
  v3 = a2;
  *this = [(VKRasterTileOverlayProviderData *)v3 keyframesCount];
  [(VKRasterTileOverlayProviderData *)v3 duration];
  *(this + 1) = v4;
  *(this + 16) = [(VKRasterTileOverlayProviderData *)v3 crossfadeKeyframes];
  *(this + 18) = 0;
  *(this + 20) = 0;

  return this;
}

void *std::__hash_table<std::__hash_value_type<unsigned int,md::OverlaysContext::KeyframeAnimationParameters>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,md::OverlaysContext::KeyframeAnimationParameters>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,md::OverlaysContext::KeyframeAnimationParameters>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,md::OverlaysContext::KeyframeAnimationParameters>>>::__emplace_unique_key_args<unsigned int,unsigned int,md::OverlaysContext::KeyframeAnimationParameters>(void *result, unsigned int a2)
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

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      do
      {
        v5 = *v4;
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    *(a1 + 16) = 0;
    v6 = *(a1 + 8);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v8 = *a2;
  *a2 = 0;
  v9 = *a1;
  *a1 = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v12 = a2[2];
  v11 = a2 + 2;
  v10 = v12;
  v13 = *(v11 - 1);
  *(a1 + 16) = v12;
  *(a1 + 8) = v13;
  *(v11 - 1) = 0;
  v14 = v11[1];
  *(a1 + 24) = v14;
  *(a1 + 32) = *(v11 + 4);
  if (v14)
  {
    v15 = *(v10 + 8);
    v16 = *(a1 + 8);
    if ((v16 & (v16 - 1)) != 0)
    {
      if (v15 >= v16)
      {
        v15 %= v16;
      }
    }

    else
    {
      v15 &= v16 - 1;
    }

    *(*a1 + 8 * v15) = a1 + 16;
    *v11 = 0;
    v11[1] = 0;
  }
}

uint64_t *std::__tree<std::__value_type<unsigned short,gdc::Registry *>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,gdc::Registry *>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,gdc::Registry *>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>(uint64_t a1, unsigned __int16 a2)
{
  v2 = *(a1 + 8);
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
      v4 = *(v2 + 32);
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
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t md::overlayComponents::forEachTagInRegistry<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>(a1);
  std::__function::__value_func<void ()(gdc::Entity)>::__value_func[abi:nn200100](v8, a2);
  v4 = v9;
  if (!v9)
  {
    v11 = 0;
    goto LABEL_5;
  }

  if (v9 != v8)
  {
    v11 = v9;
    v9 = 0;
    goto LABEL_7;
  }

  v11 = v10;
  (*(*v9 + 24))();
  v4 = v11;
  if (!v11)
  {
LABEL_5:
    v13 = 0;
    goto LABEL_10;
  }

LABEL_7:
  if (v4 == v10)
  {
    v13 = v12;
    (*(*v11 + 24))(v11, v12);
  }

  else
  {
    v13 = v4;
    v11 = 0;
  }

LABEL_10:
  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  while (v6 != v5)
  {
    std::function<void ()(gdc::Entity)>::operator()(v13, *v6++);
  }

  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v12);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v10);
  return std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v8);
}

uint64_t std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t md::overlayComponents::forEachTagInRegistry<md::overlayComponents::FoundationMeshType<(gss::MeshType)3>,md::overlayComponents::FoundationMeshType<(gss::MeshType)21>,md::overlayComponents::FoundationMeshType<(gss::MeshType)23>>(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)3>>(a1);
  std::__function::__value_func<void ()(gdc::Entity)>::__value_func[abi:nn200100](v10, a2);
  gdc::RegistryView<md::overlayComponents::FoundationMeshType<(gss::MeshType)3>>::each<std::function<void ()(gdc::Entity)>>(&v7, v10);
  v6 = gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)21>>(a1);
  std::__function::__value_func<void ()(gdc::Entity)>::__value_func[abi:nn200100](v9, a2);
  gdc::RegistryView<md::overlayComponents::FoundationMeshType<(gss::MeshType)21>>::each<std::function<void ()(gdc::Entity)>>(&v6, v9);
  v5 = gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)23>>(a1);
  std::__function::__value_func<void ()(gdc::Entity)>::__value_func[abi:nn200100](v8, a2);
  gdc::RegistryView<md::overlayComponents::FoundationMeshType<(gss::MeshType)23>>::each<std::function<void ()(gdc::Entity)>>(&v5, v8);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v8);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v9);
  return std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v10);
}

void sub_1B2F3FFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](va);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](va1);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v4 - 56);
  _Unwind_Resume(a1);
}

uint64_t md::overlayComponents::forEachTagInRegistry<md::overlayComponents::FoundationMeshType<(gss::MeshType)3>,md::overlayComponents::FoundationMeshType<(gss::MeshType)21>,md::overlayComponents::FoundationMeshType<(gss::MeshType)23>,md::overlayComponents::FoundationMeshType<(gss::MeshType)0>,md::overlayComponents::FoundationMeshType<(gss::MeshType)2>,md::overlayComponents::FoundationMeshType<(gss::MeshType)20>>(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v22 = gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)3>>(a1);
  std::__function::__value_func<void ()(gdc::Entity)>::__value_func[abi:nn200100](v31, a2);
  gdc::RegistryView<md::overlayComponents::FoundationMeshType<(gss::MeshType)3>>::each<std::function<void ()(gdc::Entity)>>(&v22, v31);
  v21 = gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)21>>(a1);
  std::__function::__value_func<void ()(gdc::Entity)>::__value_func[abi:nn200100](v30, a2);
  gdc::RegistryView<md::overlayComponents::FoundationMeshType<(gss::MeshType)21>>::each<std::function<void ()(gdc::Entity)>>(&v21, v30);
  v20 = gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)23>>(a1);
  std::__function::__value_func<void ()(gdc::Entity)>::__value_func[abi:nn200100](v29, a2);
  gdc::RegistryView<md::overlayComponents::FoundationMeshType<(gss::MeshType)23>>::each<std::function<void ()(gdc::Entity)>>(&v20, v29);
  v4 = gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)0>>(a1);
  std::__function::__value_func<void ()(gdc::Entity)>::__value_func[abi:nn200100](v27, a2);
  v6 = v28;
  if (!v28)
  {
    v33 = 0;
    goto LABEL_5;
  }

  if (v28 != v27)
  {
    v33 = v28;
    v28 = 0;
    goto LABEL_7;
  }

  v33 = v32;
  (*(*v28 + 24))(v28, v32, v5);
  v6 = v33;
  if (!v33)
  {
LABEL_5:
    v35 = 0;
    goto LABEL_10;
  }

LABEL_7:
  if (v6 == v32)
  {
    v35 = v34;
    (*(*v33 + 24))(v33, v34);
  }

  else
  {
    v35 = v6;
    v33 = 0;
  }

LABEL_10:
  v8 = *(v4 + 56);
  v7 = *(v4 + 64);
  while (v8 != v7)
  {
    std::function<void ()(gdc::Entity)>::operator()(v35, *v8++);
  }

  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v34);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v32);
  v9 = gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)2>>(a1);
  std::__function::__value_func<void ()(gdc::Entity)>::__value_func[abi:nn200100](v25, a2);
  v11 = v26;
  if (!v26)
  {
    v33 = 0;
    goto LABEL_17;
  }

  if (v26 != v25)
  {
    v33 = v26;
    v26 = 0;
    goto LABEL_19;
  }

  v33 = v32;
  (*(*v26 + 24))(v26, v32, v10);
  v11 = v33;
  if (!v33)
  {
LABEL_17:
    v35 = 0;
    goto LABEL_22;
  }

LABEL_19:
  if (v11 == v32)
  {
    v35 = v34;
    (*(*v33 + 24))(v33, v34);
  }

  else
  {
    v35 = v11;
    v33 = 0;
  }

LABEL_22:
  v13 = *(v9 + 56);
  v12 = *(v9 + 64);
  while (v13 != v12)
  {
    std::function<void ()(gdc::Entity)>::operator()(v35, *v13++);
  }

  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v34);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v32);
  v14 = gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)20>>(a1);
  std::__function::__value_func<void ()(gdc::Entity)>::__value_func[abi:nn200100](v23, a2);
  v16 = v24;
  if (!v24)
  {
    v33 = 0;
    goto LABEL_29;
  }

  if (v24 != v23)
  {
    v33 = v24;
    v24 = 0;
    goto LABEL_31;
  }

  v33 = v32;
  (*(*v24 + 24))(v24, v32, v15);
  v16 = v33;
  if (!v33)
  {
LABEL_29:
    v35 = 0;
    goto LABEL_34;
  }

LABEL_31:
  if (v16 == v32)
  {
    v35 = v34;
    (*(*v33 + 24))(v33, v34);
  }

  else
  {
    v35 = v16;
    v33 = 0;
  }

LABEL_34:
  v17 = *(v14 + 56);
  v18 = *(v14 + 64);
  while (v17 != v18)
  {
    std::function<void ()(gdc::Entity)>::operator()(v35, *v17++);
  }

  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v34);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v32);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v23);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v25);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v27);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v29);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v30);
  return std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v31);
}

void sub_1B2F40418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](&a24);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](&a28);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v28 - 152);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<unsigned short,gdc::Registry *>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,gdc::Registry *>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,gdc::Registry *>>>::__erase_unique<unsigned short>(uint64_t **a1, unsigned __int16 a2)
{
  v4 = (a1 + 1);
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = *(v6 + 16);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && *(v5 + 16) <= a2)
    {
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*a1 == v5)
      {
        *a1 = v11;
      }

      a1[2] = (a1[2] - 1);
      std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v3, v5);

      operator delete(v5);
    }
  }
}

uint64_t md::OverlaysLogic::updateRasterOverlays<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>>(void)::{lambda(gdc::Entity,md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>&)#1}::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 1065353216;
  v6 = gdc::Registry::storage<std::unordered_set<gdc::Registry*>>(*(a1 + 152));
  v7 = gdc::ComponentStorageWrapper<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::get(v6, a2);
  v8 = *(a1 + 160);
  if (v8 != (a1 + 168))
  {
    while (1)
    {
      v9 = gdc::Context::context<md::components::SharedTransformData>(v8[5]);
      if (!v9)
      {
        v17 = GEOGetVectorKitOverlaysLogicLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v33 = "transformData";
          v34 = 2080;
          v35 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/Overlays/OverlaysLogic.mm";
          v36 = 1024;
          v37 = 453;
          _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_ERROR, "Invalid SharedTransformData.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
        }

        goto LABEL_28;
      }

      v10 = v9;
      v11 = *a3;
      if (v9[24] == 1)
      {
        geo::QuadTile::computeHash(v9);
        v10[24] = 0;
      }

      v12 = *(v10 + 2);
      if (*(v11 + 56))
      {
        v14 = *(v11 + 32);
        v24 = (*(v11 + 33) + ((v14 - 0x61C8864680B583EBLL) << 6) + ((v14 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (v14 - 0x61C8864680B583EBLL);
        v25 = (*(v11 + 36) + (v24 << 6) + (v24 >> 2) - 0x61C8864680B583EBLL) ^ v24;
        v13 = (*(v11 + 40) + (v25 << 6) + (v25 >> 2) - 0x61C8864680B583EBLL) ^ v25;
        *(v11 + 48) = v13;
        *(v11 + 56) = 0;
      }

      else
      {
        v13 = *(v11 + 48);
        LODWORD(v14) = *(v11 + 32);
      }

      v15 = *v10;
      v16 = v12 == v13 && v15 == v14;
      if (v16 && v10[1] == *(v11 + 33) && *(v10 + 1) == *(v11 + 36) && *(v10 + 2) == *(v11 + 40))
      {
        break;
      }

      if (v15 != v14)
      {
        goto LABEL_28;
      }

      v18 = v10[1];
      v19 = *(v11 + 33);
      v20 = v19 >= v18;
      v21 = v19 - v18;
      if (v21 != 0 && v20)
      {
        if (*(v10 + 1) == *(v11 + 36) >> v21 && *(v10 + 2) == *(v11 + 40) >> v21)
        {
          break;
        }
      }

      else if (!v21 && *(v10 + 1) == *(v11 + 36) && *(v10 + 2) == *(v11 + 40))
      {
        break;
      }

LABEL_28:
      v22 = v8[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v8[2];
          v16 = *v23 == v8;
          v8 = v23;
        }

        while (!v16);
      }

      v8 = v23;
      if (v23 == (a1 + 168))
      {
        goto LABEL_36;
      }
    }

    std::__hash_table<gdc::Registry *,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,std::allocator<gdc::Registry *>>::__emplace_unique_key_args<gdc::Registry *,gdc::Registry * const&>(&v29, v8[5]);
    goto LABEL_28;
  }

LABEL_36:
  if (!v7)
  {
    v26 = gdc::Registry::storage<std::unordered_set<gdc::Registry*>>(*(a1 + 152));
    gdc::ComponentStorageWrapper<std::unordered_set<gdc::Registry *>>::emplace<std::unordered_set<gdc::Registry *>&>(v26, a2, &v29);
    v27 = gdc::Registry::storage<std::unordered_set<gdc::Registry*>>(*(a1 + 152));
    v7 = gdc::ComponentStorageWrapper<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::get(v27, a2);
LABEL_41:
    md::OverlaysLogic::updateFoundationAssociation(a1, a2, v7);
    return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v29);
  }

  if (!std::operator==[abi:nn200100]<gdc::Registry *,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,std::allocator<gdc::Registry *>>(&v29, v7))
  {
    if (v7 != &v29)
    {
      *(v7 + 32) = v31;
      std::__hash_table<gdc::Registry *,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,std::allocator<gdc::Registry *>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<gdc::Registry *,void *> *>>(v7, v30);
    }

    goto LABEL_41;
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v29);
}

void sub_1B2F408F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t md::OverlaysLogic::updateRasterOverlays<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::Texture>>(void)::{lambda(gdc::Entity,md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::Texture>&)#1}::operator()(uint64_t a1, uint64_t a2, unsigned __int8 **a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 1065353216;
  v6 = gdc::Registry::storage<std::unordered_set<gdc::Registry*>>(*(a1 + 152));
  v7 = gdc::ComponentStorageWrapper<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::get(v6, a2);
  v8 = *(a1 + 160);
  if (v8 != (a1 + 168))
  {
    while (1)
    {
      v9 = gdc::Context::context<md::components::SharedTransformData>(v8[5]);
      if (!v9)
      {
        v17 = GEOGetVectorKitOverlaysLogicLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v33 = "transformData";
          v34 = 2080;
          v35 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/Overlays/OverlaysLogic.mm";
          v36 = 1024;
          v37 = 453;
          _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_ERROR, "Invalid SharedTransformData.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
        }

        goto LABEL_28;
      }

      v10 = v9;
      v11 = *a3;
      if (v9[24] == 1)
      {
        geo::QuadTile::computeHash(v9);
        v10[24] = 0;
      }

      v12 = *(v10 + 2);
      if (v11[24])
      {
        v14 = *v11;
        v24 = (v11[1] + ((v14 - 0x61C8864680B583EBLL) << 6) + ((v14 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (v14 - 0x61C8864680B583EBLL);
        v25 = (*(v11 + 1) + (v24 << 6) + (v24 >> 2) - 0x61C8864680B583EBLL) ^ v24;
        v13 = (*(v11 + 2) + (v25 << 6) + (v25 >> 2) - 0x61C8864680B583EBLL) ^ v25;
        *(v11 + 2) = v13;
        v11[24] = 0;
      }

      else
      {
        v13 = *(v11 + 2);
        LODWORD(v14) = *v11;
      }

      v15 = *v10;
      v16 = v12 == v13 && v15 == v14;
      if (v16 && v10[1] == v11[1] && *(v10 + 1) == *(v11 + 1) && *(v10 + 2) == *(v11 + 2))
      {
        break;
      }

      if (v15 != v14)
      {
        goto LABEL_28;
      }

      v18 = v10[1];
      v19 = v11[1];
      v20 = v19 >= v18;
      v21 = v19 - v18;
      if (v21 != 0 && v20)
      {
        if (*(v10 + 1) == *(v11 + 1) >> v21 && *(v10 + 2) == *(v11 + 2) >> v21)
        {
          break;
        }
      }

      else if (!v21 && *(v10 + 1) == *(v11 + 1) && *(v10 + 2) == *(v11 + 2))
      {
        break;
      }

LABEL_28:
      v22 = v8[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v8[2];
          v16 = *v23 == v8;
          v8 = v23;
        }

        while (!v16);
      }

      v8 = v23;
      if (v23 == (a1 + 168))
      {
        goto LABEL_36;
      }
    }

    std::__hash_table<gdc::Registry *,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,std::allocator<gdc::Registry *>>::__emplace_unique_key_args<gdc::Registry *,gdc::Registry * const&>(&v29, v8[5]);
    goto LABEL_28;
  }

LABEL_36:
  if (!v7)
  {
    v26 = gdc::Registry::storage<std::unordered_set<gdc::Registry*>>(*(a1 + 152));
    gdc::ComponentStorageWrapper<std::unordered_set<gdc::Registry *>>::emplace<std::unordered_set<gdc::Registry *>&>(v26, a2, &v29);
    v27 = gdc::Registry::storage<std::unordered_set<gdc::Registry*>>(*(a1 + 152));
    v7 = gdc::ComponentStorageWrapper<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::get(v27, a2);
LABEL_41:
    md::OverlaysLogic::updateFoundationAssociation(a1, a2, v7);
    return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v29);
  }

  if (!std::operator==[abi:nn200100]<gdc::Registry *,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,std::allocator<gdc::Registry *>>(&v29, v7))
  {
    if (v7 != &v29)
    {
      *(v7 + 32) = v31;
      std::__hash_table<gdc::Registry *,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,std::allocator<gdc::Registry *>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<gdc::Registry *,void *> *>>(v7, v30);
    }

    goto LABEL_41;
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v29);
}

void sub_1B2F40C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t md::OverlaysLogic::updatePolygonOverlays(void)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v51 = 0u;
  v52 = 0u;
  v53 = 1065353216;
  v5 = gdc::Registry::storage<std::unordered_set<gdc::Registry*>>(*(a1 + 152));
  v6 = gdc::ComponentStorageWrapper<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::get(v5, a2);
  v7 = gdc::Registry::storage<std::unordered_map<gdc::Registry*,std::vector<gdc::Entity>>>(*(a1 + 152));
  v8 = gdc::ComponentStorageWrapper<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::get(v7, a2);
  v9 = gdc::Registry::storage<md::overlayComponents::TileIsInView>(*(a1 + 152));
  v48 = v6;
  v10 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v9, a2);
  CanDisable = gdc::Registry::storage<md::overlayComponents::CanDisableDraping>(*(a1 + 152));
  v50 = a2;
  v12 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(CanDisable, a2);
  if (v10)
  {
    if (v8)
    {
      if (*(v8 + 24))
      {
        v13 = v12;
        v14 = gdc::Registry::getOrAdd<gdc::components::RegistryBridgeMap<gdc::Entity>>(*(a1 + 152), a2);
        v15 = *(v8 + 16);
        if (v15)
        {
          v16 = v14;
          do
          {
            v17 = v15[2];
            gdc::components::RegistryBridgeMap<gdc::Entity>::entities(buf, v16, v17);
            v18 = *buf;
            v19 = *&buf[8];
            for (i = *buf; i != v19; ++i)
            {
              if (v13)
              {
                v21 = *(a1 + 920);
              }

              else
              {
                v21 = 1;
              }

              v22 = *i;
              v23 = gdc::Registry::storage<md::components::Visibility>(v17);
              v54 = v21 & 1;
              gdc::ComponentStorageWrapper<md::components::Visibility>::emplace(v23, v22, &v54);
              v24 = *i;
              v25 = gdc::Registry::storage<md::components::VisibilityChanged>(v17);
              gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v25, v24);
            }

            if (v18)
            {
              operator delete(v18);
            }

            v15 = *v15;
          }

          while (v15);
        }
      }
    }
  }

  v26 = *(a1 + 160);
  if (v26 != (a1 + 168))
  {
    while (1)
    {
      v27 = gdc::Context::context<md::components::SharedTransformData>(v26[5]);
      if (!v27)
      {
        v35 = GEOGetVectorKitOverlaysLogicLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "transformData";
          *&buf[12] = 2080;
          *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/Overlays/OverlaysLogic.mm";
          v56 = 1024;
          v57 = 506;
          _os_log_impl(&dword_1B2754000, v35, OS_LOG_TYPE_ERROR, "Invalid SharedTransformData.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
        }

        goto LABEL_47;
      }

      v28 = v27;
      v29 = *(a3 + 88);
      if (v27[24] == 1)
      {
        geo::QuadTile::computeHash(v27);
        v28[24] = 0;
      }

      v30 = *(v28 + 2);
      if (*(v29 + 192))
      {
        v32 = *(v29 + 168);
        v41 = (*(v29 + 169) + ((v32 - 0x61C8864680B583EBLL) << 6) + ((v32 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (v32 - 0x61C8864680B583EBLL);
        v42 = (*(v29 + 172) + (v41 << 6) + (v41 >> 2) - 0x61C8864680B583EBLL) ^ v41;
        v31 = (*(v29 + 176) + (v42 << 6) + (v42 >> 2) - 0x61C8864680B583EBLL) ^ v42;
        *(v29 + 184) = v31;
        *(v29 + 192) = 0;
      }

      else
      {
        v31 = *(v29 + 184);
        LODWORD(v32) = *(v29 + 168);
      }

      v33 = *v28;
      v34 = v30 == v31 && v33 == v32;
      if (v34 && v28[1] == *(v29 + 169) && *(v28 + 1) == *(v29 + 172) && *(v28 + 2) == *(v29 + 176))
      {
        break;
      }

      if (v33 != v32)
      {
        goto LABEL_47;
      }

      v36 = v28[1];
      v37 = *(v29 + 169);
      v38 = v36 - v37;
      if (v36 >= v37)
      {
        if (v36 == v37 && *(v28 + 1) == *(v29 + 172) && *(v28 + 2) == *(v29 + 176))
        {
          break;
        }
      }

      else if (*(v28 + 1) == *(v29 + 172) >> (v37 - v36) && *(v28 + 2) == *(v29 + 176) >> (v37 - v36))
      {
        break;
      }

      if (v37 >= v36)
      {
        if (v37 == v36 && *(v29 + 172) == *(v28 + 1) && *(v29 + 176) == *(v28 + 2))
        {
          break;
        }
      }

      else if (*(v29 + 172) == *(v28 + 1) >> v38 && *(v29 + 176) == *(v28 + 2) >> v38)
      {
        break;
      }

LABEL_47:
      v39 = v26[1];
      if (v39)
      {
        do
        {
          v40 = v39;
          v39 = *v39;
        }

        while (v39);
      }

      else
      {
        do
        {
          v40 = v26[2];
          v34 = *v40 == v26;
          v26 = v40;
        }

        while (!v34);
      }

      v26 = v40;
      if (v40 == (a1 + 168))
      {
        goto LABEL_55;
      }
    }

    std::__hash_table<gdc::Registry *,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,std::allocator<gdc::Registry *>>::__emplace_unique_key_args<gdc::Registry *,gdc::Registry * const&>(&v51, v26[5]);
    goto LABEL_47;
  }

LABEL_55:
  v43 = v48;
  if (!v48)
  {
    v45 = gdc::Registry::storage<std::unordered_set<gdc::Registry*>>(*(a1 + 152));
    v44 = v50;
    gdc::ComponentStorageWrapper<std::unordered_set<gdc::Registry *>>::emplace<std::unordered_set<gdc::Registry *>&>(v45, v50, &v51);
    v46 = gdc::Registry::storage<std::unordered_set<gdc::Registry*>>(*(a1 + 152));
    v43 = gdc::ComponentStorageWrapper<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::get(v46, v50);
LABEL_60:
    md::OverlaysLogic::updateFoundationAssociation(a1, v44, v43);
    return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v51);
  }

  v44 = v50;
  if (!std::operator==[abi:nn200100]<gdc::Registry *,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,std::allocator<gdc::Registry *>>(&v51, v48))
  {
    if (v48 != &v51)
    {
      *(v48 + 32) = v53;
      std::__hash_table<gdc::Registry *,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,std::allocator<gdc::Registry *>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<gdc::Registry *,void *> *>>(v48, v52);
    }

    goto LABEL_60;
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v51);
}

void sub_1B2F41148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t md::OverlaysLogic::pruneSurfaceTexturesForLevel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = a1 + 80 * a2 + 40 * a3;
    v6 = *(*a4 + 48);
    v7 = a1 + 16 * a2 + 8 * a3 + 640;

    return v6(a4, v7, v5 + 344);
  }

  else
  {
    v9 = std::__throw_bad_function_call[abi:nn200100]();
    return geo::TaskQueue::async(v9);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<geo::QuadTile,gdc::Registry *>>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t *std::vector<std::pair<geo::QuadTile,gdc::Registry *>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = 0;
    do
    {
      v6 = v4 + v5;
      *(v6 + 24) = 0;
      *(v6 + 4) = *(v2 + v5 + 4);
      *v6 = *(v2 + v5);
      *(v6 + 16) = *(v2 + v5 + 16);
      *(v6 + 24) = *(v2 + v5 + 24);
      *(v6 + 32) = *(v2 + v5 + 32);
      v5 += 40;
    }

    while (v2 + v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

id GEOGetVectorKitOverlaysLogicLog(void)
{
  if (GEOGetVectorKitOverlaysLogicLog(void)::onceToken[0] != -1)
  {
    dispatch_once(GEOGetVectorKitOverlaysLogicLog(void)::onceToken, &__block_literal_global_32_17491);
  }

  v1 = GEOGetVectorKitOverlaysLogicLog(void)::log;

  return v1;
}

void ___ZL31GEOGetVectorKitOverlaysLogicLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "OverlaysLogic");
  v1 = GEOGetVectorKitOverlaysLogicLog(void)::log;
  GEOGetVectorKitOverlaysLogicLog(void)::log = v0;
}

void _ZNSt3__110__function6__funcIZN2md13OverlaysLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_19PendingSceneContextENS2_16ElevationContextENS2_13CameraContextENS2_22PendingRegistryContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_15OverlaysContextEE3__4NS_9allocatorISM_EEFvvEEclEv()
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = off_1F2A2D550;
  v4 = 0;
  v0 = 0u;
  v1 = 0u;
  v2 = 0;
  operator new();
}

void sub_1B2F41520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id a18)
{
  std::__function::__value_func<void ()(geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const&,VKOverlayLevel)>::~__value_func[abi:nn200100](&a13);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const&,VKOverlayLevel)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::list<std::shared_ptr<ggl::IOSurfaceTexture>>::pop_front(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v4 = *v2;
  v3 = v2[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  *(a1 + 16) = v1 - 1;
  v5 = v2[3];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  operator delete(v2);
}

void _ZNSt3__110__function6__funcIZZN2md13OverlaysLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_19PendingSceneContextENS2_16ElevationContextENS2_13CameraContextENS2_22PendingRegistryContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_15OverlaysContextEENK3__4clEvEUlRT_14VKOverlayLevelE_NS_9allocatorISQ_EEFvRKN3geo11_retain_ptrIU8__strongP9VKOverlayNST_16_retain_objc_arcENST_17_release_objc_arcENST_10_hash_objcENST_11_equal_objcEEESP_EEclES14_OSP_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v32[12] = *MEMORY[0x1E69E9840];
  v25 = *a3;
  v28 = *(a1 + 8);
  v3 = [*(a2 + 8) customTileProvider];

  if (v3)
  {
    v4 = a2;
    v5 = [*(a2 + 8) areResourcesRequired];
    for (i = *(v28 + 80 * v25 + 40 * v5 + 360); i; v4 = a2)
    {
      v8 = *(i + 17) | 0x200000000;
      v30 = (*(i + 6) | (*(i + 5) << 32));
      v31 = v8;
      v9 = *(v4 + 8);
      [v9 didExitKey:&v30];

      i = *i;
    }

    v24 = v5;
    v10 = v28 + 48 * v25 + 24 * v5;
    v11 = *(v10 + 504);
    for (j = *(v10 + 512); v11 != j; v4 = a2)
    {
      v13 = *(v11 + 1) | 0x200000000;
      v30 = (*(v11 + 8) | (*(v11 + 4) << 32));
      v31 = v13;
      v14 = *(v4 + 8);
      [v14 didEnterKey:&v30 withFallback:*(v11 + 32)];

      v11 += 40;
    }

    v15 = v28 + 80 * v25 + 40 * v24;
    v16 = *(v15 + 208);
    if (v16)
    {
      if (!(v16 >> 60))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v16);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (*(v15 + 200))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(1uLL);
    }

    for (k = *(v15 + 200); k; k = *k)
    {
      LOBYTE(v6) = *(k + 17);
      exp2((**(a1 + 16) - v6));
      v32[3] = *(*(a1 + 32) + 16 * v25 + 8 * v24);
      v18 = k[6];
      v19 = *(v18 + 768);
      for (m = v18 + 760; v19 != m; v19 = *(v19 + 8))
      {
        v20 = *(v19 + 112);
        if (v20)
        {
          v27 = v19;
          memset(v32, 0, 24);
          v21 = v20[1] - *v20;
          if (v21)
          {
            v22 = 0x8E38E38E38E38E39 * (v21 >> 4);
            if (v22 < 0x1C71C71C71C71C8)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<md::OverlayTileData::OverlayTileResource::CustomTile>>(v22);
            }

            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v30 = v32;
          std::vector<md::OverlayTileData::OverlayTileResource::CustomTile>::__destroy_vector::operator()[abi:nn200100](&v30);
          v19 = v27;
        }
      }
    }

    ++*(*(a1 + 32) + 16 * v25 + 8 * v24);
  }
}

void sub_1B2F42B4C(_Unwind_Exception *a1)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *std::__hash_table<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,std::__unordered_map_hasher<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyHash,md::SurfaceKeyEqual,true>,std::__unordered_map_equal<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyEqual,md::SurfaceKeyHash,true>,std::allocator<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>>>::find<md::SurfaceKey>(void *a1, geo::QuadTile *this)
{
  v4 = md::FoundationKeyHash::operator()(this);
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
    v12 = *(i + 1);
    if (v6 == v12)
    {
      if (std::__unordered_map_equal<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::equal_to<md::FoundationKey>,md::FoundationKeyHash,true>::operator()[abi:nn200100](i + 16, this))
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

{
  v4 = md::FoundationKeyHash::operator()(this);
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
    v12 = *(i + 1);
    if (v12 == v6)
    {
      if (std::__unordered_map_equal<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::equal_to<md::FoundationKey>,md::FoundationKeyHash,true>::operator()[abi:nn200100](i + 16, this))
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

void *std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
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
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
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

  v5 = *(*a1 + 8 * v4);
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

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_1B2F43590(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>::__destroy_vector::operator()[abi:nn200100](va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

unsigned __int8 *geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>::operator[](unsigned __int8 **a1, unsigned __int8 a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    goto LABEL_7;
  }

  v5 = *a1;
  while (*v5 != a2)
  {
    v5 += 32;
    if (v5 == v4)
    {
      goto LABEL_7;
    }
  }

  if (v5 == v4)
  {
LABEL_7:
    v28[0] = v28;
    v28[1] = v28;
    v28[2] = 0;
    v29 = a2;
    v30[0] = v30;
    v30[1] = v30;
    v30[2] = 0;
    if (v3 == v4)
    {
      goto LABEL_13;
    }

    v5 = v3;
    while (*v5 != a2)
    {
      v5 += 32;
      if (v5 == v4)
      {
        goto LABEL_13;
      }
    }

    if (v5 == v4)
    {
LABEL_13:
      v6 = a1[2];
      if (v4 >= v6)
      {
        v8 = (v4 - v3) >> 5;
        if ((v8 + 1) >> 59)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v9 = v6 - v3;
        v10 = v9 >> 4;
        if (v9 >> 4 <= (v8 + 1))
        {
          v10 = v8 + 1;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFE0)
        {
          v11 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        v34 = a1;
        if (v11)
        {
          if (!(v11 >> 59))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v31 = 0;
        v32 = (32 * v8);
        v33 = (32 * v8);
        *v32 = a2;
        std::list<std::shared_ptr<ggl::IOSurfaceTexture>>::list((32 * v8 + 8), v30);
        *&v33 = v33 + 32;
        v12 = *a1;
        v13 = a1[1];
        v14 = &v32[*a1 - v13];
        if (*a1 != v13)
        {
          v15 = 0;
          do
          {
            v16 = &v14[v15];
            v17 = &v12[v15];
            *v16 = v12[v15];
            v18 = &v14[v15 + 8];
            *(v16 + 1) = v18;
            *(v16 + 2) = v18;
            *(v16 + 3) = 0;
            v19 = *&v12[v15 + 24];
            if (v19)
            {
              v21 = *(v17 + 1);
              v20 = *(v17 + 2);
              v22 = *(v21 + 8);
              v23 = *v20;
              *(v23 + 8) = v22;
              *v22 = v23;
              v24 = *v18;
              *(v24 + 8) = v20;
              *v20 = v24;
              *v18 = v21;
              *(v21 + 8) = v18;
              *(v16 + 3) = v19;
              *(v17 + 3) = 0;
            }

            v15 += 32;
          }

          while (&v12[v15] != v13);
          do
          {
            std::__list_imp<std::shared_ptr<ggl::IOSurfaceTexture>>::clear(v12 + 1);
            v12 += 32;
          }

          while (v12 != v13);
          v12 = *a1;
        }

        *a1 = v14;
        v25 = a1[2];
        v27 = v33;
        *(a1 + 1) = v33;
        *&v33 = v12;
        *(&v33 + 1) = v25;
        v31 = v12;
        v32 = v12;
        std::__split_buffer<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>::~__split_buffer(&v31);
        v7 = v27;
      }

      else
      {
        *v4 = a2;
        std::list<std::shared_ptr<ggl::IOSurfaceTexture>>::list((v4 + 8), v30);
        v7 = v4 + 32;
        a1[1] = (v4 + 32);
      }

      a1[1] = v7;
      v5 = (v7 - 32);
    }

    std::__list_imp<std::shared_ptr<ggl::IOSurfaceTexture>>::clear(v30);
    std::__list_imp<std::shared_ptr<ggl::IOSurfaceTexture>>::clear(v28);
  }

  return v5 + 8;
}

void sub_1B2F4380C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__list_imp<std::shared_ptr<ggl::IOSurfaceTexture>>::clear(v3);
  std::__list_imp<std::shared_ptr<ggl::IOSurfaceTexture>>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::OverlaysLogic::checkoutSurfaceTexture(unsigned int,unsigned char,unsigned short)::$_0,std::allocator<md::OverlaysLogic::checkoutSurfaceTexture(unsigned int,unsigned char,unsigned short)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t result)
{
  v2 = *MEMORY[0x1E69E9840];
  if (**(result + 8))
  {
    ggl::Texture2D::vendImplicitLoadItem(v1);
  }

  return result;
}

uint64_t std::__function::__func<md::OverlaysLogic::checkoutSurfaceTexture(unsigned int,unsigned char,unsigned short)::$_0,std::allocator<md::OverlaysLogic::checkoutSurfaceTexture(unsigned int,unsigned char,unsigned short)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &off_1F2A180F8;
  a2[1] = v2;
  return result;
}

void std::__shared_ptr_emplace<ggl::IOSurfaceTexture>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5D7B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__list_imp<std::shared_ptr<ggl::IOSurfaceTexture>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void *std::list<std::shared_ptr<ggl::IOSurfaceTexture>>::list(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

uint64_t std::__split_buffer<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__list_imp<std::shared_ptr<ggl::IOSurfaceTexture>>::clear((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 4;
        std::__list_imp<std::shared_ptr<ggl::IOSurfaceTexture>>::clear(v4 - 3);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::~__hash_table(v2 + 56);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::OverlayTileData::OverlayTileResource::CustomTile>>(unint64_t a1)
{
  if (a1 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

__n128 _ZNKSt3__110__function6__funcIZZN2md13OverlaysLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_19PendingSceneContextENS2_16ElevationContextENS2_13CameraContextENS2_22PendingRegistryContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_15OverlaysContextEENK3__4clEvEUlRT_14VKOverlayLevelE_NS_9allocatorISQ_EEFvRKN3geo11_retain_ptrIU8__strongP9VKOverlayNST_16_retain_objc_arcENST_17_release_objc_arcENST_10_hash_objcENST_11_equal_objcEEESP_EE7__cloneEPNS0_6__baseIS15_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A18508;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 _ZNKSt3__110__function6__funcIZN2md13OverlaysLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_19PendingSceneContextENS2_16ElevationContextENS2_13CameraContextENS2_22PendingRegistryContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_15OverlaysContextEE3__4NS_9allocatorISM_EEFvvEE7__cloneEPNS0_6__baseISP_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A184C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 36) = 0;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2md13OverlaysLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_19PendingSceneContextENS2_16ElevationContextENS2_13CameraContextENS2_22PendingRegistryContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_15OverlaysContextEE3__3NS_9allocatorISM_EEFvRNS_10unique_ptrINS_13unordered_mapINS2_10SurfaceKeyENSQ_ImNS_10shared_ptrIN3ggl16IOSurfaceTextureEEENS_4hashImEENS_8equal_toImEENSN_INS_4pairIKmSV_EEEEEENS2_14SurfaceKeyHashENS2_15SurfaceKeyEqualENSN_INS10_IKSR_S14_EEEEEENS_14default_deleteIS1A_EEEERKNS_13unordered_setIN3geo8QuadTileENS1G_12QuadTileHashENSY_IS1H_EENSN_IS1H_EEEEEE7__cloneEPNS0_6__baseIS1O_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A18478;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZN2md13OverlaysLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_19PendingSceneContextENS2_16ElevationContextENS2_13CameraContextENS2_22PendingRegistryContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_15OverlaysContextEE3__2NS_9allocatorISM_EEFvRNS_10unique_ptrINS_13unordered_mapINS2_10SurfaceKeyENSQ_ImNS_10shared_ptrIN3ggl16IOSurfaceTextureEEENS_4hashImEENS_8equal_toImEENSN_INS_4pairIKmSV_EEEEEENS2_14SurfaceKeyHashENS2_15SurfaceKeyEqualENSN_INS10_IKSR_S14_EEEEEENS_14default_deleteIS1A_EEEERKNS_13unordered_setIN3geo8QuadTileENS1G_12QuadTileHashENSY_IS1H_EENSN_IS1H_EEEEEEclES1E_S1N_(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  std::__hash_table<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,std::__unordered_map_hasher<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyHash,md::SurfaceKeyEqual,true>,std::__unordered_map_equal<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyEqual,md::SurfaceKeyHash,true>,std::allocator<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>>>::clear(*a2);

  std::__hash_table<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>>>::clear(v2 + 672);
}

void std::__hash_table<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,std::__unordered_map_hasher<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyHash,md::SurfaceKeyEqual,true>,std::__unordered_map_equal<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyEqual,md::SurfaceKeyHash,true>,std::allocator<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::~__hash_table((v1 + 7));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2md13OverlaysLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_19PendingSceneContextENS2_16ElevationContextENS2_13CameraContextENS2_22PendingRegistryContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_15OverlaysContextEE3__2NS_9allocatorISM_EEFvRNS_10unique_ptrINS_13unordered_mapINS2_10SurfaceKeyENSQ_ImNS_10shared_ptrIN3ggl16IOSurfaceTextureEEENS_4hashImEENS_8equal_toImEENSN_INS_4pairIKmSV_EEEEEENS2_14SurfaceKeyHashENS2_15SurfaceKeyEqualENSN_INS10_IKSR_S14_EEEEEENS_14default_deleteIS1A_EEEERKNS_13unordered_setIN3geo8QuadTileENS1G_12QuadTileHashENSY_IS1H_EENSN_IS1H_EEEEEE7__cloneEPNS0_6__baseIS1O_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A18430;
  a2[1] = v2;
  return result;
}

uint64_t gdc::Registry::storage<std::unordered_set<gdc::Registry*>>(uint64_t a1)
{
  v3 = 0x5D35DD6F80F2990ALL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x5D35DD6F80F2990AuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::ComponentStorageWrapper<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::get(void *a1, uint64_t a2)
{
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  if (a1[8] == v3)
  {
    v4 = a1[11];
  }

  else
  {
    v4 = a1[10] + 40 * ((v3 - a1[7]) >> 3);
  }

  if (v4 == a1[11])
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void *std::__hash_table<gdc::Registry *,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,std::allocator<gdc::Registry *>>::__emplace_unique_key_args<gdc::Registry *,gdc::Registry * const&>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
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

  v8 = *(*result + 8 * v7);
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

  return result;
}

uint64_t gdc::ComponentStorageWrapper<std::unordered_set<gdc::Registry *>>::emplace<std::unordered_set<gdc::Registry *>&>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  std::unordered_set<gdc::Registry *>::unordered_set(&v44, a3);
  v49 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v49);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v22 = a1[10];
      v23 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v22) >> 3);
      if (v23 + 1 > 0x666666666666666)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v24 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v22) >> 3);
      v25 = 2 * v24;
      if (2 * v24 <= v23 + 1)
      {
        v25 = v23 + 1;
      }

      if (v24 >= 0x333333333333333)
      {
        v26 = 0x666666666666666;
      }

      else
      {
        v26 = v25;
      }

      v53 = a1 + 10;
      if (v26)
      {
        if (v26 <= 0x666666666666666)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v50 = 0;
      v51 = 40 * v23;
      v52 = 40 * v23;
      std::unordered_set<gdc::Registry *>::unordered_set(40 * v23, &v44);
      *&v52 = v52 + 40;
      v29 = a1[10];
      v30 = a1[11];
      v31 = v51 + v29 - v30;
      if (v29 != v30)
      {
        v32 = 0;
        do
        {
          v33 = v31 + v32;
          v34 = *(v29 + v32);
          *(v29 + v32) = 0;
          *v33 = v34;
          v35 = *(v29 + v32 + 16);
          *(v33 + 8) = *(v29 + v32 + 8);
          *(v29 + v32 + 8) = 0;
          *(v31 + v32 + 16) = v35;
          v36 = *(v29 + v32 + 24);
          *(v33 + 24) = v36;
          *(v33 + 32) = *(v29 + v32 + 32);
          if (v36)
          {
            v37 = *(v35 + 8);
            v38 = *(v33 + 8);
            if ((v38 & (v38 - 1)) != 0)
            {
              if (v37 >= v38)
              {
                v37 %= v38;
              }
            }

            else
            {
              v37 &= v38 - 1;
            }

            *(v34 + 8 * v37) = v31 + v32 + 16;
            *(v29 + v32 + 16) = 0;
            *(v29 + v32 + 24) = 0;
          }

          v32 += 40;
        }

        while (v29 + v32 != v30);
        do
        {
          v29 = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v29) + 40;
        }

        while (v29 != v30);
      }

      v39 = a1[10];
      a1[10] = v31;
      v40 = a1[12];
      v43 = v52;
      *(a1 + 11) = v52;
      *&v52 = v39;
      *(&v52 + 1) = v40;
      v50 = v39;
      v51 = v39;
      std::__split_buffer<std::unordered_set<gdc::Registry *>>::~__split_buffer(&v50);
      v9 = v43;
    }

    else
    {
      std::unordered_set<gdc::Registry *>::unordered_set(a1[11], &v44);
      v9 = v8 + 40;
      a1[11] = v8 + 40;
    }

    a1[11] = v9;
    v27 = a1[31];
LABEL_44:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v27, &v49, 1);
    }

    return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v44);
  }

  v10 = a1[10] + 40 * ((v5 - a1[7]) >> 3);
  if (*(v10 + 24))
  {
    v11 = *(v10 + 16);
    if (v11)
    {
      do
      {
        v12 = *v11;
        operator delete(v11);
        v11 = v12;
      }

      while (v12);
    }

    *(v10 + 16) = 0;
    v13 = *(v10 + 8);
    if (v13)
    {
      for (j = 0; j != v13; ++j)
      {
        *(*v10 + 8 * j) = 0;
      }
    }

    *(v10 + 24) = 0;
  }

  v15 = v44;
  v44 = 0;
  v16 = *v10;
  *v10 = v15;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = v45;
  v18 = v46;
  *(v10 + 16) = v46;
  *(v10 + 8) = v17;
  v45 = 0;
  v19 = v47;
  *(v10 + 24) = v47;
  *(v10 + 32) = v48;
  if (v19)
  {
    v20 = *(v18 + 8);
    v21 = *(v10 + 8);
    if ((v21 & (v21 - 1)) != 0)
    {
      if (v20 >= v21)
      {
        v20 %= v21;
      }
    }

    else
    {
      v20 &= v21 - 1;
    }

    *(*v10 + 8 * v20) = v10 + 16;
    v46 = 0;
    v47 = 0;
  }

  v27 = a1[31];
  if (v10 == a1[11])
  {
    goto LABEL_44;
  }

  for (k = a1[16]; k; k = *k)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(k[6], v27, &v49, 1);
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v44);
}

void sub_1B2F447CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  std::__split_buffer<std::unordered_set<gdc::Registry *>>::~__split_buffer(va1);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

BOOL std::operator==[abi:nn200100]<gdc::Registry *,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,std::allocator<gdc::Registry *>>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v2 = (a1 + 16);
  v3 = a2[1];
  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  v5 = *&v3 - 1;
LABEL_3:
  v2 = *v2;
  result = v2 == 0;
  if (v2)
  {
    if (v3)
    {
      v7 = v2[2];
      v8 = 0x9DDFEA08EB382D69 * ((8 * (v7 & 0x1FFFFFFF) + 8) ^ HIDWORD(v7));
      v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ (v8 >> 47) ^ v8);
      v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
      if (v4.u32[0] > 1uLL)
      {
        v11 = v10;
        if (v10 >= *&v3)
        {
          v11 = v10 % *&v3;
        }
      }

      else
      {
        v11 = v10 & v5;
      }

      v12 = *(*a2 + 8 * v11);
      if (v12)
      {
        while (1)
        {
          v12 = *v12;
          if (!v12)
          {
            break;
          }

          v13 = v12[1];
          if (v10 == v13)
          {
            if (v12[2] == v7)
            {
              result = 0;
              if (v7 == v12[2])
              {
                goto LABEL_3;
              }

              return result;
            }
          }

          else
          {
            if (v4.u32[0] > 1uLL)
            {
              if (v13 >= *&v3)
              {
                v13 %= *&v3;
              }
            }

            else
            {
              v13 &= v5;
            }

            if (v13 != v11)
            {
              return 0;
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void std::__hash_table<gdc::Registry *,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,std::allocator<gdc::Registry *>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<gdc::Registry *,void *> *>>(void *a1, void *a2)
{
  v4 = a1[1];
  if (!v4)
  {
    goto LABEL_7;
  }

  for (i = 0; i != v4; ++i)
  {
    *(*a1 + 8 * i) = 0;
  }

  v6 = a1[2];
  a1[2] = 0;
  a1[3] = 0;
  if (v6)
  {
    while (a2)
    {
      v6[2] = a2[2];
      v7 = *v6;
      std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__node_insert_multi(a1, v6);
      a2 = *a2;
      v6 = v7;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    do
    {
      v8 = *v6;
      operator delete(v6);
      v6 = v8;
    }

    while (v8);
  }

  else
  {
LABEL_7:
    if (a2)
    {
      operator new();
    }
  }
}

void md::OverlaysLogic::updateFoundationAssociation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 152);
  v7 = gdc::Registry::storage<std::unordered_map<gdc::Registry*,std::vector<gdc::Entity>>>(v6);
  v8 = gdc::ComponentStorageWrapper<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::get(v7, a2);
  if (v8)
  {
    goto LABEL_37;
  }

  v9 = gdc::Registry::storage<std::unordered_map<gdc::Registry*,std::vector<gdc::Entity>>>(v6);
  *__p = 0u;
  *v111 = 0u;
  v112 = 1065353216;
  v113 = a2;
  v10 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v9 + 4, &v113);
  if (v11)
  {
    v13 = v9[11];
    v12 = v9[12];
    if (v13 >= v12)
    {
      v20 = v9[10];
      v21 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - v20) >> 3);
      if (v21 + 1 > 0x666666666666666)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v22 = 0xCCCCCCCCCCCCCCCDLL * ((v12 - v20) >> 3);
      v23 = 2 * v22;
      if (2 * v22 <= v21 + 1)
      {
        v23 = v21 + 1;
      }

      if (v22 >= 0x333333333333333)
      {
        v24 = 0x666666666666666;
      }

      else
      {
        v24 = v23;
      }

      v116 = v9 + 10;
      if (v24)
      {
        if (v24 <= 0x666666666666666)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v114[0] = 0;
      v114[1] = (40 * v21);
      v115[0] = (40 * v21);
      v115[1] = 0;
      std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>::unordered_map(40 * v21, __p);
      v115[0] = v115[0] + 40;
      v25 = v9[10];
      v26 = v9[11];
      v27 = v114[1] + v25 - v26;
      if (v25 != v26)
      {
        v28 = 0;
        do
        {
          v29 = &v27[v28];
          v30 = *(v25 + v28);
          *(v25 + v28) = 0;
          *v29 = v30;
          v31 = *(v25 + v28 + 16);
          *(v29 + 1) = *(v25 + v28 + 8);
          *(v25 + v28 + 8) = 0;
          *&v27[v28 + 16] = v31;
          v32 = *(v25 + v28 + 24);
          *(v29 + 3) = v32;
          *(v29 + 8) = *(v25 + v28 + 32);
          if (v32)
          {
            v33 = *(v31 + 8);
            v34 = *(v29 + 1);
            if ((v34 & (v34 - 1)) != 0)
            {
              if (v33 >= v34)
              {
                v33 %= v34;
              }
            }

            else
            {
              v33 &= v34 - 1;
            }

            *(v30 + 8 * v33) = &v27[v28 + 16];
            *(v25 + v28 + 16) = 0;
            *(v25 + v28 + 24) = 0;
          }

          v28 += 40;
        }

        while (v25 + v28 != v26);
        do
        {
          v25 = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::~__hash_table(v25) + 40;
        }

        while (v25 != v26);
      }

      v14 = v5;
      v35 = v9[10];
      v9[10] = v27;
      v36 = v9[12];
      v106 = v115[0];
      *(v9 + 11) = *v115;
      v115[0] = v35;
      v115[1] = v36;
      v114[0] = v35;
      v114[1] = v35;
      std::__split_buffer<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::~__split_buffer(v114);
      v15 = v106;
    }

    else
    {
      std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>::unordered_map(v9[11], __p);
      v14 = v5;
      v15 = v13 + 40;
      v9[11] = v13 + 40;
    }

    v9[11] = v15;
    v18 = v9[31];
  }

  else
  {
    v14 = v5;
    v16 = v9[10] + 40 * ((v10 - v9[7]) >> 3);
    std::__hash_table<std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>>>::clear(v16);
    __p[0] = 0;
    v17 = *v16;
    *v16 = 0;
    if (v17)
    {
      operator delete(v17);
    }

    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    __p[1] = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 1065353216;
    v18 = v9[31];
    if (v16 != v9[11])
    {
      for (i = v9[16]; i; i = *i)
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v18, &v113, 1);
      }

      goto LABEL_34;
    }
  }

  for (j = v9[22]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v18, &v113, 1);
  }

LABEL_34:
  std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__deallocate_node(v111[0]);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v38 = gdc::Registry::storage<std::unordered_map<gdc::Registry*,std::vector<gdc::Entity>>>(v6);
  v8 = gdc::ComponentStorageWrapper<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::get(v38, a2);
  v5 = v14;
LABEL_37:
  v109 = v8;
  v39 = gdc::Registry::storage<std::vector<gdc::Registry*>>(*(v5 + 152));
  v40 = gdc::ComponentStorageWrapper<md::components::CustomRenderState>::get(v39, a2);
  v41 = v40;
  if (*(a3 + 24))
  {
    *v114 = 0u;
    *v115 = 0u;
    LODWORD(v116) = 1065353216;
    v42 = *(a3 + 16);
    if (v42)
    {
      v103 = v40;
      v105 = v5;
      do
      {
        v43 = v42[2];
        v113 = v43;
        v108 = 0;
        v44 = gdc::Registry::storage<md::components::MeshInstance>(v43);
        v45 = gdc::Registry::storage<md::overlayComponents::Overlayable>(v43);
        v46 = v45;
        v47 = (v45 + 32);
        v49 = v44[7];
        v48 = v44[8];
        if (*(v45 + 64) - *(v45 + 56) >= (v48 - v49))
        {
          v50 = v44 + 4;
        }

        else
        {
          v50 = (v45 + 32);
        }

        if (v44 + 4 == v50)
        {
          __p[0] = &v108;
          __p[1] = v114;
          v111[0] = &v113;
          v111[1] = &v109;
          while (v49 != v48)
          {
            if (*(v46 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v47, *(v49 + 4)))
            {
              md::OverlaysLogic::updateFoundationAssociation(gdc::Entity,std::unordered_set<gdc::Registry *> &)::$_0::operator()(__p, *v49);
            }

            v49 += 8;
          }
        }

        v107 = v42;
        if (v47 == v50)
        {
          __p[0] = &v108;
          __p[1] = v114;
          v111[0] = &v113;
          v111[1] = &v109;
          v77 = *(v46 + 56);
          v78 = *(v46 + 64);
          while (v77 != v78)
          {
            if (v44[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v44 + 4, *(v77 + 4)))
            {
              v79 = *v77;
              geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v44 + 4, HIDWORD(*v77));
              md::OverlaysLogic::updateFoundationAssociation(gdc::Entity,std::unordered_set<gdc::Registry *> &)::$_0::operator()(__p, v79);
            }

            v77 += 8;
          }
        }

        if (*(v105 + 922) == 1 && v108 == 0)
        {
          v52 = v113;
          v53 = gdc::Registry::storage<md::components::MeshInstance>(v113);
          v54 = gdc::Registry::storage<md::overlayComponents::OverlayableFallback>(v52);
          v55 = v54;
          v56 = (v54 + 32);
          v58 = v53[7];
          v57 = v53[8];
          if (*(v54 + 64) - *(v54 + 56) >= (v57 - v58))
          {
            v59 = v53 + 4;
          }

          else
          {
            v59 = (v54 + 32);
          }

          v104 = v59;
          if (v53 + 4 == v59 && v58 != v57)
          {
            do
            {
              if (*(v55 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v56, *(v58 + 1)))
              {
                v61 = *v58;
                __p[0] = &v113;
                v62 = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__emplace_unique_key_args<gdc::Registry *,std::piecewise_construct_t const&,std::tuple<gdc::Registry * const&>,std::tuple<>>(v114, v113);
                v63 = v62;
                v65 = v62[4];
                v64 = v62[5];
                if (v65 >= v64)
                {
                  v67 = v62[3];
                  v68 = (v65 - v67) >> 3;
                  if ((v68 + 1) >> 61)
                  {
LABEL_116:
                    std::__throw_bad_array_new_length[abi:nn200100]();
                  }

                  v69 = v64 - v67;
                  v70 = v69 >> 2;
                  if (v69 >> 2 <= (v68 + 1))
                  {
                    v70 = v68 + 1;
                  }

                  if (v69 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v71 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v71 = v70;
                  }

                  if (v71)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v71);
                  }

                  v72 = (8 * v68);
                  *v72 = v61;
                  v66 = 8 * v68 + 8;
                  v73 = v63[3];
                  v74 = v63[4] - v73;
                  v75 = v72 - v74;
                  memcpy(v72 - v74, v73, v74);
                  v76 = v63[3];
                  v63[3] = v75;
                  v63[4] = v66;
                  v63[5] = 0;
                  if (v76)
                  {
                    operator delete(v76);
                  }
                }

                else
                {
                  *v65 = v61;
                  v66 = (v65 + 1);
                }

                v63[4] = v66;
                std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__erase_unique<gdc::Registry *>(v109, v113);
              }

              ++v58;
            }

            while (v58 != v57);
          }

          if (v56 == v104)
          {
            v80 = *(v55 + 56);
            v81 = *(v55 + 64);
            while (v80 != v81)
            {
              if (v53[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v53 + 4, *(v80 + 1)))
              {
                v82 = *v80;
                geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v53 + 4, HIDWORD(*v80));
                __p[0] = &v113;
                v83 = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__emplace_unique_key_args<gdc::Registry *,std::piecewise_construct_t const&,std::tuple<gdc::Registry * const&>,std::tuple<>>(v114, v113);
                v84 = v83;
                v86 = v83[4];
                v85 = v83[5];
                if (v86 >= v85)
                {
                  v88 = v83[3];
                  v89 = (v86 - v88) >> 3;
                  if ((v89 + 1) >> 61)
                  {
                    goto LABEL_116;
                  }

                  v90 = v85 - v88;
                  v91 = v90 >> 2;
                  if (v90 >> 2 <= (v89 + 1))
                  {
                    v91 = v89 + 1;
                  }

                  if (v90 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v92 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v92 = v91;
                  }

                  if (v92)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v92);
                  }

                  v93 = (8 * v89);
                  *v93 = v82;
                  v87 = 8 * v89 + 8;
                  v94 = v84[3];
                  v95 = v84[4] - v94;
                  v96 = v93 - v95;
                  memcpy(v93 - v95, v94, v95);
                  v97 = v84[3];
                  v84[3] = v96;
                  v84[4] = v87;
                  v84[5] = 0;
                  if (v97)
                  {
                    operator delete(v97);
                  }
                }

                else
                {
                  *v86 = v82;
                  v87 = (v86 + 1);
                }

                v84[4] = v87;
                std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__erase_unique<gdc::Registry *>(v109, v113);
              }

              ++v80;
            }
          }
        }

        v42 = *v107;
      }

      while (*v107);
      v8 = v109;
      v41 = v103;
    }

    std::vector<md::Label *>::reserve(v41, v8[3]);
    for (k = v109 + 2; ; std::vector<md::FrameGraphPass *>::emplace_back<md::FrameGraphPass * const&>(v41, k + 2))
    {
      k = *k;
      if (!k)
      {
        break;
      }
    }

    v99 = v109;
    if (v109 != v114)
    {
      *(v109 + 8) = v116;
      std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,void *> *>>(v99, v115[0]);
    }

    std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__deallocate_node(v115[0]);
    v100 = v114[0];
    v114[0] = 0;
    if (v100)
    {
      operator delete(v100);
    }
  }

  else
  {
    v101 = v8[3];
    if (v101)
    {
      std::vector<md::Label *>::reserve(v40, v101);
      for (m = v8[2]; m; m = *m)
      {
        std::vector<md::FrameGraphPass *>::emplace_back<md::FrameGraphPass * const&>(v41, m + 2);
      }

      std::__hash_table<std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>>>::clear(v8);
    }
  }
}

void sub_1B2F45218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  std::__split_buffer<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::~__split_buffer(&a23);
  std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__deallocate_node(a19);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<md::overlayComponents::Overlayable>(uint64_t a1)
{
  v3 = 0x41A3BFA74D47A0E8;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x41A3BFA74D47A0E8uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void md::OverlaysLogic::updateFoundationAssociation(gdc::Entity,std::unordered_set<gdc::Registry *> &)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  ++*v5;
  v6 = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__emplace_unique_key_args<gdc::Registry *,std::piecewise_construct_t const&,std::tuple<gdc::Registry * const&>,std::tuple<>>(v4, **(a1 + 16));
  v7 = v6;
  v9 = v6[4];
  v8 = v6[5];
  if (v9 >= v8)
  {
    v11 = v6[3];
    v12 = (v9 - v11) >> 3;
    if ((v12 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = v8 - v11;
    v14 = v13 >> 2;
    if (v13 >> 2 <= (v12 + 1))
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v15);
    }

    v16 = (8 * v12);
    *v16 = a2;
    v10 = 8 * v12 + 8;
    v17 = v7[3];
    v18 = v7[4] - v17;
    v19 = v16 - v18;
    memcpy(v16 - v18, v17, v18);
    v20 = v7[3];
    v7[3] = v19;
    v7[4] = v10;
    v7[5] = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v9 = a2;
    v10 = (v9 + 1);
  }

  v7[4] = v10;
  v21 = **(a1 + 24);
  v22 = **(a1 + 16);

  std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__erase_unique<gdc::Registry *>(v21, v22);
}

uint64_t gdc::Registry::storage<md::overlayComponents::OverlayableFallback>(uint64_t a1)
{
  v3 = 0x974739D36332BF1ELL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x974739D36332BF1ELL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void *std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__emplace_unique_key_args<gdc::Registry *,std::piecewise_construct_t const&,std::tuple<gdc::Registry * const&>,std::tuple<>>(void *a1, unint64_t a2)
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

void std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__erase_unique<gdc::Registry *>(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v4 >> 47) ^ v4);
    v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    v7 = vcnt_s8(v2);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
      if (v6 >= *&v2)
      {
        v8 = v6 % *&v2;
      }
    }

    else
    {
      v8 = v6 & (*&v2 - 1);
    }

    v9 = *a1;
    v10 = *(*a1 + 8 * v8);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        v12 = *&v2 - 1;
        do
        {
          v13 = v11[1];
          if (v13 == v6)
          {
            if (v11[2] == a2)
            {
              v14 = v11[1];
              if (v7.u32[0] > 1uLL)
              {
                if (v14 >= *&v2)
                {
                  v14 %= *&v2;
                }
              }

              else
              {
                v14 &= v12;
              }

              v15 = *(v9 + 8 * v14);
              do
              {
                v16 = v15;
                v15 = *v15;
              }

              while (v15 != v11);
              if (v16 == a1 + 2)
              {
                goto LABEL_36;
              }

              v17 = v16[1];
              if (v7.u32[0] > 1uLL)
              {
                if (v17 >= *&v2)
                {
                  v17 %= *&v2;
                }
              }

              else
              {
                v17 &= v12;
              }

              if (v17 != v14)
              {
LABEL_36:
                if (!*v11)
                {
                  goto LABEL_37;
                }

                v18 = *(*v11 + 8);
                if (v7.u32[0] > 1uLL)
                {
                  if (v18 >= *&v2)
                  {
                    v18 %= *&v2;
                  }
                }

                else
                {
                  v18 &= v12;
                }

                if (v18 != v14)
                {
LABEL_37:
                  *(v9 + 8 * v14) = 0;
                }
              }

              v19 = *v11;
              if (*v11)
              {
                v20 = *(v19 + 8);
                if (v7.u32[0] > 1uLL)
                {
                  if (v20 >= *&v2)
                  {
                    v20 %= *&v2;
                  }
                }

                else
                {
                  v20 &= v12;
                }

                if (v20 != v14)
                {
                  *(*a1 + 8 * v20) = v16;
                  v19 = *v11;
                }
              }

              *v16 = v19;
              *v11 = 0;
              --a1[3];
              std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,void *>>>::operator()[abi:nn200100](1, v11);
              return;
            }
          }

          else
          {
            if (v7.u32[0] > 1uLL)
            {
              if (v13 >= *&v2)
              {
                v13 %= *&v2;
              }
            }

            else
            {
              v13 &= v12;
            }

            if (v13 != v8)
            {
              return;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }
}

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::OverlayableFallback>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::overlayComponents::OverlayableFallback>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::OverlayableFallback>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::Overlayable>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::overlayComponents::Overlayable>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::Overlayable>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = i[2];
    v6 = 0x9DDFEA08EB382D69 * ((8 * (v5 & 0x1FFFFFFF) + 8) ^ HIDWORD(v5));
    v7 = 0x9DDFEA08EB382D69 * (HIDWORD(v5) ^ (v6 >> 47) ^ v6);
    v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
    v9 = *(a1 + 8);
    if (!*&v9)
    {
      goto LABEL_18;
    }

    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= *&v9)
      {
        v11 = v8 % *&v9;
      }
    }

    else
    {
      v11 = v8 & (*&v9 - 1);
    }

    v12 = *(*a1 + 8 * v11);
    if (!v12 || (v13 = *v12) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v14 = v13[1];
      if (v14 == v8)
      {
        break;
      }

      if (v10.u32[0] > 1uLL)
      {
        if (v14 >= *&v9)
        {
          v14 %= *&v9;
        }
      }

      else
      {
        v14 &= *&v9 - 1;
      }

      if (v14 != v11)
      {
        goto LABEL_18;
      }

LABEL_17:
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_18;
      }
    }

    if (v13[2] != v5)
    {
      goto LABEL_17;
    }
  }

  return a1;
}

uint64_t std::__split_buffer<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::~__hash_table(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::unordered_set<gdc::Registry *>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<gdc::Registry *,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,std::allocator<gdc::Registry *>>::__emplace_unique_key_args<gdc::Registry *,gdc::Registry * const&>(a1, i[2]);
  }

  return a1;
}

uint64_t std::__split_buffer<std::unordered_set<gdc::Registry *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL gdc::ComponentStorageWrapper<std::unordered_set<gdc::Registry *>>::remove(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 40 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    if (v6 != v7 - 40)
    {
      *(v6 + 32) = *(v7 - 8);
      std::__hash_table<gdc::Registry *,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,std::allocator<gdc::Registry *>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<gdc::Registry *,void *> *>>(v6, *(v7 - 24));
      v7 = a1[11];
    }

    a1[11] = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v7 - 40);
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

void gdc::ComponentStorageWrapper<std::unordered_set<gdc::Registry *>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<std::unordered_set<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v3);
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

void std::vector<std::unordered_set<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::ComponentStorageWrapper<std::unordered_set<gdc::Registry *>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<std::unordered_set<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v4);
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

__n128 std::__function::__func<md::OverlaysLogic::updateOverlaysResources(void)::$_0,std::allocator<md::OverlaysLogic::updateOverlaysResources(void)::$_0>,void ()(VKOverlayLevel,VKOverlayResourceFallbackableMode)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A18080;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unsigned __int8 *std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>>>::find<geo::QuadTile>(void *a1, geo::QuadTile *this)
{
  if (*(this + 24) == 1)
  {
    geo::QuadTile::computeHash(this);
    *(this + 24) = 0;
  }

  v4 = a1[1];
  if (!*&v4)
  {
    return 0;
  }

  v5 = *(this + 2);
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = *(this + 2);
    if (v5 >= *&v4)
    {
      v8 = v5 % *&v4;
    }
  }

  else
  {
    v8 = (*&v4 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (i = *v9; i; i = *i)
  {
    v11 = *(i + 1);
    if (v5 == v11)
    {
      if (std::equal_to<geo::QuadTile>::operator()[abi:nn200100](i + 16, this))
      {
        return i;
      }
    }

    else
    {
      if (v7 > 1)
      {
        if (v11 >= *&v4)
        {
          v11 %= *&v4;
        }
      }

      else
      {
        v11 &= *&v4 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return i;
}

__n128 std::__function::__func<md::OverlaysLogic::updateVisibleTiles(md::LayoutContext const&)::$_0,std::allocator<md::OverlaysLogic::updateVisibleTiles(md::LayoutContext const&)::$_0>,void ()(VKOverlayLevel,VKOverlayResourceFallbackableMode)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A18038;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 25) = 0;
  *(a2 + 28) = 0;
  return result;
}

uint64_t gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)3>>(uint64_t a1)
{
  v3 = 0x835FA63A3E4A7413;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x835FA63A3E4A7413);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t std::__function::__value_func<void ()(gdc::Entity)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t gdc::RegistryView<md::overlayComponents::FoundationMeshType<(gss::MeshType)3>>::each<std::function<void ()(gdc::Entity)>>(uint64_t *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(gdc::Entity)>::__value_func[abi:nn200100](v7, a2);
  if (v8)
  {
    if (v8 == v7)
    {
      v10 = v9;
      (*(*v8 + 24))();
    }

    else
    {
      v10 = v8;
      v8 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v3 = *a1;
  v4 = *(*a1 + 56);
  v5 = *(v3 + 64);
  while (v4 != v5)
  {
    std::function<void ()(gdc::Entity)>::operator()(v10, *v4++);
  }

  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v9);
  return std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v7);
}

void sub_1B2F46A74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](va1);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)21>>(uint64_t a1)
{
  v3 = 0x7C0BC22858AB748ALL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x7C0BC22858AB748AuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::RegistryView<md::overlayComponents::FoundationMeshType<(gss::MeshType)21>>::each<std::function<void ()(gdc::Entity)>>(uint64_t *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(gdc::Entity)>::__value_func[abi:nn200100](v7, a2);
  if (v8)
  {
    if (v8 == v7)
    {
      v10 = v9;
      (*(*v8 + 24))();
    }

    else
    {
      v10 = v8;
      v8 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v3 = *a1;
  v4 = *(*a1 + 56);
  v5 = *(v3 + 64);
  while (v4 != v5)
  {
    std::function<void ()(gdc::Entity)>::operator()(v10, *v4++);
  }

  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v9);
  return std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v7);
}

void sub_1B2F46D14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](va1);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)23>>(uint64_t a1)
{
  v3 = 0x9E43BC98CDFB9D64;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x9E43BC98CDFB9D64);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::RegistryView<md::overlayComponents::FoundationMeshType<(gss::MeshType)23>>::each<std::function<void ()(gdc::Entity)>>(uint64_t *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(gdc::Entity)>::__value_func[abi:nn200100](v7, a2);
  if (v8)
  {
    if (v8 == v7)
    {
      v10 = v9;
      (*(*v8 + 24))();
    }

    else
    {
      v10 = v8;
      v8 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v3 = *a1;
  v4 = *(*a1 + 56);
  v5 = *(v3 + 64);
  while (v4 != v5)
  {
    std::function<void ()(gdc::Entity)>::operator()(v10, *v4++);
  }

  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v9);
  return std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v7);
}

void sub_1B2F46FB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](va1);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)0>>(uint64_t a1)
{
  v3 = 0xD0623BC7489D09BBLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xD0623BC7489D09BBLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)2>>(uint64_t a1)
{
  v3 = 0x43549FEE549D79F2;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x43549FEE549D79F2uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)20>>(uint64_t a1)
{
  v3 = 0x5AE6AA63834E6144;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x5AE6AA63834E6144uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t std::function<void ()(gdc::Entity)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)20>>::contains(v3);
}

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)20>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)20>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)20>>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)2>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)2>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)2>>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)0>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)0>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)0>>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)23>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)23>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)23>>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)21>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)21>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)21>>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)3>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)3>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)3>>::~ComponentStorageWrapper(uint64_t a1)
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

void std::__function::__func<md::OverlaysLogic::updateFoundationSet(void)::$_3,std::allocator<md::OverlaysLogic::updateFoundationSet(void)::$_3>,void ()(gdc::Entity)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = gdc::Registry::storage<md::overlayComponents::Overlayable>(**(a1 + 8));

  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v3, v2);
}

uint64_t std::__function::__func<md::OverlaysLogic::updateFoundationSet(void)::$_3,std::allocator<md::OverlaysLogic::updateFoundationSet(void)::$_3>,void ()(gdc::Entity)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A18218;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::OverlaysLogic::updateFoundationSet(void)::$_2,std::allocator<md::OverlaysLogic::updateFoundationSet(void)::$_2>,void ()(gdc::Entity)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = gdc::Registry::storage<md::overlayComponents::OverlayableFallback>(**(a1 + 8));
  v16 = v2;
  v4 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v3 + 4, &v16);
  if (v5)
  {
    v6 = v3[11];
    v7 = v3[12];
    if (v6 >= v7)
    {
      v11 = v3[10];
      v12 = v6 - v11 + 1;
      if (v12 < 0)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v13 = v7 - v11;
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        operator new();
      }

      v8 = v6 - v11 + 1;
      memcpy(0, v11, v6 - v11);
      v3[10] = 0;
      v3[11] = v8;
      v3[12] = 0;
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      v8 = v6 + 1;
    }

    v3[11] = v8;
    v9 = v3[31];
    goto LABEL_19;
  }

  v9 = v3[31];
  if (v3[10] + ((v4 - v3[7]) >> 3) == v3[11])
  {
LABEL_19:
    for (i = v3[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v9, &v16, 1);
    }

    return;
  }

  for (j = v3[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v9, &v16, 1);
  }
}

uint64_t std::__function::__func<md::OverlaysLogic::updateFoundationSet(void)::$_2,std::allocator<md::OverlaysLogic::updateFoundationSet(void)::$_2>,void ()(gdc::Entity)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A181D0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::OverlaysLogic::updateFoundationSet(void)::$_1,std::allocator<md::OverlaysLogic::updateFoundationSet(void)::$_1>,void ()(gdc::Entity)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = gdc::Registry::storage<md::overlayComponents::Overlayable>(**(a1 + 8));

  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v3, v2);
}

uint64_t std::__function::__func<md::OverlaysLogic::updateFoundationSet(void)::$_1,std::allocator<md::OverlaysLogic::updateFoundationSet(void)::$_1>,void ()(gdc::Entity)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A18188;
  a2[1] = v2;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,md::OverlaysContext::KeyframeAnimationParameters>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,md::OverlaysContext::KeyframeAnimationParameters>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,md::OverlaysContext::KeyframeAnimationParameters>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,md::OverlaysContext::KeyframeAnimationParameters>>>::find<unsigned int>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 _ZNKSt3__110__function6__funcIZN2md13OverlaysLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_19PendingSceneContextENS2_16ElevationContextENS2_13CameraContextENS2_22PendingRegistryContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_15OverlaysContextEE3__1NS_9allocatorISM_EEFv14VKOverlayLevel33VKOverlayResourceFallbackableModeEE7__cloneEPNS0_6__baseISR_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A183E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>>>::__deallocate_node(char *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = (v1 + 24);
      std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>::__destroy_vector::operator()[abi:nn200100](&v3);
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2md13OverlaysLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_19PendingSceneContextENS2_16ElevationContextENS2_13CameraContextENS2_22PendingRegistryContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_15OverlaysContextEE3__0NS_9allocatorISM_EEFv14VKOverlayLevel33VKOverlayResourceFallbackableModeEE7__cloneEPNS0_6__baseISR_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A183A0;
  a2[1] = v2;
  return result;
}

uint64_t md::Logic<md::OverlaysLogic,md::OverlaysContext,md::LogicDependencies<gdc::TypeList<md::PendingSceneContext,md::ElevationContext,md::CameraContext,md::PendingRegistryContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v18[5] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xADE8F13E6C18D970 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v7 = *(a2 + 8);
    v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v7, 0x9F2276D081C2CB20);
    if (v8 && (v9 = v8[5], *(v9 + 8) == 0x9F2276D081C2CB20))
    {
      v10 = *(v9 + 32);
    }

    else
    {
      v10 = 0;
    }

    v11 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v7, 0x8BD499FBD96FBB9ELL);
    if (v11 && (v12 = v11[5], *(v12 + 8) == 0x8BD499FBD96FBB9ELL))
    {
      v13 = *(v12 + 32);
    }

    else
    {
      v13 = 0;
    }

    v14 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v7, 0x1AF456233693CD46uLL);
    if (v14 && (v15 = v14[5], *(v15 + 8) == 0x1AF456233693CD46))
    {
      v16 = *(v15 + 32);
    }

    else
    {
      v16 = 0;
    }

    v17 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v7, 0xA8300AA8F44B09FFLL)[5] + 32);
    v18[0] = v10;
    v18[1] = v13;
    v18[2] = v16;
    v18[3] = v17;
    return (*(*v6 + 160))(v6, a2, v18, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::OverlaysContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::OverlaysContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::OverlaysContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::OverlaysContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A186B8;
  v2 = a1[4];
  if (v2)
  {
    v3 = v2[27];
    if (v3)
    {
      v2[28] = v3;
      operator delete(v3);
    }

    v4 = v2[23];
    if (v4)
    {
      v2[24] = v4;
      operator delete(v4);
    }

    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v2 + 14));
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v2 + 5));
    v5 = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2);
    MEMORY[0x1B8C62190](v5, 0x10A0C4054AB8E80);
  }

  return a1;
}

void md::OverlaysLogic::didBecomeInactive(md::OverlaysLogic *this)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v2 = *(this + 93);
  if (v2)
  {
    v4[0] = &unk_1F2A18628;
    v4[3] = v4;
    geo::TaskQueue::barrierSync(v2, v4);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4);
  }

  md::OverlayContainer::flushCommandQueue(*(this + 89));
  v3[0] = &unk_1F2A18670;
  v3[1] = this;
  v3[3] = v3;
  md::OverlaysLogic::_forEachOverlayLevelAndFallback(v3);
  std::__function::__value_func<void ()(VKOverlayLevel,VKOverlayResourceFallbackableMode)>::~__value_func[abi:nn200100](v3);
  std::__hash_table<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>>>::clear(this + 672);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>>>::clear(this + 600);
}

void sub_1B2F489C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::OverlaysLogic::didBecomeInactive(void)::$_1,std::allocator<md::OverlaysLogic::didBecomeInactive(void)::$_1>,void ()(VKOverlayLevel,VKOverlayResourceFallbackableMode)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A18670;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::OverlaysLogic::reset(void)::$_1,std::allocator<md::OverlaysLogic::reset(void)::$_1>,void ()(VKOverlayLevel,VKOverlayResourceFallbackableMode)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A185E0;
  a2[1] = v2;
  return result;
}

void md::OverlaysLogic::~OverlaysLogic(md::OverlaysLogic *this)
{
  md::OverlaysLogic::~OverlaysLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  v22[4] = *MEMORY[0x1E69E9840];
  *this = &unk_1F2A17D48;
  v2 = *(this + 93);
  if (v2)
  {
    v22[0] = &unk_1F2A17FC0;
    v22[3] = v22;
    geo::TaskQueue::barrierSync(v2, v22);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v22);
  }

  if (*(this + 15))
  {
    MapsFeature_RemoveBlockListener();
    v3 = *(this + 15);
    *(this + 15) = 0;
  }

  std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear(this + 118);
  v4 = *(this + 117);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 840);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 760);
  v5 = *(this + 90);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>>>::~__hash_table(this + 672);
  v6 = (this + 664);
  for (i = 672; i != 640; i -= 16)
  {
    v8 = -16;
    v9 = v6;
    do
    {
      std::unique_ptr<std::unordered_map<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>,md::SurfaceKeyHash,md::SurfaceKeyEqual,std::allocator<std::pair<md::SurfaceKey const,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>>>>::reset[abi:nn200100](v9--, 0);
      v8 += 8;
    }

    while (v8);
    v6 -= 2;
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(this + 600);
  v10 = this + 584;
  for (j = 600; j != 504; j -= 48)
  {
    v12 = -48;
    v13 = v10;
    do
    {
      v14 = *(v13 - 1);
      if (v14)
      {
        *v13 = v14;
        operator delete(v14);
      }

      v13 -= 3;
      v12 += 24;
    }

    while (v12);
    v10 -= 48;
  }

  v15 = this + 464;
  do
  {
    v16 = -80;
    v17 = v15;
    do
    {
      v17 = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v17) - 40;
      v16 += 40;
    }

    while (v16);
    j -= 80;
    v15 -= 80;
  }

  while (j != 344);
  v18 = this + 304;
  do
  {
    v19 = -80;
    v20 = v18;
    do
    {
      v20 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>>>::~__hash_table(v20) - 40;
      v19 += 40;
    }

    while (v19);
    j -= 80;
    v18 -= 80;
  }

  while (j != 184);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 21));
  v21 = *(this + 18);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void sub_1B2F48E94(_Unwind_Exception *a1)
{
  std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear((v1 + 944));
  v3 = *(v1 + 936);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v1 + 840);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v1 + 760);
  v4 = *(v1 + 720);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>>>::~__hash_table(v1 + 672);
  v5 = (v1 + 664);
  for (i = 672; i != 640; i -= 16)
  {
    v7 = -16;
    v8 = v5;
    do
    {
      std::unique_ptr<std::unordered_map<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>,md::SurfaceKeyHash,md::SurfaceKeyEqual,std::allocator<std::pair<md::SurfaceKey const,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>>>>::reset[abi:nn200100](v8--, 0);
      v7 += 8;
    }

    while (v7);
    v5 -= 2;
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(v1 + 600);
  v9 = (v1 + 584);
  v10 = 600;
  while (1)
  {
    v11 = -48;
    v12 = v9;
    do
    {
      v13 = *(v12 - 1);
      if (v13)
      {
        *v12 = v13;
        operator delete(v13);
      }

      v12 -= 3;
      v11 += 24;
    }

    while (v11);
    v10 -= 48;
    v9 -= 6;
    if (v10 == 504)
    {
      v14 = v1 + 464;
      do
      {
        v15 = -80;
        v16 = v14;
        do
        {
          v16 = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v16) - 40;
          v15 += 40;
        }

        while (v15);
        v10 -= 80;
        v14 -= 80;
      }

      while (v10 != 344);
      v17 = v1 + 304;
      do
      {
        v18 = -80;
        v19 = v17;
        do
        {
          v19 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>>>::~__hash_table(v19) - 40;
          v18 += 40;
        }

        while (v18);
        v10 -= 80;
        v17 -= 80;
      }

      while (v10 != 184);
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 168));
      v20 = *(v1 + 144);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v20);
      }

      *v1 = off_1F2A578C0;
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 104));
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 80));
      _Unwind_Resume(a1);
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void md::OverlaysContext::foundationEntitiesInRegistry(md::OverlaysContext *this, gdc::Registry *a2, uint64_t a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v6 = gdc::Registry::storage<md::components::MeshInstance>(a3);
  v7 = gdc::Registry::storage<md::overlayComponents::Overlayable>(a3);
  v8 = v7;
  v9 = (v7 + 32);
  v10 = v6[7];
  v11 = v6[8];
  if (*(v7 + 64) - *(v7 + 56) >= (v11 - v10))
  {
    v12 = v6 + 4;
  }

  else
  {
    v12 = (v7 + 32);
  }

  v29 = a2;
  if (v6 + 4 != v12 || v10 == v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      if (*(v8 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v9, *(v10 + 1)))
      {
        v30 = *v10;
        std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](this, &v30);
        ++v13;
      }

      ++v10;
    }

    while (v10 != v11);
  }

  if (v9 == v12)
  {
    v24 = *(v8 + 56);
    v23 = *(v8 + 64);
    while (v24 != v23)
    {
      if (v6[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v6 + 4, *(v24 + 1)))
      {
        v25 = *v24;
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v6 + 4, HIDWORD(*v24));
        v30 = v25;
        std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](this, &v30);
        ++v13;
      }

      ++v24;
    }
  }

  if (*(v29 + 208) == 1 && v13 == 0)
  {
    v15 = gdc::Registry::storage<md::components::MeshInstance>(a3);
    v16 = gdc::Registry::storage<md::overlayComponents::OverlayableFallback>(a3);
    v17 = v16;
    v18 = (v16 + 32);
    v20 = v15[7];
    v19 = v15[8];
    if (*(v16 + 64) - *(v16 + 56) >= (v19 - v20))
    {
      v21 = v15 + 4;
    }

    else
    {
      v21 = (v16 + 32);
    }

    if (v15 + 4 == v21 && v20 != v19)
    {
      do
      {
        if (*(v17 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v18, *(v20 + 1)))
        {
          v30 = *v20;
          std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](this, &v30);
        }

        ++v20;
      }

      while (v20 != v19);
    }

    if (v18 == v21)
    {
      v27 = *(v17 + 56);
      v26 = *(v17 + 64);
      while (v27 != v26)
      {
        if (v15[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v15 + 4, *(v27 + 1)))
        {
          v28 = *v27;
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v15 + 4, HIDWORD(*v27));
          v30 = v28;
          std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](this, &v30);
        }

        ++v27;
      }
    }
  }
}

void sub_1B2F49308(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN2md13OverlaysLogicC2ERKNSt3__110shared_ptrINS_15RegistryManagerEEEPN3geo9TaskQueueEPN3gdc15ResourceManagerEPU28objcproto17OS_dispatch_queue8NSObjectRKNS2_INS_17RunLoopControllerEEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 32);
  if (a4)
  {
    result = MapsFeature_IsAvailable_ElevatedPolygons();
  }

  else
  {
    result = 0;
  }

  *(v4 + 128) = result;
  return result;
}

uint64_t std::__function::__func<md::OverlaysLogic::OverlaysLogic(std::shared_ptr<md::RegistryManager> const&,geo::TaskQueue *,gdc::ResourceManager *,NSObject  {objcproto17OS_dispatch_queue}*,std::shared_ptr<md::RunLoopController> const&)::$_0,std::allocator<md::OverlaysLogic::OverlaysLogic(std::shared_ptr<md::RegistryManager> const&,geo::TaskQueue *,gdc::ResourceManager *,NSObject  {objcproto17OS_dispatch_queue}*,std::shared_ptr<md::RunLoopController> const&)::$_0>,void ()(VKOverlayLevel,VKOverlayResourceFallbackableMode)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A17F78;
  a2[1] = v2;
  return result;
}

uint64_t *std::unique_ptr<anonymous namespace::PendingPathAnimation>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::~__hash_table(v2 + 2160);
    geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v2 + 320);
    v3 = *(v2 + 120);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = v2;
    std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v4);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t *std::unique_ptr<anonymous namespace::PathAnimationDescription>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 120);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = v2;
    std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v4);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t *std::unique_ptr<anonymous namespace::BumpAnimator>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    [*(v2 + 64) stop];
    std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](v2 + 144);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v2 + 112);
    std::__function::__value_func<void ()(geo::Geocentric<double> const&)>::~__value_func[abi:nn200100](v2 + 80);
    *(v2 + 56) = &unk_1F2A3EF58;

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void sub_1B2F4981C(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](v1 + 144);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v1 + 112);
  std::__function::__value_func<void ()(geo::Geocentric<double> const&)>::~__value_func[abi:nn200100](v1 + 80);
  *(v1 + 56) = &unk_1F2A3EF58;

  _Unwind_Resume(a1);
}

void anonymous namespace::PointSegment::~PointSegment(_anonymous_namespace_::PointSegment *this)
{
  v2 = *(this + 488);
  if (v2 != *(this + 490))
  {
    free(v2);
  }

  v3 = *(this + 485);
  if (v3)
  {
    *(this + 486) = v3;
    operator delete(v3);
  }

  v4 = *(this + 482);
  if (v4)
  {
    *(this + 483) = v4;
    operator delete(v4);
  }

  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(this + 2080);
  v5 = *(this + 239);
  if (v5 != *(this + 241))
  {
    free(v5);
  }

  v6 = *(this + 236);
  if (v6)
  {
    *(this + 237) = v6;
    operator delete(v6);
  }

  v7 = *(this + 233);
  if (v7)
  {
    *(this + 234) = v7;
    operator delete(v7);
  }

  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(this + 88);
}

uint64_t std::__function::__value_func<void ()(geo::Geocentric<double> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void sub_1B2F49C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak((v17 - 72));

  _Unwind_Resume(a1);
}

double __copy_helper_block_ea8_40c45_ZTSN3geo4UnitINS_21RadianUnitDescriptionEdEE48c45_ZTSN3geo4UnitINS_21RadianUnitDescriptionEdEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

void sub_1B2F4A4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a43 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a30 == 1)
  {
    *(v44 - 104) = v43;
    std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100]((v44 - 104));
  }

  _Unwind_Resume(exception_object);
}

void std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 249;
        std::allocator_traits<std::allocator<md::mun::PointView>>::destroy[abi:nn200100]<md::mun::PointView,void,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::allocator_traits<std::allocator<md::mun::PointView>>::destroy[abi:nn200100]<md::mun::PointView,void,0>(void *a1)
{
  v2 = a1[239];
  if (v2 != a1[241])
  {
    free(v2);
  }

  v3 = a1[236];
  if (v3)
  {
    a1[237] = v3;
    operator delete(v3);
  }

  v4 = a1[233];
  if (v4)
  {
    a1[234] = v4;
    operator delete(v4);
  }

  return geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base((a1 + 11));
}

void sub_1B2F4AA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double gdc::CameraFrame<geo::Radians,double>::toRigidTransformEcefNoOffset(uint64_t a1, double *a2)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = __sincos_stret(*a2);
  v7 = 6378137.0 / sqrt(v6.__sinval * v6.__sinval * -0.00669437999 + 1.0);
  v8 = (v7 + v5) * v6.__cosval;
  v9 = __sincos_stret(v4);
  *&v22 = v8 * v9.__cosval;
  *(&v22 + 1) = v8 * v9.__sinval;
  v23 = (v5 + v7 * 0.99330562) * v6.__sinval;
  gdc::CameraFrame<geo::Radians,double>::createLocalEcefFrame(v20, &v22);
  v10 = a2[4];
  v11 = a2[6];
  v12 = __sincos_stret(a2[5] * 0.5);
  v13 = __sincos_stret(v10 * -0.5);
  v14 = __sincos_stret(v11 * -0.5);
  v19[0] = v13.__sinval * v12.__cosval * v14.__cosval + v13.__cosval * v12.__sinval * v14.__sinval;
  v19[1] = -(v13.__sinval * v12.__cosval * v14.__sinval - v13.__cosval * v12.__sinval * v14.__cosval);
  v19[2] = -(v14.__cosval * v13.__sinval * v12.__sinval - v13.__cosval * v12.__cosval * v14.__sinval);
  v19[3] = v13.__cosval * v12.__cosval * v14.__cosval + v14.__sinval * v12.__sinval * v13.__sinval;
  gm::Quaternion<double>::operator*(&v16, &v21, v19);
  *a1 = v22;
  *(a1 + 16) = v23;
  *(a1 + 24) = v16;
  *(a1 + 40) = v17;
  result = v18;
  *(a1 + 48) = v18;
  return result;
}

void sub_1B2F4D598(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(location, a5);
  STACK[0x988] = v6;
  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v7 + 88);
  if (STACK[0x9F8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x9F8]);
  }

  STACK[0x880] = &STACK[0x980];
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&STACK[0x880]);
  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v8 + 192);
  objc_destroyWeak(location);

  _Unwind_Resume(a1);
}

void std::vector<md::mun::CollectionPoint>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 1864;
        geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base((v3 - 1776));
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

double geo::RigidTransform<double,float>::operator*(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 3; ++i)
  {
    *&v9[i] = *(a1 + 24 + 4 * i);
  }

  *&v9[3] = *(a1 + 36);
  v4 = gm::Quaternion<double>::operator*(v9, a2);
  v5 = 0;
  *v10 = v4;
  v10[1] = v6;
  v10[2] = v7;
  do
  {
    *(&v11 + v5 * 8) = *&v10[v5] + *(a1 + v5 * 8);
    ++v5;
  }

  while (v5 != 3);
  return v11;
}

void anonymous namespace::PathAnimator::PathAnimator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  __src[293] = *MEMORY[0x1E69E9840];
  *v9 = 0;
  *(v9 + 8) = 0;
  v12 = *v11;
  v13 = v11[2];
  *(v9 + 32) = v11[1];
  *(v9 + 48) = v13;
  *(v9 + 16) = v12;
  v14 = v11[3];
  v15 = v11[4];
  v16 = v11[5];
  *(v9 + 112) = *(v11 + 48);
  *(v9 + 80) = v15;
  *(v9 + 96) = v16;
  *(v9 + 64) = v14;
  *(v9 + 120) = *(v11 + 13);
  *(v9 + 128) = *(v11 + 14);
  *(v9 + 136) = *(v11 + 15);
  *(v9 + 144) = *(v11 + 16);
  *(v9 + 152) = *(v11 + 17);
  *(v9 + 160) = *(v11 + 18);
  *(v9 + 168) = *(v11 + 19);
  v17 = v11[11];
  *(v9 + 176) = v11[10];
  *(v9 + 192) = v17;
  *(v9 + 208) = -1;
  *(v9 + 216) = v18;
  *(v9 + 217) = v19;
  *(v9 + 218) = a9;
  v21 = *v20;
  *(v9 + 240) = *(v20 + 2);
  *(v9 + 224) = v21;
  v23 = *v22;
  *(v9 + 264) = *(v22 + 2);
  *(v9 + 248) = v23;
  v24 = *(v22 + 24);
  *(v9 + 288) = *(v22 + 5);
  *(v9 + 272) = v24;
  *(v9 + 296) = *(v22 + 6);
  *(v9 + 312) = 0;
  *(v9 + 320) = 0;
  *(v9 + 304) = v9 + 312;
  *(v9 + 352) = 0;
  *(v9 + 384) = 0u;
  *(v9 + 400) = 0u;
  *(v9 + 416) = 0u;
  *(v9 + 464) = 0;
  v99 = (v9 + 504);
  v100 = v9;
  *(v9 + 552) = 0;
  *(v9 + 584) = 0;
  *(v9 + 496) = 0u;
  *(v9 + 512) = 0u;
  *(v9 + 592) = &unk_1F2A18A60;
  *(v9 + 600) = 0;
  *(v9 + 616) = 0u;
  *(v9 + 632) = 0u;
  *(v9 + 648) = 0;
  v25 = v10[1];
  if (v25 != *v10)
  {
    v26 = 0x63FB9AEB1FDCD759 * ((v25 - *v10) >> 3);
    if (v26 <= 0x20E64C148FEF8CLL)
    {
      __src[4] = v99;
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::PointView>>(v26);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v27 = *(v9 + 512);
  v101 = 0;
  v102 = 0;
  v103 = 0;
  std::vector<gm::Matrix<double,3,1>>::reserve(&v101, 0x367D6E020E64C149 * ((v27 - *v99) >> 3));
  v28 = *(v100 + 504);
  v29 = *(v100 + 512);
  if (v28 == v29)
  {
    v30 = v102;
  }

  else
  {
    v30 = v102;
    do
    {
      if (v30 >= v103)
      {
        v32 = v101;
        v33 = v30 - v101;
        v34 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v101) >> 3) + 1;
        if (v34 > 0xAAAAAAAAAAAAAAALL)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        if (0x5555555555555556 * ((v103 - v101) >> 3) > v34)
        {
          v34 = 0x5555555555555556 * ((v103 - v101) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v103 - v101) >> 3) >= 0x555555555555555)
        {
          v35 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v35 = v34;
        }

        if (v35)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v35);
        }

        v36 = *(v28 + 8);
        v37 = 8 * ((v30 - v101) >> 3);
        *(v37 + 16) = *(v28 + 24);
        *v37 = v36;
        if (v32 != v30)
        {
          v38 = v37 - v33;
          do
          {
            v39 = *v32;
            *(v38 + 16) = *(v32 + 2);
            *v38 = v39;
            v38 += 24;
            v32 += 24;
          }

          while (v32 != v30);
          v32 = v101;
        }

        v30 = (v37 + 24);
        v101 = (v37 - v33);
        v102 = v37 + 24;
        v103 = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        v31 = *(v28 + 8);
        *(v30 + 2) = *(v28 + 24);
        *v30 = v31;
        v30 += 24;
      }

      v102 = v30;
      v28 += 1992;
    }

    while (v28 != v29);
  }

  v40 = 0;
  v41 = v101;
  v116 = 0;
  v117 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v101) >> 3);
  do
  {
    *&__src[v40] = *&v30[v40 * 8 - 24] - *&v41[v40 * 8];
    ++v40;
  }

  while (v40 != 3);
  v42 = __src[0];
  v43 = __src[1];
  v44 = __src[2];
  v109 = *__src;
  v110 = __src[2];
  v45 = gm::Matrix<double,3,1>::normalized<int,void>(v41);
  *__src = -(v46 * *&v43 - v47 * *&v44);
  *&__src[1] = -(v45 * *&v44 - v46 * *&v42);
  *&__src[2] = -(v47 * *&v42 - v45 * *&v43);
  v114[0] = gm::Matrix<double,3,1>::normalized<int,void>(__src);
  v114[1] = v48;
  v114[2] = v49;
  *__src = -(v48 * *&v44 - v49 * *&v43);
  *&__src[1] = -(v49 * *&v42 - v114[0] * *&v44);
  *&__src[2] = -(v114[0] * *&v43 - v48 * *&v42);
  v108[0] = gm::Matrix<double,3,1>::normalized<int,void>(__src);
  v108[1] = v50;
  v108[2] = v51;
  v120 = *v41;
  v52 = *(v41 + 2);
  v122 = v109;
  v121 = v52;
  v123 = v110;
  v106 = 0uLL;
  v107 = 0;
  v104 = 0;
  v105 = 0uLL;
  if (v41 == v30)
  {
    v64 = 0;
    v63 = 0;
  }

  else
  {
    v53 = v41;
    do
    {
      v54 = gm::Ray<double,3>::closestOffsetTo(&v120, v53);
      v55 = gm::Ray<double,3>::at(&v120, v54);
      v56 = 0;
      v118[0] = *&v55;
      v118[1] = v57;
      v118[2] = v58;
      do
      {
        *&__src[v56] = *(v53 + v56 * 8) - *&v118[v56];
        ++v56;
      }

      while (v56 != 3);
      v59 = 0;
      *v119 = *__src;
      v119[2] = __src[2];
      v60 = 0.0;
      do
      {
        v60 = v60 + *&v119[v59] * v114[v59];
        ++v59;
      }

      while (v59 != 3);
      __src[0] = *&v54;
      __src[1] = *&v60;
      std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100](&v106, __src);
      v61 = 0;
      v62 = 0.0;
      do
      {
        v62 = v62 + *&v119[v61] * *&v108[v61];
        ++v61;
      }

      while (v61 != 3);
      __src[0] = *&v54;
      __src[1] = *&v62;
      std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100](&v104, __src);
      v53 += 24;
    }

    while (v53 != v30);
    v64 = v104;
    v63 = v105;
  }

  memset(__src, 0, 24);
  v65 = (v63 - v64) >> 4;
  std::vector<gm::Matrix<double,2,1>>::resize(__src, v65);
  v66 = __src[0];
  *__src[0] = *v64;
  *(v66 + 1) = v64[1];
  v67 = &v64[2 * v65 - 2];
  v68 = &v66[16 * v65 - 16];
  *v68 = *v67;
  *(v68 + 1) = v67[1];
  if (v65 - 1 >= 2)
  {
    v69 = (v66 + 16);
    v70 = v65 - 2;
    v71 = (v64 + 4);
    __asm { FMOV            V0.2D, #-0.5 }

    v77 = vdupq_n_s64(0xBFE6666660000000);
    do
    {
      v79 = v71[-2];
      v78 = v71[-1];
      v80 = *v71++;
      *v69++ = vmlaq_f64(v78, v77, vmlaq_f64(v78, _Q0, vaddq_f64(v80, v79)));
      --v70;
    }

    while (v70);
  }

  v104 = v66;
  v105 = *&__src[1];
  operator delete(v64);
  v81 = 0;
  v82 = 0.0;
  do
  {
    v82 = v82 + *(&v109 + v81) * *(&v109 + v81);
    v81 += 8;
  }

  while (v81 != 24);
  memset(v115, 0, 24);
  v111 = 0;
  v112 = 0;
  v113 = 0;
  v83 = *(&v106 + 1);
  v84 = v106;
  v85 = (*(&v106 + 1) - v106) >> 4;
  std::vector<double>::reserve(v115, v85);
  std::vector<double>::reserve(&v111, v85);
  while (v84 != v83)
  {
    std::vector<double>::push_back[abi:nn200100](v115, v84);
    v86 = v84 + 1;
    std::vector<double>::push_back[abi:nn200100](&v111, v86);
    v84 = v86 + 1;
  }

  v87 = sqrt(v82);
  if (v111 == v112)
  {
    v89 = 0.0;
    v88 = 0.0;
  }

  else
  {
    v88 = 0.0;
    v89 = 0.0;
    v90 = v111;
    do
    {
      v91 = *v90++;
      v88 = fmax(v88, v91);
      v89 = fmax(v89, -v91);
    }

    while (v90 != v112);
  }

  if (fmin(v89, v88) / v87 > 0.1 || v87 < 15.0)
  {
    v93 = v112 - v111;
    if ((v93 - 1) >= 2)
    {
      v95 = *v111;
      v96 = v111[1];
      v94 = v111 + 2;
      v97 = v93 - 2;
      do
      {
        v98 = *v94;
        v95 = v96 + (v96 + (v95 + *v94) * -0.5) * -0.75;
        *(v94++ - 1) = v95;
        v96 = v98;
        --v97;
      }

      while (v97);
    }
  }

  if (!(((*(&v106 + 1) - v106) >> 4) >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>((*(&v106 + 1) - v106) >> 4);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void sub_1B2F51E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, std::locale *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](&STACK[0x9A0]);
  operator delete(v64);
  if (__p)
  {
    operator delete(__p);
  }

  v66 = STACK[0x210];
  if (STACK[0x210])
  {
    STACK[0x218] = v66;
    operator delete(v66);
  }

  if (a48)
  {
    operator delete(a48);
  }

  if (a51)
  {
    operator delete(a51);
  }

  std::__function::__value_func<gm::Matrix<double,3,1> ()(int,double)>::~__value_func[abi:nn200100](&STACK[0x250]);
  if (a45)
  {
    operator delete(a45);
  }

  *(a24 + 592) = a10;

  STACK[0x250] = a23;
  std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100](&STACK[0x250]);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](a24 + 472);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](a24 + 440);
  v67 = *(a24 + 408);
  if (v67)
  {
    *(a24 + 416) = v67;
    operator delete(v67);
  }

  v68 = *(a24 + 384);
  if (v68)
  {
    *(a24 + 392) = v68;
    operator delete(v68);
  }

  std::__function::__value_func<gm::Matrix<double,3,1> ()(int,double)>::~__value_func[abi:nn200100](a14);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a24 + 312));
  v69 = *(a24 + 8);
  if (v69)
  {
    std::__shared_weak_count::__release_weak(v69);
  }

  _Unwind_Resume(a1);
}

id **std::unique_ptr<anonymous namespace::PathAnimator>::~unique_ptr[abi:nn200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

double anonymous namespace::PathAnimator::_computeFrameForT(_anonymous_namespace_::PathAnimator *this, double a2, void *a3)
{
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = std::function<double ()(double)>::operator()(a3[58], a2);
  v13 = std::function<double ()(double)>::operator()(a3[62], a2);
  v14 = __sincos_stret(v12 * 0.5);
  v15 = __sincos_stret(v13 * 0.5);
  v17[0] = v15.__sinval * v14.__cosval;
  v17[1] = v15.__cosval * v14.__sinval;
  v17[2] = -(v14.__sinval * v15.__sinval);
  v17[3] = v15.__cosval * v14.__cosval;
  gm::Quaternion<double>::operator*(&v18, (a3 + 34), v17);
  *this = v7;
  *(this + 1) = v9;
  *(this + 2) = v11;
  *(this + 24) = v18;
  *(this + 5) = v19;
  result = v20;
  *(this + 6) = v20;
  return result;
}

void *std::vector<std::pair<md::mun::ViewId,unsigned int>>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<std::pair<md::mun::ViewId,unsigned int>>::__vallocate[abi:nn200100](result, 0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3));
  }

  return result;
}

void std::vector<std::pair<md::mun::ViewId,unsigned int>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::pair<md::mun::ViewId,unsigned int> const*>,std::__wrap_iter<std::pair<md::mun::ViewId,unsigned int> const*>>(void *a1, char *a2, uint64_t *a3, __int128 *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v5 = a3;
    v6 = a2;
    v8 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3)) >= a5)
    {
      v14 = v8 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v8 - a2) >> 3)) >= a5)
      {
        v17 = (v8 - 24 * a5);
        if (v17 >= v8)
        {
          v19 = a1[1];
        }

        else
        {
          v18 = (v8 - 24 * a5);
          v19 = a1[1];
          do
          {
            v20 = *v18;
            *(v19 + 16) = *(v18 + 2);
            *v19 = v20;
            v19 += 24;
            v18 += 24;
          }

          while (v18 < v8);
        }

        a1[1] = v19;
        if (v8 != &a2[24 * a5])
        {
          v42 = 0;
          do
          {
            v43 = &v42[v8];
            v44 = *&v42[v17 - 24];
            *(v43 - 17) = *&v42[v17 - 17];
            *(v43 - 3) = v44;
            *(v43 - 2) = *&v42[v17 - 8];
            v42 -= 24;
          }

          while (&a2[24 * a5 - v8] != v42);
        }

        do
        {
          v45 = *v5;
          *(v6 + 7) = *(v5 + 7);
          *v6 = v45;
          *(v6 + 4) = *(v5 + 4);
          v5 += 3;
          v6 += 24;
        }

        while (v5 != &a3[3 * a5]);
      }

      else
      {
        v15 = (a3 + v14);
        if ((a3 + v14) == a4)
        {
          v16 = a1[1];
        }

        else
        {
          v31 = (a3 + v14);
          v16 = a1[1];
          do
          {
            v32 = *v31;
            *(v16 + 16) = *(v31 + 2);
            *v16 = v32;
            v16 += 24;
            v31 = (v31 + 24);
          }

          while (v31 != a4);
        }

        a1[1] = v16;
        if (v14 >= 1)
        {
          v33 = &a2[24 * a5];
          v34 = v16 - 24 * a5;
          v35 = v16;
          while (v34 < v8)
          {
            v36 = *v34;
            *(v35 + 16) = *(v34 + 16);
            *v35 = v36;
            v35 += 24;
            v34 += 24;
          }

          a1[1] = v35;
          if (v16 != v33)
          {
            v37 = 0;
            v38 = -24 * a5;
            do
            {
              v39 = v37 + v16;
              v40 = *(v38 + v16 - 24);
              *(v39 - 17) = *(v38 + v16 - 17);
              *(v39 - 24) = v40;
              *(v39 - 8) = *(v38 + v16 - 8);
              v37 -= 24;
              v38 -= 24;
              v33 += 24;
            }

            while (v16 != v33);
          }

          do
          {
            v41 = *v5;
            *(v6 + 7) = *(v5 + 7);
            *v6 = v41;
            *(v6 + 4) = *(v5 + 4);
            v5 += 3;
            v6 += 24;
          }

          while (v5 != v15);
        }
      }
    }

    else
    {
      v10 = *a1;
      v11 = a5 - 0x5555555555555555 * ((v8 - *a1) >> 3);
      if (v11 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x555555555555555)
      {
        v13 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::mun::ViewId,unsigned int>>>(v13);
      }

      v21 = 8 * ((a2 - v10) >> 3);
      v22 = (v21 + 24 * a5);
      v23 = 24 * a5;
      v24 = v21;
      do
      {
        v25 = *v5;
        *(v24 + 16) = v5[2];
        *v24 = v25;
        v24 += 24;
        v5 += 3;
        v23 -= 24;
      }

      while (v23);
      memcpy(v22, a2, a1[1] - a2);
      v26 = *a1;
      v27 = &v22[a1[1] - v6];
      a1[1] = v6;
      v28 = v6 - v26;
      v29 = (v21 - (v6 - v26));
      memcpy(v29, v26, v28);
      v30 = *a1;
      *a1 = v29;
      a1[1] = v27;
      a1[2] = 0;
      if (v30)
      {

        operator delete(v30);
      }
    }
  }
}

uint64_t std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>::function(uint64_t a1, uint64_t a2)
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

uint64_t std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>::~function(uint64_t a1)
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

void std::allocator_traits<std::allocator<md::mun::CollectionPoint>>::construct[abi:nn200100]<md::mun::CollectionPoint,md::mun::CollectionPoint const&,void,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v3;
  v4 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v4;
  *(a1 + 44) = *(a2 + 44);
  v5 = *(a2 + 56);
  v6 = *(a2 + 72);
  *(a1 + 88) = a1 + 120;
  v7 = a1 + 88;
  *(a1 + 56) = v5;
  *(a1 + 72) = v6;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = a1 + 120;
  *(a1 + 112) = 6;
  geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>((a1 + 88), *(a2 + 88), *(a2 + 96));
  v8 = *(a2 + 1848);
  *(v7 + 1765) = *(a2 + 1853);
  *(v7 + 1760) = v8;
}

void std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1,std::allocator<std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>>,void ()(void)>::operator()(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (GEOGetVectorKitVKMuninLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKMuninLog_onceToken, &__block_literal_global_13_0);
  }

  v2 = GEOGetVectorKitVKMuninLog_log;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 3);
    *buf = 134217984;
    v8 = v3;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_INFO, "Preloading %zu initial points", buf, 0xCu);
  }

  if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
  }

  v4 = GEOGetVectorKitResourceLoadingLog_log;
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PathPreload", &unk_1B3514CAA, buf, 2u);
  }

  v9 = 0uLL;
  v10 = 0;
  std::vector<md::mun::CollectionPoint>::__init_with_size[abi:nn200100]<md::mun::CollectionPoint*,md::mun::CollectionPoint*>(&v9, *(a1 + 72), *(a1 + 80), 0x63FB9AEB1FDCD759 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
  v11 = *(a1 + 96);
  v12 = *(a1 + 112);
  v13 = *(a1 + 120);
  v14 = *(a1 + 136);
  v15 = *(a1 + 144);
  v16 = *(a1 + 160);
  v17 = *(a1 + 168);
  v5 = *(a1 + 184);
  v18 = *(a1 + 176);
  v19 = v5;
  v6 = *(a1 + 192);
  v20 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = *(a1 + 200);
  v22 = 0;
  operator new();
}

void sub_1B2F5308C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32)
{
  std::__function::__value_func<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>::~__value_func[abi:nn200100](v32 - 104);
  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a32);
  }

  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1::operator() const(void)::{lambda(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)#2},std::allocator<gdc::RequestCompletionStatus>,void ()($_1,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)>::operator()(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    if (GEOGetVectorKitVKMuninLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKMuninLog_onceToken, &__block_literal_global_13_0);
    }

    v5 = GEOGetVectorKitVKMuninLog_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a3 + 24);
      v7 = 134217984;
      v8 = v6;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "Preloaded %zu views.", &v7, 0xCu);
    }

    md::MuninSceneLogic::addActiveViews(*(a1 + 8), *(a3 + 16));
  }
}

uint64_t std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1::operator() const(void)::{lambda(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)#2},std::allocator<gdc::RequestCompletionStatus>,void ()($_1,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A18E18;
  a2[1] = v2;
  return result;
}

void std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1::operator() const(void)::{lambda(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)#1},std::allocator<gdc::RequestCompletionStatus>,void ()($_1,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)>::operator()(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    if (GEOGetVectorKitVKMuninLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKMuninLog_onceToken, &__block_literal_global_13_0);
    }

    v7 = GEOGetVectorKitVKMuninLog_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a3 + 24);
      LODWORD(__p[0]) = 134217984;
      *(__p + 4) = v8;
      _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_INFO, "Finished loading required views (n: %zu) - start animation", __p, 0xCu);
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(*v9 + 48))(v9, a1 + 40, a3);
      return;
    }

LABEL_12:
    std::__throw_bad_function_call[abi:nn200100]();
  }

  *__p = 0u;
  v11 = 0u;
  v12 = 1065353216;
  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_12;
  }

  (*(*v4 + 48))(v4, a1 + 40, __p);
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::__deallocate_node(v11);
  v5 = __p[0];
  __p[0] = 0;
  if (v5)
  {
    operator delete(v5);
  }
}

void sub_1B2F53470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, void *a11)
{
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::__deallocate_node(a11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1::operator() const(void)::{lambda(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)#1},std::allocator<gdc::RequestCompletionStatus>,void ()($_1,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)>::destroy_deallocate(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = (a1 + 40);
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v3);

  operator delete(a1);
}

uint64_t std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1::operator() const(void)::{lambda(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)#1},std::allocator<gdc::RequestCompletionStatus>,void ()($_1,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v4 = (a1 + 40);
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v4);
}

uint64_t std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1::operator() const(void)::{lambda(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)#1},std::allocator<gdc::RequestCompletionStatus>,void ()($_1,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A18DD0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  result = std::vector<md::mun::CollectionPoint>::__init_with_size[abi:nn200100]<md::mun::CollectionPoint*,md::mun::CollectionPoint*>(a2 + 40, *(a1 + 40), *(a1 + 48), 0x63FB9AEB1FDCD759 * ((*(a1 + 48) - *(a1 + 40)) >> 3));
  v5 = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 64) = v5;
  v6 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v6;
  v7 = *(a1 + 112);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 112) = v7;
  *(a2 + 136) = *(a1 + 136);
  *(a2 + 144) = *(a1 + 144);
  v8 = *(a1 + 160);
  *(a2 + 152) = *(a1 + 152);
  *(a2 + 160) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 168) = *(a1 + 168);
  return result;
}

void std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1::operator() const(void)::{lambda(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)#1},std::allocator<gdc::RequestCompletionStatus>,void ()($_1,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A18DD0;
  v2 = *(a1 + 160);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = (a1 + 40);
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1::operator() const(void)::{lambda(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)#1},std::allocator<gdc::RequestCompletionStatus>,void ()($_1,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A18DD0;
  v2 = *(a1 + 160);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v4 = (a1 + 40);
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

void std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1,std::allocator<std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>>,void ()(void)>::destroy_deallocate(void **a1)
{
  v2 = a1 + 9;
  v3 = a1[24];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v5 = v2;
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v5);
  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  operator delete(a1);
}

void std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1,std::allocator<std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>>,void ()(void)>::destroy(void *a1)
{
  v2 = (a1 + 9);
  v3 = a1[24];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v5 = v2;
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v5);
  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;

    operator delete(v4);
  }
}

uint64_t std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1,std::allocator<std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A18D88;
  std::vector<std::pair<md::mun::ViewId,unsigned int>>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  result = std::vector<md::mun::CollectionPoint>::__init_with_size[abi:nn200100]<md::mun::CollectionPoint*,md::mun::CollectionPoint*>(a2 + 72, *(a1 + 72), *(a1 + 80), 0x63FB9AEB1FDCD759 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
  v5 = *(a1 + 96);
  *(a2 + 112) = *(a1 + 112);
  *(a2 + 96) = v5;
  v6 = *(a1 + 120);
  *(a2 + 136) = *(a1 + 136);
  *(a2 + 120) = v6;
  v7 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 144) = v7;
  *(a2 + 168) = *(a1 + 168);
  *(a2 + 176) = *(a1 + 176);
  v8 = *(a1 + 192);
  *(a2 + 184) = *(a1 + 184);
  *(a2 + 192) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 200) = *(a1 + 200);
  return result;
}

void sub_1B2F53A2C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    *(v1 + 16) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2F53B64(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1,std::allocator<std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A18D88;
  v2 = (a1 + 9);
  v3 = a1[24];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v5 = v2;
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v5);
  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1,std::allocator<std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A18D88;
  v2 = (a1 + 9);
  v3 = a1[24];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v6 = v2;
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v6);
  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::mun::ViewId,unsigned int>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<std::pair<md::mun::ViewId,unsigned int>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::mun::ViewId,unsigned int>>>(a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t geo::ConstantStepSimpleSpline<anonymous namespace::PathCurve>::position(void *a1, double a2)
{
  v4 = a1[5];
  v5 = v4;
  v6 = (v3 * v4);
  v7 = v4 - 1;
  if (v7 >= v6)
  {
    v7 = v6;
  }

  v8 = (v3 - v7 / v5) / ((v7 + 1) / v5 - v7 / v5);
  v13 = v7;
  v12 = v8;
  v9 = a1[3];
  if (v9)
  {
    return (*(*v9 + 48))(v9, &v13, &v12);
  }

  v11 = std::__throw_bad_function_call[abi:nn200100]();
  return std::function<double ()(double)>::operator()(v11);
}

double std::function<double ()(double)>::operator()(uint64_t a1, double a2)
{
  v5 = a2;
  if (a1)
  {
    (*(*a1 + 48))(a1, &v5);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
  }

  return result;
}

double geo::ConstantStepSimpleSpline<anonymous namespace::PathCurve>::remappedT(void *a1, double a2)
{
  v2 = 0.0;
  if (a2 > 0.0)
  {
    v2 = 1.0;
    if (a2 < 1.0)
    {
      v3 = a1[7];
      v4 = a1[8];
      if (v4 == v3)
      {
        v6 = a1[8];
      }

      else
      {
        v5 = v4 - v3;
        v6 = a1[7];
        do
        {
          v7 = v5 >> 1;
          v8 = &v6[v5 >> 1];
          v10 = *v8;
          v9 = v8 + 1;
          v5 += ~(v5 >> 1);
          if (v10 > a2)
          {
            v5 = v7;
          }

          else
          {
            v6 = v9;
          }
        }

        while (v5);
      }

      if (v4 != v6)
      {
        v11 = v6 - v3;
        if (v11 <= 1)
        {
          v11 = 1;
        }

        v12 = 8 * v11 - 8;
        v13 = (a2 - *(v3 + v12)) / (v3[v11] - *(v3 + v12));
        return fmax(fmin(*(a1[10] + v12) + (*(a1[10] + 8 * v11) - *(a1[10] + v12)) * v13, 1.0), 0.0);
      }
    }
  }

  return v2;
}

void anonymous namespace::PathAnimator::~PathAnimator(id *this)
{
  [this[75] stop];
  this[74] = &unk_1F2A18A60;

  v5 = this + 63;
  std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100](&v5);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100]((this + 59));
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100]((this + 55));
  v2 = this[51];
  if (v2)
  {
    this[52] = v2;
    operator delete(v2);
  }

  v3 = this[48];
  if (v3)
  {
    this[49] = v3;
    operator delete(v3);
  }

  std::__function::__value_func<gm::Matrix<double,3,1> ()(int,double)>::~__value_func[abi:nn200100]((this + 41));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[39]);
  v4 = this[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_1B2F53FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *(v10 + 592) = &unk_1F2A18A60;

  a10 = (v10 + 504);
  std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100](&a10);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](v10 + 472);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](v10 + 440);
  v12 = *(v10 + 408);
  if (v12)
  {
    *(v10 + 416) = v12;
    operator delete(v12);
  }

  v13 = *(v10 + 384);
  if (v13)
  {
    *(v10 + 392) = v13;
    operator delete(v13);
  }

  std::__function::__value_func<gm::Matrix<double,3,1> ()(int,double)>::~__value_func[abi:nn200100](v10 + 328);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v10 + 312));
  v14 = *(v10 + 8);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(anonymous namespace::PathAnimator *,unsigned long,anonymous namespace::PointSegment &&)>::~function(uint64_t a1)
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

uint64_t std::function<void ()(anonymous namespace::PathAnimator *,geo::RigidTransform<double,double> const&,unsigned long,float,float)>::~function(uint64_t a1)
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

uint64_t std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<gm::Matrix<double,3,1> ()(int,double)>::~__value_func[abi:nn200100](uint64_t a1)
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

void geo::_retain_ptr<VKQuickDynamicAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A18A60;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKQuickDynamicAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A18A60;

  return a1;
}

id *std::__shared_ptr_pointer<anonymous namespace::PathAnimator *,std::shared_ptr<anonymous namespace::PathAnimator>::__shared_ptr_default_delete<anonymous namespace::PathAnimator,anonymous namespace::PathAnimator>,std::allocator<anonymous namespace::PathAnimator>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<anonymous namespace::PathAnimator *,std::shared_ptr<anonymous namespace::PathAnimator>::__shared_ptr_default_delete<anonymous namespace::PathAnimator,anonymous namespace::PathAnimator>,std::allocator<anonymous namespace::PathAnimator>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::vector<double>::push_back[abi:nn200100](uint64_t a1, void *a2)
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

void anonymous namespace::polynomialFit(_anonymous_namespace_ *this, const double *a2, const double *a3, unint64_t a4, unint64_t a5, const double *a6, const double *a7, const double *a8)
{
  if (a5 < 0x1FFFFFFFFFFFFFFELL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(a5 + 2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void sub_1B2F54BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p)
{
  if (v15)
  {
    operator delete(v15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<double ()(double)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<gm::Matrix<double,3,1> ()(int,double)>::swap[abi:nn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void geo::refine<gm::Matrix<double,3,1>>(char **a1)
{
  v24 = 0uLL;
  v25 = 0;
  std::vector<gm::Matrix<double,3,1>>::resize(&v24, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v2 = 0;
  v3 = *a1;
  v4 = v24;
  do
  {
    *(v4 + v2) = *&v3[v2];
    v2 += 8;
  }

  while (v2 != 24);
  v5 = a1[1];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v3) >> 3);
  v7 = v6 - 1;
  v8 = -24;
  do
  {
    *(v4 + v5 - v3 + v8) = *&v5[v8];
    v8 += 8;
  }

  while (v8);
  if (v6 - 3 >= 0xFFFFFFFFFFFFFFFELL)
  {
    *a1 = v24;
    a1[2] = v25;
LABEL_15:

    operator delete(v3);
    return;
  }

  v9 = 1;
  v10 = v3;
  do
  {
    v11 = 0;
    v12 = &v3[24 * v9];
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v9 + 1;
    do
    {
      *(&v26 + v11) = *&v10[v11 + 48] + *&v10[v11];
      v11 += 8;
    }

    while (v11 != 24);
    v17 = 0;
    v22 = v26;
    v23 = v27;
    do
    {
      *(&v26 + v17) = *(&v22 + v17) * 0.5;
      v17 += 8;
    }

    while (v17 != 24);
    v18 = gm::lerp<gm::Matrix<double,3,1>,float>(v13, v14, v15, *&v26, *(&v26 + 1), v27, 0.5);
    v19 = v4 + 24 * v9;
    *v19 = v18;
    *(v19 + 8) = v20;
    *(v19 + 16) = v21;
    v10 += 24;
    ++v9;
  }

  while (v16 != v7);
  *a1 = v24;
  a1[2] = v25;
  if (v3)
  {
    goto LABEL_15;
  }
}