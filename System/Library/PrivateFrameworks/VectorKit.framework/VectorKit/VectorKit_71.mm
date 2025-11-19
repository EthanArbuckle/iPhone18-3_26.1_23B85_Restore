uint64_t gdc::ComponentStorageWrapper<arComponents::AlbedoTextureComponent>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<arComponents::AlbedoTextureComponent>::__destroy_vector::operator()[abi:nn200100](&v4);
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

BOOL gdc::ComponentStorageWrapper<md::pipelineECS::HasAlbedo>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::pipelineECS::HasAlbedo>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::pipelineECS::HasAlbedo>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::ARMesh::CameraView>>>(uint64_t a1)
{
  v3 = 0xDAF4167A62E7598BLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xDAF4167A62E7598BLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void applyCameraViewConstant(gdc::Registry *,md::LayoutContext const&)::$_0::operator()(gdc::CameraView **a1, void *a2, uint64_t a3)
{
  geo::Transform<double>::toMatrix(v23, a2);
  gm::Matrix<double,4,4>::inverted<int,void>(v22, v23);
  v5 = gdc::CameraView::position(*a1);
  v6 = *(v5 + 16);
  v16 = *v5;
  v17 = v6;
  v18 = 0x3FF0000000000000;
  v7 = gm::operator*<double,4,4,1>(v22, &v16);
  v8 = 0;
  *v19 = v7;
  v19[1] = v9;
  v19[2] = v10;
  v19[3] = v11;
  do
  {
    v12 = *&v19[v8];
    *(&v20 + v8++) = v12;
  }

  while (v8 != 3);
  ggl::BufferMemory::BufferMemory(v14);
  ggl::ResourceAccessor::accessConstantData(v24, 0, a3, 1);
  ggl::BufferMemory::operator=(v14, v24);
  ggl::BufferMemory::~BufferMemory(v24);
  v13 = v15;
  *v15 = v20;
  *(v13 + 2) = v21;
  ggl::BufferMemory::~BufferMemory(v14);
}

BOOL gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::ARMesh::CameraView>>>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::ARMesh::CameraView>>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::ARMesh::CameraView>>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<md::pipelineECS::HasTransformConstantData>(uint64_t a1)
{
  v3 = 0xCEC9FB27CDC26A5FLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xCEC9FB27CDC26A5FLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::TransformConstantDataComponent>(uint64_t a1)
{
  v3 = 0x763E4B3D3FAB91E9;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x763E4B3D3FAB91E9uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::TransformConstantDataComponent>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::TransformConstantDataComponent>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::TransformConstantDataComponent>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::pipelineECS::HasTransformConstantData>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::pipelineECS::HasTransformConstantData>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::pipelineECS::HasTransformConstantData>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<md::pipelineECS::HasTransformInstanceDeviceDataFeature>(uint64_t a1)
{
  v3 = 0xA87D3DFF83E23FACLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xA87D3DFF83E23FACLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::pipelineECS::HasTransformInstanceDeviceDataFeature>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::pipelineECS::HasTransformInstanceDeviceDataFeature>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::pipelineECS::HasTransformInstanceDeviceDataFeature>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::View>>>(uint64_t a1)
{
  v3 = 0x8619CDD24E91309ELL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x8619CDD24E91309ELL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::ViewConstantDataComponent>(uint64_t a1)
{
  v3 = 0xCB308D90549F69A2;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xCB308D90549F69A2);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::ViewConstantDataComponent>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 8 * (v3 - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11] - 64;
    do
    {
      *(v6 + v7) = *(v8 + v7);
      v7 += 4;
    }

    while (v7 != 64);
    a1[11] = v8;
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

void gdc::ComponentStorageWrapper<arComponents::ViewConstantDataComponent>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::ViewConstantDataComponent>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::View>>>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::View>>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::View>>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>(uint64_t a1)
{
  v3 = 0x88C1B8F0562DF3D9;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x88C1B8F0562DF3D9);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::StyleColor>(uint64_t a1)
{
  v3 = 0x4213A85274C86D76;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x4213A85274C86D76uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::VisibilityAlpha>(uint64_t a1)
{
  v3 = 0xBD9C607E106B8732;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xBD9C607E106B8732);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::VisibilityAlpha>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 1;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v8 = a1[11];
    *(v6 + v7) = *(v8 - 4);
    a1[11] = v8 - 4;
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

void gdc::ComponentStorageWrapper<arComponents::VisibilityAlpha>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::VisibilityAlpha>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::StyleColor>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 2 * (v3 - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11] - 16;
    do
    {
      *(v6 + v7) = *(v8 + v7);
      v7 += 4;
    }

    while (v7 != 16);
    a1[11] = v8;
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

void gdc::ComponentStorageWrapper<arComponents::StyleColor>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::StyleColor>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<arComponents::NeedsTransformConstantDataUpdate>(uint64_t a1)
{
  v3 = 0xCA5457B5B9B18C94;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xCA5457B5B9B18C94);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::NeedsTransformConstantDataUpdate>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::NeedsTransformConstantDataUpdate>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::NeedsTransformConstantDataUpdate>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<md::pipelineECS::HasARLightingSetup>(uint64_t a1)
{
  v3 = 0x27BFFACF4E4CE977;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x27BFFACF4E4CE977uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::pipelineECS::HasARLightingSetup>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::pipelineECS::HasARLightingSetup>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::pipelineECS::HasARLightingSetup>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<arComponents::PipelineIdentifier>(uint64_t a1)
{
  v3 = 0x10DAC80543D1165FLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x10DAC80543D1165FuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::PipelineIdentifier>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 24 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v8 = *(v7 - 8);
    *v6 = *(v7 - 24);
    *(v6 + 16) = v8;
    a1[11] -= 24;
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

void gdc::ComponentStorageWrapper<arComponents::PipelineIdentifier>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::PipelineIdentifier>::~ComponentStorageWrapper(uint64_t a1)
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

void md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::ShadowPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  md::MeshRenderable::MeshRenderable(v20, 0, a3, (a1 + 48));
  v5 = *(a1 + 440);
  arComponents::MeshRenderableComponent::MeshRenderableComponent(v19, v20);
  *&v17 = 0xA3C8162527B8C964;
  *(&v17 + 1) = "arComponents::ShadowPipeline]";
  v18 = 28;
  v15 = a2;
  v16 = 10;
  v6 = gdc::Registry::storage<arComponents::PendingCommonComponentsSetup>(v5);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v6, a2);
  v7 = gdc::Registry::storage<arComponents::MeshRenderableComponent>(v5);
  gdc::ComponentStorageWrapper<arComponents::MeshRenderableComponent>::emplace(v7, a2, v19);
  v8 = gdc::Registry::storage<arComponents::PipelineIdentifier>(v5);
  gdc::ComponentStorageWrapper<arComponents::PipelineIdentifier>::emplace(v8, a2, &v17);
  v9 = gdc::Registry::storage<arComponents::RenderOrder>(v5);
  gdc::ComponentStorageWrapper<md::components::PendingMaterial>::emplace(v9, a2, &v16);
  v10 = gdc::Registry::storage<arComponents::PendingPipelineSpecificComponentsSetup>(v5);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v10, a2);
  v11 = gdc::Registry::storage<arComponents::ContextEntity>(v5);
  gdc::ComponentStorageWrapper<arComponents::ContextEntity>::emplace(v11, a2, &v15);
  v12 = gdc::Registry::storage<arComponents::RebuildPipelineSetup>(v5);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v12, a2);
  v13 = gdc::Registry::storage<arComponents::ShadowPipeline>(v5);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v13, a2);
  md::MeshRenderable::~MeshRenderable(v19);
  v14 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(*(a1 + 440));
  gdc::ComponentStorageWrapper<arComponents::TransitionToRenderRegistry>::remove(v14, a2);
  md::MeshRenderable::~MeshRenderable(v20);
}

__n128 arComponents::MeshRenderableComponent::MeshRenderableComponent(arComponents::MeshRenderableComponent *this, const md::MeshRenderable *a2)
{
  *this = &unk_1F2A3CEF8;
  v2 = *(a2 + 8);
  *(this + 3) = *(a2 + 3);
  *(this + 8) = v2;
  v3 = *(a2 + 5);
  *(this + 4) = *(a2 + 4);
  *(this + 5) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 3);
  v5 = *(a2 + 5);
  *(this + 4) = *(a2 + 4);
  *(this + 5) = v5;
  *(this + 3) = v4;
  v6 = *(a2 + 6);
  v7 = *(a2 + 7);
  v8 = *(a2 + 8);
  *(this + 143) = *(a2 + 143);
  *(this + 7) = v7;
  *(this + 8) = v8;
  *(this + 6) = v6;
  *(this + 152) = 0;
  *(this + 176) = 0;
  if (*(a2 + 176) == 1)
  {
    v9 = *(a2 + 20);
    *(this + 19) = *(a2 + 19);
    *(this + 20) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    *(this + 168) = *(a2 + 168);
    *(this + 176) = 1;
  }

  *(this + 23) = *(a2 + 23);
  *(this + 96) = 0;
  if (*(a2 + 193) == 1)
  {
    *(this + 192) = *(a2 + 192);
    *(this + 193) = 1;
  }

  result = *(a2 + 196);
  *(this + 53) = *(a2 + 53);
  *(this + 196) = result;
  return result;
}

uint64_t gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(uint64_t a1)
{
  v3 = 0x1BF1779BE1E06867;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x1BF1779BE1E06867uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::TransitionToRenderRegistry>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::TransitionToRenderRegistry>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::TransitionToRenderRegistry>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<arComponents::PendingCommonComponentsSetup>(uint64_t a1)
{
  v3 = 0x58A2A58D4856FF1DLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x58A2A58D4856FF1DuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void gdc::ComponentStorageWrapper<arComponents::MeshRenderableComponent>::emplace(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v56 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v56);
  if (v6)
  {
    v7 = a1[11];
    v8 = a1[12];
    if (v7 >= v8)
    {
      v22 = a1[10];
      v23 = 0x84BDA12F684BDA13 * ((v7 - v22) >> 3);
      v24 = v23 + 1;
      if (v23 + 1 > 0x12F684BDA12F684)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v25 = 0x84BDA12F684BDA13 * ((v8 - v22) >> 3);
      if (2 * v25 > v24)
      {
        v24 = 2 * v25;
      }

      if (v25 >= 0x97B425ED097B42)
      {
        v26 = 0x12F684BDA12F684;
      }

      else
      {
        v26 = v24;
      }

      if (v26)
      {
        if (v26 <= 0x12F684BDA12F684)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v27 = 216 * v23;
      *v27 = &unk_1F2A3CEF8;
      *(v27 + 8) = *(a3 + 8);
      v28 = *(a3 + 32);
      *(v27 + 24) = *(a3 + 24);
      *(v27 + 32) = v28;
      v29 = *(a3 + 40);
      *(v27 + 40) = v29;
      if (v29)
      {
        atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
      }

      v30 = *(a3 + 128);
      *(216 * v23 + 0x70) = *(a3 + 112);
      *(216 * v23 + 0x80) = v30;
      *(216 * v23 + 0x8F) = *(a3 + 143);
      v31 = *(a3 + 64);
      *(216 * v23 + 0x30) = *(a3 + 48);
      *(216 * v23 + 0x40) = v31;
      v32 = *(a3 + 96);
      *(216 * v23 + 0x50) = *(a3 + 80);
      *(216 * v23 + 0x60) = v32;
      *(216 * v23 + 0x98) = 0;
      *(216 * v23 + 0xB0) = 0;
      if (*(a3 + 176) == 1)
      {
        v33 = *(a3 + 160);
        *(216 * v23 + 0x98) = *(a3 + 152);
        *(216 * v23 + 0xA0) = v33;
        if (v33)
        {
          atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
        }

        *(216 * v23 + 0xA8) = *(a3 + 168);
        *(216 * v23 + 0xB0) = 1;
      }

      *(216 * v23 + 0xB8) = *(a3 + 184);
      *(216 * v23 + 0xC0) = 0;
      if (*(a3 + 193) == 1)
      {
        *(216 * v23 + 0xC0) = *(a3 + 192);
        *(216 * v23 + 0xC1) = 1;
      }

      v34 = a1[10];
      v35 = a1[11];
      v36 = v27 - (v35 - v34);
      *(216 * v23 + 0xC4) = *(a3 + 196);
      *(216 * v23 + 0xD4) = *(a3 + 212);
      v18 = v27 + 216;
      v55 = (v27 + 216);
      if (v35 != v34)
      {
        v37 = 0;
        v38 = -8 * ((v35 - v34) >> 3) + 216 * v23;
        do
        {
          v39 = v38 + v37;
          *v39 = &unk_1F2A3CEF8;
          v40 = v34 + v37;
          v41 = *(v34 + v37 + 8);
          *(v39 + 24) = *(v34 + v37 + 24);
          *(v39 + 8) = v41;
          v42 = *(v34 + v37 + 40);
          *(v39 + 32) = *(v34 + v37 + 32);
          *(v39 + 40) = v42;
          if (v42)
          {
            atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
          }

          v43 = *(v40 + 3);
          v44 = *(v40 + 5);
          *(v39 + 64) = *(v40 + 4);
          *(v39 + 80) = v44;
          *(v39 + 48) = v43;
          v45 = *(v40 + 6);
          v46 = *(v40 + 7);
          v47 = *(v40 + 8);
          *(v39 + 143) = *(v40 + 143);
          *(v39 + 112) = v46;
          *(v39 + 128) = v47;
          *(v39 + 96) = v45;
          *(v39 + 152) = 0;
          *(v39 + 176) = 0;
          if (v40[176] == 1)
          {
            v48 = *(v34 + v37 + 160);
            *(v39 + 152) = *(v34 + v37 + 152);
            *(v38 + v37 + 160) = v48;
            if (v48)
            {
              atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
            }

            *(v38 + v37 + 168) = *(v34 + v37 + 168);
            *(v39 + 176) = 1;
          }

          v49 = v38 + v37;
          v50 = v34 + v37;
          *(v49 + 184) = *(v34 + v37 + 184);
          *(v49 + 192) = 0;
          if (*(v34 + v37 + 193) == 1)
          {
            *(v49 + 192) = v50[192];
            *(v49 + 193) = 1;
          }

          v51 = *(v50 + 196);
          *(v49 + 212) = *(v50 + 53);
          *(v49 + 196) = v51;
          v37 += 216;
        }

        while ((v34 + v37) != v35);
        do
        {
          md::MeshRenderable::~MeshRenderable(v34);
          v34 = (v52 + 216);
        }

        while (v34 != v35);
      }

      v53 = a1[10];
      a1[10] = v36;
      *(a1 + 11) = v55;
      if (v53)
      {
        operator delete(v53);
      }
    }

    else
    {
      *v7 = &unk_1F2A3CEF8;
      v9 = *(a3 + 8);
      *(v7 + 24) = *(a3 + 24);
      *(v7 + 8) = v9;
      v10 = *(a3 + 40);
      *(v7 + 32) = *(a3 + 32);
      *(v7 + 40) = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = *(a3 + 48);
      v12 = *(a3 + 80);
      *(v7 + 64) = *(a3 + 64);
      *(v7 + 80) = v12;
      *(v7 + 48) = v11;
      v13 = *(a3 + 96);
      v14 = *(a3 + 112);
      v15 = *(a3 + 128);
      *(v7 + 143) = *(a3 + 143);
      *(v7 + 112) = v14;
      *(v7 + 128) = v15;
      *(v7 + 96) = v13;
      *(v7 + 152) = 0;
      *(v7 + 176) = 0;
      if (*(a3 + 176) == 1)
      {
        v16 = *(a3 + 160);
        *(v7 + 152) = *(a3 + 152);
        *(v7 + 160) = v16;
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
        }

        *(v7 + 168) = *(a3 + 168);
        *(v7 + 176) = 1;
      }

      *(v7 + 184) = *(a3 + 184);
      *(v7 + 192) = 0;
      if (*(a3 + 193) == 1)
      {
        *(v7 + 192) = *(a3 + 192);
        *(v7 + 193) = 1;
      }

      v17 = *(a3 + 196);
      *(v7 + 212) = *(a3 + 212);
      *(v7 + 196) = v17;
      v18 = v7 + 216;
    }

    a1[11] = v18;
    v20 = a1[31];
    goto LABEL_48;
  }

  v19 = md::MeshRenderable::operator=(a1[10] + 216 * ((v5 - a1[7]) >> 3), a3);
  v20 = a1[31];
  if (v19 == a1[11])
  {
LABEL_48:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v20, &v56, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v20, &v56, 1);
  }
}

void gdc::ComponentStorageWrapper<arComponents::PipelineIdentifier>::emplace(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v24 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v24);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v15 = a1[10];
      v16 = v8 - v15;
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v15) >> 3);
      v18 = v17 + 1;
      if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v15) >> 3);
      if (2 * v19 > v18)
      {
        v18 = 2 * v19;
      }

      if (v19 >= 0x555555555555555)
      {
        v20 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (v20 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v21 = 24 * v17;
      *v21 = *a3;
      *(v21 + 16) = *(a3 + 2);
      v10 = 24 * v17 + 24;
      v22 = v21 - v16;
      memcpy((v21 - v16), v15, v16);
      a1[10] = v22;
      a1[11] = v10;
      a1[12] = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      v9 = *a3;
      *(v8 + 16) = *(a3 + 2);
      *v8 = v9;
      v10 = v8 + 24;
    }

    a1[11] = v10;
    v13 = a1[31];
    goto LABEL_20;
  }

  v11 = a1[10] + 24 * ((v5 - a1[7]) >> 3);
  v12 = *a3;
  *(v11 + 16) = *(a3 + 2);
  *v11 = v12;
  v13 = a1[31];
  if (v11 == a1[11])
  {
LABEL_20:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v13, &v24, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v13, &v24, 1);
  }
}

uint64_t gdc::Registry::storage<arComponents::PendingPipelineSpecificComponentsSetup>(uint64_t a1)
{
  v3 = 0xBADB2FF16CCDF7F4;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xBADB2FF16CCDF7F4);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void gdc::ComponentStorageWrapper<arComponents::ContextEntity>::emplace(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v24 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v24);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v13 = a1[10];
      v14 = v8 - v13;
      v15 = (v8 - v13) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = v7 - v13;
      if (v17 >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (!(v18 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = v15;
      v20 = (8 * v15);
      v21 = *a3;
      v22 = &v20[-v19];
      *v20 = v21;
      v9 = v20 + 1;
      memcpy(v22, v13, v14);
      a1[10] = v22;
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
      v9 = v8 + 8;
    }

    a1[11] = v9;
    v11 = a1[31];
    goto LABEL_20;
  }

  v10 = (a1[10] + v5 - a1[7]);
  *v10 = *a3;
  v11 = a1[31];
  if (v10 == a1[11])
  {
LABEL_20:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v11, &v24, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v11, &v24, 1);
  }
}

uint64_t gdc::Registry::storage<arComponents::RebuildPipelineSetup>(uint64_t a1)
{
  v3 = 0xAC35728C5B9C6C04;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xAC35728C5B9C6C04);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::RebuildPipelineSetup>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::RebuildPipelineSetup>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::RebuildPipelineSetup>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::PendingPipelineSpecificComponentsSetup>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::PendingPipelineSpecificComponentsSetup>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::PendingPipelineSpecificComponentsSetup>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::PendingCommonComponentsSetup>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::PendingCommonComponentsSetup>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::PendingCommonComponentsSetup>::~ComponentStorageWrapper(uint64_t a1)
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

void gdc::ComponentStorageWrapper<arComponents::MeshComponent>::emplace(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v32 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v32);
  if (v6)
  {
    v7 = a1[11];
    v8 = a1[12];
    if (v7 >= v8)
    {
      v16 = a1[10];
      v17 = (v7 - v16) >> 4;
      if ((v17 + 1) >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v8 - v16;
      v19 = v18 >> 3;
      if (v18 >> 3 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF0)
      {
        v20 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        if (!(v20 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v21 = (16 * v17);
      arComponents::MeshComponent::MeshComponent(v21, a3);
      v9 = v21 + 2;
      v31 = (v21 + 2);
      v23 = a1[10];
      v22 = a1[11];
      v24 = (v21 + v23 - v22);
      if (v22 != v23)
      {
        v25 = a1[10];
        v26 = v24;
        do
        {
          v27 = arComponents::MeshComponent::MeshComponent(v26, v25);
          v25 += 2;
          v26 = v27 + 2;
        }

        while (v25 != v22);
        do
        {
          v28 = *(v23 + 8);
          if (v28)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v28);
          }

          v23 += 16;
        }

        while (v23 != v22);
      }

      v29 = a1[10];
      a1[10] = v24;
      *(a1 + 11) = v31;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      v9 = arComponents::MeshComponent::MeshComponent(v7, a3) + 2;
    }

    a1[11] = v9;
    v14 = a1[31];
LABEL_30:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v14, &v32, 1);
    }

    return;
  }

  v10 = (a1[10] + 2 * (v5 - a1[7]));
  v12 = *a3;
  v11 = a3[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = v10[1];
  *v10 = v12;
  v10[1] = v11;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v14 = a1[31];
  if (v10 == a1[11])
  {
    goto LABEL_30;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v14, &v32, 1);
  }
}

void *arComponents::MeshComponent::MeshComponent(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v5 = a1[1];
    *a1 = v3;
    a1[1] = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }
  }

  else
  {
    *a1 = v3;
    a1[1] = 0;
  }

  return a1;
}

