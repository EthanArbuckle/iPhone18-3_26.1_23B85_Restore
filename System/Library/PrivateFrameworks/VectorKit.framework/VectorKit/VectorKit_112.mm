uint64_t md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>::~data_recycle_pool(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[5];
  }

  a1[6] = v2;
  for (i = a1[2]; i; i = *i)
  {
    v5 = i[2];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A22D48;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[19];
  v7 = a1[20];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[22];
  if (v8)
  {
    a1[23] = v8;
    operator delete(v8);
  }

  v9 = a1[19];
  if (v9)
  {
    a1[20] = v9;
    operator delete(v9);
  }

  v10 = a1[13];
  v11 = a1[14];
  while (v10 != v11)
  {
    if (*v10)
    {
      operator delete(*v10);
    }

    ++v10;
  }

  v12 = a1[16];
  if (v12)
  {
    a1[17] = v12;
    operator delete(v12);
  }

  v13 = a1[13];
  if (v13)
  {
    a1[14] = v13;
    operator delete(v13);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,64ul>::~sparse_set(a1);
}

uint64_t md::data_recycle_pool<md::CachedKey<md::ColorCorrectionKey>>::~data_recycle_pool(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x1B8C62190](*v2, 0x1000C40C46099A0);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[5];
  }

  a1[6] = v2;
  for (i = a1[2]; i; i = *i)
  {
    v5 = i[2];
    if (v5)
    {
      MEMORY[0x1B8C62190](v5, 0x1000C40C46099A0);
    }
  }

  std::__function::__value_func<md::CachedKey<md::ColorCorrectionKey> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1);
}

void *ecs2::group_storage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::Counter,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A22BF8;
    ;
  }

  v3 = a1[19];
  v4 = a1[20];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[22];
  if (v5)
  {
    a1[23] = v5;
    operator delete(v5);
  }

  v6 = a1[19];
  if (v6)
  {
    a1[20] = v6;
    operator delete(v6);
  }

  v7 = a1[13];
  v8 = a1[14];
  while (v7 != v8)
  {
    if (*v7)
    {
      operator delete(*v7);
    }

    ++v7;
  }

  v9 = a1[16];
  if (v9)
  {
    a1[17] = v9;
    operator delete(v9);
  }

  v10 = a1[13];
  if (v10)
  {
    a1[14] = v10;
    operator delete(v10);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,64ul>::~sparse_set(a1);
}

uint64_t md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>::~data_recycle_pool(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[5];
  }

  a1[6] = v2;
  for (i = a1[2]; i; i = *i)
  {
    v5 = i[2];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A22B38;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[19];
  v7 = a1[20];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[22];
  if (v8)
  {
    a1[23] = v8;
    operator delete(v8);
  }

  v9 = a1[19];
  if (v9)
  {
    a1[20] = v9;
    operator delete(v9);
  }

  v10 = a1[13];
  v11 = a1[14];
  while (v10 != v11)
  {
    if (*v10)
    {
      operator delete(*v10);
    }

    ++v10;
  }

  v12 = a1[16];
  if (v12)
  {
    a1[17] = v12;
    operator delete(v12);
  }

  v13 = a1[13];
  if (v13)
  {
    a1[14] = v13;
    operator delete(v13);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,64ul>::~sparse_set(a1);
}

uint64_t md::data_recycle_pool<md::CachedKey<md::PlanarParametersCacheKey>>::~data_recycle_pool(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x1B8C62190](*v2, 0x1000C40451B5BE8);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[5];
  }

  a1[6] = v2;
  for (i = a1[2]; i; i = *i)
  {
    v5 = i[2];
    if (v5)
    {
      MEMORY[0x1B8C62190](v5, 0x1000C40451B5BE8);
    }
  }

  std::__function::__value_func<md::CachedKey<md::PlanarParametersCacheKey> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1);
}

void *ecs2::group_storage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::Counter,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A229E8;
    ;
  }

  v3 = a1[19];
  v4 = a1[20];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[22];
  if (v5)
  {
    a1[23] = v5;
    operator delete(v5);
  }

  v6 = a1[19];
  if (v6)
  {
    a1[20] = v6;
    operator delete(v6);
  }

  v7 = a1[13];
  v8 = a1[14];
  while (v7 != v8)
  {
    if (*v7)
    {
      operator delete(*v7);
    }

    ++v7;
  }

  v9 = a1[16];
  if (v9)
  {
    a1[17] = v9;
    operator delete(v9);
  }

  v10 = a1[13];
  if (v10)
  {
    a1[14] = v10;
    operator delete(v10);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,64ul>::~sparse_set(a1);
}

uint64_t md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>::~data_recycle_pool(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[5];
  }

  a1[6] = v2;
  for (i = a1[2]; i; i = *i)
  {
    v5 = i[2];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A22928;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[19];
  v7 = a1[20];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[22];
  if (v8)
  {
    a1[23] = v8;
    operator delete(v8);
  }

  v9 = a1[19];
  if (v9)
  {
    a1[20] = v9;
    operator delete(v9);
  }

  v10 = a1[13];
  v11 = a1[14];
  while (v10 != v11)
  {
    if (*v10)
    {
      operator delete(*v10);
    }

    ++v10;
  }

  v12 = a1[16];
  if (v12)
  {
    a1[17] = v12;
    operator delete(v12);
  }

  v13 = a1[13];
  if (v13)
  {
    a1[14] = v13;
    operator delete(v13);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,64ul>::~sparse_set(a1);
}

uint64_t md::data_recycle_pool<md::CachedKey<md::StyleEmissiveColorCacheKey>>::~data_recycle_pool(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x1B8C62190](*v2, 0x1000C400CE834B2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[5];
  }

  a1[6] = v2;
  for (i = a1[2]; i; i = *i)
  {
    v5 = i[2];
    if (v5)
    {
      MEMORY[0x1B8C62190](v5, 0x1000C400CE834B2);
    }
  }

  std::__function::__value_func<md::CachedKey<md::StyleEmissiveColorCacheKey> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1);
}

void *ecs2::group_storage<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::Counter,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A227D8;
    ;
  }

  v3 = a1[19];
  v4 = a1[20];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[22];
  if (v5)
  {
    a1[23] = v5;
    operator delete(v5);
  }

  v6 = a1[19];
  if (v6)
  {
    a1[20] = v6;
    operator delete(v6);
  }

  v7 = a1[13];
  v8 = a1[14];
  while (v7 != v8)
  {
    if (*v7)
    {
      operator delete(*v7);
    }

    ++v7;
  }

  v9 = a1[16];
  if (v9)
  {
    a1[17] = v9;
    operator delete(v9);
  }

  v10 = a1[13];
  if (v10)
  {
    a1[14] = v10;
    operator delete(v10);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,64ul>::~sparse_set(a1);
}

uint64_t md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>::~data_recycle_pool(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[5];
  }

  a1[6] = v2;
  for (i = a1[2]; i; i = *i)
  {
    v5 = i[2];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A22718;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[19];
  v7 = a1[20];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[22];
  if (v8)
  {
    a1[23] = v8;
    operator delete(v8);
  }

  v9 = a1[19];
  if (v9)
  {
    a1[20] = v9;
    operator delete(v9);
  }

  v10 = a1[13];
  v11 = a1[14];
  while (v10 != v11)
  {
    if (*v10)
    {
      operator delete(*v10);
    }

    ++v10;
  }

  v12 = a1[16];
  if (v12)
  {
    a1[17] = v12;
    operator delete(v12);
  }

  v13 = a1[13];
  if (v13)
  {
    a1[14] = v13;
    operator delete(v13);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,64ul>::~sparse_set(a1);
}

uint64_t md::data_recycle_pool<md::CachedKey<md::ColorStyleCacheKey>>::~data_recycle_pool(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x1B8C62190](*v2, 0x1000C40B9F3BD1DLL);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[5];
  }

  a1[6] = v2;
  for (i = a1[2]; i; i = *i)
  {
    v5 = i[2];
    if (v5)
    {
      MEMORY[0x1B8C62190](v5, 0x1000C40B9F3BD1DLL);
    }
  }

  std::__function::__value_func<md::CachedKey<md::ColorStyleCacheKey> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1);
}

