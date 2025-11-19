uint64_t gdc::Registry::storage<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode>(uint64_t a1)
{
  v3 = 0xFC21CCDFEDC314FBLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xFC21CCDFEDC314FBLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t *std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::__emplace_unique_key_args<gdc::Entity,std::piecewise_construct_t const&,std::tuple<gdc::Entity const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_19;
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
LABEL_19:
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
      goto LABEL_19;
    }

LABEL_18:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_19;
    }
  }

  if (__PAIR64__(*(v6 + 9), *(v6 + 8)) != __PAIR64__(WORD1(a2), a2) || *(v6 + 5) != HIDWORD(a2))
  {
    goto LABEL_18;
  }

  return v6;
}

void gdc::components::RegistryBridgeMap<gdc::Entity>::nodeIsBeingDestroyed(void *a1, uint64_t a2)
{
  v4 = a1[2];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = *(a2 + 8);
  v6 = 0x9DDFEA08EB382D69 * ((8 * (v5 & 0x1FFFFFFF) + 8) ^ HIDWORD(v5));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(v5) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = vcnt_s8(v4);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v8;
    if (v8 >= *&v4)
    {
      v10 = v8 % *&v4;
    }
  }

  else
  {
    v10 = v8 & (*&v4 - 1);
  }

  v11 = *(a1[1] + 8 * v10);
  if (v11)
  {
    for (i = *v11; i; i = *i)
    {
      v13 = i[1];
      if (v13 == v8)
      {
        if (i[2] == v5)
        {
          break;
        }
      }

      else
      {
        if (v9.u32[0] > 1uLL)
        {
          if (v13 >= *&v4)
          {
            v13 %= *&v4;
          }
        }

        else
        {
          v13 &= *&v4 - 1;
        }

        if (v13 != v10)
        {
          goto LABEL_18;
        }
      }
    }
  }

  else
  {
LABEL_18:
    i = 0;
  }

  v14 = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>(i + 3, *(a2 + 24));
  if (v14[3] == a2)
  {
    v15 = i[4];
    v16 = v14[1];
    v17 = vcnt_s8(v15);
    v17.i16[0] = vaddlv_u8(v17);
    if (v17.u32[0] > 1uLL)
    {
      if (v16 >= *&v15)
      {
        v16 %= *&v15;
      }
    }

    else
    {
      v16 &= *&v15 - 1;
    }

    v18 = i[3];
    v19 = *(v18 + 8 * v16);
    do
    {
      v20 = v19;
      v19 = *v19;
    }

    while (v19 != v14);
    if (v20 == i + 5)
    {
      goto LABEL_37;
    }

    v21 = v20[1];
    if (v17.u32[0] > 1uLL)
    {
      if (v21 >= *&v15)
      {
        v21 %= *&v15;
      }
    }

    else
    {
      v21 &= *&v15 - 1;
    }

    if (v21 != v16)
    {
LABEL_37:
      if (!*v14)
      {
        goto LABEL_38;
      }

      v22 = *(*v14 + 8);
      if (v17.u32[0] > 1uLL)
      {
        if (v22 >= *&v15)
        {
          v22 %= *&v15;
        }
      }

      else
      {
        v22 &= *&v15 - 1;
      }

      if (v22 != v16)
      {
LABEL_38:
        *(v18 + 8 * v16) = 0;
      }
    }

    v23 = *v14;
    if (*v14)
    {
      v24 = *(v23 + 8);
      if (v17.u32[0] > 1uLL)
      {
        if (v24 >= *&v15)
        {
          v24 %= *&v15;
        }
      }

      else
      {
        v24 &= *&v15 - 1;
      }

      if (v24 != v16)
      {
        *(i[3] + 8 * v24) = v20;
        v23 = *v14;
      }
    }

    *v20 = v23;
    *v14 = 0;
    --i[6];
    operator delete(v14);
    if (!i[6])
    {
      v25 = a1[2];
      v26 = i[1];
      v27 = vcnt_s8(v25);
      v27.i16[0] = vaddlv_u8(v27);
      if (v27.u32[0] > 1uLL)
      {
        if (v26 >= *&v25)
        {
          v26 %= *&v25;
        }
      }

      else
      {
        v26 &= *&v25 - 1;
      }

      v28 = a1[1];
      v29 = *(v28 + 8 * v26);
      do
      {
        v30 = v29;
        v29 = *v29;
      }

      while (v29 != i);
      if (v30 == a1 + 3)
      {
        goto LABEL_65;
      }

      v31 = v30[1];
      if (v27.u32[0] > 1uLL)
      {
        if (v31 >= *&v25)
        {
          v31 %= *&v25;
        }
      }

      else
      {
        v31 &= *&v25 - 1;
      }

      if (v31 != v26)
      {
LABEL_65:
        if (!*i)
        {
          goto LABEL_66;
        }

        v32 = *(*i + 8);
        if (v27.u32[0] > 1uLL)
        {
          if (v32 >= *&v25)
          {
            v32 %= *&v25;
          }
        }

        else
        {
          v32 &= *&v25 - 1;
        }

        if (v32 != v26)
        {
LABEL_66:
          *(v28 + 8 * v26) = 0;
        }
      }

      v33 = *i;
      if (*i)
      {
        v34 = *(v33 + 8);
        if (v27.u32[0] > 1uLL)
        {
          if (v34 >= *&v25)
          {
            v34 %= *&v25;
          }
        }

        else
        {
          v34 &= *&v25 - 1;
        }

        if (v34 != v26)
        {
          *(a1[1] + 8 * v34) = v30;
          v33 = *i;
        }
      }

      *v30 = v33;
      *i = 0;
      --a1[4];

      std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,void *>>>::operator()[abi:nn200100](1, i);
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[5];
    if (v3)
    {
      do
      {
        v4 = *v3;
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = __p[3];
    __p[3] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v3 = *a1;
    *a1 = *a2;
    *a2 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = *(a2 + 16);
    *(a2 + 16) = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = v6;
    if (*a2)
    {
      gdc::components::RegistryBridgeMap<gdc::Entity>::nodeWasMoved(*a2, a2);
    }

    if (*a1)
    {
      gdc::components::RegistryBridgeMap<gdc::Entity>::nodeWasMoved(*a1, a1);
    }
  }

  return a1;
}

uint64_t std::__split_buffer<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode,std::allocator<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *(v2 - 32);
    v2 -= 32;
    v4 = v5;
    *(a1 + 16) = v2;
    if (v5)
    {
      gdc::components::RegistryBridgeMap<gdc::Entity>::nodeIsBeingDestroyed(v4, v2);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *gdc::components::RegistryBridgeMap<gdc::Entity>::nodeWasMoved(int8x8_t *a1, int8x8_t **a2)
{
  v4 = a2[1];
  v5 = 0x9DDFEA08EB382D69 * ((8 * (v4 & 0x1FFFFFFF) + 8) ^ HIDWORD(v4));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(v4) ^ (v5 >> 47) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = a1[2];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*&a1[1] + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= *&v8)
      {
        v13 %= *&v8;
      }
    }

    else
    {
      v13 &= *&v8 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (v12[2] != v4)
  {
    goto LABEL_17;
  }

  result = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::__emplace_unique_key_args<gdc::Entity,std::piecewise_construct_t const&,std::tuple<gdc::Entity const&>,std::tuple<>>(v12 + 3, a2[3]);
  result[3] = a2;
  *a2 = a1;
  return result;
}

BOOL gdc::ComponentStorageWrapper<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode>::remove(void *a1, uint64_t a2)
{
  v14 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 4 * (v3 - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode::operator=(v6, a1[11] - 32);
    v7 = a1[11];
    v10 = *(v7 - 32);
    v9 = v7 - 32;
    v8 = v10;
    if (v10)
    {
      gdc::components::RegistryBridgeMap<gdc::Entity>::nodeIsBeingDestroyed(v8, v9);
    }

    a1[11] = v9;
    v11 = a1[28];
    if (v11)
    {
      v12 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v11[6], v12, &v14, 1);
        v11 = *v11;
      }

      while (v11);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode,std::allocator<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode>>::__destroy_vector::operator()[abi:nn200100](&v3);
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

void std::vector<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode,std::allocator<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 4;
      do
      {
        if (*v6)
        {
          gdc::components::RegistryBridgeMap<gdc::Entity>::nodeIsBeingDestroyed(*v6, v6);
        }

        v7 = v6 == v2;
        v6 -= 4;
      }

      while (!v7);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::ComponentStorageWrapper<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode,std::allocator<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode>>::__destroy_vector::operator()[abi:nn200100](&v4);
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

void gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(uint64_t *a1, uint64_t a2)
{
  v15 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v15);
  if (v4)
  {
    v5 = a1[11];
    v6 = a1[12];
    if (v5 >= v6)
    {
      v10 = a1[10];
      v11 = v5 - v10 + 1;
      if (v11 < 0)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v12 = v6 - v10;
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        operator new();
      }

      v7 = v5 - v10 + 1;
      memcpy(0, v10, v5 - v10);
      a1[10] = 0;
      a1[11] = v7;
      a1[12] = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      v7 = v5 + 1;
    }

    a1[11] = v7;
    v8 = a1[31];
    goto LABEL_19;
  }

  v8 = a1[31];
  if (a1[10] + ((v3 - a1[7]) >> 3) == a1[11])
  {
LABEL_19:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v8, &v15, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v8, &v15, 1);
  }
}

BOOL gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<md::DrapingLogic>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<md::DrapingLogic>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<md::DrapingLogic>>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::CanDisableDraping>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::overlayComponents::CanDisableDraping>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::CanDisableDraping>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<gdc::components::RegistryBridgeMap<gdc::Entity>>(uint64_t a1)
{
  v3 = 0xCF1B3CF834D7AFD0;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xCF1B3CF834D7AFD0);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::ComponentStorageWrapper<gdc::components::RegistryBridgeMap<gdc::Entity>>::get(void *a1, uint64_t a2)
{
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  if (a1[8] == v3)
  {
    v4 = a1[11];
  }

  else
  {
    v4 = a1[10] + 48 * ((v3 - a1[7]) >> 3);
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

void *gdc::components::RegistryBridgeMap<gdc::Entity>::~RegistryBridgeMap(void *a1)
{
  *a1 = &unk_1F2A182F0;
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[3];
    do
    {
      for (i = v3[5]; i; i = *i)
      {
        *i[3] = 0;
      }

      v3 = *v3;
    }

    while (v3);
    v5 = (a1 + 1);
    do
    {
      v6 = *v2;
      v7 = v2[5];
      if (v7)
      {
        do
        {
          v8 = *v7;
          operator delete(v7);
          v7 = v8;
        }

        while (v8);
      }

      v9 = v2[3];
      v2[3] = 0;
      if (v9)
      {
        operator delete(v9);
      }

      operator delete(v2);
      v2 = v6;
    }

    while (v6);
  }

  else
  {
    v5 = (a1 + 1);
  }

  v10 = *v5;
  *v5 = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return a1;
}

void gdc::components::RegistryBridgeMap<gdc::Entity>::moveMap(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
    v5 = *(a2 + 8);
    *(a2 + 8) = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;
    if (v6)
    {
      operator delete(v6);
    }

    v7 = *(a2 + 8);
    *(a2 + 8) = v4;
    if (v7)
    {
      operator delete(v7);
    }

    v8 = (a1 + 24);
    v9 = *(a1 + 24);
    v10 = *(a1 + 16);
    v11 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v11;
    *(a2 + 16) = v10;
    *(a2 + 24) = v9;
    v12 = *(a1 + 32);
    *(a1 + 32) = *(a2 + 32);
    *(a2 + 32) = v12;
    v13 = *(a1 + 40);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 40) = v13;
    if (*(a1 + 32))
    {
      v14 = *(a1 + 16);
      v15 = *(*(a1 + 24) + 8);
      if ((v14 & (v14 - 1)) != 0)
      {
        if (v15 >= v14)
        {
          v15 %= v14;
        }
      }

      else
      {
        v15 &= v14 - 1;
      }

      *(*(a1 + 8) + 8 * v15) = v8;
    }

    if (v12)
    {
      v16 = *(a2 + 16);
      v17 = *(*(a2 + 24) + 8);
      if ((v16 & (v16 - 1)) != 0)
      {
        if (v17 >= v16)
        {
          v17 %= v16;
        }
      }

      else
      {
        v17 &= v16 - 1;
      }

      *(*(a2 + 8) + 8 * v17) = a2 + 24;
    }

    while (1)
    {
      v8 = *v8;
      if (!v8)
      {
        break;
      }

      for (i = v8[5]; i; i = *i)
      {
        *i[3] = a1;
      }
    }
  }
}

void gdc::components::RegistryBridgeMap<gdc::Entity>::~RegistryBridgeMap(void *a1)
{
  gdc::components::RegistryBridgeMap<gdc::Entity>::~RegistryBridgeMap(a1);

  JUMPOUT(0x1B8C62190);
}

BOOL gdc::ComponentStorageWrapper<gdc::components::RegistryBridgeMap<gdc::Entity>>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 48 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    gdc::components::RegistryBridgeMap<gdc::Entity>::moveMap(v6, a1[11] - 48);
    v7 = a1[11];
    v8 = *(v7 - 48);
    v7 -= 48;
    (*v8)(v7);
    a1[11] = v7;
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

void gdc::ComponentStorageWrapper<gdc::components::RegistryBridgeMap<gdc::Entity>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<gdc::components::RegistryBridgeMap<gdc::Entity>>::__destroy_vector::operator()[abi:nn200100](&v3);
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

void std::vector<gdc::components::RegistryBridgeMap<gdc::Entity>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 48;
      v7 = v4 - 48;
      v8 = v4 - 48;
      do
      {
        v9 = *v8;
        v8 -= 48;
        (*v9)(v7);
        v6 -= 48;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::ComponentStorageWrapper<gdc::components::RegistryBridgeMap<gdc::Entity>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<gdc::components::RegistryBridgeMap<gdc::Entity>>::__destroy_vector::operator()[abi:nn200100](&v4);
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

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::Texture>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::Texture>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::Texture>>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<std::vector<gdc::Registry *>>::remove(void *a1, uint64_t a2)
{
  v25 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 24 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    if (v6 != v7 - 24)
    {
      v8 = *(v7 - 24);
      v9 = *(v7 - 16);
      v10 = v9 - v8;
      v11 = *(v6 + 16);
      v12 = *v6;
      if (v11 - *v6 < (v9 - v8))
      {
        v13 = v10 >> 3;
        if (v12)
        {
          *(v6 + 8) = v12;
          operator delete(v12);
          v11 = 0;
          *v6 = 0;
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
        }

        if (!(v13 >> 61))
        {
          v14 = v11 >> 2;
          if (v11 >> 2 <= v13)
          {
            v14 = v10 >> 3;
          }

          if (v11 >= 0x7FFFFFFFFFFFFFF8)
          {
            v15 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          std::vector<gdc::Registry *>::__vallocate[abi:nn200100](v6, v15);
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v16 = *(v6 + 8);
      v17 = v16 - v12;
      if (v16 - v12 >= v10)
      {
        if (v9 != v8)
        {
          memmove(v12, v8, v9 - v8);
        }

        v19 = &v12[v10];
      }

      else
      {
        v18 = &v8[v17];
        if (v16 != v12)
        {
          memmove(*v6, v8, v17);
          v16 = *(v6 + 8);
        }

        if (v9 != v18)
        {
          memmove(v16, v18, v9 - v18);
        }

        v19 = &v16[v9 - v18];
      }

      *(v6 + 8) = v19;
      v7 = a1[11];
    }

    v21 = v7 - 24;
    v20 = *(v7 - 24);
    if (v20)
    {
      *(v7 - 16) = v20;
      operator delete(v20);
    }

    a1[11] = v21;
    v22 = a1[28];
    if (v22)
    {
      v23 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v22[6], v23, &v25, 1);
        v22 = *v22;
      }

      while (v22);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<std::vector<gdc::Registry *>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<std::vector<gdc::Registry *>>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::remove(void *a1, uint64_t a2)
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
      std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,void *> *>>(v6, *(v7 - 24));
      v7 = a1[11];
    }

    a1[11] = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::~__hash_table(v7 - 40);
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

void std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,void *> *>>(void *a1, uint64_t **a2)
{
  v2 = a2;
  v4 = a1[1];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v6 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        v6[2] = v2[2];
        if (v6 != v2)
        {
          std::vector<gdc::Entity>::__assign_with_size[abi:nn200100]<gdc::Entity*,gdc::Entity*>(v6 + 3, v2[3], v2[4], v2[4] - v2[3]);
        }

        v8 = *v6;
        std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__node_insert_multi(a1, v6);
        v2 = *v2;
        if (v8)
        {
          v9 = v2 == 0;
        }

        else
        {
          v9 = 1;
        }

        v6 = v8;
      }

      while (!v9);
    }

    std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__deallocate_node(v8);
  }

  if (v2)
  {
    operator new();
  }
}

void std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__node_insert_multi(uint64_t a1, void *a2)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) >> 47));
  a2[1] = v5;
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v29 = *a1;
        *a1 = 0;
        if (v29)
        {
          operator delete(v29);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = v5;
    if (v6 <= v5)
    {
      v17 = v5 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & v5;
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v17);
  if (v19)
  {
    v20 = 0;
    do
    {
      v21 = v19;
      v19 = *v19;
      if (!v19)
      {
        break;
      }

      v22 = v19[1];
      if (v16.u32[0] > 1uLL)
      {
        v23 = v19[1];
        if (v22 >= v6)
        {
          v23 = v22 % v6;
        }
      }

      else
      {
        v23 = v22 & (v6 - 1);
      }

      if (v23 != v17)
      {
        break;
      }

      v24 = v22 == v5 && v19[2] == a2[2];
      v25 = v24 != (v20 & 1);
      v26 = v20 & v25;
      v20 |= v25;
    }

    while (v26 != 1);
  }

  else
  {
    v21 = 0;
  }

  v27 = a2[1];
  if (v16.u32[0] > 1uLL)
  {
    if (v27 >= v6)
    {
      v27 %= v6;
    }
  }

  else
  {
    v27 &= v6 - 1;
  }

  if (!v21)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v18[v27] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_57;
    }

    v28 = *(*a2 + 8);
    if (v16.u32[0] > 1uLL)
    {
      if (v28 >= v6)
      {
        v28 %= v6;
      }
    }

    else
    {
      v28 &= v6 - 1;
    }

LABEL_56:
    *(*a1 + 8 * v28) = a2;
    goto LABEL_57;
  }

  *a2 = *v21;
  *v21 = a2;
  if (*a2)
  {
    v28 = *(*a2 + 8);
    if (v16.u32[0] > 1uLL)
    {
      if (v28 >= v6)
      {
        v28 %= v6;
      }
    }

    else
    {
      v28 &= v6 - 1;
    }

    if (v28 != v27)
    {
      goto LABEL_56;
    }
  }

LABEL_57:
  ++*(a1 + 24);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void gdc::ComponentStorageWrapper<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::__destroy_vector::operator()[abi:nn200100](&v3);
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