void md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::OcclusionPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  md::MeshRenderable::MeshRenderable(v20, 0, a3, (a1 + 48));
  v5 = *(a1 + 440);
  arComponents::MeshRenderableComponent::MeshRenderableComponent(v19, v20);
  *&v17 = 0x2E1ED5CD904AAD01;
  *(&v17 + 1) = "arComponents::OcclusionPipeline]";
  v18 = 31;
  v15 = a2;
  v16 = 10;
  v6 = gdc::Registry::storage<arComponents::PendingCommonComponentsSetup>(v5);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v6, a2);
  v7 = gdc::Registry::storage<arComponents::MeshRenderableComponent>(v5);
  gdc::ComponentStorageWrapper<arComponents::MeshRenderableComponent>::emplace(v7, a2, v19);
  v8 = gdc::Registry::storage<arComponents::PipelineIdentifier>(v5);
  gdc::ComponentStorageWrapper<arComponents::PipelineIdentifier>::emplace(v8, a2, &v17);
  v9 = gdc::Registry::storage<arComponents::RenderOrder>(v5);
  gdc::ComponentStorageWrapper<md::components::PendingMaterial>::emplace(v9, a2, &v16);
  v10 = gdc::Registry::storage<arComponents::PendingPipelineSpecificComponentsSetup>(v5);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v10, a2);
  v11 = gdc::Registry::storage<arComponents::ContextEntity>(v5);
  gdc::ComponentStorageWrapper<arComponents::ContextEntity>::emplace(v11, a2, &v15);
  v12 = gdc::Registry::storage<arComponents::RebuildPipelineSetup>(v5);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v12, a2);
  v13 = gdc::Registry::storage<arComponents::OcclusionPipeline>(v5);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v13, a2);
  md::MeshRenderable::~MeshRenderable(v19);
  v14 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(*(a1 + 440));
  gdc::ComponentStorageWrapper<arComponents::TransitionToRenderRegistry>::remove(v14, a2);
  md::MeshRenderable::~MeshRenderable(v20);
}

uint64_t gdc::Registry::storage<arComponents::OcclusionPipeline>(uint64_t a1)
{
  v3 = 0x2E1ED5CD904AAD01;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x2E1ED5CD904AAD01uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::OcclusionPipeline>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::OcclusionPipeline>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::OcclusionPipeline>::~ComponentStorageWrapper(uint64_t a1)
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

void md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::StandardPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  md::MeshRenderable::MeshRenderable(v20, 0, a3, (a1 + 48));
  v5 = *(a1 + 440);
  arComponents::MeshRenderableComponent::MeshRenderableComponent(v19, v20);
  *&v17 = 0x5BD3262791F15BBDLL;
  *(&v17 + 1) = "arComponents::StandardPipeline]";
  v18 = 30;
  v15 = a2;
  v16 = 10;
  v6 = gdc::Registry::storage<arComponents::PendingCommonComponentsSetup>(v5);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v6, a2);
  v7 = gdc::Registry::storage<arComponents::MeshRenderableComponent>(v5);
  gdc::ComponentStorageWrapper<arComponents::MeshRenderableComponent>::emplace(v7, a2, v19);
  v8 = gdc::Registry::storage<arComponents::PipelineIdentifier>(v5);
  gdc::ComponentStorageWrapper<arComponents::PipelineIdentifier>::emplace(v8, a2, &v17);
  v9 = gdc::Registry::storage<arComponents::RenderOrder>(v5);
  gdc::ComponentStorageWrapper<md::components::PendingMaterial>::emplace(v9, a2, &v16);
  v10 = gdc::Registry::storage<arComponents::PendingPipelineSpecificComponentsSetup>(v5);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v10, a2);
  v11 = gdc::Registry::storage<arComponents::ContextEntity>(v5);
  gdc::ComponentStorageWrapper<arComponents::ContextEntity>::emplace(v11, a2, &v15);
  v12 = gdc::Registry::storage<arComponents::RebuildPipelineSetup>(v5);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v12, a2);
  v13 = gdc::Registry::storage<arComponents::StandardPipeline>(v5);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v13, a2);
  md::MeshRenderable::~MeshRenderable(v19);
  v14 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(*(a1 + 440));
  gdc::ComponentStorageWrapper<arComponents::TransitionToRenderRegistry>::remove(v14, a2);
  md::MeshRenderable::~MeshRenderable(v20);
}

BOOL gdc::ComponentStorageWrapper<arComponents::QueuedForDeletionAfterLayout>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::QueuedForDeletionAfterLayout>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::QueuedForDeletionAfterLayout>::~ComponentStorageWrapper(uint64_t a1)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARMesh::ARShadowPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

ggl::zone_mallocator *std::__split_buffer<ggl::ARMesh::ARShadowPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARShadowPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ARMesh::ARShadowPipelineSetup *>(v5, v4);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ARMesh::ARShadowPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARMesh::ARDepthMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

ggl::zone_mallocator *std::__split_buffer<ggl::ARMesh::ARDepthMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARDepthMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ARMesh::ARDepthMeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ARMesh::ARDepthMeshPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARMesh::ARMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

ggl::zone_mallocator *std::__split_buffer<ggl::ARMesh::ARMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ARMesh::ARMeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ARMesh::ARMeshPipelineSetup *>(uint64_t a1, void *a2)
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

void md::ARMeshRenderLayer::~ARMeshRenderLayer(md::ARMeshRenderLayer *this)
{
  md::ARMeshRenderLayer::~ARMeshRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E8C10;
  v2 = *(this + 62);
  *(this + 62) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(this + 61);
  *(this + 61) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 60);
  *(this + 60) = 0;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 59);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 57);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::reset[abi:nn200100](this + 54, 0);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 392);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 352);
  md::ARMeshRenderResources::~ARMeshRenderResources((this + 64));
  v7 = *(this + 7);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  *this = &unk_1F2A16858;
  v8 = *(this + 1);
  if (v8)
  {
    *(this + 2) = v8;
    operator delete(v8);
  }
}

void md::ARMeshRenderResources::~ARMeshRenderResources(md::ARMeshRenderResources *this)
{
  ggl::RenderDataHolder::~RenderDataHolder((this + 72));
  v2 = *(this + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    v6 = ggl::FragmentedPool<ggl::ARMesh::ARDepthMeshPipelineSetup>::~FragmentedPool(v5);
    MEMORY[0x1B8C62190](v6, 0x10A0C405CD4001ALL);
  }

  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7)
  {
    v8 = ggl::FragmentedPool<ggl::ARMesh::ARMeshPipelineSetup>::~FragmentedPool(v7);
    MEMORY[0x1B8C62190](v8, 0x10A0C405CD4001ALL);
  }

  v9 = *this;
  *this = 0;
  if (v9)
  {
    v10 = ggl::FragmentedPool<ggl::ARMesh::ARShadowPipelineSetup>::~FragmentedPool(v9);
    MEMORY[0x1B8C62190](v10, 0x10A0C405CD4001ALL);
  }
}

void *ggl::FragmentedPool<ggl::ARMesh::ARDepthMeshPipelineSetup>::~FragmentedPool(void *a1)
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

  std::__function::__value_func<void ()(ggl::ARMesh::ARDepthMeshPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::ARMesh::ARDepthMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::ARMesh::ARDepthMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARDepthMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::ARMesh::ARDepthMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARDepthMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void *ggl::FragmentedPool<ggl::ARMesh::ARMeshPipelineSetup>::~FragmentedPool(void *a1)
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

  std::__function::__value_func<void ()(ggl::ARMesh::ARMeshPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::ARMesh::ARMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::ARMesh::ARMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::ARMesh::ARMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void *ggl::FragmentedPool<ggl::ARMesh::ARShadowPipelineSetup>::~FragmentedPool(void *a1)
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

  std::__function::__value_func<void ()(ggl::ARMesh::ARShadowPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::ARMesh::ARShadowPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::ARMesh::ARShadowPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARShadowPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::ARMesh::ARShadowPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARShadowPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::ARMesh::ARShadowPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::ARMesh::ARShadowPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<ggl::ARMesh::ARShadowPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARShadowPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ARMesh::ARShadowPipelineSetup *>(v2, v1);
  }
}

uint64_t std::__function::__value_func<void ()(ggl::ARMesh::ARMeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::ARMesh::ARMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<ggl::ARMesh::ARMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ARMesh::ARMeshPipelineSetup *>(v2, v1);
  }
}

uint64_t std::__function::__value_func<void ()(ggl::ARMesh::ARDepthMeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::ARMesh::ARDepthMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<ggl::ARMesh::ARDepthMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARDepthMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ARMesh::ARDepthMeshPipelineSetup *>(v2, v1);
  }
}

void *std::__hash_table<std::__hash_value_type<gdc::TypeInfo,md::pipelineECS::ImplementsSetup *>,std::__unordered_map_hasher<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,md::pipelineECS::ImplementsSetup *>,std::hash<gdc::TypeInfo>,std::equal_to<gdc::TypeInfo>,true>,std::__unordered_map_equal<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,md::pipelineECS::ImplementsSetup *>,std::equal_to<gdc::TypeInfo>,std::hash<gdc::TypeInfo>,true>,std::allocator<std::__hash_value_type<gdc::TypeInfo,md::pipelineECS::ImplementsSetup *>>>::__emplace_unique_key_args<gdc::TypeInfo,std::piecewise_construct_t const&,std::tuple<gdc::TypeInfo&&>,std::tuple<>>(void *a1, unint64_t a2)
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

void ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>::~DeviceDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A48830;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::InstanceData>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void std::__shared_ptr_emplace<md::InstanceData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2E370;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2CBA73C(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](v3 - 96);

  _Unwind_Resume(a1);
}

void ___ZL27GEOGetVectorKitVKMapViewLogv_block_invoke_2074()
{
  v0 = os_log_create("com.apple.VectorKit", "VKMapView");
  v1 = GEOGetVectorKitVKMapViewLog(void)::log;
  GEOGetVectorKitVKMapViewLog(void)::log = v0;
}

uint64_t md::WorldSpaceLabelPart::debugCompositeClassName@<X0>(_BYTE *a1@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v7);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v7, "WorldSpaceLabelPart", 19);
  if ((v14 & 0x10) != 0)
  {
    v4 = v13;
    if (v13 < v10)
    {
      v13 = v10;
      v4 = v10;
    }

    locale = v9[4].__locale_;
  }

  else
  {
    if ((v14 & 8) == 0)
    {
      v3 = 0;
      a1[23] = 0;
      goto LABEL_14;
    }

    locale = v9[1].__locale_;
    v4 = v9[3].__locale_;
  }

  v3 = v4 - locale;
  if ((v4 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  a1[23] = v3;
  if (v3)
  {
    memmove(a1, locale, v3);
  }

LABEL_14:
  a1[v3] = 0;
  v7 = *MEMORY[0x1E69E54E8];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(__p);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v15);
}

void sub_1B2CBABE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
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

void md::Logic<md::ARPushDebugDrawItemsLogic,md::ARPushDebugDrawItemsContext,md::LogicDependencies<gdc::TypeList<md::ARApplyWorldTransformUpdatesContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void *md::ARPushDebugDrawItemsLogic::runBeforeLayout(uint64_t a1, int a2, int a3, md::DebugDrawContext *this)
{
  v176 = *MEMORY[0x1E69E9840];
  md::DebugDrawContext::clearDebugDrawContext(this);
  v5 = *(a1 + 120);
  v6 = gdc::Registry::storage<arComponents::NeedsDebugDraw>(v5);
  v7 = gdc::Registry::storage<arComponents::Boundary>(v5);
  v8 = gdc::Registry::storage<arComponents::WorldTransform>(v5);
  v9.i64[0] = v6;
  v9.i64[1] = v7;
  v158 = v9;
  v10 = *(a1 + 120);
  v11 = gdc::Registry::storage<arComponents::NeedsDebugDraw>(v10);
  v157 = gdc::Registry::storage<arComponents::LocalBounds>(v10);
  v156 = gdc::Registry::storage<arComponents::MapTileDataComponent>(v10);
  v160 = v11;
  v143 = v11;
  v141 = a1;
  v12 = *(a1 + 120);
  v142 = gdc::Registry::storage<arComponents::NeedsDebugDraw>(v12);
  v168 = vaddq_s64(v158, vdupq_n_s64(0x20uLL));
  v153 = gdc::Registry::storage<arComponents::WorldBounds>(v12);
  v154 = v8 + 4;
  *&v169 = v8 + 4;
  v13 = v168.i64[0];
  v14 = 1;
  v15 = &v168;
  do
  {
    if (*(v168.i64[v14] + 32) - *(v168.i64[v14] + 24) < *(v13 + 32) - *(v13 + 24))
    {
      v13 = v168.i64[v14];
      v15 = (&v168 + v14 * 8);
    }

    ++v14;
  }

  while (v14 != 3);
  v159 = v6 + 4;
  v144 = v15->i64[0];
  if (v6 + 4 == v15->i64[0])
  {
    v17 = v6[7];
    v16 = v6[8];
    if (v17 != v16)
    {
      v18 = v6[10];
      v149 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v146 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v151 = v7;
      do
      {
        v19 = *(v17 + 4);
        Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v7 + 4, v19);
        v21 = v7[8];
        if (v21 != Index)
        {
          v22 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v154, v19);
          v23 = v8[8];
          if (v23 != v22)
          {
            v24 = v7;
            v25 = v6;
            v26 = v16;
            v27 = *(v17 + 4);
            v28 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v24 + 4, v27);
            v29 = v21 == v28 ? v24[11] : v24[10] + 24 * ((v28 - v24[7]) >> 3);
            v30 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v154, v27);
            v31 = (v23 == v30 ? v8[11] : v8[10] + 80 * ((v30 - v8[7]) >> 3));
            v16 = v26;
            v32 = 0;
            v6 = v25;
            do
            {
              *(&v162 + v32) = *(v29 + 4 * v32);
              ++v32;
            }

            while (v32 != 3);
            v7 = v151;
            do
            {
              *(&v162 + v32) = *(v29 + 4 * v32);
              ++v32;
            }

            while (v32 != 6);
            geo::Transform<double>::toMatrix(&v168, v31);
            v165 = v149;
            v166 = xmmword_1B33B0520;
            v167 = v146;
            v172 = &unk_1F2A61070;
            v173 = &v165;
            v174 = &v168;
            v175 = &v172;
            gm::Box<double,3>::forEachCorner(&v162, &v172);
            std::__function::__value_func<void ()(gm::Matrix<double,3,1> &)>::~__value_func[abi:nn200100](&v172);
            v168 = v165;
            v169 = v166;
            v170 = v167;
            v171 = 0;
            v33 = *(v18 + 1);
            LODWORD(v162) = *(v18 + 2);
            BYTE4(v162) = 0;
            v163 = 0;
            v164 = v33;
            md::DebugDrawContext::addWorldDebugShape(this, &v168, &v162);
            if (v171 != -1)
            {
              (off_1F29E91C8[v171])(&v162, &v168);
            }
          }
        }

        v18 += 6;
        v17 += 8;
      }

      while (v17 != v16);
    }
  }

  v152 = v7 + 4;
  if (v7 + 4 == v144)
  {
    v34 = v7[7];
    v35 = v7[8];
    if (v34 != v35)
    {
      v36 = v7[10];
      v150 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v147 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v145 = v7[8];
      do
      {
        v37 = *(v34 + 4);
        v38 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v159, v37);
        v39 = v6[8];
        if (v39 != v38)
        {
          v40 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v154, v37);
          v41 = v8[8];
          if (v41 != v40)
          {
            v42 = *(v34 + 4);
            v43 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v159, v42);
            v44 = v39 == v43 ? v6[11] : v6[10] + 6 * ((v43 - v6[7]) >> 3);
            v45 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v154, v42);
            v46 = (v41 == v45 ? v8[11] : v8[10] + 80 * ((v45 - v8[7]) >> 3));
            for (i = 0; i != 3; ++i)
            {
              *(&v162 + i) = *(v36 + 4 * i);
            }

            do
            {
              *(&v162 + i) = *(v36 + 4 * i);
              ++i;
            }

            while (i != 6);
            geo::Transform<double>::toMatrix(&v168, v46);
            v165 = v150;
            v166 = xmmword_1B33B0520;
            v167 = v147;
            v172 = &unk_1F2A61070;
            v173 = &v165;
            v174 = &v168;
            v175 = &v172;
            gm::Box<double,3>::forEachCorner(&v162, &v172);
            std::__function::__value_func<void ()(gm::Matrix<double,3,1> &)>::~__value_func[abi:nn200100](&v172);
            v168 = v165;
            v169 = v166;
            v170 = v167;
            v171 = 0;
            v48 = *(v44 + 1);
            LODWORD(v162) = *(v44 + 2);
            BYTE4(v162) = 0;
            v163 = 0;
            v164 = v48;
            md::DebugDrawContext::addWorldDebugShape(this, &v168, &v162);
            v35 = v145;
            if (v171 != -1)
            {
              (off_1F29E91C8[v171])(&v162, &v168);
            }
          }
        }

        v36 += 24;
        v34 += 8;
      }

      while (v34 != v35);
    }
  }

  if (v154 == v144)
  {
    v49 = v8[7];
    v50 = v8[8];
    if (v49 != v50)
    {
      v51 = v8[10];
      v155 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v148 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      do
      {
        v52 = *(v49 + 4);
        v53 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v159, v52);
        v54 = v6[8];
        if (v54 != v53)
        {
          v55 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v152, v52);
          v56 = v7[8];
          if (v56 != v55)
          {
            v57 = *(v49 + 4);
            v58 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v159, v57);
            v59 = v54 == v58 ? v6[11] : v6[10] + 6 * ((v58 - v6[7]) >> 3);
            v60 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v152, v57);
            v61 = v56 == v60 ? v7[11] : v7[10] + 24 * ((v60 - v7[7]) >> 3);
            for (j = 0; j != 3; ++j)
            {
              *(&v162 + j) = *(v61 + 4 * j);
            }

            do
            {
              *(&v162 + j) = *(v61 + 4 * j);
              ++j;
            }

            while (j != 6);
            geo::Transform<double>::toMatrix(&v168, v51);
            v165 = v155;
            v166 = xmmword_1B33B0520;
            v167 = v148;
            v172 = &unk_1F2A61070;
            v173 = &v165;
            v174 = &v168;
            v175 = &v172;
            gm::Box<double,3>::forEachCorner(&v162, &v172);
            std::__function::__value_func<void ()(gm::Matrix<double,3,1> &)>::~__value_func[abi:nn200100](&v172);
            v168 = v165;
            v169 = v166;
            v170 = v167;
            v171 = 0;
            v63 = *(v59 + 1);
            LODWORD(v162) = *(v59 + 2);
            BYTE4(v162) = 0;
            v163 = 0;
            v164 = v63;
            md::DebugDrawContext::addWorldDebugShape(this, &v168, &v162);
            if (v171 != -1)
            {
              (off_1F29E91C8[v171])(&v162, &v168);
            }
          }
        }

        v51 += 10;
        v49 += 8;
      }

      while (v49 != v50);
    }
  }

  v64 = v157;
  v65.i64[0] = v143;
  v65.i64[1] = v157;
  v66 = v156 + 4;
  v168 = vaddq_s64(v65, vdupq_n_s64(0x20uLL));
  *&v169 = v156 + 4;
  v67 = v168.i64[0];
  v68 = 1;
  v69 = &v168;
  do
  {
    if (*(v168.i64[v68] + 32) - *(v168.i64[v68] + 24) < *(v67 + 32) - *(v67 + 24))
    {
      v67 = v168.i64[v68];
      v69 = (&v168 + v68 * 8);
    }

    ++v68;
  }

  while (v68 != 3);
  v70 = v69->i64[0];
  v71 = v160 + 4;
  if (v160 + 4 == v69->i64[0])
  {
    v72 = v160[7];
    v73 = v160[8];
    if (v72 != v73)
    {
      v74 = v160[10];
      do
      {
        v75 = *(v72 + 4);
        v76 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v64 + 4, v75);
        v77 = v64[8];
        if (v77 != v76)
        {
          v78 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v66, v75);
          v79 = v156[8];
          if (v79 != v78)
          {
            v80 = *(v72 + 4);
            v81 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v157 + 4, v80);
            if (v77 == v81)
            {
              v82 = v157[11];
            }

            else
            {
              v82 = (v157[10] + 168 * ((v81 - v157[7]) >> 3));
            }

            v83 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v66, v80);
            if (v79 == v83)
            {
              v84 = v156[11];
            }

            else
            {
              v84 = (v156[10] + v83 - v156[7]);
            }

            _ZZN2md25ARPushDebugDrawItemsLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_35ARApplyWorldTransformUpdatesContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_27ARPushDebugDrawItemsContextEENK3__1clENS5_6EntityERN12arComponents14NeedsDebugDrawERNSI_11LocalBoundsERNSI_20MapTileDataComponentE(this, v74, v82, *v84);
          }
        }

        v74 += 6;
        v72 += 8;
        v64 = v157;
      }

      while (v72 != v73);
    }
  }

  v85 = v64 + 4;
  if (v64 + 4 == v70)
  {
    v86 = v157[7];
    v87 = v157[8];
    if (v86 != v87)
    {
      v88 = v157[10];
      do
      {
        v89 = *(v86 + 4);
        v90 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v71, v89);
        v91 = v160[8];
        if (v91 != v90)
        {
          v92 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v66, v89);
          v93 = v156[8];
          if (v93 != v92)
          {
            v94 = *(v86 + 4);
            v95 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v71, v94);
            if (v91 == v95)
            {
              v96 = v160[11];
            }

            else
            {
              v96 = v160[10] + 6 * ((v95 - v160[7]) >> 3);
            }

            v97 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v66, v94);
            if (v93 == v97)
            {
              v98 = v156[11];
            }

            else
            {
              v98 = (v156[10] + v97 - v156[7]);
            }

            _ZZN2md25ARPushDebugDrawItemsLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_35ARApplyWorldTransformUpdatesContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_27ARPushDebugDrawItemsContextEENK3__1clENS5_6EntityERN12arComponents14NeedsDebugDrawERNSI_11LocalBoundsERNSI_20MapTileDataComponentE(this, v96, v88, *v98);
          }
        }

        v88 = (v88 + 168);
        v86 += 8;
      }

      while (v86 != v87);
    }
  }

  if (v66 == v70)
  {
    v99 = v156[7];
    v100 = v156[8];
    if (v99 != v100)
    {
      v101 = v156[10];
      do
      {
        v102 = *(v99 + 4);
        v103 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v71, v102);
        v104 = v160[8];
        if (v104 != v103)
        {
          v105 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v85, v102);
          v106 = v157[8];
          if (v106 != v105)
          {
            v107 = *(v99 + 4);
            v108 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v71, v107);
            if (v104 == v108)
            {
              v109 = v160[11];
            }

            else
            {
              v109 = v160[10] + 6 * ((v108 - v160[7]) >> 3);
            }

            v110 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v85, v107);
            if (v106 == v110)
            {
              v111 = v157[11];
            }

            else
            {
              v111 = (v157[10] + 168 * ((v110 - v157[7]) >> 3));
            }

            _ZZN2md25ARPushDebugDrawItemsLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_35ARApplyWorldTransformUpdatesContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_27ARPushDebugDrawItemsContextEENK3__1clENS5_6EntityERN12arComponents14NeedsDebugDrawERNSI_11LocalBoundsERNSI_20MapTileDataComponentE(this, v109, v111, *v101);
          }
        }

        ++v101;
        v99 += 8;
      }

      while (v99 != v100);
    }
  }

  v112 = v142 + 4;
  v113 = v153 + 4;
  v115 = v142[7];
  v114 = v142[8];
  if (v153[8] - v153[7] >= (v114 - v115))
  {
    v116 = v142 + 4;
  }

  else
  {
    v116 = v153 + 4;
  }

  if (v112 == v116 && v115 != v114)
  {
    v117 = (v142[10] + 2);
    do
    {
      v118 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v113, *(v115 + 4));
      v119 = v153[8];
      if (v119 != v118)
      {
        v120 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v113, *(v115 + 4));
        v121 = (v119 == v120 ? v153[11] : v153[10] + 48 * ((v120 - v153[7]) >> 3));
        v122 = *v121;
        v123 = v121[2];
        v169 = v121[1];
        v170 = v123;
        v168 = v122;
        v171 = 0;
        v124 = *(v117 - 1);
        v165.i32[0] = *v117;
        v165.i8[4] = 0;
        v165.i8[8] = 0;
        v165.i8[12] = v124;
        md::DebugDrawContext::addWorldDebugShape(this, &v168, &v165);
        if (v171 != -1)
        {
          (off_1F29E91C8[v171])(&v165, &v168);
        }
      }

      v115 += 8;
      v117 = (v117 + 6);
    }

    while (v115 != v114);
  }

  if (v113 == v116)
  {
    v125 = v153[7];
    v126 = v153[8];
    if (v125 != v126)
    {
      v127 = v153[10];
      do
      {
        v128 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v112, *(v125 + 4));
        v129 = v142[8];
        if (v129 != v128)
        {
          v130 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v112, *(v125 + 4));
          v131 = v129 == v130 ? v142[11] : v142[10] + 6 * ((v130 - v142[7]) >> 3);
          v132 = *v127;
          v133 = v127[2];
          v169 = v127[1];
          v170 = v133;
          v168 = v132;
          v171 = 0;
          v134 = *(v131 + 1);
          v165.i32[0] = *(v131 + 2);
          v165.i8[4] = 0;
          v165.i8[8] = 0;
          v165.i8[12] = v134;
          md::DebugDrawContext::addWorldDebugShape(this, &v168, &v165);
          if (v171 != -1)
          {
            (off_1F29E91C8[v171])(&v165, &v168);
          }
        }

        v127 += 3;
        v125 += 8;
      }

      while (v125 != v126);
    }
  }

  result = gdc::Registry::storage<arComponents::NeedsDebugDraw>(*(v141 + 120));
  v136 = result;
  if (result[29])
  {
    v137 = result[28];
    if (v137)
    {
      v138 = result[31];
      v139 = result[7];
      v140 = (result[8] - v139) >> 3;
      do
      {
        result = std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v137[6], v138, v139, v140);
        v137 = *v137;
      }

      while (v137);
    }
  }

  v136[8] = v136[7];
  v136[11] = v136[10];
  return result;
}