void *ecs2::group_storage<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::Counter,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A225C8;
    ;
  }

  v3 = a1[19];
  v4 = a1[20];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[22];
  if (v5)
  {
    a1[23] = v5;
    operator delete(v5);
  }

  v6 = a1[19];
  if (v6)
  {
    a1[20] = v6;
    operator delete(v6);
  }

  v7 = a1[13];
  v8 = a1[14];
  while (v7 != v8)
  {
    if (*v7)
    {
      operator delete(*v7);
    }

    ++v7;
  }

  v9 = a1[16];
  if (v9)
  {
    a1[17] = v9;
    operator delete(v9);
  }

  v10 = a1[13];
  if (v10)
  {
    a1[14] = v10;
    operator delete(v10);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,64ul>::~sparse_set(a1);
}

uint64_t md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>::~data_recycle_pool(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[5];
  }

  a1[6] = v2;
  for (i = a1[2]; i; i = *i)
  {
    v5 = i[2];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleRouteLineMask>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleRouteLineMask>,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A22508;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[19];
  v7 = a1[20];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[22];
  if (v8)
  {
    a1[23] = v8;
    operator delete(v8);
  }

  v9 = a1[19];
  if (v9)
  {
    a1[20] = v9;
    operator delete(v9);
  }

  v10 = a1[13];
  v11 = a1[14];
  while (v10 != v11)
  {
    if (*v10)
    {
      operator delete(*v10);
    }

    ++v10;
  }

  v12 = a1[16];
  if (v12)
  {
    a1[17] = v12;
    operator delete(v12);
  }

  v13 = a1[13];
  if (v13)
  {
    a1[14] = v13;
    operator delete(v13);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleRouteLineMask>>,64ul>::~sparse_set(a1);
}

uint64_t md::data_recycle_pool<md::CachedKey<md::StyleSSAOKey>>::~data_recycle_pool(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x1B8C62190](*v2, 0x1000C4007A0EC4CLL);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[5];
  }

  a1[6] = v2;
  for (i = a1[2]; i; i = *i)
  {
    v5 = i[2];
    if (v5)
    {
      MEMORY[0x1B8C62190](v5, 0x1000C4007A0EC4CLL);
    }
  }

  std::__function::__value_func<md::CachedKey<md::StyleSSAOKey> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1);
}

void *ecs2::group_storage<geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::Counter,md::CachedKey<md::StyleSSAOKey>,md::CachedKey<md::StyleSSAOKey>*>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A223B8;
    ;
  }

  v3 = a1[19];
  v4 = a1[20];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[22];
  if (v5)
  {
    a1[23] = v5;
    operator delete(v5);
  }

  v6 = a1[19];
  if (v6)
  {
    a1[20] = v6;
    operator delete(v6);
  }

  v7 = a1[13];
  v8 = a1[14];
  while (v7 != v8)
  {
    if (*v7)
    {
      operator delete(*v7);
    }

    ++v7;
  }

  v9 = a1[16];
  if (v9)
  {
    a1[17] = v9;
    operator delete(v9);
  }

  v10 = a1[13];
  if (v10)
  {
    a1[14] = v10;
    operator delete(v10);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::CachedKey<md::StyleSSAOKey>>,64ul>::~sparse_set(a1);
}

uint64_t md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>::~data_recycle_pool(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[5];
  }

  a1[6] = v2;
  for (i = a1[2]; i; i = *i)
  {
    v5 = i[2];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleSSAO>,ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A222F8;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[19];
  v7 = a1[20];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[22];
  if (v8)
  {
    a1[23] = v8;
    operator delete(v8);
  }

  v9 = a1[19];
  if (v9)
  {
    a1[20] = v9;
    operator delete(v9);
  }

  v10 = a1[13];
  v11 = a1[14];
  while (v10 != v11)
  {
    if (*v10)
    {
      operator delete(*v10);
    }

    ++v10;
  }

  v12 = a1[16];
  if (v12)
  {
    a1[17] = v12;
    operator delete(v12);
  }

  v13 = a1[13];
  if (v13)
  {
    a1[14] = v13;
    operator delete(v13);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>,64ul>::~sparse_set(a1);
}

uint64_t md::data_recycle_pool<md::CachedKey<md::StyleCacheKey>>::~data_recycle_pool(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x1B8C62190](*v2, 0x1000C40451B5BE8);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[5];
  }

  a1[6] = v2;
  for (i = a1[2]; i; i = *i)
  {
    v5 = i[2];
    if (v5)
    {
      MEMORY[0x1B8C62190](v5, 0x1000C40451B5BE8);
    }
  }

  std::__function::__value_func<md::CachedKey<md::StyleCacheKey> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1);
}

void *ecs2::group_storage<geo::handle<md::CachedKey<md::StyleCacheKey>>,md::Counter,md::CachedKey<md::StyleCacheKey>,md::CachedKey<md::StyleCacheKey>*>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A221A8;
    ;
  }

  v3 = a1[19];
  v4 = a1[20];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[22];
  if (v5)
  {
    a1[23] = v5;
    operator delete(v5);
  }

  v6 = a1[19];
  if (v6)
  {
    a1[20] = v6;
    operator delete(v6);
  }

  v7 = a1[13];
  v8 = a1[14];
  while (v7 != v8)
  {
    if (*v7)
    {
      operator delete(*v7);
    }

    ++v7;
  }

  v9 = a1[16];
  if (v9)
  {
    a1[17] = v9;
    operator delete(v9);
  }

  v10 = a1[13];
  if (v10)
  {
    a1[14] = v10;
    operator delete(v10);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::CachedKey<md::StyleCacheKey>>,64ul>::~sparse_set(a1);
}

uint64_t md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::Style>>::~data_recycle_pool(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[5];
  }

  a1[6] = v2;
  for (i = a1[2]; i; i = *i)
  {
    v5 = i[2];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  std::__function::__value_func<ggl::ConstantDataTyped<ggl::DaVinci::Style> * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1);
}

void *ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A220E8;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[19];
  v7 = a1[20];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[22];
  if (v8)
  {
    a1[23] = v8;
    operator delete(v8);
  }

  v9 = a1[19];
  if (v9)
  {
    a1[20] = v9;
    operator delete(v9);
  }

  v10 = a1[13];
  v11 = a1[14];
  while (v10 != v11)
  {
    if (*v10)
    {
      operator delete(*v10);
    }

    ++v10;
  }

  v12 = a1[16];
  if (v12)
  {
    a1[17] = v12;
    operator delete(v12);
  }

  v13 = a1[13];
  if (v13)
  {
    a1[14] = v13;
    operator delete(v13);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<geo::handle<md::RenderStateItem>,md::Counter,md::RenderStateStorage>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A21FE0;
    ;
  }

  v3 = a1[13];
  v4 = a1[14];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[16];
  if (v5)
  {
    a1[17] = v5;
    operator delete(v5);
  }

  v6 = a1[13];
  if (v6)
  {
    a1[14] = v6;
    operator delete(v6);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::RenderStateItem>,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<geo::handle<md::PipelineStateItem>,md::Counter,md::PipelineStateStorage>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A21F80;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 16 * (v4 & 0x3F) + 8);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[13];
  v7 = a1[14];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[16];
  if (v8)
  {
    a1[17] = v8;
    operator delete(v8);
  }

  v9 = a1[13];
  if (v9)
  {
    a1[14] = v9;
    operator delete(v9);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::PipelineStateItem>,64ul>::~sparse_set(a1);
}