void std::vector<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::~__hash_table(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::ComponentStorageWrapper<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::__destroy_vector::operator()[abi:nn200100](&v4);
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

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>>::~ComponentStorageWrapper(uint64_t a1)
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

_BYTE *md::Logic<md::DrapingLogic,md::DrapingContext,md::LogicDependencies<gdc::TypeList<md::OverlaysContext,md::CameraContext,md::PendingSceneContext,md::ElevationContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v19[5] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x1B9039CBDAB12E5CLL && (v5 = *(a3 + 32)) != 0)
  {
    v8 = *(a2 + 8);
    v9 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0xADE8F13E6C18D970);
    if (v9 && (v10 = v9[5], *(v10 + 8) == 0xADE8F13E6C18D970))
    {
      v11 = *(v10 + 32);
    }

    else
    {
      v11 = 0;
    }

    v12 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x1AF456233693CD46uLL);
    if (v12 && (v13 = v12[5], *(v13 + 8) == 0x1AF456233693CD46))
    {
      v14 = *(v13 + 32);
    }

    else
    {
      v14 = 0;
    }

    v15 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x9F2276D081C2CB20);
    if (v15 && (v16 = v15[5], *(v16 + 8) == 0x9F2276D081C2CB20))
    {
      v17 = *(v16 + 32);
    }

    else
    {
      v17 = 0;
    }

    v18 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x8BD499FBD96FBB9ELL)[5] + 32);
    v19[0] = v11;
    v19[1] = v14;
    v19[2] = v17;
    v19[3] = v18;
    return (*(*a1 + 160))(a1, a2, v19, v5);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t gdc::ObjectHolder<md::DrapingContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::DrapingContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E2840;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x1020C40D090CC53);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::DrapingContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E2840;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1020C40D090CC53);
  }

  return a1;
}

void md::DrapingLogic::createDebugNode(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(__p, "DrapingLogic");
  v48 = a2;
  gdc::DebugTreeNode::DebugTreeNode(a2, __p);
  if (v70 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *(a1 + 168);
  std::string::basic_string[abi:nn200100]<0>(__p, "Pending Tasks");
  gdc::DebugTreeValue::DebugTreeValue(v57, *(v4 + 52));
  gdc::DebugTreeNode::addProperty(v48, __p, v57);
  if (v59 < 0)
  {
    operator delete(v58);
  }

  if (v70 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "Cached Vertices");
  gdc::DebugTreeValue::DebugTreeValue(v54, *(v4 + 48));
  gdc::DebugTreeNode::addProperty(v48, __p, v54);
  if (v56 < 0)
  {
    operator delete(v55);
  }

  if (v70 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "Draping Pool");
  ChildNode = gdc::DebugTreeNode::createChildNode(v48, __p);
  if (v70 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *(*(a1 + 168) + 24);
  if (v5)
  {
    while (1)
    {
      md::to_string(&v78, (v5 + 2));
      v53 = gdc::DebugTreeNode::createChildNode(ChildNode, &v78);
      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      v6 = v5[9];
      if (v6)
      {
        break;
      }

LABEL_95:
      v5 = *v5;
      if (!v5)
      {
        return;
      }
    }

    v50 = v5;
    while (1)
    {
      *(v78.__r_.__value_.__r.__words + 4) = *(v6 + 20);
      LOWORD(v78.__r_.__value_.__l.__data_) = *(v6 + 8);
      v78.__r_.__value_.__r.__words[2] = v6[4];
      v79 = *(v6 + 40);
      md::debugString<geo::QuadTile>(&v80, &v78);
      v7 = std::string::append(&v80, " ", 1uLL);
      v8 = v7->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      v9 = *(v6 + 24);
      v10 = "<Invalid>";
      if (v9 <= 0x51)
      {
        v10 = off_1E7B30210[v9];
      }

      std::string::basic_string[abi:nn200100]<0>(&v78, v10);
      if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v78;
      }

      else
      {
        v11 = v78.__r_.__value_.__r.__words[0];
      }

      if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v78.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v78.__r_.__value_.__l.__size_;
      }

      v13 = std::string::append(&v81, v11, size);
      v14 = v13->__r_.__value_.__r.__words[2];
      *&v82.__r_.__value_.__l.__data_ = *&v13->__r_.__value_.__l.__data_;
      v82.__r_.__value_.__r.__words[2] = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      v15 = std::string::append(&v82, " ", 1uLL);
      v16 = v15->__r_.__value_.__r.__words[2];
      *&v83.__r_.__value_.__l.__data_ = *&v15->__r_.__value_.__l.__data_;
      v83.__r_.__value_.__r.__words[2] = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v77, *(v6 + 13));
      if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v77;
      }

      else
      {
        v17 = v77.__r_.__value_.__r.__words[0];
      }

      if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v18 = v77.__r_.__value_.__l.__size_;
      }

      v19 = std::string::append(&v83, v17, v18);
      v20 = v19->__r_.__value_.__r.__words[2];
      *&v84.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
      v84.__r_.__value_.__r.__words[2] = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      v21 = v6;
      v22 = *(v6 + 64);
      v23 = v21;
      if (v22 == 1)
      {
        std::to_string(&v74, v21[7]);
        v24 = std::string::insert(&v74, 0, " sel:", 5uLL);
        v25 = *&v24->__r_.__value_.__l.__data_;
        v76 = v24->__r_.__value_.__r.__words[2];
        *v75 = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        v26 = HIBYTE(v76);
        v28 = v75[0];
        v27 = v75[1];
      }

      else
      {
        v27 = 0;
        v28 = 0;
        v26 = 0;
        v75[0] = 0;
        v75[1] = 0;
        v76 = 0;
      }

      if ((v26 & 0x80u) == 0)
      {
        v29 = v75;
      }

      else
      {
        v29 = v28;
      }

      if ((v26 & 0x80u) == 0)
      {
        v30 = v26;
      }

      else
      {
        v30 = v27;
      }

      v31 = std::string::append(&v84, v29, v30);
      v73 = *v31;
      v31->__r_.__value_.__r.__words[0] = 0;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(v76) < 0)
      {
        operator delete(v75[0]);
        if (v22)
        {
LABEL_45:
          if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v74.__r_.__value_.__l.__data_);
          }
        }
      }

      else if (v22)
      {
        goto LABEL_45;
      }

      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }

      v32 = v23;
      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v81.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80.__r_.__value_.__l.__data_);
      }

      v33 = gdc::DebugTreeNode::createChildNode(v53, &v73);
      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:nn200100]<0>(&v78, "State");
      v34 = atomic_load(v32[9]);
      v35 = v34 - 1;
      v36 = "Pending";
      if (v35 <= 2u)
      {
        v36 = off_1E7B346C0[v35];
      }

      gdc::DebugTreeValue::DebugTreeValue(__p, v36);
      gdc::DebugTreeNode::addProperty(v33, &v78, __p);
      if (v72 < 0)
      {
        operator delete(v71);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      v37 = atomic_load(v32[9]);
      if (v37 == 2)
      {
        std::string::basic_string[abi:nn200100]<0>(&v78, "OverlayMeshCount");
        gdc::DebugTreeValue::DebugTreeValue(v66, *(v32[9] + 56));
        gdc::DebugTreeNode::addProperty(v33, &v78, v66);
        if (v68 < 0)
        {
          operator delete(v67);
        }

        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v78.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:nn200100]<0>(&v78, "FoundationMeshCount");
        gdc::DebugTreeValue::DebugTreeValue(v63, *(v32[9] + 60));
        gdc::DebugTreeNode::addProperty(v33, &v78, v63);
        if (v65 < 0)
        {
          operator delete(v64);
        }

        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v78.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:nn200100]<0>(&v78, "Total Verts");
        v51 = v33;
        v52 = v32;
        v38 = v32[9];
        v39 = *(v38 + 56);
        if (v39)
        {
          v40 = 0;
          v41 = 0;
          v42 = *(v38 + 60);
          if (v42 <= 1)
          {
            v43 = 1;
          }

          else
          {
            v43 = v42;
          }

          v44 = *(v38 + 60);
          do
          {
            if (v44)
            {
              v45 = *(v38 + 112);
              v46 = v43;
              v47 = v40;
              do
              {
                v41 += md::ClientDrapedMeshes::vertexCount((v45 + 80 * v47));
                v47 += v39;
                --v46;
              }

              while (v46);
              v44 = v42;
            }

            ++v40;
          }

          while (v40 < v39);
        }

        else
        {
          v41 = 0;
        }

        gdc::DebugTreeValue::DebugTreeValue(v60, v41);
        gdc::DebugTreeNode::addProperty(v51, &v78, v60);
        if (v62 < 0)
        {
          operator delete(v61);
        }

        v5 = v50;
        v32 = v52;
        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v78.__r_.__value_.__l.__data_);
        }
      }

      v6 = *v32;
      if (!v6)
      {
        goto LABEL_95;
      }
    }
  }
}

void sub_1B2C07DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  STACK[0x200] = a9 + 72;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&STACK[0x200]);
  STACK[0x200] = a9 + 48;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&STACK[0x200]);
  if (*(a9 + 47) < 0)
  {
    operator delete(*(a9 + 24));
  }

  if (*(a9 + 23) < 0)
  {
    operator delete(*a9);
  }

  _Unwind_Resume(a1);
}

void md::DrapingLogic::~DrapingLogic(int8x8_t **this)
{
  md::DrapingLogic::~DrapingLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E17E0;
  v2 = (this + 21);
  md::DrapingTaskScheduler::reset(this[21]);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable((this + 48));
  v3 = this[45];
  if (v3)
  {
    this[46] = v3;
    operator delete(v3);
  }

  v4 = this[42];
  if (v4)
  {
    this[43] = v4;
    operator delete(v4);
  }

  geo::Pool<gdc::FallbackNode>::~Pool((this + 36));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[33]);
  v5 = this[25];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = this[23];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  std::unique_ptr<md::DrapingTaskScheduler>::~unique_ptr[abi:nn200100](v2);
  v7 = this[20];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = this[18];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = this[16];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[13]);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[10]);
}

void sub_1B2C0800C(_Unwind_Exception *a1)
{
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v1 + 384);
  v4 = *(v1 + 360);
  if (v4)
  {
    *(v1 + 368) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 336);
  if (v5)
  {
    *(v1 + 344) = v5;
    operator delete(v5);
  }

  geo::Pool<gdc::FallbackNode>::~Pool(v1 + 288);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 264));
  v6 = *(v1 + 200);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(v1 + 184);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  std::unique_ptr<md::DrapingTaskScheduler>::~unique_ptr[abi:nn200100](v2);
  v8 = *(v1 + 160);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(v1 + 144);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(v1 + 128);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  *v1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 80));
  _Unwind_Resume(a1);
}

uint64_t geo::Pool<gdc::FallbackNode>::~Pool(uint64_t a1)
{
  v25 = 0;
  v26 = 0;
  v24 = &v25;
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v24, v2);
      v2 = **v3;
      *v3 = v2;
    }

    while (v2);
    v4 = v26;
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
    do
    {
      if (v5)
      {
        v9 = 0;
        v10 = v6[4];
        do
        {
          v11 = (v10 + 104 * v9);
          v12 = v25;
          if (!v25)
          {
            goto LABEL_20;
          }

          v13 = &v25;
          do
          {
            v14 = v12;
            v15 = v13;
            v16 = v12[4];
            if (v16 >= v11)
            {
              v13 = v12;
            }

            v12 = v12[v16 < v11];
          }

          while (v12);
          if (v13 == &v25)
          {
            goto LABEL_20;
          }

          if (v16 < v11)
          {
            v14 = v15;
          }

          if (v11 < v14[4])
          {
LABEL_20:
            v17 = v11[12];
            if (v17)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v17);
            }

            v18 = v11[1];
            if (v18 != v11[3])
            {
              free(v18);
            }
          }

          ++v9;
          v5 = *(a1 + 24);
        }

        while (v9 < v5);
      }

      v19 = v6[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v6[2];
          v8 = *v20 == v6;
          v6 = v20;
        }

        while (!v8);
      }

      v6 = v20;
    }

    while (v20 != v7);
    v6 = *a1;
  }

  if (v6 != v7)
  {
    do
    {
      free(v6[4]);
      v21 = v6[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v6[2];
          v8 = *v22 == v6;
          v6 = v22;
        }

        while (!v8);
      }

      v6 = v22;
    }

    while (v22 != v7);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v7;
  *(a1 + 40) = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v25);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  return a1;
}

void sub_1B2C08298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 8));
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<md::DrapingTaskScheduler>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::__unordered_map_hasher<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,md::FoundationKeyHash,std::equal_to<md::FoundationKey>,true>,std::__unordered_map_equal<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::equal_to<md::FoundationKey>,md::FoundationKeyHash,true>,std::allocator<std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>>>::__deallocate_node(*(v2 + 24));
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v3)
    {
      operator delete(v3);
    }

    MEMORY[0x1B8C62190](v2, 0x10A0C40B0E48F48);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<md::components::MeshInstance *,std::shared_ptr<md::components::MeshInstance>::__shared_ptr_default_delete<md::components::MeshInstance,md::components::MeshInstance>,std::allocator<md::components::MeshInstance>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::components::MeshInstance *,std::shared_ptr<md::components::MeshInstance>::__shared_ptr_default_delete<md::components::MeshInstance,md::components::MeshInstance>,std::allocator<md::components::MeshInstance>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

__n128 std::__function::__func<gm::Box<float,3>::transformedAndEnclosed(gm::Matrix<float,4,4> const&)::{lambda(gm::Matrix<float,3,1> &)#1},std::allocator<gm::Box<float,3>::transformedAndEnclosed(gm::Matrix<float,4,4> const&)::{lambda(gm::Matrix<float,3,1> &)#1}>,void ()(gm::Matrix<float,3,1> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A572F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__shared_ptr_pointer<md::Mesh *,std::shared_ptr<md::Mesh>::__shared_ptr_default_delete<md::Mesh,md::Mesh>,std::allocator<md::Mesh>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::CommonMesh::Pos4Mesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A20B48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

int16x4_t ___ZN2md11MonitorableINS_11ConfigValueI16GEOConfigKeyBOOLbEEE16setCallbackQueueEPU28objcproto17OS_dispatch_queue8NSObjectNSt3__18functionIFvbEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 32);
    if (*v1)
    {
      v3 = *(v2 + 16);
      if (*v2)
      {
        v4 = *(v2 + 8) == 0;
      }

      else
      {
        v4 = 1;
      }

      if (!v4)
      {
        *(v2 + 16) = GEOConfigGetBOOL();
      }

      v6 = *(v2 + 72);
      if (v6)
      {

        return std::function<void ()(BOOL)>::operator()(v6, v3);
      }
    }
  }

  return result;
}

void std::__shared_ptr_emplace<std::atomic<BOOL>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A58090;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::PolylineOverlayRibbon::ElevatedMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A09260;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void *std::vector<md::MuninRoadEdge const*>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  v3 = v2 - *a2;
  if (v2 != *a2)
  {
    if (!((v3 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v3 >> 3);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = v7 << 6;
    if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
    {
      __dst = 0;
      v19 = 0uLL;
      if ((a2 & 0x8000000000000000) != 0)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v10 = v7 << 7;
      if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
      {
        v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
      }

      if (v8 <= 0x3FFFFFFFFFFFFFFELL)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      std::vector<BOOL>::reserve(&__dst, v11);
      v12 = *a1;
      v13 = *(a1 + 8);
      *&v19 = v13 + v5;
      v14 = __dst;
      if (v13 < 1)
      {
        LODWORD(v17) = 0;
        v16 = __dst;
      }

      else
      {
        v15 = v13 >> 6;
        if (v13 >= 0x40)
        {
          memmove(__dst, v12, 8 * v15);
        }

        v16 = &v14[8 * v15];
        v17 = v13 & 0x3F;
        if (v17)
        {
          *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> -v17) | *(v12 + v15) & (0xFFFFFFFFFFFFFFFFLL >> -v17);
        }

        v12 = *a1;
      }

      *a1 = v14;
      *(a1 + 8) = v19;
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      v16 = (*a1 + 8 * (v4 >> 6));
      v17 = *(a1 + 8) & 0x3FLL;
      *(a1 + 8) = a2;
    }

    if (a3)
    {
      __dst = v16;
      LODWORD(v19) = v17;
      std::__fill_n_BOOL[abi:nn200100]<true,std::vector<BOOL>>(&__dst, v5);
    }

    else
    {
      __dst = v16;
      LODWORD(v19) = v17;
      std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(&__dst, v5);
    }
  }
}

void sub_1B2C088DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::__rehash_unique[abi:nn200100](uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_5;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_5:

      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::__do_rehash<true>(a1, prime);
    }
  }
}

void *std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::__emplace_unique_key_args<md::MuninJunction const*,md::MuninJunction const* const&>(void *result, unint64_t a2)
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