void sub_1B2CBBADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  v39 = *(v37 - 152);
  if (v39 != -1)
  {
    (off_1F29E91C8[v39])(&a31, v37 - 256);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::Registry::storage<arComponents::WorldBounds>(uint64_t a1)
{
  v3 = 0xE50E89C80204E03FLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xE50E89C80204E03FLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void _ZZN2md25ARPushDebugDrawItemsLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_35ARApplyWorldTransformUpdatesContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_27ARPushDebugDrawItemsContextEENK3__1clENS5_6EntityERN12arComponents14NeedsDebugDrawERNSI_11LocalBoundsERNSI_20MapTileDataComponentE(void *a1, uint64_t a2, arComponents::LocalBounds *this, uint64_t a4)
{
  if ((*a2 & 1) == 0)
  {
    v57 = *(this + 5);
    *v114 = *this;
    *&v114[4] = vuzp2q_s32(*(this + 4), vrev64q_s32(*(this + 4)));
    *&v114[20] = v57;
    v116 = 0;
    v58 = *(a2 + 1);
    v111 = *(a2 + 2);
    LOBYTE(v112) = 0;
    BYTE4(v112) = 0;
    v113 = v58;
    v59 = 0x9DDFEA08EB382D69 * ((8 * ((a4 + 168) & 0x1FFFFFFF) + 8) ^ ((a4 + 168) >> 32));
    v60 = 0x9DDFEA08EB382D69 * (((a4 + 168) >> 32) ^ (v59 >> 47) ^ v59);
    v61 = 0x9DDFEA08EB382D69 * (v60 ^ (v60 >> 47));
    v62 = a1[6];
    if (v62)
    {
      v63 = vcnt_s8(v62);
      v63.i16[0] = vaddlv_u8(v63);
      if (v63.u32[0] > 1uLL)
      {
        v64 = 0x9DDFEA08EB382D69 * (v60 ^ (v60 >> 47));
        if (v61 >= *&v62)
        {
          v64 = v61 % *&v62;
        }
      }

      else
      {
        v64 = v61 & (*&v62 - 1);
      }

      v65 = *(a1[5] + 8 * v64);
      if (v65)
      {
        v66 = *v65;
        if (*v65)
        {
          do
          {
            v67 = v66[1];
            if (v67 == v61)
            {
              if (v66[2] == a4 + 168)
              {
                v68 = v66[3];
                v69 = v66[4];
                while (1)
                {
                  if (v68 == v69)
                  {
                    goto LABEL_91;
                  }

                  if (debugComponents::DisplayOptions::operator==(&v111, v68))
                  {
                    break;
                  }

                  v68 += 5;
                }

                if (v68 == v69)
                {
LABEL_91:
                  v70 = v111;
                  *v118 = v111;
                  *&v118[4] = v112;
                  v119 = v113;
                  v121 = 0;
                  v122 = 0;
                  v120 = 0;
                  memset(v117, 0, sizeof(v117));
                  v72 = v66[3];
                  v71 = v66[4];
                  if (v72 == v71)
                  {
                    goto LABEL_97;
                  }

                  v68 = v66[3];
                  while (!debugComponents::DisplayOptions::operator==(v118, v68))
                  {
                    v68 += 5;
                    if (v68 == v71)
                    {
                      goto LABEL_97;
                    }
                  }

                  if (v68 == v71)
                  {
LABEL_97:
                    v73 = v66[5];
                    if (v71 >= v73)
                    {
                      v76 = 0xCCCCCCCCCCCCCCCDLL * ((v71 - v72) >> 3);
                      v77 = v76 + 1;
                      if (v76 + 1 > 0x666666666666666)
                      {
                        std::__throw_bad_array_new_length[abi:nn200100]();
                      }

                      v78 = 0xCCCCCCCCCCCCCCCDLL * ((v73 - v72) >> 3);
                      if (2 * v78 > v77)
                      {
                        v77 = 2 * v78;
                      }

                      if (v78 >= 0x333333333333333)
                      {
                        v79 = 0x666666666666666;
                      }

                      else
                      {
                        v79 = v77;
                      }

                      v126 = v66 + 3;
                      if (v79)
                      {
                        if (v79 <= 0x666666666666666)
                        {
                          operator new();
                        }

LABEL_139:
                        std::__throw_bad_array_new_length[abi:nn200100]();
                      }

                      v80 = 40 * v76;
                      *&v124 = 0;
                      *(&v124 + 1) = v80;
                      v125 = 40 * v76;
                      *v80 = v70;
                      *(v80 + 4) = *&v118[4];
                      *(v80 + 12) = v119;
                      *(v80 + 24) = 0;
                      *(v80 + 32) = 0;
                      *(v80 + 16) = 0;
                      std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>::__init_with_size[abi:nn200100]<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>*,std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>*>(40 * v76 + 16, 0, 0, 0);
                      *&v125 = v125 + 40;
                      v82 = v66[3];
                      v81 = v66[4];
                      v83 = *(&v124 + 1) + v82 - v81;
                      if (v82 != v81)
                      {
                        v84 = v66[3];
                        v85 = *(&v124 + 1) + v82 - v81;
                        do
                        {
                          *v85 = *v84;
                          v86 = *(v84 + 4);
                          *(v85 + 12) = *(v84 + 12);
                          *(v85 + 4) = v86;
                          *(v85 + 24) = 0;
                          *(v85 + 32) = 0;
                          *(v85 + 16) = 0;
                          *(v85 + 16) = *(v84 + 16);
                          *(v85 + 32) = *(v84 + 32);
                          *(v84 + 16) = 0;
                          *(v84 + 24) = 0;
                          *(v84 + 32) = 0;
                          v84 += 40;
                          v85 += 40;
                        }

                        while (v84 != v81);
                        do
                        {
                          v123 = (v82 + 16);
                          std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>::__destroy_vector::operator()[abi:nn200100](&v123);
                          v82 += 40;
                        }

                        while (v82 != v81);
                      }

                      v87 = v66[3];
                      v66[3] = v83;
                      v88 = v66[5];
                      v109 = v125;
                      *(v66 + 2) = v125;
                      *&v125 = v87;
                      *(&v125 + 1) = v88;
                      *&v124 = v87;
                      *(&v124 + 1) = v87;
                      std::__split_buffer<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>::~__split_buffer(&v124);
                      v75 = v109;
                    }

                    else
                    {
                      *v71 = v70;
                      v74 = *&v118[4];
                      *(v71 + 12) = v119;
                      *(v71 + 4) = v74;
                      *(v71 + 24) = 0;
                      *(v71 + 32) = 0;
                      *(v71 + 16) = 0;
                      std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>::__init_with_size[abi:nn200100]<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>*,std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>*>(v71 + 16, v120, v121, 0x6DB6DB6DB6DB6DB7 * ((v121 - v120) >> 3));
                      v75 = v71 + 40;
                      v66[4] = v71 + 40;
                    }

                    v66[4] = v75;
                    v68 = (v75 - 40);
                  }

                  *&v124 = &v120;
                  std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>::__destroy_vector::operator()[abi:nn200100](&v124);
                  *&v124 = v117;
                  std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>::__destroy_vector::operator()[abi:nn200100](&v124);
                }

                v90 = v68[3];
                v89 = v68[4];
                if (v90 >= v89)
                {
                  v92 = v68[2];
                  v93 = 0x6DB6DB6DB6DB6DB7 * ((v90 - v92) >> 3);
                  if ((v93 + 1) > 0x492492492492492)
                  {
                    std::__throw_bad_array_new_length[abi:nn200100]();
                  }

                  v94 = 0x6DB6DB6DB6DB6DB7 * ((v89 - v92) >> 3);
                  v95 = 2 * v94;
                  if (2 * v94 <= v93 + 1)
                  {
                    v95 = v93 + 1;
                  }

                  if (v94 >= 0x249249249249249)
                  {
                    v96 = 0x492492492492492;
                  }

                  else
                  {
                    v96 = v95;
                  }

                  v126 = v68 + 2;
                  if (v96)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>(v96);
                  }

                  *&v124 = 0;
                  *(&v124 + 1) = 56 * v93;
                  v125 = (56 * v93);
                  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](56 * v93, v114);
                  v97 = v68[2];
                  v98 = v68[3];
                  v99 = v98 - v97;
                  v100 = *(&v124 + 1);
                  *&v125 = v125 + 56;
                  if (v98 != v97)
                  {
                    v101 = (*(&v124 + 1) - 8 * ((v98 - v97) >> 3) + 52);
                    v102 = v97;
                    do
                    {
                      *(v101 - 52) = 0;
                      *v101 = -1;
                      v103 = *(v102 + 52);
                      if (v103 != -1)
                      {
                        *v118 = v101 - 13;
                        (off_1F29F1EC8[v103])(v118, v102);
                        *v101 = v103;
                      }

                      v102 += 56;
                      v101 += 14;
                    }

                    while (v102 != v98);
                    v99 = v98 - v97;
                    do
                    {
                      v104 = *(v97 + 52);
                      if (v104 != -1)
                      {
                        (off_1F29F1E88[v104])(v118, v97);
                      }

                      *(v97 + 52) = -1;
                      v97 += 56;
                    }

                    while (v97 != v98);
                  }

                  v105 = v68[2];
                  v68[2] = v100 - v99;
                  v106 = v68[4];
                  v110 = v125;
                  *(v68 + 3) = v125;
                  *&v125 = v105;
                  *(&v125 + 1) = v106;
                  *&v124 = v105;
                  *(&v124 + 1) = v105;
                  std::__split_buffer<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>::~__split_buffer(&v124);
                  v91 = v110;
                }

                else
                {
                  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](v68[3], v114);
                  v91 = v90 + 56;
                  v68[3] = v90 + 56;
                }

                v68[3] = v91;
                if (v116 != -1)
                {
                  (off_1F29E91E0[v116])(&v124, v114);
                }

                return;
              }
            }

            else
            {
              if (v63.u32[0] > 1uLL)
              {
                if (v67 >= *&v62)
                {
                  v67 %= *&v62;
                }
              }

              else
              {
                v67 &= *&v62 - 1;
              }

              if (v67 != v64)
              {
                break;
              }
            }

            v66 = *v66;
          }

          while (v66);
        }
      }
    }

    operator new();
  }

  v7 = arComponents::LocalBounds::debugEdges(this);
  *v118 = *(a2 + 2);
  v118[4] = 0;
  v118[8] = 0;
  v119 = 1;
  v8 = *v7;
  v108 = v7[1];
  if (*v7 == v108)
  {
    return;
  }

  v9 = a4 + 168;
  v10 = 0x9DDFEA08EB382D69 * ((8 * ((a4 + 168) & 0x1FFFFFFF) + 8) ^ ((a4 + 168) >> 32));
  v11 = 0x9DDFEA08EB382D69 * (((a4 + 168) >> 32) ^ (v10 >> 47) ^ v10);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
  do
  {
    v13 = a1[1];
    if (!*&v13)
    {
      goto LABEL_20;
    }

    v14 = vcnt_s8(v13);
    v14.i16[0] = vaddlv_u8(v14);
    if (v14.u32[0] > 1uLL)
    {
      v15 = v12;
      if (v12 >= *&v13)
      {
        v15 = v12 % *&v13;
      }
    }

    else
    {
      v15 = v12 & (*&v13 - 1);
    }

    v16 = *(*a1 + 8 * v15);
    if (!v16 || (v17 = *v16) == 0)
    {
LABEL_20:
      operator new();
    }

    while (1)
    {
      v18 = v17[1];
      if (v18 == v12)
      {
        break;
      }

      if (v14.u32[0] > 1uLL)
      {
        if (v18 >= *&v13)
        {
          v18 %= *&v13;
        }
      }

      else
      {
        v18 &= *&v13 - 1;
      }

      if (v18 != v15)
      {
        goto LABEL_20;
      }

LABEL_19:
      v17 = *v17;
      if (!v17)
      {
        goto LABEL_20;
      }
    }

    if (v17[2] != v9)
    {
      goto LABEL_19;
    }

    v20 = v17[3];
    v19 = v17[4];
    while (1)
    {
      if (v20 == v19)
      {
        goto LABEL_25;
      }

      if (debugComponents::DisplayOptions::operator==(v118, v20))
      {
        break;
      }

      v20 += 5;
    }

    if (v20 == v19)
    {
LABEL_25:
      v21 = v9;
      v22 = *v118;
      LODWORD(v124) = *v118;
      *(&v124 + 4) = *&v118[4];
      BYTE12(v124) = v119;
      v126 = 0;
      v125 = 0uLL;
      v24 = v17[3];
      v23 = v17[4];
      if (v24 == v23)
      {
        goto LABEL_31;
      }

      v20 = v17[3];
      while (!debugComponents::DisplayOptions::operator==(&v124, v20))
      {
        v20 += 5;
        if (v20 == v23)
        {
          goto LABEL_31;
        }
      }

      if (v20 == v23)
      {
LABEL_31:
        v25 = v17[5];
        if (v23 < v25)
        {
          *v23 = v22;
          *(v23 + 4) = *&v118[4];
          *(v23 + 12) = v119;
          std::vector<gm::LineSegment<float,3>>::vector[abi:nn200100]((v23 + 16), &v125);
          v17[4] = v23 + 40;
          v20 = v23;
          goto LABEL_50;
        }

        v26 = 0xCCCCCCCCCCCCCCCDLL * ((v23 - v24) >> 3);
        v27 = v26 + 1;
        if (v26 + 1 > 0x666666666666666)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v28 = 0xCCCCCCCCCCCCCCCDLL * ((v25 - v24) >> 3);
        if (2 * v28 > v27)
        {
          v27 = 2 * v28;
        }

        if (v28 >= 0x333333333333333)
        {
          v29 = 0x666666666666666;
        }

        else
        {
          v29 = v27;
        }

        v115 = v17 + 3;
        if (v29)
        {
          if (v29 <= 0x666666666666666)
          {
            operator new();
          }

          goto LABEL_139;
        }

        v30 = 40 * v26;
        *v114 = 0;
        *&v114[8] = v30;
        *&v114[16] = 40 * v26;
        *v30 = v22;
        *(v30 + 4) = *&v118[4];
        *(v30 + 12) = v119;
        std::vector<gm::LineSegment<float,3>>::vector[abi:nn200100]((40 * v26 + 16), &v125);
        *&v114[16] += 40;
        v32 = v17[3];
        v31 = v17[4];
        v33 = *&v114[8] + v32 - v31;
        if (v32 != v31)
        {
          v34 = v17[3];
          v35 = *&v114[8] + v32 - v31;
          do
          {
            *v35 = *v34;
            v36 = *(v34 + 4);
            *(v35 + 12) = *(v34 + 12);
            *(v35 + 4) = v36;
            *(v35 + 24) = 0;
            *(v35 + 32) = 0;
            *(v35 + 16) = 0;
            *(v35 + 16) = *(v34 + 16);
            *(v35 + 32) = *(v34 + 32);
            *(v34 + 16) = 0;
            *(v34 + 24) = 0;
            *(v34 + 32) = 0;
            v34 += 40;
            v35 += 40;
          }

          while (v34 != v31);
          do
          {
            v37 = *(v32 + 16);
            if (v37)
            {
              *(v32 + 24) = v37;
              operator delete(v37);
            }

            v32 += 40;
          }

          while (v32 != v31);
        }

        v38 = v17[3];
        v17[3] = v33;
        v39 = v17[5];
        v107 = *&v114[16];
        *(v17 + 2) = *&v114[16];
        *&v114[16] = v38;
        *&v114[24] = v39;
        *v114 = v38;
        *&v114[8] = v38;
        std::__split_buffer<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>::~__split_buffer(v114);
        v40 = v125;
        v17[4] = v107;
        v20 = (v107 - 40);
        if (v40)
        {
          *(&v125 + 1) = v40;
          operator delete(v40);
        }
      }

LABEL_50:
      v9 = v21;
    }

    v42 = v20[3];
    v41 = v20[4];
    if (v42 >= v41)
    {
      v45 = v20[2];
      v46 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v45) >> 3);
      v47 = v46 + 1;
      if (v46 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v48 = 0xAAAAAAAAAAAAAAABLL * ((v41 - v45) >> 3);
      if (2 * v48 > v47)
      {
        v47 = 2 * v48;
      }

      if (v48 >= 0x555555555555555)
      {
        v49 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v49 = v47;
      }

      if (v49)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v49);
      }

      v50 = 24 * v46;
      v51 = *v8;
      *(v50 + 16) = *(v8 + 2);
      *v50 = v51;
      v52 = v20[2];
      v53 = v20[3];
      v54 = 24 * v46 + v52 - v53;
      if (v52 != v53)
      {
        v55 = (v50 + v52 - v53);
        do
        {
          v56 = *v52;
          *(v55 + 2) = *(v52 + 2);
          *v55 = v56;
          v55 += 24;
          v52 += 24;
        }

        while (v52 != v53);
        v52 = v20[2];
      }

      v44 = v50 + 24;
      v20[2] = v54;
      v20[3] = v50 + 24;
      v20[4] = 0;
      if (v52)
      {
        operator delete(v52);
      }
    }

    else
    {
      v43 = *v8;
      *(v42 + 16) = *(v8 + 2);
      *v42 = v43;
      v44 = v42 + 24;
    }

    v20[3] = v44;
    v8 = (v8 + 24);
  }

  while (v8 != v108);
}

