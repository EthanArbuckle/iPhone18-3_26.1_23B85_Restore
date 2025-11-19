void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::CustomRenderState>(ecs2::Entity,md::ls::CustomRenderState &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::CustomRenderState>(ecs2::Entity,md::ls::CustomRenderState &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::CustomRenderState>(ecs2::Entity,md::ls::CustomRenderState &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F2A4F798;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = *(result + 32);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::CustomRenderState>(ecs2::Entity,md::ls::CustomRenderState &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::~__func(void *a1)
{
  *a1 = &unk_1F2A4F798;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::CustomRenderState>(ecs2::Entity,md::ls::CustomRenderState &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::~__func(void *a1)
{
  *a1 = &unk_1F2A4F798;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::BoundData,md::ls::IsMercator,md::ls::MeshRenderableBounds>(ecs2::Entity,ecs2::ComponentBundle<md::BoundData,md::ls::IsMercator,md::ls::MeshRenderableBounds> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  ecs2::BasicRegistry<void>::add<md::BoundData>(a2, *(a1 + 56), (a1 + 8));
  ecs2::BasicRegistry<void>::add<md::ls::IsMercator>(a2, *(a1 + 56));
  v4 = *(a1 + 56);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableBounds>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableBounds>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableBounds>(a2);
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

  v12 = (a1 + 32);
  v13 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    v56 = 0;
    v57 = *(*(v7 + 56) + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F);
    do
    {
      *(v57 + v56) = *(v12 + v56);
      v56 += 4;
    }

    while (v56 != 12);
    v58 = 0;
    v59 = v57 + 12;
    do
    {
      *(v59 + v58) = *(a1 + 44 + v58);
      v58 += 4;
    }

    while (v58 != 12);
    goto LABEL_53;
  }

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

    *(4 * v20) = v4;
    v18 = 4 * v20 + 4;
    v24 = *(v7 + 32);
    v25 = *(v7 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v7 + 32);
    *(v7 + 32) = v26;
    *(v7 + 40) = v18;
    *(v7 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = v4;
    v18 = (v17 + 1);
  }

  *(v7 + 40) = v18;
  v28 = ((v18 - *(v7 + 32)) >> 2) - 1;
  *v13 = v4;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v7 + 56);
  v30 = *(v7 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v60 = v28 >> 6;
    v61 = v28;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v7 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
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

      goto LABEL_59;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v7 + 64) = v30 + 8 * v34;
    v43 = *(v7 + 80);
    v44 = *(v7 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v46 = v33 - v45;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v44) >> 4)
      {
        v48 = v47 - v43;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v33)
        {
          v49 = v33;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_59:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      *(v7 + 88) = v44 + 16 * v46;
      v29 = v60;
    }

    else if (v33 < v45)
    {
      *(v7 + 88) = v43 + 16 * v33;
    }

    v31 = *(v7 + 56);
    LOBYTE(v28) = v61;
    if (v32 < (*(v7 + 64) - v31))
    {
      operator new();
    }
  }

  v51 = *(v31 + 8 * v29) + 24 * (v28 & 0x3F);
  v52 = *v12;
  *(v51 + 16) = *(v12 + 2);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_53:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableBounds>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableBounds>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::BoundData,md::ls::IsMercator,md::ls::MeshRenderableBounds>(ecs2::Entity,ecs2::ComponentBundle<md::BoundData,md::ls::IsMercator,md::ls::MeshRenderableBounds> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A42248;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::GeocentricBounds>(ecs2::Entity,md::ls::GeocentricBounds &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 44);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GeocentricBounds>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GeocentricBounds>(void)::metadata;
  v63 = a2;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::GeocentricBounds>(a2);
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
    v54 = 0;
    v55 = *(*(v7 + 56) + ((v14 >> 3) & 0x1FF8)) + 36 * (v14 & 0x3F);
    do
    {
      *(v55 + v54) = *(v12 + v54);
      v54 += 4;
    }

    while (v54 != 12);
    for (i = 0; i != 12; i += 4)
    {
      *(v55 + 12 + i) = *(a1 + 20 + i);
    }

    v57 = 0;
    v58 = v55 + 24;
    do
    {
      *(v58 + v57) = *(a1 + 32 + v57);
      v57 += 4;
    }

    while (v57 != 12);
    goto LABEL_59;
  }

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

    *(4 * v20) = v4;
    v18 = 4 * v20 + 4;
    v24 = *(v7 + 32);
    v25 = *(v7 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v7 + 32);
    *(v7 + 32) = v26;
    *(v7 + 40) = v18;
    *(v7 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = v4;
    v18 = (v17 + 1);
  }

  *(v7 + 40) = v18;
  v28 = ((v18 - *(v7 + 32)) >> 2) - 1;
  *v13 = v4;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v7 + 56);
  v30 = *(v7 + 64);
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v60 = v28;
    v61 = v5;
    v32 = v29 + 1;
    v33 = v29 + 1 - ((v30 - v31) >> 3);
    v34 = *(v7 + 72);
    v62 = v30 - v31;
    if (v33 > (v34 - v30) >> 3)
    {
      v35 = v34 - v31;
      v36 = (v34 - v31) >> 2;
      if (v36 <= v32)
      {
        v36 = v29 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_61;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v30 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v30 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v30 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v29)
    {
      v28 = v32 - v44;
      v45 = *(v7 + 96);
      if (v28 > (v45 - v43) >> 4)
      {
        v46 = v45 - v42;
        v47 = v46 >> 3;
        if (v46 >> 3 <= v32)
        {
          v47 = v29 + 1;
        }

        if (v46 >= 0x7FFFFFFFFFFFFFF0)
        {
          v48 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v48 = v47;
        }

        if (!(v48 >> 60))
        {
          operator new();
        }

LABEL_61:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v28);
      *(v7 + 88) = v43 + 16 * v28;
      LOBYTE(v28) = v60;
    }

    else if (v32 < v44)
    {
      *(v7 + 88) = v42 + 16 * v32;
    }

    v31 = *(v7 + 56);
    v5 = v61;
    if (v62 < *(v7 + 64) - v31)
    {
      operator new();
    }
  }

  v49 = *(v31 + 8 * v29) + 36 * (v28 & 0x3F);
  v50 = *v12;
  v51 = v12[1];
  *(v49 + 32) = *(v12 + 8);
  *v49 = v50;
  *(v49 + 16) = v51;
  v52 = *(v7 + 152);
  v53 = *(v7 + 160);
  while (v52 != v53)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
    v52 += 32;
  }

LABEL_59:
  v59 = *(v63 + 41016) + (v4 >> 16 << 6);
  *(v59 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GeocentricBounds>();
  *(v63 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GeocentricBounds>(void)::metadata) = *(v63 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::GeocentricBounds>(ecs2::Entity,md::ls::GeocentricBounds &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A42178;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PreserveHeight>(ecs2::Entity,md::ls::PreserveHeight &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreserveHeight>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreserveHeight>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PreserveHeight>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreserveHeight>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreserveHeight>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PreserveHeight>(ecs2::Entity,md::ls::PreserveHeight &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A51588;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::MeshRenderablePositionScaleInfo>(ecs2::Entity,md::ls::MeshRenderablePositionScaleInfo &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderablePositionScaleInfo>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderablePositionScaleInfo>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderablePositionScaleInfo>(a2);
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

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 4 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 4 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderablePositionScaleInfo>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderablePositionScaleInfo>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::MeshRenderablePositionScaleInfo>(ecs2::Entity,md::ls::MeshRenderablePositionScaleInfo &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A420A8;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SharedUniqueID>(ecs2::Entity,md::ls::SharedUniqueID &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedUniqueID>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedUniqueID>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::SharedUniqueID>(a2);
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

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 16 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 16 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedUniqueID>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedUniqueID>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SharedUniqueID>(ecs2::Entity,md::ls::SharedUniqueID &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A51C78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::HasStyleAttributeRasterSet>(ecs2::Entity,md::ls::HasStyleAttributeRasterSet &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasStyleAttributeRasterSet>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasStyleAttributeRasterSet>(void)::metadata;
  HasStyleAttributeRaster = ecs2::BasicRegistry<void>::storage<md::ls::HasStyleAttributeRasterSet>(a2);
  v7 = HasStyleAttributeRaster;
  v8 = v4 >> 22;
  v10 = (HasStyleAttributeRaster + 8);
  v9 = *(HasStyleAttributeRaster + 8);
  if (v4 >> 22 >= (*(HasStyleAttributeRaster + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((HasStyleAttributeRaster + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasStyleAttributeRasterSet>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasStyleAttributeRasterSet>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::HasStyleAttributeRasterSet>(ecs2::Entity,md::ls::HasStyleAttributeRasterSet &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A52708;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SupportsSteepnessDarkening>(ecs2::Entity,md::ls::SupportsSteepnessDarkening &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsSteepnessDarkening>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsSteepnessDarkening>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SupportsSteepnessDarkening>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsSteepnessDarkening>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsSteepnessDarkening>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SupportsSteepnessDarkening>(ecs2::Entity,md::ls::SupportsSteepnessDarkening &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A4FCC8;
  a2[1] = *(result + 8);
  return result;
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SupportsStylizedShading>(ecs2::Entity,md::ls::SupportsStylizedShading &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A4FC18;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PrepassConstantDataHandle>(ecs2::Entity,md::ls::PrepassConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassConstantDataHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassConstantDataHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PrepassConstantDataHandle>(a2);
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

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassConstantDataHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassConstantDataHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PrepassConstantDataHandle>(ecs2::Entity,md::ls::PrepassConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A528A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PrepassShadowConstantDataHandle>(ecs2::Entity,md::ls::PrepassShadowConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassShadowConstantDataHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassShadowConstantDataHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PrepassShadowConstantDataHandle>(a2);
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

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassShadowConstantDataHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassShadowConstantDataHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PrepassShadowConstantDataHandle>(ecs2::Entity,md::ls::PrepassShadowConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A53088;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ShadowConstantDataHandle>(ecs2::Entity,md::ls::ShadowConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowConstantDataHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowConstantDataHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::ShadowConstantDataHandle>(a2);
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

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowConstantDataHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowConstantDataHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ShadowConstantDataHandle>(ecs2::Entity,md::ls::ShadowConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A527D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::StyleCameraConstantDataHandle>(ecs2::Entity,md::ls::StyleCameraConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleCameraConstantDataHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleCameraConstantDataHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::StyleCameraConstantDataHandle>(a2);
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

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleCameraConstantDataHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleCameraConstantDataHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::StyleCameraConstantDataHandle>(ecs2::Entity,md::ls::StyleCameraConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A50CD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ClippingConstantDataHandle>(ecs2::Entity,md::ls::ClippingConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ClippingConstantDataHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ClippingConstantDataHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::ClippingConstantDataHandle>(a2);
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

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ClippingConstantDataHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ClippingConstantDataHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ClippingConstantDataHandle>(ecs2::Entity,md::ls::ClippingConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A51AD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PendingSlicing>(ecs2::Entity,md::ls::PendingSlicing &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingSlicing>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingSlicing>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PendingSlicing>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingSlicing>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingSlicing>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PendingSlicing>(ecs2::Entity,md::ls::PendingSlicing &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A41FF8;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::CheckIfTileWasDeleted,md::ls::AssociationHandle,md::ls::VisibilityGroupID,md::ls::MeshRenderableID,md::ls::PendingProcessing,md::ls::PendingProcessingShadow,md::ls::PendingProcessingDepthPrePass,md::ls::RenderablePendingProcessing,md::ls::TileType,md::ls::RenderableHash,md::ls::StyleDataKeyHandle,md::ls::SharedRenderableDataHandle,md::ls::SharedTileMatrix,md::ls::ViewConstantDataHandle,md::ls::TransformConstantDataHandle,md::ls::MeshRenderableTransformConstantDataHandle,md::ls::InstanceTransformHandle,md::ls::WantsCulledSlices,md::ls::IndexRange,md::ls::IntendedSceneLayer,md::ls::InstanceCount,md::ls::InstanceDataV,md::ls::RenderableMeshType,md::ls::RenderableMeshVertexFormat,md::ls::PrimitiveType>(ecs2::Entity,ecs2::ComponentBundle<md::ls::CheckIfTileWasDeleted,md::ls::AssociationHandle,md::ls::VisibilityGroupID,md::ls::MeshRenderableID,md::ls::PendingProcessing,md::ls::PendingProcessingShadow,md::ls::PendingProcessingDepthPrePass,md::ls::RenderablePendingProcessing,md::ls::TileType,md::ls::RenderableHash,md::ls::StyleDataKeyHandle,md::ls::SharedRenderableDataHandle,md::ls::SharedTileMatrix,md::ls::ViewConstantDataHandle,md::ls::TransformConstantDataHandle,md::ls::MeshRenderableTransformConstantDataHandle,md::ls::InstanceTransformHandle,md::ls::WantsCulledSlices,md::ls::IndexRange,md::ls::IntendedSceneLayer,md::ls::InstanceCount,md::ls::InstanceDataV,md::ls::RenderableMeshType,md::ls::RenderableMeshVertexFormat,md::ls::PrimitiveType> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  ecs2::BasicRegistry<void>::add<md::ls::CheckIfTileWasDeleted>(a2, *(a1 + 184));
  ecs2::BasicRegistry<void>::add<md::ls::AssociationHandle>(a2, *(a1 + 184), (a1 + 8));
  ecs2::BasicRegistry<void>::add<md::ls::VisibilityGroupID>(a2, *(a1 + 184), (a1 + 32));
  ecs2::BasicRegistry<void>::add<md::ls::MeshRenderableID>(a2, *(a1 + 184), (a1 + 48));
  ecs2::BasicRegistry<void>::add<md::ls::PendingProcessing>(a2, *(a1 + 184));
  v4 = *(a1 + 184);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingShadow>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingShadow>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PendingProcessingShadow>(a2);
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

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  if (*v12 == -1 && v12[1] == 0)
  {
    v15 = v7[5];
    v14 = v7[6];
    if (v15 >= v14)
    {
      v17 = v7[4];
      v18 = (v15 - v17) >> 2;
      if ((v18 + 1) >> 62)
      {
        goto LABEL_178;
      }

      v19 = v14 - v17;
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

      *(4 * v18) = v4;
      v16 = 4 * v18 + 4;
      v22 = v7[4];
      v23 = v7[5] - v22;
      v24 = (4 * v18 - v23);
      memcpy(v24, v22, v23);
      v25 = v7[4];
      v7[4] = v24;
      v7[5] = v16;
      v7[6] = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v15 = v4;
      v16 = (v15 + 1);
    }

    v7[5] = v16;
    v26 = ((v16 - *(v7 + 8)) >> 2) - 1;
    *v12 = v4;
    v12[1] = v26;
    v28 = v7[13];
    v27 = v7[14];
    while (v28 != v27)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v28 + 24), v4);
      v28 += 32;
    }
  }

  v29 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v29 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingShadow>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingShadow>(void)::metadata) = *(a2 + 4096);
  v30 = *(a1 + 184);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingDepthPrePass>();
  v31 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingDepthPrePass>(void)::metadata;
  v32 = ecs2::BasicRegistry<void>::storage<md::ls::PendingProcessingDepthPrePass>(a2);
  v33 = v32;
  v34 = v30 >> 22;
  v36 = (v32 + 8);
  v35 = *(v32 + 8);
  if (v30 >> 22 >= (*(v32 + 16) - v35) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v32 + 8), v34 + 1);
    v35 = *v36;
  }

  v37 = *(v35 + 8 * v34);
  if (!v37)
  {
    operator new();
  }

  v38 = (v37 + 4 * ((v30 >> 16) & 0x3F));
  if (*v38 == -1 && v38[1] == 0)
  {
    v41 = v33[5];
    v40 = v33[6];
    if (v41 >= v40)
    {
      v43 = v33[4];
      v44 = (v41 - v43) >> 2;
      if ((v44 + 1) >> 62)
      {
        goto LABEL_178;
      }

      v45 = v40 - v43;
      v46 = v45 >> 1;
      if (v45 >> 1 <= (v44 + 1))
      {
        v46 = v44 + 1;
      }

      if (v45 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v47 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v47 = v46;
      }

      if (v47)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v47);
      }

      *(4 * v44) = v30;
      v42 = 4 * v44 + 4;
      v48 = v33[4];
      v49 = v33[5] - v48;
      v50 = (4 * v44 - v49);
      memcpy(v50, v48, v49);
      v51 = v33[4];
      v33[4] = v50;
      v33[5] = v42;
      v33[6] = 0;
      if (v51)
      {
        operator delete(v51);
      }
    }

    else
    {
      *v41 = v30;
      v42 = (v41 + 1);
    }

    v33[5] = v42;
    v52 = ((v42 - *(v33 + 8)) >> 2) - 1;
    *v38 = v30;
    v38[1] = v52;
    v54 = v33[13];
    v53 = v33[14];
    while (v54 != v53)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v54 + 24), v30);
      v54 += 32;
    }
  }

  v55 = *(a2 + 41016) + (v30 >> 16 << 6);
  *(v55 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v31;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingDepthPrePass>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingDepthPrePass>(void)::metadata) = *(a2 + 4096);
  ecs2::BasicRegistry<void>::add<md::ls::RenderablePendingProcessing>(a2, *(a1 + 184));
  ecs2::BasicRegistry<void>::add<md::ls::TileType>(a2, *(a1 + 184), (a1 + 56));
  ecs2::BasicRegistry<void>::add<md::ls::RenderableHash>(a2, *(a1 + 184), (a1 + 64));
  ecs2::BasicRegistry<void>::add<md::ls::StyleDataKeyHandle>(a2, *(a1 + 184), (a1 + 72));
  v56 = *(a1 + 184);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedRenderableDataHandle>();
  i = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedRenderableDataHandle>(void)::metadata;
  v58 = ecs2::BasicRegistry<void>::storage<md::ls::SharedRenderableDataHandle>(a2);
  v59 = v58;
  v60 = v56 >> 22;
  v62 = (v58 + 8);
  v61 = *(v58 + 8);
  if (v56 >> 22 >= (*(v58 + 16) - v61) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v58 + 8), v60 + 1);
    v61 = *v62;
  }

  v63 = *(v61 + 8 * v60);
  if (!v63)
  {
    operator new();
  }

  v64 = (v63 + 4 * ((v56 >> 16) & 0x3F));
  v65 = v64[1];
  if (*v64 == -1 && v65 == 0)
  {
    v68 = v59[5];
    v67 = v59[6];
    v182 = i;
    if (v68 >= v67)
    {
      v70 = v59[4];
      v71 = (v68 - v70) >> 2;
      if ((v71 + 1) >> 62)
      {
        goto LABEL_178;
      }

      v72 = v67 - v70;
      v73 = v72 >> 1;
      if (v72 >> 1 <= (v71 + 1))
      {
        v73 = v71 + 1;
      }

      if (v72 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v74 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v74 = v73;
      }

      if (v74)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v74);
      }

      v75 = (4 * v71);
      *v75 = v56;
      v69 = 4 * v71 + 4;
      v76 = v59[4];
      v77 = v59[5] - v76;
      v78 = v75 - v77;
      memcpy(v75 - v77, v76, v77);
      v79 = v59[4];
      v59[4] = v78;
      v59[5] = v69;
      v59[6] = 0;
      if (v79)
      {
        operator delete(v79);
      }
    }

    else
    {
      *v68 = v56;
      v69 = (v68 + 1);
    }

    v59[5] = v69;
    v80 = ((v69 - v59[4]) >> 2) - 1;
    *v64 = v56;
    v64[1] = v80;
    v81 = v80 >> 6;
    v83 = v59[7];
    v82 = v59[8];
    v84 = v82 - v83;
    if (v80 >> 6 >= (v82 - v83) >> 3)
    {
      v180 = v80;
      v85 = v81 + 1;
      v86 = v81 + 1 - (v84 >> 3);
      v87 = v59[9];
      if (v86 > (v87 - v82) >> 3)
      {
        v88 = v87 - v83;
        v89 = (v87 - v83) >> 2;
        if (v89 <= v85)
        {
          v89 = v81 + 1;
        }

        if (v88 >= 0x7FFFFFFFFFFFFFF8)
        {
          v89 = 0x1FFFFFFFFFFFFFFFLL;
        }

        if (!(v89 >> 61))
        {
          operator new();
        }

        goto LABEL_179;
      }

      v90 = 0;
      v91 = (v86 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v92 = vdupq_n_s64(v91);
      do
      {
        v93 = vmovn_s64(vcgeq_u64(v92, vorrq_s8(vdupq_n_s64(v90), xmmword_1B33B0560)));
        if (v93.i8[0])
        {
          *(v82 + 8 * v90) = 0;
        }

        if (v93.i8[4])
        {
          *(v82 + 8 * v90 + 8) = 0;
        }

        v90 += 2;
      }

      while (v91 - ((v86 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v90);
      v59[8] = v82 + 8 * v86;
      v94 = v59[10];
      v95 = v59[11];
      v96 = &v95[-v94] >> 4;
      if (v96 <= v81)
      {
        v178 = v84;
        v97 = v85 - v96;
        v98 = v59[12];
        if (v97 > (v98 - v95) >> 4)
        {
          v99 = v98 - v94;
          v100 = v99 >> 3;
          if (v99 >> 3 <= v85)
          {
            v100 = v81 + 1;
          }

          if (v99 >= 0x7FFFFFFFFFFFFFF0)
          {
            v101 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v101 = v100;
          }

          if (!(v101 >> 60))
          {
            operator new();
          }

          goto LABEL_179;
        }

        bzero(v95, 16 * v97);
        v59[11] = &v95[16 * v97];
        v84 = v178;
      }

      else if (v85 < v96)
      {
        v59[11] = v94 + 16 * v85;
      }

      v83 = v59[7];
      LOBYTE(v80) = v180;
      if (v84 < (v59[8] - v83))
      {
        operator new();
      }
    }

    *(*(v83 + 8 * v81) + 8 * (v80 & 0x3F)) = *(a1 + 80);
    v102 = v59[19];
    v103 = v59[20];
    for (i = v182; v102 != v103; v102 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v102 + 24), v56);
    }
  }

  else
  {
    *(*(v59[7] + ((v65 >> 3) & 0x1FF8)) + 8 * (v65 & 0x3F)) = *(a1 + 80);
  }

  v104 = *(a2 + 41016) + (v56 >> 16 << 6);
  *(v104 + ((i >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << i;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedRenderableDataHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedRenderableDataHandle>(void)::metadata) = *(a2 + 4096);
  ecs2::BasicRegistry<void>::add<md::ls::SharedTileMatrix>(a2, *(a1 + 184), (a1 + 88));
  ecs2::BasicRegistry<void>::add<md::ls::ViewConstantDataHandle>(a2, *(a1 + 184), (a1 + 96));
  ecs2::BasicRegistry<void>::add<md::ls::TransformConstantDataHandle>(a2, *(a1 + 184), (a1 + 104));
  v105 = *(a1 + 184);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableTransformConstantDataHandle>();
  j = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableTransformConstantDataHandle>(void)::metadata;
  v107 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableTransformConstantDataHandle>(a2);
  v108 = v107;
  v109 = v105 >> 22;
  v111 = (v107 + 8);
  v110 = *(v107 + 8);
  if (v105 >> 22 >= (*(v107 + 16) - v110) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v107 + 8), v109 + 1);
    v110 = *v111;
  }

  v112 = *(v110 + 8 * v109);
  if (!v112)
  {
    operator new();
  }

  v113 = (v112 + 4 * ((v105 >> 16) & 0x3F));
  v114 = v113[1];
  if (*v113 != -1 || v114 != 0)
  {
    *(*(*(v108 + 56) + ((v114 >> 3) & 0x1FF8)) + 8 * (v114 & 0x3F)) = *(a1 + 112);
    goto LABEL_151;
  }

  v117 = *(v108 + 40);
  v116 = *(v108 + 48);
  v183 = j;
  if (v117 >= v116)
  {
    v119 = *(v108 + 32);
    v120 = (v117 - v119) >> 2;
    if ((v120 + 1) >> 62)
    {
      goto LABEL_178;
    }

    v121 = v116 - v119;
    v122 = v121 >> 1;
    if (v121 >> 1 <= (v120 + 1))
    {
      v122 = v120 + 1;
    }

    if (v121 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v123 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v123 = v122;
    }

    if (v123)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v123);
    }

    *(4 * v120) = v105;
    v118 = 4 * v120 + 4;
    v124 = *(v108 + 32);
    v125 = *(v108 + 40) - v124;
    v126 = (4 * v120 - v125);
    memcpy(v126, v124, v125);
    v127 = *(v108 + 32);
    *(v108 + 32) = v126;
    *(v108 + 40) = v118;
    *(v108 + 48) = 0;
    if (v127)
    {
      operator delete(v127);
    }
  }

  else
  {
    *v117 = v105;
    v118 = (v117 + 1);
  }

  *(v108 + 40) = v118;
  v128 = ((v118 - *(v108 + 32)) >> 2) - 1;
  *v113 = v105;
  v113[1] = v128;
  v129 = v128 >> 6;
  v131 = *(v108 + 56);
  v130 = *(v108 + 64);
  if (v128 >> 6 >= (v130 - v131) >> 3)
  {
    v179 = v130 - v131;
    v181 = v128;
    v132 = v129 + 1;
    v133 = v129 + 1 - ((v130 - v131) >> 3);
    v134 = *(v108 + 72);
    if (v133 > (v134 - v130) >> 3)
    {
      v135 = v134 - v131;
      v136 = (v134 - v131) >> 2;
      if (v136 <= v132)
      {
        v136 = v129 + 1;
      }

      if (v135 >= 0x7FFFFFFFFFFFFFF8)
      {
        v137 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v137 = v136;
      }

      if (!(v137 >> 61))
      {
        operator new();
      }

      goto LABEL_179;
    }

    v138 = 0;
    v139 = (v133 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v140 = vdupq_n_s64(v139);
    do
    {
      v141 = vmovn_s64(vcgeq_u64(v140, vorrq_s8(vdupq_n_s64(v138), xmmword_1B33B0560)));
      if (v141.i8[0])
      {
        *(v130 + 8 * v138) = 0;
      }

      if (v141.i8[4])
      {
        *(v130 + 8 * v138 + 8) = 0;
      }

      v138 += 2;
    }

    while (v139 - ((v133 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v138);
    *(v108 + 64) = v130 + 8 * v133;
    v142 = *(v108 + 80);
    v143 = *(v108 + 88);
    v144 = (v143 - v142) >> 4;
    if (v144 > v129)
    {
      if (v132 < v144)
      {
        *(v108 + 88) = v142 + 16 * v132;
      }

      goto LABEL_147;
    }

    v128 = v132 - v144;
    v145 = *(v108 + 96);
    if (v128 <= (v145 - v143) >> 4)
    {
      bzero(*(v108 + 88), 16 * v128);
      *(v108 + 88) = v143 + 16 * v128;
      LOBYTE(v128) = v181;
LABEL_147:
      v131 = *(v108 + 56);
      if (v179 < *(v108 + 64) - v131)
      {
        operator new();
      }

      goto LABEL_149;
    }

    v146 = v145 - v142;
    v147 = v146 >> 3;
    if (v146 >> 3 <= v132)
    {
      v147 = v129 + 1;
    }

    if (v146 >= 0x7FFFFFFFFFFFFFF0)
    {
      v147 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (!(v147 >> 60))
    {
      operator new();
    }

LABEL_179:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_149:
  *(*(v131 + 8 * v129) + 8 * (v128 & 0x3F)) = *(a1 + 112);
  v148 = *(v108 + 152);
  v149 = *(v108 + 160);
  for (j = v183; v148 != v149; v148 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v148 + 24), v105);
  }

LABEL_151:
  v150 = *(a2 + 41016) + (v105 >> 16 << 6);
  *(v150 + ((j >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << j;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableTransformConstantDataHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableTransformConstantDataHandle>(void)::metadata) = *(a2 + 4096);
  ecs2::BasicRegistry<void>::add<md::ls::InstanceTransformHandle>(a2, *(a1 + 184), (a1 + 120));
  v151 = *(a1 + 184);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WantsCulledSlices>();
  v152 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WantsCulledSlices>(void)::metadata;
  v153 = ecs2::BasicRegistry<void>::storage<md::ls::WantsCulledSlices>(a2);
  v154 = v153;
  v155 = v151 >> 22;
  v157 = (v153 + 8);
  v156 = *(v153 + 8);
  if (v151 >> 22 >= (*(v153 + 16) - v156) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v153 + 8), v155 + 1);
    v156 = *v157;
  }

  v158 = *(v156 + 8 * v155);
  if (!v158)
  {
    operator new();
  }

  v159 = (v158 + 4 * ((v151 >> 16) & 0x3F));
  if (*v159 == -1 && v159[1] == 0)
  {
    v162 = *(v154 + 40);
    v161 = *(v154 + 48);
    if (v162 < v161)
    {
      *v162 = v151;
      v163 = (v162 + 1);
LABEL_172:
      *(v154 + 40) = v163;
      v173 = ((v163 - *(v154 + 32)) >> 2) - 1;
      *v159 = v151;
      v159[1] = v173;
      v174 = *(v154 + 104);
      v175 = *(v154 + 112);
      while (v174 != v175)
      {
        std::function<void ()(ecs2::Entity)>::operator()(*(v174 + 24), v151);
        v174 += 32;
      }

      goto LABEL_175;
    }

    v164 = *(v154 + 32);
    v165 = (v162 - v164) >> 2;
    if (!((v165 + 1) >> 62))
    {
      v166 = v161 - v164;
      v167 = v166 >> 1;
      if (v166 >> 1 <= (v165 + 1))
      {
        v167 = v165 + 1;
      }

      if (v166 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v168 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v168 = v167;
      }

      if (v168)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v168);
      }

      *(4 * v165) = v151;
      v163 = 4 * v165 + 4;
      v169 = *(v154 + 32);
      v170 = *(v154 + 40) - v169;
      v171 = (4 * v165 - v170);
      memcpy(v171, v169, v170);
      v172 = *(v154 + 32);
      *(v154 + 32) = v171;
      *(v154 + 40) = v163;
      *(v154 + 48) = 0;
      if (v172)
      {
        operator delete(v172);
      }

      goto LABEL_172;
    }

LABEL_178:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_175:
  v176 = *(a2 + 41016) + (v151 >> 16 << 6);
  *(v176 + ((v152 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v152;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WantsCulledSlices>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WantsCulledSlices>(void)::metadata) = *(a2 + 4096);
  ecs2::BasicRegistry<void>::add<md::ls::IndexRange>(a2, *(a1 + 184), (a1 + 128));
  ecs2::BasicRegistry<void>::add<md::ls::IntendedSceneLayer>(a2, *(a1 + 184), (a1 + 144));
  ecs2::BasicRegistry<void>::add<md::ls::InstanceCount>(a2, *(a1 + 184), (a1 + 152));
  ecs2::BasicRegistry<void>::add<md::ls::InstanceDataV>(a2, *(a1 + 184), (a1 + 160));
  ecs2::BasicRegistry<void>::add<md::ls::RenderableMeshType>(a2, *(a1 + 184), (a1 + 176));
  ecs2::BasicRegistry<void>::add<md::ls::RenderableMeshVertexFormat>(a2, *(a1 + 184), (a1 + 177));
  v177 = *(a1 + 184);

  ecs2::BasicRegistry<void>::add<md::ls::PrimitiveType>(a2, v177, (a1 + 178));
}

void ecs2::BasicRegistry<void>::add<md::ls::RenderableHash>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableHash>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableHash>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableHash>(a1);
  v8 = v7;
  v9 = a2 >> 22;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
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

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v53 = v28;
    v54 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
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

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
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

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v53;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v54;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + 8 * (v28 & 0x3F)) = *a3;
  v50 = *(v8 + 152);
  v51 = *(v8 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), a2);
    v50 += 32;
  }

LABEL_54:
  v52 = *(v55 + 41016) + (WORD1(a2) << 6);
  *(v52 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableHash>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableHash>(void)::metadata) = *(v55 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::StyleDataKeyHandle>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleDataKeyHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleDataKeyHandle>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::StyleDataKeyHandle>(a1);
  v8 = v7;
  v9 = a2 >> 22;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
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

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v53 = v28;
    v54 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
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

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
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

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v53;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v54;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + 8 * (v28 & 0x3F)) = *a3;
  v50 = *(v8 + 152);
  v51 = *(v8 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), a2);
    v50 += 32;
  }

LABEL_54:
  v52 = *(v55 + 41016) + (WORD1(a2) << 6);
  *(v52 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleDataKeyHandle>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleDataKeyHandle>(void)::metadata) = *(v55 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::InstanceTransformHandle>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceTransformHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceTransformHandle>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceTransformHandle>(a1);
  v8 = v7;
  v9 = a2 >> 22;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
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

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v53 = v28;
    v54 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
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

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
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

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v53;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v54;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + 8 * (v28 & 0x3F)) = *a3;
  v50 = *(v8 + 152);
  v51 = *(v8 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), a2);
    v50 += 32;
  }

LABEL_54:
  v52 = *(v55 + 41016) + (WORD1(a2) << 6);
  *(v52 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceTransformHandle>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceTransformHandle>(void)::metadata) = *(v55 + 4096);
}

void std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::CheckIfTileWasDeleted,md::ls::AssociationHandle,md::ls::VisibilityGroupID,md::ls::MeshRenderableID,md::ls::PendingProcessing,md::ls::PendingProcessingShadow,md::ls::PendingProcessingDepthPrePass,md::ls::RenderablePendingProcessing,md::ls::TileType,md::ls::RenderableHash,md::ls::StyleDataKeyHandle,md::ls::SharedRenderableDataHandle,md::ls::SharedTileMatrix,md::ls::ViewConstantDataHandle,md::ls::TransformConstantDataHandle,md::ls::MeshRenderableTransformConstantDataHandle,md::ls::InstanceTransformHandle,md::ls::WantsCulledSlices,md::ls::IndexRange,md::ls::IntendedSceneLayer,md::ls::InstanceCount,md::ls::InstanceDataV,md::ls::RenderableMeshType,md::ls::RenderableMeshVertexFormat,md::ls::PrimitiveType>(ecs2::Entity,ecs2::ComponentBundle<md::ls::CheckIfTileWasDeleted,md::ls::AssociationHandle,md::ls::VisibilityGroupID,md::ls::MeshRenderableID,md::ls::PendingProcessing,md::ls::PendingProcessingShadow,md::ls::PendingProcessingDepthPrePass,md::ls::RenderablePendingProcessing,md::ls::TileType,md::ls::RenderableHash,md::ls::StyleDataKeyHandle,md::ls::SharedRenderableDataHandle,md::ls::SharedTileMatrix,md::ls::ViewConstantDataHandle,md::ls::TransformConstantDataHandle,md::ls::MeshRenderableTransformConstantDataHandle,md::ls::InstanceTransformHandle,md::ls::WantsCulledSlices,md::ls::IndexRange,md::ls::IntendedSceneLayer,md::ls::InstanceCount,md::ls::InstanceDataV,md::ls::RenderableMeshType,md::ls::RenderableMeshVertexFormat,md::ls::PrimitiveType> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::destroy_deallocate(void *__p)
{
  v2 = __p[21];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::CheckIfTileWasDeleted,md::ls::AssociationHandle,md::ls::VisibilityGroupID,md::ls::MeshRenderableID,md::ls::PendingProcessing,md::ls::PendingProcessingShadow,md::ls::PendingProcessingDepthPrePass,md::ls::RenderablePendingProcessing,md::ls::TileType,md::ls::RenderableHash,md::ls::StyleDataKeyHandle,md::ls::SharedRenderableDataHandle,md::ls::SharedTileMatrix,md::ls::ViewConstantDataHandle,md::ls::TransformConstantDataHandle,md::ls::MeshRenderableTransformConstantDataHandle,md::ls::InstanceTransformHandle,md::ls::WantsCulledSlices,md::ls::IndexRange,md::ls::IntendedSceneLayer,md::ls::InstanceCount,md::ls::InstanceDataV,md::ls::RenderableMeshType,md::ls::RenderableMeshVertexFormat,md::ls::PrimitiveType>(ecs2::Entity,ecs2::ComponentBundle<md::ls::CheckIfTileWasDeleted,md::ls::AssociationHandle,md::ls::VisibilityGroupID,md::ls::MeshRenderableID,md::ls::PendingProcessing,md::ls::PendingProcessingShadow,md::ls::PendingProcessingDepthPrePass,md::ls::RenderablePendingProcessing,md::ls::TileType,md::ls::RenderableHash,md::ls::StyleDataKeyHandle,md::ls::SharedRenderableDataHandle,md::ls::SharedTileMatrix,md::ls::ViewConstantDataHandle,md::ls::TransformConstantDataHandle,md::ls::MeshRenderableTransformConstantDataHandle,md::ls::InstanceTransformHandle,md::ls::WantsCulledSlices,md::ls::IndexRange,md::ls::IntendedSceneLayer,md::ls::InstanceCount,md::ls::InstanceDataV,md::ls::RenderableMeshType,md::ls::RenderableMeshVertexFormat,md::ls::PrimitiveType> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::CheckIfTileWasDeleted,md::ls::AssociationHandle,md::ls::VisibilityGroupID,md::ls::MeshRenderableID,md::ls::PendingProcessing,md::ls::PendingProcessingShadow,md::ls::PendingProcessingDepthPrePass,md::ls::RenderablePendingProcessing,md::ls::TileType,md::ls::RenderableHash,md::ls::StyleDataKeyHandle,md::ls::SharedRenderableDataHandle,md::ls::SharedTileMatrix,md::ls::ViewConstantDataHandle,md::ls::TransformConstantDataHandle,md::ls::MeshRenderableTransformConstantDataHandle,md::ls::InstanceTransformHandle,md::ls::WantsCulledSlices,md::ls::IndexRange,md::ls::IntendedSceneLayer,md::ls::InstanceCount,md::ls::InstanceDataV,md::ls::RenderableMeshType,md::ls::RenderableMeshVertexFormat,md::ls::PrimitiveType>(ecs2::Entity,ecs2::ComponentBundle<md::ls::CheckIfTileWasDeleted,md::ls::AssociationHandle,md::ls::VisibilityGroupID,md::ls::MeshRenderableID,md::ls::PendingProcessing,md::ls::PendingProcessingShadow,md::ls::PendingProcessingDepthPrePass,md::ls::RenderablePendingProcessing,md::ls::TileType,md::ls::RenderableHash,md::ls::StyleDataKeyHandle,md::ls::SharedRenderableDataHandle,md::ls::SharedTileMatrix,md::ls::ViewConstantDataHandle,md::ls::TransformConstantDataHandle,md::ls::MeshRenderableTransformConstantDataHandle,md::ls::InstanceTransformHandle,md::ls::WantsCulledSlices,md::ls::IndexRange,md::ls::IntendedSceneLayer,md::ls::InstanceCount,md::ls::InstanceDataV,md::ls::RenderableMeshType,md::ls::RenderableMeshVertexFormat,md::ls::PrimitiveType> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F2A41878;
  result = std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul>,md::ls::CheckIfTileWasDeleted,md::ls::AssociationHandle,md::ls::VisibilityGroupID,md::ls::MeshRenderableID,md::ls::PendingProcessing,md::ls::PendingProcessingShadow,md::ls::PendingProcessingDepthPrePass,md::ls::RenderablePendingProcessing,md::ls::TileType,md::ls::RenderableHash,md::ls::StyleDataKeyHandle,md::ls::SharedRenderableDataHandle,md::ls::SharedTileMatrix,md::ls::ViewConstantDataHandle,md::ls::TransformConstantDataHandle,md::ls::MeshRenderableTransformConstantDataHandle,md::ls::InstanceTransformHandle,md::ls::WantsCulledSlices,md::ls::IndexRange,md::ls::IntendedSceneLayer,md::ls::InstanceCount,md::ls::InstanceDataV,md::ls::RenderableMeshType,md::ls::RenderableMeshVertexFormat,md::ls::PrimitiveType>::__tuple_impl((a2 + 1), (a1 + 8));
  a2[23] = *(a1 + 184);
  return result;
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul>,md::ls::CheckIfTileWasDeleted,md::ls::AssociationHandle,md::ls::VisibilityGroupID,md::ls::MeshRenderableID,md::ls::PendingProcessing,md::ls::PendingProcessingShadow,md::ls::PendingProcessingDepthPrePass,md::ls::RenderablePendingProcessing,md::ls::TileType,md::ls::RenderableHash,md::ls::StyleDataKeyHandle,md::ls::SharedRenderableDataHandle,md::ls::SharedTileMatrix,md::ls::ViewConstantDataHandle,md::ls::TransformConstantDataHandle,md::ls::MeshRenderableTransformConstantDataHandle,md::ls::InstanceTransformHandle,md::ls::WantsCulledSlices,md::ls::IndexRange,md::ls::IntendedSceneLayer,md::ls::InstanceCount,md::ls::InstanceDataV,md::ls::RenderableMeshType,md::ls::RenderableMeshVertexFormat,md::ls::PrimitiveType>::__tuple_impl(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v2;
  *(result + 24) = *(a2 + 24);
  *(result + 40) = *(a2 + 5);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = *(a2 + 7);
  *(result + 64) = *(a2 + 8);
  *(result + 72) = *(a2 + 9);
  *(result + 80) = *(a2 + 10);
  *(result + 88) = *(a2 + 11);
  *(result + 96) = *(a2 + 12);
  *(result + 104) = *(a2 + 13);
  *(result + 112) = *(a2 + 14);
  *(result + 120) = *(a2 + 120);
  *(result + 136) = *(a2 + 136);
  v3 = *(a2 + 19);
  *(result + 144) = *(a2 + 18);
  *(result + 152) = v3;
  v4 = *(a2 + 20);
  *(result + 160) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 168) = *(a2 + 84);
  *(result + 170) = *(a2 + 170);
  return result;
}

void std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::CheckIfTileWasDeleted,md::ls::AssociationHandle,md::ls::VisibilityGroupID,md::ls::MeshRenderableID,md::ls::PendingProcessing,md::ls::PendingProcessingShadow,md::ls::PendingProcessingDepthPrePass,md::ls::RenderablePendingProcessing,md::ls::TileType,md::ls::RenderableHash,md::ls::StyleDataKeyHandle,md::ls::SharedRenderableDataHandle,md::ls::SharedTileMatrix,md::ls::ViewConstantDataHandle,md::ls::TransformConstantDataHandle,md::ls::MeshRenderableTransformConstantDataHandle,md::ls::InstanceTransformHandle,md::ls::WantsCulledSlices,md::ls::IndexRange,md::ls::IntendedSceneLayer,md::ls::InstanceCount,md::ls::InstanceDataV,md::ls::RenderableMeshType,md::ls::RenderableMeshVertexFormat,md::ls::PrimitiveType>(ecs2::Entity,ecs2::ComponentBundle<md::ls::CheckIfTileWasDeleted,md::ls::AssociationHandle,md::ls::VisibilityGroupID,md::ls::MeshRenderableID,md::ls::PendingProcessing,md::ls::PendingProcessingShadow,md::ls::PendingProcessingDepthPrePass,md::ls::RenderablePendingProcessing,md::ls::TileType,md::ls::RenderableHash,md::ls::StyleDataKeyHandle,md::ls::SharedRenderableDataHandle,md::ls::SharedTileMatrix,md::ls::ViewConstantDataHandle,md::ls::TransformConstantDataHandle,md::ls::MeshRenderableTransformConstantDataHandle,md::ls::InstanceTransformHandle,md::ls::WantsCulledSlices,md::ls::IndexRange,md::ls::IntendedSceneLayer,md::ls::InstanceCount,md::ls::InstanceDataV,md::ls::RenderableMeshType,md::ls::RenderableMeshVertexFormat,md::ls::PrimitiveType> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::~__func(void *a1)
{
  *a1 = &unk_1F2A41878;
  v1 = a1[21];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::CheckIfTileWasDeleted,md::ls::AssociationHandle,md::ls::VisibilityGroupID,md::ls::MeshRenderableID,md::ls::PendingProcessing,md::ls::PendingProcessingShadow,md::ls::PendingProcessingDepthPrePass,md::ls::RenderablePendingProcessing,md::ls::TileType,md::ls::RenderableHash,md::ls::StyleDataKeyHandle,md::ls::SharedRenderableDataHandle,md::ls::SharedTileMatrix,md::ls::ViewConstantDataHandle,md::ls::TransformConstantDataHandle,md::ls::MeshRenderableTransformConstantDataHandle,md::ls::InstanceTransformHandle,md::ls::WantsCulledSlices,md::ls::IndexRange,md::ls::IntendedSceneLayer,md::ls::InstanceCount,md::ls::InstanceDataV,md::ls::RenderableMeshType,md::ls::RenderableMeshVertexFormat,md::ls::PrimitiveType>(ecs2::Entity,ecs2::ComponentBundle<md::ls::CheckIfTileWasDeleted,md::ls::AssociationHandle,md::ls::VisibilityGroupID,md::ls::MeshRenderableID,md::ls::PendingProcessing,md::ls::PendingProcessingShadow,md::ls::PendingProcessingDepthPrePass,md::ls::RenderablePendingProcessing,md::ls::TileType,md::ls::RenderableHash,md::ls::StyleDataKeyHandle,md::ls::SharedRenderableDataHandle,md::ls::SharedTileMatrix,md::ls::ViewConstantDataHandle,md::ls::TransformConstantDataHandle,md::ls::MeshRenderableTransformConstantDataHandle,md::ls::InstanceTransformHandle,md::ls::WantsCulledSlices,md::ls::IndexRange,md::ls::IntendedSceneLayer,md::ls::InstanceCount,md::ls::InstanceDataV,md::ls::RenderableMeshType,md::ls::RenderableMeshVertexFormat,md::ls::PrimitiveType> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::~__func(void *a1)
{
  *a1 = &unk_1F2A41878;
  v2 = a1[21];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::UniqueColorDataHandle,md::ls::UniqueGradientMaskDataHandle,md::ls::UniqueColorCorrectionDataHandle,md::ls::UniqueMaterialVisibilityOptionsHandle,md::ls::MaterialPendingProcessing,md::ls::UniqueMaterialData,md::ls::UnitsPerMeter>(ecs2::Entity,ecs2::ComponentBundle<md::ls::UniqueColorDataHandle,md::ls::UniqueGradientMaskDataHandle,md::ls::UniqueColorCorrectionDataHandle,md::ls::UniqueMaterialVisibilityOptionsHandle,md::ls::MaterialPendingProcessing,md::ls::UniqueMaterialData,md::ls::UnitsPerMeter> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t ii)
{
  v3 = a1;
  v4 = *(a1 + 88);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorDataHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorDataHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueColorDataHandle>(ii);
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

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  v14 = *v12 == -1 && v13 == 0;
  v318 = v3;
  v320 = ii;
  if (v14)
  {
    v16 = *(v7 + 40);
    v15 = *(v7 + 48);
    if (v16 >= v15)
    {
      v18 = *(v7 + 32);
      v19 = (v16 - v18) >> 2;
      if ((v19 + 1) >> 62)
      {
        goto LABEL_316;
      }

      v20 = v15 - v18;
      v21 = v20 >> 1;
      if (v20 >> 1 <= (v19 + 1))
      {
        v21 = v19 + 1;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v22 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v21;
      }

      if (v22)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
      }

      v23 = (4 * v19);
      *v23 = v4;
      v17 = 4 * v19 + 4;
      v24 = *(v7 + 32);
      v25 = *(v7 + 40) - v24;
      v26 = v23 - v25;
      memcpy(v23 - v25, v24, v25);
      v27 = *(v7 + 32);
      *(v7 + 32) = v26;
      *(v7 + 40) = v17;
      *(v7 + 48) = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v16 = v4;
      v17 = (v16 + 1);
    }

    *(v7 + 40) = v17;
    v28 = ((v17 - *(v7 + 32)) >> 2) - 1;
    *v12 = v4;
    v12[1] = v28;
    v29 = v28 >> 6;
    v31 = *(v7 + 56);
    v30 = *(v7 + 64);
    if (v28 >> 6 >= (v30 - v31) >> 3)
    {
      v32 = v29 + 1;
      v33 = v29 + 1 - ((v30 - v31) >> 3);
      v34 = *(v7 + 72);
      v314 = v30 - v31;
      if (v33 > (v34 - v30) >> 3)
      {
        v35 = v34 - v31;
        v36 = (v34 - v31) >> 2;
        if (v36 <= v32)
        {
          v36 = v29 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF8)
        {
          v37 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 61))
        {
          operator new();
        }

        goto LABEL_317;
      }

      v38 = 0;
      v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v40 = vdupq_n_s64(v39);
      do
      {
        v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
        if (v41.i8[0])
        {
          *(v30 + 8 * v38) = 0;
        }

        if (v41.i8[4])
        {
          *(v30 + 8 * v38 + 8) = 0;
        }

        v38 += 2;
      }

      while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
      *(v7 + 64) = v30 + 8 * v33;
      v42 = *(v7 + 80);
      v43 = *(v7 + 88);
      v44 = (v43 - v42) >> 4;
      if (v44 <= v29)
      {
        v45 = v32 - v44;
        v46 = *(v7 + 96);
        if (v45 > (v46 - v43) >> 4)
        {
          v47 = v46 - v42;
          v48 = v47 >> 3;
          if (v47 >> 3 <= v32)
          {
            v48 = v29 + 1;
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

          goto LABEL_317;
        }

        bzero(*(v7 + 88), 16 * v45);
        *(v7 + 88) = v43 + 16 * v45;
      }

      else if (v32 < v44)
      {
        *(v7 + 88) = v42 + 16 * v32;
      }

      v31 = *(v7 + 56);
      if (v314 < *(v7 + 64) - v31)
      {
        operator new();
      }
    }

    *(*(v31 + 8 * v29) + 8 * (v28 & 0x3F)) = *(v3 + 8);
    v50 = *(v7 + 152);
    for (i = *(v7 + 160); v50 != i; v50 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), v4);
    }
  }

  else
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(v3 + 8);
  }

  v52 = *(ii + 41016) + (v4 >> 16 << 6);
  *(v52 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorDataHandle>();
  *(ii + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorDataHandle>(void)::metadata) = *(ii + 4096);
  v53 = *(v3 + 88);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueGradientMaskDataHandle>();
  v54 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueGradientMaskDataHandle>(void)::metadata;
  v55 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueGradientMaskDataHandle>(ii);
  v56 = v55;
  v57 = v53 >> 22;
  v59 = (v55 + 8);
  v58 = *(v55 + 8);
  if (v53 >> 22 >= (*(v55 + 16) - v58) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v55 + 8), v57 + 1);
    v58 = *v59;
  }

  v60 = *(v58 + 8 * v57);
  if (!v60)
  {
    operator new();
  }

  v61 = (v60 + 4 * ((v53 >> 16) & 0x3F));
  v62 = v61[1];
  if (*v61 == -1 && v62 == 0)
  {
    v65 = *(v56 + 40);
    v64 = *(v56 + 48);
    if (v65 >= v64)
    {
      v67 = *(v56 + 32);
      v68 = (v65 - v67) >> 2;
      if ((v68 + 1) >> 62)
      {
        goto LABEL_316;
      }

      v69 = v64 - v67;
      v70 = v69 >> 1;
      if (v69 >> 1 <= (v68 + 1))
      {
        v70 = v68 + 1;
      }

      if (v69 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v71 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v71 = v70;
      }

      if (v71)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v71);
      }

      v72 = (4 * v68);
      *v72 = v53;
      v66 = 4 * v68 + 4;
      v73 = *(v56 + 32);
      v74 = *(v56 + 40) - v73;
      v75 = v72 - v74;
      memcpy(v72 - v74, v73, v74);
      v76 = *(v56 + 32);
      *(v56 + 32) = v75;
      *(v56 + 40) = v66;
      *(v56 + 48) = 0;
      if (v76)
      {
        operator delete(v76);
      }
    }

    else
    {
      *v65 = v53;
      v66 = (v65 + 1);
    }

    *(v56 + 40) = v66;
    v77 = ((v66 - *(v56 + 32)) >> 2) - 1;
    *v61 = v53;
    v61[1] = v77;
    v78 = v77 >> 6;
    v80 = *(v56 + 56);
    v79 = *(v56 + 64);
    v81 = v79 - v80;
    if (v77 >> 6 >= (v79 - v80) >> 3)
    {
      v82 = v78 + 1;
      v83 = v78 + 1 - (v81 >> 3);
      v84 = *(v56 + 72);
      if (v83 > (v84 - v79) >> 3)
      {
        v85 = v84 - v80;
        v86 = (v84 - v80) >> 2;
        if (v86 <= v82)
        {
          v86 = v78 + 1;
        }

        if (v85 >= 0x7FFFFFFFFFFFFFF8)
        {
          v87 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v87 = v86;
        }

        if (!(v87 >> 61))
        {
          operator new();
        }

        goto LABEL_317;
      }

      v88 = 0;
      v89 = (v83 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v90 = vdupq_n_s64(v89);
      do
      {
        v91 = vmovn_s64(vcgeq_u64(v90, vorrq_s8(vdupq_n_s64(v88), xmmword_1B33B0560)));
        if (v91.i8[0])
        {
          *(v79 + 8 * v88) = 0;
        }

        if (v91.i8[4])
        {
          *(v79 + 8 * v88 + 8) = 0;
        }

        v88 += 2;
      }

      while (v89 - ((v83 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v88);
      *(v56 + 64) = v79 + 8 * v83;
      v92 = *(v56 + 80);
      v93 = *(v56 + 88);
      v94 = (v93 - v92) >> 4;
      if (v94 <= v78)
      {
        v95 = v82 - v94;
        v96 = *(v56 + 96);
        if (v95 > (v96 - v93) >> 4)
        {
          v97 = v96 - v92;
          v98 = v97 >> 3;
          if (v97 >> 3 <= v82)
          {
            v98 = v78 + 1;
          }

          if (v97 >= 0x7FFFFFFFFFFFFFF0)
          {
            v99 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v99 = v98;
          }

          if (!(v99 >> 60))
          {
            operator new();
          }

          goto LABEL_317;
        }

        bzero(*(v56 + 88), 16 * v95);
        *(v56 + 88) = v93 + 16 * v95;
        ii = v320;
      }

      else if (v82 < v94)
      {
        *(v56 + 88) = v92 + 16 * v82;
      }

      v80 = *(v56 + 56);
      if (v81 < (*(v56 + 64) - v80))
      {
        operator new();
      }
    }

    *(*(v80 + 8 * v78) + 8 * (v77 & 0x3F)) = *(v3 + 16);
    v100 = *(v56 + 152);
    for (j = *(v56 + 160); v100 != j; v100 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v100 + 24), v53);
    }
  }

  else
  {
    *(*(*(v56 + 56) + ((v62 >> 3) & 0x1FF8)) + 8 * (v62 & 0x3F)) = *(v3 + 16);
  }

  v102 = *(ii + 41016) + (v53 >> 16 << 6);
  *(v102 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v54;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueGradientMaskDataHandle>();
  *(ii + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueGradientMaskDataHandle>(void)::metadata) = *(ii + 4096);
  v103 = *(v3 + 88);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorCorrectionDataHandle>();
  v104 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorCorrectionDataHandle>(void)::metadata;
  v105 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueColorCorrectionDataHandle>(ii);
  v106 = v105;
  v107 = v103 >> 22;
  v109 = (v105 + 8);
  v108 = *(v105 + 8);
  if (v103 >> 22 >= (*(v105 + 16) - v108) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v105 + 8), v107 + 1);
    v108 = *v109;
  }

  v110 = *(v108 + 8 * v107);
  if (!v110)
  {
    operator new();
  }

  v111 = (v110 + 4 * ((v103 >> 16) & 0x3F));
  v112 = v111[1];
  if (*v111 == -1 && v112 == 0)
  {
    v115 = *(v106 + 40);
    v114 = *(v106 + 48);
    if (v115 >= v114)
    {
      v117 = *(v106 + 32);
      v118 = (v115 - v117) >> 2;
      if ((v118 + 1) >> 62)
      {
        goto LABEL_316;
      }

      v119 = v114 - v117;
      v120 = v119 >> 1;
      if (v119 >> 1 <= (v118 + 1))
      {
        v120 = v118 + 1;
      }

      if (v119 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v121 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v121 = v120;
      }

      if (v121)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v121);
      }

      v122 = (4 * v118);
      *v122 = v103;
      v116 = 4 * v118 + 4;
      v123 = *(v106 + 32);
      v124 = *(v106 + 40) - v123;
      v125 = v122 - v124;
      memcpy(v122 - v124, v123, v124);
      v126 = *(v106 + 32);
      *(v106 + 32) = v125;
      *(v106 + 40) = v116;
      *(v106 + 48) = 0;
      if (v126)
      {
        operator delete(v126);
      }
    }

    else
    {
      *v115 = v103;
      v116 = (v115 + 1);
    }

    *(v106 + 40) = v116;
    v127 = ((v116 - *(v106 + 32)) >> 2) - 1;
    *v111 = v103;
    v111[1] = v127;
    v128 = v127 >> 6;
    v130 = *(v106 + 56);
    v129 = *(v106 + 64);
    v131 = v129 - v130;
    if (v127 >> 6 >= (v129 - v130) >> 3)
    {
      v132 = v128 + 1;
      v133 = v128 + 1 - (v131 >> 3);
      v134 = *(v106 + 72);
      if (v133 > (v134 - v129) >> 3)
      {
        v135 = v134 - v130;
        v136 = (v134 - v130) >> 2;
        if (v136 <= v132)
        {
          v136 = v128 + 1;
        }

        if (v135 >= 0x7FFFFFFFFFFFFFF8)
        {
          v137 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v137 = v136;
        }

        if (!(v137 >> 61))
        {
          operator new();
        }

        goto LABEL_317;
      }

      v138 = 0;
      v139 = (v133 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v140 = vdupq_n_s64(v139);
      do
      {
        v141 = vmovn_s64(vcgeq_u64(v140, vorrq_s8(vdupq_n_s64(v138), xmmword_1B33B0560)));
        if (v141.i8[0])
        {
          *(v129 + 8 * v138) = 0;
        }

        if (v141.i8[4])
        {
          *(v129 + 8 * v138 + 8) = 0;
        }

        v138 += 2;
      }

      while (v139 - ((v133 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v138);
      *(v106 + 64) = v129 + 8 * v133;
      v142 = *(v106 + 80);
      v143 = *(v106 + 88);
      v144 = (v143 - v142) >> 4;
      if (v144 <= v128)
      {
        v145 = v132 - v144;
        v146 = *(v106 + 96);
        if (v145 > (v146 - v143) >> 4)
        {
          v147 = v146 - v142;
          v148 = v147 >> 3;
          if (v147 >> 3 <= v132)
          {
            v148 = v128 + 1;
          }

          if (v147 >= 0x7FFFFFFFFFFFFFF0)
          {
            v149 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v149 = v148;
          }

          if (!(v149 >> 60))
          {
            operator new();
          }

          goto LABEL_317;
        }

        bzero(*(v106 + 88), 16 * v145);
        *(v106 + 88) = v143 + 16 * v145;
        ii = v320;
      }

      else if (v132 < v144)
      {
        *(v106 + 88) = v142 + 16 * v132;
      }

      v130 = *(v106 + 56);
      if (v131 < (*(v106 + 64) - v130))
      {
        operator new();
      }
    }

    *(*(v130 + 8 * v128) + 8 * (v127 & 0x3F)) = *(v3 + 24);
    v150 = *(v106 + 152);
    for (k = *(v106 + 160); v150 != k; v150 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v150 + 24), v103);
    }
  }

  else
  {
    *(*(*(v106 + 56) + ((v112 >> 3) & 0x1FF8)) + 8 * (v112 & 0x3F)) = *(v3 + 24);
  }

  v152 = *(ii + 41016) + (v103 >> 16 << 6);
  *(v152 + ((v104 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v104;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorCorrectionDataHandle>();
  *(ii + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorCorrectionDataHandle>(void)::metadata) = *(ii + 4096);
  v153 = *(v3 + 88);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialVisibilityOptionsHandle>();
  v154 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialVisibilityOptionsHandle>(void)::metadata;
  v155 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialVisibilityOptionsHandle>(ii);
  v156 = v155;
  v157 = v153 >> 22;
  v159 = (v155 + 8);
  v158 = *(v155 + 8);
  if (v153 >> 22 >= (*(v155 + 16) - v158) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v155 + 8), v157 + 1);
    v158 = *v159;
  }

  v160 = *(v158 + 8 * v157);
  if (!v160)
  {
    operator new();
  }

  v161 = (v160 + 4 * ((v153 >> 16) & 0x3F));
  v162 = v161[1];
  if (*v161 == -1 && v162 == 0)
  {
    v165 = *(v156 + 40);
    v164 = *(v156 + 48);
    if (v165 >= v164)
    {
      v167 = *(v156 + 32);
      v168 = (v165 - v167) >> 2;
      if ((v168 + 1) >> 62)
      {
        goto LABEL_316;
      }

      v169 = v164 - v167;
      v170 = v169 >> 1;
      if (v169 >> 1 <= (v168 + 1))
      {
        v170 = v168 + 1;
      }

      if (v169 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v171 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v171 = v170;
      }

      if (v171)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v171);
      }

      v172 = (4 * v168);
      *v172 = v153;
      v166 = 4 * v168 + 4;
      v173 = *(v156 + 32);
      v174 = *(v156 + 40) - v173;
      v175 = v172 - v174;
      memcpy(v172 - v174, v173, v174);
      v176 = *(v156 + 32);
      *(v156 + 32) = v175;
      *(v156 + 40) = v166;
      *(v156 + 48) = 0;
      if (v176)
      {
        operator delete(v176);
      }
    }

    else
    {
      *v165 = v153;
      v166 = (v165 + 1);
    }

    *(v156 + 40) = v166;
    v177 = ((v166 - *(v156 + 32)) >> 2) - 1;
    *v161 = v153;
    v161[1] = v177;
    v178 = v177 >> 6;
    v180 = *(v156 + 56);
    v179 = *(v156 + 64);
    v181 = v179 - v180;
    if (v177 >> 6 >= (v179 - v180) >> 3)
    {
      v182 = v178 + 1;
      v183 = v178 + 1 - (v181 >> 3);
      v184 = *(v156 + 72);
      if (v183 > (v184 - v179) >> 3)
      {
        v185 = v184 - v180;
        v186 = (v184 - v180) >> 2;
        if (v186 <= v182)
        {
          v186 = v178 + 1;
        }

        if (v185 >= 0x7FFFFFFFFFFFFFF8)
        {
          v187 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v187 = v186;
        }

        if (!(v187 >> 61))
        {
          operator new();
        }

        goto LABEL_317;
      }

      v188 = 0;
      v189 = (v183 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v190 = vdupq_n_s64(v189);
      do
      {
        v191 = vmovn_s64(vcgeq_u64(v190, vorrq_s8(vdupq_n_s64(v188), xmmword_1B33B0560)));
        if (v191.i8[0])
        {
          *(v179 + 8 * v188) = 0;
        }

        if (v191.i8[4])
        {
          *(v179 + 8 * v188 + 8) = 0;
        }

        v188 += 2;
      }

      while (v189 - ((v183 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v188);
      *(v156 + 64) = v179 + 8 * v183;
      v192 = *(v156 + 80);
      v193 = *(v156 + 88);
      v194 = (v193 - v192) >> 4;
      if (v194 <= v178)
      {
        v195 = v182 - v194;
        v196 = *(v156 + 96);
        if (v195 > (v196 - v193) >> 4)
        {
          v197 = v196 - v192;
          v198 = v197 >> 3;
          if (v197 >> 3 <= v182)
          {
            v198 = v178 + 1;
          }

          if (v197 >= 0x7FFFFFFFFFFFFFF0)
          {
            v199 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v199 = v198;
          }

          if (!(v199 >> 60))
          {
            operator new();
          }

          goto LABEL_317;
        }

        bzero(*(v156 + 88), 16 * v195);
        *(v156 + 88) = v193 + 16 * v195;
        ii = v320;
      }

      else if (v182 < v194)
      {
        *(v156 + 88) = v192 + 16 * v182;
      }

      v180 = *(v156 + 56);
      if (v181 < (*(v156 + 64) - v180))
      {
        operator new();
      }
    }

    *(*(v180 + 8 * v178) + 16 * (v177 & 0x3F)) = *(v3 + 32);
    v200 = *(v156 + 152);
    for (m = *(v156 + 160); v200 != m; v200 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v200 + 24), v153);
    }
  }

  else
  {
    v308 = *(v3 + 32);
    v309 = *(*(v156 + 56) + ((v162 >> 3) & 0x1FF8)) + 16 * (v162 & 0x3F);
    *(v309 + 8) = *(v3 + 40);
    *v309 = v308;
  }

  v202 = *(ii + 41016) + (v153 >> 16 << 6);
  *(v202 + ((v154 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v154;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialVisibilityOptionsHandle>();
  *(ii + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialVisibilityOptionsHandle>(void)::metadata) = *(ii + 4096);
  ecs2::BasicRegistry<void>::add<md::ls::MaterialPendingProcessing>(ii, *(v3 + 88));
  v203 = *(v3 + 88);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialData>();
  v204 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialData>(void)::metadata;
  v205 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialData>(ii);
  v206 = v205;
  v207 = v203 >> 22;
  v209 = (v205 + 8);
  v208 = *(v205 + 8);
  if (v203 >> 22 >= (*(v205 + 16) - v208) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v205 + 8), v207 + 1);
    v208 = *v209;
  }

  v210 = *(v208 + 8 * v207);
  if (!v210)
  {
    operator new();
  }

  v211 = (v210 + 4 * ((v203 >> 16) & 0x3F));
  v212 = v211[1];
  if (*v211 == -1 && v212 == 0)
  {
    v215 = *(v206 + 40);
    v214 = *(v206 + 48);
    v316 = v204;
    if (v215 >= v214)
    {
      v217 = *(v206 + 32);
      v218 = (v215 - v217) >> 2;
      if ((v218 + 1) >> 62)
      {
        goto LABEL_316;
      }

      v219 = v214 - v217;
      v220 = v219 >> 1;
      if (v219 >> 1 <= (v218 + 1))
      {
        v220 = v218 + 1;
      }

      if (v219 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v221 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v221 = v220;
      }

      if (v221)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v221);
      }

      v222 = (4 * v218);
      *v222 = v203;
      v216 = 4 * v218 + 4;
      v223 = *(v206 + 32);
      v224 = *(v206 + 40) - v223;
      v225 = v222 - v224;
      memcpy(v222 - v224, v223, v224);
      v226 = *(v206 + 32);
      *(v206 + 32) = v225;
      *(v206 + 40) = v216;
      *(v206 + 48) = 0;
      if (v226)
      {
        operator delete(v226);
      }
    }

    else
    {
      *v215 = v203;
      v216 = (v215 + 1);
    }

    *(v206 + 40) = v216;
    v227 = ((v216 - *(v206 + 32)) >> 2) - 1;
    *v211 = v203;
    v211[1] = v227;
    v228 = v227 >> 6;
    v230 = *(v206 + 56);
    v229 = *(v206 + 64);
    v231 = v229 - v230;
    if (v227 >> 6 >= (v229 - v230) >> 3)
    {
      v232 = v228 + 1;
      v233 = v228 + 1 - (v231 >> 3);
      v234 = *(v206 + 72);
      if (v233 > (v234 - v229) >> 3)
      {
        v235 = v234 - v230;
        v236 = (v234 - v230) >> 2;
        if (v236 <= v232)
        {
          v236 = v228 + 1;
        }

        if (v235 >= 0x7FFFFFFFFFFFFFF8)
        {
          v237 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v237 = v236;
        }

        if (!(v237 >> 61))
        {
          operator new();
        }

        goto LABEL_317;
      }

      v238 = 0;
      v239 = (v233 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v240 = vdupq_n_s64(v239);
      do
      {
        v241 = vmovn_s64(vcgeq_u64(v240, vorrq_s8(vdupq_n_s64(v238), xmmword_1B33B0560)));
        if (v241.i8[0])
        {
          *(v229 + 8 * v238) = 0;
        }

        if (v241.i8[4])
        {
          *(v229 + 8 * v238 + 8) = 0;
        }

        v238 += 2;
      }

      while (v239 - ((v233 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v238);
      *(v206 + 64) = v229 + 8 * v233;
      v242 = *(v206 + 80);
      v243 = *(v206 + 88);
      v244 = (v243 - v242) >> 4;
      if (v244 <= v228)
      {
        v245 = v232 - v244;
        v246 = *(v206 + 96);
        if (v245 > (v246 - v243) >> 4)
        {
          v247 = v246 - v242;
          v248 = v247 >> 3;
          if (v247 >> 3 <= v232)
          {
            v248 = v228 + 1;
          }

          if (v247 >= 0x7FFFFFFFFFFFFFF0)
          {
            v249 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v249 = v248;
          }

          if (!(v249 >> 60))
          {
            operator new();
          }

          goto LABEL_317;
        }

        bzero(*(v206 + 88), 16 * v245);
        *(v206 + 88) = v243 + 16 * v245;
        ii = v320;
      }

      else if (v232 < v244)
      {
        *(v206 + 88) = v242 + 16 * v232;
      }

      v230 = *(v206 + 56);
      if (v231 < (*(v206 + 64) - v230))
      {
        operator new();
      }
    }

    v250 = *(v230 + 8 * v228) + 24 * (v227 & 0x3F);
    v204 = v316;
    v3 = v318;
    v251 = *(v318 + 48);
    *(v250 + 16) = *(v318 + 64);
    *v250 = v251;
    v252 = *(v206 + 152);
    for (n = *(v206 + 160); v252 != n; v252 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v252 + 24), v203);
    }
  }

  else
  {
    v310 = *(*(v206 + 56) + ((v212 >> 3) & 0x1FF8)) + 24 * (v212 & 0x3F);
    v311 = *(v3 + 48);
    *(v310 + 16) = *(v3 + 64);
    *v310 = v311;
  }

  v254 = *(ii + 41016) + (v203 >> 16 << 6);
  *(v254 + ((v204 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v204;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialData>();
  *(ii + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialData>(void)::metadata) = *(ii + 4096);
  v255 = *(v3 + 88);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnitsPerMeter>();
  v256 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnitsPerMeter>(void)::metadata;
  v257 = ecs2::BasicRegistry<void>::storage<md::ls::UnitsPerMeter>(ii);
  v258 = v257;
  v259 = v255 >> 22;
  v261 = (v257 + 8);
  v260 = *(v257 + 8);
  if (v255 >> 22 >= (*(v257 + 16) - v260) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v257 + 8), v259 + 1);
    v260 = *v261;
  }

  v262 = *(v260 + 8 * v259);
  if (!v262)
  {
    operator new();
  }

  v263 = (v3 + 72);
  v264 = (v262 + 4 * ((v255 >> 16) & 0x3F));
  v265 = v264[1];
  if (*v264 != -1 || v265 != 0)
  {
    v312 = 0;
    v313 = *(*(v258 + 56) + ((v265 >> 3) & 0x1FF8)) + 12 * (v265 & 0x3F);
    do
    {
      *(v313 + v312) = *(v263 + v312);
      v312 += 4;
    }

    while (v312 != 12);
    goto LABEL_313;
  }

  v268 = *(v258 + 40);
  v267 = *(v258 + 48);
  v319 = v256;
  if (v268 < v267)
  {
    *v268 = v255;
    v269 = (v268 + 1);
    goto LABEL_282;
  }

  v270 = *(v258 + 32);
  v271 = (v268 - v270) >> 2;
  if ((v271 + 1) >> 62)
  {
LABEL_316:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v272 = v267 - v270;
  v273 = v272 >> 1;
  if (v272 >> 1 <= (v271 + 1))
  {
    v273 = v271 + 1;
  }

  if (v272 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v274 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v274 = v273;
  }

  if (v274)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v274);
  }

  v275 = (4 * v271);
  *v275 = v255;
  v269 = 4 * v271 + 4;
  v276 = *(v258 + 32);
  v277 = *(v258 + 40) - v276;
  v278 = v275 - v277;
  memcpy(v275 - v277, v276, v277);
  v279 = *(v258 + 32);
  *(v258 + 32) = v278;
  *(v258 + 40) = v269;
  *(v258 + 48) = 0;
  if (v279)
  {
    operator delete(v279);
  }

LABEL_282:
  *(v258 + 40) = v269;
  v280 = ((v269 - *(v258 + 32)) >> 2) - 1;
  *v264 = v255;
  v264[1] = v280;
  v281 = v280 >> 6;
  v283 = *(v258 + 56);
  v282 = *(v258 + 64);
  v284 = v282 - v283;
  if (v280 >> 6 >= (v282 - v283) >> 3)
  {
    v315 = v280;
    v317 = v282 - v283;
    v285 = v281 + 1;
    v286 = v281 + 1 - (v284 >> 3);
    v287 = *(v258 + 72);
    if (v286 > (v287 - v282) >> 3)
    {
      v288 = v287 - v283;
      v289 = (v287 - v283) >> 2;
      if (v289 <= v285)
      {
        v289 = v281 + 1;
      }

      if (v288 >= 0x7FFFFFFFFFFFFFF8)
      {
        v290 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v290 = v289;
      }

      if (!(v290 >> 61))
      {
        operator new();
      }

      goto LABEL_317;
    }

    v291 = 0;
    v292 = (v286 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v293 = vdupq_n_s64(v292);
    do
    {
      v294 = vmovn_s64(vcgeq_u64(v293, vorrq_s8(vdupq_n_s64(v291), xmmword_1B33B0560)));
      if (v294.i8[0])
      {
        *(v282 + 8 * v291) = 0;
      }

      if (v294.i8[4])
      {
        *(v282 + 8 * v291 + 8) = 0;
      }

      v291 += 2;
    }

    while (v292 - ((v286 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v291);
    *(v258 + 64) = v282 + 8 * v286;
    v295 = *(v258 + 80);
    v296 = *(v258 + 88);
    v297 = (v296 - v295) >> 4;
    if (v297 > v281)
    {
      if (v285 < v297)
      {
        *(v258 + 88) = v295 + 16 * v285;
      }

      goto LABEL_309;
    }

    v298 = v285 - v297;
    v299 = *(v258 + 96);
    if (v298 <= (v299 - v296) >> 4)
    {
      bzero(*(v258 + 88), 16 * v298);
      *(v258 + 88) = v296 + 16 * v298;
      v284 = v317;
LABEL_309:
      v283 = *(v258 + 56);
      LOBYTE(v280) = v315;
      if (v284 < (*(v258 + 64) - v283))
      {
        operator new();
      }

      goto LABEL_311;
    }

    v300 = v299 - v295;
    v301 = v300 >> 3;
    if (v300 >> 3 <= v285)
    {
      v301 = v281 + 1;
    }

    if (v300 >= 0x7FFFFFFFFFFFFFF0)
    {
      v302 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v302 = v301;
    }

    if (!(v302 >> 60))
    {
      operator new();
    }

LABEL_317:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_311:
  v303 = *(v283 + 8 * v281) + 12 * (v280 & 0x3F);
  v304 = *v263;
  *(v303 + 8) = *(v263 + 2);
  *v303 = v304;
  v305 = *(v258 + 152);
  v306 = *(v258 + 160);
  v256 = v319;
  for (ii = v320; v305 != v306; v305 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v305 + 24), v255);
  }

LABEL_313:
  v307 = *(ii + 41016) + (v255 >> 16 << 6);
  *(v307 + ((v256 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v256;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnitsPerMeter>();
  *(ii + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnitsPerMeter>(void)::metadata) = *(ii + 4096);
}

__n128 std::__function::__func<ecs2::AddComponentBundle::AddComponentBundle<md::ls::UniqueColorDataHandle,md::ls::UniqueGradientMaskDataHandle,md::ls::UniqueColorCorrectionDataHandle,md::ls::UniqueMaterialVisibilityOptionsHandle,md::ls::MaterialPendingProcessing,md::ls::UniqueMaterialData,md::ls::UnitsPerMeter>(ecs2::Entity,ecs2::ComponentBundle<md::ls::UniqueColorDataHandle,md::ls::UniqueGradientMaskDataHandle,md::ls::UniqueColorCorrectionDataHandle,md::ls::UniqueMaterialVisibilityOptionsHandle,md::ls::MaterialPendingProcessing,md::ls::UniqueMaterialData,md::ls::UnitsPerMeter> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A41520;
  result = *(a1 + 40);
  v3 = *(a1 + 56);
  v4 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  v5 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v5;
  *(a2 + 72) = v4;
  *(a2 + 56) = v3;
  *(a2 + 40) = result;
  *(a2 + 92) = 0;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PlanarParametersCacheKeyHandle>(ecs2::Entity,md::ls::PlanarParametersCacheKeyHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A51BA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UniqueSSAOIntensityDataHandle>(ecs2::Entity,md::ls::UniqueSSAOIntensityDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueSSAOIntensityDataHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueSSAOIntensityDataHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueSSAOIntensityDataHandle>(a2);
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

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueSSAOIntensityDataHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueSSAOIntensityDataHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UniqueSSAOIntensityDataHandle>(ecs2::Entity,md::ls::UniqueSSAOIntensityDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A41450;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UniqueMaterialEmissiveTexture>(ecs2::Entity,md::ls::UniqueMaterialEmissiveTexture &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialEmissiveTexture>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialEmissiveTexture>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialEmissiveTexture>(a2);
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

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 16 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 16 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialEmissiveTexture>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialEmissiveTexture>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UniqueMaterialEmissiveTexture>(ecs2::Entity,md::ls::UniqueMaterialEmissiveTexture &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A41380;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UniqueMaterialAlbedoTexture>(ecs2::Entity,md::ls::UniqueMaterialAlbedoTexture &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialAlbedoTexture>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialAlbedoTexture>(void)::metadata;
  v59 = a2;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialAlbedoTexture>(a2);
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

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 == -1 && v13 == 0)
  {
    v16 = *(v7 + 40);
    v15 = *(v7 + 48);
    if (v16 >= v15)
    {
      v18 = *(v7 + 32);
      v19 = (v16 - v18) >> 2;
      if ((v19 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = v15 - v18;
      v21 = v20 >> 1;
      if (v20 >> 1 <= (v19 + 1))
      {
        v21 = v19 + 1;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v22 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v21;
      }

      if (v22)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
      }

      *(4 * v19) = v4;
      v17 = 4 * v19 + 4;
      v23 = *(v7 + 32);
      v24 = *(v7 + 40) - v23;
      v25 = (4 * v19 - v24);
      memcpy(v25, v23, v24);
      v26 = *(v7 + 32);
      *(v7 + 32) = v25;
      *(v7 + 40) = v17;
      *(v7 + 48) = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v16 = v4;
      v17 = (v16 + 1);
    }

    *(v7 + 40) = v17;
    v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
    *v12 = v4;
    v12[1] = v27;
    v28 = v27 >> 6;
    v30 = *(v7 + 56);
    v29 = *(v7 + 64);
    if (v27 >> 6 >= (v29 - v30) >> 3)
    {
      v56 = v27;
      v57 = v5;
      v31 = v28 + 1;
      v32 = v28 + 1 - ((v29 - v30) >> 3);
      v33 = *(v7 + 72);
      v58 = v29 - v30;
      if (v32 > (v33 - v29) >> 3)
      {
        v34 = v33 - v30;
        v35 = (v33 - v30) >> 2;
        if (v35 <= v31)
        {
          v35 = v28 + 1;
        }

        if (v34 >= 0x7FFFFFFFFFFFFFF8)
        {
          v36 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v35;
        }

        if (!(v36 >> 61))
        {
          operator new();
        }

        goto LABEL_58;
      }

      v37 = 0;
      v38 = (v32 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v39 = vdupq_n_s64(v38);
      do
      {
        v40 = vmovn_s64(vcgeq_u64(v39, vorrq_s8(vdupq_n_s64(v37), xmmword_1B33B0560)));
        if (v40.i8[0])
        {
          *(v29 + 8 * v37) = 0;
        }

        if (v40.i8[4])
        {
          *(v29 + 8 * v37 + 8) = 0;
        }

        v37 += 2;
      }

      while (v38 - ((v32 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v37);
      *(v7 + 64) = v29 + 8 * v32;
      v41 = *(v7 + 80);
      v42 = *(v7 + 88);
      v43 = (v42 - v41) >> 4;
      if (v43 <= v28)
      {
        v27 = v31 - v43;
        v44 = *(v7 + 96);
        if (v27 > (v44 - v42) >> 4)
        {
          v45 = v44 - v41;
          v46 = v45 >> 3;
          if (v45 >> 3 <= v31)
          {
            v46 = v28 + 1;
          }

          if (v45 >= 0x7FFFFFFFFFFFFFF0)
          {
            v47 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v47 = v46;
          }

          if (!(v47 >> 60))
          {
            operator new();
          }

LABEL_58:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        bzero(*(v7 + 88), 16 * v27);
        *(v7 + 88) = v42 + 16 * v27;
        LOBYTE(v27) = v56;
      }

      else if (v31 < v43)
      {
        *(v7 + 88) = v41 + 16 * v31;
      }

      v30 = *(v7 + 56);
      v5 = v57;
      if (v58 < *(v7 + 64) - v30)
      {
        operator new();
      }
    }

    v48 = (*(v30 + 8 * v28) + 32 * (v27 & 0x3F));
    *v48 = *(a1 + 8);
    v48[1] = *(a1 + 24);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    v49 = *(v7 + 152);
    v50 = *(v7 + 160);
    while (v49 != v50)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v49 + 24), v4);
      v49 += 32;
    }

    goto LABEL_56;
  }

  v51 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 32 * (v13 & 0x3F);
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(a1 + 24);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v54 = *(v51 + 24);
  *(v51 + 16) = v53;
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v54);
  }

LABEL_56:
  v55 = *(v59 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialAlbedoTexture>();
  *(v59 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialAlbedoTexture>(void)::metadata) = *(v59 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UniqueMaterialAlbedoTexture>(ecs2::Entity,md::ls::UniqueMaterialAlbedoTexture &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UniqueMaterialAlbedoTexture>(ecs2::Entity,md::ls::UniqueMaterialAlbedoTexture &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UniqueMaterialAlbedoTexture>(ecs2::Entity,md::ls::UniqueMaterialAlbedoTexture &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A412B0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(result + 40);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UniqueMaterialAlbedoTexture>(ecs2::Entity,md::ls::UniqueMaterialAlbedoTexture &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::~__func(void *a1)
{
  *a1 = &unk_1F2A412B0;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UniqueMaterialAlbedoTexture>(ecs2::Entity,md::ls::UniqueMaterialAlbedoTexture &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::~__func(void *a1)
{
  *a1 = &unk_1F2A412B0;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UniqueMaterialZIndexHandle>(ecs2::Entity,md::ls::UniqueMaterialZIndexHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialZIndexHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialZIndexHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialZIndexHandle>(a2);
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

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 16) = *(a1 + 24);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 24 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 16) = *(a1 + 24);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialZIndexHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialZIndexHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UniqueMaterialZIndexHandle>(ecs2::Entity,md::ls::UniqueMaterialZIndexHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A411E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 36) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UniqueMaterialDiffuseTexture>(ecs2::Entity,md::ls::UniqueMaterialDiffuseTexture &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialDiffuseTexture>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialDiffuseTexture>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialDiffuseTexture>(a2);
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

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 16 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 16 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialDiffuseTexture>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialDiffuseTexture>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UniqueMaterialDiffuseTexture>(ecs2::Entity,md::ls::UniqueMaterialDiffuseTexture &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A410E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

__n128 std::__function::__func<md::ita::CollectDaVinciMeshRenderables::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::AssociationTileHandle const&,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable> const&,md::ls::TransferStyleAttributeRasterSet const*,md::ls::TileUnitsPerMeter const&,md::ls::MapDataTypeV const&,md::ls::TileClippingConstantDataHandle const*,md::ls::TileViewConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TileRenderableDataHandle const&,md::ls::TileStyleDataKeyHandle const&,md::ls::RenderablesCount const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileShadowConstantDataHandle const*,md::ls::TilePrepassShadowConstantDataHandle const*,md::ls::TilePrepassConstantDataHandle const*,md::ls::TileStyleCameraConstantDataHandle const*,md::ls::SupportsStylizedShading const*>)::$_0,std::allocator<md::ita::CollectDaVinciMeshRenderables::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::AssociationTileHandle const&,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable> const&,md::ls::TransferStyleAttributeRasterSet const*,md::ls::TileUnitsPerMeter const&,md::ls::MapDataTypeV const&,md::ls::TileClippingConstantDataHandle const*,md::ls::TileViewConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TileRenderableDataHandle const&,md::ls::TileStyleDataKeyHandle const&,md::ls::RenderablesCount const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileShadowConstantDataHandle const*,md::ls::TilePrepassShadowConstantDataHandle const*,md::ls::TilePrepassConstantDataHandle const*,md::ls::TileStyleCameraConstantDataHandle const*,md::ls::SupportsStylizedShading const*>)::$_0>,void ()(md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::AssociationTileHandle const&,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable> const&,md::ls::TransferStyleAttributeRasterSet const*,md::ls::TileUnitsPerMeter const&,md::ls::MapDataTypeV const&,md::ls::TileClippingConstantDataHandle const*,md::ls::TileViewConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TileRenderableDataHandle const&,md::ls::TileStyleDataKeyHandle const&,md::ls::RenderablesCount const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileShadowConstantDataHandle const*,md::ls::TilePrepassShadowConstantDataHandle const*,md::ls::TilePrepassConstantDataHandle const*,md::ls::TileStyleCameraConstantDataHandle const*,md::ls::SupportsStylizedShading const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A410A0;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t std::__function::__func<BOOL (*)(md::ls::RenderablesCount const&),std::allocator<BOOL (*)(md::ls::RenderablesCount const&)>,BOOL ()(md::ls::RenderablesCount const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A40BB0;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::ita::UpdateTilePerPoint::operator()(ecs2::Query<md::ls::BaseMapTileHandle const&,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable> const&,md::ls::TileRenderableDataHandle const&>)::$_0,std::allocator<md::ita::UpdateTilePerPoint::operator()(ecs2::Query<md::ls::BaseMapTileHandle const&,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable> const&,md::ls::TileRenderableDataHandle const&>)::$_0>,void ()(md::ls::BaseMapTileHandle const&,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable> const&,md::ls::TileRenderableDataHandle const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A43398;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void md::Logic<md::LocalNorthLogic,md::LocalNorthLogicContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::SceneContext,md::CameraContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

uint64_t _ZNKSt3__110__function6__funcIZN2md15LocalNorthLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_17StyleLogicContextENS2_12SceneContextENS2_13CameraContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_22LocalNorthLogicContextEE3__0NS_9allocatorISL_EEFvNS2_17StyleManagerEventEEE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A43620;
  a2[1] = v2;
  return result;
}

uint64_t md::Logic<md::LocalNorthLogic,md::LocalNorthLogicContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::SceneContext,md::CameraContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xC81F81A7CB7767BBLL && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::SceneContext,md::CameraContext>,gdc::TypeList<>>::buildRequiredTuple<md::StyleLogicContext,md::SceneContext,md::CameraContext>(v7, *(a2 + 8));
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::LocalNorthLogicContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::LocalNorthLogicContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A43668;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x1000C4000313F17);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::LocalNorthLogicContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A43668;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C4000313F17);
  }

  return a1;
}

void md::LocalNorthLogic::~LocalNorthLogic(md::LocalNorthLogic *this)
{
  md::LocalNorthLogic::~LocalNorthLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A434B0;
  std::__function::__value_func<void ()(geo::Unit<geo::DegreeUnitDescription,double>)>::~__value_func[abi:nn200100](this + 176);
  v2 = *(this + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 120));
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void md::LabelClusterProvider::labelMarkerForClusterNode(md::LabelClusterProvider *this@<X0>, md::ClusterNode *a2@<X1>, void *a3@<X8>)
{
  v5 = (*(*a2 + 64))(a2);
  if (v5)
  {
    v6 = *(this + 2);
    v7 = (*(*v5 + 88))(v5);
    md::LabelManager::labelMarkerForCustomFeatureAnnotation(a3, v6, v7, *(this + 4));
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_1B320D298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, std::__shared_weak_count *a39)
{
  std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v40 - 160));
  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a39);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::LabelClusterTree>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A436E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void processMaterialPlanarParameters(uint64_t a1, uint64_t *a2, mre::GGLResourceStore *a3, unint64_t *a4, TextureHandle *a5, unint64_t *a6, void *a7)
{
  v14 = +[VKDebugSettings sharedSettings];
  v15 = [v14 daVinciPlanarOverride];
  if (v15)
  {
    [v14 daVinciPlanarPixelPerMeterOverride];
  }

  else
  {
    v16 = 0x4200000042000000;
  }

  v156 = v16;
  [v14 daVinciPlanarTilingOverride];
  v18 = v17;
  [v14 daVinciPlanarOffsetOverride];
  v20 = v19;
  v21 = *(a1 + 14324);
  md::MaterialResourceStore::getMaterial(&v162, a2, *a4);
  TextureStorageTracked = mre::GGLResourceStore::getTextureStorageTracked(a3, *a5);
  if (!TextureStorageTracked || !*TextureStorageTracked)
  {
    goto LABEL_170;
  }

  v23 = *(*TextureStorageTracked + 80);
  LODWORD(v154) = *a7;
  v24 = v162;
  v25 = (*(*v162 + 392))(v162, v21);
  v27 = v26;
  v28 = (*(*v24 + 424))(v24, v21);
  v30 = vcvt_f32_u32(v23);
  __asm { FMOV            V3.2S, #1.0 }

  v35 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v27), 0x1FuLL)), v25, _D3);
  v37 = vand_s8(v28, vcltz_s32(vshl_n_s32(vdup_n_s32(v36), 0x1FuLL)));
  v38 = __PAIR64__(v28.u32[1], 1.0);
  if (v18 == 0.0)
  {
    *v29.i32 = v18;
  }

  else
  {
    *v29.i32 = 1.0;
  }

  if (v20 == 0.0)
  {
    *v38.i32 = v20;
  }

  v39 = vdup_lane_s32(v29, 0);
  v40 = vdup_lane_s32(v38, 0);
  if (v15)
  {
    v41 = -1;
  }

  else
  {
    v41 = 0;
  }

  v42 = vdup_n_s32(v41);
  v43 = vdiv_f32(vdup_lane_s32(v156, 0), vmul_n_f32(v30, v154));
  v44 = vmul_f32(vbsl_s8(v42, v39, v35), v43);
  v45 = vmul_f32(vbsl_s8(v42, v40, v37), v43);
  v46 = md::getStorage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>((a1 + 4872), *a6);
  v47 = std::__hash_table<std::__hash_value_type<md::PlanarParametersCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>>,std::__unordered_map_hasher<md::PlanarParametersCacheKey,std::__hash_value_type<md::PlanarParametersCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>>,md::PlanarParametersCacheKeyHasher,std::equal_to<md::PlanarParametersCacheKey>,true>,std::__unordered_map_equal<md::PlanarParametersCacheKey,std::__hash_value_type<md::PlanarParametersCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>>,std::equal_to<md::PlanarParametersCacheKey>,md::PlanarParametersCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::PlanarParametersCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>>>>::find<md::PlanarParametersCacheKey>((a1 + 4792), v46);
  if (v47)
  {
    v48 = v47[4];
  }

  else
  {
    v48 = 0;
  }

  *v161.f32 = v44;
  *&v161.u32[2] = v45;
  *v46 = v161;
  v49 = std::__hash_table<std::__hash_value_type<md::PlanarParametersCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>>,std::__unordered_map_hasher<md::PlanarParametersCacheKey,std::__hash_value_type<md::PlanarParametersCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>>,md::PlanarParametersCacheKeyHasher,std::equal_to<md::PlanarParametersCacheKey>,true>,std::__unordered_map_equal<md::PlanarParametersCacheKey,std::__hash_value_type<md::PlanarParametersCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>>,std::equal_to<md::PlanarParametersCacheKey>,md::PlanarParametersCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::PlanarParametersCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>>>>::find<md::PlanarParametersCacheKey>((a1 + 4792), &v161);
  if (v49)
  {
    v50 = v49[4];
    if (v50)
    {
      if (v48 != v50)
      {
        v51 = *(*(*(a1 + 4448) + 8 * (v49[4] >> 6)) + 16 * (v49[4] & 0x3FLL) + 8);
        v52 = *(*(a1 + 4496) + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v51 & 0x3F);
        ++*(v52 + 8);
        md::updateRetainedCounter((a1 + 4440), v48);
      }

      goto LABEL_170;
    }
  }

  v157 = v48;
  v158 = 0uLL;
  v159 = 0;
  v164 = 0;
  v53 = *(a1 + 4656);
  v54 = *(a1 + 4672);
  if (*(a1 + 4648) == v53)
  {
    v55 = ((*(a1 + 4680) - v54) >> 3) | 0x100000000;
    v165[0] = v55;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 4672, v165);
  }

  else
  {
    v55 = *(v54 + 8 * *(v53 - 8));
    *(a1 + 4656) = v53 - 8;
  }

  v165[0] = v55;
  v56 = v55 >> 6;
  v57 = *(a1 + 4456);
  v58 = *(a1 + 4448);
  if (v56 >= (v57 - v58) >> 3)
  {
    v59 = v56 + 1;
    v60 = v56 + 1 - ((v57 - v58) >> 3);
    v61 = *(a1 + 4464);
    if (v60 > (v61 - v57) >> 3)
    {
      v62 = v61 - v58;
      if (v62 >> 2 > v59)
      {
        v59 = v62 >> 2;
      }

      if (v62 >= 0x7FFFFFFFFFFFFFF8)
      {
        v63 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v63 = v59;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v63);
    }

    bzero(*(a1 + 4456), 8 * v60);
    *(a1 + 4456) = v57 + 8 * v60;
    v58 = *(a1 + 4448);
  }

  v64 = *(v58 + 8 * v56);
  if (!v64)
  {
    operator new();
  }

  v65 = (v64 + 16 * (v55 & 0x3F));
  if (*v65 == -1 && v65[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 4472, v165);
    v67 = ((*(a1 + 4480) - *(a1 + 4472)) >> 3) - 1;
    *v65 = HIDWORD(v55);
    v65[1] = v67;
    v68 = v67 & 0x3F;
    v69 = (*(*(a1 + 4496) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((a1 + 4496), v67)) + 24 * v68);
    *v69 = vdupq_n_s64(1uLL);
    v69[1].i16[0] = 1;
    v70 = v67 >> 6;
    v71 = *(a1 + 4552);
    v72 = *(a1 + 4544);
    v155 = v67 >> 6;
    if (v67 >> 6 >= (v71 - v72) >> 3)
    {
      v73 = v70 + 1;
      v74 = v70 + 1 - ((v71 - v72) >> 3);
      v75 = *(a1 + 4560);
      v152 = v71 - v72;
      if (v74 > (v75 - v71) >> 3)
      {
        v76 = v75 - v72;
        v77 = (v75 - v72) >> 2;
        if (v77 <= v73)
        {
          v77 = v70 + 1;
        }

        if (v76 >= 0x7FFFFFFFFFFFFFF8)
        {
          v78 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v78 = v77;
        }

        if (!(v78 >> 61))
        {
          operator new();
        }

        goto LABEL_173;
      }

      v79 = 0;
      v80 = (v74 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v81 = vdupq_n_s64(v80);
      do
      {
        v82 = vmovn_s64(vcgeq_u64(v81, vorrq_s8(vdupq_n_s64(v79), xmmword_1B33B0560)));
        if (v82.i8[0])
        {
          *(v71 + 8 * v79) = 0;
        }

        if (v82.i8[4])
        {
          *(v71 + 8 * v79 + 8) = 0;
        }

        v79 += 2;
      }

      while (v80 - ((v74 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v79);
      *(a1 + 4552) = v71 + 8 * v74;
      v83 = *(a1 + 4576);
      v84 = *(a1 + 4568);
      v85 = (v83 - v84) >> 4;
      if (v85 <= v70)
      {
        v86 = v73 - v85;
        v87 = *(a1 + 4584);
        if (v86 > (v87 - v83) >> 4)
        {
          v88 = v87 - v84;
          v89 = v88 >> 3;
          if (v88 >> 3 <= v73)
          {
            v89 = v73;
          }

          if (v88 >= 0x7FFFFFFFFFFFFFF0)
          {
            v89 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (!(v89 >> 60))
          {
            operator new();
          }

          goto LABEL_173;
        }

        bzero(*(a1 + 4576), 16 * v86);
        *(a1 + 4576) = v83 + 16 * v86;
        v70 = v155;
      }

      else if (v73 < v85)
      {
        *(a1 + 4576) = v84 + 16 * v73;
      }

      v72 = *(a1 + 4544);
      if (v152 < *(a1 + 4552) - v72)
      {
        operator new();
      }
    }

    v90 = *(v72 + 8 * v70) + 24 * v68;
    *v90 = v158;
    *(v90 + 16) = v159;
    *(&v158 + 1) = 0;
    v159 = 0;
    v91 = *(a1 + 4600);
    v92 = *(a1 + 4592);
    if (v70 < (v91 - v92) >> 3)
    {
LABEL_97:
      *(*(v92 + 8 * v70) + 8 * v68) = v164;
      goto LABEL_98;
    }

    v153 = v91 - v92;
    v93 = v70 + 1;
    v94 = v70 + 1 - ((v91 - v92) >> 3);
    v95 = *(a1 + 4608);
    if (v94 > (v95 - v91) >> 3)
    {
      v96 = v95 - v92;
      v97 = (v95 - v92) >> 2;
      if (v97 <= v93)
      {
        v97 = v70 + 1;
      }

      if (v96 >= 0x7FFFFFFFFFFFFFF8)
      {
        v98 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v98 = v97;
      }

      if (!(v98 >> 61))
      {
        operator new();
      }

      goto LABEL_173;
    }

    v99 = 0;
    v100 = (v94 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v101 = vdupq_n_s64(v100);
    do
    {
      v102 = vmovn_s64(vcgeq_u64(v101, vorrq_s8(vdupq_n_s64(v99), xmmword_1B33B0560)));
      if (v102.i8[0])
      {
        *(v91 + 8 * v99) = 0;
      }

      if (v102.i8[4])
      {
        *(v91 + 8 * v99 + 8) = 0;
      }

      v99 += 2;
    }

    while (v100 - ((v94 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v99);
    *(a1 + 4600) = v91 + 8 * v94;
    v103 = *(a1 + 4624);
    v104 = *(a1 + 4616);
    v105 = (v103 - v104) >> 4;
    if (v105 > v70)
    {
      if (v93 < v105)
      {
        *(a1 + 4624) = v104 + 16 * v93;
      }

      goto LABEL_95;
    }

    v106 = v93 - v105;
    v107 = *(a1 + 4632);
    if (v106 <= (v107 - v103) >> 4)
    {
      bzero(*(a1 + 4624), 16 * v106);
      *(a1 + 4624) = v103 + 16 * v106;
      v70 = v155;
LABEL_95:
      v92 = *(a1 + 4592);
      if (v153 < *(a1 + 4600) - v92)
      {
        operator new();
      }

      goto LABEL_97;
    }

    v108 = v107 - v104;
    v109 = v108 >> 3;
    if (v108 >> 3 <= v93)
    {
      v109 = v93;
    }

    if (v108 >= 0x7FFFFFFFFFFFFFF0)
    {
      v110 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v110 = v109;
    }

    if (!(v110 >> 60))
    {
      operator new();
    }

LABEL_173:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_98:
  v111 = 0;
  v112 = 0;
  do
  {
    v113 = v161.f32[v111];
    v114 = LODWORD(v113) - 0x61C8864680B583EBLL;
    if (v113 == 0.0)
    {
      v114 = 0x9E3779B97F4A7C15;
    }

    v112 ^= (v112 >> 2) + (v112 << 6) + v114;
    ++v111;
  }

  while (v111 != 4);
  v115 = v112 - 0x61C8864680B583EBLL;
  v116 = *(a1 + 4800);
  if (!*&v116)
  {
    goto LABEL_123;
  }

  v117 = vcnt_s8(v116);
  v117.i16[0] = vaddlv_u8(v117);
  if (v117.u32[0] > 1uLL)
  {
    v118 = v112 - 0x61C8864680B583EBLL;
    if (v115 >= *&v116)
    {
      v118 = v115 % *&v116;
    }
  }

  else
  {
    v118 = (*&v116 - 1) & v115;
  }

  v119 = *(*(a1 + 4792) + 8 * v118);
  if (!v119 || (v120 = *v119) == 0)
  {
LABEL_123:
    operator new();
  }

  while (1)
  {
    v121 = v120[1];
    if (v121 == v115)
    {
      break;
    }

    if (v117.u32[0] > 1uLL)
    {
      if (v121 >= *&v116)
      {
        v121 %= *&v116;
      }
    }

    else
    {
      v121 &= *&v116 - 1;
    }

    if (v121 != v118)
    {
      goto LABEL_123;
    }

LABEL_122:
    v120 = *v120;
    if (!v120)
    {
      goto LABEL_123;
    }
  }

  if (v120[2] != v161.i64[0] || v120[3] != v161.i64[1])
  {
    goto LABEL_122;
  }

  v120[4] = v55;
  v123 = *(a1 + 4840);
  if (!*&v123)
  {
    goto LABEL_141;
  }

  v124 = vcnt_s8(v123);
  v124.i16[0] = vaddlv_u8(v124);
  if (v124.u32[0] > 1uLL)
  {
    v125 = v55;
    if (v55 >= *&v123)
    {
      v125 = v55 % *&v123;
    }
  }

  else
  {
    v125 = (*&v123 - 1) & v55;
  }

  v126 = *(*(a1 + 4832) + 8 * v125);
  if (!v126 || (v127 = *v126) == 0)
  {
LABEL_141:
    operator new();
  }

  while (2)
  {
    v128 = v127[1];
    if (v128 != v55)
    {
      if (v124.u32[0] > 1uLL)
      {
        if (v128 >= *&v123)
        {
          v128 %= *&v123;
        }
      }

      else
      {
        v128 &= *&v123 - 1;
      }

      if (v128 != v125)
      {
        goto LABEL_141;
      }

      goto LABEL_140;
    }

    if (v127[2] != v55)
    {
LABEL_140:
      v127 = *v127;
      if (!v127)
      {
        goto LABEL_141;
      }

      continue;
    }

    break;
  }

  v129 = 0;
  v130 = v157;
  do
  {
    *(v127 + v129 * 4 + 24) = v161.i32[v129];
    ++v129;
  }

  while (v129 != 4);
  if (v159)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v159);
  }

  v131 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find((a1 + 4440), v55);
  if (v131 == *(a1 + 4480))
  {
    v132 = 0;
    goto LABEL_169;
  }

  v133 = v131;
  v134 = *(a1 + 4472);
  v135 = *(a1 + 4744);
  if (*(a1 + 4736) == v135)
  {
    v136 = *(a1 + 4784);
    if (!v136)
    {
      v151 = std::__throw_bad_function_call[abi:nn200100]();
      operator delete(v125);
      if (v163)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v163);
      }

      _Unwind_Resume(v151);
    }

    v132 = (*(*v136 + 48))(v136);
  }

  else
  {
    v132 = *(v135 - 8);
    *(a1 + 4744) = v135 - 8;
  }

  v137 = 0x9DDFEA08EB382D69 * ((8 * (v132 & 0x1FFFFFFF) + 8) ^ HIDWORD(v132));
  v138 = 0x9DDFEA08EB382D69 * (HIDWORD(v132) ^ (v137 >> 47) ^ v137);
  v139 = 0x9DDFEA08EB382D69 * (v138 ^ (v138 >> 47));
  v140 = *(a1 + 4704);
  if (!*&v140)
  {
    goto LABEL_168;
  }

  v141 = vcnt_s8(v140);
  v141.i16[0] = vaddlv_u8(v141);
  if (v141.u32[0] > 1uLL)
  {
    v142 = 0x9DDFEA08EB382D69 * (v138 ^ (v138 >> 47));
    if (v139 >= *&v140)
    {
      v142 = v139 % *&v140;
    }
  }

  else
  {
    v142 = v139 & (*&v140 - 1);
  }

  v143 = *(*(a1 + 4696) + 8 * v142);
  if (!v143 || (v144 = *v143) == 0)
  {
LABEL_168:
    operator new();
  }

  while (2)
  {
    v145 = v144[1];
    if (v145 != v139)
    {
      if (v141.u32[0] > 1uLL)
      {
        if (v145 >= *&v140)
        {
          v145 %= *&v140;
        }
      }

      else
      {
        v145 &= *&v140 - 1;
      }

      if (v145 != v142)
      {
        goto LABEL_168;
      }

      goto LABEL_167;
    }

    if (v144[2] != v132)
    {
LABEL_167:
      v144 = *v144;
      if (!v144)
      {
        goto LABEL_168;
      }

      continue;
    }

    break;
  }

  v146 = (((v133 - v134) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
  v147 = *(*(a1 + 4496) + v146);
  v148 = ((v133 - v134) >> 3) & 0x3F;
  v149 = *(*(a1 + 4544) + v146);
  v150 = *(*(a1 + 4592) + v146);
  *(v149 + 24 * v148) = v132;
  ++*(v147 + 24 * v148);
  *(v150 + 8 * v148) = v132;
  v130 = v157;
LABEL_169:
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v158, v132);
  *v160 = vcvt_f16_f32(v161);
  md::updateRetainedCounter((a1 + 4440), v130);
  ggl::BufferMemory::~BufferMemory(&v158);
LABEL_170:
  if (v163)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v163);
  }
}

void md::StandardPipelineProxy::copy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v32[4] = *MEMORY[0x1E69E9840];
  v9 = *(a4 + 4);
  v10 = gdc::Registry::storage<arComponents::AlbedoTextureComponent>(a2);
  v11 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v10 + 4, v9);
  if (v10[8] == v11)
  {
    v12 = v10[11];
  }

  else
  {
    v12 = (v10[10] + 48 * ((v11 - v10[7]) >> 3));
  }

  v13 = *a5;
  v14 = *v12;
  v28 = &unk_1F2A43EB8;
  v29 = 0;
  v31 = 0;
  v30 = v14;
  geo::_retain_ptr<VKImage * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v32, &v28);
  v15 = gdc::Registry::storage<arComponents::AlbedoTextureComponent>(a3);
  gdc::ComponentStorageWrapper<arComponents::AlbedoTextureComponent>::emplace(v15, v13, &v30);
  v32[0] = &unk_1F2A43EB8;

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  }

  v28 = &unk_1F2A43EB8;

  v16 = *a4;
  v17 = gdc::Registry::storage<arComponents::StyleColor>(a2);
  v18 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v17 + 4, HIDWORD(v16));
  if (v17[8] == v18)
  {
    v19 = v17[11];
  }

  else
  {
    v19 = v17[10] + 2 * (v18 - v17[7]);
  }

  if (v19 == v17[11])
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  v21 = *a5;
  v30 = *v20;
  v22 = gdc::Registry::storage<arComponents::StyleColor>(a3);
  gdc::ComponentStorageWrapper<md::components::AlbedoTint>::emplace(v22, v21, &v30);
  v23 = *a4;
  v24 = gdc::Registry::storage<arComponents::VisibilityAlpha>(a2);
  v25 = gdc::ComponentStorageWrapper<md::components::CustomZIndex>::get(v24, v23);
  v26 = *a5;
  LODWORD(v30) = *v25;
  v27 = gdc::Registry::storage<arComponents::VisibilityAlpha>(a3);
  gdc::ComponentStorageWrapper<md::components::PositionScaleFactor>::emplace(v27, v26, &v30);
}

void sub_1B320EE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *a17)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  _Unwind_Resume(a1);
}

void md::StandardPipelineProxy::initARLightingSetup(float a1, float a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(*a4 + 136) + 80);
  if (!v6)
  {
    operator new();
  }

  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v8, v6);
  v7 = v9;
  *v9 = a2;
  v7[1] = a1;
  ggl::BufferMemory::~BufferMemory(v8);
}

void ggl::ConstantDataTyped<ggl::ARMesh::ARLightingSetup>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::ARMesh::ARLightingSetup>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A43C88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk tomd::StandardPipelineProxy::setARLightingSetup(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v4, *(*(*a2 + 136) + 80));
  *v4[5] = vrev64_s32(*a3);
  ggl::BufferMemory::~BufferMemory(v4);
}

void md::StandardPipelineProxy::setARLightingSetup(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v4, *(*(*a2 + 136) + 80));
  *v4[5] = vrev64_s32(*a3);
  ggl::BufferMemory::~BufferMemory(v4);
}

void md::StandardPipelineProxy::update(ggl::zone_mallocator *a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1;
  v6 = *(a1 + 9);
  v7 = v6[1];
  if (v7 == *v6)
  {
    v9 = v6[11];
    if (!v9)
    {
LABEL_147:
      std::__throw_bad_function_call[abi:nn200100]();
      goto LABEL_148;
    }

    a1 = (*(*v9 + 48))(v9);
    v8 = a1;
  }

  else
  {
    v8 = *(v7 - 8);
    v6[1] = v7 - 8;
  }

  v11 = v6[5];
  v10 = v6[6];
  if (v11 >= v10)
  {
    v13 = v6[4];
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

    v179 = v6 + 7;
    if (v17)
    {
      v18 = ggl::zone_mallocator::instance(a1);
      v19 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARMesh::ARMeshPipelineSetup *>(v18, v17);
    }

    else
    {
      v19 = 0;
    }

    v21 = &v19[8 * v17];
    v20 = &v19[8 * v14];
    *v20 = v8;
    v12 = v20 + 1;
    v22 = v6[4];
    v23 = v6[5] - v22;
    v24 = v20 - v23;
    memcpy(v20 - v23, v22, v23);
    v25 = v6[4];
    v6[4] = v24;
    v6[5] = v12;
    v26 = v6[6];
    v6[6] = v21;
    *&v177[16] = v25;
    v178 = v26;
    *v177 = v25;
    *&v177[8] = v25;
    std::__split_buffer<ggl::ARMesh::ARMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v177);
  }

  else
  {
    *v11 = v8;
    v12 = v11 + 1;
  }

  v6[5] = v12;
  *v177 = v8;
  v27 = v6[15];
  if (!v27)
  {
    goto LABEL_147;
  }

  (*(*v27 + 48))(v27, v177);
  v28 = *a3;
  *v177 = v8;
  v29 = gdc::Registry::storage<arComponents::PipelineInstanceToUse>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(v29, v28, v177);
  v30 = *a3;
  *&v177[4] = 0uLL;
  v178 = 0;
  v179 = 0;
  v182 = 0;
  v181 = 0;
  *v177 = 1065353216;
  *&v177[20] = 1065353216;
  v180 = 1065353216;
  v183 = 1065353216;
  v31 = gdc::Registry::storage<arComponents::ViewConstantDataComponent>(a2);
  gdc::ComponentStorageWrapper<arComponents::ViewConstantDataComponent>::emplace(v31, v30, v177);
  v32 = *a3;
  *v177 = 0;
  *&v177[8] = 0;
  v33 = gdc::Registry::storage<arComponents::TransformConstantDataComponent>(a2);
  gdc::ComponentStorageWrapper<arComponents::TransformConstantDataComponent>::emplace(v33, v32, v177);
  if (*&v177[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v177[8]);
  }

  v34 = *a3;
  v35 = gdc::Registry::storage<arComponents::NeedsTransformConstantDataUpdate>(a2);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v35, v34);
  v36 = *a3;
  *v177 = *(*(v8 + 17) + 96);
  v37 = gdc::Registry::storage<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(v37, v36, v177);
  v38 = *a3;
  *v177 = **(v8 + 17);
  v39 = gdc::Registry::storage<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::View>>>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(v39, v38, v177);
  v40 = *a3;
  *v177 = *(*(v8 + 17) + 16);
  v41 = gdc::Registry::storage<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::Transform>>>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(v41, v40, v177);
  v42 = *a3;
  *v177 = **(v8 + 13);
  v43 = gdc::Registry::storage<arComponents::CompWrap<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(v43, v42, v177);
  v44 = *a3;
  v45 = *(*(v8 + 17) + 32);
  v46 = gdc::Registry::storage<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::ARMesh::CameraView>>>(a2);
  *v177 = v44;
  v47 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v46 + 4, v177);
  if (v48)
  {
    v50 = v46[11];
    v49 = v46[12];
    if (v50 >= v49)
    {
      v55 = v46[10];
      v56 = (v50 - v55) >> 3;
      if ((v56 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v57 = v49 - v55;
      v58 = v57 >> 2;
      if (v57 >> 2 <= (v56 + 1))
      {
        v58 = v56 + 1;
      }

      if (v57 >= 0x7FFFFFFFFFFFFFF8)
      {
        v59 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v59 = v58;
      }

      if (v59)
      {
        if (!(v59 >> 61))
        {
          operator new();
        }

        goto LABEL_148;
      }

      v60 = (8 * v56);
      *v60 = v45;
      v51 = 8 * v56 + 8;
      v61 = v46[10];
      v62 = v46[11] - v61;
      v63 = v60 - v62;
      memcpy(v60 - v62, v61, v62);
      v64 = v46[10];
      v46[10] = v63;
      v46[11] = v51;
      v46[12] = 0;
      if (v64)
      {
        operator delete(v64);
      }
    }

    else
    {
      *v50 = v45;
      v51 = (v50 + 1);
    }

    v46[11] = v51;
    v53 = v46[31];
    goto LABEL_39;
  }

  v52 = (v46[10] + v47 - v46[7]);
  *v52 = v45;
  v53 = v46[31];
  if (v52 == v46[11])
  {
LABEL_39:
    for (i = v46[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v53, v177, 1);
    }

    goto LABEL_41;
  }

  for (j = v46[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v53, v177, 1);
  }

LABEL_41:
  v66 = *a3;
  v67 = gdc::Registry::storage<md::pipelineECS::HasAlbedo>(a2);
  *v177 = v66;
  v68 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v67 + 4, v177);
  if (v69)
  {
    v71 = v67[11];
    v70 = v67[12];
    if (v71 >= v70)
    {
      v76 = v67[10];
      v77 = (v71 - v76) >> 3;
      if ((v77 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v78 = v70 - v76;
      v79 = v78 >> 2;
      if (v78 >> 2 <= (v77 + 1))
      {
        v79 = v77 + 1;
      }

      if (v78 >= 0x7FFFFFFFFFFFFFF8)
      {
        v80 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v80 = v79;
      }

      if (v80)
      {
        if (!(v80 >> 61))
        {
          operator new();
        }

        goto LABEL_148;
      }

      *(8 * v77) = v5;
      v72 = 8 * v77 + 8;
      v81 = v67[10];
      v82 = v67[11] - v81;
      v83 = (8 * v77 - v82);
      memcpy(v83, v81, v82);
      v84 = v67[10];
      v67[10] = v83;
      v67[11] = v72;
      v67[12] = 0;
      if (v84)
      {
        operator delete(v84);
      }
    }

    else
    {
      *v71 = v5;
      v72 = (v71 + 1);
    }

    v67[11] = v72;
    v74 = v67[31];
    goto LABEL_60;
  }

  v73 = (v67[10] + v68 - v67[7]);
  *v73 = v5;
  v74 = v67[31];
  if (v73 == v67[11])
  {
LABEL_60:
    for (k = v67[22]; k; k = *k)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(k[6], v74, v177, 1);
    }

    goto LABEL_62;
  }

  for (m = v67[16]; m; m = *m)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(m[6], v74, v177, 1);
  }

LABEL_62:
  v86 = *a3;
  v87 = v5 + 32;
  v88 = gdc::Registry::storage<md::pipelineECS::HasUVMapping>(a2);
  *v177 = v86;
  v89 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v88 + 4, v177);
  if (v90)
  {
    v92 = v88[11];
    v91 = v88[12];
    if (v92 >= v91)
    {
      v97 = v88[10];
      v98 = (v92 - v97) >> 3;
      if ((v98 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v99 = v91 - v97;
      v100 = v99 >> 2;
      if (v99 >> 2 <= (v98 + 1))
      {
        v100 = v98 + 1;
      }

      if (v99 >= 0x7FFFFFFFFFFFFFF8)
      {
        v101 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v101 = v100;
      }

      if (v101)
      {
        if (!(v101 >> 61))
        {
          operator new();
        }

        goto LABEL_148;
      }

      v102 = (8 * v98);
      *v102 = v87;
      v93 = 8 * v98 + 8;
      v103 = v88[10];
      v104 = v88[11] - v103;
      v105 = v102 - v104;
      memcpy(v102 - v104, v103, v104);
      v106 = v88[10];
      v88[10] = v105;
      v88[11] = v93;
      v88[12] = 0;
      if (v106)
      {
        operator delete(v106);
      }
    }

    else
    {
      *v92 = v87;
      v93 = (v92 + 1);
    }

    v88[11] = v93;
    v95 = v88[31];
    goto LABEL_81;
  }

  v94 = (v88[10] + v89 - v88[7]);
  *v94 = v87;
  v95 = v88[31];
  if (v94 == v88[11])
  {
LABEL_81:
    for (n = v88[22]; n; n = *n)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(n[6], v95, v177, 1);
    }

    goto LABEL_83;
  }

  for (ii = v88[16]; ii; ii = *ii)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(ii[6], v95, v177, 1);
  }

LABEL_83:
  v108 = *a3;
  v109 = v5 + 40;
  v110 = gdc::Registry::storage<md::pipelineECS::HasUVScale>(a2);
  *v177 = v108;
  v111 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v110 + 4, v177);
  if (v112)
  {
    v114 = v110[11];
    v113 = v110[12];
    if (v114 >= v113)
    {
      v119 = v110[10];
      v120 = (v114 - v119) >> 3;
      if ((v120 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v121 = v113 - v119;
      v122 = v121 >> 2;
      if (v121 >> 2 <= (v120 + 1))
      {
        v122 = v120 + 1;
      }

      if (v121 >= 0x7FFFFFFFFFFFFFF8)
      {
        v123 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v123 = v122;
      }

      if (v123)
      {
        if (!(v123 >> 61))
        {
          operator new();
        }

        goto LABEL_148;
      }

      v124 = (8 * v120);
      *v124 = v109;
      v115 = 8 * v120 + 8;
      v125 = v110[10];
      v126 = v110[11] - v125;
      v127 = v124 - v126;
      memcpy(v124 - v126, v125, v126);
      v128 = v110[10];
      v110[10] = v127;
      v110[11] = v115;
      v110[12] = 0;
      if (v128)
      {
        operator delete(v128);
      }
    }

    else
    {
      *v114 = v109;
      v115 = (v114 + 1);
    }

    v110[11] = v115;
    v117 = v110[31];
    goto LABEL_102;
  }

  v116 = (v110[10] + v111 - v110[7]);
  *v116 = v109;
  v117 = v110[31];
  if (v116 == v110[11])
  {
LABEL_102:
    for (jj = v110[22]; jj; jj = *jj)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(jj[6], v117, v177, 1);
    }

    goto LABEL_104;
  }

  for (kk = v110[16]; kk; kk = *kk)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(kk[6], v117, v177, 1);
  }

LABEL_104:
  v130 = *a3;
  v131 = v5 + 56;
  HasARLighting = gdc::Registry::storage<md::pipelineECS::HasARLightingSetup>(a2);
  *v177 = v130;
  v133 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(HasARLighting + 4, v177);
  if (v134)
  {
    v136 = HasARLighting[11];
    v135 = HasARLighting[12];
    if (v136 >= v135)
    {
      v141 = HasARLighting[10];
      v142 = (v136 - v141) >> 3;
      if ((v142 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v143 = v135 - v141;
      v144 = v143 >> 2;
      if (v143 >> 2 <= (v142 + 1))
      {
        v144 = v142 + 1;
      }

      if (v143 >= 0x7FFFFFFFFFFFFFF8)
      {
        v145 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v145 = v144;
      }

      if (v145)
      {
        if (!(v145 >> 61))
        {
          operator new();
        }

        goto LABEL_148;
      }

      v146 = (8 * v142);
      *v146 = v131;
      v137 = 8 * v142 + 8;
      v147 = HasARLighting[10];
      v148 = HasARLighting[11] - v147;
      v149 = v146 - v148;
      memcpy(v146 - v148, v147, v148);
      v150 = HasARLighting[10];
      HasARLighting[10] = v149;
      HasARLighting[11] = v137;
      HasARLighting[12] = 0;
      if (v150)
      {
        operator delete(v150);
      }
    }

    else
    {
      *v136 = v131;
      v137 = (v136 + 1);
    }

    HasARLighting[11] = v137;
    v139 = HasARLighting[31];
    goto LABEL_123;
  }

  v138 = (HasARLighting[10] + v133 - HasARLighting[7]);
  *v138 = v131;
  v139 = HasARLighting[31];
  if (v138 == HasARLighting[11])
  {
LABEL_123:
    for (mm = HasARLighting[22]; mm; mm = *mm)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(mm[6], v139, v177, 1);
    }

    goto LABEL_125;
  }

  for (nn = HasARLighting[16]; nn; nn = *nn)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(nn[6], v139, v177, 1);
  }

LABEL_125:
  v152 = *a3;
  *v177 = v5 + 16;
  HasTransformConstant = gdc::Registry::storage<md::pipelineECS::HasTransformConstantData>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(HasTransformConstant, v152, v177);
  v154 = *a3;
  *v177 = v5 + 24;
  HasTransformInstanceDeviceData = gdc::Registry::storage<md::pipelineECS::HasTransformInstanceDeviceDataFeature>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(HasTransformInstanceDeviceData, v154, v177);
  v156 = *a3;
  v157 = v5 + 8;
  v158 = gdc::Registry::storage<md::pipelineECS::SupportsEnvironmentTexture>(a2);
  *v177 = v156;
  v159 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v158 + 4, v177);
  if (v160)
  {
    v162 = v158[11];
    v161 = v158[12];
    if (v162 < v161)
    {
      *v162 = v157;
      v163 = v162 + 8;
LABEL_143:
      v158[11] = v163;
      v165 = v158[31];
LABEL_144:
      for (i1 = v158[22]; i1; i1 = *i1)
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i1[6], v165, v177, 1);
      }

      return;
    }

    v167 = v158[10];
    v168 = v162 - v167;
    v169 = (v162 - v167) >> 3;
    v170 = v169 + 1;
    if ((v169 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v171 = v161 - v167;
    if (v171 >> 2 > v170)
    {
      v170 = v171 >> 2;
    }

    if (v171 >= 0x7FFFFFFFFFFFFFF8)
    {
      v172 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v172 = v170;
    }

    if (!v172)
    {
      v173 = (v162 - v167) >> 3;
      v174 = (8 * v169);
      v175 = (8 * v169 - 8 * v173);
      *v174 = v157;
      v163 = v174 + 1;
      memcpy(v175, v167, v168);
      v158[10] = v175;
      v158[11] = v163;
      v158[12] = 0;
      if (v167)
      {
        operator delete(v167);
      }

      goto LABEL_143;
    }

    if (!(v172 >> 61))
    {
      operator new();
    }

LABEL_148:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v164 = (v158[10] + v159 - v158[7]);
  *v164 = v157;
  v165 = v158[31];
  if (v164 == v158[11])
  {
    goto LABEL_144;
  }

  for (i2 = v158[16]; i2; i2 = *i2)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i2[6], v165, v177, 1);
  }
}

void sub_1B320FC9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void md::StandardPipelineProxy::initUVScaleBuffer(uint64_t a1, uint64_t a2)
{
  if (!*(*(*a2 + 136) + 64))
  {
    operator new();
  }
}

void ggl::ConstantDataTyped<ggl::ARMesh::UVScale>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::ARMesh::UVScale>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A43CE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::StandardPipelineProxy::setUVScale(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v5, *(*(*a2 + 136) + 64));
  v4 = v6;
  *v6 = *a3;
  v4[1] = a3[1];
  ggl::BufferMemory::~BufferMemory(v5);
}

void md::StandardPipelineProxy::initUVMappingBuffer(uint64_t a1, uint64_t a2)
{
  if (!*(*(*a2 + 136) + 48))
  {
    operator new();
  }
}

void ggl::ConstantDataTyped<ggl::ARMesh::UVMapping>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::ARMesh::UVMapping>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A43C30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk tomd::StandardPipelineProxy::setUVMapping(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v4, *(*(*a2 + 136) + 48));
  *v4[5] = *a3;
  ggl::BufferMemory::~BufferMemory(v4);
}

void md::StandardPipelineProxy::setUVMapping(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v4, *(*(*a2 + 136) + 48));
  *v4[5] = *a3;
  ggl::BufferMemory::~BufferMemory(v4);
}

uint64_t (****std::unique_ptr<ggl::RenderState,mdm::TypeDeleter<ggl::RenderState>>::~unique_ptr[abi:nn200100](uint64_t (****a1)(void)))(void)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = (**v2)(v2);
    v4 = mdm::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::RenderState>(v4, v2);
  }

  return a1;
}

void sub_1B32109A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = VKManifestTileGroupObserverProxy;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B3210A9C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void md::PointLabelIcon::renderIcon(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = [VKImage alloc];
  grl::IconImage::image(&v19, *(a1 + 152));
  v9 = cf;
  v10 = *(*(a1 + 32) + 56);
  v11 = a4[1];
  v17 = *a4;
  v18 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = [(VKImage *)v8 initWithCGImage:v9 scale:&v17 resourceStore:v10];
  v21 = &unk_1F2A43EB8;
  v22 = v12;
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = &unk_1F29E1200;
  if (cf)
  {
    CFRelease(cf);
  }

  Anchor = grl::IconMetricsRenderResult::getAnchor((*(a1 + 152) + 24));
  [(VKImage *)v22 setAnchorPoint:*Anchor, Anchor[1]];
  v14 = v22;
  LabelingPoint = grl::IconMetricsRenderResult::getLabelingPoint((*(a1 + 152) + 24));
  [(VKImage *)v14 setLabelingPoint:*LabelingPoint, LabelingPoint[1]];

  v16 = *(a1 + 152);
  [(VKImage *)v22 setCollisionRect:v16[6], v16[7], (v16[8] - v16[6]), (v16[9] - v16[7])];
  md::LabelIcon::setImage(a1, &v21, a2, a3);
  v21 = &unk_1F2A43EB8;
}

uint64_t md::LabelIcon::setImage(float32x2_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = atomic_load(&a1[18]);
  if ((v8 & 1) == 0)
  {
    [*(a2 + 8) size];
    v10 = v9;
    v12 = v11;
    [*(a2 + 8) anchorPoint];
    v14 = v13;
    v16 = v15;
    [*(a2 + 8) labelingPoint];
    *&v17 = v17;
    *&v18 = v18;
    a1[11].i32[0] = LODWORD(v17);
    a1[11].i32[1] = LODWORD(v18);
    *&v17 = v14;
    *&v18 = v16;
    a1[10].i32[0] = LODWORD(v17);
    a1[10].i32[1] = LODWORD(v18);
    v19 = v10;
    v20 = v12;
    a1[6].f32[0] = -*&v17;
    v21 = a1 + 6;
    a1[6].f32[1] = -*&v18;
    a1[7].f32[0] = v19 - *&v17;
    v22 = a1 + 7;
    a1[7].f32[1] = v20 - *&v18;
    [*(a2 + 8) collisionRect];
    *v23.f32 = a1[10];
    v25.f64[1] = v24;
    v26 = vsub_f32(vcvt_f32_f64(v25), *v23.f32);
    a1[8] = v26;
    v27 = a1 + 8;
    v29.f64[1] = v28;
    v30 = vcvt_f32_f64(v29);
    a1[9] = vadd_f32(v26, v30);
    v31 = a1 + 9;
    v32 = a1[17].f32[0];
    if (v32 != 1.0)
    {
      v33 = 0;
      v34 = 0;
      *&v23.u32[2] = a1[11];
      *a1[10].f32 = vmulq_n_f32(v23, v32);
      do
      {
        v35 = v22->f32[v34];
        v36 = v21->f32[v34];
        if (v33)
        {
          break;
        }

        v33 = 1;
        v34 = 1;
      }

      while (v35 >= v36);
      if (v35 >= v36)
      {
        v37 = vsub_f32(*v22, *v21);
        v38 = vmla_f32(*v21, 0x3F0000003F000000, v37);
        v39 = vmaxnm_f32(v37, 0);
        v40 = vsub_f32(v38, vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v39), v32 * 0.5)));
        *v21 = v40;
        *v22 = vmla_n_f32(v40, v39, v32);
      }

      v41 = 0;
      v42 = 0;
      do
      {
        v43 = v31->f32[v42];
        v44 = v27->f32[v42];
        if (v41)
        {
          break;
        }

        v41 = 1;
        v42 = 1;
      }

      while (v43 >= v44);
      if (v43 >= v44)
      {
        v45 = vmla_f32(v26, 0x3F0000003F000000, v30);
        v46 = vmaxnm_f32(v30, 0);
        v47 = vsub_f32(v45, vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v46), v32 * 0.5)));
        *v27 = v47;
        *v31 = vmla_n_f32(v47, v46, v32);
      }
    }
  }

  [*(a2 + 8) prepareTextureWithAtlas:a4];
  a1[17].i8[5] = 1;
  result = geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(&a1[1], *(a2 + 8));
  if (!a3)
  {
    if (a1[2])
    {
      atomic_store(1u, &a1[17] + 7);
      atomic_store(1u, &a1[18]);
    }

    atomic_store(1u, &a1[17] + 6);
  }

  return result;
}