uint64_t std::__function::__value_func<ggl::PipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *ecs2::group_storage<geo::handle<md::PipelineItem>,md::Counter,md::PipelineStorage,std::unique_ptr<ggl::PipelineSetup>>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A21F20;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(a1[19] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8));
      v6 = *(v5 + 8 * (v4 & 0x3F));
      *(v5 + 8 * (v4 & 0x3F)) = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 19));
  ecs2::pool<md::Counter,64ul>::~pool((a1 + 13));
  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::PipelineItem>,64ul>::~sparse_set(a1);
}

uint64_t geo::Pool<ggl::RenderItem>::~Pool(uint64_t a1)
{
  v24 = 0;
  v25 = 0;
  v23 = &v24;
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v23, v2);
      v2 = **v3;
      *v3 = v2;
    }

    while (v2);
    v4 = v25;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 24);
  v6 = *a1;
  v7 = (a1 + 8);
  v8 = v4 == *(a1 + 16) * v5 || v6 == v7;
  if (!v8)
  {
    v9 = *(a1 + 24);
    do
    {
      if (v9)
      {
        v10 = 0;
        v11 = v6[4];
        do
        {
          v12 = (v11 + 120 * v10);
          v13 = v24;
          if (!v24)
          {
            goto LABEL_21;
          }

          v14 = &v24;
          do
          {
            v15 = v13;
            v16 = v14;
            v17 = v13[4];
            if (v17 >= v12)
            {
              v14 = v13;
            }

            v13 = v13[v17 < v12];
          }

          while (v13);
          if (v14 == &v24)
          {
            goto LABEL_21;
          }

          if (v17 < v12)
          {
            v15 = v16;
          }

          if (v12 < v15[4])
          {
LABEL_21:
            (**v12)(v12);
            v5 = *(a1 + 24);
          }

          ++v10;
          v9 = v5;
        }

        while (v10 < v5);
      }

      v18 = v6[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v6[2];
          v8 = *v19 == v6;
          v6 = v19;
        }

        while (!v8);
      }

      v6 = v19;
    }

    while (v19 != v7);
    v6 = *a1;
  }

  if (v6 != v7)
  {
    do
    {
      free(v6[4]);
      v20 = v6[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v6[2];
          v8 = *v21 == v6;
          v6 = v21;
        }

        while (!v8);
      }

      v6 = v21;
    }

    while (v21 != v7);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v7;
  *(a1 + 40) = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v24);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  return a1;
}

void sub_1B30145DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 8));
  _Unwind_Resume(a1);
}

void *ecs2::sparse_set<geo::handle<md::PipelineItem>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A21F40;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::PipelineItem>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::PipelineItem>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::PipelineItem>,md::Counter,md::PipelineStorage,std::unique_ptr<ggl::PipelineSetup>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::PipelineItem>,md::Counter,md::PipelineStorage,std::unique_ptr<ggl::PipelineSetup>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::PipelineItem>,md::PipelineStorage,std::unique_ptr<ggl::PipelineSetup>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A21F00;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::PipelineItem>,md::Counter,md::PipelineStorage,std::unique_ptr<ggl::PipelineSetup>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::PipelineItem>,md::PipelineStorage,std::unique_ptr<ggl::PipelineSetup>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A21F00;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::PipelineItem>,md::Counter,md::PipelineStorage,std::unique_ptr<ggl::PipelineSetup>>::~group_storage(a1);
}

void md::data_array_pool<md::PipelineStorage,geo::handle<md::PipelineItem>,ggl::PipelineSetup>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A21EE0;
  std::__function::__value_func<ggl::PipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A21F00;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::PipelineItem>,md::Counter,md::PipelineStorage,std::unique_ptr<ggl::PipelineSetup>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_pool<md::PipelineStorage,geo::handle<md::PipelineItem>,ggl::PipelineSetup>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A21EE0;
  std::__function::__value_func<ggl::PipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A21F00;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::PipelineItem>,md::Counter,md::PipelineStorage,std::unique_ptr<ggl::PipelineSetup>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::PipelineStateItem>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A21FA0;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::PipelineStateItem>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::PipelineStateItem>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::PipelineStateItem>,md::Counter,md::PipelineStateStorage>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::PipelineStateItem>,md::Counter,md::PipelineStateStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::PipelineStateItem>,md::PipelineStateStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A21F60;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::PipelineStateItem>,md::Counter,md::PipelineStateStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::PipelineStateItem>,md::PipelineStateStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A21F60;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::PipelineStateItem>,md::Counter,md::PipelineStateStorage>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::RenderStateItem>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22000;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::RenderStateItem>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::RenderStateItem>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::RenderStateItem>,md::Counter,md::RenderStateStorage>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::RenderStateItem>,md::Counter,md::RenderStateStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::RenderStateItem>,md::RenderStateStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A21FC0;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::RenderStateItem>,md::Counter,md::RenderStateStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::RenderStateItem>,md::RenderStateStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A21FC0;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::RenderStateItem>,md::Counter,md::RenderStateStorage>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22108;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A220C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A220C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::Style>,geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,ggl::ConstantDataTyped<ggl::DaVinci::Style>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A220A8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::Style>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A220C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::Style>,geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,ggl::ConstantDataTyped<ggl::DaVinci::Style>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A220A8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::Style>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A220C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>::~group_storage(a1);
}

void md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::Style>,geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style>,md::StyleCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22088;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A220A8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::Style>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A220C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::Style>,geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style>,md::StyleCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22088;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A220A8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::Style>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A220C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::CachedKey<md::StyleCacheKey>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A221C8;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::CachedKey<md::StyleCacheKey>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::CachedKey<md::StyleCacheKey>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::CachedKey<md::StyleCacheKey>>,md::Counter,md::CachedKey<md::StyleCacheKey>,md::CachedKey<md::StyleCacheKey>*>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleCacheKey>>,md::Counter,md::CachedKey<md::StyleCacheKey>,md::CachedKey<md::StyleCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::CachedKey<md::StyleCacheKey>>,md::CachedKey<md::StyleCacheKey>,md::CachedKey<md::StyleCacheKey>*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22188;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleCacheKey>>,md::Counter,md::CachedKey<md::StyleCacheKey>,md::CachedKey<md::StyleCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::CachedKey<md::StyleCacheKey>>,md::CachedKey<md::StyleCacheKey>,md::CachedKey<md::StyleCacheKey>*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22188;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::StyleCacheKey>>,md::Counter,md::CachedKey<md::StyleCacheKey>,md::CachedKey<md::StyleCacheKey>*>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::CachedKey<md::StyleCacheKey>,geo::handle<md::CachedKey<md::StyleCacheKey>>,md::CachedKey<md::StyleCacheKey>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A22168;
  md::data_recycle_pool<md::CachedKey<md::StyleCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22188;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleCacheKey>>,md::Counter,md::CachedKey<md::StyleCacheKey>,md::CachedKey<md::StyleCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::CachedKey<md::StyleCacheKey>,geo::handle<md::CachedKey<md::StyleCacheKey>>,md::CachedKey<md::StyleCacheKey>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A22168;
  md::data_recycle_pool<md::CachedKey<md::StyleCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22188;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::StyleCacheKey>>,md::Counter,md::CachedKey<md::StyleCacheKey>,md::CachedKey<md::StyleCacheKey>*>::~group_storage(a1);
}

void md::data_array_cache<md::CachedKey<md::StyleCacheKey>,geo::handle<md::CachedKey<md::StyleCacheKey>>,unsigned long,md::CachedKey<md::StyleCacheKey>,std::hash<unsigned long>>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22148;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22168;
  md::data_recycle_pool<md::CachedKey<md::StyleCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22188;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleCacheKey>>,md::Counter,md::CachedKey<md::StyleCacheKey>,md::CachedKey<md::StyleCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::CachedKey<md::StyleCacheKey>,geo::handle<md::CachedKey<md::StyleCacheKey>>,unsigned long,md::CachedKey<md::StyleCacheKey>,std::hash<unsigned long>>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22148;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22168;
  md::data_recycle_pool<md::CachedKey<md::StyleCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22188;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::StyleCacheKey>>,md::Counter,md::CachedKey<md::StyleCacheKey>,md::CachedKey<md::StyleCacheKey>*>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22318;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleSSAO>,ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleSSAO>,ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>,md::ConstantDataStorage<ggl::DaVinci::StyleSSAO>,ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A222D8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleSSAO>,ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>,md::ConstantDataStorage<ggl::DaVinci::StyleSSAO>,ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A222D8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleSSAO>,ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::StyleSSAO>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>,ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A222B8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A222D8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleSSAO>,ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::StyleSSAO>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>,ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A222B8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A222D8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleSSAO>,ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *>::~group_storage(a1);
}