void std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t md::ComposedRoadEdge::walkEdges(uint64_t result, int a2, uint64_t a3)
{
  if (*(a3 + 24))
  {
    v4 = a2;
    v5 = result;
    v6 = *(result + 24);
    v7 = ((*(result + 32) - v6) >> 3) - 1;
    if (a2)
    {
      v8 = 0;
    }

    else
    {
      v8 = ((*(result + 32) - v6) >> 3) - 1;
    }

    if (!a2)
    {
      v7 = 0;
    }

    if (v7 > v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 + v7;
    while (v10 != v8)
    {
      v11 = ((*(*v5 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1) == 0;
      v15 = *(v5[3] + 8 * v8);
      v14 = v11 ^ v4;
      v12 = *(a3 + 24);
      if (!v12)
      {
        v13 = std::__throw_bad_function_call[abi:nn200100]();
        return std::__function::__value_func<BOOL ()(md::MuninRoadEdge const*,BOOL)>::~__value_func[abi:nn200100](v13);
      }

      result = (*(*v12 + 48))(v12, &v15, &v14);
      v8 += v9;
      if ((result & 1) == 0)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(md::MuninRoadEdge const*,BOOL)>::~__value_func[abi:nn200100](uint64_t a1)
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

BOOL std::__function::__func<md::ComposedRoadEdge::edgeRange(BOOL,md::MuninRoadEdge const*,double &,double &)::$_0,std::allocator<md::ComposedRoadEdge::edgeRange(BOOL,md::MuninRoadEdge const*,double &,double &)::$_0>,BOOL ()(md::MuninRoadEdge const*,BOOL)>::operator()(uint64_t a1, md::MuninRoadEdge **a2)
{
  v3 = *a2;
  v4 = *(a1 + 32);
  v5 = md::MuninRoadEdge::edgeLengthInMeters(*a2);
  v6 = **(a1 + 8);
  v7 = *(a1 + 24);
  v8 = *v7;
  if (v6 == v3)
  {
    **(a1 + 16) = v8 / *(v4 + 144);
    v9 = *(a1 + 48);
    **(a1 + 40) = (*v7 + v5) / *(v4 + 144);
    *v9 = 1;
  }

  else
  {
    *v7 = v8 + v5;
  }

  return v6 != v3;
}

__n128 std::__function::__func<md::ComposedRoadEdge::edgeRange(BOOL,md::MuninRoadEdge const*,double &,double &)::$_0,std::allocator<md::ComposedRoadEdge::edgeRange(BOOL,md::MuninRoadEdge const*,double &,double &)::$_0>,BOOL ()(md::MuninRoadEdge const*,BOOL)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E2868;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t md::ComposedRoadEdge::walker(md::ComposedRoadEdge *this, uint64_t a2, int a3)
{
  v5[4] = *MEMORY[0x1E69E9840];
  *this = a2;
  *(this + 8) = a3;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 14) = 0;
  *(this + 15) = 0;
  v5[0] = &unk_1F29EC048;
  v5[1] = this;
  v5[3] = v5;
  md::ComposedRoadEdge::walkEdges(a2, a3, v5);
  std::__function::__value_func<BOOL ()(md::MuninRoadEdge const*,BOOL)>::~__value_func[abi:nn200100](v5);
  *(this + 15) = *(*this + 144);
  return md::MuninRoadEdgePolyline::pointAtDistance(*(this + 5) + 56 * *(this + 8), this + 5, this + 6, *(this + 14));
}

void sub_1B2C09148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, char a10)
{
  v12 = v11;
  std::__function::__value_func<BOOL ()(md::MuninRoadEdge const*,BOOL)>::~__value_func[abi:nn200100](&a10);
  std::vector<md::MuninRoadEdgePolyline>::__destroy_vector::operator()[abi:nn200100](&a9);
  v14 = *v12;
  if (*v12)
  {
    *(v10 + 24) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

void geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4BA00;

  JUMPOUT(0x1B8C62190);
}

void md::AnimationManager::animationDidResume(md::AnimationManager *this, VKAnimation *a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([(VKAnimation *)v3 hasFrequency])
  {
    if (*(this + 232) == 1)
    {
      geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v7, v3);
      v4 = std::__hash_table<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::__unordered_map_hasher<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>>>::find<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(this + 24, v7);
      if (v4)
      {
        [(VKAnimation *)v3 frequency];
        (*(*v4[5] + 32))(v4[5], 0.0, 1.0 / v5);
      }

      v7[0] = &unk_1F2A4BA00;
    }
  }

  else
  {
    atomic_store(1u, this + 184);
    v6 = **(this + 4);
    if (v6)
    {
      LOBYTE(v7[0]) = 6;
      md::MapEngine::setNeedsTick(v6, v7);
    }
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::__unordered_map_hasher<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>>>::find<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(void *a1, uint64_t a2)
{
  v4 = [*(a2 + 8) hash];
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
      if (geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(i[3], a2))
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

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const,std::unique_ptr<gdc::Timer>>,0>(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:nn200100]<std::pair<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const,std::unique_ptr<gdc::Timer>>,0>(void *a1)
{
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_1F2A4BA00;
  v3 = a1[1];
}

uint64_t geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2A4BA00;
  *(a1 + 8) = 0;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

void std::__function::__func<md::AnimationManager::runAnimation(VKAnimation *)::$_0,std::allocator<md::AnimationManager::runAnimation(VKAnimation *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  [v2 onTimerFired:CFAbsoluteTimeGetCurrent()];

  v3 = **(v1 + 32);
  if (v3)
  {
    v4 = 6;
    md::MapEngine::setNeedsTick(v3, &v4);
  }
}

void std::__function::__func<md::AnimationManager::runAnimation(VKAnimation *)::$_0,std::allocator<md::AnimationManager::runAnimation(VKAnimation *)::$_0>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  *(a1 + 16) = &unk_1F2A4BA00;

  operator delete(a1);
}

void *std::__function::__func<md::AnimationManager::runAnimation(VKAnimation *)::$_0,std::allocator<md::AnimationManager::runAnimation(VKAnimation *)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F29E2918;
  a2[1] = v2;
  return geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a2 + 2, a1 + 16);
}

void std::__function::__func<md::AnimationManager::runAnimation(VKAnimation *)::$_0,std::allocator<md::AnimationManager::runAnimation(VKAnimation *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F29E2918;
  *(a1 + 16) = &unk_1F2A4BA00;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::AnimationManager::runAnimation(VKAnimation *)::$_0,std::allocator<md::AnimationManager::runAnimation(VKAnimation *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F29E2918;
  *(a1 + 16) = &unk_1F2A4BA00;

  return a1;
}

void md::AnimationManager::~AnimationManager(md::AnimationManager *this)
{
  md::AnimationManager::~AnimationManager(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E28B0;
  md::AnimationManager::stopAllAnimations(this);
  std::__hash_table<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::__unordered_map_hasher<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>>>::~__hash_table(this + 192);
  for (i = 144; i != 64; i -= 40)
  {
    std::__hash_table<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::allocator<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::~__hash_table(this + i);
  }

  std::mutex::~mutex((this + 40));
  *(this + 1) = &unk_1F29E28F8;
}

void sub_1B2C09980(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::__unordered_map_hasher<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>>>::~__hash_table(v1 + 192);
  v3 = v1 + 144;
  v4 = -80;
  do
  {
    v3 = std::__hash_table<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::allocator<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::~__hash_table(v3) - 40;
    v4 += 40;
  }

  while (v4);
  std::mutex::~mutex((v1 + 40));
  *(v1 + 8) = &unk_1F29E28F8;

  _Unwind_Resume(a1);
}

void md::AnimationManager::stopAllAnimations(md::AnimationManager *this)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  std::mutex::lock((this + 40));
  for (i = 104; i != 184; i += 40)
  {
    for (j = (this + i + 16); ; std::vector<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::push_back[abi:nn200100](&v7, (j + 2)))
    {
      j = *j;
      if (!j)
      {
        break;
      }
    }
  }

  std::mutex::unlock((this + 40));
  v4 = v7;
  v5 = v8;
  while (v4 != v5)
  {
    v6 = *(v4 + 8);
    [v6 stop];

    v4 += 24;
  }

  v10 = &v7;
  std::vector<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v10);
}

void sub_1B2C09A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::__unordered_map_hasher<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const,std::unique_ptr<gdc::Timer>>,0>(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::allocator<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      (*v2[2])();
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void geo::_retain_ptr<_AnimationManagerRunner * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E28F8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<_AnimationManagerRunner * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E28F8;

  return a1;
}

void md::SnapshotAnimationManager::runAnimation(md::SnapshotAnimationManager *this, VKAnimation *a2)
{
  v5 = a2;
  [(VKAnimation *)v5 startWithRunner:*(this + 2)];
  Current = CFAbsoluteTimeGetCurrent();
  [(VKAnimation *)v5 onTimerFired:?];
  if ([(VKAnimation *)v5 timed])
  {
    [(VKAnimation *)v5 duration];
    [(VKAnimation *)v5 onTimerFired:v4 + Current];
  }

  [(VKAnimation *)v5 stop];
}

void md::SnapshotAnimationManager::~SnapshotAnimationManager(md::SnapshotAnimationManager *this)
{
  md::AnimationManager::~AnimationManager(this);

  JUMPOUT(0x1B8C62190);
}

void md::ARPassList::buildFrameGraph(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v23[8] = *MEMORY[0x1E69E9840];
  v23[0] = &unk_1F29E2990;
  v23[1] = a4;
  v23[3] = v23;
  v7 = *(a5 + 160) - *(a5 + 152);
  while (1)
  {
    v8 = md::CommandBufferPool::pop(*(a5 + 184), v6, off_1E7B2F5A0[v6]);
    v9 = v8;
    v11 = *(a5 + 160);
    v10 = *(a5 + 168);
    if (v11 >= v10)
    {
      v13 = *(a5 + 152);
      v14 = (v11 - v13) >> 3;
      if ((v14 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v15 = v10 - v13;
      v16 = v15 >> 2;
      if (v15 >> 2 <= (v14 + 1))
      {
        v16 = v14 + 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v17);
      }

      v18 = (8 * v14);
      *v18 = v9;
      v12 = 8 * v14 + 8;
      v19 = *(a5 + 152);
      v20 = *(a5 + 160) - v19;
      v21 = v18 - v20;
      memcpy(v18 - v20, v19, v20);
      v22 = *(a5 + 152);
      *(a5 + 152) = v21;
      *(a5 + 160) = v12;
      *(a5 + 168) = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v11 = v8;
      v12 = (v11 + 1);
    }

    *(a5 + 160) = v12;
    if (++v6 == 9)
    {
      md::FrameGraphResourcePools::constructRenderQueue(*(a5 + 184), *(a5 + 152) + v7, 9uLL);
    }
  }
}

void sub_1B2C09F04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(md::FrameGraphRenderPassBuilder &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::ARPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_0,std::allocator<md::ARPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_0>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(&__str.__r_.__value_.__s + 23) = 7;
  strcpy(&__str, "Primary");
  std::string::operator=((a2 + 32), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v4 = *(a1 + 8);
  v5 = *v4;
  *(a2 + 120) = v4[1];
  *(a2 + 104) = v5;
  result = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  *(a2 + 184) = v4[5];
  *(a2 + 168) = v8;
  *(a2 + 152) = v7;
  *(a2 + 136) = result;
  return result;
}

uint64_t std::__function::__func<md::ARPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_0,std::allocator<md::ARPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_0>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E2990;
  a2[1] = v2;
  return result;
}

void md::ARPassList::~ARPassList(ggl::RenderQueue **this)
{
  *this = &unk_1F2A36F90;
  v1 = (this + 1);
  std::unique_ptr<ggl::RenderQueue>::reset[abi:nn200100](this + 2, 0);
  std::unique_ptr<md::FrameGraph>::reset[abi:nn200100](v1, 0);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A36F90;
  v1 = (this + 1);
  std::unique_ptr<ggl::RenderQueue>::reset[abi:nn200100](this + 2, 0);
  std::unique_ptr<md::FrameGraph>::reset[abi:nn200100](v1, 0);
}

void std::__function::__func<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_1,std::allocator<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_1>,void ()(std::string)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 23);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  **(a1 + 8) = 1;
  if (v4 < 0)
  {
    operator delete(v3);
  }
}

void std::__function::__func<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_1,std::allocator<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_1>,void ()(std::string)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_1,std::allocator<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_1>,void ()(std::string)>::~__func(void *a1)
{
  *a1 = &unk_1F29E2A20;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_1,std::allocator<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_1>,void ()(std::string)>::~__func(void *a1)
{
  *a1 = &unk_1F29E2A20;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void ___ZN2md11MonitorableINS_11ConfigValueI18GEOConfigKeyStringNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE16setCallbackQueueEPU28objcproto17OS_dispatch_queue8NSObjectNS3_8functionIFvS9_EEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 32);
    if (*v1)
    {
      if (*(v2 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v7, *(v2 + 16), *(v2 + 24));
      }

      else
      {
        v7 = *(v2 + 16);
      }

      if (*v2)
      {
        v3 = *(v2 + 8) == 0;
      }

      else
      {
        v3 = 1;
      }

      if (!v3)
      {
        md::ConfigValue<GEOConfigKeyString,std::string>::_update(v2);
      }

      v4 = *(v2 + 88);
      if (v4)
      {
        if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
          v4 = *(v2 + 88);
          if (!v4)
          {
            v5 = std::__throw_bad_function_call[abi:nn200100]();
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v7.__r_.__value_.__l.__data_);
            }

            _Unwind_Resume(v5);
          }
        }

        else
        {
          __p = v7;
        }

        (*(*v4 + 48))(v4, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v7.__r_.__value_.__l.__data_);
      }
    }
  }
}

void std::__function::__func<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_0,std::allocator<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_0>,void ()(std::string)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 23);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  **(a1 + 8) = 1;
  if (v4 < 0)
  {
    operator delete(v3);
  }
}

void std::__function::__func<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_0,std::allocator<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_0>,void ()(std::string)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_0,std::allocator<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_0>,void ()(std::string)>::~__func(void *a1)
{
  *a1 = &unk_1F29E29D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_0,std::allocator<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_0>,void ()(std::string)>::~__func(void *a1)
{
  *a1 = &unk_1F29E29D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<BOOL>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03380;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::TransitRenderLayer::setDebugHighlightedItem(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 376);
  v4 = *(v3 + 304);
  v5 = *a2;
  if (v4 != *a2)
  {
    if (v4)
    {
      ((*v4)[2])(v4, 0);
      v3 = *(a1 + 376);
      v5 = *a2;
    }

    v7 = a2[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = *(v3 + 312);
    *(v3 + 304) = v5;
    *(v3 + 312) = v7;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    v9 = *(*(a1 + 376) + 304);
    if (v9)
    {
      (*(*v9 + 16))(v9, 1);
    }

    v10 = **(*(a1 + 40) + 88);
    if (v10)
    {
      LOBYTE(__p[0]) = 7;
      md::MapEngine::setNeedsTick(v10, __p);
    }

    v4 = *(*(a1 + 376) + 304);
  }

  if (v4)
  {
    v11 = *v4[1];
    if (GEOGetVectorKitLabelHighlightLog(void)::onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitLabelHighlightLog(void)::onceToken, &__block_literal_global_32);
    }

    v12 = GEOGetVectorKitLabelHighlightLog(void)::log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      md::HighlightHelper::to_string(__p, (v11 + 168));
      if (v18 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      v14 = (*(**(*(a1 + 376) + 304) + 32))(*(*(a1 + 376) + 304), 1);
      v15 = v14;
      v16 = [v14 UTF8String];
      *buf = 136315394;
      v20 = v13;
      v21 = 2080;
      v22 = v16;
      _os_log_impl(&dword_1B2754000, v12, OS_LOG_TYPE_INFO, "Transit Item:\nTile:%s\n%s", buf, 0x16u);

      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_1B2C0A868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL32GEOGetVectorKitLabelHighlightLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "LabelHighlight");
  v1 = GEOGetVectorKitLabelHighlightLog(void)::log;
  GEOGetVectorKitLabelHighlightLog(void)::log = v0;
}

void md::MuninAvailabilityData::~MuninAvailabilityData(md::MuninAvailabilityData *this)
{
  md::MuninAvailabilityData::~MuninAvailabilityData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E2A88;
  *(this + 80) = &unk_1F29E2AC8;
  v2 = *(this + 91);
  if (v2)
  {
    *(this + 92) = v2;
    operator delete(v2);
  }

  md::MapTileData::~MapTileData(this);
}

uint64_t std::__function::__value_func<void ()(GeoCodecsRoadFeature const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<gss::StyleAttribute,unsigned short>>(uint64_t a1, void *a2)
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

uint64_t std::__function::__func<md::MuninAvailabilityData::MuninAvailabilityData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_0,std::allocator<md::MuninAvailabilityData::MuninAvailabilityData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_0>,void ()(GeoCodecsRoadEdge *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E2B28;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::MuninAvailabilityData::MuninAvailabilityData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_1,std::allocator<md::MuninAvailabilityData::MuninAvailabilityData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_1>,void ()(GeoCodecsRoadFeature const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E2AE0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

BOOL md::MuninAvailabilityData::isWithinMuninCoverage(uint64_t a1, double a2, double a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 1 << *(a1 + 169);
  v6 = a2 + -1.0 / v5 * *(a1 + 176);
  v7 = a3 + -1.0 / v5 * (v5 + ~*(a1 + 172));
  while (1)
  {
    v8 = v6 * v5;
    if (*(a1 + 752 + 4 * v4) > v8)
    {
      break;
    }

    v9 = *(a1 + 760 + 4 * v4);
    v4 = 1;
    v10 = (v9 > v8) & ~v3;
    v3 = 1;
    v6 = v7;
    if ((v10 & 1) == 0)
    {
      return v9 > v8;
    }
  }

  return 0;
}

void geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2FC10;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2FC10;

  return a1;
}

void geo::_retain_ptr<VKInternalIconManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E2CF0;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKInternalIconManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E2CF0;

  return a1;
}

void std::default_delete<ggl::DistanceAtlas>::operator()[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1B8C62190);
}

void std::default_delete<ggl::AlphaAtlas>::operator()[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1B8C62190);
}

void std::default_delete<md::GeoidModel>::operator()[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__hash_table<std::shared_ptr<md::SharedResource>,std::hash<std::shared_ptr<md::SharedResource>>,std::equal_to<std::shared_ptr<md::SharedResource>>,std::allocator<std::shared_ptr<md::SharedResource>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::shared_ptr<md::SharedResource>,std::hash<std::shared_ptr<md::SharedResource>>,std::equal_to<std::shared_ptr<md::SharedResource>>,std::allocator<std::shared_ptr<md::SharedResource>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1B2C0B130(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  geo::write_lock_guard::~write_lock_guard(va);
  _Unwind_Resume(a1);
}

void sub_1B2C0B4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VKSharedResources;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::reset(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  *v14 = a1 + 32;
  v3 = pthread_rwlock_wrlock((a1 + 32));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "write lock", v4);
  }

  v5 = atomic_load((a1 + 24));
  if (v5)
  {
    geo::write_lock_guard::~write_lock_guard(v14);
    v6 = pthread_rwlock_rdlock(v2);
    if (v6)
    {
      geo::read_write_lock::logFailure(v6, "read lock", v7);
    }

    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v14 = 136315138;
      *&v14[4] = v8;
      _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_INFO, "BasicAllocationTracker(%s)", v14, 0xCu);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = atomic_load((a1 + 24));
      *v14 = 67109120;
      *&v14[4] = v10;
      _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_INFO, "\tCount: %d", v14, 8u);
    }

    v11 = *(a1 + 16);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 8);
      *v14 = 136315650;
      *&v14[4] = v13;
      v15 = 2048;
      v16 = a1;
      v17 = 1024;
      v18 = v5;
      _os_log_error_impl(&dword_1B2754000, v11, OS_LOG_TYPE_ERROR, "Resetting %s zone allocator at address %p with %d allocations still alive", v14, 0x1Cu);
    }

    geo::read_write_lock::unlock(v2);
  }

  else
  {
    malloc_destroy_zone(*a1);
    zone = malloc_create_zone(0, 0);
    *a1 = zone;
    malloc_set_zone_name(zone, *(a1 + 8));
    atomic_store(0, (a1 + 24));
    geo::write_lock_guard::~write_lock_guard(v14);
  }
}

void sub_1B2C0D3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  (*(*v20 + 8))(v20);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  _Unwind_Resume(a1);
}

uint64_t geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(uint64_t a1, uint64_t a2)
{
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

uint64_t std::__shared_ptr_pointer<md::StandardCommandBufferSelector *,std::shared_ptr<md::StandardCommandBufferSelector>::__shared_ptr_default_delete<md::StandardCommandBufferSelector,md::StandardCommandBufferSelector>,std::allocator<md::StandardCommandBufferSelector>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::StandardCommandBufferSelector *,std::shared_ptr<md::StandardCommandBufferSelector>::__shared_ptr_default_delete<md::StandardCommandBufferSelector,md::StandardCommandBufferSelector>,std::allocator<md::StandardCommandBufferSelector>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<grl::IconManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00FE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<grl::FontManager *,std::shared_ptr<grl::FontManager>::__shared_ptr_default_delete<grl::FontManager,grl::FontManager>,std::allocator<grl::FontManager>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<grl::FontManager *,std::shared_ptr<grl::FontManager>::__shared_ptr_default_delete<grl::FontManager,grl::FontManager>,std::allocator<grl::FontManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::GeoResourceProvider>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00F78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::DataOverrideManager>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<md::DataOverrideManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E2C38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::StylesheetVendor>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 128);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v5 = (a1 + 88);
  std::vector<std::pair<md::StylesheetKey,std::shared_ptr<gss::StyleSheet<gss::ScenePropertyID>>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5 = (a1 + 64);
  std::vector<std::pair<md::StylesheetKey,std::shared_ptr<gss::StyleSheet<gss::ScenePropertyID>>>>::__destroy_vector::operator()[abi:nn200100](&v5);

  v4 = *(a1 + 32);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__shared_ptr_emplace<md::StylesheetVendor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00F40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::TileGroupNotificationManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E2C00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::MaterialTextureManager>::__on_zero_shared(uint64_t a1)
{
  md::MaterialTextureManager::purge((a1 + 24));
  v2 = *(a1 + 344);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *(a1 + 304) = &unk_1F2A2FC10;

  std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::MaterialTextureManager::TextureKeyHash,std::equal_to<md::MaterialTextureManager::TextureKey>,true>,std::__unordered_map_equal<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::MaterialTextureManager::TextureKey>,md::MaterialTextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::~__hash_table(a1 + 264);
  std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::MaterialTextureManager::TextureKeyHash,std::equal_to<md::MaterialTextureManager::TextureKey>,true>,std::__unordered_map_equal<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::MaterialTextureManager::TextureKey>,md::MaterialTextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::~__hash_table(a1 + 224);

  geo::read_write_lock::~read_write_lock((a1 + 24));
}