void md::PointLabelIcon::~PointLabelIcon(md::PointLabelIcon *this)
{
  *this = &unk_1F2A43D78;
  v2 = *(this + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::LabelIcon::~LabelIcon(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A43D78;
  v2 = *(this + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::LabelIcon::~LabelIcon(this);
}

void md::TextureBackedLabelIcon::renderIcon(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = [VKImage alloc];
  grl::IconImage::image(&v14, *(a1 + 152));
  v8 = cf;
  v9 = *(*(a1 + 32) + 56);
  v10 = a4[1];
  v12 = *a4;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = [(VKImage *)v7 initWithCGImage:v8 scale:1 usedAsTextureAndImage:&v12 resourceStore:v9];
  v16 = &unk_1F2A43EB8;
  v17 = v11;
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = &unk_1F29E1200;
  if (cf)
  {
    CFRelease(cf);
  }

  md::LabelIcon::setImage(a1, &v16, a2, 0);
  v16 = &unk_1F2A43EB8;
}

void md::TextureBackedLabelIcon::~TextureBackedLabelIcon(md::TextureBackedLabelIcon *this)
{
  md::TextureBackedLabelIcon::~TextureBackedLabelIcon(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A43DB8;
  atomic_store(0, this + 144);
  *this = &unk_1F2A43D78;
  v2 = *(this + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::LabelIcon::~LabelIcon(this);
}

void md::RoadSignLabelIcon::renderIcon(float32x2_t *a1, int a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v6 = [*&a1[20] image];
  geo::_retain_ptr<VKImage * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v7, v6);

  md::LabelIcon::setImage(a1, v7, a2, a3);
  v7[0] = &unk_1F2A43EB8;
}

void *geo::_retain_ptr<VKImage * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_1F2A43EB8;
  a1[1] = v3;
  return a1;
}

uint64_t md::ExternalImageLabelIcon::renderIcon(float32x2_t *a1, int a2, uint64_t a3)
{
  if (!a1[22].i8[0])
  {
    a3 = 0;
  }

  return md::LabelIcon::setImage(a1, &a1[19], a2, a3);
}

void md::ExternalImageLabelIcon::~ExternalImageLabelIcon(md::ExternalImageLabelIcon *this)
{
  *this = &unk_1F2A43E38;
  *(this + 19) = &unk_1F2A43EB8;

  md::LabelIcon::~LabelIcon(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A43E38;
  *(this + 19) = &unk_1F2A43EB8;

  md::LabelIcon::~LabelIcon(this);
}

uint64_t md::ShieldLabelIcon::text(md::ShieldLabelIcon *this)
{
  result = this + 168;
  if (*(this + 191) < 0)
  {
    return *result;
  }

  return result;
}

void md::ShieldLabelIcon::renderIcon(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = [VKImage alloc];
  grl::IconImage::image(&v15, *(a1 + 152));
  v9 = cf;
  v10 = *(*(a1 + 32) + 56);
  v11 = a4[1];
  v13 = *a4;
  v14 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = [(VKImage *)v8 initWithCGImage:v9 scale:&v13 resourceStore:v10];
  v17 = &unk_1F2A43EB8;
  v18 = v12;
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = &unk_1F29E1200;
  if (cf)
  {
    CFRelease(cf);
  }

  md::LabelIcon::setImage(a1, &v17, a2, a3);
  v17 = &unk_1F2A43EB8;
}

void md::ShieldLabelIcon::~ShieldLabelIcon(md::ShieldLabelIcon *this)
{
  *this = &unk_1F2A43E78;
  if (*(this + 191) < 0)
  {
    v2 = *(this + 21);
    v3 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, v2);
  }

  v4 = *(this + 20);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::LabelIcon::~LabelIcon(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A43E78;
  if (*(this + 191) < 0)
  {
    v2 = *(this + 21);
    v3 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, v2);
  }

  v4 = *(this + 20);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::LabelIcon::~LabelIcon(this);
}

uint64_t md::LabelIcon::compareImage(md::LabelIcon *this, const md::LabelIcon *a2)
{
  if (this == a2)
  {
    return 0;
  }

  v4 = md::LabelIcon::image(this);
  v5 = md::LabelIcon::image(a2);

  if (v4 == v5)
  {
    return 0;
  }

  v6 = *(this + 2);
  v7 = *(a2 + 2);
  v8 = v6;
  v9 = [v8 compareTo:v7];

  return v9;
}

uint64_t VKA3DGetShadowCount(uint64_t result, unint64_t *a2)
{
  if (result)
  {
    v3 = *result;
    v4 = *(result + 8);
    v5 = geo::A3DGetMetadataHeaderCount(*result, v4);
    if (v5)
    {
      v6 = v5;
      result = geo::A3DGetMetadataHeaders(v3, v4);
      if (result)
      {
        v7 = result;
        v8 = 0;
        result = 0;
        *a2 = 0;
        v9 = v6;
        do
        {
          if (!*v7)
          {
            v8 += *(v7 + 5);
            *a2 = v8;
            ++result;
          }

          v7 += 17;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *std::vector<md::ObjectGroupFeatureRange>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3);
    if (v3 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v3);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<ggl::Landmark::LandmarkMesh *,std::vector<md::ObjectGroupFeatureRange>>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__split_buffer<std::pair<ggl::Landmark::LandmarkMesh *,std::vector<md::ObjectGroupFeatureRange>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 32;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::pair<std::shared_ptr<ggl::Texture2D>,geo::linear_map<ggl::Landmark::LandmarkMesh *,std::vector<md::ObjectGroupFeatureRange>,std::equal_to<ggl::Landmark::LandmarkMesh *>,std::allocator<std::pair<ggl::Landmark::LandmarkMesh *,std::vector<md::ObjectGroupFeatureRange>>>,std::vector<std::pair<ggl::Landmark::LandmarkMesh *,std::vector<md::ObjectGroupFeatureRange>>>>>::pair[abi:nn200100]<true,0>(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  *result = a2;
  result[1] = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  v4 = a4[1];
  v5 = v4 - *a4;
  if (v4 != *a4)
  {
    if (!((v5 >> 5) >> 59))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<ggl::Landmark::LandmarkMesh *,std::vector<md::ObjectGroupFeatureRange>>>>(v5 >> 5);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void sub_1B3211B08(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::pair<std::shared_ptr<ggl::Texture2D>,geo::linear_map<ggl::Landmark::LandmarkMesh *,std::vector<md::ObjectGroupFeatureRange>,std::equal_to<ggl::Landmark::LandmarkMesh *>,std::allocator<std::pair<ggl::Landmark::LandmarkMesh *,std::vector<md::ObjectGroupFeatureRange>>>,std::vector<std::pair<ggl::Landmark::LandmarkMesh *,std::vector<md::ObjectGroupFeatureRange>>>>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<ggl::Texture2D>,geo::linear_map<ggl::Landmark::LandmarkMesh *,std::vector<md::ObjectGroupFeatureRange>,std::equal_to<ggl::Landmark::LandmarkMesh *>,std::allocator<std::pair<ggl::Landmark::LandmarkMesh *,std::vector<md::ObjectGroupFeatureRange>>>,std::vector<std::pair<ggl::Landmark::LandmarkMesh *,std::vector<md::ObjectGroupFeatureRange>>>>>,0>(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void md::LabelAnimator::createMorphAnimation(md::LabelAnimator *a1, uint64_t a2, uint64_t a3, int a4, __n128 a5)
{
  v6 = a3;
  if (a3)
  {
    (*(*a3 + 304))(a3);
    a5.n128_f32[0] = (*(*a2 + 304))(a2);
    if (a4 == 1)
    {
      (*(*v6 + 312))(v6);
LABEL_5:
      v6 = a2;
      goto LABEL_7;
    }
  }

  else
  {
    a5.n128_u64[0] = 0;
    if (a4 == 1)
    {
      goto LABEL_5;
    }
  }

  (*(*a2 + 312))(a2, a5);
  if (!v6)
  {
LABEL_8:
    md::LabelAnimator::createTrack(a1);
  }

LABEL_7:
  (*(*v6 + 312))(v6);
  goto LABEL_8;
}

md::LabelAnimator *md::LabelAnimator::addRotateAnimation(md::LabelAnimator *result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 52))
  {
    md::LabelAnimator::createTrack(result);
  }

  return result;
}

void md::LabelAnimator::createIconRowScaleAnimation(md::LabelAnimator *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  (*(*a2 + 200))(&v10, a2);
  if (v11 != v10)
  {
    if ((*(a4 + 1) & 1) == 0)
    {
      v6 = (v11 - 8);
      if (v11 - 8 > v10)
      {
        v7 = v10 + 8;
        do
        {
          v8 = *(v7 - 8);
          *(v7 - 8) = *v6;
          *v6-- = v8;
          v9 = v7 >= v6;
          v7 += 8;
        }

        while (!v9);
      }
    }

    md::LabelAnimator::createTrack(a1);
  }

  std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v10);
}

void md::LabelAnimator::createIconRowShiftAnimation(md::LabelAnimator *a1, uint64_t a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  (*(*a2 + 200))(&v16, a2);
  if (v17 != v16)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(*v16 + 24);
    v8 = v7 + 72;
    v9 = v7 + 80;
    do
    {
      v10 = *(v9 + 4 * v6);
      v11 = *(v8 + 4 * v6);
      if (v5)
      {
        break;
      }

      v5 = 1;
      v6 = 1;
    }

    while (v10 >= v11);
    if (a3 != 1)
    {
      v12 = (v17 - 8);
      if (v17 - 8 > v16)
      {
        v13 = v16 + 8;
        do
        {
          v14 = *(v13 - 8);
          *(v13 - 8) = *v12;
          *v12-- = v14;
          v15 = v13 >= v12;
          v13 += 8;
        }

        while (!v15);
      }
    }

    md::LabelAnimator::createTrack(a1);
  }

  std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v16);
}

void md::LabelAnimator::createImageListFeatherAnimation(md::LabelAnimator *a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  (*(*a2 + 200))(&v14, a2);
  if (v15 != v14)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(*v14 + 24);
    do
    {
      v8 = *(v7 + 80 + 4 * v6);
      v9 = *(v7 + 72 + 4 * v6);
      if (v5)
      {
        break;
      }

      v5 = 1;
      v6 = 1;
    }

    while (v8 >= v9);
    if (a3 != 1)
    {
      v10 = (v15 - 8);
      if (v15 - 8 > v14)
      {
        v11 = v14 + 8;
        do
        {
          v12 = *(v11 - 8);
          *(v11 - 8) = *v10;
          *v10-- = v12;
          v13 = v11 >= v10;
          v11 += 8;
        }

        while (!v13);
      }
    }

    md::LabelAnimator::createTrack(a1);
  }

  std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v14);
}

uint64_t md::LabelAnimator::createClusterAnimation(uint64_t this, const md::LabelPartContent *a2)
{
  v3 = this;
  if (*(a2 + 1))
  {
    v4 = (this + 24);
    std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::resize((this + 24), 1 - 0x71C71C71C71C71C7 * ((*(this + 32) - *(this + 24)) >> 4));
    *(*(a2 + 1) + 564) = 57 * ((*(v3 + 32) - *v4) >> 4) - 1;
    md::LabelAnimator::createTrack(v3);
  }

  if (*(a2 + 2))
  {
    std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::resize((this + 24), 1 - 0x71C71C71C71C71C7 * ((*(this + 32) - *(this + 24)) >> 4));
    *(*(a2 + 2) + 564) = 57 * ((*(v3 + 32) - *(v3 + 24)) >> 4) - 1;
    md::LabelAnimator::createTrack(v3);
  }

  if (*(a2 + 4))
  {
    std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::resize((this + 24), 1 - 0x71C71C71C71C71C7 * ((*(this + 32) - *(this + 24)) >> 4));
    *(*(a2 + 4) + 564) = 57 * ((*(v3 + 32) - *(v3 + 24)) >> 4) - 1;
    md::LabelAnimator::createTrack(v3);
  }

  return this;
}

void *md::LabelAnimator::createClusterFadeAnimation(void *this, const md::LabelPartContent *a2)
{
  if (*(a2 + 2))
  {
    if (*(a2 + 4))
    {
      v3 = this;
      v4 = this + 3;
      std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::resize(this + 3, 0x8E38E38E38E38E39 * ((this[4] - this[3]) >> 4) + 1);
      *(*(a2 + 2) + 564) = 57 * ((*(v3 + 8) - *v4) >> 4) - 1;
      md::LabelAnimator::createTrack(v3);
    }
  }

  return this;
}

void md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::Monitorable(uint64_t a1)
{
  *a1 = *MEMORY[0x1E69A1610];
  *(a1 + 24) = 0;
  operator new();
}

void sub_1B3213940(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1B3213C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak((v9 + 32));
  objc_destroyWeak(&a9);
  _Unwind_Resume(a1);
}

void sub_1B3214170(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B321429C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B32145FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1B321495C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t gm::inverse<double>(uint64_t result, uint64_t a2)
{
  v2 = 0;
  _Q1.f64[0] = *(a2 + 32);
  _Q3 = *(a2 + 56);
  _Q7 = *(a2 + 40);
  v6 = *a2;
  _Q2 = *(a2 + 16);
  v8 = vmulq_f64(_Q7, vzip1q_s64(vdupq_laneq_s64(*a2, 1), _Q7));
  v9 = vextq_s8(_Q7, _Q3, 8uLL);
  v10 = vextq_s8(_Q7, _Q7, 8uLL);
  v11.f64[1] = *(a2 + 48);
  __asm { FMLA            D17, D1, V3.D[1] }

  _D19 = -(_Q1.f64[0] * _Q2.f64[0] - *(a2 + 8) * _Q7.f64[0]);
  __asm { FMLA            D17, D19, V7.D[1] }

  _Q7.f64[1] = *(a2 + 64);
  v19.f64[0] = *(a2 + 16);
  v19.f64[1] = _Q1.f64[0];
  v20 = vmulq_f64(_Q3, v19);
  v21.f64[0] = *(a2 + 56);
  v21.f64[1] = *(a2 + 8);
  v22 = vmlsq_f64(vextq_s8(v20, v20, 8uLL), _Q7, v21);
  v11.f64[0] = _Q7.f64[1];
  v23 = vdupq_lane_s64(*&_Q3.f64[0], 0);
  _D18 = -(vmuld_lane_f64(v21.f64[1], _Q3, 1) - _Q2.f64[0] * _Q3.f64[0]);
  _Q3.f64[0] = _Q1.f64[0];
  v25 = vmlsq_f64(v8, _Q3, _Q2);
  v23.f64[0] = *(a2 + 24);
  v26 = vmulq_f64(_Q2, v23);
  v23.f64[1] = v23.f64[0];
  __asm { FMLA            D17, D18, V2.D[1] }

  _Q2.f64[1] = *a2;
  v23.f64[0] = _Q1.f64[0];
  _Q1.f64[1] = *a2;
  v31[1] = v25;
  v31[0] = v22;
  v28 = vmulq_f64(v6, v11);
  v29 = vzip1q_s64(v28, v26);
  *&v28.f64[0] = v26.i64[1];
  v30 = vmulq_f64(v6, v23);
  v31[3] = vmlsq_f64(v28, _Q1, v9);
  v31[2] = vmlsq_f64(v29, _Q2, v10);
  v32 = *&vsubq_f64(v30, vdupq_laneq_s64(v30, 1));
  do
  {
    *(result + v2) = *(v31 + v2) * (1.0 / _D17);
    v2 += 8;
  }

  while (v2 != 72);
  return result;
}

void sub_1B321703C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CameraFramingDebug::addTargetConstraint(uint64_t *a1, uint64_t a2, char a3, float a4)
{
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
    v8 = *a1;
    v9 = &v5[-*a1];
    v10 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 3) + 1;
    if (v10 > 0x666666666666666)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v8) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 <= 0x666666666666666)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = 8 * (v9 >> 3);
    *v13 = *a2;
    *(v13 + 8) = *(a2 + 8);
    *(v13 + 24) = a4;
    *(v13 + 32) = a3;
    v7 = v13 + 40;
    v14 = v13 - v9;
    if (v8 != v5)
    {
      v15 = v14;
      do
      {
        *v15 = *v8;
        *(v15 + 8) = *(v8 + 8);
        v16 = *(v8 + 3);
        *(v15 + 32) = v8[32];
        *(v15 + 24) = v16;
        v8 += 40;
        v15 += 40;
      }

      while (v8 != v5);
      v8 = *a1;
    }

    *a1 = v14;
    a1[1] = v7;
    a1[2] = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    *v5 = *a2;
    *(v5 + 8) = *(a2 + 8);
    *(v5 + 3) = a4;
    v5[32] = a3;
    v7 = (v5 + 40);
  }

  a1[1] = v7;
}

void sub_1B32179D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<geo::Coordinate3D<geo::Radians,double>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      *v6 = *v5;
      *(v6 + 8) = *(v5 + 8);
      v5 += 24;
      v6 += 24;
    }

    while (v5 != v3);
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