void md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::StyleSSAO>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>,md::StyleSSAOKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>,md::StyleSSAOKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22298;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A222B8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A222D8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleSSAO>,ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::StyleSSAO>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>,md::StyleSSAOKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>,md::StyleSSAOKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22298;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A222B8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A222D8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleSSAO>,ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::CachedKey<md::StyleSSAOKey>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A223D8;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::CachedKey<md::StyleSSAOKey>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::CachedKey<md::StyleSSAOKey>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::Counter,md::CachedKey<md::StyleSSAOKey>,md::CachedKey<md::StyleSSAOKey>*>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::Counter,md::CachedKey<md::StyleSSAOKey>,md::CachedKey<md::StyleSSAOKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::CachedKey<md::StyleSSAOKey>,md::CachedKey<md::StyleSSAOKey>*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22398;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::Counter,md::CachedKey<md::StyleSSAOKey>,md::CachedKey<md::StyleSSAOKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::CachedKey<md::StyleSSAOKey>,md::CachedKey<md::StyleSSAOKey>*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22398;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::Counter,md::CachedKey<md::StyleSSAOKey>,md::CachedKey<md::StyleSSAOKey>*>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::CachedKey<md::StyleSSAOKey>,geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::CachedKey<md::StyleSSAOKey>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A22378;
  md::data_recycle_pool<md::CachedKey<md::StyleSSAOKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22398;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::Counter,md::CachedKey<md::StyleSSAOKey>,md::CachedKey<md::StyleSSAOKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::CachedKey<md::StyleSSAOKey>,geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::CachedKey<md::StyleSSAOKey>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A22378;
  md::data_recycle_pool<md::CachedKey<md::StyleSSAOKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22398;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::Counter,md::CachedKey<md::StyleSSAOKey>,md::CachedKey<md::StyleSSAOKey>*>::~group_storage(a1);
}

void md::data_array_cache<md::CachedKey<md::StyleSSAOKey>,geo::handle<md::CachedKey<md::StyleSSAOKey>>,unsigned long,md::CachedKey<md::StyleSSAOKey>,std::hash<unsigned long>>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22358;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22378;
  md::data_recycle_pool<md::CachedKey<md::StyleSSAOKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22398;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::Counter,md::CachedKey<md::StyleSSAOKey>,md::CachedKey<md::StyleSSAOKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::CachedKey<md::StyleSSAOKey>,geo::handle<md::CachedKey<md::StyleSSAOKey>>,unsigned long,md::CachedKey<md::StyleSSAOKey>,std::hash<unsigned long>>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22358;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22378;
  md::data_recycle_pool<md::CachedKey<md::StyleSSAOKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22398;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::Counter,md::CachedKey<md::StyleSSAOKey>,md::CachedKey<md::StyleSSAOKey>*>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleRouteLineMask>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22528;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleRouteLineMask>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleRouteLineMask>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleRouteLineMask>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleRouteLineMask>,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleRouteLineMask>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleRouteLineMask>,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleRouteLineMask>>,md::ConstantDataStorage<ggl::DaVinci::StyleRouteLineMask>,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A224E8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleRouteLineMask>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleRouteLineMask>,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleRouteLineMask>>,md::ConstantDataStorage<ggl::DaVinci::StyleRouteLineMask>,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A224E8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleRouteLineMask>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleRouteLineMask>,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::StyleRouteLineMask>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleRouteLineMask>>,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A224C8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A224E8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleRouteLineMask>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleRouteLineMask>,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::StyleRouteLineMask>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleRouteLineMask>>,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A224C8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A224E8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleRouteLineMask>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleRouteLineMask>,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>::~group_storage(a1);
}

void md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::StyleRouteLineMask>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleRouteLineMask>>,md::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>,md::ColorStyleCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A224A8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A224C8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A224E8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleRouteLineMask>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleRouteLineMask>,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::StyleRouteLineMask>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleRouteLineMask>>,md::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>,md::ColorStyleCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A224A8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A224C8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A224E8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleRouteLineMask>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleRouteLineMask>,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A225E8;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::Counter,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::Counter,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A225A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::Counter,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A225A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::Counter,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::CachedKey<md::ColorStyleCacheKey>,geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::CachedKey<md::ColorStyleCacheKey>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A22588;
  md::data_recycle_pool<md::CachedKey<md::ColorStyleCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A225A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::Counter,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::CachedKey<md::ColorStyleCacheKey>,geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::CachedKey<md::ColorStyleCacheKey>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A22588;
  md::data_recycle_pool<md::CachedKey<md::ColorStyleCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A225A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::Counter,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~group_storage(a1);
}

void md::data_array_cache<md::CachedKey<md::ColorStyleCacheKey>,geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,unsigned long,md::CachedKey<md::ColorStyleCacheKey>,std::hash<unsigned long>>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22568;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22588;
  md::data_recycle_pool<md::CachedKey<md::ColorStyleCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A225A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::Counter,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::CachedKey<md::ColorStyleCacheKey>,geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,unsigned long,md::CachedKey<md::ColorStyleCacheKey>,std::hash<unsigned long>>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22568;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22588;
  md::data_recycle_pool<md::CachedKey<md::ColorStyleCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A225A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::Counter,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22738;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A226F8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A226F8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A226D8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A226F8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A226D8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A226F8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~group_storage(a1);
}

void md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::StyleEmissiveColorCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>,md::StyleEmissiveColorCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A226B8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A226D8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A226F8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::StyleEmissiveColorCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>,md::StyleEmissiveColorCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A226B8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A226D8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A226F8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A227F8;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::Counter,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::Counter,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A227B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::Counter,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A227B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::Counter,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::CachedKey<md::StyleEmissiveColorCacheKey>,geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::CachedKey<md::StyleEmissiveColorCacheKey>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A22798;
  md::data_recycle_pool<md::CachedKey<md::StyleEmissiveColorCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A227B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::Counter,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::CachedKey<md::StyleEmissiveColorCacheKey>,geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::CachedKey<md::StyleEmissiveColorCacheKey>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A22798;
  md::data_recycle_pool<md::CachedKey<md::StyleEmissiveColorCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A227B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::Counter,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~group_storage(a1);
}

void md::data_array_cache<md::CachedKey<md::StyleEmissiveColorCacheKey>,geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,unsigned long,md::CachedKey<md::StyleEmissiveColorCacheKey>,std::hash<unsigned long>>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22778;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22798;
  md::data_recycle_pool<md::CachedKey<md::StyleEmissiveColorCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A227B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::Counter,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::CachedKey<md::StyleEmissiveColorCacheKey>,geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,unsigned long,md::CachedKey<md::StyleEmissiveColorCacheKey>,std::hash<unsigned long>>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22778;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22798;
  md::data_recycle_pool<md::CachedKey<md::StyleEmissiveColorCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A227B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::Counter,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22948;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22908;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22908;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A228E8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22908;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A228E8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22908;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~group_storage(a1);
}

void md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::PlanarParametersCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>,md::PlanarParametersCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A228C8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A228E8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22908;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::PlanarParametersCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>,md::PlanarParametersCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A228C8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A228E8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22908;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22A08;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::Counter,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::Counter,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A229C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::Counter,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A229C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::Counter,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~group_storage(a1);
}