void sub_1B2CBCDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  *(v10 - 136) = v9;
  std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>::__destroy_vector::operator()[abi:nn200100]((v10 - 136));
  *(v10 - 136) = va1;
  std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>::__destroy_vector::operator()[abi:nn200100]((v10 - 136));
  if (HIDWORD(v19) != -1)
  {
    (off_1F29E91E0[HIDWORD(v19)])(va1, va);
  }

  _Unwind_Resume(a1);
}

uint64_t arComponents::LocalBounds::debugEdges(arComponents::LocalBounds *this)
{
  v2 = this;
  if ((*(this + 128) & 1) == 0)
  {
    v99 = 0;
    v92 = 0u;
    v98 = 0u;
    __asm { FMOV            V0.4S, #1.0 }

    v100 = _Q0;
    geo::Transform<float>::toMatrix(v128, &v98);
    v2 = this;
    v8 = 0;
    do
    {
      v96 = v8;
      v103 = xmmword_1B33B0870;
      v104 = xmmword_1B33B0870;
      v105 = xmmword_1B33B0880;
      v106 = xmmword_1B33B0890;
      v107 = xmmword_1B33B08A0;
      v108 = xmmword_1B33B08B0;
      v109 = xmmword_1B33B08C0;
      v110 = xmmword_1B33B08D0;
      v111 = xmmword_1B33B08E0;
      v112 = 0x3E8483EDBF7746EDLL;
      v113 = 0;
      v9 = &v103 + 12 * v8;
      v10 = *(v9 + 2);
      v11 = -*(v2 + 2 * v8);
      v121 = *v9;
      v122 = v10;
      v123 = v11;
      v12 = geo::DiscreteOrientedPolytope<arComponents::XY26DOPTraits<float>>::maxSlabPlane(v2, v8);
      v2 = this;
      v124 = v12;
      v125 = v13;
      v126 = v14;
      v127 = v15;
      v16 = v96 + 1;
      if (v96 <= 0xB)
      {
        do
        {
          v97 = v16;
          v103 = xmmword_1B33B0870;
          v104 = xmmword_1B33B0870;
          v105 = xmmword_1B33B0880;
          v106 = xmmword_1B33B0890;
          v107 = xmmword_1B33B08A0;
          v108 = xmmword_1B33B08B0;
          v109 = xmmword_1B33B08C0;
          v110 = xmmword_1B33B08D0;
          v111 = xmmword_1B33B08E0;
          v112 = 0x3E8483EDBF7746EDLL;
          v113 = 0;
          v17 = &v103 + 12 * v16;
          v18 = *(v17 + 2);
          v19 = -*(v2 + 2 * v16);
          v118 = *v17;
          v119 = v18;
          *v120 = v19;
          v20 = geo::DiscreteOrientedPolytope<arComponents::XY26DOPTraits<float>>::maxSlabPlane(v2, v16);
          v22 = v96;
          v23 = v97;
          v2 = this;
          v24 = 0;
          *&v120[1] = v20;
          v120[2] = v21.i32[0];
          v120[3] = v25;
          v120[4] = v26;
          v27 = &v121;
          v28 = v92;
          do
          {
            v29 = 0;
            v89 = v24;
            v30 = &v121 + v24;
            v31 = &v118;
            v90 = &v121 + v24;
            do
            {
              v93 = v28;
              v32 = 0;
              v21.i32[0] = *(&v118 + v29);
              v33 = *(&v118 + v29 + 4);
              v34 = -(vmul_lane_f32(*v30, v33, 1).f32[0] - (*v21.i32 * *(v30 + 2)));
              v21 = vmla_f32(vneg_f32(vmul_f32(vzip1_s32(v21, v33), *(v30 + 4))), *v30, v33);
              *&v135[0] = __PAIR64__(LODWORD(v34), v21.u32[1]);
              DWORD2(v135[0]) = v21.i32[0];
              v35 = 0.0;
              do
              {
                v35 = v35 + (*(v135 + v32) * *(v135 + v32));
                v32 += 4;
              }

              while (v32 != 12);
              if (v35 >= 0.00000011921)
              {
                v36 = 0;
                v37 = -*(v30 + 3);
                do
                {
                  *(&v103 + v36) = *(v31 + v36) * v37;
                  v36 += 4;
                }

                while (v36 != 12);
                v38 = 0;
                v131 = v103;
                v132 = DWORD2(v103);
                v39 = -*(v120 + v29);
                do
                {
                  *(&v103 + v38) = *(v27 + v38) * v39;
                  v38 += 4;
                }

                while (v38 != 12);
                v40 = 0;
                v129 = v103;
                v130 = DWORD2(v103);
                do
                {
                  *(&v103 + v40) = *(&v131 + v40) - *(&v129 + v40);
                  v40 += 4;
                }

                while (v40 != 12);
                v91 = v29;
                v41 = 0;
                v42.i32[0] = vdup_lane_s32(*(&v103 + 4), 1).u32[0];
                v42.i32[1] = v103;
                v43 = vdup_lane_s32(v21, 0);
                v43.f32[0] = v34;
                v133 = vmla_f32(vneg_f32(vmul_f32(v42, v43)), v21, *(&v103 + 4));
                v134 = -((*&v21.i32[1] * *(&v103 + 1)) - (*&v103 * v34));
                do
                {
                  *(&v103 + v41 * 4) = v133.f32[v41] * (1.0 / v35);
                  ++v41;
                }

                while (v41 != 3);
                v44 = 0;
                v45 = 0;
                v114 = v103;
                v115 = DWORD2(v103);
                v116 = *&v135[0];
                v117 = DWORD2(v135[0]);
                v46 = v2;
                v47 = v135 + 2;
                do
                {
                  if (v22 != v44 && v23 != v44)
                  {
                    v135[0] = xmmword_1B33B0870;
                    v135[1] = xmmword_1B33B0870;
                    v135[2] = xmmword_1B33B0880;
                    v135[3] = xmmword_1B33B0890;
                    v135[4] = xmmword_1B33B08A0;
                    v135[5] = xmmword_1B33B08B0;
                    v135[6] = xmmword_1B33B08C0;
                    v135[7] = xmmword_1B33B08D0;
                    v135[8] = xmmword_1B33B08E0;
                    v136 = 0x3E8483EDBF7746EDLL;
                    v137 = 0;
                    v48 = *v47;
                    v49 = &v103 + v45;
                    v50 = -*v46;
                    *v49 = *(v47 - 1);
                    *(v49 + 2) = v48;
                    *(v49 + 3) = v50;
                    v51 = geo::DiscreteOrientedPolytope<arComponents::XY26DOPTraits<float>>::maxSlabPlane(v2, v44);
                    v22 = v96;
                    v23 = v97;
                    v2 = this;
                    *(v49 + 4) = v51;
                    *(v49 + 5) = v52;
                    v45 += 2;
                    *(v49 + 6) = v53;
                    *(v49 + 7) = v54;
                  }

                  ++v44;
                  v47 += 3;
                  v46 += 2;
                }

                while (v44 != 13);
                v55 = 0;
                v56 = 3.4028e38;
                v57 = -3.4028e38;
                v1 = 0xAAAAAAAAAAAAAAALL;
                v30 = v90;
                v29 = v91;
                while (1)
                {
                  v58 = 0;
                  v59 = (&v103 + v55);
                  v21 = 0;
                  do
                  {
                    *v21.i32 = *v21.i32 + (*(&v116 + v58 * 4) * v59[v58]);
                    ++v58;
                  }

                  while (v58 != 3);
                  v60 = 0;
                  v61 = 0.0;
                  do
                  {
                    v61 = v61 + (*(&v114 + v60) * *(&v103 + v55 + v60));
                    v60 += 4;
                  }

                  while (v60 != 12);
                  v62 = v61 + v59[3];
                  v63 = *v21.i32 <= 0.0;
                  if (*v21.i32 == 0.0)
                  {
                    if (v62 < 0.0)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v64 = -v62 / *v21.i32;
                    if (v63)
                    {
                      v56 = fminf(v64, v56);
                    }

                    else
                    {
                      v57 = fmaxf(v57, v64);
                    }
                  }

                  if (v57 > v56)
                  {
                    break;
                  }

                  v55 += 16;
                  if (v55 == 352)
                  {
                    if (v57 == -3.4028e38 || v56 == 3.4028e38)
                    {
                      break;
                    }

                    v133.i32[0] = gm::Ray<float,3>::at(&v114, v57);
                    v133.i32[1] = v65;
                    v134 = v66;
                    v67 = gm::Matrix<float,4,4>::multiplyHomogeneous<int,void>(v128, &v133);
                    v101 = __PAIR64__(v68, LODWORD(v67));
                    v102 = v69;
                    LODWORD(v129) = gm::Ray<float,3>::at(&v114, v56);
                    HIDWORD(v129) = v70;
                    v130 = v71;
                    v72 = gm::Matrix<float,4,4>::multiplyHomogeneous<int,void>(v128, &v129);
                    v73 = 0;
                    v131 = __PAIR64__(v21.u32[0], LODWORD(v72));
                    v132 = v74;
                    do
                    {
                      *(v135 + v73) = *(&v131 + v73) - *(&v101 + v73);
                      v73 += 4;
                    }

                    while (v73 != 12);
                    v75 = *&v135[0];
                    v76 = DWORD2(v135[0]);
                    v77 = *(&v93 + 1) - v93;
                    v78 = 0xAAAAAAAAAAAAAAABLL * ((*(&v93 + 1) - v93) >> 3) + 1;
                    if (v78 > 0xAAAAAAAAAAAAAAALL)
                    {
                      std::__throw_bad_array_new_length[abi:nn200100]();
                    }

                    v1 = v93;
                    if (0x5555555555555556 * (-v93 >> 3) > v78)
                    {
                      v78 = 0x5555555555555556 * (-v93 >> 3);
                    }

                    if (0xAAAAAAAAAAAAAAABLL * (-v93 >> 3) >= 0x555555555555555)
                    {
                      v79 = 0xAAAAAAAAAAAAAAALL;
                    }

                    else
                    {
                      v79 = v78;
                    }

                    if (v79)
                    {
                      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v79);
                    }

                    v80 = 8 * ((*(&v93 + 1) - v93) >> 3);
                    *v80 = v101;
                    *(v80 + 8) = v102;
                    *(v80 + 12) = v75;
                    *(v80 + 20) = v76;
                    v81 = v80 - v77;
                    if (v93 != *(&v93 + 1))
                    {
                      v82 = v93;
                      v83 = v80 - v77;
                      do
                      {
                        v84 = *v82;
                        *(v83 + 16) = *(v82 + 2);
                        *v83 = v84;
                        v83 += 24;
                        v82 = (v82 + 24);
                      }

                      while (v82 != *(&v93 + 1));
                    }

                    v85 = v80 + 24;
                    *&v28 = v81;
                    if (v93)
                    {
                      v94 = v81;
                      operator delete(v1);
                      *&v28 = v94;
                    }

                    v2 = this;
                    v22 = v96;
                    v23 = v97;
                    *(&v28 + 1) = v85;
                    v30 = v90;
                    v29 = v91;
                    goto LABEL_41;
                  }
                }
              }

              v28 = v93;
LABEL_41:
              v29 += 16;
              v31 += 2;
            }

            while (v29 != 32);
            v24 = v89 + 16;
            v27 += 2;
          }

          while (v89 != 16);
          v92 = v28;
          v16 = v23 + 1;
        }

        while (v16 != 13);
      }

      v8 = v96 + 1;
    }

    while (v96 != 12);
    if (*(v2 + 128) == 1)
    {
      v86 = *(v2 + 13);
      if (v86)
      {
        *(v2 + 14) = v86;
        operator delete(v86);
        v2 = this;
        *(this + 13) = 0;
        *(this + 14) = 0;
        *(this + 15) = 0;
      }

      *(v2 + 104) = v92;
      *(v2 + 15) = 0;
    }

    else
    {
      *(v2 + 104) = v92;
      *(v2 + 15) = 0;
      *(v2 + 128) = 1;
    }

    if ((*(v2 + 128) & 1) == 0)
    {
      v88 = std::__throw_bad_optional_access[abi:nn200100]();
      if (v1)
      {
        operator delete(v1);
      }

      _Unwind_Resume(v88);
    }
  }

  return v2 + 104;
}

uint64_t geo::Transform<float>::toMatrix(uint64_t a1, uint64_t a2)
{
  gm::Quaternion<float>::toMatrix(&v6, (a2 + 12));
  gm::Matrix<float,4,4>::Matrix<4,void>(v12, &v6, a2);
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v7 = 0u;
  v11 = 1065353216;
  v4 = *(a2 + 32);
  v6 = *(a2 + 28);
  LODWORD(v8) = v4;
  DWORD1(v9) = *(a2 + 36);
  return gm::operator*<float,4,4,4>(a1, v12, &v6);
}

float geo::DiscreteOrientedPolytope<arComponents::XY26DOPTraits<float>>::maxSlabPlane(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v8[0] = xmmword_1B33B0870;
  v8[1] = xmmword_1B33B0870;
  v8[2] = xmmword_1B33B0880;
  v8[3] = xmmword_1B33B0890;
  v8[4] = xmmword_1B33B08A0;
  v8[5] = xmmword_1B33B08B0;
  v8[6] = xmmword_1B33B08C0;
  v8[7] = xmmword_1B33B08D0;
  v8[8] = xmmword_1B33B08E0;
  v9 = 0x3E8483EDBF7746EDLL;
  v10 = 0;
  v3 = v8 + 12 * a2;
  v4 = *(v3 + 2);
  v6 = *v3;
  v7 = v4;
  do
  {
    *(v8 + v2) = -*(&v6 + v2);
    v2 += 4;
  }

  while (v2 != 12);
  return *v8;
}

uint64_t gm::operator*<float,4,4,4>(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 4; ++i)
  {
    v4 = 0;
    v5 = a3;
    do
    {
      v6 = 0;
      v7 = 0.0;
      do
      {
        v7 = v7 + (*(v5 + v6) * *(a2 + 4 * v6));
        v6 += 4;
      }

      while (v6 != 16);
      *(result + 4 * (4 * v4++ + i)) = v7;
      v5 += 16;
    }

    while (v4 != 4);
    a2 += 4;
  }

  return result;
}

BOOL gdc::ComponentStorageWrapper<arComponents::WorldBounds>::remove(void *a1, uint64_t a2)
{
  v15 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 48 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11];
    v9 = v8 - 48;
    do
    {
      *(v6 + v7) = *(v9 + v7);
      v7 += 8;
    }

    while (v7 != 24);
    v10 = 0;
    v11 = v8 - 24;
    do
    {
      *(v6 + 24 + v10) = *(v11 + v10);
      v10 += 8;
    }

    while (v10 != 24);
    a1[11] = v9;
    v12 = a1[28];
    if (v12)
    {
      v13 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v12[6], v13, &v15, 1);
        v12 = *v12;
      }

      while (v12);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::WorldBounds>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::WorldBounds>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<arComponents::LocalBounds>(uint64_t a1)
{
  v3 = 0x2805F57CABD6715CLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x2805F57CABD6715CuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::MapTileDataComponent>(uint64_t a1)
{
  v3 = 0x8D7BED96DFFA474FLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x8D7BED96DFFA474FLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::MapTileDataComponent>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::MapTileDataComponent>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::MapTileDataComponent>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::LocalBounds>::remove(void *a1, uint64_t a2)
{
  v38 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 168 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v8 = *(v7 - 168);
    v9 = *(v7 - 136);
    *(v6 + 16) = *(v7 - 152);
    *(v6 + 32) = v9;
    *v6 = v8;
    v10 = *(v7 - 120);
    v11 = *(v7 - 104);
    v12 = *(v7 - 88);
    *(v6 + 96) = *(v7 - 72);
    *(v6 + 64) = v11;
    *(v6 + 80) = v12;
    *(v6 + 48) = v10;
    v13 = (v6 + 104);
    v14 = (v7 - 64);
    v15 = *(v6 + 128);
    if (v15 == *(v7 - 40))
    {
      if (v13 != v14 && v15 != 0)
      {
        v18 = *(v7 - 64);
        v17 = *(v7 - 56);
        v19 = v17 - v18;
        v20 = *(v6 + 120);
        v21 = *(v6 + 104);
        if (v20 - v21 < (v17 - v18))
        {
          v22 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 3);
          if (v21)
          {
            *(v6 + 112) = v21;
            operator delete(v21);
            v20 = 0;
            *v13 = 0;
            *(v6 + 112) = 0;
            *(v6 + 120) = 0;
          }

          if (v22 <= 0xAAAAAAAAAAAAAAALL)
          {
            v23 = 0xAAAAAAAAAAAAAAABLL * (v20 >> 3);
            v24 = 2 * v23;
            if (2 * v23 <= v22)
            {
              v24 = v22;
            }

            if (v23 >= 0x555555555555555)
            {
              v25 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v25 = v24;
            }

            std::vector<gm::LineSegment<float,3>>::__vallocate[abi:nn200100](v6 + 104, v25);
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v27 = *(v6 + 112);
        if (v27 - v21 >= v19)
        {
          while (v18 != v17)
          {
            for (i = 0; i != 12; i += 4)
            {
              *&v21[i] = *(v18 + i);
            }

            do
            {
              *&v21[i] = *(v18 + i);
              i += 4;
            }

            while (i != 24);
            v18 = (v18 + 24);
            v21 += 24;
          }

          *(v6 + 112) = v21;
        }

        else
        {
          v28 = (v18 + v27 - v21);
          if (v27 != v21)
          {
            do
            {
              for (j = 0; j != 12; j += 4)
              {
                *&v21[j] = *(v18 + j);
              }

              do
              {
                *&v21[j] = *(v18 + j);
                j += 4;
              }

              while (j != 24);
              v18 = (v18 + 24);
              v21 += 24;
            }

            while (v18 != v28);
          }

          while (v28 != v17)
          {
            v31 = *v28;
            *(v27 + 2) = *(v28 + 2);
            *v27 = v31;
            v27 += 24;
            v28 = (v28 + 24);
          }

          *(v6 + 112) = v27;
        }
      }
    }

    else if (*(v6 + 128))
    {
      v26 = *v13;
      if (*v13)
      {
        *(v6 + 112) = v26;
        operator delete(v26);
      }

      *(v6 + 128) = 0;
    }

    else
    {
      std::vector<gm::LineSegment<float,3>>::vector[abi:nn200100]((v6 + 104), v14);
      *(v6 + 128) = 1;
    }

    v32 = (v6 + 136);
    v33 = (v7 - 32);
    if (*(v6 + 160) == *(v7 - 8))
    {
      if (v32 != v33 && *(v6 + 160))
      {
        std::vector<gm::Matrix<double,2,1>>::__assign_with_size[abi:nn200100]<gm::Matrix<double,2,1>*,gm::Matrix<double,2,1>*>(v32, *(v7 - 32), *(v7 - 24), (*(v7 - 24) - *(v7 - 32)) >> 4);
      }
    }

    else if (*(v6 + 160))
    {
      v34 = *v32;
      if (v34)
      {
        *(v6 + 144) = v34;
        operator delete(v34);
      }

      *(v6 + 160) = 0;
    }

    else
    {
      geo::ConvexHull2<double>::ConvexHull2(v32, v33);
      *(v6 + 160) = 1;
    }

    std::vector<arComponents::LocalBounds>::__base_destruct_at_end[abi:nn200100]((a1 + 10), a1[11] - 168);
    v35 = a1[28];
    if (v35)
    {
      v36 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v35[6], v36, &v38, 1);
        v35 = *v35;
      }

      while (v35);
    }
  }

  return v5 != v4;
}

void std::vector<arComponents::LocalBounds>::__base_destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 168)
  {
    if (*(i - 8) == 1)
    {
      v5 = *(i - 32);
      if (v5)
      {
        *(i - 24) = v5;
        operator delete(v5);
      }
    }

    if (*(i - 40) == 1)
    {
      v6 = *(i - 64);
      if (v6)
      {
        *(i - 56) = v6;
        operator delete(v6);
      }
    }
  }

  *(a1 + 8) = a2;
}

void *std::vector<gm::LineSegment<float,3>>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<gm::LineSegment<float,3>>::__vallocate[abi:nn200100](result, 0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3));
  }

  return result;
}

void std::vector<gm::LineSegment<float,3>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void gdc::ComponentStorageWrapper<arComponents::LocalBounds>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<arComponents::LocalBounds>::__destroy_vector::operator()[abi:nn200100](&v3);
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