void sub_1B2C0DECC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 344);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *(v1 + 304) = &unk_1F2A2FC10;

  std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::MaterialTextureManager::TextureKeyHash,std::equal_to<md::MaterialTextureManager::TextureKey>,true>,std::__unordered_map_equal<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::MaterialTextureManager::TextureKey>,md::MaterialTextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::~__hash_table(v1 + 264);
  std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::MaterialTextureManager::TextureKeyHash,std::equal_to<md::MaterialTextureManager::TextureKey>,true>,std::__unordered_map_equal<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::MaterialTextureManager::TextureKey>,md::MaterialTextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::~__hash_table(v1 + 224);
  geo::read_write_lock::~read_write_lock((v1 + 24));
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::MaterialTextureManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E2BC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::TextureManager>::__on_zero_shared(uint64_t a1)
{
  md::TextureManager::purge((a1 + 24));
  *(a1 + 568) = &unk_1F2A2FC10;

  std::__hash_table<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::TextureManager::TextureKeyHash,std::equal_to<md::TextureManager::TextureKey>,true>,std::__unordered_map_equal<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::TextureManager::TextureKey>,md::TextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::~__hash_table(a1 + 528);
  std::__hash_table<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::TextureManager::TextureKeyHash,std::equal_to<md::TextureManager::TextureKey>,true>,std::__unordered_map_equal<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::TextureManager::TextureKey>,md::TextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::~__hash_table(a1 + 488);
  geo::read_write_lock::~read_write_lock((a1 + 288));
  geo::read_write_lock::~read_write_lock((a1 + 88));
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

void sub_1B2C0E054(_Unwind_Exception *a1)
{
  *(v1 + 568) = &unk_1F2A2FC10;

  std::__hash_table<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::TextureManager::TextureKeyHash,std::equal_to<md::TextureManager::TextureKey>,true>,std::__unordered_map_equal<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::TextureManager::TextureKey>,md::TextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::~__hash_table(v1 + 528);
  std::__hash_table<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::TextureManager::TextureKeyHash,std::equal_to<md::TextureManager::TextureKey>,true>,std::__unordered_map_equal<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::TextureManager::TextureKey>,md::TextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::~__hash_table(v1 + 488);
  geo::read_write_lock::~read_write_lock((v1 + 288));
  geo::read_write_lock::~read_write_lock((v1 + 88));
  v3 = *(v1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 + 64);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(v1 + 48);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(v1 + 32);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::TextureManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E2B90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2C0E48C(_Unwind_Exception *a1)
{
  v6 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v6;
    operator delete(v6);
  }

  MEMORY[0x1B8C62190](v1, v3);
  _Unwind_Resume(a1);
}

void sub_1B2C10C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  (*(*v20 + 8))(v20);

  std::unique_ptr<md::SharedDeviceResources>::reset[abi:nn200100]((a18 + 24), 0);
  v23 = *(a18 + 16);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

  MEMORY[0x1B8C62190](a18, 0x1020C40E72D6CFBLL);
  std::mutex::unlock((v18 + 8));
  _Unwind_Resume(a1);
}

uint64_t md::RegionalResourceLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
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

void std::__shared_ptr_emplace<md::RegionalResourceTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E2DF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::ResourceInfo>::__on_zero_shared(uint64_t a1)
{
  v1 = (a1 + 24);
  v2 = (a1 + 48);
  std::vector<geo::_retain_ptr<GEOAttribution * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = v1;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v2);
}

void std::vector<geo::_retain_ptr<GEOAttribution * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 24;
      v7 = v4 - 24;
      v8 = v4 - 24;
      do
      {
        v9 = *v8;
        v8 -= 24;
        (*v9)(v7);
        v6 -= 24;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<md::ResourceInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3FF70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RegionalResourceLayerDataSource::~RegionalResourceLayerDataSource(md::RegionalResourceLayerDataSource *this)
{
  *this = &unk_1F29E2D48;
  *(this + 97) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E2D48;
  *(this + 97) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);
}

void geo::_retain_ptr<VKSharedResources * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A59028;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKSharedResources * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A59028;

  return a1;
}

void std::__shared_ptr_emplace<md::RouteAnnotationDedupingGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E52F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A436C8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A436C8;

  return a1;
}

void *std::__hash_table<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::__unordered_map_hasher<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,md::TrafficFeatureHash,std::equal_to<VKTrafficFeature * {__strong}>,true>,std::__unordered_map_equal<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::equal_to<VKTrafficFeature * {__strong}>,md::TrafficFeatureHash,true>,geo::allocator_adapter<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,mdm::zone_mallocator>>::find<VKTrafficFeature * {__strong}>(void *a1, void **a2)
{
  v4 = md::TrafficFeatureHash::operator()(*a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  i = *(*a1 + 8 * v7);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v9 = i[1];
      if (v9 == v4)
      {
        if (i[2] == *a2)
        {
          return i;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v9 >= *&v5)
          {
            v9 %= *&v5;
          }
        }

        else
        {
          v9 &= *&v5 - 1;
        }

        if (v9 != v7)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::RouteAnnotationLabelFeature>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 16 * a2, 0x20040A4A59CD2uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

std::__shared_weak_count *std::__split_buffer<std::shared_ptr<md::RouteAnnotationLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::RouteAnnotationLabelFeature>,mdm::zone_mallocator> &>::~__split_buffer(std::__shared_weak_count *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::RouteAnnotationLabelFeature>>(v5, v4);
  }

  return v1;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeature *>(uint64_t a1, uint64_t a2)
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

void *std::__hash_table<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::__unordered_map_hasher<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,md::TrafficFeatureHash,std::equal_to<VKTrafficFeature * {__strong}>,true>,std::__unordered_map_equal<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::equal_to<VKTrafficFeature * {__strong}>,md::TrafficFeatureHash,true>,geo::allocator_adapter<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,mdm::zone_mallocator>>::__emplace_unique_key_args<VKTrafficFeature * {__strong},std::piecewise_construct_t const&,std::tuple<VKTrafficFeature * const {__strong}&>,std::tuple<>>(float *a1, void **a2, id **a3)
{
  v7 = md::TrafficFeatureHash::operator()(*a2);
  v8 = v7;
  v9 = *(a1 + 1);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v11 = *(*a1 + 8 * v3);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v7)
        {
          if (i[2] == *a2)
          {
            return i;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v14 = mdm::zone_mallocator::instance(v7);
  i = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *>>(v14);
  *i = 0;
  i[1] = v8;
  i[2] = **a3;
  i[3] = 0;
  v15 = (*(a1 + 5) + 1);
  v16 = a1[12];
  if (!v9 || (v16 * v9) < v15)
  {
    v17 = 1;
    if (v9 >= 3)
    {
      v17 = (v9 & (v9 - 1)) != 0;
    }

    v18 = v17 | (2 * v9);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    std::__hash_table<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::__unordered_map_hasher<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,md::TrafficFeatureHash,std::equal_to<VKTrafficFeature * {__strong}>,true>,std::__unordered_map_equal<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::equal_to<VKTrafficFeature * {__strong}>,md::TrafficFeatureHash,true>,geo::allocator_adapter<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,mdm::zone_mallocator>>::__rehash<true>(a1, v20);
    v9 = *(a1 + 1);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v21 = *a1;
  v22 = *(*a1 + 8 * v3);
  if (v22)
  {
    *i = *v22;
LABEL_38:
    *v22 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 3);
  *(a1 + 3) = i;
  *(v21 + 8 * v3) = a1 + 6;
  if (*i)
  {
    v23 = *(*i + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v23 >= v9)
      {
        v23 %= v9;
      }
    }

    else
    {
      v23 &= v9 - 1;
    }

    v22 = (*a1 + 8 * v23);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 5);
  return i;
}

void std::__hash_table<std::__hash_value_type<int,std::vector<VKTrafficFeature * {__strong}>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<VKTrafficFeature * {__strong}>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<VKTrafficFeature * {__strong}>>,std::equal_to<int>,std::hash<int>,true>,geo::allocator_adapter<std::__hash_value_type<int,std::vector<VKTrafficFeature * {__strong}>>,mdm::zone_mallocator>>::__deallocate_node(char *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v5 = (v1 + 24);
      std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v5);
      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<int,std::vector<VKTrafficFeature * {__strong}>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<int,std::vector<VKTrafficFeature * {__strong}>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<int,std::vector<VKTrafficFeature * {__strong}>>,void *>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<md::RouteAnnotationLabelFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E2E28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::TrafficFeatureHash::operator()(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  v2 = [v1 hash];

  return v2;
}

void std::__hash_table<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::__unordered_map_hasher<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,md::TrafficFeatureHash,std::equal_to<VKTrafficFeature * {__strong}>,true>,std::__unordered_map_equal<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::equal_to<VKTrafficFeature * {__strong}>,md::TrafficFeatureHash,true>,geo::allocator_adapter<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,mdm::zone_mallocator>>::__rehash<true>(mdm::zone_mallocator *prime, size_t __n)
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
  if (*&v3 <= *&v4)
  {
    if (*&v3 >= *&v4)
    {
      return;
    }

    prime = vcvtps_u32_f32(*(v2 + 5) / *(v2 + 12));
    if (*&v4 < 3uLL || (v13 = vcnt_s8(v4), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
    {
      prime = std::__next_prime(prime);
    }

    else
    {
      v14 = 1 << -__clz(prime - 1);
      if (prime >= 2)
      {
        prime = v14;
      }
    }

    if (*&v3 <= prime)
    {
      v3 = prime;
    }

    if (*&v3 >= *&v4)
    {
      return;
    }

    if (!*&v3)
    {
      std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *> *> **,0>(v2, 0);
      *(v2 + 1) = 0;
      return;
    }
  }

  v5 = mdm::zone_mallocator::instance(prime);
  v6 = pthread_rwlock_rdlock((v5 + 32));
  if (v6)
  {
    geo::read_write_lock::logFailure(v6, "read lock", v7);
  }

  v8 = malloc_type_zone_malloc(*v5, 8 * *&v3, 0x2004093837F09uLL);
  atomic_fetch_add((v5 + 24), 1u);
  geo::read_write_lock::unlock((v5 + 32));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *> *> **,0>(v2, v8);
  v9 = 0;
  *(v2 + 1) = v3;
  do
  {
    *(*v2 + 8 * v9++) = 0;
  }

  while (*&v3 != v9);
  v10 = *(v2 + 3);
  if (v10)
  {
    v11 = v10[1];
    v12 = vcnt_s8(v3);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    *(*v2 + 8 * v11) = v2 + 24;
    v15 = *v10;
    if (*v10)
    {
      do
      {
        v16 = v15[1];
        if (v12.u32[0] > 1uLL)
        {
          if (v16 >= *&v3)
          {
            v16 %= *&v3;
          }
        }

        else
        {
          v16 &= *&v3 - 1;
        }

        if (v16 != v11)
        {
          v17 = *v2;
          if (!*(*v2 + 8 * v16))
          {
            *(v17 + 8 * v16) = v10;
            goto LABEL_30;
          }

          *v10 = *v15;
          *v15 = **(v17 + 8 * v16);
          **(v17 + 8 * v16) = v15;
          v15 = v10;
        }

        v16 = v11;
LABEL_30:
        v10 = v15;
        v15 = *v15;
        v11 = v16;
      }

      while (v15);
    }
  }
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](mdm::zone_mallocator *a1, id *a2)
{
  if (a1)
  {
  }

  v3 = mdm::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *>>(v3, a2);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *>>(uint64_t a1, void *a2)
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

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *> *> *>(v3, v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *> *> *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x20uLL, 0x10E0040537CA8AEuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelFeature *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::RouteAnnotationLabelFeature>>(uint64_t a1, void *a2)
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

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(id *a1, void **a2, void **a3)
{
  v4 = a2;
  v5 = a1;
  v6 = *a2;
  v7 = *a1;
  v8 = [v6 routeOffset];
  v9 = [v7 routeOffset];
  if (v8 >= v9)
  {

    v10 = v8 == v9 && *(&v8 + 1) < *(&v9 + 1);
    if (!v10)
    {
      v11 = *a3;
      v12 = *v4;
      v13 = [v11 routeOffset];
      v14 = [v12 routeOffset];
      if (v13 >= v14)
      {

        if (v13 != v14 || *(&v13 + 1) >= *(&v14 + 1))
        {
          return;
        }
      }

      else
      {
      }

      v30 = *v4;
      *v4 = 0;
      v31 = *a3;
      *a3 = 0;
      v32 = *v4;
      *v4 = v31;

      v33 = *a3;
      *a3 = v30;

      v34 = *v4;
      v16 = *v5;
      v35 = [v34 routeOffset];
      v36 = [v16 routeOffset];
      if (v35 >= v36)
      {

        if (v35 != v36 || *(&v35 + 1) >= *(&v36 + 1))
        {
          return;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  v15 = *a3;
  v16 = *v4;
  v17 = [v15 routeOffset];
  v18 = [v16 routeOffset];
  if (v17 >= v18)
  {

    if (v17 == v18 && *(&v17 + 1) < *(&v18 + 1))
    {
      v4 = a3;
      goto LABEL_15;
    }

    v23 = *v5;
    *v5 = 0;
    v24 = *v4;
    *v4 = 0;
    v25 = *v5;
    *v5 = v24;

    v26 = *v4;
    *v4 = v23;

    v27 = *a3;
    v16 = *v4;
    v28 = [v27 routeOffset];
    v29 = [v16 routeOffset];
    if (v28 >= v29)
    {

      if (v28 != v29)
      {
        return;
      }

      v10 = *(&v28 + 1) < *(&v29 + 1);
      v5 = v4;
      v4 = a3;
      if (!v10)
      {
        return;
      }

      goto LABEL_15;
    }

    v5 = v4;
  }

  v4 = a3;
LABEL_11:

LABEL_15:
  v19 = *v5;
  *v5 = 0;
  v20 = *v4;
  *v4 = 0;
  v21 = *v5;
  *v5 = v20;

  v22 = *v4;
  *v4 = v19;
}

void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(id *a1, void **a2, void **a3, void **a4)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(a1, a2, a3);
  v8 = *a4;
  v9 = *a3;
  v10 = [v8 routeOffset];
  v11 = [v9 routeOffset];
  if (v10 >= v11)
  {

    if (v10 != v11 || *(&v10 + 1) >= *(&v11 + 1))
    {
      return;
    }
  }

  else
  {
  }

  v13 = *a3;
  *a3 = 0;
  v14 = *a4;
  *a4 = 0;
  v15 = *a3;
  *a3 = v14;

  v16 = *a4;
  *a4 = v13;

  v17 = *a3;
  v18 = *a2;
  v19 = [v17 routeOffset];
  v20 = [v18 routeOffset];
  if (v19 >= v20)
  {

    if (v19 != v20 || *(&v19 + 1) >= *(&v20 + 1))
    {
      return;
    }
  }

  else
  {
  }

  v21 = *a2;
  *a2 = 0;
  v22 = *a3;
  *a3 = 0;
  v23 = *a2;
  *a2 = v22;

  v24 = *a3;
  *a3 = v21;

  v25 = *a2;
  v26 = *a1;
  v27 = [v25 routeOffset];
  v28 = [v26 routeOffset];
  if (v27 >= v28)
  {

    if (v27 != v28 || *(&v27 + 1) >= *(&v28 + 1))
    {
      return;
    }
  }

  else
  {
  }

  v29 = *a1;
  *a1 = 0;
  v30 = *a2;
  *a2 = 0;
  v31 = *a1;
  *a1 = v30;

  v32 = *a2;
  *a2 = v29;
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(id *a1, void **a2, void **a3, void **a4, void **a5)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(a1, a2, a3, a4);
  v10 = *a5;
  v11 = *a4;
  v12 = [v10 routeOffset];
  v13 = [v11 routeOffset];
  if (v12 >= v13)
  {

    if (v12 != v13 || *(&v12 + 1) >= *(&v13 + 1))
    {
      return;
    }
  }

  else
  {
  }

  v15 = *a4;
  *a4 = 0;
  v16 = *a5;
  *a5 = 0;
  v17 = *a4;
  *a4 = v16;

  v18 = *a5;
  *a5 = v15;

  v19 = *a4;
  v20 = *a3;
  v21 = [v19 routeOffset];
  v22 = [v20 routeOffset];
  if (v21 >= v22)
  {

    if (v21 != v22 || *(&v21 + 1) >= *(&v22 + 1))
    {
      return;
    }
  }

  else
  {
  }

  v23 = *a3;
  *a3 = 0;
  v24 = *a4;
  *a4 = 0;
  v25 = *a3;
  *a3 = v24;

  v26 = *a4;
  *a4 = v23;

  v27 = *a3;
  v28 = *a2;
  v29 = [v27 routeOffset];
  v30 = [v28 routeOffset];
  if (v29 >= v30)
  {

    if (v29 != v30 || *(&v29 + 1) >= *(&v30 + 1))
    {
      return;
    }
  }

  else
  {
  }

  v31 = *a2;
  *a2 = 0;
  v32 = *a3;
  *a3 = 0;
  v33 = *a2;
  *a2 = v32;

  v34 = *a3;
  *a3 = v31;

  v35 = *a2;
  v36 = *a1;
  v37 = [v35 routeOffset];
  v38 = [v36 routeOffset];
  if (v37 >= v38)
  {

    if (v37 != v38 || *(&v37 + 1) >= *(&v38 + 1))
    {
      return;
    }
  }

  else
  {
  }

  v39 = *a1;
  *a1 = 0;
  v40 = *a2;
  *a2 = 0;
  v41 = *a1;
  *a1 = v40;

  v42 = *a2;
  *a2 = v39;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*>(id *a1, void **a2)
{
  v2 = a2;
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }

    goto LABEL_11;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
LABEL_11:
    v9 = a1 + 2;
    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(a1, a1 + 1, a1 + 2);
    v10 = a1 + 3;
    if (a1 + 3 != v2)
    {
      v11 = 0;
      v12 = 0;
      v35 = v2;
      do
      {
        v13 = *v10;
        v14 = *v9;
        v15 = [v13 routeOffset];
        v16 = [v14 routeOffset];
        if (v15 >= v16)
        {

          if (v15 != v16 || *(&v15 + 1) >= *(&v16 + 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
        }

        v18 = *v10;
        v19 = *v9;
        *v9 = 0;
        *v10 = v19;
        v20 = v11;
        do
        {
          v21 = a1 + v20;
          v22 = *(a1 + v20 + 8);
          v23 = [v18 routeOffset];
          v24 = [v22 routeOffset];
          if (v23 >= v24)
          {

            if (v23 != v24 || *(&v23 + 1) >= *(&v24 + 1))
            {
              v28 = (a1 + v20 + 16);
              goto LABEL_30;
            }
          }

          else
          {
          }

          v26 = *(v21 + 1);
          v27 = *(v21 + 2);
          *(v21 + 1) = 0;
          *(v21 + 2) = v26;

          v20 -= 8;
        }

        while (v20 != -16);
        v28 = a1;
LABEL_30:
        v2 = v35;
        v29 = *v28;
        *v28 = v18;

        if (++v12 == 8)
        {
          return v10 + 1 == v35;
        }

LABEL_31:
        v9 = v10;
        v11 += 8;
        ++v10;
      }

      while (v10 != v2);
    }

    return 1;
  }

  v5 = *(a2 - 1);
  v6 = *a1;
  v7 = [v5 routeOffset];
  v8 = [v6 routeOffset];
  if (v7 < v8)
  {

LABEL_36:
    v31 = *a1;
    *a1 = 0;
    v32 = *(v2 - 1);
    *(v2 - 1) = 0;
    v33 = *a1;
    *a1 = v32;

    v34 = *(v2 - 1);
    *(v2 - 1) = v31;

    return 1;
  }

  result = 1;
  if (v7 == v8 && *(&v7 + 1) < *(&v8 + 1))
  {
    goto LABEL_36;
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<VKTrafficFeature * {__strong}>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x80040B8603338uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

mdm::zone_mallocator *std::__split_buffer<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    *(a1 + 2) = i - 8;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VKTrafficFeature * {__strong}>(v5, v4);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VKTrafficFeature * {__strong}>(uint64_t a1, void *a2)
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

uint64_t *std::__tree<std::__value_type<VKTrafficFeatureType,unsigned long>,std::__map_value_compare<VKTrafficFeatureType,std::__value_type<VKTrafficFeatureType,unsigned long>,std::less<VKTrafficFeatureType>,true>,geo::allocator_adapter<std::__value_type<VKTrafficFeatureType,unsigned long>,mdm::zone_mallocator>>::__emplace_unique_key_args<VKTrafficFeatureType,std::piecewise_construct_t const&,std::tuple<VKTrafficFeatureType&&>,std::tuple<>>(uint64_t **a1, uint64_t a2, uint64_t **a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    do
    {
      while (1)
      {
        v7 = v5;
        v8 = v5[4];
        if (v8 <= a2)
        {
          break;
        }

        v5 = *v7;
        v6 = v7;
        if (!*v7)
        {
          goto LABEL_10;
        }
      }

      if (v8 >= a2)
      {
        return v7;
      }

      v5 = v7[1];
    }

    while (v5);
    v6 = v7 + 1;
  }

  else
  {
    v7 = a1 + 1;
  }

LABEL_10:
  v9 = mdm::zone_mallocator::instance(a1);
  v10 = pthread_rwlock_rdlock((v9 + 32));
  if (v10)
  {
    geo::read_write_lock::logFailure(v10, "read lock", v11);
  }

  v14 = malloc_type_zone_malloc(*v9, 0x30uLL, 0x1020040B4C458C3uLL);
  atomic_fetch_add((v9 + 24), 1u);
  geo::read_write_lock::unlock((v9 + 32));
  v14[4] = **a3;
  v14[5] = 0;
  *v14 = 0;
  v14[1] = 0;
  v14[2] = v7;
  *v6 = v14;
  v12 = **a1;
  v13 = v14;
  if (v12)
  {
    *a1 = v12;
    v13 = *v6;
  }

  std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], v13);
  a1[3] = (a1[3] + 1);
  return v14;
}

void std::__tree<std::__value_type<VKTrafficFeatureType,unsigned long>,std::__map_value_compare<VKTrafficFeatureType,std::__value_type<VKTrafficFeatureType,unsigned long>,std::less<VKTrafficFeatureType>,true>,geo::allocator_adapter<std::__value_type<VKTrafficFeatureType,unsigned long>,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<VKTrafficFeatureType,unsigned long>,std::__map_value_compare<VKTrafficFeatureType,std::__value_type<VKTrafficFeatureType,unsigned long>,std::less<VKTrafficFeatureType>,true>,geo::allocator_adapter<std::__value_type<VKTrafficFeatureType,unsigned long>,mdm::zone_mallocator>>::destroy(*a1);
    v2 = std::__tree<std::__value_type<VKTrafficFeatureType,unsigned long>,std::__map_value_compare<VKTrafficFeatureType,std::__value_type<VKTrafficFeatureType,unsigned long>,std::less<VKTrafficFeatureType>,true>,geo::allocator_adapter<std::__value_type<VKTrafficFeatureType,unsigned long>,mdm::zone_mallocator>>::destroy(a1[1]);
    v3 = mdm::zone_mallocator::instance(v2);
    v4 = pthread_rwlock_rdlock((v3 + 32));
    if (v4)
    {
      geo::read_write_lock::logFailure(v4, "read lock", v5);
    }

    atomic_fetch_add((v3 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v3, a1);

    geo::read_write_lock::unlock((v3 + 32));
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(uint64_t a1, void *a2)
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

void ggl::PipelineState::~PipelineState(ggl::PipelineState *this)
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

void ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::~DefaultPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewCommonConstantData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 64) = a3;
  *(a1 + 72) = 0;
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 72);
  *(a2 + 64) = a3;
  *(a2 + 72) = a4;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void md::Logic<md::RouteOverlayLogic,md::RouteOverlayContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

id GEOGetVectorKitRouteOverlayLogicLog(void)
{
  if (GEOGetVectorKitRouteOverlayLogicLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitRouteOverlayLogicLog(void)::onceToken, &__block_literal_global_134);
  }

  v1 = GEOGetVectorKitRouteOverlayLogicLog(void)::log;

  return v1;
}

void *std::vector<geo::PolylineCoordinate>::__assign_with_size[abi:nn200100]<geo::PolylineCoordinate*,geo::PolylineCoordinate*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (!(v10 >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v10);
      }
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void ___ZL35GEOGetVectorKitRouteOverlayLogicLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "RouteOverlayLogic");
  v1 = GEOGetVectorKitRouteOverlayLogicLog(void)::log;
  GEOGetVectorKitRouteOverlayLogicLog(void)::log = v0;
}

void geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1F258;

  JUMPOUT(0x1B8C62190);
}

uint64_t md::Logic<md::RouteOverlayLogic,md::RouteOverlayContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x13043386C0978CC2 && *(a3 + 32))
  {
    *&v6[2] = v4;
    v7 = v5;
    return (*(*result + 160))(result, a2, v6);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::RouteOverlayContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::RouteOverlayContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::RouteOverlayContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::RouteOverlayContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E2F90;
  v2 = a1[4];
  if (v2)
  {
    md::RouteOverlayContext::~RouteOverlayContext(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

void md::RouteOverlayLogic::~RouteOverlayLogic(md::RouteOverlayLogic *this)
{
  md::RouteOverlayLogic::~RouteOverlayLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E2EB8;
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    operator delete(v2);
  }

  *(this + 19) = &unk_1F2A580E8;
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void geo::_retain_ptr<VKRouteContext * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A580E8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKRouteContext * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A580E8;

  return a1;
}

void md::MuninJunctionIntersection::createLabels(uint64_t a1, void *a2)
{
  md::LabelSettingsStyleCache::muninRoadStyle(*(*(*a2 + 336) + 200));
  v4 = *(a1 + 8);
  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[3];
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  v8 = v5 * 6.28318531;
  v9 = exp(v6 * 6.28318531 + -3.14159265);
  v10 = atan(v9) * 2.0 + -1.57079633;
  v11 = fmod(v8, 6.28318531);
  v12 = fmod(v11 + 6.28318531, 6.28318531) + -3.14159265;
  v13 = __sincos_stret(v10);
  v14 = 6378137.0 / sqrt(v13.__sinval * v13.__sinval * -0.00669437999 + 1.0);
  v15 = (v14 + v7) * v13.__cosval;
  v16 = __sincos_stret(v12);
  v37[0] = v15 * v16.__cosval;
  v37[1] = v15 * v16.__sinval;
  v37[2] = (v7 + v14 * 0.99330562) * v13.__sinval;
  v17 = a2[6];
  v18 = gm::Matrix<double,3,1>::normalized<int,void>(v37);
  v20 = v19;
  v22 = v21;
  for (i = 0; i != 3; ++i)
  {
    *(v30 + i * 8) = *(v17 + 136 + i * 8) - v37[i];
  }

  v24 = gm::Matrix<double,3,1>::normalized<int,void>(v30);
  v27 = -(v25 * v22 - v26 * v20);
  v28 = -(v26 * v18 - v24 * v22);
  v29 = -(v24 * v20 - v25 * v18);
  v34 = -(v29 * v20 - v28 * v22);
  v35 = -(v27 * v22 - v29 * v18);
  v36 = -(v28 * v18 - v27 * v20);
  v32 = 0;
  v33 = 0;
  memset(v30, 0, sizeof(v30));
  v31 = 2;
  atomic_load((*a2 + 3426));
  operator new();
}

void sub_1B2C13974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<md::MuninRoadFeature>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    v2 = *(a1 + 80);
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, v2);
  }

  if (*(a1 + 71) < 0)
  {
    v4 = *(a1 + 48);
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v5, v4);
  }

  v6 = *(a1 + 40);
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<md::MuninRoadFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2A040;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MuninJunctionIntersection::~MuninJunctionIntersection(md::MuninJunctionIntersection *this)
{
  *this = &unk_1F2A59080;
  v1 = (this + 16);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v1);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A59080;
  v1 = (this + 16);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v1);
}