void sub_1B3218514(_Unwind_Exception *a1)
{
  if (*(v8 - 145) < 0)
  {
    v11 = *(v8 - 168);
    v12 = mdm::zone_mallocator::instance(v10);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v12, v11);
  }

  if (*(v8 - 177) < 0)
  {
    v13 = *(v8 - 200);
    v14 = mdm::zone_mallocator::instance(v10);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v14, v13);
  }

  _Unwind_Resume(a1);
}

void sub_1B321A09C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, char a27)
{
  objc_destroyWeak((v30 + 40));
  objc_destroyWeak((v29 + 40));
  _Block_object_dispose(&a22, 8);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B321A88C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location, char a37)
{
  objc_destroyWeak((v39 + 32));
  objc_destroyWeak((v38 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B321B0D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, char a27)
{
  objc_destroyWeak((v30 + 40));
  objc_destroyWeak((v29 + 40));
  _Block_object_dispose(&a22, 8);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

double gdc::Spring<double,3,(gdc::SpringType)0>::acceleration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(a1 + 72);
  do
  {
    *(&v16 + v3) = *(a1 + 48 + v3) - *(a2 + v3);
    v3 += 8;
  }

  while (v3 != 24);
  v5 = 0;
  v12 = v16;
  v13 = v17;
  do
  {
    *(&v16 + v5) = *(&v12 + v5) * v4;
    v5 += 8;
  }

  while (v5 != 24);
  v6 = 0;
  v14 = v16;
  v15 = v17;
  v7 = *(a1 + 80);
  do
  {
    *(&v16 + v6) = *(a3 + v6) * v7;
    v6 += 8;
  }

  while (v6 != 24);
  v8 = 0;
  v10 = v16;
  v11 = v17;
  do
  {
    *(&v16 + v8) = *(&v14 + v8) - *(&v10 + v8);
    v8 += 8;
  }

  while (v8 != 24);
  return *&v16;
}

void sub_1B321EF04(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

void sub_1B321F82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = VKNavCameraController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B32206F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{

  _Unwind_Resume(a1);
}

void md::DaVinciBaseMapEngineMode::~DaVinciBaseMapEngineMode(md::DaVinciBaseMapEngineMode *this)
{
  *this = &unk_1F2A58888;
  v2 = *(this + 82);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A58888;
  v2 = *(this + 82);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::MapEngineMode::~MapEngineMode(this);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::RaycastDebug>(ecs2::Entity,md::RaycastDebug &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::destroy_deallocate(void *a1)
{
  std::__destroy_at[abi:nn200100]<md::MuninRoadEdgePolyline,0>(a1 + 8);

  operator delete(a1);
}

void *std::__function::__func<ecs2::AddComponent::AddComponent<md::RaycastDebug>(ecs2::Entity,md::RaycastDebug &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F2A44780;
  v4 = a2 + 4;
  std::vector<md::RaycastDebug::RayHit>::vector[abi:nn200100](a2 + 1, (a1 + 8));
  result = std::vector<geo::Triangle<double,3,geo::NoTriangleCache<double,3>>>::vector[abi:nn200100](v4, (a1 + 32));
  a2[7] = *(a1 + 56);
  return result;
}

void sub_1B3220CAC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    *(v1 + 16) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<md::RaycastDebug::RayHit>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    v3 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 4);
    if (v3 < 0x333333333333334)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::RaycastDebug::RayHit>>(v3);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void *std::vector<geo::Triangle<double,3,geo::NoTriangleCache<double,3>>>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    v3 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 4);
    if (v3 < 0x333333333333334)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geo::Triangle<double,3,geo::NoTriangleCache<double,3>>>>(v3);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void sub_1B3220EA0(_Unwind_Exception *a1)
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

void std::__function::__func<ecs2::AddComponent::AddComponent<md::RaycastDebug>(ecs2::Entity,md::RaycastDebug &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::~__func(void *a1)
{
  *a1 = &unk_1F2A44780;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<ecs2::AddComponent::AddComponent<md::RaycastDebug>(ecs2::Entity,md::RaycastDebug &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::~__func(void *a1)
{
  *a1 = &unk_1F2A44780;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void *std::vector<md::CollisionTriangleDebug>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    v3 = 0x2E8BA2E8BA2E8BA3 * ((v2 - *a2) >> 3);
    if (v3 < 0x2E8BA2E8BA2E8BBLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::CollisionTriangleDebug>>(v3);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::CameraCollisionPathDebug>(ecs2::Entity,md::CameraCollisionPathDebug &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionPathDebug>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionPathDebug>(void)::metadata;
  v62 = a2;
  v6 = ecs2::BasicRegistry<void>::storage<md::CameraCollisionPathDebug>(a2);
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
    v55 = 0;
    v56 = *(*(v7 + 56) + ((v14 >> 3) & 0x1FF8)) + 56 * (v14 & 0x3F);
    do
    {
      *(v56 + v55) = *(v12 + v55);
      v55 += 8;
    }

    while (v55 != 24);
    for (i = 0; i != 24; i += 8)
    {
      *(v56 + 24 + i) = *(a1 + 32 + i);
    }

    *(v56 + 48) = *(a1 + 56);
    goto LABEL_58;
  }

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

    *(4 * v20) = v4;
    v18 = 4 * v20 + 4;
    v24 = *(v7 + 32);
    v25 = *(v7 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v7 + 32);
    *(v7 + 32) = v26;
    *(v7 + 40) = v18;
    *(v7 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = v4;
    v18 = (v17 + 1);
  }

  *(v7 + 40) = v18;
  v28 = ((v18 - *(v7 + 32)) >> 2) - 1;
  *v13 = v4;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v7 + 56);
  v30 = *(v7 + 64);
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v59 = v28;
    v60 = v5;
    v32 = v29 + 1;
    v33 = v29 + 1 - ((v30 - v31) >> 3);
    v34 = *(v7 + 72);
    v61 = v30 - v31;
    if (v33 > (v34 - v30) >> 3)
    {
      v35 = v34 - v31;
      v36 = (v34 - v31) >> 2;
      if (v36 <= v32)
      {
        v36 = v29 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_60;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v30 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v30 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v30 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v29)
    {
      v28 = v32 - v44;
      v45 = *(v7 + 96);
      if (v28 > (v45 - v43) >> 4)
      {
        v46 = v45 - v42;
        v47 = v46 >> 3;
        if (v46 >> 3 <= v32)
        {
          v47 = v29 + 1;
        }

        if (v46 >= 0x7FFFFFFFFFFFFFF0)
        {
          v48 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v48 = v47;
        }

        if (!(v48 >> 60))
        {
          operator new();
        }

LABEL_60:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v28);
      *(v7 + 88) = v43 + 16 * v28;
      LOBYTE(v28) = v59;
    }

    else if (v32 < v44)
    {
      *(v7 + 88) = v42 + 16 * v32;
    }

    v31 = *(v7 + 56);
    v5 = v60;
    if (v61 < *(v7 + 64) - v31)
    {
      operator new();
    }
  }

  v49 = *(v31 + 8 * v29) + 56 * (v28 & 0x3F);
  v50 = *v12;
  v51 = v12[1];
  v52 = v12[2];
  *(v49 + 48) = *(v12 + 6);
  *(v49 + 16) = v51;
  *(v49 + 32) = v52;
  *v49 = v50;
  v53 = *(v7 + 152);
  v54 = *(v7 + 160);
  while (v53 != v54)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
    v53 += 32;
  }

LABEL_58:
  v58 = *(v62 + 41016) + (v4 >> 16 << 6);
  *(v58 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionPathDebug>();
  *(v62 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::CameraCollisionPathDebug>(void)::metadata) = *(v62 + 4096);
}