uint64_t std::__function::__value_func<md::CachedKey<md::PlanarParametersCacheKey> * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void md::data_array_recycle_pool<md::CachedKey<md::PlanarParametersCacheKey>,geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::CachedKey<md::PlanarParametersCacheKey>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A229A8;
  md::data_recycle_pool<md::CachedKey<md::PlanarParametersCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A229C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::Counter,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::CachedKey<md::PlanarParametersCacheKey>,geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::CachedKey<md::PlanarParametersCacheKey>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A229A8;
  md::data_recycle_pool<md::CachedKey<md::PlanarParametersCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A229C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::Counter,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~group_storage(a1);
}

void md::data_array_cache<md::CachedKey<md::PlanarParametersCacheKey>,geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,unsigned long,md::CachedKey<md::PlanarParametersCacheKey>,std::hash<unsigned long>>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22988;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A229A8;
  md::data_recycle_pool<md::CachedKey<md::PlanarParametersCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A229C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::Counter,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::CachedKey<md::PlanarParametersCacheKey>,geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,unsigned long,md::CachedKey<md::PlanarParametersCacheKey>,std::hash<unsigned long>>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22988;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A229A8;
  md::data_recycle_pool<md::CachedKey<md::PlanarParametersCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A229C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::Counter,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22B58;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22B18;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22B18;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A22AF8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22B18;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A22AF8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22B18;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~group_storage(a1);
}

void md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::ColorCorrectionKey,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>,md::ColorCorrectionKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22AD8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22AF8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22B18;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::ColorCorrectionKey,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>,md::ColorCorrectionKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22AD8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22AF8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22B18;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22C18;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::Counter,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::Counter,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22BD8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::Counter,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22BD8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::Counter,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::CachedKey<md::ColorCorrectionKey>,geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::CachedKey<md::ColorCorrectionKey>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A22BB8;
  md::data_recycle_pool<md::CachedKey<md::ColorCorrectionKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22BD8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::Counter,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::CachedKey<md::ColorCorrectionKey>,geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::CachedKey<md::ColorCorrectionKey>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A22BB8;
  md::data_recycle_pool<md::CachedKey<md::ColorCorrectionKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22BD8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::Counter,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~group_storage(a1);
}

void md::data_array_cache<md::CachedKey<md::ColorCorrectionKey>,geo::handle<md::CachedKey<md::ColorCorrectionKey>>,unsigned long,md::CachedKey<md::ColorCorrectionKey>,std::hash<unsigned long>>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22B98;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22BB8;
  md::data_recycle_pool<md::CachedKey<md::ColorCorrectionKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22BD8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::Counter,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::CachedKey<md::ColorCorrectionKey>,geo::handle<md::CachedKey<md::ColorCorrectionKey>>,unsigned long,md::CachedKey<md::ColorCorrectionKey>,std::hash<unsigned long>>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22B98;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22BB8;
  md::data_recycle_pool<md::CachedKey<md::ColorCorrectionKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22BD8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::Counter,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22D68;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22D28;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22D28;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A22D08;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22D28;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A22D08;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22D28;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~group_storage(a1);
}

void md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,unsigned char,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>,std::hash<unsigned char>>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22CE8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22D08;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22D28;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,unsigned char,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>,std::hash<unsigned char>>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A22CE8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22D08;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22D28;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22DE8;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Transform>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Transform>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,md::ConstantDataStorage<ggl::Tile::Transform>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22DA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Transform>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,md::ConstantDataStorage<ggl::Tile::Transform>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22DA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Transform>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22E68;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,md::Counter,md::ConstantDataStorage<ggl::Tile::View>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,md::Counter,md::ConstantDataStorage<ggl::Tile::View>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,md::ConstantDataStorage<ggl::Tile::View>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22E28;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,md::Counter,md::ConstantDataStorage<ggl::Tile::View>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,md::ConstantDataStorage<ggl::Tile::View>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22E28;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,md::Counter,md::ConstantDataStorage<ggl::Tile::View>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22EE8;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,md::Counter,md::ConstantDataStorage<ggl::Tile::LinearDepth>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,md::Counter,md::ConstantDataStorage<ggl::Tile::LinearDepth>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,md::ConstantDataStorage<ggl::Tile::LinearDepth>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22EA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,md::Counter,md::ConstantDataStorage<ggl::Tile::LinearDepth>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,md::ConstantDataStorage<ggl::Tile::LinearDepth>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22EA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,md::Counter,md::ConstantDataStorage<ggl::Tile::LinearDepth>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22F68;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Clipping>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Clipping>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,md::ConstantDataStorage<ggl::Tile::Clipping>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22F28;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Clipping>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,md::ConstantDataStorage<ggl::Tile::Clipping>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22F28;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Clipping>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A22FE8;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Shadow>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Shadow>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,md::ConstantDataStorage<ggl::DaVinci::Shadow>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22FA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Shadow>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,md::ConstantDataStorage<ggl::DaVinci::Shadow>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A22FA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Shadow>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A230D0;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23090;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23090;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>::~group_storage(a1);
}

void md::data_array_pool<md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23070;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A23090;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_pool<md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23070;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A23090;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A231D8;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23198;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23198;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>::~group_storage(a1);
}

void md::data_array_pool<md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23178;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A23198;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_pool<md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23178;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A23198;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A232E0;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A232A0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A232A0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::~group_storage(a1);
}

void md::data_array_pool<md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23280;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A232A0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_pool<md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23280;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A232A0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A233E8;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A233A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A233A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::~group_storage(a1);
}

void md::data_array_pool<md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23388;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A233A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_pool<md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23388;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A233A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A234F0;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A234B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A234B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>::~group_storage(a1);
}

void md::data_array_pool<md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23490;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A234B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_pool<md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23490;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A234B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A235F8;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Material>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Material>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,md::ConstantDataStorage<ggl::FlyoverCommon::Material>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A235B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Material>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,md::ConstantDataStorage<ggl::FlyoverCommon::Material>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A235B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Material>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>::~group_storage(a1);
}

void md::data_array_pool<md::ConstantDataStorage<ggl::FlyoverCommon::Material>,geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23598;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A235B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Material>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_pool<md::ConstantDataStorage<ggl::FlyoverCommon::Material>,geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23598;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A235B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Material>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A23678;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleCameraLighting>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleCameraLighting>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,md::ConstantDataStorage<ggl::DaVinci::StyleCameraLighting>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23638;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleCameraLighting>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,md::ConstantDataStorage<ggl::DaVinci::StyleCameraLighting>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23638;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleCameraLighting>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A23760;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,md::Counter,md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,std::unique_ptr<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,md::Counter,md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,std::unique_ptr<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,std::unique_ptr<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23720;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,md::Counter,md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,std::unique_ptr<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,std::unique_ptr<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23720;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,md::Counter,md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,std::unique_ptr<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>::~group_storage(a1);
}

void md::data_array_pool<md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23700;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A23720;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,md::Counter,md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,std::unique_ptr<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_pool<md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>::~data_array_pool(void *a1)
{
  *a1 = &unk_1F2A23700;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A23720;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,md::Counter,md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,std::unique_ptr<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A237E0;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,md::Counter,md::ConstantDataStorage<ggl::Blending::SRGBBlendStyle>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,md::Counter,md::ConstantDataStorage<ggl::Blending::SRGBBlendStyle>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,md::ConstantDataStorage<ggl::Blending::SRGBBlendStyle>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A237A0;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,md::Counter,md::ConstantDataStorage<ggl::Blending::SRGBBlendStyle>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,md::ConstantDataStorage<ggl::Blending::SRGBBlendStyle>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A237A0;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,md::Counter,md::ConstantDataStorage<ggl::Blending::SRGBBlendStyle>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A238E8;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A238A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A238A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::StyleColor>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A23888;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A238A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::StyleColor>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A23888;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A238A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~group_storage(a1);
}

void md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::StyleColor>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>,md::ColorStyleCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A23868;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23888;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A238A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::StyleColor>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>,md::ColorStyleCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A23868;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23888;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A238A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A239F0;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A239B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A239B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A23990;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A239B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A23990;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A239B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~group_storage(a1);
}