uint64_t md::LabelPart::partIntersectsDisplayFrustum(void *a1, double *a2)
{
  result = md::CollisionObject::intersectsWorldFrustum(a1[3] + 312, a2);
  if (result)
  {
    v5 = *(*a1 + 496);

    return v5(a1, a2);
  }

  return result;
}

uint64_t md::CollisionObject::intersectsWorldFrustum(uint64_t a1, double *a2)
{
  v94 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 112);
  if (v3 || *(a1 + 120))
  {
    v4 = 0;
    v5 = &v72;
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
    v88 = vaddq_f64(v72, v78);
    v89 = vaddq_f64(v73, v79);
    v90 = vsubq_f64(v78, v72);
    v91 = vsubq_f64(v79, v73);
    v84 = vaddq_f64(v74, v78);
    v85 = vaddq_f64(v75, v79);
    v86 = vsubq_f64(v78, v74);
    v87 = vsubq_f64(v79, v75);
    v80 = v76;
    v81 = v77;
    v82 = vsubq_f64(v78, v76);
    v83 = vsubq_f64(v79, v77);
    do
    {
      v11 = 0;
      v12 = &v80.f64[4 * v10];
      v13 = *(v12 + 2);
      v92 = *v12;
      v93.i64[0] = v13;
      v14 = 0.0;
      do
      {
        v14 = v14 + *(&v92 + v11) * *(&v92 + v11);
        v11 += 8;
      }

      while (v11 != 24);
      v15 = 0;
      v16 = 1.0 / sqrt(v14);
      do
      {
        v67.f64[v15] = *(&v92 + v15 * 8) * v16;
        ++v15;
      }

      while (v15 != 3);
      v17 = &v71[32 * v10];
      v18 = v68;
      v19 = *(v12 + 3) * v16;
      *v17 = v67;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
      ++v10;
    }

    while (v10 != 6);
    geo::Frustum<double>::calculateCorners(v71, a2, 0.0);
    if (v3)
    {
      v20 = *v3;
      v21 = *(v3 + 1);
      v22 = *(v3 + 3);
      v82 = *(v3 + 2);
      v83 = v22;
      v80 = v20;
      v81 = v21;
      v23 = *(v3 + 4);
      v24 = *(v3 + 5);
      v25 = *(v3 + 6);
      v26 = *(v3 + 7);
      v86 = v25;
      v87 = v26;
      v84 = v23;
      v85 = v24;
    }

    else
    {
      geo::Transform<double>::toMatrix(&v80, *(a1 + 120));
    }

    if (*(a1 + 152) == 1)
    {
      for (i = 0; i != 3; ++i)
      {
        v67.f64[i] = *(a1 + 128 + 4 * i);
      }

      v28 = (a1 + 140);
      for (j = 3; j != 6; ++j)
      {
        v30 = *v28++;
        v67.f64[j] = v30;
      }

      v72 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v73 = xmmword_1B33B0520;
      v74 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      *&v92 = &unk_1F2A61070;
      *(&v92 + 1) = &v72;
      v93.i64[0] = &v80;
      v93.i64[1] = &v92;
      gm::Box<double,3>::forEachCorner(&v67, &v92);
      std::__function::__value_func<void ()(gm::Matrix<double,3,1> &)>::~__value_func[abi:nn200100](&v92);
      v31 = 0;
      for (k = v71; ; k += 32)
      {
        v33 = 0;
        v34 = *&v71[v31 + 16];
        v92 = *&v71[v31];
        v93.i64[0] = v34;
        do
        {
          v35 = &v72.f64[v33];
          if (*(&v92 + v33 * 8) >= 0.0)
          {
            v35 = &v73.f64[v33 + 1];
          }

          v67.f64[v33++] = *v35;
        }

        while (v33 != 3);
        v36 = 0;
        v37 = 0.0;
        do
        {
          v37 = v37 + *&k[v36 * 8] * v67.f64[v36];
          ++v36;
        }

        while (v36 != 3);
        if (*&v71[v31 + 24] + v37 < 0.0)
        {
          break;
        }

        v31 += 32;
        if (v31 == 192)
        {
          return 1;
        }
      }
    }

    else
    {
      v38 = 0;
      v39 = 0;
      v40 = 96;
      if (*(a1 + 199))
      {
        v40 = 100;
      }

      LODWORD(v23.f64[0]) = *(a1 + v40);
      do
      {
        v24.i32[0] = *(a1 + 8 + 4 * v39);
        v25.i32[0] = *(a1 + 4 * v39);
        if (v38)
        {
          break;
        }

        v38 = 1;
        v39 = 1;
      }

      while (v24.f32[0] >= v25.f32[0]);
      v41 = 0;
      v42 = 0;
      *v23.f64 = -*v23.f64;
      v43 = vdupq_lane_s32(*&v23.f64[0], 0);
      v44.i64[0] = vaddq_f32(*a1, v43).u64[0];
      v44.i64[1] = vsubq_f32(*a1, v43).i64[1];
      v45 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v25, v24), 0), *a1, v44);
      v65 = v45.i64[0];
      v66 = v45.i32[2];
      do
      {
        if (v42 >= 2)
        {
          v46 = *&v45.i32[1];
        }

        else
        {
          v46 = *&v45.i32[3];
        }

        v47 = (&v92 + v41);
        *v47 = *(&v65 + (~v41 & 8));
        v47[1] = v46;
        ++v42;
        v41 += 8;
      }

      while (v42 != 4);
      v93 = vextq_s8(v93, v93, 8uLL);
      v67 = vcvtq_f64_f32(*&v92);
      v68 = 0;
      v48 = 0;
      v72.f64[0] = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v80.f64, &v67);
      v72.f64[1] = v49;
      v73.f64[0] = v50;
      v63 = 0;
      v64 = 0;
      v51 = &v72;
      while (v48 != 4)
      {
        v52 = v48 + 1;
        if (v48 == 3)
        {
          v53 = 0;
        }

        else
        {
          v53 = v48 + 1;
        }

        if (v48 != 3)
        {
          v67 = vcvtq_f64_f32(*(&v92 + 8 * v52));
          v68 = 0;
          v54 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v80.f64, &v67);
          v55 = &v72 + 24 * v52;
          *v55 = v54;
          *(v55 + 1) = v56;
          *(v55 + 2) = v57;
        }

        v58 = 0;
        v59 = &v72 + 24 * v48;
        do
        {
          v67.f64[v58] = v72.f64[3 * v53 + v58] - v51->f64[v58];
          ++v58;
        }

        while (v58 != 3);
        v60 = v68;
        v61 = v67;
        v67 = *v59;
        v68 = *(v59 + 2);
        v69 = v61;
        v70 = v60;
        v51 = (v51 + 24);
        ++v48;
        if (geo::Intersect::internal::intersection<double,std::array<gm::Plane3<double>,6ul>>(v71, &v67, 2, &v64, &v63))
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