void std::vector<arComponents::LocalBounds>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<arComponents::LocalBounds>::__base_destruct_at_end[abi:nn200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t gdc::ComponentStorageWrapper<arComponents::LocalBounds>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<arComponents::LocalBounds>::__destroy_vector::operator()[abi:nn200100](&v4);
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

double md::Logic<md::ARPushDebugDrawItemsLogic,md::ARPushDebugDrawItemsContext,md::LogicDependencies<gdc::TypeList<md::ARApplyWorldTransformUpdatesContext>,gdc::TypeList<>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

uint64_t md::Logic<md::ARPushDebugDrawItemsLogic,md::ARPushDebugDrawItemsContext,md::LogicDependencies<gdc::TypeList<md::ARApplyWorldTransformUpdatesContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xBB644C924C2E1F27 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v7[0] = gdc::Context::context<md::ARApplyWorldTransformUpdatesContext>(*(a2 + 8));
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::Context::context<md::ARApplyWorldTransformUpdatesContext>(void *a1)
{
  v1 = a1[1];
  if (!*&v1)
  {
    return 0;
  }

  v2 = vcnt_s8(v1);
  v2.i16[0] = vaddlv_u8(v2);
  if (v2.u32[0] > 1uLL)
  {
    v3 = 0x61AAF6FADEFBCCACLL;
    if (*&v1 <= 0x61AAF6FADEFBCCACuLL)
    {
      v3 = 0x61AAF6FADEFBCCACuLL % *&v1;
    }
  }

  else
  {
    v3 = (*&v1 - 1) & 0x61AAF6FADEFBCCACLL;
  }

  v4 = *(*a1 + 8 * v3);
  if (!v4)
  {
    return 0;
  }

  v5 = *v4;
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    v6 = v5[1];
    if (v6 == 0x61AAF6FADEFBCCACLL)
    {
      break;
    }

    if (v2.u32[0] > 1uLL)
    {
      if (v6 >= *&v1)
      {
        v6 %= *&v1;
      }
    }

    else
    {
      v6 &= *&v1 - 1;
    }

    if (v6 != v3)
    {
      return 0;
    }

LABEL_16:
    result = 0;
    v5 = *v5;
    if (!v5)
    {
      return result;
    }
  }

  if (v5[2] != 0x61AAF6FADEFBCCACLL)
  {
    goto LABEL_16;
  }

  v8 = v5[5];
  if (*(v8 + 8) == 0x61AAF6FADEFBCCACLL)
  {
    return *(v8 + 32);
  }

  return 0;
}

uint64_t md::Logic<md::ARPushDebugDrawItemsLogic,md::ARPushDebugDrawItemsContext,md::LogicDependencies<gdc::TypeList<md::ARApplyWorldTransformUpdatesContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xBB644C924C2E1F27)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::ARApplyWorldTransformUpdatesContext>(*(a2 + 8));
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARPushDebugDrawItemsLogic,md::ARPushDebugDrawItemsContext,md::LogicDependencies<gdc::TypeList<md::ARApplyWorldTransformUpdatesContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xBB644C924C2E1F27)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::ARApplyWorldTransformUpdatesContext>(*(a2 + 8));
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARPushDebugDrawItemsLogic,md::ARPushDebugDrawItemsContext,md::LogicDependencies<gdc::TypeList<md::ARApplyWorldTransformUpdatesContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xBB644C924C2E1F27)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::ARApplyWorldTransformUpdatesContext>(*(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARPushDebugDrawItemsLogic,md::ARPushDebugDrawItemsContext,md::LogicDependencies<gdc::TypeList<md::ARApplyWorldTransformUpdatesContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xBB644C924C2E1F27)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::ARApplyWorldTransformUpdatesContext>(*(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

void sub_1B2CBEC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  *(v25 - 56) = &a23;
  std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::vector<gm::LineSegment<float,3>>>>>::__destroy_vector::operator()[abi:nn200100]((v25 - 56));
  *(v25 - 56) = &a20;
  std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>>>::__destroy_vector::operator()[abi:nn200100]((v25 - 56));
  std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>>>::__deallocate_node(a17);
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>>>::__deallocate_node(a12);
  if (a10)
  {
    operator delete(a10);
  }

  MEMORY[0x1B8C62190](v23, v24);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v4 -= 40;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 40;
        v7 = (v4 - 24);
        std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>::__destroy_vector::operator()[abi:nn200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 56;
        v7 = *(v4 - 1);
        if (v7 != -1)
        {
          (off_1F29E91E0[v7])(&v8, v4 - 56);
        }

        *(v4 - 1) = -1;
        v4 -= 56;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 112;
        v7 = *(v4 - 2);
        if (v7 != -1)
        {
          (off_1F29E91C8[v7])(&v8, v4 - 112);
        }

        *(v4 - 2) = -1;
        v4 -= 112;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::ObjectHolder<md::ARPushDebugDrawItemsContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARPushDebugDrawItemsContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::ARPushDebugDrawItemsContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARPushDebugDrawItemsContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A24C90;
  v2 = a1[4];
  if (v2)
  {
    v5 = (v2 + 104);
    std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::vector<gm::LineSegment<float,3>>>>>::__destroy_vector::operator()[abi:nn200100](&v5);
    v5 = (v2 + 80);
    std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>>>::__destroy_vector::operator()[abi:nn200100](&v5);
    std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>>>::~__hash_table(v2 + 40);
    v3 = std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>>>::~__hash_table(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C40D55A27F3);
  }

  return a1;
}

void md::ARPushDebugDrawItemsLogic::~ARPushDebugDrawItemsLogic(md::ARPushDebugDrawItemsLogic *this)
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

void ggl::SpecularLandmark::LandmarkPipelineSetup::~LandmarkPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2CBF430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2CBF754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup::~CompressedMeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void geo::_retain_ptr<NSLocale * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A46B88;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSLocale * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A46B88;

  return a1;
}

md::LabelValueFormatter *md::LabelValueFormatter::LabelValueFormatter(md::LabelValueFormatter *this)
{
  *this = 0;
  *(this + 1) = &unk_1F2A46B88;
  *(this + 2) = 0;
  *(this + 4) = 0;
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  *this = [v2 usesMetricSystem];

  return this;
}

void sub_1B2CC0210(_Unwind_Exception *a1)
{
  v4 = v3;

  *(v1 + 8) = v2;
  _Unwind_Resume(a1);
}

void md::LabelValueFormatter::formatElevation(_BYTE *a1, char *a2, unsigned int a3, uint64_t a4, uint64_t a5, double a6)
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = a4;
  v17 = a5;
  v10 = objc_alloc(MEMORY[0x1E696AD28]);
  v11 = [MEMORY[0x1E696B058] meters];
  v18 = &unk_1F29E92C0;
  v19 = [v10 initWithDoubleValue:v11 unit:a6];

  v12 = *a2;
  v13 = v19;
  if ((v12 & 1) == 0)
  {
    v14 = [MEMORY[0x1E696B058] feet];
    v15 = [v13 measurementByConvertingToUnit:v14];

    v13 = v15;
  }

  md::LabelValueFormatter::FormatMeasurement(a1, a2, v13, a3, 1, &v16);

  v18 = &unk_1F29E92C0;
}

void md::LabelValueFormatter::FormatMeasurement(_BYTE *a1, uint64_t a2, void *a3, unsigned int a4, uint64_t a5, int *a6)
{
  v24 = a3;
  if (a4 == 1)
  {
    v11 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v12 = v11;
    if (*(a2 + 16))
    {
      [v11 setLocale:?];
    }

    if (*(a6 + 4) == 1)
    {
      [v12 setMinimumFractionDigits:*a6];
    }

    [v12 setMaximumFractionDigits:a6[2]];
    [v12 setNumberStyle:1];
    if ((a6[3] & 1) == 0)
    {
      [v12 setUsesGroupingSeparator:0];
    }

    v13 = MEMORY[0x1E696AD98];
    [v24 doubleValue];
    v14 = [v13 numberWithDouble:?];
    v15 = [v12 stringFromNumber:v14];
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E696AD30]);
    v12 = v16;
    if (*(a2 + 16))
    {
      [v16 setLocale:?];
    }

    [v12 setUnitOptions:a5];
    if (a4 > 4)
    {
      v17 = 1;
    }

    else
    {
      v17 = qword_1B33B2CB8[a4];
    }

    [v12 setUnitStyle:v17];
    if (*(a6 + 4) == 1)
    {
      v18 = *a6;
      v19 = [v12 numberFormatter];
      [v19 setMinimumFractionDigits:v18];
    }

    v20 = a6[2];
    v21 = [v12 numberFormatter];
    [v21 setMaximumFractionDigits:v20];

    if ((a6[3] & 1) == 0)
    {
      v22 = [v12 numberFormatter];
      [v22 setUsesGroupingSeparator:0];
    }

    v15 = [v12 stringFromMeasurement:v24];
  }

  if (v15)
  {
    v23 = [v15 UTF8String];
  }

  else
  {
    v23 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(a1, v23);
}

void geo::_retain_ptr<NSMeasurement * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E92C0;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSMeasurement * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E92C0;

  return a1;
}

void md::LabelValueFormatter::formatDateTime(_BYTE *a1, uint64_t a2, unsigned int a3, unsigned int a4, double a5)
{
  v10 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v16 = v10;
  if (*(a2 + 16))
  {
    [v10 setLocale:?];
  }

  if (*(a2 + 32))
  {
    [v16 setTimeZone:?];
  }

  if (a3 > 4)
  {
    v11 = 1;
  }

  else
  {
    v11 = qword_1B33B2CE0[a3];
  }

  [v16 setDateStyle:v11];
  if (a4 > 4)
  {
    v12 = 1;
  }

  else
  {
    v12 = qword_1B33B2CE0[a4];
  }

  [v16 setTimeStyle:v12];
  v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a5 * 60.0];
  v14 = [v16 stringFromDate:v13];

  if (v14)
  {
    v15 = [v14 UTF8String];
  }

  else
  {
    v15 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(a1, v15);
}

void *gdc::Context::context<md::PolygonContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x401D4CCE847AB1D1uLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x401D4CCE847AB1D1)
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

void sub_1B2CC0ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v12);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](uint64_t a1)
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

void md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)160,(gss::PropertyID)495>(uint64_t a1, char *a2, uint64_t a3, unsigned int a4)
{
  if (a4 >= 0x17)
  {
    v7 = 23;
  }

  else
  {
    v7 = a4;
  }

  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v10, *(*a3 + 24), 160, v7, 2u, 0);
  v9 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v10)), vdupq_n_s32(0x37800080u));
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a3 + 24), 495, v7, 2u, 0);
  md::AccessibilityHelper::luminanceAdjustedColor(a1, *a2, &v9, v8);
}

void md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)163,(gss::PropertyID)497>(uint64_t a1, char *a2, uint64_t a3, unsigned int a4)
{
  if (a4 >= 0x17)
  {
    v7 = 23;
  }

  else
  {
    v7 = a4;
  }

  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v10, *(*a3 + 24), 163, v7, 2u, 0);
  v9 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v10)), vdupq_n_s32(0x37800080u));
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a3 + 24), 497, v7, 2u, 0);
  md::AccessibilityHelper::luminanceAdjustedColor(a1, *a2, &v9, v8);
}