void md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::ElevatedStrokeCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>,md::ElevatedStrokeCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A23970;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23990;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A239B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::ElevatedStrokeCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>,md::ElevatedStrokeCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A23970;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23990;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A239B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A23A70;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::RasterOverlay>>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::RasterOverlay>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,md::ConstantDataStorage<ggl::DaVinci::RasterOverlay>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23A30;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::RasterOverlay>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,md::ConstantDataStorage<ggl::DaVinci::RasterOverlay>>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23A30;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::RasterOverlay>>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A23B78;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23B38;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23B38;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A23B18;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23B38;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A23B18;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23B38;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~group_storage(a1);
}

void md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::StyleGroundOcclusionCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>,md::StyleGroundOcclusionCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A23AF8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23B18;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23B38;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::StyleGroundOcclusionCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>,md::StyleGroundOcclusionCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A23AF8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23B18;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23B38;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A23C80;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23C40;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23C40;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A23C20;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23C40;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A23C20;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23C40;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~group_storage(a1);
}

void md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::GradientParametersKey,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>,md::GradientParametersKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A23C00;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23C20;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23C40;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::GradientParametersKey,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>,md::GradientParametersKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A23C00;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23C20;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23C40;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A23D88;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23D48;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23D48;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A23D28;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23D48;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A23D28;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23D48;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~group_storage(a1);
}

void md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::VKMShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>,md::VKMShinyStyleCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A23D08;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23D28;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23D48;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_cache<md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::VKMShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>,md::VKMShinyStyleCacheKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A23D08;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23D28;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23D48;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::GlobeMatrix>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A23DE8;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::GlobeMatrix>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::GlobeMatrix>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::GlobeMatrix>,md::Counter,md::GlobeMatrixStorage>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::GlobeMatrix>,md::Counter,md::GlobeMatrixStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::GlobeMatrix>,md::GlobeMatrixStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23DA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::GlobeMatrix>,md::Counter,md::GlobeMatrixStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::GlobeMatrix>,md::GlobeMatrixStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23DA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::GlobeMatrix>,md::Counter,md::GlobeMatrixStorage>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::TileMatrix>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A23E48;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::TileMatrix>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::TileMatrix>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::TileMatrix>,md::Counter,md::TileMatrixStorage>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::TileMatrix>,md::Counter,md::TileMatrixStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::TileMatrix>,md::TileMatrixStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23E08;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::TileMatrix>,md::Counter,md::TileMatrixStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::TileMatrix>,md::TileMatrixStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23E08;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::TileMatrix>,md::Counter,md::TileMatrixStorage>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::RenderableDataItem>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A23EA8;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::RenderableDataItem>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::RenderableDataItem>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::RenderableDataItem>,md::Counter,md::RenderableDataStorage>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::RenderableDataItem>,md::Counter,md::RenderableDataStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::RenderableDataItem>,md::RenderableDataStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23E68;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::RenderableDataItem>,md::Counter,md::RenderableDataStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::RenderableDataItem>,md::RenderableDataStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23E68;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::RenderableDataItem>,md::Counter,md::RenderableDataStorage>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::ColorRampData>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A23F08;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ColorRampData>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ColorRampData>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ColorRampData>,md::Counter,md::ColorRampDataStorage>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ColorRampData>,md::Counter,md::ColorRampDataStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ColorRampData>,md::ColorRampDataStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23EC8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ColorRampData>,md::Counter,md::ColorRampDataStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ColorRampData>,md::ColorRampDataStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23EC8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ColorRampData>,md::Counter,md::ColorRampDataStorage>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::RenderablesRegistry>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A23F68;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::RenderablesRegistry>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::RenderablesRegistry>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::RenderablesRegistry>,md::Counter,md::RenderablesRegistryStorage>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::RenderablesRegistry>,md::Counter,md::RenderablesRegistryStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::RenderablesRegistry>,md::RenderablesRegistryStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23F28;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::RenderablesRegistry>,md::Counter,md::RenderablesRegistryStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::RenderablesRegistry>,md::RenderablesRegistryStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23F28;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::RenderablesRegistry>,md::Counter,md::RenderablesRegistryStorage>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::BaseMapTileDataRenderableItem>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A23FC8;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::BaseMapTileDataRenderableItem>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::BaseMapTileDataRenderableItem>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::BaseMapTileDataRenderableItem>,md::Counter,md::BaseMapTileDataRenderableStorage>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::BaseMapTileDataRenderableItem>,md::Counter,md::BaseMapTileDataRenderableStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::BaseMapTileDataRenderableItem>,md::BaseMapTileDataRenderableStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23F88;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::BaseMapTileDataRenderableItem>,md::Counter,md::BaseMapTileDataRenderableStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::BaseMapTileDataRenderableItem>,md::BaseMapTileDataRenderableStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23F88;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::BaseMapTileDataRenderableItem>,md::Counter,md::BaseMapTileDataRenderableStorage>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A24028;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::AssociationItem>,md::Counter,md::AssociationItemStorage>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::AssociationItem>,md::Counter,md::AssociationItemStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::AssociationItem>,md::AssociationItemStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23FE8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::AssociationItem>,md::Counter,md::AssociationItemStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::AssociationItem>,md::AssociationItemStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A23FE8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::AssociationItem>,md::Counter,md::AssociationItemStorage>::~group_storage(a1);
}

void *ecs2::sparse_set<geo::handle<md::DeviceDataResource>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A24088;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::DeviceDataResource>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::DeviceDataResource>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::DeviceDataResource>,md::Counter,md::DeviceDataStorage>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::DeviceDataResource>,md::Counter,md::DeviceDataStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::DeviceDataResource>,md::DeviceDataStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A24048;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::DeviceDataResource>,md::Counter,md::DeviceDataStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::DeviceDataResource>,md::DeviceDataStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A24048;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::DeviceDataResource>,md::Counter,md::DeviceDataStorage>::~group_storage(a1);
}

md::VKMRenderResourcesStore *std::__shared_ptr_pointer<md::VKMRenderResourcesStore *,std::shared_ptr<md::VKMRenderResourcesStore>::__shared_ptr_default_delete<md::VKMRenderResourcesStore,md::VKMRenderResourcesStore>,std::allocator<md::VKMRenderResourcesStore>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    md::VKMRenderResourcesStore::~VKMRenderResourcesStore(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::VKMRenderResourcesStore *,std::shared_ptr<md::VKMRenderResourcesStore>::__shared_ptr_default_delete<md::VKMRenderResourcesStore,md::VKMRenderResourcesStore>,std::allocator<md::VKMRenderResourcesStore>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::constants_cached<ggl::DaVinci::MaterialStyle,md::VKMShinyStyleCacheKey,md::VKMShinyStyleCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A23D08;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23D28;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23D48;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_cached<ggl::DaVinci::MaterialStyle,md::VKMShinyStyleCacheKey,md::VKMShinyStyleCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A23D08;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23D28;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23D48;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::MaterialStyle>,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>::~group_storage(a1);
}

void ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void md::constants_cached<ggl::DaVinci::GradientParameters,md::GradientParametersKey,md::GradientParametersKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A23C00;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23C20;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23C40;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_cached<ggl::DaVinci::GradientParameters,md::GradientParametersKey,md::GradientParametersKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A23C00;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23C20;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23C40;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::GradientParameters>,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>::~group_storage(a1);
}

void ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void md::constants_cached<ggl::DaVinci::StyleGroundOcclusion,md::StyleGroundOcclusionCacheKey,md::StyleGroundOcclusionCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A23AF8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23B18;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23B38;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_cached<ggl::DaVinci::StyleGroundOcclusion,md::StyleGroundOcclusionCacheKey,md::StyleGroundOcclusionCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A23AF8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23B18;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A23B38;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleGroundOcclusion>,ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>::~group_storage(a1);
}

void ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void md::constants_basic<ggl::DaVinci::RasterOverlay>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A23A30;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::RasterOverlay>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_basic<ggl::DaVinci::RasterOverlay>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A23A30;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::RasterOverlay>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::RasterOverlay>>::~group_storage(a1);
}

void md::constants_cached<ggl::DaVinci::ElevatedStroke,md::ElevatedStrokeCacheKey,md::ElevatedStrokeCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A23970;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23990;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A239B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_cached<ggl::DaVinci::ElevatedStroke,md::ElevatedStrokeCacheKey,md::ElevatedStrokeCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A23970;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23990;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A239B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ElevatedStroke>,ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>::~group_storage(a1);
}

void ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void md::constants_cached<ggl::DaVinci::StyleColor,md::ColorStyleCacheKey,md::ColorStyleCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A23868;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23888;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A238A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_cached<ggl::DaVinci::StyleColor,md::ColorStyleCacheKey,md::ColorStyleCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A23868;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A23888;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A238A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>::~group_storage(a1);
}

void md::constants_basic<ggl::Blending::SRGBBlendStyle>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A237A0;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,md::Counter,md::ConstantDataStorage<ggl::Blending::SRGBBlendStyle>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_basic<ggl::Blending::SRGBBlendStyle>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A237A0;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Blending::SRGBBlendStyle>>,md::Counter,md::ConstantDataStorage<ggl::Blending::SRGBBlendStyle>>::~group_storage(a1);
}

void md::constants_pool<ggl::Tile::PositionScaleInfo>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23700;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A23720;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,md::Counter,md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,std::unique_ptr<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_pool<ggl::Tile::PositionScaleInfo>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23700;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A23720;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::PositionScaleInfo>>,md::Counter,md::ConstantDataStorage<ggl::Tile::PositionScaleInfo>,std::unique_ptr<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>::~group_storage(a1);
}

void md::constants_basic<ggl::DaVinci::StyleCameraLighting>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A23638;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleCameraLighting>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_basic<ggl::DaVinci::StyleCameraLighting>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A23638;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleCameraLighting>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleCameraLighting>>::~group_storage(a1);
}

void md::constants_pool<ggl::FlyoverCommon::Material>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23598;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A235B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Material>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_pool<ggl::FlyoverCommon::Material>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23598;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A235B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Material>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Material>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>::~group_storage(a1);
}

void md::constants_pool<ggl::FlyoverCommon::Texcoords>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23490;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A234B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_pool<ggl::FlyoverCommon::Texcoords>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23490;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A234B0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Texcoords>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Texcoords>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>::~group_storage(a1);
}

void md::constants_pool<ggl::FlyoverCommon::S2Transform>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23388;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A233A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_pool<ggl::FlyoverCommon::S2Transform>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23388;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A233A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::S2Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::S2Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>::~group_storage(a1);
}

void md::constants_pool<ggl::FlyoverCommon::Transform>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23280;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A232A0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_pool<ggl::FlyoverCommon::Transform>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23280;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A232A0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Transform>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Transform>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>::~group_storage(a1);
}

void md::constants_pool<ggl::FlyoverCommon::Clip>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23178;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A23198;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_pool<ggl::FlyoverCommon::Clip>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23178;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A23198;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Clip>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Clip>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>::~group_storage(a1);
}

void md::constants_pool<ggl::FlyoverCommon::Shared>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23070;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A23090;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_pool<ggl::FlyoverCommon::Shared>::~constants_pool(void *a1)
{
  *a1 = &unk_1F2A23070;
  std::__function::__value_func<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared> * ()(void)>::~__value_func[abi:nn200100]((a1 + 32));
  *a1 = &unk_1F2A23090;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::FlyoverCommon::Shared>>,md::Counter,md::ConstantDataStorage<ggl::FlyoverCommon::Shared>,std::unique_ptr<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>::~group_storage(a1);
}

void md::constants_basic<ggl::DaVinci::Shadow>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A22FA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Shadow>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_basic<ggl::DaVinci::Shadow>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A22FA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Shadow>>::~group_storage(a1);
}

void md::constants_basic<ggl::Tile::Clipping>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A22F28;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Clipping>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_basic<ggl::Tile::Clipping>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A22F28;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Clipping>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Clipping>>::~group_storage(a1);
}

void md::constants_basic<ggl::Tile::LinearDepth>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A22EA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,md::Counter,md::ConstantDataStorage<ggl::Tile::LinearDepth>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_basic<ggl::Tile::LinearDepth>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A22EA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::LinearDepth>>,md::Counter,md::ConstantDataStorage<ggl::Tile::LinearDepth>>::~group_storage(a1);
}

void md::constants_basic<ggl::Tile::View>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A22E28;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,md::Counter,md::ConstantDataStorage<ggl::Tile::View>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_basic<ggl::Tile::View>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A22E28;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::View>>,md::Counter,md::ConstantDataStorage<ggl::Tile::View>>::~group_storage(a1);
}

void md::constants_basic<ggl::Tile::Transform>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A22DA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Transform>>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_basic<ggl::Tile::Transform>::~constants_basic(void *a1)
{
  *a1 = &unk_1F2A22DA8;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>,md::Counter,md::ConstantDataStorage<ggl::Tile::Transform>>::~group_storage(a1);
}

void md::constants_cached<ggl::DaVinci::LandCoverSettings,unsigned char,std::hash<unsigned char>>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A22CE8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22D08;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22D28;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_cached<ggl::DaVinci::LandCoverSettings,unsigned char,std::hash<unsigned char>>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A22CE8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22D08;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22D28;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::LandCoverSettings>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::LandCoverSettings>,ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>::~group_storage(a1);
}

void ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void md::constants_keys_array<md::ColorCorrectionKey>::~constants_keys_array(void *a1)
{
  *a1 = &unk_1F2A22B98;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22BB8;
  md::data_recycle_pool<md::CachedKey<md::ColorCorrectionKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22BD8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::Counter,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_keys_array<md::ColorCorrectionKey>::~constants_keys_array(void *a1)
{
  *a1 = &unk_1F2A22B98;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22BB8;
  md::data_recycle_pool<md::CachedKey<md::ColorCorrectionKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22BD8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::Counter,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>::~group_storage(a1);
}

void md::constants_cached<ggl::DaVinci::ColorCorrectionFactor,md::ColorCorrectionKey,md::ColorCorrectionKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A22AD8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22AF8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22B18;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_cached<ggl::DaVinci::ColorCorrectionFactor,md::ColorCorrectionKey,md::ColorCorrectionKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A22AD8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22AF8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22B18;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::ColorCorrectionFactor>,ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>::~group_storage(a1);
}

void ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void md::constants_keys_array<md::PlanarParametersCacheKey>::~constants_keys_array(void *a1)
{
  *a1 = &unk_1F2A22988;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A229A8;
  md::data_recycle_pool<md::CachedKey<md::PlanarParametersCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A229C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::Counter,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_keys_array<md::PlanarParametersCacheKey>::~constants_keys_array(void *a1)
{
  *a1 = &unk_1F2A22988;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A229A8;
  md::data_recycle_pool<md::CachedKey<md::PlanarParametersCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A229C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::Counter,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>::~group_storage(a1);
}

void md::constants_cached<ggl::DaVinci::PlanarParameters,md::PlanarParametersCacheKey,md::PlanarParametersCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A228C8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A228E8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22908;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_cached<ggl::DaVinci::PlanarParameters,md::PlanarParametersCacheKey,md::PlanarParametersCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A228C8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A228E8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22908;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::PlanarParameters>,ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>::~group_storage(a1);
}

void ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void md::constants_keys_array<md::StyleEmissiveColorCacheKey>::~constants_keys_array(void *a1)
{
  *a1 = &unk_1F2A22778;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22798;
  md::data_recycle_pool<md::CachedKey<md::StyleEmissiveColorCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A227B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::Counter,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_keys_array<md::StyleEmissiveColorCacheKey>::~constants_keys_array(void *a1)
{
  *a1 = &unk_1F2A22778;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22798;
  md::data_recycle_pool<md::CachedKey<md::StyleEmissiveColorCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A227B8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::StyleEmissiveColorCacheKey>>,md::Counter,md::CachedKey<md::StyleEmissiveColorCacheKey>,md::CachedKey<md::StyleEmissiveColorCacheKey>*>::~group_storage(a1);
}

void md::constants_cached<ggl::DaVinci::StyleEmissiveColor,md::StyleEmissiveColorCacheKey,md::StyleEmissiveColorCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A226B8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A226D8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A226F8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_cached<ggl::DaVinci::StyleEmissiveColor,md::StyleEmissiveColorCacheKey,md::StyleEmissiveColorCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A226B8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A226D8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A226F8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleEmissiveColor>,ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>::~group_storage(a1);
}

void ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void md::constants_keys_array<md::ColorStyleCacheKey>::~constants_keys_array(void *a1)
{
  *a1 = &unk_1F2A22568;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22588;
  md::data_recycle_pool<md::CachedKey<md::ColorStyleCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A225A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::Counter,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_keys_array<md::ColorStyleCacheKey>::~constants_keys_array(void *a1)
{
  *a1 = &unk_1F2A22568;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22588;
  md::data_recycle_pool<md::CachedKey<md::ColorStyleCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A225A8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::ColorStyleCacheKey>>,md::Counter,md::CachedKey<md::ColorStyleCacheKey>,md::CachedKey<md::ColorStyleCacheKey>*>::~group_storage(a1);
}

void md::constants_cached<ggl::DaVinci::StyleRouteLineMask,md::ColorStyleCacheKey,md::ColorStyleCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A224A8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A224C8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A224E8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleRouteLineMask>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleRouteLineMask>,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_cached<ggl::DaVinci::StyleRouteLineMask,md::ColorStyleCacheKey,md::ColorStyleCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A224A8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A224C8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A224E8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleRouteLineMask>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleRouteLineMask>,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>::~group_storage(a1);
}

void ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void md::constants_keys_array<md::StyleSSAOKey>::~constants_keys_array(void *a1)
{
  *a1 = &unk_1F2A22358;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22378;
  md::data_recycle_pool<md::CachedKey<md::StyleSSAOKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22398;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::Counter,md::CachedKey<md::StyleSSAOKey>,md::CachedKey<md::StyleSSAOKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_keys_array<md::StyleSSAOKey>::~constants_keys_array(void *a1)
{
  *a1 = &unk_1F2A22358;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22378;
  md::data_recycle_pool<md::CachedKey<md::StyleSSAOKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22398;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::Counter,md::CachedKey<md::StyleSSAOKey>,md::CachedKey<md::StyleSSAOKey>*>::~group_storage(a1);
}

void md::constants_cached<ggl::DaVinci::StyleSSAO,md::StyleSSAOKey,md::StyleSSAOKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A22298;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A222B8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A222D8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleSSAO>,ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_cached<ggl::DaVinci::StyleSSAO,md::StyleSSAOKey,md::StyleSSAOKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A22298;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A222B8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A222D8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::StyleSSAO>,ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *>::~group_storage(a1);
}

void ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void md::constants_keys_array<md::StyleCacheKey>::~constants_keys_array(void *a1)
{
  *a1 = &unk_1F2A22148;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22168;
  md::data_recycle_pool<md::CachedKey<md::StyleCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22188;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::CachedKey<md::StyleCacheKey>>,md::Counter,md::CachedKey<md::StyleCacheKey>,md::CachedKey<md::StyleCacheKey>*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_keys_array<md::StyleCacheKey>::~constants_keys_array(void *a1)
{
  *a1 = &unk_1F2A22148;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A22168;
  md::data_recycle_pool<md::CachedKey<md::StyleCacheKey>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A22188;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::CachedKey<md::StyleCacheKey>>,md::Counter,md::CachedKey<md::StyleCacheKey>,md::CachedKey<md::StyleCacheKey>*>::~group_storage(a1);
}

void md::constants_cached<ggl::DaVinci::Style,md::StyleCacheKey,md::StyleCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A22088;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A220A8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::Style>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A220C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::constants_cached<ggl::DaVinci::Style,md::StyleCacheKey,md::StyleCacheKeyHasher>::~constants_cached(void *a1)
{
  *a1 = &unk_1F2A22088;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A220A8;
  md::data_recycle_pool<ggl::ConstantDataTyped<ggl::DaVinci::Style>>::~data_recycle_pool(a1 + 32);
  *a1 = &unk_1F2A220C8;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::Counter,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>::~group_storage(a1);
}

void ggl::ConstantDataTyped<ggl::DaVinci::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::RenderLayerResources>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 4656);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::CartographicTiledRenderResources::~CartographicTiledRenderResources((a1 + 4368));
  md::FlyoverRenderResources::~FlyoverRenderResources((a1 + 3096));
  md::DaVinciGroundRenderResources::~DaVinciGroundRenderResources((a1 + 192));
  v8 = (a1 + 168);
  std::vector<std::vector<geo::handle<md::CommandBufferResource>>>::__destroy_vector::operator()[abi:nn200100](&v8);
  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  v8 = (a1 + 120);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v8);
  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 104) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    *(a1 + 80) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    *(a1 + 56) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    *(a1 + 32) = v7;

    operator delete(v7);
  }
}

void std::vector<std::vector<geo::handle<md::CommandBufferResource>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::GroundPipelineSetup *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::GroundNonCompressedPipelineSetup *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::GroundDepthPipelineSetup *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::RibbonPipelineSetup *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::DecalPipelineSetup *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::Style> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::Tile::Clipping> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::LinearDepthPipelineSetup *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::PackedLinearDepthPipelineSetup *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<md::DaVinciRenderStateCache::RenderStateKey,std::unique_ptr<ggl::RenderState,mdm::TypeDeleter<ggl::RenderState>>>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<md::RenderLayerResources>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A21EA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MapEngine::onLayoutOnlyTimerFired(md::MapEngine *this, double a2)
{
  v4 = *MEMORY[0x1E69E9840];
  md::MapEngine::runUpdatePhase(this, a2, 1);
  md::MapEngine::_postRender(this, a2);
}

__n128 std::__function::__func<md::MapEngine::_postRender(double)::$_0,std::allocator<md::MapEngine::_postRender(double)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A26790;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void md::MapEngine::runUpdatePhase(double,BOOL)::$_2::operator()(uint64_t a1, unint64_t **a2)
{
  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v4 = GEOGetVectorKitPerformanceLog_log;
  v5 = os_signpost_enabled(v4);

  if (v5)
  {
    v6 = **a2;

    stringForLayoutReasonsMask(a1, v6);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void md::MapEngine::setNeedsLayoutContinuously(uint64_t a1, int a2, unsigned int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = 1 << a3;
  if (((*(a1 + 41984) & (1 << a3)) != 0) != a2)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v7 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = "False";
      if (a2)
      {
        v8 = "True";
      }

      v10 = 134218242;
      v11 = a3;
      v12 = 2080;
      v13 = v8;
      _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_INFO, "Layout Continuously bit %zu changed to '%s'", &v10, 0x16u);
    }

    if (a2)
    {
      v9 = *(a1 + 41984) | v4;
    }

    else
    {
      v9 = *(a1 + 41984) & ~v4;
    }

    *(a1 + 41984) = v9;
  }
}

uint64_t std::__function::__func<md::MapEngine::runUpdatePhase(double,BOOL)::$_0,std::allocator<md::MapEngine::runUpdatePhase(double,BOOL)::$_0>,void ()(md::FrameState &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A26640;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<std::__bind<void (md::MapEngine::*)(double),md::MapEngine*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (md::MapEngine::*)(double),md::MapEngine*,std::placeholders::__ph<1> const&>>,void ()(double)>::operator()(void *a1, double *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2);
}