__n128 std::__function::__func<gm::Box<double,3>::transformedAndEnclosed(gm::Matrix<double,4,4> const&)::{lambda(gm::Matrix<double,3,1> &)#1},std::allocator<gm::Box<double,3>::transformedAndEnclosed(gm::Matrix<double,4,4> const&)::{lambda(gm::Matrix<double,3,1> &)#1}>,void ()(gm::Matrix<double,3,1> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A61070;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::LabelPart::partIntersectsStagingFrustum(void *a1, double *a2)
{
  result = md::CollisionObject::intersectsWorldFrustum(a1[3] + 72, a2);
  if (result)
  {
    v5 = *(*a1 + 488);

    return v5(a1, a2);
  }

  return result;
}

uint64_t md::LabelPart::partCollidesWithDisplayObject(md::LabelPart *this, const md::CollisionObject *a2)
{
  v2 = 0;
  v3 = *(this + 3);
  v4 = v3 + 392;
  v5 = v3 + 400;
  v6 = 1;
  while (*(v5 + 4 * v2) > *(a2 + v2 + 20) && *(v4 + 4 * v2) < *(a2 + v2 + 22))
  {
    v7 = v6;
    v6 = 0;
    v2 = 1;
    if ((v7 & 1) == 0)
    {
      return (*(*this + 480))();
    }
  }

  return 0;
}

uint64_t md::LabelPart::setPartRotation(uint64_t result, float *a2)
{
  v2 = *a2;
  *(result + 288) = *a2;
  v3 = a2[1];
  *(result + 292) = v3;
  v4 = *(result + 296);
  v5 = *(result + 300);
  v6 = v4 * v3;
  v7 = -((v5 * v3) - (v4 * v2));
  *(result + 88) = v7;
  *(result + 92) = v6 + (v5 * v2);
  *(result + 268) = fabsf(v7 + -1.0) > 0.000001;
  v8 = *a2;
  *(result + 528) = *a2;
  v9 = a2[1];
  *(result + 532) = v9;
  v10 = *(result + 536);
  v11 = *(result + 540);
  v12 = v10 * v9;
  v13 = -((v11 * v9) - (v10 * v8));
  *(result + 328) = v13;
  *(result + 332) = v12 + (v11 * v8);
  *(result + 508) = fabsf(v13 + -1.0) > 0.000001;
  return result;
}

float md::LabelPart::animationSize(md::LabelPart *this)
{
  v1 = 0;
  v2 = 0;
  v3 = *(this + 3);
  do
  {
    v4 = *(v3 + 80 + 4 * v2);
    v5 = *(v3 + 72 + 4 * v2);
    if (v1)
    {
      break;
    }

    v1 = 1;
    v2 = 1;
  }

  while (v4 >= v5);
  result = 0.0;
  if (v4 >= v5)
  {
    return *(v3 + 84) - *(v3 + 76);
  }

  return result;
}

void md::ExternalMeshLabelPart::pushToRenderModel(uint64_t a1, void *a2, float a3)
{
  v3 = *(a1 + 576);
  if (v3)
  {
    *(v3 + 112) = a3;
    *(a1 + 552) = fmaxf(fminf(a3, 1.0), 0.0);
    v6 = a2[6];
    v5 = a2[7];
    if (v6 >= v5)
    {
      v8 = a2[5];
      v9 = (v6 - v8) >> 3;
      if ((v9 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v10 = v5 - v8;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        v13 = mdm::zone_mallocator::instance(a1);
        v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelExternalMesh *>(v13, v12);
      }

      else
      {
        v14 = 0;
      }

      v16 = &v14[8 * v12];
      v15 = &v14[8 * v9];
      *v15 = v3;
      v7 = v15 + 8;
      v17 = a2[5];
      v18 = a2[6] - v17;
      v19 = &v15[-v18];
      v20 = memcpy(&v15[-v18], v17, v18);
      v21 = a2[5];
      a2[5] = v19;
      a2[6] = v7;
      a2[7] = v16;
      if (v21)
      {
        v22 = mdm::zone_mallocator::instance(v20);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelExternalMesh *>(v22, v21);
      }
    }

    else
    {
      *v6 = v3;
      v7 = v6 + 1;
    }

    a2[6] = v7;
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelExternalMesh *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelExternalMesh *>(uint64_t a1, void *a2)
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

uint64_t md::ExternalMeshLabelPart::layoutForDisplay(uint64_t a1)
{
  if (*(a1 + 576))
  {
    return 37;
  }

  else
  {
    return 26;
  }
}

uint64_t md::ExternalMeshLabelPart::layoutForStaging(void *a1)
{
  v1 = a1[74];
  v2 = a1[72];
  if (!v1)
  {
    if (v2)
    {
      return 37;
    }

    return 26;
  }

  if (v2)
  {
    return 37;
  }

  std::mutex::lock((v1 + 96));
  v4 = *(v1 + 176);
  std::mutex::unlock((v1 + 96));
  if (v4 < 2)
  {
    return 25;
  }

  if (v4 - 3 < 2)
  {
    return 26;
  }

  if (v4 != 2)
  {
    return 37;
  }

  v5 = a1[74];
  std::mutex::lock((v5 + 96));
  v6 = *(v5 + 160);
  v10 = v6;
  if (*(&v6 + 1))
  {
    atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock((v5 + 96));
  v7 = a1[73];
  *(a1 + 36) = v10;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    v8 = a1[72];
  }

  else
  {
    v8 = v10;
  }

  if (v8)
  {
    return 37;
  }

  else
  {
    return 26;
  }
}

uint64_t md::LabelPart::setInWorldSpace(uint64_t this, char a2, char a3)
{
  *(this + 565) = a2;
  *(this + 566) = a3;
  return this;
}

void md::ExternalMeshLabelPart::~ExternalMeshLabelPart(md::ExternalMeshLabelPart *this)
{
  md::ExternalMeshLabelPart::~ExternalMeshLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

{
  *this = &unk_1F29E2FE8;
  v2 = *(this + 72);
  if (v2)
  {
    atomic_store(1u, (v2 + 116));
  }

  else
  {
    v3 = *(this + 74);
    std::mutex::lock((v3 + 96));
    *(v3 + 176) = 4;
    v4 = *(v3 + 160);
    if (v4)
    {
      atomic_store(1u, (v4 + 116));
    }

    std::mutex::unlock((v3 + 96));
  }

  v5 = *(this + 75);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 73);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  *this = &unk_1F2A5B190;
  md::CollisionObject::~CollisionObject(this + 39);
  md::CollisionObject::~CollisionObject(this + 9);
}

void sub_1B2C14A14(_Unwind_Exception *a1)
{
  v3 = *(v1 + 600);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 + 584);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *v1 = &unk_1F2A5B190;
  md::CollisionObject::~CollisionObject((v1 + 312));
  md::CollisionObject::~CollisionObject((v1 + 72));
  _Unwind_Resume(a1);
}

float std::__function::__func<md::ExternalMeshLabelPart::screenBoundsForWorldBounds(md::LabelLayoutContext const&,gm::Box<double,3> const&)::$_0,std::allocator<md::ExternalMeshLabelPart::screenBoundsForWorldBounds(md::LabelLayoutContext const&,gm::Box<double,3> const&)::$_0>,void ()(gm::Matrix<double,3,1> &)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = &v11;
  md::LabelLayoutContext::projectPointToPixel(*(a1 + 8), a2, &v11);
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = v5 + 8;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = v3->f32[0];
    *(v5 + 4 * v4) = fminf(v3->f32[0], *(v5 + 4 * v4));
    result = fmaxf(*(v6 + 4 * v4), v9);
    *(v6 + 4 * v4) = result;
    v3 = (&v11 + 4);
    v4 = 1;
    v7 = 0;
  }

  while ((v8 & 1) != 0);
  return result;
}

__n128 std::__function::__func<md::ExternalMeshLabelPart::screenBoundsForWorldBounds(md::LabelLayoutContext const&,gm::Box<double,3> const&)::$_0,std::allocator<md::ExternalMeshLabelPart::screenBoundsForWorldBounds(md::LabelLayoutContext const&,gm::Box<double,3> const&)::$_0>,void ()(gm::Matrix<double,3,1> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E3380;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__shared_ptr_emplace<ggl::ManeuverPoint::BasePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E33C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ManeuverPoint::Mesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3490;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::ManeuverPoint::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::ManeuverPoint::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3438;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Tile::View>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Tile::View>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5A688;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::IndexDataTyped<unsigned short>::~IndexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::IndexDataTyped<unsigned short>::~IndexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::IndexDataTyped<unsigned short>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5C730;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::ManeuverPoint::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::ManeuverPoint::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::ManeuverPoint::DefaultVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3400;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::RenderItem *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::RenderItem *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::StylesheetQuery<gss::PropertyID>,geo::allocator_adapter<gss::StylesheetQuery<gss::PropertyID>,gss::zone_mallocator>>>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(uint64_t a1, size_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, a2, 0x100004077774924uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::__function::__func<geo::intern_map_allocator<gss::PropertyID,unsigned long long,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1},std::allocator<geo::intern_map_allocator<gss::PropertyID,unsigned long long,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1}>,void ()(unsigned char *)>::operator()(gss::zone_mallocator *a1, void **a2)
{
  v2 = *a2;
  v3 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, v2);
}

void std::__function::__func<geo::intern_map_allocator<gss::PropertyID,unsigned int,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1},std::allocator<geo::intern_map_allocator<gss::PropertyID,unsigned int,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1}>,void ()(unsigned char *)>::operator()(gss::zone_mallocator *a1, void **a2)
{
  v2 = *a2;
  v3 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, v2);
}

void std::__function::__func<geo::intern_map_allocator<gss::PropertyID,unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1},std::allocator<geo::intern_map_allocator<gss::PropertyID,unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1}>,void ()(unsigned char *)>::operator()(gss::zone_mallocator *a1, void **a2)
{
  v2 = *a2;
  v3 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, v2);
}

void geo::intern_vector<gss::StylePropertySet<gss::PropertyID>,unsigned short,geo::allocator_adapter<gss::StylePropertySet<gss::PropertyID>,gss::zone_mallocator>>::runDestructors(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v3 + 96));
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v3 + 72));
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v3 + 48));
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v3 + 24));
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v3);
      v3 += 120;
    }

    while (v3 != a2);
  }
}

void geo::intern_vector<gss::StylePropertySet<gss::PropertyID>,unsigned short,geo::allocator_adapter<gss::StylePropertySet<gss::PropertyID>,gss::zone_mallocator>>::deallocateStorage(uint64_t a1)
{
  if ((*(a1 + 12) & 1) == 0)
  {
    v2 = *a1;
    if (*a1)
    {
      geo::intern_vector<gss::StylePropertySet<gss::PropertyID>,unsigned short,geo::allocator_adapter<gss::StylePropertySet<gss::PropertyID>,gss::zone_mallocator>>::runDestructors(v2, v2 + 120 * *(a1 + 8));
      v3 = *a1;
      v5 = gss::zone_mallocator::instance(v4);
      v6 = pthread_rwlock_rdlock((v5 + 32));
      if (v6)
      {
        geo::read_write_lock::logFailure(v6, "read lock", v7);
      }

      if (v3)
      {
        atomic_fetch_add((v5 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v5, v3);
      geo::read_write_lock::unlock((v5 + 32));
    }
  }

  *(a1 + 5) = 0;
  *a1 = 0;
}

BOOL gss::DashPattern::operator==(float *a1, uint64_t a2)
{
  if (a1[8] != *(a2 + 32))
  {
    return 0;
  }

  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = v3 - *a1;
  if (v4 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v5 = 0;
  v6 = v4 >> 2;
  v7 = 1;
  do
  {
    v8 = vabds_f32(*(v2 + 4 * v5), *(*a2 + 4 * v5));
    result = v8 <= 0.00000011921;
    v5 = v7++;
  }

  while (v8 <= 0.00000011921 && v6 > v5);
  return result;
}

unint64_t std::hash<gss::DashPattern>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 == 0.0)
  {
    result = 0x9E3779B97F4A8048;
  }

  else
  {
    result = (LODWORD(v2) - 0x61C8864680B57FA7) ^ 0x11;
  }

  v5 = *a1;
  v4 = *(a1 + 8);
  while (v5 != v4)
  {
    v6 = *v5++;
    v7 = LODWORD(v6) - 0x61C8864680B583EBLL;
    if (v6 == 0.0)
    {
      v7 = 0x9E3779B97F4A7C15;
    }

    result ^= (result >> 2) + (result << 6) + v7;
  }

  return result;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::CartoStyle<gss::PropertyID>::ResolvedStyle,geo::allocator_adapter<gss::CartoStyle<gss::PropertyID>::ResolvedStyle,gss::zone_mallocator>>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<gss::CartoStyle<gss::PropertyID>::ResolvedStyle,geo::allocator_adapter<gss::CartoStyle<gss::PropertyID>::ResolvedStyle,gss::zone_mallocator>>::__on_zero_shared_weak(gss::zone_mallocator *a1)
{
  v2 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::CartoStyle<gss::PropertyID>::ResolvedStyle,geo::allocator_adapter<gss::CartoStyle<gss::PropertyID>::ResolvedStyle,gss::zone_mallocator>>>(v2, a1);
}

void std::__shared_ptr_emplace<gss::CartoStyle<gss::PropertyID>::ResolvedStyle,geo::allocator_adapter<gss::CartoStyle<gss::PropertyID>::ResolvedStyle,gss::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5B6E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void gss::Queryable<gss::PropertyID>::~Queryable(uint64_t a1)
{
  gss::Queryable<gss::PropertyID>::~Queryable(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<gss::StyleAttribute,unsigned short>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x1000040789AEA99uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *> *> *>(uint64_t a1, void *a2)
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

void gss::StylesheetQuery<gss::PropertyID>::~StylesheetQuery(void *a1)
{
  *a1 = &unk_1F2A5B638;
  v2 = a1[40];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[38];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 34));
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a1 + 30));
  gss::Queryable<gss::PropertyID>::~Queryable(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<gss::StylesheetQuery<gss::PropertyID>,geo::allocator_adapter<gss::StylesheetQuery<gss::PropertyID>,gss::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5B600;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::SamplerState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5D628;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MeshRenderableBuilder::buildRenderable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6, char a7, char a8, char a9, char a10, char a11, uint64_t a12, int a13, char a14, __int16 a15, char a16, uint64_t a17, uint64_t a18, char a19, char a20)
{
  v84 = a5;
  *a1 = &unk_1F2A3CEF8;
  *(a1 + 8) = *(a3 + 8);
  v27 = *(a3 + 32);
  *(a1 + 24) = *(a3 + 24);
  *(a1 + 32) = v27;
  v28 = *(a3 + 40);
  *(a1 + 40) = v28;
  if (v28)
  {
    atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
  }

  v29 = *(a3 + 128);
  *(a1 + 112) = *(a3 + 112);
  *(a1 + 128) = v29;
  *(a1 + 143) = *(a3 + 143);
  v30 = *(a3 + 64);
  *(a1 + 48) = *(a3 + 48);
  *(a1 + 64) = v30;
  v31 = *(a3 + 96);
  *(a1 + 80) = *(a3 + 80);
  *(a1 + 96) = v31;
  *(a1 + 152) = 0;
  *(a1 + 176) = 0;
  if (*(a3 + 176) == 1)
  {
    v32 = *(a3 + 160);
    *(a1 + 152) = *(a3 + 152);
    *(a1 + 160) = v32;
    if (v32)
    {
      atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 168) = *(a3 + 168);
    *(a1 + 176) = 1;
  }

  *(a1 + 184) = *(a3 + 184);
  *(a1 + 192) = 0;
  if (*(a3 + 193) == 1)
  {
    *(a1 + 192) = *(a3 + 192);
    *(a1 + 193) = 1;
  }

  *(a1 + 212) = *(a3 + 212);
  *(a1 + 196) = *(a3 + 196);
  *a1 = &unk_1F2A0B978;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 240) = 1;
  *(a1 + 360) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 368) = 3;
  *(a1 + 372) = 0;
  *(a1 + 388) = 0;
  *(a1 + 392) = 0;
  v33 = *a4;
  v34 = **(*a4 + 48);
  v35 = *(*a4 + 16);
  if (!v35 || !gms::_Material<ggl::Texture2D>::zoomable(v35, 3u) || v34 >= 1.0)
  {
    v36 = *(v33 + 32);
    if (!v36 || !gms::_Material<ggl::Texture2D>::zoomable(v36, 3u) || v34 <= 0.0)
    {
      v37 = *(a2 + 16);
      v82 = 3;
      v38 = *(a2 + 40);
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      md::MaterialTextureManager::textureFromMaterial(&v83, v37, a4, &v84, &v82, 0);
      v39 = *(a1 + 280);
      *(a1 + 272) = v83;
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v39);
      }

      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v38);
      }
    }
  }

  v40 = *a4;
  v41 = **(*a4 + 48);
  v42 = *(*a4 + 16);
  if (!v42 || !gms::_Material<ggl::Texture2D>::zoomable(v42, 4u) || v41 >= 1.0)
  {
    v43 = *(v40 + 32);
    if (!v43 || !gms::_Material<ggl::Texture2D>::zoomable(v43, 4u) || v41 <= 0.0)
    {
      v44 = *(a2 + 16);
      v82 = 4;
      v45 = *(a2 + 40);
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      md::MaterialTextureManager::textureFromMaterial(&v83, v44, a4, &v84, &v82, 0);
      v46 = *(a1 + 296);
      *(a1 + 288) = v83;
      if (v46)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v46);
      }

      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v45);
      }
    }
  }

  if (*a6)
  {
    std::allocate_shared[abi:nn200100]<md::SharedTexture2D,std::allocator<md::SharedTexture2D>,std::shared_ptr<ggl::Texture2D> &,decltype(nullptr),0>();
  }

  v47 = *a4;
  v48 = **(*a4 + 48);
  v49 = *(*a4 + 16);
  if (!v49 || !gms::_Material<ggl::Texture2D>::zoomable(v49, 1u) || v48 >= 1.0)
  {
    v50 = *(v47 + 32);
    if (!v50 || !gms::_Material<ggl::Texture2D>::zoomable(v50, 1u) || v48 <= 0.0)
    {
      v51 = *(a2 + 16);
      v82 = 1;
      v52 = *(a2 + 40);
      if (v52)
      {
        atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      md::MaterialTextureManager::textureFromMaterial(&v83, v51, a4, &v84, &v82, 0);
      v53 = *(a1 + 256);
      *(a1 + 248) = v83;
      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v53);
      }

      if (v52)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v52);
      }
    }
  }

  v54 = *a4;
  v55 = **(*a4 + 48);
  v56 = *(*a4 + 16);
  if (!v56 || !gms::_Material<ggl::Texture2D>::zoomable(v56, 0xBu) || v55 >= 1.0)
  {
    v57 = *(v54 + 32);
    if (!v57 || !gms::_Material<ggl::Texture2D>::zoomable(v57, 0xBu) || v55 <= 0.0)
    {
      v58 = (*(**a4 + 352))(*a4, 0.0);
      *(a1 + 240) = ((v58 & 0x100) == 0) | v58 & 1;
    }
  }

  v59 = *a4;
  v60 = **(*a4 + 48);
  v61 = *(*a4 + 16);
  if (!v61 || !gms::_Material<ggl::Texture2D>::zoomable(v61, 0x10u) || v60 >= 1.0)
  {
    v62 = *(v59 + 32);
    if (!v62 || !gms::_Material<ggl::Texture2D>::zoomable(v62, 0x10u) || v60 <= 0.0)
    {
      v63 = (*(**a4 + 552))(*a4, 0.0);
      *(a1 + 146) = ((v63 & 0x100) == 0) | v63 & 1;
    }
  }

  if (*(a1 + 360) == *(a17 + 56))
  {
    if (*(a1 + 360))
    {
      v65 = *a17;
      v64 = *(a17 + 8);
      if (v64)
      {
        atomic_fetch_add_explicit((v64 + 8), 1uLL, memory_order_relaxed);
      }

      v66 = *(a1 + 312);
      *(a1 + 304) = v65;
      *(a1 + 312) = v64;
      if (v66)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v66);
      }

      *(a1 + 320) = *(a17 + 16);
      v68 = *(a17 + 24);
      v67 = *(a17 + 32);
      if (v67)
      {
        atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
      }

      v69 = *(a1 + 336);
      *(a1 + 328) = v68;
      *(a1 + 336) = v67;
      if (v69)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v69);
      }

      v71 = *(a17 + 40);
      v70 = *(a17 + 48);
      if (v70)
      {
        atomic_fetch_add_explicit((v70 + 8), 1uLL, memory_order_relaxed);
      }

      v72 = *(a1 + 352);
      *(a1 + 344) = v71;
      *(a1 + 352) = v70;
      if (v72)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v72);
      }
    }
  }

  else if (*(a1 + 360))
  {
    v73 = *(a1 + 352);
    if (v73)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v73);
    }

    v74 = *(a1 + 336);
    if (v74)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v74);
    }

    v75 = *(a1 + 312);
    if (v75)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v75);
    }

    *(a1 + 360) = 0;
  }

  else
  {
    std::construct_at[abi:nn200100]<md::RasterOverlayRenderPatch,md::RasterOverlayRenderPatch const&,md::RasterOverlayRenderPatch*>(a1 + 304, a17);
    *(a1 + 360) = 1;
  }

  *(a1 + 232) = a5;
  v77 = *a4;
  v76 = a4[1];
  if (v76)
  {
    atomic_fetch_add_explicit((v76 + 8), 1uLL, memory_order_relaxed);
  }

  v78 = *(a1 + 224);
  *(a1 + 216) = v77;
  *(a1 + 224) = v76;
  if (v78)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v78);
  }

  v79 = (a1 + 372);
  *(a1 + 144) = a7 & *(a1 + 240);
  *(a1 + 48) = *a18;
  *(a1 + 64) = *(a18 + 16);
  *(a1 + 145) = a8;
  *(a1 + 368) = a9;
  *(a1 + 147) = a10 ^ 1;
  v80 = *(a1 + 388);
  if (v80 == *(a12 + 16))
  {
    if (*(a1 + 388))
    {
      *v79 = *a12;
    }
  }

  else
  {
    if (v80)
    {
      v81 = 0;
    }

    else
    {
      *v79 = *a12;
      v81 = 1;
    }

    *(a1 + 388) = v81;
  }

  *(a1 + 196) = a13;
  *(a1 + 200) = a14;
  *(a1 + 149) = a16;
  *(a1 + 369) = a11;
  *(a1 + 392) = a19;
  *(a1 + 150) = a20;
  if (*(a1 + 360) == 1)
  {
    *(a1 + 146) = 0;
  }
}