uint64_t std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__hash_table<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>>::__node_insert_unique(float *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = ((v4 << 6) + (v4 >> 2) + v5 - 0x61C8864680B583EBLL) ^ v4;
  *(a2 + 8) = v6;
  v7 = *(a1 + 1);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v9 = ((v4 << 6) + (v4 >> 2) + v5 - 0x61C8864680B583EBLL) ^ v4;
      if (v7 <= v6)
      {
        v9 = v6 % v7;
      }
    }

    else
    {
      v9 = (v7 - 1) & v6;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == v6)
        {
          if (i[2] == v4 && *(i + 24) == v5)
          {
            return 0;
          }
        }

        else
        {
          if (v8.u32[0] > 1uLL)
          {
            if (v12 >= v7)
            {
              v12 %= v7;
            }
          }

          else
          {
            v12 &= v7 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v14 = (*(a1 + 3) + 1);
  v15 = a1[8];
  if (!v7 || (v15 * v7) < v14)
  {
    v16 = 1;
    if (v7 >= 3)
    {
      v16 = (v7 & (v7 - 1)) != 0;
    }

    v17 = v16 | (2 * v7);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      prime = v18;
    }

    else
    {
      prime = v17;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v7 = *(a1 + 1);
    }

    if (prime > v7)
    {
LABEL_33:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (prime < v7)
    {
      v20 = vcvtps_u32_f32(*(a1 + 3) / a1[8]);
      if (v7 < 3 || (v21 = vcnt_s8(v7), v21.i16[0] = vaddlv_u8(v21), v21.u32[0] > 1uLL))
      {
        v20 = std::__next_prime(v20);
      }

      else
      {
        v22 = 1 << -__clz(v20 - 1);
        if (v20 >= 2)
        {
          v20 = v22;
        }
      }

      if (prime <= v20)
      {
        prime = v20;
      }

      if (prime >= v7)
      {
        v7 = *(a1 + 1);
      }

      else
      {
        if (prime)
        {
          goto LABEL_33;
        }

        v29 = *a1;
        *a1 = 0;
        if (v29)
        {
          operator delete(v29);
        }

        v7 = 0;
        *(a1 + 1) = 0;
      }
    }
  }

  v23 = *(a2 + 8);
  v24 = vcnt_s8(v7);
  v24.i16[0] = vaddlv_u8(v24);
  if (v24.u32[0] > 1uLL)
  {
    if (v23 >= v7)
    {
      v23 %= v7;
    }
  }

  else
  {
    v23 &= v7 - 1;
  }

  v25 = *a1;
  v26 = *(*a1 + 8 * v23);
  if (v26)
  {
    *a2 = *v26;
LABEL_53:
    *v26 = a2;
    goto LABEL_54;
  }

  *a2 = *(a1 + 2);
  *(a1 + 2) = a2;
  v25[v23] = a1 + 4;
  if (*a2)
  {
    v27 = *(*a2 + 8);
    if (v24.u32[0] > 1uLL)
    {
      if (v27 >= v7)
      {
        v27 %= v7;
      }
    }

    else
    {
      v27 &= v7 - 1;
    }

    v26 = (*a1 + 8 * v27);
    goto LABEL_53;
  }

LABEL_54:
  ++*(a1 + 3);
  return 1;
}

uint64_t std::__function::__func<md::featureIdPredicate(gss::SelectionState,md::BuildingPass,unsigned char,unsigned long long,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#2},std::allocator<md::featureIdPredicate(gss::SelectionState,md::BuildingPass,unsigned char,unsigned long long,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#2}>,BOOL ()(unsigned long long)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (v2)
  {
    v3 = *(a1 + 8) == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return std::function<BOOL ()(unsigned long long)>::operator()(*(a1 + 40), v2);
  }

  else
  {
    return 0;
  }
}

uint64_t std::function<BOOL ()(unsigned long long)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<md::featureIdPredicate(gss::SelectionState,md::BuildingPass,unsigned char,unsigned long long,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#2},std::allocator<md::featureIdPredicate(gss::SelectionState,md::BuildingPass,unsigned char,unsigned long long,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#2}>,BOOL ()(unsigned long long)>::destroy_deallocate(v3);
}

void std::__function::__func<md::featureIdPredicate(gss::SelectionState,md::BuildingPass,unsigned char,unsigned long long,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#2},std::allocator<md::featureIdPredicate(gss::SelectionState,md::BuildingPass,unsigned char,unsigned long long,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#2}>,BOOL ()(unsigned long long)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<md::featureIdPredicate(gss::SelectionState,md::BuildingPass,unsigned char,unsigned long long,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#2},std::allocator<md::featureIdPredicate(gss::SelectionState,md::BuildingPass,unsigned char,unsigned long long,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#2}>,BOOL ()(unsigned long long)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F2A48280;
  a2[1] = v2;
  return std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<md::featureIdPredicate(gss::SelectionState,md::BuildingPass,unsigned char,unsigned long long,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#2},std::allocator<md::featureIdPredicate(gss::SelectionState,md::BuildingPass,unsigned char,unsigned long long,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#2}>,BOOL ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_1F2A48280;
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100]((a1 + 2));

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::featureIdPredicate(gss::SelectionState,md::BuildingPass,unsigned char,unsigned long long,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#2},std::allocator<md::featureIdPredicate(gss::SelectionState,md::BuildingPass,unsigned char,unsigned long long,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#2}>,BOOL ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_1F2A48280;
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100]((a1 + 2));
  return a1;
}

uint64_t std::__function::__func<md::featureIdPredicate(gss::SelectionState,md::BuildingPass,unsigned char,unsigned long long,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#1},std::allocator<md::featureIdPredicate(gss::SelectionState,md::BuildingPass,unsigned char,unsigned long long,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(a1 + 8) == v2)
  {
    return 0;
  }

  else
  {
    return std::function<BOOL ()(unsigned long long)>::operator()(*(a1 + 40), v2);
  }
}

void std::__function::__func<md::featureIdPredicate(gss::SelectionState,md::BuildingPass,unsigned char,unsigned long long,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#1},std::allocator<md::featureIdPredicate(gss::SelectionState,md::BuildingPass,unsigned char,unsigned long long,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<md::featureIdPredicate(gss::SelectionState,md::BuildingPass,unsigned char,unsigned long long,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#1},std::allocator<md::featureIdPredicate(gss::SelectionState,md::BuildingPass,unsigned char,unsigned long long,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F2A48238;
  a2[1] = v2;
  return std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<md::featureIdPredicate(gss::SelectionState,md::BuildingPass,unsigned char,unsigned long long,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#1},std::allocator<md::featureIdPredicate(gss::SelectionState,md::BuildingPass,unsigned char,unsigned long long,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_1F2A48238;
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100]((a1 + 2));

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::featureIdPredicate(gss::SelectionState,md::BuildingPass,unsigned char,unsigned long long,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#1},std::allocator<md::featureIdPredicate(gss::SelectionState,md::BuildingPass,unsigned char,unsigned long long,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_1F2A48238;
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100]((a1 + 2));
  return a1;
}

void *std::__function::__func<md::featureIdPredicateForPass(md::BuildingPass,unsigned char,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#2},std::allocator<md::featureIdPredicateForPass(md::BuildingPass,unsigned char,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#2}>,BOOL ()(unsigned long long)>::operator()(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  result = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v3 + 80), *a2);
  if (result)
  {
    return (std::__hash_table<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>>::find<md::FeatureIdZoom>(*(a1 + 24), v2, *(a1 + 16)) == 0);
  }

  return result;
}

uint64_t **std::__hash_table<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>>::find<md::FeatureIdZoom>(void *a1, unint64_t a2, unsigned __int8 a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    return 0;
  }

  v4 = ((a2 << 6) + (a2 >> 2) + a3 - 0x61C8864680B583EBLL) ^ a2;
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = ((a2 << 6) + (a2 >> 2) + a3 - 0x61C8864680B583EBLL) ^ a2;
    if (v4 >= *&v3)
    {
      v6 = v4 % *&v3;
    }
  }

  else
  {
    v6 = v4 & (*&v3 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v4 == v9)
    {
      if (result[2] == a2 && *(result + 24) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= *&v3)
        {
          v9 %= *&v3;
        }
      }

      else
      {
        v9 &= *&v3 - 1;
      }

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 std::__function::__func<md::featureIdPredicateForPass(md::BuildingPass,unsigned char,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#2},std::allocator<md::featureIdPredicateForPass(md::BuildingPass,unsigned char,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#2}>,BOOL ()(unsigned long long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A481F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

BOOL std::__function::__func<md::featureIdPredicateForPass(md::BuildingPass,unsigned char,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#1},std::allocator<md::featureIdPredicateForPass(md::BuildingPass,unsigned char,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::operator()(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  if (v4)
  {
    if (!v3)
    {
      return 1;
    }

    if (std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v4 + 80), *a2))
    {
      return 0;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return !std::__hash_table<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>>::find<md::FeatureIdZoom>(*(a1 + 24), v3, *(a1 + 16));
}

__n128 std::__function::__func<md::featureIdPredicateForPass(md::BuildingPass,unsigned char,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#1},std::allocator<md::featureIdPredicateForPass(md::BuildingPass,unsigned char,md::VenueLogicContext const*,std::unordered_set<md::FeatureIdZoom,md::FeatureIdZoomHash,std::equal_to<md::FeatureIdZoom>,std::allocator<md::FeatureIdZoom>> const&)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A481A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1B2CC1C78(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  _Unwind_Resume(a1);
}

void sub_1B2CC1E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10)
{
  std::mutex::unlock((a10 + 48));

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(void)>::operator=[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void sub_1B2CC1FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = ReachabilityCallbacker;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void geo::_retain_ptr<ReachabilityCallbacker * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E92E0;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<ReachabilityCallbacker * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E92E0;

  return a1;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::VSCommon::Vertex>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::VSCommon::Vertex>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VSCommon::Mesh::~Mesh(ggl::VSCommon::Mesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::VSCommon::Mesh::~Mesh(ggl::VSCommon::Mesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::MeshTyped<ggl::VSCommon::Vertex>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::VSCommon::Vertex>::attributesReflection(void)::r = &ggl::VSCommon::vertexReflection;
    }

    ggl::MeshTyped<ggl::VSCommon::Vertex>::typedReflection(void)::r = &ggl::MeshTyped<ggl::VSCommon::Vertex>::attributesReflection(void)::r;
    unk_1EB82B5D8 = 1;
  }
}

void non-virtual thunk toggl::MeshTyped<ggl::VSCommon::Vertex>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::VSCommon::Vertex>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void *ggl::VSCommon::Mesh::Mesh(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  ggl::MeshTyped<ggl::VSCommon::Vertex>::typedReflection();
  a1[1] = a2;
  ggl::RenderDataHolder::RenderDataHolder((a1 + 2));
  a1[7] = &ggl::MeshTyped<ggl::VSCommon::Vertex>::typedReflection(void)::r;
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[15] = 0;
  a1[17] = 0;
  a1[14] = a1 + 15;
  *a1 = &unk_1F29E9340;
  a1[2] = &unk_1F29E9360;
  v8 = a3[1];
  v13 = *a3;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__assign_with_size[abi:nn200100]<std::shared_ptr<ggl::VertexData> const*,std::shared_ptr<ggl::VertexData> const*>(a1 + 8, &v13, &v15, 1uLL);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v10 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a1[13];
  a1[12] = v10;
  a1[13] = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  *a1 = &unk_1F29E9300;
  a1[2] = &unk_1F29E9320;
  return a1;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::GlobeAtmosphere::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::GlobeAtmosphere::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::GlobeAtmosphere::DefaultVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::GlobeAtmosphere::DefaultVbo>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::GlobeAtmosphere::DefaultVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::GlobeAtmosphere::DefaultVbo>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E9458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::GlobeAtmosphere::AtmosphereMesh::~AtmosphereMesh(ggl::GlobeAtmosphere::AtmosphereMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::GlobeAtmosphere::AtmosphereMesh::~AtmosphereMesh(ggl::GlobeAtmosphere::AtmosphereMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::GlobeAtmosphere::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::GlobeAtmosphere::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::GlobeAtmosphere::BasePipelineSetup::~BasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::GlobeAtmosphere::BasePipelineSetup::setState(void *a1, uint64_t a2, std::__shared_weak_count *a3)
{
  v4[0] = a2;
  v4[1] = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    ggl::PipelineSetup::setState(a1, v4);

    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  else
  {
    ggl::PipelineSetup::setState(a1, v4);
  }
}

uint64_t md::TextIconLabelPart::debugString@<X0>(md::TextIconLabelPart *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v11);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v11, "TextIcon(", 9);
  v4 = (*(**(this + 80) + 32))(*(this + 80));
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = "";
  }

  v6 = strlen(v5);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v11, v5, v6);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v11, ")", 1);
  if ((v18 & 0x10) != 0)
  {
    v8 = v17;
    if (v17 < v14)
    {
      v17 = v14;
      v8 = v14;
    }

    locale = v13[4].__locale_;
  }

  else
  {
    if ((v18 & 8) == 0)
    {
      v7 = 0;
      a2[23] = 0;
      goto LABEL_17;
    }

    locale = v13[1].__locale_;
    v8 = v13[3].__locale_;
  }

  v7 = v8 - locale;
  if ((v8 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  a2[23] = v7;
  if (v7)
  {
    memmove(a2, locale, v7);
  }

LABEL_17:
  a2[v7] = 0;
  v11 = *MEMORY[0x1E69E54E8];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v12 = MEMORY[0x1E69E5548] + 16;
  if (v16 < 0)
  {
    operator delete(__p);
  }

  v12 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v19);
}

void sub_1B2CC2D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
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

void md::TextIconLabelPart::~TextIconLabelPart(md::TextIconLabelPart *this)
{
  md::IconLabelPart::~IconLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

uint64_t std::__hash_table<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,geo::allocator_adapter<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,mdm::zone_mallocator>>::erase(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = *a2;
  v3 = a2[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 != a1 + 3)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    v9 = *a2;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = *(v4 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  v9 = *a2;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *a2;
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v9 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *a2;
  }

LABEL_27:
  *v7 = v9;
  *a2 = 0;
  --a1[5];
  std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, a2);
  return v4;
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](std::__shared_weak_count *a1, void *a2)
{
  if (a1)
  {
    a1 = a2[7];
    if (a1)
    {
      std::__shared_weak_count::__release_weak(a1);
    }
  }

  v3 = mdm::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,void *>>(v3, a2);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__list_node<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,void *>>(uint64_t a1, void *a2)
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

char *std::list<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,mdm::zone_mallocator>>::emplace_front<geo::QuadTile const&,std::shared_ptr<md::StandardLabelMapTile>&>(mdm::zone_mallocator *a1, uint64_t a2, void *a3)
{
  v6 = mdm::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__list_node<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,void *>>(v6);
  result[40] = 0;
  *result = 0;
  *(result + 1) = 0;
  result[17] = *(a2 + 1);
  *(result + 20) = *(a2 + 4);
  result[16] = *a2;
  *(result + 4) = *(a2 + 16);
  result[40] = *(a2 + 24);
  v8 = a3[1];
  *(result + 6) = *a3;
  *(result + 7) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 1);
  v10 = *(a1 + 2);
  *result = a1;
  *(result + 1) = v9;
  *v9 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = v10 + 1;
  return result;
}

void md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::insert(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = mdm::zone_mallocator::instance(a1);
  v8 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__list_node<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,void *>>(v7);
  v9 = v8;
  *(v8 + 40) = 0;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 17) = *(a2 + 1);
  *(v8 + 20) = *(a2 + 4);
  *(v8 + 16) = *a2;
  *(v8 + 32) = *(a2 + 16);
  *(v8 + 40) = *(a2 + 24);
  v10 = *a3;
  *(v8 + 48) = *a3;
  if (*(&v10 + 1))
  {
    atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
    v10 = *a3;
  }

  else
  {
    *(&v10 + 1) = 0;
  }

  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  *v8 = a1;
  *(v8 + 8) = v11;
  *v11 = v8;
  *(a1 + 8) = v8;
  *(a1 + 16) = v12 + 1;
  if (*(&v10 + 1))
  {
    atomic_fetch_add_explicit((*(&v10 + 1) + 16), 1uLL, memory_order_relaxed);
    v13 = *a3;
  }

  else
  {
    v13 = v10;
  }

  v58 = v10;
  v14 = v13 == 0;
  if (*(a2 + 24) == 1)
  {
    v8 = geo::QuadTile::computeHash(a2);
    *(a2 + 24) = 0;
  }

  v15 = *(a2 + 16);
  v16 = *(a1 + 40);
  if (!v16)
  {
    goto LABEL_26;
  }

  v17 = vcnt_s8(v16);
  v17.i16[0] = vaddlv_u8(v17);
  v18 = v17.u32[0];
  if (v17.u32[0] > 1uLL)
  {
    v3 = *(a2 + 16);
    if (v15 >= v16)
    {
      v3 = v15 % v16;
    }
  }

  else
  {
    v3 = (v16 - 1) & v15;
  }

  v19 = *(*(a1 + 32) + 8 * v3);
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_26:
    v22 = mdm::zone_mallocator::instance(v8);
    v23 = pthread_rwlock_rdlock((v22 + 32));
    if (v23)
    {
      geo::read_write_lock::logFailure(v23, "read lock", v24);
    }

    v25 = malloc_type_zone_malloc(*v22, 0x50uLL, 0x10200403ADB958BuLL);
    atomic_fetch_add((v22 + 24), 1u);
    geo::read_write_lock::unlock((v22 + 32));
    *v25 = 0;
    v25[1] = v15;
    *(v25 + 40) = 0;
    *(v25 + 20) = *(a2 + 4);
    *(v25 + 8) = *a2;
    v25[4] = *(a2 + 16);
    *(v25 + 40) = *(a2 + 24);
    *(v25 + 3) = v58;
    v25[8] = v9;
    *(v25 + 72) = v14;
    v27 = (*(a1 + 72) + 1);
    v28 = *(a1 + 80);
    if (v16 && (v28 * v16) >= v27)
    {
LABEL_73:
      v46 = *(a1 + 32);
      v47 = *(v46 + 8 * v3);
      if (v47)
      {
        *v25 = *v47;
      }

      else
      {
        *v25 = *(a1 + 56);
        *(a1 + 56) = v25;
        *(v46 + 8 * v3) = a1 + 56;
        if (!*v25)
        {
LABEL_82:
          ++*(a1 + 72);
          goto LABEL_90;
        }

        v48 = *(*v25 + 8);
        if ((v16 & (v16 - 1)) != 0)
        {
          if (v48 >= v16)
          {
            v48 %= v16;
          }
        }

        else
        {
          v48 &= v16 - 1;
        }

        v47 = (*(a1 + 32) + 8 * v48);
      }

      *v47 = v25;
      goto LABEL_82;
    }

    v29 = 1;
    if (v16 >= 3)
    {
      v29 = (v16 & (v16 - 1)) != 0;
    }

    v30 = v29 | (2 * v16);
    v31 = vcvtps_u32_f32(v27 / v28);
    if (v30 <= v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = v30;
    }

    if (v32 == 1)
    {
      v32 = 2;
    }

    else if ((v32 & (v32 - 1)) != 0)
    {
      prime = std::__next_prime(v32);
      v32 = prime;
    }

    v16 = *(a1 + 40);
    if (v32 > v16)
    {
      goto LABEL_40;
    }

    if (v32 < v16)
    {
      prime = vcvtps_u32_f32(*(a1 + 72) / *(a1 + 80));
      if (v16 < 3 || (v41 = vcnt_s8(v16), v41.i16[0] = vaddlv_u8(v41), v41.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v42 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v42;
        }
      }

      if (v32 <= prime)
      {
        v32 = prime;
      }

      if (v32 >= v16)
      {
        v16 = *(a1 + 40);
      }

      else
      {
        if (v32)
        {
LABEL_40:
          v33 = mdm::zone_mallocator::instance(prime);
          v34 = pthread_rwlock_rdlock((v33 + 32));
          if (v34)
          {
            geo::read_write_lock::logFailure(v34, "read lock", v35);
          }

          v36 = malloc_type_zone_malloc(*v33, 8 * v32, 0x2004093837F09uLL);
          atomic_fetch_add((v33 + 24), 1u);
          geo::read_write_lock::unlock((v33 + 32));
          std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,void *> *> **,0>((a1 + 32), v36);
          v37 = 0;
          *(a1 + 40) = v32;
          do
          {
            *(*(a1 + 32) + 8 * v37++) = 0;
          }

          while (v32 != v37);
          v38 = *(a1 + 56);
          if (v38)
          {
            v39 = v38[1];
            v40 = vcnt_s8(v32);
            v40.i16[0] = vaddlv_u8(v40);
            if (v40.u32[0] > 1uLL)
            {
              if (v39 >= v32)
              {
                v39 %= v32;
              }
            }

            else
            {
              v39 &= v32 - 1;
            }

            *(*(a1 + 32) + 8 * v39) = a1 + 56;
            v43 = *v38;
            if (*v38)
            {
              do
              {
                v44 = v43[1];
                if (v40.u32[0] > 1uLL)
                {
                  if (v44 >= v32)
                  {
                    v44 %= v32;
                  }
                }

                else
                {
                  v44 &= v32 - 1;
                }

                if (v44 != v39)
                {
                  v45 = *(a1 + 32);
                  if (!*(v45 + 8 * v44))
                  {
                    *(v45 + 8 * v44) = v38;
                    goto LABEL_64;
                  }

                  *v38 = *v43;
                  *v43 = **(v45 + 8 * v44);
                  **(v45 + 8 * v44) = v43;
                  v43 = v38;
                }

                v44 = v39;
LABEL_64:
                v38 = v43;
                v43 = *v43;
                v39 = v44;
              }

              while (v43);
            }
          }

          v16 = v32;
          goto LABEL_68;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,void *> *> **,0>((a1 + 32), 0);
        v16 = 0;
        *(a1 + 40) = 0;
      }
    }

LABEL_68:
    if ((v16 & (v16 - 1)) != 0)
    {
      if (v15 >= v16)
      {
        v3 = v15 % v16;
      }

      else
      {
        v3 = v15;
      }
    }

    else
    {
      v3 = (v16 - 1) & v15;
    }

    goto LABEL_73;
  }

  while (1)
  {
    v21 = *(v20 + 1);
    if (v21 == v15)
    {
      break;
    }

    if (v18 > 1)
    {
      if (v21 >= v16)
      {
        v21 %= v16;
      }
    }

    else
    {
      v21 &= v16 - 1;
    }

    if (v21 != v3)
    {
      goto LABEL_26;
    }

LABEL_25:
    v20 = *v20;
    if (!v20)
    {
      goto LABEL_26;
    }
  }

  v8 = std::equal_to<geo::QuadTile>::operator()[abi:nn200100](v20 + 16, a2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_25;
  }

  v49 = *(v20 + 7);
  *(v20 + 3) = v58;
  if (v49)
  {
    std::__shared_weak_count::__release_weak(v49);
  }

  *(v20 + 8) = v9;
  v20[72] = v14;
LABEL_90:
  while (*(a1 + 16) > *(a1 + 88))
  {
    v50 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::find<geo::QuadTile>((a1 + 32), (*a1 + 16));
    v51 = *a1;
    if (v50 && *(v50 + 8) == v51)
    {
      *(v50 + 8) = a1;
      v51 = *a1;
    }

    v53 = *v51;
    v52 = v51[1];
    *(v53 + 8) = v52;
    *v52 = v53;
    --*(a1 + 16);
    std::__list_imp<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,mdm::zone_mallocator>>::__delete_node[abi:nn200100](v51);
  }

  v54 = *(a1 + 104) + 1;
  *(a1 + 104) = v54;
  if (v54 >= 0x65)
  {
    *(a1 + 104) = 0;
    v55 = *(a1 + 56);
    if (v55)
    {
      v56 = 0;
      do
      {
        while (1)
        {
          if ((*(v55 + 72) & 1) == 0)
          {
            v57 = *(v55 + 56);
            if (!v57 || *(v57 + 8) == -1)
            {
              break;
            }
          }

          v55 = *v55;
          ++v56;
          if (!v55)
          {
            goto LABEL_102;
          }
        }

        v55 = std::__hash_table<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,geo::allocator_adapter<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,mdm::zone_mallocator>>::erase((a1 + 32), v55);
      }

      while (v55);
    }

    else
    {
      v56 = 0;
    }

LABEL_102:
    *(a1 + 100) = v56;
  }
}

void sub_1B2CC3B60(_Unwind_Exception *a1)
{
  geo::read_write_lock::unlock((v2 + 32));
  std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v1);
  _Unwind_Resume(a1);
}

uint64_t md::TileExclusionArea::tileIsExcluded(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, __n128 a5, __n128 a6)
{
  if (a1 != a2)
  {
    v6 = a3 >> 6;
    v7 = 1 << a3;
    while (2)
    {
      v8 = 0;
      v13 = a5;
      v14 = a6;
      v9 = &v13;
      v10 = 1;
      while (v9->n128_f64[0] >= *(a1 + 8 * v8) && v14.n128_f64[v8] <= *(a1 + 16 + 8 * v8))
      {
        v11 = v10;
        v10 = 0;
        v9 = &v13.n128_i8[8];
        v8 = 1;
        if ((v11 & 1) == 0)
        {
          if (*(a1 + 32) <= a4 && *(a1 + 33) >= a4)
          {
            v15 = 0uLL;
            if (a3 >= 0x80)
            {
              abort();
            }

            *(&v15 + v6) |= v7;
            if ((*(a1 + 56) & v15) != 0)
            {
              return 1;
            }

            v15 = 0uLL;
            *(&v15 + v6) |= v7;
            if ((*(a1 + 40) & v15) == 0)
            {
              return 1;
            }
          }

          break;
        }
      }

      a1 += 72;
      if (a1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

void *std::shared_ptr<md::LabelTile>::operator=[abi:nn200100](void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[1];
  *a1 = a2;
  a1[1] = a3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  return a1;
}

void std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__rehash<true>(mdm::zone_mallocator *prime, size_t __n)
{
  v2 = prime;
  if (__n == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
      v3 = prime;
    }
  }

  v4 = *(v2 + 8);
  if (v3 <= *&v4)
  {
    if (v3 >= *&v4)
    {
      return;
    }

    prime = vcvtps_u32_f32(*(v2 + 5) / *(v2 + 12));
    if (*&v4 < 3uLL || (v11 = vcnt_s8(v4), v11.i16[0] = vaddlv_u8(v11), v11.u32[0] > 1uLL))
    {
      prime = std::__next_prime(prime);
    }

    else
    {
      v12 = 1 << -__clz(prime - 1);
      if (prime >= 2)
      {
        prime = v12;
      }
    }

    if (v3 <= prime)
    {
      v3 = prime;
    }

    if (v3 >= *&v4)
    {
      return;
    }

    if (!v3)
    {
      std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> **,0>(v2, 0);
      *(v2 + 1) = 0;
      return;
    }
  }

  v5 = mdm::zone_mallocator::instance(prime);
  v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *>(v5, v3);
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> **,0>(v2, v6);
  v7 = 0;
  *(v2 + 1) = v3;
  do
  {
    *(*v2 + 8 * v7++) = 0;
  }

  while (v3 != v7);
  v8 = *(v2 + 3);
  if (v8)
  {
    v9 = v8[1];
    v10 = vcnt_s8(v3);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      if (v9 >= v3)
      {
        v9 %= v3;
      }
    }

    else
    {
      v9 &= v3 - 1;
    }

    *(*v2 + 8 * v9) = v2 + 24;
    v13 = *v8;
    if (*v8)
    {
      do
      {
        v14 = v13[1];
        if (v10.u32[0] > 1uLL)
        {
          if (v14 >= v3)
          {
            v14 %= v3;
          }
        }

        else
        {
          v14 &= v3 - 1;
        }

        if (v14 != v9)
        {
          v15 = *v2;
          if (!*(*v2 + 8 * v14))
          {
            *(v15 + 8 * v14) = v8;
            goto LABEL_28;
          }

          *v8 = *v13;
          *v13 = **(v15 + 8 * v14);
          **(v15 + 8 * v14) = v13;
          v13 = v8;
        }

        v14 = v9;
LABEL_28:
        v8 = v13;
        v13 = *v13;
        v9 = v14;
      }

      while (v13);
    }
  }
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,void *> *> *>(v3, v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,void *> *> *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__list_node<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x40uLL, 0x1020040E852F6B4uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void std::__shared_ptr_emplace<md::StandardGlobeLabelMapTile>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E9948;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::FlyoverLabelMapTile>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E9910;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::StandardLabelMapTile>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A45F40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::ContourLineLabelFeature::debugString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, unsigned int a4@<W3>, _BYTE *a5@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:nn200100](&v21);
  v31 = 11;
  strcpy(v30, "ContourLine");
  md::LineLabelFeature::debugRoadString(__p, a1, a2, a3, a4, v30);
  if ((v20 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v11 = v20;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, v10, v11);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v31 < 0)
  {
    v13 = *v30;
    v14 = mdm::zone_mallocator::instance(v12);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v14, v13);
  }

  if ((v28 & 0x10) != 0)
  {
    v16 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v16 = v24;
    }

    locale = v23[4].__locale_;
  }

  else
  {
    if ((v28 & 8) == 0)
    {
      v15 = 0;
      a5[23] = 0;
      goto LABEL_24;
    }

    locale = v23[1].__locale_;
    v16 = v23[3].__locale_;
  }

  v15 = v16 - locale;
  if ((v16 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a5[23] = v15;
  if (v15)
  {
    memmove(a5, locale, v15);
  }

LABEL_24:
  a5[v15] = 0;
  v21 = *MEMORY[0x1E69E54E8];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v26 < 0)
  {
    operator delete(v25);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v29);
}

void sub_1B2CC4508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a16 = *MEMORY[0x1E69E54E8];
  *(&a16 + *(a16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a17 = MEMORY[0x1E69E5548] + 16;
  if (a30 < 0)
  {
    operator delete(__p);
  }

  a17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a18);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a33);
  _Unwind_Resume(a1);
}

void md::ContourLineLabelFeature::updateText(md::ContourLineLabelFeature *this, const void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  std::vector<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::clear[abi:nn200100]((this + 384));
  __dst = 0uLL;
  v24 = 0;
  v21 = 0uLL;
  v22 = 0;
  md::LabelValueFormatter::LabelValueFormatter(v17);
  md::LabelValueFormatter::formatElevation(__p, v17, 1u, 0x100000000, 0, *(this + 113));
  if ((v14 & 0x80u) == 0)
  {
    v3 = v14;
  }

  else
  {
    v3 = __p[1];
  }

  if ((v14 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__assign_external(&__dst, v4, v3);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(__p, &__dst, &v21);
  v5 = md::LineLabelFeature::textIndexForText(this, __p);
  *(this + 448) = v5;
  if (v16 < 0)
  {
    v6 = v15;
    v7 = mdm::zone_mallocator::instance(v5);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v7, v6);
  }

  if (v14 < 0)
  {
    v8 = __p[0];
    v9 = mdm::zone_mallocator::instance(v5);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v9, v8);
  }

  v18 = &unk_1F2A46B88;
  if (SHIBYTE(v24) < 0)
  {
    v11 = __dst;
    v12 = mdm::zone_mallocator::instance(v10);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v12, v11);
  }
}

void sub_1B2CC47B8(mdm::zone_mallocator *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, void *a25, uint64_t a26, void *a27)
{
  if (a21 < 0)
  {
    v29 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v29, a16);
  }

  if (a14 < 0)
  {
    v30 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v30, __p);
  }

  if (*(v27 - 33) < 0)
  {
    v32 = *(v27 - 56);
    v33 = mdm::zone_mallocator::instance(v31);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v33, v32);
  }

  _Unwind_Resume(a1);
}