void sub_1B2C16330(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::MaterialRenderable::~MaterialRenderable(v1);
  _Unwind_Resume(a1);
}

void md::MaterialRenderable::~MaterialRenderable(md::MaterialRenderable *this)
{
  *this = &unk_1F2A0B978;
  if (*(this + 360) == 1)
  {
    v2 = *(this + 44);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    v3 = *(this + 42);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *(this + 39);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  v5 = *(this + 37);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 35);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 32);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 28);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  md::MeshRenderable::~MeshRenderable(this);
}

{
  md::MaterialRenderable::~MaterialRenderable(this);

  JUMPOUT(0x1B8C62190);
}

unint64_t md::MeshRenderable::hash(md::MeshRenderable *this)
{
  v1 = (*(this + 2) + (*(this + 8) << 6) + (*(this + 8) >> 2) - 0x61C8864680B583EBLL) ^ *(this + 8);
  v2 = (*(this + 3) + (v1 << 6) + (v1 >> 2) - 0x61C8864680B583EBLL) ^ v1;
  v3 = *(this + 4);
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(v3) ^ ((0x9DDFEA08EB382D69 * ((8 * (v3 & 0x1FFFFFFF) + 8) ^ HIDWORD(v3))) >> 47) ^ (0x9DDFEA08EB382D69 * ((8 * (v3 & 0x1FFFFFFF) + 8) ^ HIDWORD(v3))));
  v5 = ((v2 << 6) + (v2 >> 2) - 0x622015F714C7D297 * (v4 ^ (v4 >> 47)) - 0x61C8864680B583EBLL) ^ v2;
  v6 = *(this + 64);
  v7 = ((v6 | (v5 << 6)) + (v5 >> 2) - 0x61C8864680B583EBLL) ^ v5;
  if (v6 == 1)
  {
    v8 = (*(this + 6) - 0x61C8864680B583EBLL + (*(this + 6) >> 34) + (HIDWORD(*(this + 6)) << 6)) ^ HIDWORD(*(this + 6));
    v7 ^= (v7 << 6) - 0x61C8864680B583EBLL + (v7 >> 2) + ((*(this + 56) - 0x61C8864680B583EBLL + (v8 << 6) + (v8 >> 2)) ^ v8);
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = *(this + v9 + 76);
    v12 = LODWORD(v11) - 0x61C8864680B583EBLL;
    if (v11 == 0.0)
    {
      v12 = 0x9E3779B97F4A7C15;
    }

    v10 ^= (v10 >> 2) + (v10 << 6) + v12;
    v9 += 4;
  }

  while (v9 != 12);
  v13 = 0;
  v14 = 0;
  do
  {
    v15 = *(this + v13 + 88);
    v16 = LODWORD(v15) - 0x61C8864680B583EBLL;
    if (v15 == 0.0)
    {
      v16 = 0x9E3779B97F4A7C15;
    }

    v14 ^= (v14 >> 2) + (v14 << 6) + v16;
    v13 += 4;
  }

  while (v13 != 12);
  v17 = (((((v7 << 6) - 0x61C8864680B583EBLL + (v7 >> 2) + *(this + 72)) ^ v7) << 6) - 0x61C8864680B583EBLL + ((((v7 << 6) - 0x61C8864680B583EBLL + (v7 >> 2) + *(this + 72)) ^ v7) >> 2) + v10) ^ ((v7 << 6) - 0x61C8864680B583EBLL + (v7 >> 2) + *(this + 72)) ^ v7;
  v18 = ((v17 << 6) - 0x61C8864680B583EBLL + (v17 >> 2) + v14) ^ v17;
  v19 = ((v18 << 6) - 0x61C8864680B583EBLL + (v18 >> 2) + *(this + 144)) ^ v18;
  v20 = (*(this + 145) - 0x61C8864680B583EBLL + (v19 << 6) + (v19 >> 2)) ^ v19;
  v21 = (*(this + 146) - 0x61C8864680B583EBLL + (v20 << 6) + (v20 >> 2)) ^ v20;
  v22 = (*(this + 147) - 0x61C8864680B583EBLL + (v21 << 6) + (v21 >> 2)) ^ v21;
  v23 = 0x9DDFEA08EB382D69 * ((8 * (*(this + 26) & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*(this + 26)));
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(*(this + 26)) ^ (v23 >> 47) ^ v23)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(*(this + 26)) ^ (v23 >> 47) ^ v23)) >> 47)) - 0x61C8864680B583EBLL + (v22 << 6) + (v22 >> 2)) ^ v22;
}

uint64_t std::construct_at[abi:nn200100]<md::RasterOverlayRenderPatch,md::RasterOverlayRenderPatch const&,md::RasterOverlayRenderPatch*>(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *result = *a2;
  *(result + 8) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 16) = *(a2 + 16);
  v3 = *(a2 + 32);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::shared_ptr<md::SharedTexture2D>::__enable_weak_this[abi:nn200100]<md::SharedResource,md::SharedTexture2D,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }
    }
  }
}

void std::__shared_ptr_emplace<md::SharedTexture2D>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2FC68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

__n128 md::MeshRenderableBuilder::buildRenderable(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t **a4, uint64_t a5)
{
  *a1 = &unk_1F2A3CEF8;
  *(a1 + 8) = *(a2 + 8);
  v8 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v8;
  v9 = *(a2 + 40);
  *(a1 + 40) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v10;
  *(a1 + 143) = *(a2 + 143);
  v11 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v11;
  v12 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v12;
  *(a1 + 152) = 0;
  *(a1 + 176) = 0;
  if (*(a2 + 176) == 1)
  {
    v13 = *(a2 + 160);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = 1;
  }

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = 0;
  if (*(a2 + 193) == 1)
  {
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 193) = 1;
  }

  *(a1 + 196) = *(a2 + 196);
  *(a1 + 212) = *(a2 + 212);
  *a1 = &unk_1F2A3CEC8;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0;
  v15 = *a3;
  v14 = a3[1];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    v16 = *(a1 + 224);
    *(a1 + 216) = v15;
    *(a1 + 224) = v14;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
    }
  }

  else
  {
    *(a1 + 216) = v15;
    *(a1 + 224) = 0;
  }

  if ((a1 + 232) != a4)
  {
    std::vector<std::shared_ptr<ggl::Texture2D>>::__assign_with_size[abi:nn200100]<std::shared_ptr<ggl::Texture2D>*,std::shared_ptr<ggl::Texture2D>*>((a1 + 232), *a4, a4[1], (a4[1] - *a4) >> 4);
  }

  v17 = *(a5 + 16);
  *(a1 + 256) = *a5;
  *(a1 + 272) = v17;
  result = *(a5 + 32);
  *(a1 + 288) = result;
  *(a1 + 144) = 1;
  *(a1 + 147) = 1;
  return result;
}

void sub_1B2C169C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v2 = v3;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](va);
  v5 = *(v2 + 28);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::MeshRenderable::~MeshRenderable(v2);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<ggl::Texture2D>>::__assign_with_size[abi:nn200100]<std::shared_ptr<ggl::Texture2D>*,std::shared_ptr<ggl::Texture2D>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<ggl::Texture2D>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v8 = a1[2] - *a1;
      v9 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::shared_ptr<ggl::Texture2D>>::__vallocate[abi:nn200100](a1, v10);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = a1[1] - v7;
  if (a4 <= v11 >> 4)
  {
    v15 = std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(a2, a3, v7);
    for (i = a1[1]; i != v15; i -= 2)
    {
      v17 = *(i - 1);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v17);
      }
    }

    a1[1] = v15;
  }

  else
  {
    v12 = (a2 + v11);
    std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(a2, (a2 + v11), v7);
    for (j = a1[1]; v12 != a3; j += 2)
    {
      v14 = v12[1];
      *j = *v12;
      j[1] = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v12 += 2;
    }

    a1[1] = j;
  }
}

void md::TexturedRenderable::~TexturedRenderable(md::TexturedRenderable *this)
{
  *this = &unk_1F2A3CEC8;
  v3 = (this + 232);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(this + 28);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::MeshRenderable::~MeshRenderable(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A3CEC8;
  v3 = (this + 232);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(this + 28);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::MeshRenderable::~MeshRenderable(this);
}

void std::vector<std::shared_ptr<ggl::Texture2D>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t md::DaVinciMaterialResourceFetcher::resourceKey(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  UInt64 = gdc::ResourceKey::getUInt64(*(a3 + 8), 0);
  [v4 style];
  v6 = +[VKSharedResourcesManager sharedResources];
  [v6 gglDevice];
  LOBYTE(v8) = GEOTileKeyMakeEmpty();
  *(&v8 + 1) = UInt64;

  return v8;
}

void md::DaVinciMaterialResourceFetcher::~DaVinciMaterialResourceFetcher(md::DaVinciMaterialResourceFetcher *this)
{
  md::IdentifiedGEOResourceFetcher::~IdentifiedGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::DaVinciMaterialResourceDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3578;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::Glyph3d::DefaultPipelineSetup::~DefaultPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::Glyph3d::LowPrecisionPipelineSetup::~LowPrecisionPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::Glyph3d::LowPrecisionHaloPipelineSetup::~LowPrecisionHaloPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::Glyph3d::RaymarchPipelineSetup::~RaymarchPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

md::TileUndulationProvider *md::TileUndulationProvider::TileUndulationProvider(md::TileUndulationProvider *this, const geo::QuadTile *a2, const md::GeoidModel *a3)
{
  v4 = 1 << *(a2 + 1);
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  *this = a3;
  v7 = (v4 + ~v5);
  v8 = 6.28318531 / v4;
  v9 = exp(v8 * v7 + -3.14159265);
  v19 = atan(v9);
  v10 = fmod(v8 * v6, 6.28318531);
  v18 = fmod(v10 + 6.28318531, 6.28318531);
  v11 = exp(v8 * (v7 + 1.0) + -3.14159265);
  v17 = atan(v11);
  v12 = fmod(v8 + v6 * v8, 6.28318531);
  v13 = fmod(v12 + 6.28318531, 6.28318531);
  v15.f64[0] = v18;
  v14.f64[0] = v19;
  v14.f64[1] = v17;
  v15.f64[1] = v13;
  *(this + 8) = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(vdupq_n_s64(0xC066800000000000), vdupq_n_s64(0x404CA5DC1A63C1F8uLL), v15)), vmlaq_f64(vdupq_n_s64(0xC056800000000000), vdupq_n_s64(0x405CA5DC1A63C1F8uLL), v14));
  return this;
}

void std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<md::DaVinciTrafficTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3850;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>::reset[abi:nn200100](uint64_t (****a1)(void))
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = (**v1)(v1);
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::DaVinciTrafficRibbon>(v3, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::DaVinciTrafficRibbon>(uint64_t a1, void *a2)
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

uint64_t std::__function::__func<void({block_pointer} {__strong})(ggl::ResourceAccessor *),std::allocator<void({block_pointer} {__strong})(ggl::ResourceAccessor *)>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F2A59B50;
  result = MEMORY[0x1B8C62DA0](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<void({block_pointer} {__strong})(ggl::ResourceAccessor *),std::allocator<void({block_pointer} {__strong})(ggl::ResourceAccessor *)>,void ()(ggl::ResourceAccessor *)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1B8C62190);
}

void std::default_delete<gdc::GlobeTileGrid>::operator()[abi:nn200100](uint64_t a1)
{
  v1 = *(a1 + 2592);
  if (v1)
  {
    MEMORY[0x1B8C62170](v1, 0x1000C8000313F17);
  }

  JUMPOUT(0x1B8C62190);
}

void md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonLayer(void *a1)
{
  md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F29E9DE8;
  v2 = a1[18];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[16];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F29E9DE8;
  v2 = a1[18];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[16];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonLayer(a1);
}

gdc::GlobeTileGrid *gdc::GlobeTileGrid::GlobeTileGrid(gdc::GlobeTileGrid *this, const geo::QuadTile *a2)
{
  v3 = 0;
  *this = 255;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 24) = 1;
  v4 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v5 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  do
  {
    v6 = this + v3;
    *(v6 + 2) = 0uLL;
    *(v6 + 3) = 0uLL;
    *(v6 + 4) = 0uLL;
    *(v6 + 5) = xmmword_1B33B05D0;
    *(v6 + 6) = v4;
    *(v6 + 7) = v5;
    v3 += 104;
    *(v6 + 16) = 0xFFEFFFFFFFFFFFFFLL;
  }

  while (v3 != 1664);
  for (i = 0; i != 896; i += 56)
  {
    v8 = this + i;
    *(v8 + 108) = 0uLL;
    *(v8 + 107) = 0uLL;
    *(v8 + 106) = 0uLL;
    *(v8 + 218) = 0x3FF0000000000000;
  }

  *(this + 324) = 0;
  *(this + 650) = 0;
  v9 = *(a2 + 9);
  *this = *a2;
  *(this + 9) = v9;
  __powidf2();
  *&v10 = v10 * 0.0000000748596064;
  *(this + 650) = LODWORD(v10);
  return this;
}

uint64_t gdc::GlobeTileGrid::endBuildingHeightRange(gdc::GlobeTileGrid *this)
{
  v2 = 0;
  v3 = 0;
  v20 = 4 * *(this + 2);
  v4 = 1 << (*(this + 1) + 2);
  v5 = 1.0 / v4;
  v19 = v4 - 4 * *(this + 1) - 4;
  v6 = 32;
  v7 = 4;
  do
  {
    v21 = v6;
    v22 = v3;
    v8 = v19;
    v9 = (v20 + v3);
    v10 = v5 * v9;
    v11 = v7;
    v12 = v5 + v9 * v5;
    v23 = v2;
    v13 = 4;
    do
    {
      v14 = this + v2;
      v15 = (*(this + 324) + v11);
      v16 = *(v15 - 1);
      v17 = *v15;
      v29[0] = v10;
      v29[1] = v5 * v8;
      v29[2] = v12;
      v29[3] = v5 + v8 * v5;
      gdc::GlobeTileUtils::boundsFromMercatorRect(&v24, v29, v16, v17);
      geo::OrientedBox<double,3u,double,double>::operator=(this + v6, &v24);
      geo::RigidTransform<double,double>::inverse(&v24, this + v6);
      *(this + v2 + 1720) = v26;
      *(v14 + 217) = v27;
      *(v14 + 218) = v28;
      *(v14 + 106) = v24;
      ++v8;
      *(v14 + 214) = v25;
      v2 += 224;
      v6 += 416;
      v11 += 32;
      --v13;
    }

    while (v13);
    v3 = v22 + 1;
    v2 = v23 + 56;
    v6 = v21 + 104;
    v7 += 8;
  }

  while (v22 != 3);
  result = *(this + 324);
  if (result)
  {
    result = MEMORY[0x1B8C62170](result, 0x1000C8000313F17);
  }

  *(this + 324) = 0;
  return result;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::DaVinciTraffic::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::DaVinciTraffic::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::DaVinciTraffic::DefaultVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E9E28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,void *>>(uint64_t a1, void *a2)
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

uint64_t ggl::CullingGrid::sortOrderForCells(unint64_t this)
{
  v1 = 3;
  if ((this & 0xF000) == 0)
  {
    v1 = 0;
  }

  if ((this & 0xF00) != 0)
  {
    v1 = 2;
  }

  if ((this & 0xF0) != 0)
  {
    v1 = 1;
  }

  if ((this & 0xF) != 0)
  {
    v1 = 0;
  }

  return (ggl::CullingGrid::sortOrderForCells::sortOrderForQuad[this >> 12] << 12) | (ggl::CullingGrid::sortOrderForCells::sortOrderForQuad[v1] << 16) | (ggl::CullingGrid::sortOrderForCells::sortOrderForQuad[(this >> 8) & 0xF] << 8) | (16 * ggl::CullingGrid::sortOrderForCells::sortOrderForQuad[this >> 4]) | ggl::CullingGrid::sortOrderForCells::sortOrderForQuad[this & 0xF];
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  v7 = ggl::CullingGrid::sortOrderForCells(*(*a2 + 96));
  v8 = *a1;
  v9 = ggl::CullingGrid::sortOrderForCells(*(*a1 + 96));
  v10 = *a3;
  result = ggl::CullingGrid::sortOrderForCells(*(*a3 + 96));
  if (v7 >= v9)
  {
    if (result < v7)
    {
      *a2 = v10;
      *a3 = v6;
      v12 = *a2;
      v13 = ggl::CullingGrid::sortOrderForCells(*(*a2 + 96));
      v14 = *a1;
      result = ggl::CullingGrid::sortOrderForCells(*(*a1 + 96));
      if (v13 < result)
      {
        *a1 = v12;
        *a2 = v14;
      }
    }
  }

  else
  {
    if (result >= v7)
    {
      *a1 = v6;
      *a2 = v8;
      v15 = *a3;
      result = ggl::CullingGrid::sortOrderForCells(*(*a3 + 96));
      if (result >= v9)
      {
        return result;
      }

      *a2 = v15;
    }

    else
    {
      *a1 = v10;
    }

    *a3 = v8;
  }

  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a2, a3);
  v8 = *a4;
  v9 = ggl::CullingGrid::sortOrderForCells(*(*a4 + 96));
  v10 = *a3;
  result = ggl::CullingGrid::sortOrderForCells(*(*a3 + 96));
  if (v9 < result)
  {
    *a3 = v8;
    *a4 = v10;
    v12 = *a3;
    v13 = ggl::CullingGrid::sortOrderForCells(*(*a3 + 96));
    v14 = *a2;
    result = ggl::CullingGrid::sortOrderForCells(*(*a2 + 96));
    if (v13 < result)
    {
      *a2 = v12;
      *a3 = v14;
      v15 = *a2;
      v16 = ggl::CullingGrid::sortOrderForCells(*(*a2 + 96));
      v17 = *a1;
      result = ggl::CullingGrid::sortOrderForCells(*(*a1 + 96));
      if (v16 < result)
      {
        *a1 = v15;
        *a2 = v17;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a2, a3, a4);
  v10 = *a5;
  v11 = ggl::CullingGrid::sortOrderForCells(*(*a5 + 96));
  v12 = *a4;
  result = ggl::CullingGrid::sortOrderForCells(*(*a4 + 96));
  if (v11 < result)
  {
    *a4 = v10;
    *a5 = v12;
    v14 = *a4;
    v15 = ggl::CullingGrid::sortOrderForCells(*(*a4 + 96));
    v16 = *a3;
    result = ggl::CullingGrid::sortOrderForCells(*(*a3 + 96));
    if (v15 < result)
    {
      *a3 = v14;
      *a4 = v16;
      v17 = *a3;
      v18 = ggl::CullingGrid::sortOrderForCells(*(*a3 + 96));
      v19 = *a2;
      result = ggl::CullingGrid::sortOrderForCells(*(*a2 + 96));
      if (v18 < result)
      {
        *a2 = v17;
        *a3 = v19;
        v20 = *a2;
        v21 = ggl::CullingGrid::sortOrderForCells(*(*a2 + 96));
        v22 = *a1;
        result = ggl::CullingGrid::sortOrderForCells(*(*a1 + 96));
        if (v21 < result)
        {
          *a1 = v20;
          *a2 = v22;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = ggl::CullingGrid::sortOrderForCells(*(v5 + 96));
      v7 = *a1;
      if (v6 < ggl::CullingGrid::sortOrderForCells(*(*a1 + 96)))
      {
        *a1 = v5;
        *(a2 - 1) = v7;
      }

      return 1;
    }
  }

  v8 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2);
  v9 = a1 + 3;
  if (a1 + 3 != a2)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *v9;
      v13 = ggl::CullingGrid::sortOrderForCells(*(*v9 + 96));
      if (v13 < ggl::CullingGrid::sortOrderForCells(*(*v8 + 96)))
      {
        *v9 = 0;
        v21 = v12;
        v14 = *v8;
        v15 = v10;
        while (1)
        {
          *(a1 + v15 + 16) = 0;
          std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100]((a1 + v15 + 24), v14);
          v16 = v21;
          if (v15 == -16)
          {
            break;
          }

          v17 = ggl::CullingGrid::sortOrderForCells(*(v21 + 96));
          v14 = *(a1 + v15 + 8);
          v15 -= 8;
          if (v17 >= ggl::CullingGrid::sortOrderForCells(*(v14 + 96)))
          {
            v18 = (a1 + v15 + 24);
            goto LABEL_19;
          }
        }

        v18 = a1;
LABEL_19:
        v21 = 0;
        std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](v18, v16);
        if (++v11 == 8)
        {
          v19 = v9 + 1 == a2;
          std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
          return v19;
        }

        std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
      }

      v8 = v9;
      v10 += 8;
      ++v9;
    }

    while (v9 != a2);
  }

  return 1;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>>(uint64_t a1, uint64_t a2)
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