void **std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__assign_external(void **__dst, void *__src, size_t __len)
{
  v6 = *(__dst + 23);
  if (v6 < 0)
  {
    v9 = __dst[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
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
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__grow_by_and_replace(__dst, v8, __len - v8, v6, 0, v6, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(v6) = *(__dst + 23);
  }

  if ((v6 & 0x80) != 0)
  {
    __dst[1] = __len;
  }

  else
  {
    *(__dst + 23) = __len & 0x7F;
  }

  *(v7 + __len) = 0;
  return __dst;
}

uint64_t md::ContourLineLabelFeature::newRootPart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  md::LineLabelPlacer::positionForIdentifier(&v11, a1 + 192, *(a3 + 48));
  if (v11 && *(a4 + 236) != 0.0 && *(a1 + 384) != *(a1 + 392))
  {
    v6 = *(a1 + 448);
    v7 = md::LabelStyle::textStyleGroup(a4, 0);
    md::LabelFeature::textDataForZoom(&v9, a1, v6, v7);
    if (v9)
    {
      operator new();
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  return 0;
}

void sub_1B2CC4B3C(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  v20 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v20, v18);
  std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::LabelText>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A56D70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::ContourLineLabelFeature::~ContourLineLabelFeature(md::ContourLineLabelFeature *this)
{
  md::LineLabelFeature::~LineLabelFeature(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::RoadLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 592);
  if ((a5 & 0x100000000) != 0)
  {
    v7 = a5;
  }

  else
  {
    v7 = 2147483646;
  }

  v10 = vrev64_s32(*(a3 + 4));
  v8 = *a3;
  v11 = a3[1];
  v12 = v8;
  return gdc::ResourceKey::ResourceKey(a6, a2, v6, &v10, 4, a4, v7);
}

uint64_t md::RoadLayerDataSource::updateRequest(uint64_t a1, char **a2, uint64_t a3, unsigned __int16 **a4)
{
  result = md::TrafficLayerDataSource::updateRequest(a1, a2, a3, a4);
  *(a1 + 808) = result;
  return result;
}

void md::RoadLayerDataSource::createLayerData(uint64_t a1, uint64_t a2, unsigned __int16 **a3)
{
  v33 = *MEMORY[0x1E69E9840];
  std::atomic_load[abi:nn200100]<md::RegistryManager>(&v28, (a1 + 768));
  gdc::Tiled::tileFromLayerDataKey(&v27, *(a2 + 16));
  __src = 0;
  v25 = 0;
  v26 = 0;
  v5 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    while (*(a1 + 592) != *v5)
    {
      v5 += 24;
      if (v5 == v4)
      {
        goto LABEL_21;
      }
    }

    if (v5 != v4)
    {
      std::vector<std::shared_ptr<md::GEOVectorTileResource>>::reserve(&__src, *(v5 + 4));
      for (i = *(v5 + 3); i; i = *i)
      {
        v7 = *(i + 7);
        if (*(&v7 + 1))
        {
          atomic_fetch_add_explicit((*(&v7 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v8 = v25;
        if (v25 >= v26)
        {
          v10 = __src;
          v11 = v25 - __src;
          v12 = (v25 - __src) >> 4;
          v13 = v12 + 1;
          if ((v12 + 1) >> 60)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v14 = v26 - __src;
          if ((v26 - __src) >> 3 > v13)
          {
            v13 = v14 >> 3;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF0)
          {
            v15 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          p_src = &__src;
          if (v15)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v15);
          }

          v16 = (16 * v12);
          v17 = &v16[-((v25 - __src) >> 4)];
          *v16 = v7;
          v9 = (v16 + 1);
          memcpy(v17, v10, v11);
          v18 = __src;
          v19 = v26;
          __src = v17;
          v25 = v9;
          v26 = 0;
          v30 = v18;
          v31 = v19;
          __p[1] = v18;
          __p[0] = v18;
          std::__split_buffer<std::shared_ptr<md::MuninRoadLabel>>::~__split_buffer(__p);
        }

        else
        {
          *v25 = v7;
          v9 = v8 + 16;
        }

        v25 = v9;
      }
    }
  }

LABEL_21:
  v20 = *(a1 + 792);
  (*(*[v20 gglDevice] + 24))(&v23);

  _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_4Tile4ViewEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B2CC61AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, std::__shared_weak_count *a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, int a61, __int16 a62, uint64_t a63)
{
  if (STACK[0x4E0])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x4E0]);
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&STACK[0x4B8]);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&STACK[0x500]);
  _Block_object_dispose(&STACK[0x258], 8);
  std::__hash_table<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::TrafficBatchKey>,std::equal_to<md::TrafficBatchKey>,true>,std::__unordered_map_equal<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::TrafficBatchKey>,std::hash<md::TrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(&STACK[0x288]);
  _Block_object_dispose(&STACK[0x2B0], 8);
  std::__hash_table<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::TrafficBatchKey>,std::equal_to<md::TrafficBatchKey>,true>,std::__unordered_map_equal<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::TrafficBatchKey>,std::hash<md::TrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(&STACK[0x2E0]);
  _Block_object_dispose(&STACK[0x308], 8);
  std::__hash_table<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::TrafficBatchKey>,std::equal_to<md::TrafficBatchKey>,true>,std::__unordered_map_equal<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::TrafficBatchKey>,std::hash<md::TrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(&STACK[0x338]);
  std::__hash_table<std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::DaVinciTrafficBatchKey,std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::DaVinciTrafficBatchKey>,std::equal_to<md::DaVinciTrafficBatchKey>,true>,std::__unordered_map_equal<md::DaVinciTrafficBatchKey,std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::DaVinciTrafficBatchKey>,std::hash<md::DaVinciTrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(&STACK[0x360]);
  _Block_object_dispose(&STACK[0x388], 8);
  std::__hash_table<std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::DaVinciTrafficBatchKey,std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::DaVinciTrafficBatchKey>,std::equal_to<md::DaVinciTrafficBatchKey>,true>,std::__unordered_map_equal<md::DaVinciTrafficBatchKey,std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::DaVinciTrafficBatchKey>,std::hash<md::DaVinciTrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(&STACK[0x3B8]);
  _Block_object_dispose(&STACK[0x520], 8);
  if (STACK[0x5F8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x5F8]);
  }

  if (STACK[0x5E8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x5E8]);
  }

  v72 = STACK[0x598];
  if (STACK[0x598])
  {
    STACK[0x5A0] = v72;
    operator delete(v72);
  }

  v73 = STACK[0x580];
  if (STACK[0x580])
  {
    STACK[0x588] = v73;
    operator delete(v73);
  }

  v74 = STACK[0x568];
  if (STACK[0x568])
  {
    STACK[0x570] = v74;
    operator delete(v74);
  }

  v75 = STACK[0x550];
  if (STACK[0x550])
  {
    STACK[0x558] = v75;
    operator delete(v75);
  }

  if (STACK[0x3E8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x3E8]);
  }

  _Block_object_dispose(&STACK[0x3F0], 8);
  _Block_object_dispose(&STACK[0x410], 8);
  if (a35 == 1)
  {
    (*(*a31 + 56))(a31);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a34);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a32);
  }

  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a39);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  STACK[0x388] = &a40;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&STACK[0x388]);
  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a44);
  }

  if (a46)
  {
    operator delete(a46);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a49);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&STACK[0x430]);
  if (a54)
  {
    (*(*a54 + 8))(a54);
  }

  if (a55)
  {
    (*(*a55 + 8))(a55);
  }

  if (a57)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a57);
  }

  if (a59)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a59);
  }

  ggl::Loader::~Loader(&a60);
  STACK[0x388] = &a62;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&STACK[0x388]);
  if (a70)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a70);
  }

  _Unwind_Resume(a1);
}

void *std::vector<std::shared_ptr<md::GEOVectorTileResource>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void md::RoadLayerDataSource::buildRoadTileData(int a1, uint64_t a2, int a3, uint64_t *a4, uint64_t a5, uint64_t **a6, void *a7, int a8, uint64_t a9, gss::FeatureAttributeSet *a10, void *a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v273 = *MEMORY[0x1E69E9840];
  v248 = 0;
  v249 = &v248;
  v250 = 0x5812000000;
  v251 = __Block_byref_object_copy__2741;
  v252 = __Block_byref_object_dispose__2742;
  v253 = "";
  v254 = 0u;
  v255 = 0u;
  v256 = 1065353216;
  v239 = 0;
  v240 = &v239;
  v241 = 0x5812000000;
  v242 = __Block_byref_object_copy__2741;
  v243 = __Block_byref_object_dispose__2742;
  v244 = "";
  v245 = 0u;
  v246 = 0u;
  v247 = 1065353216;
  v230 = 0;
  v231 = &v230;
  v232 = 0x5812000000;
  v233 = __Block_byref_object_copy__8;
  v234 = __Block_byref_object_dispose__9;
  v235 = "";
  v236 = 0u;
  v237 = 0u;
  v238 = 1065353216;
  v221 = 0;
  v222 = &v221;
  v223 = 0x5812000000;
  v224 = __Block_byref_object_copy__8;
  v225 = __Block_byref_object_dispose__9;
  v226 = "";
  v227 = 0u;
  v228 = 0u;
  v229 = 1065353216;
  v271[0] = 0;
  v271[1] = 0;
  memset(&v271[2] + 1, 0, 15);
  v271[5] = 0;
  v272 = 1065353216;
  v15 = *a6;
  v170 = a6[1];
  if (*a6 == v170)
  {
    v162 = &v221;
    v161 = &v239;
    v160 = &v230;
LABEL_251:
    *&v265 = 0;
    *(&v265 + 1) = &v265;
    v266 = 0x3812000000;
    v267 = __Block_byref_object_copy__12_2745;
    v268 = __Block_byref_object_dispose__13_2746;
    v269 = "";
    v270 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3812000000;
    v261 = __Block_byref_object_copy__15;
    v262 = __Block_byref_object_dispose__16;
    v263 = "";
    v264 = 0;
    *&__p = 0;
    *(&__p + 1) = &__p;
    v204 = 0x3812000000;
    v205 = __Block_byref_object_copy__12_2745;
    v206 = __Block_byref_object_dispose__13_2746;
    v207 = "";
    v208 = 0;
    v196 = 0;
    v197 = &v196;
    v198 = 0x3812000000;
    v199 = __Block_byref_object_copy__15;
    v200 = __Block_byref_object_dispose__16;
    v201 = "";
    v202 = 0;
    if (v160[9] + v161[9] + v249[9] + v162[9])
    {
      v192[0] = MEMORY[0x1E69E9820];
      v192[1] = 3321888768;
      v192[2] = ___ZNK2md19RoadLayerDataSource17buildRoadTileDataERKN3gdc19LayerDataRequestKeyEPN3ggl6LoaderERKN3geo8QuadTileERKNSt3__16vectorINSC_10shared_ptrINS_21GEOVectorTileResourceEEENSC_9allocatorISG_EEEERKNSC_13unordered_setINS_21RoadFeatureAndSectionENSC_4hashISN_EENSC_8equal_toISN_EENSH_ISN_EEEEONSC_10unique_ptrINS_19DaVinciTrafficLayerENSC_14default_deleteISX_EEEEONSW_INS_17CasedTrafficLayerENSY_IS12_EEEERKN3gss19FeatureAttributeSetENSE_INS5_17ConstantDataTypedINS5_4Tile4ViewEEEEENSE_INS1A_INS1B_9TransformEEEEERKNSE_INS_27TrafficSkeletonTileResourceEEERKNSD_INSE_INS_26TrafficDynamicTileResourceEEENSH_IS1N_EEEEONSD_INS1_8Resource12LoadMetadataENSH_IS1T_EEEE_block_invoke;
      v192[3] = &unk_1F29E9C60;
      v192[4] = &v248;
      v192[5] = &v265;
      v163 = a11[1];
      v192[12] = *a11;
      v193 = v163;
      if (v163)
      {
        atomic_fetch_add_explicit(&v163->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v164 = a12[1];
      v194 = *a12;
      v195 = v164;
      if (v164)
      {
        atomic_fetch_add_explicit(&v164->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v192[6] = &v230;
      v192[7] = buf;
      v192[8] = &v239;
      v192[9] = &__p;
      v192[10] = &v221;
      v192[11] = &v196;
      v259 = 0;
      v257 = &unk_1F2A59B50;
      v258 = MEMORY[0x1B8C62DA0](v192);
      v259 = &v257;
      ggl::Loader::performWithAccessor(*a4);
      std::__function::__value_func<void ()(ggl::ResourceAccessor *)>::~__value_func[abi:nn200100](&v257);
      if (v195)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v195);
      }

      if (v193)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v193);
      }
    }

    if (*a6 == a6[1])
    {
      v258 = 0;
      v257 = 0;
    }

    else
    {
      v165 = **a6;
      v167 = *(v165 + 144);
      v166 = *(v165 + 152);
      v257 = v167;
      v258 = v166;
      if (v166)
      {
        atomic_fetch_add_explicit((v166 + 8), 1uLL, memory_order_relaxed);
      }
    }

    operator new();
  }

  v16 = a7;
  v17 = a2;
  while (1)
  {
    v18 = *(v17 + 32);
    v181 = *v15;
    if (v18 != 65)
    {
      break;
    }

    v19 = v249;
    v20 = v231;
    v21 = *(*v15 + 144);
    std::atomic_load[abi:nn200100]<md::RegistryManager>(&v219, (v17 + 768));
    if (v220)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v220);
    }

    v22 = v249;
    v23 = v231;
    v24 = *(v181 + 144);
    std::atomic_load[abi:nn200100]<md::RegistryManager>(&v217, (v17 + 768));
    if (v218)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v218);
    }

    v25 = v249;
    v26 = v231;
    v27 = *(v181 + 144);
    std::atomic_load[abi:nn200100]<md::RegistryManager>(&v215, (v17 + 768));
    if (v216)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v216);
    }

    v28 = v249;
    v29 = v231;
    v30 = *(v181 + 144);
    std::atomic_load[abi:nn200100]<md::RegistryManager>(&v213, (v17 + 768));
    if (v214)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v214);
    }

    v178 = 0;
    v173 = 0;