void ggl::ConstantDataTyped<ggl::Tile::Transform>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Tile::Transform>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5A6E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::DaVinciTrafficLayerDataSource::~DaVinciTrafficLayerDataSource(md::DaVinciTrafficLayerDataSource *this)
{
  md::DaVinciTrafficLayerDataSource::~DaVinciTrafficLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E3730;
  v2 = *(this + 100);
  *(this + 100) = 0;
  if (v2)
  {
    v3 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    MEMORY[0x1B8C62190](v2, 0x1020C40509EF904);
  }

  md::TrafficLayerDataSource::~TrafficLayerDataSource(this);
}

void md::TrafficLayerDataSource::~TrafficLayerDataSource(md::TrafficLayerDataSource *this)
{
  *this = &unk_1F2A568C0;
  v2 = *(this + 97);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);
}

void ggl::Flyover::FlyoverPipelineSetup::~FlyoverPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::Flyover::FlyoverPolarPipelineSetup::~FlyoverPolarPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void gss::ClientStyleState<gss::ScenePropertyID>::removeClientStyleAttribute(uint64_t a1, unsigned int a2)
{
  v10 = (a1 + 16);
  v4 = pthread_rwlock_wrlock((a1 + 16));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "write lock", v5);
  }

  v6 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::erase(a1 + 216, a2);
  if (geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::erase(a1 + 240, a2) | v6)
  {
    v7 = COERCE_FLOAT(atomic_load((a1 + 272)));
    v8 = v7 <= 0.0;
    v9 = 1;
    if (v8)
    {
      v9 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>((a1 + 240), a1 + 216) ^ 1;
    }

    atomic_store(v9, (a1 + 270));
    atomic_fetch_add((a1 + 264), 1u);
  }

  geo::write_lock_guard::~write_lock_guard(&v10);
}

void sub_1B2C19A5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void ___ZN3gss10StyleSheetINS_10PropertyIDEE9loadQueueEb_block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
  v1 = dispatch_queue_create("com.apple.mapdisplay.stylesheetLoadQueue", v0);
  v2 = gss::StyleSheet<gss::PropertyID>::loadQueue(BOOL)::stylesheetLoadQueue;
  gss::StyleSheet<gss::PropertyID>::loadQueue(BOOL)::stylesheetLoadQueue = v1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::function<void ()(BOOL)>>(uint64_t a1, void *a2)
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

uint64_t std::__function::__func<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingGlobalPropertiesCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1},std::allocator<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingGlobalPropertiesCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1}>,void ()(BOOL)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F2A2F350;
  result = std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  v5 = *(a1 + 48);
  a2[5] = *(a1 + 40);
  a2[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingGlobalPropertiesCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1},std::allocator<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingGlobalPropertiesCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1}>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2F350;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingGlobalPropertiesCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1},std::allocator<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingGlobalPropertiesCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1}>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2F350;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t __Block_byref_object_copy__322(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZZ40__VKSceneConfiguration_setStyleManager__ENK3__2clENSt3__110shared_ptrIN3gss17StylesheetManagerINS2_10PropertyIDEEEEEb_block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v7[4] = v1;
    v7[5] = v2;
    v4 = *(a1 + 40);
    if (v4)
    {
      gss::StylesheetManager<gss::PropertyID>::styleGlobalProperties(v7, *(v4 + 16));
      v6 = v7[0];
      v5 = v7[1];
      *(*(*(*(a1 + 32) + 8) + 40) + 152) = *(v7[0] + 260);
      *(*(*(*(a1 + 32) + 8) + 40) + 160) = v6[66];
      *(*(*(*(a1 + 32) + 8) + 40) + 168) = v6[67];
      *(*(*(*(a1 + 32) + 8) + 40) + 176) = v6[68];
      *(*(*(*(a1 + 32) + 8) + 40) + 184) = v6[69];
      *(*(*(*(a1 + 32) + 8) + 40) + 192) = v6[70];
      *(*(*(*(a1 + 32) + 8) + 40) + 200) = v6[71];
      *(*(*(*(a1 + 32) + 8) + 40) + 208) = v6[80];
      *(*(*(*(a1 + 32) + 8) + 40) + 216) = v6[81];
      *(*(*(*(a1 + 32) + 8) + 40) + 224) = v6[82];
      *(*(*(*(a1 + 32) + 8) + 40) + 232) = v6[83];
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }
    }
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long long>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<md::StandardLabelMarker>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E39F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::StandardLabeler::labelMarkerForCustomFeatureAnnotation(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v17 = 0uLL;
  md::LabelCustomFeatureSupport::featureForAnnotation(&v15, a1[4], v8, v7);
  v9 = v15;
  if (v15)
  {
    if (*(*(*v15 + 568))(v15, 0, 0, 0, 0) || !*(v9 + 128))
    {
      v10 = a1[6];
      v11 = a1[3];
      LODWORD(v14) = 1;
      md::LabelPool::labelForCustomFeature(v18, v10, v11, &v15, &v14, 0);
      v12 = v18[0];
      *(&v18[0] + 1) = 0;
      v17 = v12;
      v9 = *(&v12 + 1);
      if (v12)
      {
        *&v18[0] = 0;
        BYTE8(v18[0]) = 0;
        v20 = 0;
        v22 = 0;
        v23 = 0;
        v21 = 0;
        v25 = 0;
        v26 = 0;
        v24 = 0;
        memset(&v18[1], 0, 32);
        v19 = 0;
        md::Label::populateFeatureInfo(v12, v18, 0);
        std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v13, *(a1[3] + 8), *(a1[3] + 16));
        std::allocate_shared[abi:nn200100]<md::StandardLabelMarker,std::allocator<md::StandardLabelMarker>,std::shared_ptr<md::LabelManager>,std::shared_ptr<md::Label> &,float,md::LabelFeatureInfo &,0>();
      }
    }

    else
    {
      v9 = 0;
    }
  }

  *a4 = 0;
  a4[1] = 0;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }
}

void sub_1B2C1A504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  v45 = a12;
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a40 < 0)
  {
    v46 = *(v43 + 104);
    v47 = mdm::zone_mallocator::instance(v45);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v47, v46);
  }

  if (a33 < 0)
  {
    v48 = *(v43 + 72);
    v49 = mdm::zone_mallocator::instance(v45);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v49, v48);
  }

  std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a23);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a22);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v42);
  }

  _Unwind_Resume(a1);
}

uint64_t md::StandardLabeler::labelMarkerForLabel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  result = *a2;
  if (*a2)
  {
    v6 = 0;
    v7 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
    md::Label::populateFeatureInfo(result, &v6, 0);
    std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v5, *(*(a1 + 24) + 8), *(*(a1 + 24) + 16));
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

void sub_1B2C1A73C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  std::__shared_weak_count::~__shared_weak_count(v34);
  operator delete(v36);
  v37 = a10;
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  if (a34 < 0)
  {
    v38 = a29;
    v39 = mdm::zone_mallocator::instance(v37);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v39, v38);
  }

  if (a27 < 0)
  {
    v40 = a22;
    v41 = mdm::zone_mallocator::instance(v37);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v41, v40);
  }

  std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a17);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(a1);
}

void md::StandardLabeler::setSelectedLabelMarker(uint64_t a1, uint64_t *a2)
{
  (*(*a1 + 208))(a1);
  v4 = *a2;
  if (*a2)
  {
    if (!*(v4 + 224))
    {
      v5 = a2[1];
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      v6 = *(a1 + 248);
      *(a1 + 240) = v4;
      *(a1 + 248) = v5;
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        v4 = *(a1 + 240);
      }

      md::Label::setSelected(*(v4 + 288), *(a1 + 24), 1);
      md::StandardLabeler::monitorSelectedLabelState(a1, 1);
      if ((*(**(*(v4 + 288) + 8) + 216))(*(*(v4 + 288) + 8)))
      {
        v7 = (*(**(*(v4 + 288) + 8) + 232))(*(*(v4 + 288) + 8));
        if (v7)
        {
          v8 = *(a1 + 32);
          v32 = v7;
          v9 = v7;
          v10 = [v9 feature];
          v11 = [v10 dataSource];

          if (v11)
          {
            v14 = *(v8 + 80);
            v13 = v8 + 80;
            v12 = v14;
            if (v14)
            {
              v15 = v13;
              do
              {
                v16 = *(v12 + 32);
                v17 = v16 >= v11;
                v18 = v16 < v11;
                if (v17)
                {
                  v15 = v12;
                }

                v12 = *(v12 + 8 * v18);
              }

              while (v12);
              if (v15 != v13 && v11 >= *(v15 + 32))
              {
                v19 = v9;
                v20 = [v19 feature];
                v21 = [v20 isGlobalFeature];

                if (v21)
                {
                  md::LabelCustomFeatureSupport::globalFeaturesDidChange(*(v15 + 40));
                }

                else
                {
                  [v19 coordinate];
                  v30 = v29;
                  [v19 coordinate];
                  v31 = tan(v30 * 0.00872664626 + 0.785398163);
                  log(v31);
                  md::LabelCustomFeatureProvider::featuresDidChangeForRect(v15 + 40);
                }
              }
            }
          }

          v7 = v32;
        }
      }
    }
  }

  else
  {
    v22 = *(a1 + 240);
    if (v22)
    {
      v23 = *(v22[36] + 8);
      if ((v23[144] & 1) == 0 && !(*(*v23 + 328))(*(v22[36] + 8)) || v23[145] == 1)
      {
        v25 = *(a1 + 240);
        v24 = *(a1 + 248);
        if (v24)
        {
          atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
        }

        v26 = *(a1 + 264);
        *(a1 + 256) = v25;
        *(a1 + 264) = v24;
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v26);
        }

        md::LabelPool::setLocalLabel(*(a1 + 48), (*(a1 + 48) + 720), v22 + 36);
        md::Label::setPreviouslySelected(v22[36], *(a1 + 24), 1);
      }

      (*(*v22 + 512))(v22, 0);
      md::Label::setSelected(v22[36], *(a1 + 24), 0);
      v27 = *(a1 + 248);
      *(a1 + 240) = 0;
      *(a1 + 248) = 0;
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v27);
      }

      v28 = *(a1 + 48);
      v33[0] = 0;
      v33[1] = 0;
      md::LabelPool::setLocalLabel(v28, (v28 + 704), v33);
    }
  }
}

void md::StandardLabeler::monitorSelectedLabelState(md::StandardLabeler *this, int a2)
{
  v2 = a2;
  if (a2)
  {
    *(this + 180) = 0;
    *(this + 328) = 0u;
    *(this + 344) = 0u;
  }

  else
  {
    v4 = *(this + 360);
    if (v4 == (*(**(this + 30) + 464))(*(this + 30)))
    {
      v5 = 0;
      goto LABEL_7;
    }
  }

  *(this + 360) = (*(**(this + 30) + 464))(*(this + 30));
  if (v2)
  {
    goto LABEL_11;
  }

  v5 = 1;
LABEL_7:
  v6 = *(this + 361);
  if (v6 == (*(**(this + 30) + 648))(*(this + 30)))
  {
    if ((*(this + 360) & 1) == 0)
    {
      if (!v5)
      {
        return;
      }

      goto LABEL_33;
    }

    goto LABEL_13;
  }

LABEL_11:
  *(this + 361) = (*(**(this + 30) + 648))(*(this + 30));
  if (*(this + 360) != 1)
  {
    goto LABEL_33;
  }

  LOBYTE(v5) = 1;
LABEL_13:
  v7 = *(*(this + 3) + 176);
  v8 = (*(**(this + 30) + 560))(*(this + 30), 0);
  v12 = 0;
  v36 = v8;
  v37 = v9;
  v13 = &v36;
  v38[0] = v10;
  v38[1] = v11;
  v14 = 1;
  do
  {
    v15 = vabds_f32(*v13, *(this + v12 + 82));
    if ((v14 & 1) == 0)
    {
      break;
    }

    v14 = 0;
    v13 = &v37;
    v12 = 1;
  }

  while (v15 < v7);
  if (v15 >= v7)
  {
    goto LABEL_21;
  }

  v16 = 0;
  v17 = 1;
  do
  {
    v18 = vabds_f32(*&v38[v16], *(this + v16 + 84));
    if ((v17 & 1) == 0)
    {
      break;
    }

    v17 = 0;
    v16 = 1;
  }

  while (v18 < v7);
  if (v18 >= v7)
  {
LABEL_21:
    *(this + 82) = v8;
    *(this + 83) = v9;
    *(this + 84) = v10;
    LOBYTE(v5) = 1;
    *(this + 85) = v11;
  }

  v19 = (*(**(this + 30) + 576))(*(this + 30));
  v23 = 0;
  v33 = v19;
  v34 = v20;
  v24 = &v33;
  v35[0] = v21;
  v35[1] = v22;
  v25 = 1;
  do
  {
    v26 = vabds_f32(*v24, *(this + v23 + 86));
    if ((v25 & 1) == 0)
    {
      break;
    }

    v25 = 0;
    v24 = &v34;
    v23 = 1;
  }

  while (v26 < v7);
  if (v26 >= v7)
  {
    goto LABEL_32;
  }

  v27 = 0;
  v28 = 1;
  do
  {
    v29 = vabds_f32(*&v35[v27], *(this + v27 + 88));
    if ((v28 & 1) == 0)
    {
      break;
    }

    v28 = 0;
    v27 = 1;
  }

  while (v29 < v7);
  if (v29 >= v7)
  {
LABEL_32:
    *(this + 86) = v19;
    *(this + 87) = v20;
    *(this + 88) = v21;
    *(this + 89) = v22;
  }

  else if ((v5 & 1) == 0)
  {
    return;
  }

LABEL_33:
  v30 = *(this + 3);
  if (*(this + 30) == *(v30 + 3544))
  {
    v31 = *(v30 + 136);
    if (v31)
    {
      v32 = *(v31 + 184);
      if (v32)
      {

        std::function<void ()(md::LabelManager *,std::shared_ptr<md::LabelMarker> const&)>::operator()(v32, v30);
      }
    }
  }
}

void *md::StandardLabeler::setPreviouslySelectedLabelMarker(void *result, uint64_t *a2)
{
  if (*a2 != result[32])
  {
    v3 = result;
    result = (*(*result + 208))(result);
    v4 = *a2;
    if (*a2)
    {
      if (v4 != v3[30] && !*(v4 + 224))
      {
        if ((v5 = *(*(v4 + 288) + 8), (v5[144] & 1) == 0) && (result = (*(*v5 + 328))(*(*(v4 + 288) + 8)), !result) || v5[145] == 1)
        {
          v7 = *a2;
          v6 = a2[1];
          if (v6)
          {
            atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
          }

          v8 = v3[33];
          v3[32] = v7;
          v3[33] = v6;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
          }

          md::LabelPool::setLocalLabel(v3[6], (v3[6] + 720), (v4 + 288));
          v9 = *(v4 + 288);
          v10 = v3[3];

          return md::Label::setPreviouslySelected(v9, v10, 1);
        }
      }
    }
  }

  return result;
}

void md::StandardLabeler::getLabelMarkers(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v15, *(a1[3] + 8), *(a1[3] + 16));
  v2 = a1[13];
  for (i = a1[14]; v2 != i; v2 += 2)
  {
    v4 = a1[3];
    v5 = *(*v2 + 272);
    if (v5)
    {
      (*(*v5 + 264))(v5);
    }

    else
    {
      v8 = -8388609;
      v6 = 2139095039;
      v7 = 2139095039;
      v9 = -8388609;
    }

    v10 = 0;
    v17 = __PAIR64__(v7, v6);
    v11 = &v17;
    v12 = 1;
    v18[0] = v8;
    v18[1] = v9;
    while (*(v4 + 1512 + 4 * v10) > *v11 && *(v4 + 1504 + 4 * v10) < *&v18[v10])
    {
      v13 = v12;
      v12 = 0;
      v11 = &v17 + 1;
      v10 = 1;
      if ((v13 & 1) == 0)
      {
        v14 = *v2;
        if ((*(*v2 + 1152) & 0xFD) == 1)
        {
          v17 = 0;
          LOBYTE(v18[0]) = 0;
          v22 = 0;
          v24 = 0;
          v25 = 0;
          v23 = 0;
          v27 = 0;
          v28 = 0;
          v26 = 0;
          v19 = 0u;
          v20 = 0u;
          v21 = 0;
          md::Label::populateFeatureInfo(v14, &v17, 0);
          operator new();
        }

        break;
      }
    }
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }
}

void sub_1B2C1B290(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  if (a37 < 0)
  {
    v40 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v40, a32);
  }

  if (a30 < 0)
  {
    v41 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v41, a25);
  }

  std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v38 + 32));
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a19);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  _Unwind_Resume(a1);
}

std::__shared_weak_count *std::vector<std::shared_ptr<md::LabelMarker>,geo::allocator_adapter<std::shared_ptr<md::LabelMarker>,mdm::zone_mallocator>>::push_back[abi:nn200100](std::__shared_weak_count *result, __int128 *a2)
{
  v3 = result;
  shared_owners = result->__shared_owners_;
  shared_weak_owners = result->__shared_weak_owners_;
  if (shared_owners >= shared_weak_owners)
  {
    v8 = (shared_owners - result->__vftable) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = shared_weak_owners - result->__vftable;
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

    v23 = result + 1;
    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(result);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelMarker>>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[16 * v8];
    v15 = *a2;
    *v14 = *a2;
    if (*(&v15 + 1))
    {
      atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v16 = &v13[16 * v11];
    v7 = v14 + 16;
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
    result = std::__split_buffer<std::shared_ptr<md::LabelMarker>,geo::allocator_adapter<std::shared_ptr<md::LabelMarker>,mdm::zone_mallocator> &>::~__split_buffer(&v21);
  }

  else
  {
    v6 = *(a2 + 1);
    *shared_owners = *a2;
    *(shared_owners + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = shared_owners + 16;
  }

  v3->__shared_owners_ = v7;
  return result;
}