LABEL_58:
    v61 = *(v181 + 144);
    v62 = *(v61 + 32);
    v63 = geo::codec::VectorTile::linesCount(v62, *(v61 + 40));
    if (v63)
    {
      v64 = v63;
      v65 = 0;
      v175 = v63;
      v176 = v62;
      v172 = v15;
      do
      {
        v188 = v65;
        v191 = (v62 + 168 * v65);
        if (((*(*v17 + 160))(v17, *v15) & 1) == 0)
        {
          v257 = 0;
          v184 = geo::codec::multiSectionFeatureCharacteristicPoints(v191, &v257, v66);
          if (v178)
          {
            *&buf[8] = 0;
            *buf = 0;
            *&buf[16] = 256;
            *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](buf, 0x10002u) = 1;
            std::atomic_load[abi:nn200100]<md::RegistryManager>(&v196, (v17 + 768));
            v67 = v196;
            md::createFeatureAttributeSet(&v265, v191 + 3);
            gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&__p, v67, &v265, buf);
            v185 = __p;
            __p = 0uLL;
            std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v265);
            if (v197)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v197);
            }

            geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(buf);
          }

          else
          {
            v68 = *(v191 + 3);
            if (v68 && (v69 = *(v68 + 33), *(v68 + 33)))
            {
              v70 = *v68;
              if (*v70 == 185)
              {
                v71 = 0;
                v72 = 1;
              }

              else
              {
                v71 = 0;
                v73 = v70 + 2;
                do
                {
                  if (v69 - 1 == v71)
                  {
                    goto LABEL_78;
                  }

                  v74 = *v73;
                  v73 += 2;
                  ++v71;
                }

                while (v74 != 185);
                v72 = v71 < v69;
              }

              v75 = (v70[2 * v71 + 1] & 0xFFFFFFFD) == 0 && v72;
              if (v173 != v75)
              {
                goto LABEL_247;
              }
            }

            else
            {
LABEL_78:
              if (v173)
              {
                goto LABEL_247;
              }
            }

            std::atomic_load[abi:nn200100]<md::RegistryManager>(&__p, (v17 + 768));
            v76 = __p;
            md::createFeatureAttributeSet(&v265, v191 + 3);
            gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(buf, v76, &v265);
            v185 = *buf;
            *&buf[8] = 0;
            *buf = 0;
            std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v265);
            if (*(&__p + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&__p + 1));
            }
          }

          v77 = *(v191 + 3);
          v78 = *(v77 + 33);
          if (*(v77 + 33))
          {
            v79 = *v77;
            if (**v77 == 2)
            {
              v80 = 1;
            }

            else
            {
              v81 = 0;
              v82 = v79 + 2;
              while (v78 - 1 != v81)
              {
                v83 = *v82;
                v82 += 2;
                ++v81;
                if (v83 == 2)
                {
                  goto LABEL_90;
                }
              }

              v81 = v78;
LABEL_90:
              v80 = v81 < v78;
            }
          }

          else
          {
            v80 = 0;
          }

          if (*(&v185 + 1))
          {
            atomic_fetch_add_explicit((*(&v185 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v265, v185, *(&v185 + 1));
          if (*(&v185 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v185 + 1));
          }

          if (v268)
          {
            *buf = 0;
            v84 = gss::RenderStyle<gss::PropertyID>::valueIsConstantForKey<float>(*(v265 + 24), 94, buf) && *buf < 1.0;
            if (v84 && ((IsConstantFor = gss::RenderStyle<gss::PropertyID>::valueIsConstantForKey<float>(*(v265 + 24), 97, buf), v86.n128_u32[0] = *buf, IsConstantFor) ? (v87 = *buf < 1.0) : (v87 = 0), v87))
            {
              v183 = 0;
              v89 = 0;
            }

            else
            {
              v88 = (gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(v265 + 24), 0x12Cu, 2u) & 1) != 0 || (gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(v265 + 24), 0x12Du, 2u) & 1) != 0 || gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(150, 2, *(v265 + 24)) == 1;
              v183 = v88;
              v89 = 1;
            }

            if (v268)
            {
              (*(*v265 + 56))(v265, v86);
            }
          }

          else
          {
            v89 = 0;
            v183 = 0;
          }

          if (v267)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v267);
          }

          if (*(&v265 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v265 + 1));
          }

          if (v89)
          {
            v90 = v181;
            v91 = *(v181 + 152);
            v182 = *(v181 + 144);
            if (v91)
            {
              atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v174 = v91;
            v92 = v188;
            v187 = *(v191 + 24);
            if (!v187)
            {
              goto LABEL_243;
            }

            v93 = 0;
            v180 = (v188 << 6) + (v188 >> 2) - 0x61C8864680B583EBLL;
            while (1)
            {
              if (v16[3])
              {
                v94 = v16[1];
                if (v94)
                {
                  v95 = (v180 + v93) ^ v188;
                  v96 = vcnt_s8(v94);
                  v96.i16[0] = vaddlv_u8(v96);
                  if (v96.u32[0] > 1uLL)
                  {
                    v97 = (v180 + v93) ^ v188;
                    if (v95 >= *&v94)
                    {
                      v97 = v95 % *&v94;
                    }
                  }

                  else
                  {
                    v97 = v95 & (*&v94 - 1);
                  }

                  v98 = *(*v16 + 8 * v97);
                  if (v98)
                  {
                    for (i = *v98; i; i = *i)
                    {
                      v100 = i[1];
                      if (v95 == v100)
                      {
                        if (*(i + 4) == v92 && *(i + 5) == v93)
                        {
                          v189 = 1;
                          goto LABEL_145;
                        }
                      }

                      else
                      {
                        if (v96.u32[0] > 1uLL)
                        {
                          if (v100 >= *&v94)
                          {
                            v100 %= *&v94;
                          }
                        }

                        else
                        {
                          v100 &= *&v94 - 1;
                        }

                        if (v100 != v97)
                        {
                          break;
                        }
                      }
                    }
                  }
                }
              }

              v189 = 0;
LABEL_145:
              v196 = 0;
              v102 = geo::codec::multiSectionFeaturePoints(v191, v93, &v196);
              v103 = v196;
              if (v196 < 2)
              {
                goto LABEL_242;
              }

              v190 = v102;
              if (v257)
              {
                if (v93 == *(v184 + 2))
                {
                  v104 = 0;
                  v105 = 0;
                }

                else
                {
                  v104 = 0;
                  v106 = (v184 + 108);
                  while (v257 - 1 != v104)
                  {
                    v107 = *v106;
                    v106 += 25;
                    ++v104;
                    if (v93 == v107)
                    {
                      goto LABEL_155;
                    }
                  }

                  v104 = v257;
LABEL_155:
                  v105 = v104 >= v257;
                }
              }

              else
              {
                v104 = 0;
                v105 = 1;
              }

              if (v104 + 1 >= v257)
              {
                v109 = v104 + 1;
              }

              else
              {
                v108 = &v184[100 * v104 + 108];
                v109 = v104 + 1;
                do
                {
                  v110 = *v108;
                  v108 += 100;
                  if (v93 != v110)
                  {
                    goto LABEL_162;
                  }

                  ++v109;
                }

                while (v257 != v109);
                v109 = v257;
              }

LABEL_162:
              v111 = v80 << 31 >> 31;
              if (((v80 | v105) & 1) == 0)
              {
                v112 = &v184[100 * v104];
                if (v112[29] == 1)
                {
                  v111 = *(v112 + 5);
                }

                else
                {
                  v111 = 0;
                }
              }

              if (v104 + 1 >= v109)
              {
                buf[0] = 0;
                buf[8] = 0;
                v116 = 1;
                v140 = v196;
                v186 = 1;
                goto LABEL_215;
              }

              v113 = 0;
              v114 = ~v104 + v109;
              v115 = &v184[100 * v104 + 104];
              v186 = 1;
              v116 = 1;
              while (v93 == *(v115 + 4))
              {
                if ((v80 & 1) == 0 && *(v115 + 25) == 1 && *(v115 + 16) != v111)
                {
                  v117 = *(v115 + 8);
                  if (v196 - 1 < v117)
                  {
                    break;
                  }

                  v118 = v117 - v113;
                  if (v117 > v113)
                  {
                    buf[0] = 0;
                    buf[8] = 0;
                    if (v117 + 1 < v196)
                    {
                      v119 = vsub_f32(v190[v117 + 1], v190[v117]);
                      v120 = sqrtf(vaddv_f32(vmul_f32(v119, v119)));
                      v121 = v119.f32[1];
                      goto LABEL_176;
                    }

                    if (v196 - 1 == v117)
                    {
                      if (*(v182 + 3520) && (*&v265 = __PAIR64__(v93, v188), DWORD2(v265) = v117, (v127 = std::__hash_table<std::__hash_value_type<GhostPointKey,unsigned int>,std::__unordered_map_hasher<GhostPointKey,std::__hash_value_type<GhostPointKey,unsigned int>,GhostPointHash,GhostPointKeyEqual,true>,std::__unordered_map_equal<GhostPointKey,std::__hash_value_type<GhostPointKey,unsigned int>,GhostPointKeyEqual,GhostPointHash,true>,std::allocator<std::__hash_value_type<GhostPointKey,unsigned int>>>::find<GhostPointKey>((v182 + 3656), &v265)) != 0))
                      {
                        v128 = *(v127 + 7);
                        v119.f32[0] = *(*(v182 + 3600) + 4 * v128);
                        v121 = *(*(v182 + 3624) + 4 * v128);
                      }

                      else
                      {
                        v119.i32[0] = 0;
                        v121 = 0.0;
                      }

                      v129 = v190;
                      v120 = sqrtf((v119.f32[0] * v119.f32[0]) + (v121 * v121));
                      if (v120 < 0.0000001)
                      {
LABEL_193:
                        v130 = &v129[v113];
                        LOBYTE(__p) = 0;
                        BYTE8(__p) = 0;
                        if (v113)
                        {
                          v131 = vsub_f32(*v130, v130[-1]);
                          v132 = sqrtf(vaddv_f32(vmul_f32(v131, v131)));
                          v133 = v131.f32[1];
                          v134 = *(&v185 + 1);
                          goto LABEL_200;
                        }

                        if (*(v182 + 3520) && (*&v265 = __PAIR64__(v93, v188), DWORD2(v265) = 0, (v135 = std::__hash_table<std::__hash_value_type<GhostPointKey,unsigned int>,std::__unordered_map_hasher<GhostPointKey,std::__hash_value_type<GhostPointKey,unsigned int>,GhostPointHash,GhostPointKeyEqual,true>,std::__unordered_map_equal<GhostPointKey,std::__hash_value_type<GhostPointKey,unsigned int>,GhostPointKeyEqual,GhostPointHash,true>,std::allocator<std::__hash_value_type<GhostPointKey,unsigned int>>>::find<GhostPointKey>((v182 + 3656), &v265)) != 0))
                        {
                          v136 = *(v135 + 7);
                          v131.f32[0] = -*(*(v182 + 3600) + 4 * v136);
                          v133 = -*(*(v182 + 3624) + 4 * v136);
                        }

                        else
                        {
                          v131.i32[0] = 0;
                          v133 = 0.0;
                        }

                        v134 = *(&v185 + 1);
                        v132 = sqrtf((v131.f32[0] * v131.f32[0]) + (v133 * v133));
                        if (v132 >= 0.0000001)
                        {
LABEL_200:
                          v116 = 0;
                          v137 = 1.0 / v132;
                          *&__p = v137 * v131.f32[0];
                          *(&__p + 1) = v137 * v133;
                          BYTE8(__p) = 1;
                        }

                        if (v183)
                        {
                          v138 = v231;
                          v212 = v185;
                          if (v134)
                          {
                            atomic_fetch_add_explicit(&v134->__shared_owners_, 1uLL, memory_order_relaxed);
                          }
                        }

                        else
                        {
                          v139 = v249;
                          v211 = v185;
                          if (v134)
                          {
                            atomic_fetch_add_explicit(&v134->__shared_owners_, 1uLL, memory_order_relaxed);
                          }
                        }

                        if (v134)
                        {
                          std::__shared_weak_count::__release_shared[abi:nn200100](v134);
                        }

                        v116 = 0;
                        v111 = *(v115 + 16);
                        goto LABEL_186;
                      }

LABEL_176:
                      v186 = 0;
                      v122 = 1.0 / v120;
                      *buf = v122 * v119.f32[0];
                      *&buf[4] = v122 * v121;
                      buf[8] = 1;
                    }

                    v129 = v190;
                    goto LABEL_193;
                  }

                  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
                  {
                    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
                  }

                  v123 = GEOGetVectorKitVKDefaultLog_log;
                  if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
                  {
                    *(&v265 + 4) = *(a5 + 4);
                    LOWORD(v265) = *a5;
                    v266 = *(a5 + 16);
                    LOBYTE(v267) = *(a5 + 24);
                    md::debugString<geo::QuadTile>(&__p, &v265);
                    p_p = &__p;
                    if (v204 < 0)
                    {
                      p_p = __p;
                    }

                    v125 = *v115;
                    v126 = *(v115 + 4);
                    *buf = 136315650;
                    *&buf[4] = p_p;
                    *&buf[12] = 1024;
                    *&buf[14] = v125;
                    *&buf[18] = 1024;
                    *&buf[20] = v126;
                    _os_log_impl(&dword_1B2754000, v123, OS_LOG_TYPE_ERROR, "buildRoadTileData: Received point characteristic out of order in tile %s, featureIndex %d, sectionIndex %d", buf, 0x18u);
                    if (SHIBYTE(v204) < 0)
                    {
                      operator delete(__p);
                    }
                  }
                }

                v117 = v113;
LABEL_186:
                v115 += 100;
                v113 = v117;
                if (!--v114)
                {
                  goto LABEL_222;
                }
              }

              v117 = v113;
LABEL_222:
              v103 = v196;
              v140 = v196 - v117;
              v16 = a7;
              v90 = v181;
              v92 = v188;
              if (v196 > v117)
              {
                v146 = &v190[v117];
                buf[0] = 0;
                buf[8] = 0;
                v190 = v146;
                if (v117)
                {
                  v143 = vsub_f32(*v146, v146[-1]);
                  v145 = sqrtf(vaddv_f32(vmul_f32(v143, v143)));
                  v144 = v143.f32[1];
                  goto LABEL_225;
                }

LABEL_215:
                if (*(v182 + 3520) && (*&v265 = __PAIR64__(v93, v92), DWORD2(v265) = 0, (v141 = std::__hash_table<std::__hash_value_type<GhostPointKey,unsigned int>,std::__unordered_map_hasher<GhostPointKey,std::__hash_value_type<GhostPointKey,unsigned int>,GhostPointHash,GhostPointKeyEqual,true>,std::__unordered_map_equal<GhostPointKey,std::__hash_value_type<GhostPointKey,unsigned int>,GhostPointKeyEqual,GhostPointHash,true>,std::allocator<std::__hash_value_type<GhostPointKey,unsigned int>>>::find<GhostPointKey>((v182 + 3656), &v265)) != 0))
                {
                  v142 = *(v141 + 7);
                  v143.f32[0] = -*(*(v182 + 3600) + 4 * v142);
                  v144 = -*(*(v182 + 3624) + 4 * v142);
                }

                else
                {
                  v143.i32[0] = 0;
                  v144 = 0.0;
                }

                v145 = sqrtf((v143.f32[0] * v143.f32[0]) + (v144 * v144));
                if (v145 >= 0.0000001)
                {
LABEL_225:
                  v116 = 0;
                  v147 = 1.0 / v145;
                  *buf = v147 * v143.f32[0];
                  *&buf[4] = v147 * v144;
                  buf[8] = 1;
                }

                LOBYTE(v265) = 0;
                BYTE8(v265) = 0;
                *&__p = __PAIR64__(v93, v92);
                DWORD2(__p) = v103 - 1;
                v148 = *(v90 + 144);
                v149 = std::__hash_table<std::__hash_value_type<GhostPointKey,unsigned int>,std::__unordered_map_hasher<GhostPointKey,std::__hash_value_type<GhostPointKey,unsigned int>,GhostPointHash,GhostPointKeyEqual,true>,std::__unordered_map_equal<GhostPointKey,std::__hash_value_type<GhostPointKey,unsigned int>,GhostPointKeyEqual,GhostPointHash,true>,std::allocator<std::__hash_value_type<GhostPointKey,unsigned int>>>::find<GhostPointKey>(v148 + 457, &__p);
                if (v149)
                {
                  v150 = *(v149 + 7);
                  v151 = *(v148[450] + 4 * v150);
                  v152 = *(v148[453] + 4 * v150);
                  v153 = sqrtf((v151 * v151) + (v152 * v152));
                  if (v153 >= 0.0000001)
                  {
                    v186 = 0;
                    v154 = 1.0 / v153;
                    *&v265 = v154 * v151;
                    *(&v265 + 1) = v154 * v152;
                    BYTE8(v265) = 1;
                  }
                }

                v92 = v188;
                if (v183)
                {
                  v155 = &v230;
                  if (v80)
                  {
                    v155 = &v221;
                  }

                  v156 = v155[1];
                  v210 = v185;
                  if (*(&v185 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v185 + 1) + 8), 1uLL, memory_order_relaxed);
                  }

                  v157 = *(&v210 + 1);
                  if (!*(&v210 + 1))
                  {
                    goto LABEL_242;
                  }

LABEL_241:
                  std::__shared_weak_count::__release_shared[abi:nn200100](v157);
                  goto LABEL_242;
                }

                v158 = &v248;
                if (v80)
                {
                  v158 = &v239;
                }

                v159 = v158[1];
                v209 = v185;
                if (*(&v185 + 1))
                {
                  atomic_fetch_add_explicit((*(&v185 + 1) + 8), 1uLL, memory_order_relaxed);
                }

                v157 = *(&v209 + 1);
                if (*(&v209 + 1))
                {
                  goto LABEL_241;
                }
              }

LABEL_242:
              if (++v93 == v187)
              {
LABEL_243:
                v17 = a2;
                v15 = v172;
                if (v174)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v174);
                }

                break;
              }
            }
          }

          v64 = v175;
          v62 = v176;
          if (*(&v185 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v185 + 1));
          }
        }

LABEL_247:
        v65 = v188 + 1;
      }

      while (v188 + 1 != v64);
    }

    v15 += 2;
    if (v15 == v170)
    {
      v160 = v231;
      v161 = v240;
      v162 = v222;
      goto LABEL_251;
    }
  }

  v173 = v18 == 67;
  v178 = v18 == 68;
  if ((v18 - 67) > 1)
  {
    goto LABEL_58;
  }

  for (j = 0; ; ++j)
  {
    v32 = *(v181 + 144);
    v33 = *(v32 + 504);
    if (geo::codec::VectorTile::poisCount(v33, *(v32 + 512)) <= j)
    {
      goto LABEL_58;
    }

    v34 = v33 + 224 * j;
    v36 = (v34 + 24);
    v35 = *(v34 + 3);
    if (v35)
    {
      v37 = *(v35 + 33);
      if (*(v35 + 33))
      {
        v38 = *v35;
        if (*v38 == 6)
        {
          v39 = 0;
LABEL_24:
          if (v38[2 * v39 + 1] == 446 && ((*(*v17 + 160))(v17, *v15, v34) & 1) == 0)
          {
            v43 = *(v34 + 22);
            v42 = *(v34 + 23);
            *&buf[8] = 0;
            *buf = 0;
            *&buf[16] = 256;
            if (v18 == 68)
            {
              *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](buf, 0x10002u) = 1;
            }

            std::atomic_load[abi:nn200100]<md::RegistryManager>(&__p, (v17 + 768));
            v44 = __p;
            md::createFeatureAttributeSet(&v265, v36);
            gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v196, v44, &v265, buf);
            std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v265);
            if (*(&__p + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&__p + 1));
            }

            v45 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(v271, v196);
            if (v45)
            {
              v46 = v45;
              v47 = v45[5];
              v48 = v45[6];
              if (v47 >= v48)
              {
                v50 = v45[4];
                v51 = 0xAAAAAAAAAAAAAAABLL * ((v47 - v50) >> 2);
                v52 = v51 + 1;
                if (v51 + 1 > 0x1555555555555555)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v53 = 0xAAAAAAAAAAAAAAABLL * ((v48 - v50) >> 2);
                if (2 * v53 > v52)
                {
                  v52 = 2 * v53;
                }

                if (v53 >= 0xAAAAAAAAAAAAAAALL)
                {
                  v54 = 0x1555555555555555;
                }

                else
                {
                  v54 = v52;
                }

                if (v54)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v54);
                }

                v55 = 12 * v51;
                *v55 = v43;
                *(v55 + 4) = v42;
                *(v55 + 8) = 0;
                v56 = v46[4];
                v57 = v46[5];
                v58 = 12 * v51 + v56 - v57;
                if (v57 != v56)
                {
                  v59 = (v55 + v56 - v57);
                  do
                  {
                    v60 = *v56;
                    *(v59 + 2) = *(v56 + 2);
                    *v59 = v60;
                    v59 += 12;
                    v56 += 12;
                  }

                  while (v56 != v57);
                  v56 = v46[4];
                }

                v49 = (v55 + 12);
                v46[4] = v58;
                v46[5] = v55 + 12;
                v46[6] = 0;
                if (v56)
                {
                  operator delete(v56);
                }
              }

              else
              {
                *v47 = v43;
                v47[1] = v42;
                v49 = v47 + 3;
                v47[2] = 0;
              }

              v46[5] = v49;
            }

            else
            {
              v257 = __PAIR64__(v42, v43);
              LODWORD(v258) = 0;
              std::vector<gm::Matrix<float,3,1>>::vector[abi:nn200100](&__p, &v257, 1uLL);
              std::pair<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> const,std::vector<gm::Matrix<float,3,1>>>::pair[abi:nn200100]<true,0>(&v265, v196, v197, &__p);
              std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::pair<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> const,std::vector<gm::Matrix<float,3,1>>>>(v271, v265, &v265);
              if (v266)
              {
                v267 = v266;
                operator delete(v266);
              }

              if (*(&v265 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*(&v265 + 1));
              }

              if (__p)
              {
                *(&__p + 1) = __p;
                operator delete(__p);
              }
            }

            if (v197)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v197);
            }

            geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(buf);
          }

          continue;
        }

        v39 = 0;
        v40 = v38 + 2;
        do
        {
          if (v37 - 1 == v39)
          {
            goto LABEL_57;
          }

          v41 = *v40;
          v40 += 2;
          ++v39;
        }

        while (v41 != 6);
        if (v39 < v37)
        {
          goto LABEL_24;
        }
      }
    }

LABEL_57:
    ;
  }
}

void sub_1B2CC8090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, md::MapTileData *a44, std::__shared_weak_count *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::~__hash_table(v72);
  v75 = v71[33].__vftable;
  v71[33].__vftable = 0;
  if (v75)
  {
    (*(v75->~__shared_weak_count + 1))(v75);
  }

  shared_weak_owners = v71[32].__shared_weak_owners_;
  v71[32].__shared_weak_owners_ = 0;
  if (shared_weak_owners)
  {
    (*(*shared_weak_owners + 8))(shared_weak_owners);
  }

  shared_owners = v71[32].__shared_owners_;
  v71[32].__shared_owners_ = 0;
  if (shared_owners)
  {
    (*(*shared_owners + 8))(shared_owners);
  }

  v78 = v71[32].__vftable;
  v71[32].__vftable = 0;
  if (v78)
  {
    (*(v78->~__shared_weak_count + 1))(v78);
  }

  v79 = v71[31].__shared_weak_owners_;
  v71[31].__shared_weak_owners_ = 0;
  if (v79)
  {
    (*(*v79 + 8))(v79);
  }

  v80 = v71[31].__shared_owners_;
  v71[31].__shared_owners_ = 0;
  if (v80)
  {
    (*(*v80 + 8))(v80);
  }

  md::MapTileData::~MapTileData(a44);
  std::__shared_weak_count::~__shared_weak_count(v71);
  operator delete(v81);
  if (a45)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a45);
  }

  _Block_object_dispose(&a64, 8);
  v82 = a70;
  a70 = 0;
  if (v82)
  {
    (*(*v82 + 8))(v82);
  }

  _Block_object_dispose(&__p, 8);
  v83 = STACK[0x220];
  STACK[0x220] = 0;
  if (v83)
  {
    (*(*v83 + 8))(v83);
  }

  _Block_object_dispose(&STACK[0x430], 8);
  v84 = STACK[0x460];
  STACK[0x460] = 0;
  if (v84)
  {
    (*(*v84 + 8))(v84);
  }

  _Block_object_dispose((v73 - 248), 8);
  v85 = *(v73 - 200);
  *(v73 - 200) = 0;
  if (v85)
  {
    (*(*v85 + 8))(v85);
  }

  std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::__deallocate_node(*(v73 - 168));
  v87 = *(v73 - 192);
  *(v73 - 192) = 0;
  if (v87)
  {
    v88 = mdm::zone_mallocator::instance(v86);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,void *> *> *>(v88, v87);
  }

  _Block_object_dispose(&STACK[0x2B0], 8);
  std::__hash_table<std::__hash_value_type<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::PatternedBatchKey,std::__hash_value_type<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,std::hash<md::PatternedBatchKey>,std::equal_to<md::PatternedBatchKey>,true>,std::__unordered_map_equal<md::PatternedBatchKey,std::__hash_value_type<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::PatternedBatchKey>,std::hash<md::PatternedBatchKey>,true>,std::allocator<std::__hash_value_type<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(&STACK[0x2E0]);
  _Block_object_dispose(&STACK[0x308], 8);
  std::__hash_table<std::__hash_value_type<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::PatternedBatchKey,std::__hash_value_type<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,std::hash<md::PatternedBatchKey>,std::equal_to<md::PatternedBatchKey>,true>,std::__unordered_map_equal<md::PatternedBatchKey,std::__hash_value_type<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::PatternedBatchKey>,std::hash<md::PatternedBatchKey>,true>,std::allocator<std::__hash_value_type<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(&STACK[0x338]);
  _Block_object_dispose(&STACK[0x360], 8);
  std::__hash_table<std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::RoadBatchKey,std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,std::hash<md::RoadBatchKey>,std::equal_to<md::RoadBatchKey>,true>,std::__unordered_map_equal<md::RoadBatchKey,std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::RoadBatchKey>,std::hash<md::RoadBatchKey>,true>,std::allocator<std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(&STACK[0x390]);
  _Block_object_dispose(&STACK[0x3B8], 8);
  std::__hash_table<std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::RoadBatchKey,std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,std::hash<md::RoadBatchKey>,std::equal_to<md::RoadBatchKey>,true>,std::__unordered_map_equal<md::RoadBatchKey,std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::RoadBatchKey>,std::hash<md::RoadBatchKey>,true>,std::allocator<std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(&STACK[0x3E8]);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2741(uint64_t result, uint64_t a2)
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

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
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

uint64_t __Block_byref_object_copy__12_2745(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t __Block_byref_object_dispose__13_2746(uint64_t a1)
{
  result = *(a1 + 48);
  *(a1 + 48) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t __Block_byref_object_dispose__16(uint64_t a1)
{
  result = *(a1 + 48);
  *(a1 + 48) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void anonymous namespace::addContourLinesToBatches(mdm::zone_mallocator *a1, mdm::zone_mallocator *a2, uint64_t *a3, uint64_t *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  v21 = a3[1];
  if (*a3 != v21)
  {
    v7 = a3[4];
    v20 = *(v7 + 32) + 8;
    v8 = *(v7 + 8);
    do
    {
      v9 = *a4;
      md::createFeatureAttributeSet(&v31, (v4 + 32));
      gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v29, v9, &v31);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v31);
      v10 = v29;
      v11 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v31, v10, v11);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      }

      if (v34 == 1)
      {
        v12 = (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v31[3], 0x12Cu, 2u) & 1) != 0 || (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v31[3], 0x12Du, 2u) & 1) != 0 || gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(150, 2, v31[3]) == 1;
      }

      else
      {
        if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
        }

        v13 = GEOGetVectorKitVKDefaultLog_log;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_DEBUG, "Road Layer Data Source: failed to resolve style for contours (assuming solid)", buf, 2u);
        }

        v12 = 0;
      }

      if (*(v4 + 20))
      {
        v14 = 0;
        v15 = (v20 + 16 * *(v4 + 16));
        do
        {
          v16 = (v8 + 8 * *(v15 - 1));
          if (v12)
          {
            v17 = v30;
            v28[0] = v29;
            v28[1] = v30;
            if (v30)
            {
              atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v18 = *v15;
            buf[0] = 0;
            v27 = 0;
            v24[0] = 0;
            v25 = 0;
          }

          else
          {
            v17 = v30;
            v23[0] = v29;
            v23[1] = v30;
            if (v30)
            {
              atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v19 = *v15;
            buf[0] = 0;
            v27 = 0;
            v24[0] = 0;
            v25 = 0;
          }

          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v17);
          }

          ++v14;
          v15 += 2;
        }

        while (v14 < *(v4 + 20));
      }

      if (v34 == 1)
      {
        (*(*v31 + 56))(v31);
      }

      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v33);
      }

      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v32);
      }

      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v30);
      }

      v4 += 56;
    }

    while (v4 != v21);
  }
}