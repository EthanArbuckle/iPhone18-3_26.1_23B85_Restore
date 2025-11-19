__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::BoundData>(ecs2::Entity,md::BoundData &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A423A0;
  result = *(a1 + 8);
  *(a2 + 20) = *(a1 + 20);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverInstance>(ecs2::Entity,md::ls::FlyoverInstance &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverInstance>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverInstance>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverInstance>(a2);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverInstance>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverInstance>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverInstance>(ecs2::Entity,md::ls::FlyoverInstance &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A4F6E8;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::GlobeMatrix>(ecs2::Entity,md::ls::GlobeMatrix &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrix>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrix>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::GlobeMatrix>(a2);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrix>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrix>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::GlobeMatrix>(ecs2::Entity,md::ls::GlobeMatrix &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1CF20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TileType>(ecs2::Entity,md::ls::TileType &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1CED8;
  a2[1] = *(result + 8);
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::TransformConstantDataHandle>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransformConstantDataHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransformConstantDataHandle>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::TransformConstantDataHandle>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransformConstantDataHandle>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransformConstantDataHandle>(void)::metadata) = *(v55 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TransformConstantDataHandle>(ecs2::Entity,md::ls::TransformConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A50998;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::ViewConstantDataHandle>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ViewConstantDataHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ViewConstantDataHandle>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::ViewConstantDataHandle>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ViewConstantDataHandle>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ViewConstantDataHandle>(void)::metadata) = *(v55 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ViewConstantDataHandle>(ecs2::Entity,md::ls::ViewConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A508C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::SharedTileMatrix>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::SharedTileMatrix>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>(void)::metadata) = *(v55 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedTileMatrix>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedTileMatrix>(void)::localId;
    *algn_1EB82D858 = 0x412941A9C4AFE129;
    qword_1EB82D860 = "md::ls::SharedTileMatrix]";
    qword_1EB82D868 = 24;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SharedTileMatrix>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SharedTileMatrixEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SharedTileMatrix>(v3);
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
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SharedTileMatrixEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A53968;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedTileMatrix,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53928;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::SharedTileMatrix,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::SharedTileMatrix,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A53948;
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

void ecs2::storage<ecs2::Entity,md::ls::SharedTileMatrix,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::SharedTileMatrix,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedTileMatrix,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53928;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::SharedTileMatrix,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SharedTileMatrix>(ecs2::Entity,md::ls::SharedTileMatrix &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A538E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TileBounds>(ecs2::Entity,md::ls::TileBounds &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1CE90;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 44) = 0;
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::RenderablePendingProcessing>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablePendingProcessing>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablePendingProcessing>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderablePendingProcessing>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablePendingProcessing>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablePendingProcessing>(void)::metadata) = *(a1 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RenderablePendingProcessing>(ecs2::Entity,md::ls::RenderablePendingProcessing &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1CE48;
  a2[1] = *(result + 8);
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::MeshRenderableID>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableID>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableID>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableID>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableID>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableID>(void)::metadata) = *(v55 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::MeshRenderableID>(ecs2::Entity,md::ls::MeshRenderableID &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1CE00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::PendingProcessing>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessing>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessing>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PendingProcessing>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessing>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessing>(void)::metadata) = *(a1 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PendingProcessing>(ecs2::Entity,md::ls::PendingProcessing &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1CDB8;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverCommonS2TransformHandle>(ecs2::Entity,md::ls::FlyoverCommonS2TransformHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonS2TransformHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonS2TransformHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonS2TransformHandle>(a2);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonS2TransformHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonS2TransformHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverCommonS2TransformHandle>(ecs2::Entity,md::ls::FlyoverCommonS2TransformHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A52228;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

__n128 std::__function::__func<md::ita::CollectFlyoverMeshRenderables::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::TileRenderableTypeT<md::FlyoverRenderable> const&,md::ls::MapDataTypeV const&,md::ls::AssociationTileHandle const&,md::ls::GlobeMatrixData const&,md::ls::TileMatrix const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::FlyoverOctileKey const&>)::$_0,std::allocator<md::ita::CollectFlyoverMeshRenderables::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::TileRenderableTypeT<md::FlyoverRenderable> const&,md::ls::MapDataTypeV const&,md::ls::AssociationTileHandle const&,md::ls::GlobeMatrixData const&,md::ls::TileMatrix const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::FlyoverOctileKey const&>)::$_0>,void ()(md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::TileRenderableTypeT<md::FlyoverRenderable> const&,md::ls::MapDataTypeV const&,md::ls::AssociationTileHandle const&,md::ls::GlobeMatrixData const&,md::ls::TileMatrix const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::FlyoverOctileKey const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1CD48;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::ita::PrepareFlyoverTransformConstantDataHandle::operator()(ecs2::Query<md::ls::FlyoverCommonTransformConstantDataHandle &,md::ls::ModelTransformData const&,md::ls::GlobeMatrix const&>)::$_0,std::allocator<md::ita::PrepareFlyoverTransformConstantDataHandle::operator()(ecs2::Query<md::ls::FlyoverCommonTransformConstantDataHandle &,md::ls::ModelTransformData const&,md::ls::GlobeMatrix const&>)::$_0>,void ()(md::ls::FlyoverCommonTransformConstantDataHandle &,md::ls::ModelTransformData const&,md::ls::GlobeMatrix const&)>::operator()(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  GlobeMatrix = md::VKMRenderResourcesStore::getGlobeMatrix(**(a1 + 8), *a4);
  v8 = 0;
  v9 = GlobeMatrix[5];
  v88[4] = GlobeMatrix[4];
  v88[5] = v9;
  v10 = GlobeMatrix[7];
  v88[6] = GlobeMatrix[6];
  v88[7] = v10;
  v11 = GlobeMatrix[1];
  v88[0] = *GlobeMatrix;
  v88[1] = v11;
  v12 = GlobeMatrix[3];
  v88[2] = GlobeMatrix[2];
  v88[3] = v12;
  v13 = *(a1 + 16);
  do
  {
    v14 = 0;
    v15 = v88;
    do
    {
      v16 = 0;
      v17 = 0.0;
      v18 = v13;
      do
      {
        v19 = *v18;
        v18 += 4;
        v17 = v17 + *(v15 + v16) * v19;
        v16 += 8;
      }

      while (v16 != 32);
      v87[4 * v14++ + v8] = v17;
      v15 += 2;
    }

    while (v14 != 4);
    ++v8;
    ++v13;
  }

  while (v8 != 4);
  v20 = **(a1 + 8);
  v21 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v20 + 1027, *a2);
  if (v21 == v20[1032])
  {
    v22 = 0;
  }

  else
  {
    v23 = ((v21 - v20[1031]) >> 3) & 0x3F;
    v24 = (((v21 - v20[1031]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
    v25 = *(v20[1040] + v24);
    v26 = *(v20[1046] + v24);
    ++*(*(v20[1034] + v24) + 24 * v23);
    v27 = v20[1062];
    if (!v27)
    {
      v73 = std::__throw_bad_function_call[abi:nn200100]();
      std::__function::__func<md::ita::PrepareFlyoverTransformConstantDataHandle::operator()(ecs2::Query<md::ls::FlyoverCommonTransformConstantDataHandle &,md::ls::ModelTransformData const&,md::ls::GlobeMatrix const&>)::$_0,std::allocator<md::ita::PrepareFlyoverTransformConstantDataHandle::operator()(ecs2::Query<md::ls::FlyoverCommonTransformConstantDataHandle &,md::ls::ModelTransformData const&,md::ls::GlobeMatrix const&>)::$_0>,void ()(md::ls::FlyoverCommonTransformConstantDataHandle &,md::ls::ModelTransformData const&,md::ls::GlobeMatrix const&)>::destroy_deallocate(v73);
      return;
    }

    v22 = (*(*v27 + 48))(v27);
    v28 = *(v26 + 8 * v23);
    *(v26 + 8 * v23) = v22;
    if (v28)
    {
      (*(*v28 + 8))(v28);
      v22 = *(v26 + 8 * v23);
    }

    *(v25 + 24 * v23) = v22;
  }

  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v85, v22);
  v29 = 0;
  v30 = v74;
  v31 = a3;
  do
  {
    v32 = 0;
    v33 = v30;
    do
    {
      *v33 = *(v31 + v32);
      v33 += 4;
      v32 += 12;
    }

    while (v32 != 48);
    ++v29;
    v30 += 4;
    v31 += 4;
  }

  while (v29 != 3);
  v34 = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 1065353216;
  v35 = v79;
  do
  {
    v36 = *&v74[v34];
    *v35 = vcvtq_f64_f32(*v36.f32);
    v35[1] = vcvt_hight_f64_f32(v36);
    v35 += 2;
    v34 += 16;
  }

  while (v34 != 64);
  v37 = 0;
  v38 = v88;
  do
  {
    v39 = 0;
    v40 = v79;
    do
    {
      v41 = 0;
      v42 = 0.0;
      v43 = v38;
      do
      {
        v44 = *v43;
        v43 += 4;
        v42 = v42 + *&v40[v41] * v44;
        v41 += 8;
      }

      while (v41 != 32);
      v80[4 * v39++ + v37] = v42;
      v40 += 32;
    }

    while (v39 != 4);
    ++v37;
    v38 = (v38 + 8);
  }

  while (v37 != 4);
  v45 = 0;
  v46 = v80;
  do
  {
    v48 = *v46;
    v47 = v46[1];
    v46 += 2;
    *(&v81 + v45) = vcvt_hight_f32_f64(vcvt_f32_f64(v48), v47);
    v45 += 16;
  }

  while (v45 != 64);
  v49 = 0;
  v50 = v86;
  v51 = v82;
  v86[4] = v81;
  v50[5] = v51;
  v52 = v84;
  v50[6] = v83;
  v50[7] = v52;
  v53 = v74;
  do
  {
    v54 = 0;
    v55 = v53;
    do
    {
      *v55 = *(a3 + v54);
      v55 += 4;
      v54 += 12;
    }

    while (v54 != 48);
    ++v49;
    v53 += 4;
    a3 += 4;
  }

  while (v49 != 3);
  v56 = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 1065353216;
  v57 = v79;
  do
  {
    v58 = *&v74[v56];
    *v57 = vcvtq_f64_f32(*v58.f32);
    v57[1] = vcvt_hight_f64_f32(v58);
    v57 += 2;
    v56 += 16;
  }

  while (v56 != 64);
  v59 = 0;
  v60 = v87;
  do
  {
    v61 = 0;
    v62 = v79;
    do
    {
      v63 = 0;
      v64 = 0.0;
      v65 = v60;
      do
      {
        v66 = *v65;
        v65 += 4;
        v64 = v64 + *&v62[v63] * v66;
        v63 += 8;
      }

      while (v63 != 32);
      v80[4 * v61++ + v59] = v64;
      v62 += 32;
    }

    while (v61 != 4);
    ++v59;
    ++v60;
  }

  while (v59 != 4);
  v67 = 0;
  v68 = v80;
  do
  {
    v70 = *v68;
    v69 = v68[1];
    v68 += 2;
    *(&v81 + v67) = vcvt_hight_f32_f64(vcvt_f32_f64(v70), v69);
    v67 += 16;
  }

  while (v67 != 64);
  v71 = v82;
  *v50 = v81;
  v50[1] = v71;
  v72 = v84;
  v50[2] = v83;
  v50[3] = v72;
  ggl::BufferMemory::~BufferMemory(v85);
}

__n128 std::__function::__func<md::ita::PrepareFlyoverTransformConstantDataHandle::operator()(ecs2::Query<md::ls::FlyoverCommonTransformConstantDataHandle &,md::ls::ModelTransformData const&,md::ls::GlobeMatrix const&>)::$_0,std::allocator<md::ita::PrepareFlyoverTransformConstantDataHandle::operator()(ecs2::Query<md::ls::FlyoverCommonTransformConstantDataHandle &,md::ls::ModelTransformData const&,md::ls::GlobeMatrix const&>)::$_0>,void ()(md::ls::FlyoverCommonTransformConstantDataHandle &,md::ls::ModelTransformData const&,md::ls::GlobeMatrix const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1D550;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::ita::PrepareFlyoverS2TransformConstantDataHandle::operator()(ecs2::Query<md::ls::FlyoverCommonS2TransformHandle &,md::ls::BaseMapTileHandle const&>)::$_0,std::allocator<md::ita::PrepareFlyoverS2TransformConstantDataHandle::operator()(ecs2::Query<md::ls::FlyoverCommonS2TransformHandle &,md::ls::BaseMapTileHandle const&>)::$_0>,void ()(md::ls::FlyoverCommonS2TransformHandle &,md::ls::BaseMapTileHandle const&)>::operator()(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v5 = **(a1 + 8);
  v6 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v5 + 1063, *a2);
  if (v6 == v5[1068])
  {
    v7 = 0;
  }

  else
  {
    v8 = ((v6 - v5[1067]) >> 3) & 0x3F;
    v9 = (((v6 - v5[1067]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
    v10 = *(v5[1076] + v9);
    v11 = *(v5[1082] + v9);
    ++*(*(v5[1070] + v9) + 24 * v8);
    v12 = v5[1098];
    if (!v12)
    {
      v30 = std::__throw_bad_function_call[abi:nn200100]();
      std::__function::__func<md::ita::PrepareFlyoverS2TransformConstantDataHandle::operator()(ecs2::Query<md::ls::FlyoverCommonS2TransformHandle &,md::ls::BaseMapTileHandle const&>)::$_0,std::allocator<md::ita::PrepareFlyoverS2TransformConstantDataHandle::operator()(ecs2::Query<md::ls::FlyoverCommonS2TransformHandle &,md::ls::BaseMapTileHandle const&>)::$_0>,void ()(md::ls::FlyoverCommonS2TransformHandle &,md::ls::BaseMapTileHandle const&)>::destroy_deallocate(v30);
      return;
    }

    v7 = (*(*v12 + 48))(v12);
    v13 = *(v11 + 8 * v8);
    *(v11 + 8 * v8) = v7;
    if (v13)
    {
      (*(*v13 + 8))(v13);
      v7 = *(v11 + 8 * v8);
    }

    *(v10 + 24 * v8) = v7;
  }

  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v31, v7);
  BaseMapTileDataRenderable = md::VKMRenderResourcesStore::getBaseMapTileDataRenderable(**(a1 + 8), *a3);
  v15 = 0;
  v16 = *(BaseMapTileDataRenderable + 25);
  v17 = *(BaseMapTileDataRenderable + 28);
  v18 = v32;
  v32[10].i32[0] = *(BaseMapTileDataRenderable + 24);
  v19 = *(a1 + 16);
  do
  {
    v18->i32[v15] = *(v19 + v15 * 4);
    ++v15;
  }

  while (v15 != 16);
  v20 = vrev64_s32(v17);
  v21.i64[0] = v20.u32[0];
  v21.i64[1] = v20.u32[1];
  v22 = vadd_s32(v20, 0x100000001);
  __asm { FMOV            V3.2D, #1.0 }

  v28 = vdivq_f64(_Q3, vdupq_lane_s64(COERCE__INT64((1 << v16)), 0));
  v29 = vmulq_f64(vcvtq_f64_u64(v21), v28);
  v21.i64[0] = v22.u32[0];
  v21.i64[1] = v22.u32[1];
  *&v29.f64[0] = vcvt_f32_f64(v29);
  v18[8] = vsub_f32(vcvt_f32_f64(vmulq_f64(vcvtq_f64_u64(v21), v28)), *&v29.f64[0]);
  v18[9] = *&v29.f64[0];
  ggl::BufferMemory::~BufferMemory(v31);
}

__n128 std::__function::__func<md::ita::PrepareFlyoverS2TransformConstantDataHandle::operator()(ecs2::Query<md::ls::FlyoverCommonS2TransformHandle &,md::ls::BaseMapTileHandle const&>)::$_0,std::allocator<md::ita::PrepareFlyoverS2TransformConstantDataHandle::operator()(ecs2::Query<md::ls::FlyoverCommonS2TransformHandle &,md::ls::BaseMapTileHandle const&>)::$_0>,void ()(md::ls::FlyoverCommonS2TransformHandle &,md::ls::BaseMapTileHandle const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1D598;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

int32x2_t md::OcclusionManager::worldTraitsDidChange(md::OcclusionManager *this)
{
  v1 = *(*(this + 1) + 232);
  *(this + 156) = v1[2].i8[1] ^ 1;
  *(this + 128) = v1[2].i8[0];
  *(this + 157) = v1[3].i8[7];
  *(this + 36) = v1[5].i32[1];
  result = vrev64_s32(v1[6]);
  *(this + 148) = result;
  return result;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::OcclusionQuery>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::OcclusionQueryResource>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<ggl::OcclusionLine::OcclusionLinePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1D6B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::OcclusionLine::View>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::OcclusionLine::View>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1D660;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *std::__deque_iterator<std::shared_ptr<md::OcclusionQuery>,std::shared_ptr<md::OcclusionQuery>*,std::shared_ptr<md::OcclusionQuery>&,std::shared_ptr<md::OcclusionQuery>**,long,256l>::operator-[abi:nn200100](void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = ((a2 - *result) >> 4) - a3;
    if (v3 < 1)
    {
      result -= (255 - v3) >> 8;
    }

    else
    {
      result += v3 >> 8;
    }
  }

  return result;
}

void std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::shared_ptr<md::OcclusionQuery> *,std::__deque_iterator<std::shared_ptr<md::OcclusionQuery>,std::shared_ptr<md::OcclusionQuery> *,std::shared_ptr<md::OcclusionQuery>&,std::shared_ptr<md::OcclusionQuery> **,long,256l>,0>(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a4;
  if (a2 == a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
    v10 = *a4;
    v11 = a3;
    while (1)
    {
      v12 = a5 - v10;
      if ((v11 - a2) >> 4 >= v12 >> 4)
      {
        v13 = v12 >> 4;
      }

      else
      {
        v13 = (v11 - a2) >> 4;
      }

      if (v13)
      {
        v14 = -16 * v13;
        v15 = (v11 - 16);
        do
        {
          v16 = *v15;
          *v15 = 0;
          *(v15 + 1) = 0;
          v17 = *(a5 - 8);
          *(a5 - 16) = v16;
          a5 -= 16;
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v17);
          }

          --v15;
          v14 += 16;
        }

        while (v14);
      }

      v11 -= 16 * v13;
      if (v11 == a2)
      {
        break;
      }

      v18 = *--v6;
      v10 = v18;
      a5 = v18 + 4096;
    }

    if (*v6 + 4096 == a5)
    {
      v19 = v6[1];
      ++v6;
      a5 = v19;
    }
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = a5;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::shared_ptr<md::OcclusionQuery> *,std::__deque_iterator<std::shared_ptr<md::OcclusionQuery>,std::shared_ptr<md::OcclusionQuery> *,std::shared_ptr<md::OcclusionQuery>&,std::shared_ptr<md::OcclusionQuery> **,long,256l>,0>(__int128 *result, __int128 *a2, __int128 *a3, void *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a2;
  v7 = result;
  if (a2 != a3)
  {
    v9 = *a4;
    while (1)
    {
      v10 = v9 - a5 + 4096;
      v11 = a3 - v6 >= v10 >> 4 ? v10 >> 4 : a3 - v6;
      result = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::shared_ptr<md::OcclusionQuery> *,std::shared_ptr<md::OcclusionQuery> *,std::shared_ptr<md::OcclusionQuery> *>(v6, &v6[v11], a5);
      v6 = result;
      if (result == a3)
      {
        break;
      }

      v13 = v5[1];
      ++v5;
      v9 = v13;
      a5 = v13;
    }

    a5 = v12;
    if (*v5 + 4096 == v12)
    {
      v14 = v5[1];
      ++v5;
      a5 = v14;
    }
  }

  *v7 = v6;
  v7[1] = v5;
  v7[2] = a5;
  return result;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::shared_ptr<md::OcclusionQuery> *,std::shared_ptr<md::OcclusionQuery> *,std::shared_ptr<md::OcclusionQuery> *>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *v4;
      *v4 = 0;
      *(v4 + 1) = 0;
      v7 = *(a3 + 8);
      *a3 = v6;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      ++v4;
      a3 += 16;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<ggl::QueryItem,geo::allocator_adapter<ggl::QueryItem,mdm::zone_mallocator>>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<ggl::QueryItem,geo::allocator_adapter<ggl::QueryItem,mdm::zone_mallocator>>::__on_zero_shared_weak(mdm::zone_mallocator *a1)
{
  v2 = mdm::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<ggl::QueryItem,geo::allocator_adapter<ggl::QueryItem,mdm::zone_mallocator>>>(v2, a1);
}

void std::__shared_ptr_emplace<ggl::QueryItem,geo::allocator_adapter<ggl::QueryItem,mdm::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1D628;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::Logic<md::CollectARMapDataLogic,md::ARCollectMapDataContext<(md::MapDataType)60>,md::LogicDependencies<gdc::TypeList<md::ARSceneContext,md::GeometryContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void md::ARCollectMapDataLogic<(md::MapDataType)60,md::CollectARMapDataLogic>::runBeforeLayout(uint64_t a1, uint64_t a2, void *a3)
{
  v107 = *MEMORY[0x1E69E9840];
  *(&v99 + 1) = a1;
  v4 = gdc::Registry::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)60>>(*(a1 + 128));
  v5 = v4;
  if (v4[29])
  {
    v6 = v4[28];
    if (v6)
    {
      v7 = v4[31];
      v8 = v4[7];
      v9 = (v4[8] - v8) >> 3;
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v6[6], v7, v8, v9);
        v6 = *v6;
      }

      while (v6);
    }
  }

  v5[8] = v5[7];
  v5[11] = v5[10];
  v10 = gdc::Registry::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)60>>(*(*(&v99 + 1) + 128));
  v11 = v10;
  if (v10[29])
  {
    v12 = v10[28];
    if (v12)
    {
      v13 = v10[31];
      v14 = v10[7];
      v15 = (v10[8] - v14) >> 3;
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v12[6], v13, v14, v15);
        v12 = *v12;
      }

      while (v12);
    }
  }

  v11[8] = v11[7];
  v11[11] = v11[10];
  *&v99 = *a3;
  v16 = *(*(&v99 + 1) + 128);
  if (*(*(&v99 + 1) + 120) == 0xFFFFFFFF00000000)
  {
    gdc::Registry::create(*(*(&v99 + 1) + 128));
  }

  v105 = gdc::Registry::storage<SceneComponents::LayerDataInView<(md::MapDataType)60>>(v16);
  v17 = gdc::Registry::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)60>>(v16);
  v18 = gdc::Registry::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)60>>(v16);
  v19 = gdc::Registry::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)60>>(v16);
  v20.i64[0] = v105;
  v20.i64[1] = v17;
  v21.i64[0] = v18;
  v21.i64[1] = v19;
  v22 = vdupq_n_s64(0x20uLL);
  v106[0] = vaddq_s64(v20, v22);
  v106[1] = vaddq_s64(v21, v22);
  v23 = *&v106[0];
  v24 = 8;
  v25 = v106;
  do
  {
    if (*(*(v106 + v24) + 32) - *(*(v106 + v24) + 24) < *(v23 + 32) - *(v23 + 24))
    {
      v23 = *(v106 + v24);
      v25 = (v106 + v24);
    }

    v24 += 8;
  }

  while (v24 != 32);
  v26 = *v25;
  v104 = v105 + 4;
  v98 = *v25;
  if (v105 + 4 == *v25)
  {
    v106[0] = v99;
    v27 = v105[7];
    v102 = v105[8];
    if (v27 != v102)
    {
      v28 = v105[10];
      do
      {
        v29 = *(v27 + 4);
        Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v17 + 4, v29);
        v31 = v17[8];
        if (v31 != Index)
        {
          v32 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v18 + 4, v29);
          v33 = v18[8];
          if (v33 != v32)
          {
            v34 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v19 + 4, v29);
            v35 = v19[8];
            if (v35 != v34)
            {
              v36 = *v27;
              v37 = HIDWORD(*v27);
              v38 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v17 + 4, HIDWORD(*v27));
              if (v31 == v38)
              {
                v39 = v17[11];
              }

              else
              {
                v39 = (v17[10] + 24 * ((v38 - v17[7]) >> 3));
              }

              v40 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v18 + 4, v37);
              if (v33 == v40)
              {
                v41 = v18[11];
              }

              else
              {
                v41 = (v18[10] + 24 * ((v40 - v18[7]) >> 3));
              }

              v42 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v19 + 4, v37);
              if (v35 == v42)
              {
                v43 = v19[11];
              }

              else
              {
                v43 = (v19[10] + 24 * ((v42 - v19[7]) >> 3));
              }

              md::ARCollectMapDataLogic<(md::MapDataType)60,md::CollectARMapDataLogic>::updateVisibleMapData(md::SceneContext const&,gdc::Registry *)::{lambda(gdc::Entity,SceneComponents::LayerDataInView<(md::MapDataType)60> &,SceneComponents::LayerDataPreviousInView<(md::MapDataType)60> &,SceneComponents::LayerDataEnteringView<(md::MapDataType)60> &,SceneComponents::LayerDataExitingView<(md::MapDataType)60> &)#1}::operator()(v106, v36, v28, v39, v41, v43);
            }
          }
        }

        v28 += 3;
        v27 += 8;
      }

      while (v27 != v102);
    }

    v26 = v98;
  }

  v103 = v17 + 4;
  if (v17 + 4 == v26)
  {
    v106[0] = v99;
    v44 = v17[7];
    v100 = v17[8];
    if (v44 != v100)
    {
      v45 = v17[10];
      do
      {
        v46 = *(v44 + 4);
        v47 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v104, v46);
        v48 = v105[8];
        if (v48 != v47)
        {
          v49 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v18 + 4, v46);
          v50 = v18[8];
          if (v50 != v49)
          {
            v51 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v19 + 4, v46);
            v52 = v19[8];
            if (v52 != v51)
            {
              v53 = *v44;
              v54 = HIDWORD(*v44);
              v55 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v104, HIDWORD(*v44));
              if (v48 == v55)
              {
                v56 = v105[11];
              }

              else
              {
                v56 = (v105[10] + 24 * ((v55 - v105[7]) >> 3));
              }

              v57 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v18 + 4, v54);
              if (v50 == v57)
              {
                v58 = v18[11];
              }

              else
              {
                v58 = (v18[10] + 24 * ((v57 - v18[7]) >> 3));
              }

              v59 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v19 + 4, v54);
              if (v52 == v59)
              {
                v60 = v19[11];
              }

              else
              {
                v60 = (v19[10] + 24 * ((v59 - v19[7]) >> 3));
              }

              md::ARCollectMapDataLogic<(md::MapDataType)60,md::CollectARMapDataLogic>::updateVisibleMapData(md::SceneContext const&,gdc::Registry *)::{lambda(gdc::Entity,SceneComponents::LayerDataInView<(md::MapDataType)60> &,SceneComponents::LayerDataPreviousInView<(md::MapDataType)60> &,SceneComponents::LayerDataEnteringView<(md::MapDataType)60> &,SceneComponents::LayerDataExitingView<(md::MapDataType)60> &)#1}::operator()(v106, v53, v56, v45, v58, v60);
            }
          }
        }

        v45 += 3;
        v44 += 8;
      }

      while (v44 != v100);
    }

    v26 = v98;
  }

  v101 = v18 + 4;
  if (v18 + 4 == v26)
  {
    v106[0] = v99;
    v61 = v18[7];
    v62 = v18[8];
    if (v61 != v62)
    {
      v63 = v18[10];
      v97 = v18[8];
      do
      {
        v64 = *(v61 + 4);
        v65 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v104, v64);
        v66 = v105[8];
        if (v66 != v65)
        {
          v67 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v103, v64);
          v68 = v17[8];
          if (v68 != v67)
          {
            v69 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v19 + 4, v64);
            v70 = v19[8];
            if (v70 != v69)
            {
              v71 = *v61;
              v72 = HIDWORD(*v61);
              v73 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v104, HIDWORD(*v61));
              if (v66 == v73)
              {
                v74 = v105[11];
              }

              else
              {
                v74 = (v105[10] + 24 * ((v73 - v105[7]) >> 3));
              }

              v75 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v103, v72);
              if (v68 == v75)
              {
                v76 = v17[11];
              }

              else
              {
                v76 = (v17[10] + 24 * ((v75 - v17[7]) >> 3));
              }

              v77 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v19 + 4, v72);
              if (v70 == v77)
              {
                v78 = v19[11];
              }

              else
              {
                v78 = (v19[10] + 24 * ((v77 - v19[7]) >> 3));
              }

              v62 = v97;
              md::ARCollectMapDataLogic<(md::MapDataType)60,md::CollectARMapDataLogic>::updateVisibleMapData(md::SceneContext const&,gdc::Registry *)::{lambda(gdc::Entity,SceneComponents::LayerDataInView<(md::MapDataType)60> &,SceneComponents::LayerDataPreviousInView<(md::MapDataType)60> &,SceneComponents::LayerDataEnteringView<(md::MapDataType)60> &,SceneComponents::LayerDataExitingView<(md::MapDataType)60> &)#1}::operator()(v106, v71, v74, v76, v63, v78);
            }
          }
        }

        v63 += 3;
        v61 += 8;
      }

      while (v61 != v62);
    }

    v26 = v98;
  }

  if (v19 + 4 == v26)
  {
    v106[0] = v99;
    v80 = v19[7];
    v79 = v19[8];
    if (v80 != v79)
    {
      v81 = v19[10];
      do
      {
        v82 = *(v80 + 4);
        v83 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v104, v82);
        v84 = v105[8];
        if (v84 != v83)
        {
          v85 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v103, v82);
          v86 = v17[8];
          if (v86 != v85)
          {
            v87 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v101, v82);
            v88 = v18[8];
            if (v88 != v87)
            {
              v89 = *v80;
              v90 = HIDWORD(*v80);
              v91 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v104, HIDWORD(*v80));
              if (v84 == v91)
              {
                v92 = v105[11];
              }

              else
              {
                v92 = (v105[10] + 24 * ((v91 - v105[7]) >> 3));
              }

              v93 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v103, v90);
              if (v86 == v93)
              {
                v94 = v17[11];
              }

              else
              {
                v94 = (v17[10] + 24 * ((v93 - v17[7]) >> 3));
              }

              v95 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v101, v90);
              if (v88 == v95)
              {
                v96 = v18[11];
              }

              else
              {
                v96 = (v18[10] + 24 * ((v95 - v18[7]) >> 3));
              }

              md::ARCollectMapDataLogic<(md::MapDataType)60,md::CollectARMapDataLogic>::updateVisibleMapData(md::SceneContext const&,gdc::Registry *)::{lambda(gdc::Entity,SceneComponents::LayerDataInView<(md::MapDataType)60> &,SceneComponents::LayerDataPreviousInView<(md::MapDataType)60> &,SceneComponents::LayerDataEnteringView<(md::MapDataType)60> &,SceneComponents::LayerDataExitingView<(md::MapDataType)60> &)#1}::operator()(v106, v89, v92, v94, v96, v81);
            }
          }
        }

        v81 += 3;
        v80 += 8;
      }

      while (v80 != v79);
    }
  }
}

void sub_1B2FA05F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__split_buffer<SceneComponents::LayerDataInView<(md::MapDataType)60>>::~__split_buffer(va);
  std::__tree<gdc::LayerDataWithWorld>::destroy(a13);
  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)60>>(uint64_t a1)
{
  v3 = 0xD9D6033E08E71563;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xD9D6033E08E71563);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)60>>(uint64_t a1)
{
  v3 = 0x7731F7E182AC74C3;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x7731F7E182AC74C3uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)60>>(uint64_t a1)
{
  v3 = 0xAE0549933BB69820;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xAE0549933BB69820);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)60>>(uint64_t a1)
{
  v3 = 0x416BB4B17C0143F6;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x416BB4B17C0143F6uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)60>>(uint64_t a1)
{
  v3 = 0xEFE60C4B692DE7FCLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xEFE60C4B692DE7FCLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void md::ARCollectMapDataLogic<(md::MapDataType)60,md::CollectARMapDataLogic>::updateVisibleMapData(md::SceneContext const&,gdc::Registry *)::{lambda(gdc::Entity,SceneComponents::LayerDataInView<(md::MapDataType)60> &,SceneComponents::LayerDataPreviousInView<(md::MapDataType)60> &,SceneComponents::LayerDataEnteringView<(md::MapDataType)60> &,SceneComponents::LayerDataExitingView<(md::MapDataType)60> &)#1}::operator()(uint64_t a1, void *a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v12 = *(a1 + 8);
  std::set<gdc::LayerDataWithWorld>::swap[abi:nn200100](a3, a4);
  v13 = a3 + 1;
  std::__tree<gdc::LayerDataWithWorld>::destroy(a3[1]);
  *a3 = (a3 + 1);
  a3[2] = 0;
  a3[1] = 0;
  std::__tree<gdc::LayerDataWithWorld>::destroy(a5[1]);
  *a5 = (a5 + 1);
  a5[2] = 0;
  a5[1] = 0;
  std::__tree<gdc::LayerDataWithWorld>::destroy(a6[1]);
  *a6 = (a6 + 1);
  a6[2] = 0;
  a6[1] = 0;
  v14 = md::SceneContext::layerDataInView(*a1, 60);
  std::set<gdc::LayerDataWithWorld>::insert[abi:nn200100]<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>(a3, *v14, v14 + 1);
  v15 = *a3;
  v16 = a4 + 1;
  v17 = *a4;
  v18 = *a5;
  v83 = a5;
  v84 = v18;
  if (v15 != a3 + 1)
  {
    if (v17 == v16)
    {
      v85 = a5;
      v86 = v18;
      if (v15 != v13)
      {
        do
        {
LABEL_34:
          std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v85, v15 + 32);
          v35 = *(v15 + 8);
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
              v36 = *(v15 + 16);
              v32 = *v36 == v15;
              v15 = v36;
            }

            while (!v32);
          }

          v15 = v36;
        }

        while (v36 != v13);
      }
    }

    else
    {
      while (1)
      {
        v19 = *(v15 + 32);
        v20 = *(v15 + 48);
        v21 = v20;
        v22 = *(v17 + 48);
        v23 = v17[4];
        if (v20 == v22 ? v19 < v23 : v20 < v22)
        {
          std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v83, v15 + 32);
          v25 = *(v15 + 8);
          if (v25)
          {
            do
            {
              v15 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = v15;
              v15 = *(v15 + 16);
            }

            while (*v15 != v26);
          }
        }

        else
        {
          v27 = v23 < v19;
          if (v21 != v22)
          {
            v27 = v22 < v21;
          }

          if (v27)
          {
            v28 = v17[1];
            if (v28)
            {
              do
              {
                v17 = v28;
                v28 = *v28;
              }

              while (v28);
            }

            else
            {
              do
              {
                v29 = v17;
                v17 = v17[2];
              }

              while (*v17 != v29);
            }
          }

          else
          {
            v30 = *(v15 + 8);
            if (v30)
            {
              do
              {
                v31 = v30;
                v30 = *v30;
              }

              while (v30);
            }

            else
            {
              do
              {
                v31 = *(v15 + 16);
                v32 = *v31 == v15;
                v15 = v31;
              }

              while (!v32);
            }

            v33 = v17[1];
            if (v33)
            {
              do
              {
                v17 = v33;
                v33 = *v33;
              }

              while (v33);
            }

            else
            {
              do
              {
                v34 = v17;
                v17 = v17[2];
              }

              while (*v17 != v34);
            }

            v15 = v31;
          }
        }

        if (v15 == v13)
        {
          break;
        }

        if (v17 == v16)
        {
          v85 = v83;
          v86 = v84;
          goto LABEL_34;
        }
      }
    }
  }

  v37 = *a4;
  v38 = *a3;
  v39 = *a6;
  v83 = a6;
  v84 = v39;
  if (v37 != v16)
  {
    if (v38 == v13)
    {
      v85 = a6;
      v86 = v39;
      if (v37 != v16)
      {
        do
        {
LABEL_73:
          std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v85, (v37 + 4));
          v55 = v37[1];
          if (v55)
          {
            do
            {
              v56 = v55;
              v55 = *v55;
            }

            while (v55);
          }

          else
          {
            do
            {
              v56 = v37[2];
              v32 = *v56 == v37;
              v37 = v56;
            }

            while (!v32);
          }

          v37 = v56;
        }

        while (v56 != v16);
      }
    }

    else
    {
      while (1)
      {
        v40 = v37[4];
        v41 = *(v37 + 48);
        v42 = v41;
        v43 = *(v38 + 48);
        v44 = *(v38 + 32);
        if (v41 == v43 ? v40 < v44 : v41 < v43)
        {
          std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v83, (v37 + 4));
          v46 = v37[1];
          if (v46)
          {
            do
            {
              v37 = v46;
              v46 = *v46;
            }

            while (v46);
          }

          else
          {
            do
            {
              v47 = v37;
              v37 = v37[2];
            }

            while (*v37 != v47);
          }
        }

        else
        {
          v48 = v44 < v40;
          if (v42 != v43)
          {
            v48 = v43 < v42;
          }

          if (v48)
          {
            v49 = *(v38 + 8);
            if (v49)
            {
              do
              {
                v38 = v49;
                v49 = *v49;
              }

              while (v49);
            }

            else
            {
              do
              {
                v50 = v38;
                v38 = *(v38 + 16);
              }

              while (*v38 != v50);
            }
          }

          else
          {
            v51 = v37[1];
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
                v52 = v37[2];
                v32 = *v52 == v37;
                v37 = v52;
              }

              while (!v32);
            }

            v53 = *(v38 + 8);
            if (v53)
            {
              do
              {
                v38 = v53;
                v53 = *v53;
              }

              while (v53);
            }

            else
            {
              do
              {
                v54 = v38;
                v38 = *(v38 + 16);
              }

              while (*v38 != v54);
            }

            v37 = v52;
          }
        }

        if (v37 == v16)
        {
          break;
        }

        if (v38 == v13)
        {
          v85 = v83;
          v86 = v84;
          goto LABEL_73;
        }
      }
    }
  }

  if (a5[2])
  {
    v57 = gdc::Registry::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)60>>(*(v12 + 128));
    v85 = a2;
    v58 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v57 + 4, &v85);
    if (v59)
    {
      v60 = v57[11];
      v61 = v57[12];
      if (v60 >= v61)
      {
        v65 = v57[10];
        v66 = v60 - v65 + 1;
        if (v66 < 0)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v67 = v61 - v65;
        if (2 * v67 > v66)
        {
          v66 = 2 * v67;
        }

        if (v67 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v68 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v68 = v66;
        }

        if (v68)
        {
          operator new();
        }

        v62 = v60 - v65 + 1;
        memcpy(0, v65, v60 - v65);
        v57[10] = 0;
        v57[11] = v62;
        v57[12] = 0;
        if (v65)
        {
          operator delete(v65);
        }
      }

      else
      {
        v62 = v60 + 1;
      }

      v57[11] = v62;
      v63 = v57[31];
      goto LABEL_98;
    }

    v63 = v57[31];
    if (v57[10] + ((v58 - v57[7]) >> 3) == v57[11])
    {
LABEL_98:
      for (i = v57[22]; i; i = *i)
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v63, &v85, 1);
      }

      goto LABEL_100;
    }

    for (j = v57[16]; j; j = *j)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v63, &v85, 1);
    }
  }

LABEL_100:
  if (!a6[2])
  {
    return;
  }

  v70 = gdc::Registry::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)60>>(*(v12 + 128));
  v85 = a2;
  v71 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v70 + 4, &v85);
  if (v72)
  {
    v73 = v70[11];
    v74 = v70[12];
    if (v73 >= v74)
    {
      v78 = v70[10];
      v79 = v73 - v78 + 1;
      if (v79 < 0)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v80 = v74 - v78;
      if (2 * v80 > v79)
      {
        v79 = 2 * v80;
      }

      if (v80 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v81 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v81 = v79;
      }

      if (v81)
      {
        operator new();
      }

      v75 = v73 - v78 + 1;
      memcpy(0, v78, v73 - v78);
      v70[10] = 0;
      v70[11] = v75;
      v70[12] = 0;
      if (v78)
      {
        operator delete(v78);
      }
    }

    else
    {
      v75 = v73 + 1;
    }

    v70[11] = v75;
    v76 = v70[31];
    goto LABEL_119;
  }

  v76 = v70[31];
  if (v70[10] + ((v71 - v70[7]) >> 3) == v70[11])
  {
LABEL_119:
    for (k = v70[22]; k; k = *k)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(k[6], v76, &v85, 1);
    }

    return;
  }

  for (m = v70[16]; m; m = *m)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(m[6], v76, &v85, 1);
  }
}

BOOL gdc::ComponentStorageWrapper<SceneComponents::LayerDataPreviousInView<(md::MapDataType)60>>::remove(void *a1, uint64_t a2)
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
    if (v6 != v7 - 24)
    {
      std::__tree<gdc::LayerDataWithWorld>::__assign_multi<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>(v6, *(v7 - 24), (v7 - 16));
      v7 = a1[11];
    }

    v8 = v7 - 24;
    std::__tree<gdc::LayerDataWithWorld>::destroy(*(v7 - 16));
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

void gdc::ComponentStorageWrapper<SceneComponents::LayerDataPreviousInView<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<SceneComponents::LayerDataInView<(md::MapDataType)60>>::__destroy_vector::operator()[abi:nn200100](&v3);
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

uint64_t gdc::ComponentStorageWrapper<SceneComponents::LayerDataPreviousInView<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<SceneComponents::LayerDataInView<(md::MapDataType)60>>::__destroy_vector::operator()[abi:nn200100](&v4);
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

BOOL gdc::ComponentStorageWrapper<SceneComponents::LayerDataExitingView<(md::MapDataType)60>>::remove(void *a1, uint64_t a2)
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
    if (v6 != v7 - 24)
    {
      std::__tree<gdc::LayerDataWithWorld>::__assign_multi<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>(v6, *(v7 - 24), (v7 - 16));
      v7 = a1[11];
    }

    v8 = v7 - 24;
    std::__tree<gdc::LayerDataWithWorld>::destroy(*(v7 - 16));
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

void gdc::ComponentStorageWrapper<SceneComponents::LayerDataExitingView<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<SceneComponents::LayerDataInView<(md::MapDataType)60>>::__destroy_vector::operator()[abi:nn200100](&v3);
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

uint64_t gdc::ComponentStorageWrapper<SceneComponents::LayerDataExitingView<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<SceneComponents::LayerDataInView<(md::MapDataType)60>>::__destroy_vector::operator()[abi:nn200100](&v4);
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

BOOL gdc::ComponentStorageWrapper<SceneComponents::LayerDataEnteringView<(md::MapDataType)60>>::remove(void *a1, uint64_t a2)
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
    if (v6 != v7 - 24)
    {
      std::__tree<gdc::LayerDataWithWorld>::__assign_multi<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>(v6, *(v7 - 24), (v7 - 16));
      v7 = a1[11];
    }

    v8 = v7 - 24;
    std::__tree<gdc::LayerDataWithWorld>::destroy(*(v7 - 16));
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

void gdc::ComponentStorageWrapper<SceneComponents::LayerDataEnteringView<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<SceneComponents::LayerDataInView<(md::MapDataType)60>>::__destroy_vector::operator()[abi:nn200100](&v3);
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

uint64_t gdc::ComponentStorageWrapper<SceneComponents::LayerDataEnteringView<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<SceneComponents::LayerDataInView<(md::MapDataType)60>>::__destroy_vector::operator()[abi:nn200100](&v4);
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

uint64_t std::__split_buffer<SceneComponents::LayerDataInView<(md::MapDataType)60>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    std::__tree<gdc::LayerDataWithWorld>::destroy(*(i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL gdc::ComponentStorageWrapper<SceneComponents::LayerDataInfo<(md::MapDataType)60>>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 2;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v8 = a1[11];
    *(v6 + v7) = *(v8 - 2);
    a1[11] = v8 - 2;
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

void gdc::ComponentStorageWrapper<SceneComponents::LayerDataInfo<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<SceneComponents::LayerDataInfo<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<SceneComponents::LayerDataDidExitView<(md::MapDataType)60>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<SceneComponents::LayerDataDidExitView<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<SceneComponents::LayerDataDidExitView<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<SceneComponents::LayerDataDidEnterView<(md::MapDataType)60>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<SceneComponents::LayerDataDidEnterView<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<SceneComponents::LayerDataDidEnterView<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t md::Logic<md::CollectARMapDataLogic,md::ARCollectMapDataContext<(md::MapDataType)60>,md::LogicDependencies<gdc::TypeList<md::ARSceneContext,md::GeometryContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x127F9F77D6DAB2F5 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v8[0] = md::LogicDependencies<gdc::TypeList<md::ARSceneContext,md::GeometryContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARSceneContext,md::GeometryContext>(*(a2 + 8));
    v8[1] = v7;
    return (*(*v6 + 160))(v6, a2, v8, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

void *md::LogicDependencies<gdc::TypeList<md::ARSceneContext,md::GeometryContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARSceneContext,md::GeometryContext>(void *a1)
{
  v2 = gdc::Context::context<md::ARSceneContext>(a1);
  std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x3070CB6B3C7F21D3uLL);
  return v2;
}

void *gdc::Context::context<md::ARSceneContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x29BDA47DB65B52C8uLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x29BDA47DB65B52C8)
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

uint64_t md::Logic<md::CollectARMapDataLogic,md::ARCollectMapDataContext<(md::MapDataType)60>,md::LogicDependencies<gdc::TypeList<md::ARSceneContext,md::GeometryContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x127F9F77D6DAB2F5)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::ARSceneContext,md::GeometryContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARSceneContext,md::GeometryContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 152))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectARMapDataLogic,md::ARCollectMapDataContext<(md::MapDataType)60>,md::LogicDependencies<gdc::TypeList<md::ARSceneContext,md::GeometryContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x127F9F77D6DAB2F5)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::ARSceneContext,md::GeometryContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARSceneContext,md::GeometryContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 144))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectARMapDataLogic,md::ARCollectMapDataContext<(md::MapDataType)60>,md::LogicDependencies<gdc::TypeList<md::ARSceneContext,md::GeometryContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x127F9F77D6DAB2F5)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::ARSceneContext,md::GeometryContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARSceneContext,md::GeometryContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 136))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectARMapDataLogic,md::ARCollectMapDataContext<(md::MapDataType)60>,md::LogicDependencies<gdc::TypeList<md::ARSceneContext,md::GeometryContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x127F9F77D6DAB2F5)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::ARSceneContext,md::GeometryContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARSceneContext,md::GeometryContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 128))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::ARCollectMapDataContext<(md::MapDataType)60>>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARCollectMapDataContext<(md::MapDataType)60>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A24960;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARCollectMapDataContext<(md::MapDataType)60>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A24960;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::ARCollectMapDataLogic<(md::MapDataType)60,md::CollectARMapDataLogic>::didBecomeInactive(uint64_t a1)
{
  if (*(a1 + 120) || *(a1 + 122) || *(a1 + 124) != -1)
  {
    gdc::Registry::destroy(*(a1 + 128), *(a1 + 120));
    *(a1 + 120) = 0xFFFFFFFF00000000;
  }
}

BOOL md::LabelAnnotationStyleMonitor::needsCrossfade(uint64_t a1, md::LabelStyle *a2)
{
  if (*(a1 + 9) != 1)
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  v8 = 0;
  v7 = 0;
  md::AnnotationMonitorProperties::init(&v7, a2);
  return *a1 != v7 || *(a1 + 8) != v8;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MarkForEntityDeletion>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MarkForEntityDeletion>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[436];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls21MarkForEntityDeletionEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A55880;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls21MarkForEntityDeletionEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A55880;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MarkForEntityDeletion,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A55860;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MarkForEntityDeletion,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A55860;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::erq::GPUWorkCallbacks>(ecs2::Entity,md::erq::GPUWorkCallbacks &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1DB68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 36) = 0;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderTargetToPrepare,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1D840;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RenderTargetToPrepare,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RenderTargetToPrepare,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1D860;
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

void ecs2::storage<ecs2::Entity,md::ls::RenderTargetToPrepare,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RenderTargetToPrepare,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderTargetToPrepare,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1D840;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RenderTargetToPrepare,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ita::FrameHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A544D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ita::FrameHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ita::FrameHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A544F8;
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

void ecs2::storage<ecs2::Entity,md::ita::FrameHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ita::FrameHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ita::FrameHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A544D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ita::FrameHandle,64ul>::~storage(a1);
}

void std::__shared_ptr_emplace<ggl::GlobeAtmosphere::BasePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1DE40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::GlobeStars::StarsPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1DE08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::GlobeSkyRenderResources::loadStarsModel(void **this)
{
  memset(v20, 0, sizeof(v20));
  v17 = v18;
  v18[0] = 0;
  v19[0] = 0;
  v19[1] = 0;
  v18[1] = 0;
  v18[2] = v19;
  std::string::basic_string[abi:nn200100]<0>(__p, "zip");
  if (v22 < 0)
  {
    if (__p[1] != 3)
    {
      v8 = 1;
LABEL_22:
      operator delete(__p[0]);
      goto LABEL_23;
    }

    v3 = __p[0];
    if (*__p[0] == 27002 && *(__p[0] + 2) == 112)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v22 != 3)
    {
      goto LABEL_35;
    }

    if (LOWORD(__p[0]) == 27002 && BYTE2(__p[0]) == 112)
    {
LABEL_19:
      v8 = karo::media::ZipLoader::loadFromChunk(&bundleDataBuffer, 0x60AE6uLL, &v17) ^ 1;
      if (v22 < 0)
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    v3 = __p;
  }

  v5 = *v3;
  v6 = *(v3 + 2);
  if (v5 == 18778 && v6 == 80)
  {
    goto LABEL_19;
  }

  v8 = 1;
  if (v22 < 0)
  {
    goto LABEL_22;
  }

LABEL_23:
  if ((v8 & 1) == 0)
  {
    v9 = v18[0];
    if (v18[0])
    {
      v10 = v18;
      do
      {
        v11 = v10;
        v12 = (v9 + 32);
        v13 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v9 + 4, this);
        if ((v13 & 0x80u) == 0)
        {
          v10 = v9;
        }

        v9 = *&v9[(v13 >> 4) & 8];
      }

      while (v9);
      if (v10 != v18)
      {
        if ((v13 & 0x80u) == 0)
        {
          v14 = v12;
        }

        else
        {
          v14 = (v11 + 4);
        }

        v15 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(this, v14);
        if ((v15 & 0x80) == 0)
        {
          karo::media::SkyLoader::loadFromChunk(v15, v10[7], *(v10 + 16) - v10[7], v20);
          operator new();
        }
      }
    }
  }

LABEL_35:
  std::__tree<std::string>::destroy(v19[0]);
  std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(v18[0]);
  return 0;
}

void sub_1B2FA5750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, char *a20, uint64_t a21, void *a22)
{
  std::__tree<std::string>::destroy(a20);
  std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(a17);
  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void std::__tree<std::string>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::string>::destroy(*a1);
    std::__tree<std::string>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 7);
    if (v2)
    {
      *(a1 + 8) = v2;
      operator delete(v2);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void std::__shared_ptr_emplace<ggl::GlobeStars::StarsMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1DE78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::GlobeAtmosphere::AtmosphereMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1DEB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2FA66EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VKInternedString;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t md::ARDebugRouteScene::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 40);
  v6 = [v5 routeInfo];
  v7 = [v6 route];
  v55 = v7;

  if (v7)
  {
    v8 = geo::_retain_ptr<GEOComposedRoute * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(a1 + 40), &v55);
    if ((v8 & 1) == 0)
    {
      geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(a1 + 32, v7);
      *(a1 + 56) = 0;
    }

    for (i = 1; ; ++i)
    {
      if (i >= [v7 stepsCount])
      {
        v14 = 0;
        goto LABEL_37;
      }

      v10 = [v7 steps];
      v11 = [v10 objectAtIndex:i];

      v12 = [v11 endRouteCoordinate];
      v13 = *(a3 + 4);
      if (v13 < v12 || v13 == v12 && *(a3 + 8) < *(&v12 + 1))
      {
        break;
      }
    }

    if (v8 && *(a1 + 56) == i)
    {
      v14 = 0;
    }

    else
    {
      v15 = [v7 steps];
      v53 = [v15 objectAtIndex:i - 1];

      v52 = v11;
      v16 = v7;
      v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
      for (j = 0; j < [v16 stepsCount]; ++j)
      {
        v18 = [v16 steps];
        v19 = [v18 objectAtIndex:j];

        v20 = [v19 maneuverRoadName];
        v21 = v20;
        if (!v20 || ![(__CFString *)v20 length])
        {

          v21 = &stru_1F2A61C40;
        }

        v22 = [v19 endRouteCoordinate];
        v23 = v22;
        v24 = *(a3 + 4);
        if (v24 < v22 || v24 == v22 && *(a3 + 8) < *(&v22 + 1))
        {
          [v16 pointAtRouteCoordinate:v22];
          v26 = v25;
          v28 = v27;
          v30 = v29;
          [v16 courseAtRouteCoordinateIndex:v23];
          v32 = [[VKARWalkingManeuverFeature alloc] initWithDisplayLocation:v23 routeCoordinate:v21 maneuverHeading:0 displayText:v26 elevationModel:v28, v30, v31];
          [v54 addObject:v32];
        }
      }

      v33 = v16;
      [v33 distance];
      [v33 pointWithAltitudeCorrectionAtRouteCoordinate:{objc_msgSend(v33, "coordinateAtOffset:")}];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v57[0] = xmmword_1B3415084;
      v57[1] = unk_1B3415094;
      std::vector<GeoCodecsFeatureStylePair>::vector[abi:nn200100](__p, v57, 4uLL);
      v40 = objc_alloc_init(MEMORY[0x1E69A1DB0]);
      [v40 replaceAttributes:? count:?];
      v41 = [[VKARWalkingArrivalFeature alloc] initWithPosition:v40 iconStyleAttributes:v35, v37, v39];

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      [v54 addObject:v41];
      v42 = v33;
      v43 = v52;
      v44 = [v53 endRouteCoordinate];
      v45 = [v43 endRouteCoordinate];
      if (GEOPolylineCoordinateIsValid() && GEOPolylineCoordinateIsValid())
      {
        if (v45 > v44 || (v46 = 0, v45 == v44) && *(&v45 + 1) > *(&v44 + 1))
        {
          if (GEOPolylineCoordinateIsInvalid())
          {
            v47 = *MEMORY[0x1E69A1918];
            v48 = *(MEMORY[0x1E69A1918] + 4);
          }

          else
          {
            v48 = *(&v44 + 1) - floorf(*(&v44 + 1));
            v47 = vcvtms_u32_f32(*(&v44 + 1)) + v44;
          }

          if (GEOPolylineCoordinateIsInvalid())
          {
            v50 = *MEMORY[0x1E69A1918];
            v51 = *(MEMORY[0x1E69A1918] + 4);
          }

          else
          {
            v51 = *(&v45 + 1) - floorf(*(&v45 + 1));
            v50 = vcvtms_u32_f32(*(&v45 + 1)) + v45;
          }

          v46 = [[VKARWalkingContinueFeature alloc] initWithRoute:v42 range:v47 | (LODWORD(v48) << 32) displayText:v50 | (LODWORD(v51) << 32), @"CONTINUE"];
        }
      }

      else
      {
        v46 = 0;
      }

      [v54 addObject:v46];
      md::ARDebugScene::setFeatures(a1, v54);
      *(a1 + 56) = i;

      v14 = 1;
    }
  }

  else
  {
    md::ARDebugScene::setFeatures(a1, 0);
    *(a1 + 56) = 0;
    v14 = 1;
  }

LABEL_37:

  return v14;
}

void md::ARDebugRouteScene::~ARDebugRouteScene(md::ARDebugRouteScene *this)
{
  *this = &unk_1F2A4C2C0;
  *(this + 4) = &unk_1F2A4C308;

  *this = &unk_1F2A1DF08;
  *(this + 1) = &unk_1F2A4C2E8;

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A4C2C0;
  *(this + 4) = &unk_1F2A4C308;

  *this = &unk_1F2A1DF08;
  *(this + 1) = &unk_1F2A4C2E8;
}

void md::StandardGridMapEngineMode::~StandardGridMapEngineMode(md::StandardGridMapEngineMode *this)
{
  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

md::StandardGridMapEngineMode *md::StandardGridMapEngineMode::StandardGridMapEngineMode(md::StandardGridMapEngineMode *this)
{
  v2 = md::MapEngineMode::MapEngineMode(this, 2);
  *v2 = &unk_1F2A1DF30;
  *(v2 + 49) = 1;
  *(v2 + 52) = 25;
  v5 = 512;
  v6 = 51;
  md::MapEngineMode::addRequiredRenderLayers(v2, &v5, 3);
  gdc::LogicExecutionGraphBuilder::addLogic<md::GridLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::AnchorLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::CameraLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::SettingsLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::StyleLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::StandardLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::ElevationLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::LayerDataLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::TileSelectionLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::PendingSceneLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::ResolvedSceneLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::LabelsLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::LoadingStatusLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::GeometryLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::MapZoomLevelStyleLogic>(this + 29);
  v4 = 28;
  md::MapEngineMode::addOptionalMapDataTypes(this, &v4, 1);
  return this;
}

uint64_t md::DebugConsoleManager::console(uint64_t *a1, int a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  v6 = a2;
  if (v5 <= a2)
  {
    v7 = a2 + 1;
    v8 = v7 - v5;
    if (v7 <= v5)
    {
      if (a2 + 1 < v5)
      {
        v12 = v3 + 16 * v7;
        while (v4 != v12)
        {
          v13 = *(v4 - 8);
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v13);
          }

          v4 -= 16;
        }

        a1[1] = v12;
      }
    }

    else
    {
      v9 = a1[2];
      if (v8 > (v9 - v4) >> 4)
      {
        if (a2 > -2)
        {
          v10 = v9 - v3;
          if (v10 >> 3 > v7)
          {
            v7 = v10 >> 3;
          }

          if (v10 >= 0x7FFFFFFFFFFFFFF0)
          {
            v11 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v11 = v7;
          }

          if (!(v11 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(a1[1], 16 * v8);
      a1[1] = v4 + 16 * v8;
    }

    v3 = *a1;
  }

  result = *(v3 + 16 * v6);
  if (!result)
  {
    operator new();
  }

  return result;
}

void md::DebugConsole::~DebugConsole(md::DebugConsole *this)
{
  ggl::DebugConsole::~DebugConsole(this);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::DebugConsole>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1DF78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::FontOptions>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void std::__shared_ptr_emplace<md::FontOptions>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1DFD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::TextDataString::generateGlyphInfos(uint64_t a1, const grl::FontKey **a2, float a3)
{
  v124 = *MEMORY[0x1E69E9840];
  v3 = atomic_load((a1 + 130));
  if ((v3 & 1) == 0)
  {
    v5 = a1;
    v6 = *a1;
    v7 = 18.0;
    if (*(v6 + 134) == 1)
    {
      if (a3 <= 64.0)
      {
        v7 = ceilf(a3 * 0.0625) * 16.0;
      }

      else
      {
        v7 = fminf(ceilf(a3 * 0.03125) * 32.0, 128.0);
      }
    }

    *(v5 + 30) = v7;
    if (!*a2)
    {
      goto LABEL_136;
    }

    __dst = 0uLL;
    v121 = 0;
    v8 = *(v6 + 87);
    if (v8 < 0)
    {
      v9 = v6[9];
    }

    else
    {
      v9 = *(v6 + 87);
    }

    if (!v9)
    {
      md::TextDataStringInfo::widenText();
    }

    if (&__dst != (v6 + 8))
    {
      if ((v8 & 0x80000000) != 0)
      {
        v6 = std::basic_string<char16_t,std::char_traits<char16_t>,geo::allocator_adapter<char16_t,mdm::zone_mallocator>>::__assign_no_alias<true>(&__dst, v6[8], v6[9]);
      }

      else
      {
        __dst = *(v6 + 4);
        v121 = v6[10];
      }
    }

    v10 = HIBYTE(v121);
    v11 = HIBYTE(v121);
    if (SHIBYTE(v121) < 0)
    {
      v10 = *(&__dst + 1);
    }

    if (!v10)
    {
LABEL_134:
      if (v11 < 0)
      {
        v83 = __dst;
        v84 = mdm::zone_mallocator::instance(v6);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char16_t>(v84, v83);
      }

LABEL_136:
      atomic_store(1u, v5 + 130);
      return;
    }

    v93 = v5;
    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (SHIBYTE(v121) >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    if (SHIBYTE(v121) >= 0)
    {
      v14 = HIBYTE(v121);
    }

    else
    {
      v14 = *(&__dst + 1);
    }

    v118 = &unk_1F2A3D108;
    v119 = [v12 initWithCharacters:p_dst length:v14];

    v116 = &unk_1F2A5EF80;
    Mutable = CFAttributedStringCreateMutable(0, 0);
    if (!Mutable)
    {
LABEL_133:
      v118 = &unk_1F2A3D108;

      v11 = HIBYTE(v121);
      v5 = v93;
      goto LABEL_134;
    }

    v15 = v5[2];
    v16 = *(v15 + 40);
    v17 = *(v15 + 37);
    if ((v16 & 1) != 0 || (v17 & 1) == 0)
    {
      v19 = v16 & v17;
      v18 = *(v15 + 36);
    }

    else
    {
      v18 = *(v15 + 36);
      v19 = 1;
      v16 = v18;
    }

    v20 = *(v15 + 38);
    v21 = *(v15 + 39);
    grl::FontKey::FontKey(v96, v15, *(v93 + 30));
    grl::FontManager::fontForKey(&v114, *a2, v96);
    v22 = v115;
    if (!v115)
    {
LABEL_131:
      esl::FontKey::~FontKey(v96);
      v116 = &unk_1F2A5EF80;
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      goto LABEL_133;
    }

    v23 = v16 ^ 1;
    if ((v16 ^ 1))
    {
      HasSmallCaps = 0;
      v86 = v18 & v23;
      v25 = v19 & v23;
    }

    else
    {
      v112 = &unk_1F2A5F810;
      CFRetain(v115);
      v113 = v22;
      HasSmallCaps = grl::FontManager::fontHasSmallCaps(v22);
      v112 = &unk_1F2A5F810;
      if (v113)
      {
        CFRelease(v113);
      }

      v86 = !HasSmallCaps;
      v25 = 1;
    }

    v110 = &unk_1F2A1E010;
    v111 = 0;
    if (v25 & 1) != 0 || (v20 & 1) != 0 || (v21 & 1) != 0 || (v86)
    {
      v26 = (*v93 + 32);
      if (*(*v93 + 55) < 0)
      {
        v26 = *v26;
      }

      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v26];
      v28 = CFLocaleCreate(*MEMORY[0x1E695E480], v27);
      v29 = v111;
      v111 = v28;
      if (v29)
      {
        CFRelease(v29);
      }
    }

    if (v25)
    {
      v30 = v119;
      MutableCopy = CFStringCreateMutableCopy(0, 0, v30);
      result.location = &unk_1F2A1E030;
      result.length = MutableCopy;

      length = result.length;
      if (result.length)
      {
        if (*(*v93 + 129) == 1)
        {
          v134.length = CFStringGetLength(result.length);
          v134.location = 0;
          CFStringFindAndReplace(length, @"ß", @"ẞ", v134, 0);
          length = result.length;
        }

        CFStringUppercase(length, v111);
        v125.location = 0;
        v125.length = 0;
        CFAttributedStringReplaceString(Mutable, v125, result.length);
        goto LABEL_56;
      }

LABEL_127:
      v110 = &unk_1F2A1E010;
      if (v111)
      {
        CFRelease(v111);
      }

      v114 = &unk_1F2A5F810;
      if (v115)
      {
        CFRelease(v115);
      }

      goto LABEL_131;
    }

    if (v20)
    {
      v33 = v119;
      v34 = CFStringCreateMutableCopy(0, 0, v33);
      result.location = &unk_1F2A1E030;
      result.length = v34;

      if (!result.length)
      {
        goto LABEL_127;
      }

      CFStringLowercase(result.length, v111);
      v126.location = 0;
      v126.length = 0;
      CFAttributedStringReplaceString(Mutable, v126, result.length);
    }

    else
    {
      if (!v21)
      {
        v37 = Mutable;
        v38 = v119;
        v128.location = 0;
        v128.length = 0;
        CFAttributedStringReplaceString(v37, v128, v38);

LABEL_59:
        v108 = &unk_1F2A5F810;
        v109 = 0;
        range = CFAttributedStringGetLength(Mutable);
        if (((v86 | HasSmallCaps) & 1) == 0)
        {
          goto LABEL_78;
        }

        if (HasSmallCaps)
        {
          v39 = v115;
          v40 = CTFontCopyFontDescriptor(v115);
          result.location = &unk_1F2A5F6F8;
          result.length = v40;
          LODWORD(valuePtr[0]) = 38;
          v41 = *MEMORY[0x1E695E480];
          v42 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, valuePtr);
          v101 = &unk_1F2A5F6D8;
          v102 = v42;
          LODWORD(__p[0]) = 1;
          v43 = CFNumberCreate(v41, kCFNumberIntType, __p);
          characters = &unk_1F2A5F6D8;
          v123 = v43;
          CopyWithFeature = CTFontDescriptorCreateCopyWithFeature(result.length, v102, v43);
          v103 = &unk_1F2A5F6F8;
          v104 = CopyWithFeature;
          CopyWithAttributes = CTFontCreateCopyWithAttributes(v39, 0.0, 0, CopyWithFeature);
          v103 = &unk_1F2A5F6F8;
          if (v104)
          {
            CFRelease(v104);
          }

          characters = &unk_1F2A5F6D8;
          if (v123)
          {
            CFRelease(v123);
          }

          v101 = &unk_1F2A5F6D8;
          if (v102)
          {
            CFRelease(v102);
          }

          result.location = &unk_1F2A5F6F8;
          if (result.length)
          {
            CFRelease(result.length);
          }

          v106 = &unk_1F2A5F810;
          v107 = CopyWithAttributes;
          if (v109)
          {
            CFRelease(v109);
            CopyWithAttributes = v107;
          }

          v109 = CopyWithAttributes;
        }

        else
        {
          v85 = CTFontGetSize(v115) * 0.829999983;
          CopyWithAttributes = CTFontCreateCopyWithAttributes(v115, v85, 0, 0);
          result.location = &unk_1F2A5F810;
          result.length = CopyWithAttributes;
          if (v109)
          {
            CFRelease(v109);
            CopyWithAttributes = result.length;
          }

          v109 = CopyWithAttributes;
        }

        if (CopyWithAttributes)
        {
          v46 = Mutable;
          if (v20)
          {
            v129.location = 0;
            v129.length = range;
            CFAttributedStringSetAttribute(Mutable, v129, *MEMORY[0x1E6965658], CopyWithAttributes);
          }

          else
          {
            v88 = v115;
            locale = v111;
            v131.location = 0;
            v131.length = range;
            attrName = *MEMORY[0x1E6965658];
            CFAttributedStringSetAttribute(Mutable, v131, *MEMORY[0x1E6965658], CopyWithAttributes);
            theSet = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
            String = CFAttributedStringGetString(v46);
            if (String)
            {
              aStr = v46;
              v54 = 0;
              while (1)
              {
                v55 = String;
                RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(String, v54);
                if (range < RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length)
                {
                  break;
                }

                v57 = CFStringCreateWithSubstring(0, v55, RangeOfComposedCharactersAtIndex);
                if (v57)
                {
                  v58 = CFStringCreateMutableCopy(0, 0, v57);
                  v59 = v58;
                  if (v58)
                  {
                    CFStringUppercase(v58, locale);
                    v60 = CFStringCreateMutableCopy(0, 0, v57);
                    v61 = v60;
                    if (v60)
                    {
                      CFStringLowercase(v60, locale);
                      v62 = CFStringCompare(v59, v61, 0);
                      CFRelease(v59);
                      CFRelease(v61);
                      if (v62)
                      {
                        CFAttributedStringSetAttribute(aStr, RangeOfComposedCharactersAtIndex, attrName, v88);
                        v55 = CFAttributedStringGetString(aStr);
                        if (!v55)
                        {
                          CFRelease(v57);
                          break;
                        }
                      }
                    }

                    else
                    {
                      CFRelease(v59);
                    }
                  }

                  CFRelease(v57);
                }

                v133.location = RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length;
                v133.length = range - (RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length);
                if (!CFStringFindCharacterFromSet(v55, theSet, v133, 0, &result))
                {
                  break;
                }

                v54 = result.length + result.location;
                if (result.length + result.location >= range)
                {
                  break;
                }

                String = v55;
              }
            }
          }
        }

        else
        {
LABEL_78:
          v130.location = 0;
          v130.length = range;
          CFAttributedStringSetAttribute(Mutable, v130, *MEMORY[0x1E6965658], v115);
        }

        v47 = v115;
        v48 = v93[5];
        if (v115)
        {
          CFRetain(v115);
        }

        v93[5] = v47;
        if (v48)
        {
          CFRelease(v48);
        }

        v49 = *v93;
        if (v96[13] == 1 && (*(v49 + 134) & 1) == 0)
        {
          v50 = CTFontCopyCharacterSet(v115);
          result.location = &unk_1F2A1E050;
          result.length = v50;
          v51 = [(__CFCharacterSet *)v50 invertedSet];
          if (v51)
          {
            v52 = v119;
            *(v93 + 125) = [v52 rangeOfCharacterFromSet:v51] == 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            *(v93 + 125) = 0;
          }

          result.location = &unk_1F2A1E050;
          if (result.length)
          {
            CFRelease(result.length);
          }

          v49 = *v93;
        }

        if (*(v49 + 133) == 1)
        {
          v63 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &kScriptLayoutTracking);
          result.location = &unk_1F2A5F6D8;
          result.length = v63;
          v132.location = 0;
          v132.length = range;
          CFAttributedStringSetAttribute(Mutable, v132, *MEMORY[0x1E6965A88], v63);
          result.location = &unk_1F2A5F6D8;
          if (result.length)
          {
            CFRelease(result.length);
          }
        }

        v64 = CTLineCreateWithAttributedString(Mutable);
        v106 = &unk_1F2A5F268;
        v107 = v64;
        if (v64)
        {
          GlyphCount = CTLineGetGlyphCount(v64);
          v66 = GlyphCount;
          v67 = v93[7];
          if (0xCCCCCCCCCCCCCCCDLL * ((v93[9] - v67) >> 3) < GlyphCount)
          {
            if (GlyphCount > 0x666666666666666)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v68 = v93[8];
            v100 = v93 + 10;
            v69 = mdm::zone_mallocator::instance(GlyphCount);
            v70 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::FontGlyphInfo>(v69, v66);
            v71 = &v70[v68 - v67];
            result.location = v70;
            result.length = v71;
            v72 = &v70[40 * v66];
            v98 = v71;
            v99 = v72;
            v73 = v93[7];
            v74 = v93[8];
            v75 = v71 + v73 - v74;
            std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::FontGlyphInfo,mdm::zone_mallocator>,md::FontGlyphInfo*>(v73, v74, v75);
            v76 = v93[7];
            v93[7] = v75;
            v93[8] = v71;
            v77 = v93[9];
            v93[9] = v72;
            v98 = v76;
            v99 = v77;
            result.location = v76;
            result.length = v76;
            GlyphCount = std::__split_buffer<md::FontGlyphInfo,geo::allocator_adapter<md::FontGlyphInfo,mdm::zone_mallocator> &>::~__split_buffer(&result);
            v103 = 0;
            v104 = 0;
            v105 = 0;
            goto LABEL_114;
          }

          v103 = 0;
          v104 = 0;
          v105 = 0;
          if (GlyphCount)
          {
            if (GlyphCount >> 61)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

LABEL_114:
            v78 = mdm::zone_mallocator::instance(GlyphCount);
            v79 = pthread_rwlock_rdlock((v78 + 32));
            if (v79)
            {
              geo::read_write_lock::logFailure(v79, "read lock", v80);
            }

            v81 = malloc_type_zone_malloc(*v78, 8 * v66, 0x100004000313F17uLL);
            atomic_fetch_add((v78 + 24), 1u);
            geo::read_write_lock::unlock((v78 + 32));
            v103 = v81;
            v105 = &v81[8 * v66];
            bzero(v81, 8 * v66);
            v104 = &v81[8 * v66];
            std::__allocate_at_least[abi:nn200100]<std::allocator<md::MapDataType>>(v66);
          }

          memset(valuePtr, 0, sizeof(valuePtr));
          memset(__p, 0, sizeof(__p));
          v82 = CFAttributedStringGetString(Mutable);
          if ([v82 length])
          {
            md::TextDataStringInfo::generateLineBreakInfo(*v93, v82, v93 + 7);
          }

          if (__p[0])
          {
            operator delete(__p[0]);
          }

          if (valuePtr[0])
          {
            operator delete(valuePtr[0]);
          }

          std::vector<long,geo::allocator_adapter<long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v103);
          v106 = &unk_1F2A5F268;
          if (v107)
          {
            CFRelease(v107);
          }
        }

        v108 = &unk_1F2A5F810;
        if (v109)
        {
          CFRelease(v109);
        }

        goto LABEL_127;
      }

      v35 = v119;
      v36 = CFStringCreateMutableCopy(0, 0, v35);
      result.location = &unk_1F2A1E030;
      result.length = v36;

      if (!result.length)
      {
        goto LABEL_127;
      }

      CFStringLowercase(result.length, v111);
      CFStringCapitalize(result.length, v111);
      v127.location = 0;
      v127.length = 0;
      CFAttributedStringReplaceString(Mutable, v127, result.length);
    }

LABEL_56:
    result.location = &unk_1F2A1E030;
    if (result.length)
    {
      CFRelease(result.length);
    }

    goto LABEL_59;
  }
}

void sub_1B2FA8CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a66)
  {
    CFRelease(a66);
  }

  STACK[0x2C0] = a12;
  if (STACK[0x2C8])
  {
    CFRelease(STACK[0x2C8]);
  }

  STACK[0x2D8] = a13;
  if (STACK[0x2E0])
  {
    CFRelease(STACK[0x2E0]);
  }

  STACK[0x308] = &unk_1F2A5F810;
  if (STACK[0x310])
  {
    CFRelease(STACK[0x310]);
  }

  esl::FontKey::~FontKey(&a46);
  STACK[0x320] = a14;
  if (STACK[0x328])
  {
    CFRelease(STACK[0x328]);
  }

  STACK[0x338] = a16;

  if (*(v68 - 217) < 0)
  {
    v71 = *(v68 - 240);
    v72 = mdm::zone_mallocator::instance(v70);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char16_t>(v72, v71);
  }

  _Unwind_Resume(a1);
}

void std::vector<CGSize>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gm::Matrix<double,2,1>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 16 * a2, 0x1000040451B5BE8uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void md::TextDataString::detectTextClusters(md::TextDataString *this, CTLineRef line, float a3, unint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  JustifiedLine = CTLineCreateJustifiedLine(line, 1.0, (a3 + (a4 * 20.0)));
  v31 = &unk_1F2A5F268;
  v39 = &unk_1F2A5F268;
  v40 = JustifiedLine;
  if (JustifiedLine)
  {
    GlyphCount = CTLineGetGlyphCount(JustifiedLine);
    if (GlyphCount == a4)
    {
      v8 = 2 * a4;
      if (2 * a4 > 0x2000)
      {
        v9 = malloc_type_malloc(2 * a4, 0x1000040BDFB0063uLL);
        v33 = v9;
      }

      else
      {
        MEMORY[0x1EEE9AC00](GlyphCount);
        v33 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v33, 2 * a4);
      }

      v10 = 16 * a4;
      if (16 * a4 > 0x2000)
      {
        v11 = malloc_type_malloc(16 * a4, 0x1000040451B5BE8uLL);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v9);
        v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
        bzero(v11, 16 * a4);
      }

      if (v33 && v11)
      {
        GlyphRuns = CTLineGetGlyphRuns(v40);
        v29 = 16 * a4;
        v30 = 2 * a4;
        v37 = 0u;
        v36 = 0u;
        v35 = 0u;
        v34 = 0u;
        v32 = GlyphRuns;
        v13 = [(__CFArray *)v32 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v13)
        {
          v14 = 0;
          v15 = *v35;
          v16 = 0.0;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v35 != v15)
              {
                objc_enumerationMutation(v32);
              }

              v18 = *(*(&v34 + 1) + 8 * i);
              v19 = CTRunGetGlyphCount(v18);
              v42.location = 0;
              v42.length = v19;
              CTRunGetGlyphs(v18, v42, v33);
              v43.location = 0;
              v43.length = v19;
              CTRunGetPositions(v18, v43, v11);
              if (v19)
              {
                v20 = *(this + 127);
                v21 = 40 * v14 + 29;
                v22 = (*(this + 11) + 16 * v14);
                p_x = &v11->x;
                do
                {
                  v24 = *p_x;
                  v25 = *v22;
                  v26 = *p_x - (*v22 + v16);
                  if (fabsf(v26) > 5.0 || v20 == 0)
                  {
                    *(*(this + 7) + v21) = 1;
                    *(this + 127) = ++v20;
                  }

                  ++v14;
                  v16 = v24 - v25;
                  p_x += 2;
                  v21 += 40;
                  v22 += 2;
                  --v19;
                }

                while (v19);
              }
            }

            v13 = [(__CFArray *)v32 countByEnumeratingWithState:&v34 objects:v38 count:16];
          }

          while (v13);
        }

        v8 = v30;
        v10 = v29;
      }

      if (v8 > 0x2000)
      {
        free(v33);
      }

      if (v10 > 0x2000)
      {
        free(v11);
      }
    }

    v39 = v31;
    if (v40)
    {
      CFRelease(v40);
    }
  }
}

void sub_1B2FA949C(_Unwind_Exception *a1)
{
  *(v1 - 136) = *(v1 - 360);
  v3 = *(v1 - 128);
  if (v3)
  {
    CFRelease(v3);
  }

  _Unwind_Resume(a1);
}

void std::vector<long,geo::allocator_adapter<long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);
    v3 = pthread_rwlock_rdlock((v2 + 32));
    if (v3)
    {
      geo::read_write_lock::logFailure(v3, "read lock", v4);
    }

    atomic_fetch_add((v2 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v2, v1);

    geo::read_write_lock::unlock((v2 + 32));
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::FontGlyphInfo>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 40 * a2, 0x1020040750CF3BCuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::FontGlyphInfo,mdm::zone_mallocator>,md::FontGlyphInfo*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      *a3 = *v6;
      *(a3 + 8) = CGFontRetain(*(v6 + 8));
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 26) = *(v6 + 26);
      *(a3 + 30) = *(v6 + 30);
      *(a3 + 32) &= 0xC0u;
      v6 += 40;
      a3 += 40;
    }

    while (v6 != a2);
    do
    {
      CGFontRelease(*(v5 + 8));
      v5 += 40;
    }

    while (v5 != a2);
  }
}

mdm::zone_mallocator *std::__split_buffer<md::FontGlyphInfo,geo::allocator_adapter<md::FontGlyphInfo,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    *(a1 + 2) = i - 40;
    CGFontRelease(*(i - 32));
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::FontGlyphInfo>(v5, v4);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::FontGlyphInfo>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<double,2,1>>(uint64_t a1, void *a2)
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

void geo::_retain_ptr<CGFont *,geo::_retain_cf<CGFont *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A5F758;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<CGFont *,geo::_retain_cf<CGFont *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A5F758;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void geo::_retain_ptr<__CFCharacterSet const*,geo::_retain_cf<__CFCharacterSet const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A1E050;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<__CFCharacterSet const*,geo::_retain_cf<__CFCharacterSet const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A1E050;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void geo::_retain_ptr<__CFNumber const*,geo::_retain_cf<__CFNumber const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A5F6D8;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<__CFNumber const*,geo::_retain_cf<__CFNumber const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A5F6D8;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void geo::_retain_ptr<__CTFontDescriptor const*,geo::_retain_cf<__CTFontDescriptor const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A5F6F8;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<__CTFontDescriptor const*,geo::_retain_cf<__CTFontDescriptor const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A5F6F8;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void geo::_retain_ptr<__CFString *,geo::_retain_cf<__CFString *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A1E030;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<__CFString *,geo::_retain_cf<__CFString *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A1E030;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void geo::_retain_ptr<__CFLocale const*,geo::_retain_cf<__CFLocale const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A1E010;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<__CFLocale const*,geo::_retain_cf<__CFLocale const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A1E010;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void geo::_retain_ptr<__CFAttributedString *,geo::_retain_cf<__CFAttributedString *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A5EF80;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<__CFAttributedString *,geo::_retain_cf<__CFAttributedString *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A5EF80;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void **geo::fast_shared_ptr<md::LabelRouteZoomCollisionInfo,std::allocator>::~fast_shared_ptr(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *v2 == 1;
    *v2 = (*v2 - 1);
    if (v3)
    {
      std::vector<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 15));
      std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 11));
      std::__hash_table<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,mdm::zone_mallocator>>::__deallocate_node(v2[7]);
      std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v2 + 4));
      operator delete(*a1);
      *a1 = 0;
    }
  }

  return a1;
}

mdm::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,void *> *> *>(v3, v2);
  }

  return a1;
}

void ***md::LabelRouteCollisionInfo::LabelRouteCollisionInfo(void ***a1, void **a2, void **a3, uint64_t a4)
{
  v4 = a1;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[4] = a2;
  a1[5] = a3;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  *(a1 + 72) = *(a4 + 24);
  v6 = *a4;
  v5 = *(a4 + 8);
  v7 = v5 - *a4;
  if (v5 == *a4)
  {
    v9 = 0;
  }

  else
  {
    std::vector<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator>>::__vallocate[abi:nn200100]((a1 + 6), v7 >> 3);
    v8 = v4[7];
    a1 = memmove(v8, v6, v7);
    v4[7] = (v8 + v7);
    v9 = *v4;
    v7 = v4[1];
  }

  v10 = v7 - v9;
  v11 = (v7 - v9) >> 3;
  if (v11 > 8)
  {
    if (v10 != 72)
    {
      v31 = v9 + 9;
      while (v7 != v31)
      {
        v7 -= 8;
        geo::fast_shared_ptr<md::LabelRouteZoomCollisionInfo,std::allocator>::~fast_shared_ptr(v7);
      }

      v4[1] = v31;
    }
  }

  else
  {
    v12 = 9 - v11;
    v13 = v4[2];
    if (v12 <= (v13 - v7) >> 3)
    {
      bzero(v7, 8 * v12);
      v4[1] = (v7 + 8 * v12);
    }

    else
    {
      v14 = v13 - v9;
      v15 = v14 >> 2;
      if ((v14 >> 2) <= 9)
      {
        v15 = 9;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      v17 = mdm::zone_mallocator::instance(a1);
      v18 = pthread_rwlock_rdlock((v17 + 32));
      if (v18)
      {
        geo::read_write_lock::logFailure(v18, "read lock", v19);
      }

      v20 = malloc_type_zone_malloc(*v17, 8 * v16, 0x2004093837F09uLL);
      atomic_fetch_add((v17 + 24), 1u);
      geo::read_write_lock::unlock((v17 + 32));
      v21 = *v4;
      v22 = v4[1];
      v23 = &v20[v10];
      v24 = &v20[8 * v16];
      bzero(v23, 8 * v12);
      v26 = &v23[8 * v12];
      v27 = &v23[v21 - v22];
      if (v22 != v21)
      {
        v28 = v21;
        v29 = v27;
        do
        {
          *v29 = 0;
          *v29++ = *v28;
          *v28++ = 0;
        }

        while (v28 != v22);
        do
        {
          v25 = geo::fast_shared_ptr<md::LabelRouteZoomCollisionInfo,std::allocator>::~fast_shared_ptr(v21++);
        }

        while (v21 != v22);
        v21 = *v4;
      }

      *v4 = v27;
      v4[1] = v26;
      v4[2] = v24;
      if (v21)
      {
        v30 = mdm::zone_mallocator::instance(v25);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelRouteZoomCollisionInfo,std::allocator>>(v30, v21);
      }
    }
  }

  return v4;
}

void sub_1B2FA9FB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  geo::read_write_lock::unlock((v3 + 32));
  std::vector<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<geo::fast_shared_ptr<md::LabelRouteZoomCollisionInfo,std::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelRouteZoomCollisionInfo,std::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *md::LabelRouteZoomCollisionInfo::addPathToTile(uint64_t a1, int a2, int a3, int a4, int a5)
{
  result = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>((a1 + 24), a3 + (a2 << 16));
  if (!result)
  {
    v27[0] = 0;
    operator new();
  }

  v8 = *(result + 3);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v11 = v9[6];
  v10 = v9[7];
  if (v11 >= v10)
  {
    v13 = v9[5];
    v14 = v11 - v13;
    v15 = (v11 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v17 = v10 - v13;
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

    v27[4] = v9 + 8;
    if (v18)
    {
      v19 = mdm::zone_mallocator::instance(result);
      v20 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelCollisionPath>(v19, v18);
      v13 = v9[5];
      v14 = v9[6] - v13;
      v21 = v14 >> 3;
    }

    else
    {
      v20 = 0;
      v21 = v15;
    }

    v22 = &v20[8 * v15];
    v23 = &v20[8 * v18];
    *v22 = a4;
    *(v22 + 1) = a5;
    v12 = v22 + 8;
    v24 = &v22[-8 * v21];
    memcpy(v24, v13, v14);
    v25 = v9[5];
    v9[5] = v24;
    v9[6] = v12;
    v26 = v9[7];
    v9[7] = v23;
    v27[2] = v25;
    v27[3] = v26;
    v27[0] = v25;
    v27[1] = v25;
    result = std::__split_buffer<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator> &>::~__split_buffer(v27);
  }

  else
  {
    *v11 = a4;
    *(v11 + 1) = a5;
    v12 = v11 + 8;
  }

  v9[6] = v12;
  return result;
}

void sub_1B2FAA5F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  geo::read_write_lock::unlock((v4 + 32));
  v6 = geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>::~fast_shared_ptr(v3);
  v7 = mdm::zone_mallocator::instance(v6);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,void *>>(v7, v2);
  geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>::~fast_shared_ptr(va);
  _Unwind_Resume(a1);
}

void **geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>::~fast_shared_ptr(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*v2)-- == 1)
    {
      std::vector<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 6));
      operator delete(*a1);
      *a1 = 0;
    }
  }

  return a1;
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,void *> *> *>(v3, v2);
  }
}

mdm::zone_mallocator *std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::shrink_to_fit(mdm::zone_mallocator *result)
{
  v1 = *(result + 1);
  v2 = *result;
  v3 = *(result + 2) - *result;
  v4 = &v1[-*result];
  if (v3 > v4)
  {
    v5 = result;
    v17 = result + 24;
    if (v1 == v2)
    {
      v7 = 0;
    }

    else
    {
      v6 = mdm::zone_mallocator::instance(result);
      v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned int>(v6, v4 >> 2);
      v2 = *v5;
      v3 = *(v5 + 2) - *v5;
    }

    v8 = &v7[4 * (v4 >> 2)];
    v13 = v7;
    v14 = v8;
    v15 = v8;
    v16 = v8;
    if (v4 < v3)
    {
      v9 = *(v5 + 1) - v2;
      v10 = &v8[-v9];
      memcpy(&v8[-v9], v2, v9);
      v11 = *v5;
      *v5 = v10;
      *(v5 + 1) = v8;
      v12 = *(v5 + 2);
      *(v5 + 2) = v8;
      v15 = v11;
      v16 = v12;
      v13 = v11;
      v14 = v11;
    }

    return std::__split_buffer<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator> &>::~__split_buffer(&v13);
  }

  return result;
}

uint64_t geo::dpSimplifyViaIndexes<gm::Matrix<double,2,1>,unsigned int>(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5, double a6)
{
  v10 = result;
  v11 = a6 * a6;
  v12 = a3 - 1;
  __asm { FMOV            V0.2D, #1.0 }

  v34 = _Q0;
  while (1)
  {
    v18 = a2 + 1;
    if (v18 >= a3)
    {
      break;
    }

    v19 = 0;
    v20 = *(v10 + 16 * a2);
    v21 = vsubq_f64(*(v10 + 16 * a3), v20);
    v22 = vmulq_f64(v21, v21);
    v23 = vaddq_f64(vdupq_laneq_s64(v22, 1), v22);
    v24 = vaddvq_f64(v22);
    v25 = vdivq_f64(v34, v23);
    v26 = v12 - a2;
    v27 = 0.0;
    do
    {
      v28 = *(v10 + 16 * v18);
      v29 = 0.0;
      if (v24 > 1.0e-15)
      {
        v30 = vmulq_f64(vsubq_f64(v28, v20), v21);
        v29 = fmin(fmax(vmulq_f64(vaddq_f64(vdupq_laneq_s64(v30, 1), v30), v25).f64[0], 0.0), 1.0);
      }

      v31 = vsubq_f64(v28, vmlaq_n_f64(v20, v21, v29));
      v32 = vaddvq_f64(vmulq_f64(v31, v31));
      if (v32 > v27)
      {
        v19 = v18;
      }

      v27 = fmax(v32, v27);
      ++v18;
      --v26;
    }

    while (v26);
    if (v27 <= v11)
    {
      break;
    }

    result = geo::dpSimplifyViaIndexes<gm::Matrix<double,2,1>,unsigned int>(v10, a6);
    v33 = *a5;
    *a5 = v33 + 1;
    *(a4 + 4 * v33) = v19;
    a2 = v19;
  }

  return result;
}

uint64_t *md::LabelRouteCollisionInfo::tileCollisionInfo(md::LabelRouteCollisionInfo *a1, unsigned int a2, double *a3)
{
  v4 = md::LabelRouteCollisionInfo::collisionInfoForZoom(a1, a2);
  result = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>((v4 + 24), ((a3[1] + (a3[3] - a3[1]) * 0.5) / *(v4 + 16)) + (((*a3 + (a3[2] - *a3) * 0.5) / *(v4 + 16)) << 16));
  if (result)
  {
    v6 = 0;
    v7 = 0;
    v8 = result[3];
    v9 = v8 + 8;
    if (v8)
    {
      v10 = v8 + 8;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10 + 8;
    v12 = v10 + 24;
    do
    {
      if (*(v12 + 8 * v7) <= a3[v7])
      {
        return 0;
      }

      v13 = *(v11 + 8 * v7);
      v14 = a3[v7 + 2];
      v7 = 1;
      v15 = (v13 < v14) & ~v6;
      v6 = 1;
    }

    while ((v15 & 1) != 0);
    if (v13 < v14)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ___ZN2md18LabelFeatureStyler18styleLabelFeaturesERNSt3__16vectorINS_22LabelFeatureStylerItemEN3geo17allocator_adapterIS3_N3mdm15zone_mallocatorEEEEEbbPNS4_9TaskQueueE_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = 20 * a2 + 20;
  if (*(result + 32) < v2)
  {
    v2 = *(result + 32);
  }

  if (v2 > 20 * a2)
  {
    v3 = result;
    v4 = v2 - 20 * a2;
    v5 = 480 * a2;
    do
    {
      v6 = (**(v3 + 40) + v5);
      result = (*(**v6 + 592))(*v6, **(v3 + 48) + 16 * v6[1], **(v3 + 56) + 16 * v6[1], v6[2], *(v3 + 68), *(v3 + 64), 0);
      v5 += 24;
      --v4;
    }

    while (v4);
  }

  return result;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelStyle>>(uint64_t a1, void *a2)
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

void *geo::_retain_ptr<void({block_pointer} {__strong})(unsigned long),geo::_copy_block_arc<void({block_pointer} {__strong})(unsigned long)>,geo::_release_block_arc<void({block_pointer} {__strong})(unsigned long)>,geo::_hash_ptr,geo::_equal_ptr>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2A1E070;
  a1[1] = 0;
  v3 = MEMORY[0x1B8C62DA0](*(a2 + 8));
  if (v3)
  {
    v4 = v3;
    v5 = [v3 copy];
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x1B8C62DA0](v5);
  v7 = a1[1];
  a1[1] = v6;

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned long)>::~__value_func[abi:nn200100](uint64_t a1)
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

void geo::_retain_ptr<void({block_pointer} {__strong})(unsigned long),geo::_copy_block_arc<void({block_pointer} {__strong})(unsigned long)>,geo::_release_block_arc<void({block_pointer} {__strong})(unsigned long)>,geo::_hash_ptr,geo::_equal_ptr>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1E070;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<void({block_pointer} {__strong})(unsigned long),geo::_copy_block_arc<void({block_pointer} {__strong})(unsigned long)>,geo::_release_block_arc<void({block_pointer} {__strong})(unsigned long)>,geo::_hash_ptr,geo::_equal_ptr>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1E070;

  return a1;
}

NSObject *___ZN3geo9TaskQueue5applyEmNSt3__18functionIFvmEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  }

  v9 = a2;
  v5 = *(a1 + 64);
  if (v5)
  {
    (*(*v5 + 48))(v5, &v9);
    result = *(a1 + 32);
    if (result)
    {

      return dispatch_semaphore_signal(result);
    }
  }

  else
  {
    v7 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__function::__value_func<void ()(unsigned long)>::__value_func[abi:nn200100](v7, v8);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void std::__function::__func<geo::TaskQueue::apply_b(unsigned long,void({block_pointer})(unsigned long))::{lambda(unsigned long)#1},std::allocator<geo::TaskQueue::apply_b(unsigned long,void({block_pointer})(unsigned long))::{lambda(unsigned long)#1}>,void ()(unsigned long)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = MEMORY[0x1B8C62DA0](*(a1 + 16));
  v3[2](v3, v2);
}

void std::__function::__func<geo::TaskQueue::apply_b(unsigned long,void({block_pointer})(unsigned long))::{lambda(unsigned long)#1},std::allocator<geo::TaskQueue::apply_b(unsigned long,void({block_pointer})(unsigned long))::{lambda(unsigned long)#1}>,void ()(unsigned long)>::destroy_deallocate(uint64_t a1)
{
  *(a1 + 8) = &unk_1F2A1E070;

  operator delete(a1);
}

void std::__function::__func<geo::TaskQueue::apply_b(unsigned long,void({block_pointer})(unsigned long))::{lambda(unsigned long)#1},std::allocator<geo::TaskQueue::apply_b(unsigned long,void({block_pointer})(unsigned long))::{lambda(unsigned long)#1}>,void ()(unsigned long)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A1E0C8;
  *(a1 + 8) = &unk_1F2A1E070;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<geo::TaskQueue::apply_b(unsigned long,void({block_pointer})(unsigned long))::{lambda(unsigned long)#1},std::allocator<geo::TaskQueue::apply_b(unsigned long,void({block_pointer})(unsigned long))::{lambda(unsigned long)#1}>,void ()(unsigned long)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A1E0C8;
  *(a1 + 8) = &unk_1F2A1E070;

  return a1;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelStyle>>(uint64_t a1, uint64_t a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeatureStylerItem>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 24 * a2, 0x102004024DAA5DEuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelFeatureStylerItem>(uint64_t a1, void *a2)
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

void md::LabelFeatureStyler::updateTextAndStyleForExternalFeatures(unsigned int *a1, uint64_t **a2)
{
  if (*a2 != a2[1])
  {
    v5 = atomic_load((*a1 + 3426));
    v6 = *a2;
    v7 = a2[1];
    while (v6 != v7)
    {
      v8 = *v6;
      v6 += 2;
      (*(*v8 + 32))(v8, 0, v5 & 1);
    }

    md::LabelFeatureStyler::styleExternalFeatures(a1, a2);
  }
}

void sub_1B2FAB36C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::vector<md::PolygonOverlayMeshBuilder::MeshInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 88;
        std::__destroy_at[abi:nn200100]<md::MuninRoadEdgePolyline,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::unique_ptr<md::Mesh>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 72);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void sub_1B2FAB630(_Unwind_Exception *a1)
{
  v3 = v1[8].__vftable;
  if (v3)
  {
    v1[8].__shared_owners_ = v3;
    operator delete(v3);
  }

  shared_weak_owners = v1[5].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](shared_weak_owners);
  }

  v5 = v1[5].__vftable;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  shared_owners = v1[4].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](shared_owners);
  }

  v7 = v1[3].__shared_weak_owners_;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = v1[3].__vftable;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = v1[2].__shared_owners_;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = v1[1].__shared_weak_owners_;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::PolylineOverlayStyle>::__on_zero_shared(void *a1)
{
  v2 = a1[24];
  if (v2)
  {
    a1[25] = v2;
    operator delete(v2);
  }

  v3 = a1[17];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[15];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = a1[13];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = a1[11];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = a1[9];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = a1[7];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = a1[5];
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }
}

void std::__shared_ptr_emplace<md::PolylineOverlayStyle>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3EBF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::PolygonOverlayRenderable::Style>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void std::__shared_ptr_emplace<md::PolygonOverlayRenderable::Style>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3EBC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2FAB950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v9 + 120);
  v12 = *(v9 + 14);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  v13 = *(v9 + 12);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  std::vector<md::PolygonOverlayMeshBuilder::MeshInfo>::__destroy_vector::operator()[abi:nn200100](&a9);
  v14 = *(v9 + 7);
  *(v9 + 7) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  std::unique_ptr<md::Mesh>::reset[abi:nn200100](v10, 0);
  v15 = *(v9 + 5);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<md::PolygonOverlayMeshBuilder::MeshInfo>::__emplace_back_slow_path<md::PolygonOverlayMeshBuilder::MeshInfo>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v5 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v5 = v3;
  }

  v17 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<md::PolygonOverlayMeshBuilder::MeshInfo>>(v5);
  }

  v6 = 88 * v2;
  *(&v16 + 1) = 0;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  *(v6 + 80) = *(a2 + 80);
  *(v6 + 48) = v7;
  *(v6 + 64) = v8;
  *&v16 = 88 * v2 + 88;
  v9 = a1[1];
  v10 = 88 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::PolygonOverlayMeshBuilder::MeshInfo>,md::PolygonOverlayMeshBuilder::MeshInfo*>(*a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v16;
  *(a1 + 1) = v16;
  *&v16 = v11;
  *(&v16 + 1) = v12;
  v15[0] = v11;
  v15[1] = v11;
  std::__split_buffer<md::PolygonOverlayMeshBuilder::MeshInfo>::~__split_buffer(v15);
  return v14;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::PolygonOverlayMeshBuilder::MeshInfo>>(unint64_t a1)
{
  if (a1 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::PolygonOverlayMeshBuilder::MeshInfo>,md::PolygonOverlayMeshBuilder::MeshInfo*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = *v5;
      *(a3 + 16) = *(v5 + 16);
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 24) = *(v5 + 24);
      *(a3 + 40) = *(v5 + 40);
      *(v5 + 24) = 0;
      *(v5 + 32) = 0;
      *(v5 + 40) = 0;
      v6 = *(v5 + 48);
      v7 = *(v5 + 64);
      *(a3 + 80) = *(v5 + 80);
      *(a3 + 48) = v6;
      *(a3 + 64) = v7;
      v5 += 88;
      a3 += 88;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:nn200100]<md::MuninRoadEdgePolyline,0>(v4);
      v4 += 88;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<md::PolygonOverlayMeshBuilder::MeshInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    std::__destroy_at[abi:nn200100]<md::MuninRoadEdgePolyline,0>(i - 88);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void md::ElevatedStrokeGroup::buildMeshesForFeatureId(md::ElevatedStrokeGroup *this, ggl::Loader *a2, unint64_t a3, unint64_t a4)
{
  v4 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a2 + 15, a4);
  if (v4)
  {
    v5 = *(v4 + 6);
    v6 = *(v4 + 7);
    if (v6 != v5)
    {
      v7 = 0x2E8BA2E8BA2E8BA3 * ((88 * v6 - 88 * v5) >> 3);
      if (v7 < 0x2E8BA2E8BA2E8BBLL)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::PolygonOverlayMeshBuilder::MeshInfo>>(v7);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }
  }

  _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_4Tile4ViewEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B2FABE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void **a12, std::__shared_weak_count *a13, char a14)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  a12 = &a14;
  std::vector<md::PolygonOverlayMeshBuilder::MeshInfo>::__destroy_vector::operator()[abi:nn200100](&a12);
  _Unwind_Resume(a1);
}

void md::ElevatedStrokeGroup::selectedStyleQuery(md::ElevatedStrokeGroup *this, uint64_t a2)
{
  gss::QueryOverrides::QueryOverrides(v4, 1);
  gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(this, *(a2 + 88), a2, v4);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v4);
}

void sub_1B2FABF10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(va);
  _Unwind_Resume(a1);
}

uint64_t md::TransitNodeExternalIcon::updateLayoutState(uint64_t this)
{
  v1 = (this + 69);
  if ((*(this + 69) & 1) == 0)
  {
    v2 = this;
    this = *(this + 88);
    v3 = *(v2 + 72);
    v5 = *(v3 + 32);
    v4 = *(v3 + 40);
    if (!this)
    {
      if (v5 == v4)
      {
        return this;
      }

      goto LABEL_9;
    }

    if (v5 != v4 && this != *(v4 - 16))
    {
      v1 = (v2 + 263);
LABEL_9:
      *v1 = 1;
      return this;
    }

    this = (*(*this + 40))(this);
    if (this)
    {
      goto LABEL_9;
    }
  }

  return this;
}

uint64_t md::TransitNodeExternalIcon::debugString@<X0>(md::TransitNodeExternalIcon *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v21);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "\nTransitNodeExternalIcon", 24);
  v4 = *(this + 11);
  if (v4)
  {
    (*(*v4 + 16))(&__p);
    if (SHIBYTE(v32[0].__locale_) >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (SHIBYTE(v32[0].__locale_) >= 0)
    {
      locale_high = HIBYTE(v32[0].__locale_);
    }

    else
    {
      locale_high = v31;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, p_p, locale_high);
    if (SHIBYTE(v32[0].__locale_) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "\n <node> Missing-Feature Node", 29);
  }

  v7 = *(this + 9);
  std::ostringstream::basic_ostringstream[abi:nn200100](&__p);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__p, "\n <nodeFeature>", 15);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__p, " countNodes:", 12);
  MEMORY[0x1B8C61C80](&__p, (*(v7 + 40) - *(v7 + 32)) >> 4);
  if ((v37 & 0x10) != 0)
  {
    v9 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v9 = v33;
    }

    locale = v32[4].__locale_;
  }

  else
  {
    if ((v37 & 8) == 0)
    {
      v8 = 0;
      v20 = 0;
      goto LABEL_24;
    }

    locale = v32[1].__locale_;
    v9 = v32[3].__locale_;
  }

  v8 = v9 - locale;
  if ((v9 - locale) > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_50;
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  v20 = v9 - locale;
  if (v8)
  {
    memmove(__dst, locale, v8);
  }

LABEL_24:
  *(__dst + v8) = 0;
  __p = *MEMORY[0x1E69E54E8];
  v11 = __p;
  v12 = *(MEMORY[0x1E69E54E8] + 24);
  *(&__p + *(__p - 3)) = v12;
  v31 = MEMORY[0x1E69E5548] + 16;
  if (v35 < 0)
  {
    operator delete(v34);
  }

  v31 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v32);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&v38);
  if ((v20 & 0x80u) == 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v14 = v20;
  }

  else
  {
    v14 = __dst[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, v13, v14);
  if (v20 < 0)
  {
    operator delete(__dst[0]);
  }

  if ((v28 & 0x10) != 0)
  {
    v16 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v16 = v24;
    }

    v17 = v23[4].__locale_;
  }

  else
  {
    if ((v28 & 8) == 0)
    {
      v15 = 0;
      a2[23] = 0;
      goto LABEL_47;
    }

    v17 = v23[1].__locale_;
    v16 = v23[3].__locale_;
  }

  v15 = v16 - v17;
  if ((v16 - v17) > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_50:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a2[23] = v15;
  if (v15)
  {
    memmove(a2, v17, v15);
  }

LABEL_47:
  a2[v15] = 0;
  v21 = v11;
  *(&v21 + *(v11 - 3)) = v12;
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

void sub_1B2FAC444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::locale a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  a13 = *MEMORY[0x1E69E54E8];
  *(&a13 + *(a13 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a14 = MEMORY[0x1E69E5548] + 16;
  if (a27 < 0)
  {
    operator delete(a22);
  }

  a14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a15);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a30);
  _Unwind_Resume(a1);
}

void md::TransitNodeExternalIcon::~TransitNodeExternalIcon(md::TransitNodeExternalIcon *this)
{
  md::TransitNodeExternalIcon::~TransitNodeExternalIcon(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A1E110;
  if (!*(this + 11))
  {
    (*(**(this + 9) + 32))(*(this + 9));
  }

  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void sub_1B2FAC74C(_Unwind_Exception *exception_object)
{
  v3 = v1[13];
  if (v3)
  {
    v1[14] = v3;
    operator delete(v3);
  }

  v4 = v1[12];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = v1[10];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::TransitNodeExternalIcon::TransitNodeExternalIcon(uint64_t a1, void *a2, uint64_t *a3)
{
  *(a1 + 8) = xmmword_1B33B06F0;
  *(a1 + 24) = 1065353216;
  *(a1 + 48) = 0;
  *(a1 + 44) = 0;
  *(a1 + 64) = 1;
  *(a1 + 65) = 0;
  *(a1 + 69) = 256;
  *a1 = &unk_1F2A1E110;
  v4 = a2[1];
  *(a1 + 72) = *a2;
  *(a1 + 80) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *a3;
  v6 = a3[1];
  *(a1 + 88) = *a3;
  *(a1 + 96) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = *(a1 + 88);
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 212) = 1065353216;
  *(a1 + 220) = 1065353216;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0x3F80000000000000;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 260) = 255;
  atomic_store(1u, (a1 + 65));
  if (!v5)
  {
    (*(**(a1 + 72) + 24))(*(a1 + 72));
  }

  return a1;
}

void sub_1B2FAC898(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    v1[14] = v5;
    operator delete(v5);
  }

  v6 = v1[12];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = v1[10];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::TransitNodeExternalIcon::DotInfo>>(unint64_t a1)
{
  if (a1 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

float32x2_t md::TransitNodeExternalIcon::setDotTextureRect(float32x2_t *a1, __int8 *a2, int32x2_t *a3, float32x2_t *a4)
{
  v4 = a3->i32[0];
  a1[32].i32[0] = a3->i32[0];
  v5 = *a2;
  v6 = a2[4];
  a1[24].i8[0] = *a2;
  a1[24].i8[1] = v6;
  a1[24].i8[2] = v5 + a3->i8[0];
  a1[24].i8[3] = v6;
  v7 = v6 + a3->i8[4];
  a1[24].i8[4] = v5 + a3->i8[0];
  a1[24].i8[5] = v7;
  v8 = v6 + a3->i8[4];
  a1[24].i8[6] = v5;
  a1[24].i8[7] = v8;
  v9 = vneg_f32(*a4);
  result = vsub_f32(vcvt_f32_s32(*a3), *a4);
  a1[16] = v9;
  a1[17] = __PAIR64__(v9.u32[1], result.u32[0]);
  v9.i32[1] = result.i32[1];
  a1[18] = result;
  a1[19] = v9;
  result.i32[0] = a1[30].i32[1];
  if (result.f32[0] != 1.0)
  {
    v11 = 0;
    a1[32].i32[0] = (result.f32[0] * v4);
    v12 = a1 + 16;
    do
    {
      result = vmul_n_f32(v12[v11], a1[30].f32[1]);
      v12[v11++] = result;
    }

    while (v11 != 8);
  }

  return result;
}

uint64_t md::TransitNodeExternalIcon::updateRadius(uint64_t this)
{
  if (*(this + 260) == 2)
  {
    v1 = (*(this + 248) + *(this + 252) / 2);
  }

  else
  {
    v2 = *(this + 112);
    v3 = *(this + 104);
    if (v3 == v2)
    {
      v1 = (*(this + 256) / 2);
      v7 = 0.0;
    }

    else
    {
      v4 = -3.4028e38;
      v5 = 3.4028e38;
      do
      {
        v6 = *(v3 + 12);
        v4 = fmaxf(v4, v6);
        v5 = fminf(v6, v5);
        v3 += 20;
      }

      while (v3 != v2);
      v7 = (v5 + v4) * 0.5;
      v1 = (v4 - v7) + (*(this + 256) / 2);
    }

    *(this + 48) = vmul_n_f32(*(this + 220), v7);
  }

  *(this + 64) = 1;
  *(this + 44) = v1;
  return this;
}

void md::VenueTileData::~VenueTileData(md::VenueTileData *this)
{
  md::VenueTileData::~VenueTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A1E140;
  *(this + 80) = &unk_1F2A1E188;
  v2 = (this + 808);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = (this + 784);
  std::vector<md::VenueFloorGroup>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = (this + 760);
  std::vector<geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v2);
  *this = &unk_1F2A45C20;
  *(this + 80) = &unk_1F2A45C68;
  v2 = (this + 728);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v2);

  md::MapTileData::~MapTileData(this);
}

void std::vector<md::VenueFloorGroup>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v7 = *(v4 - 5);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        }

        v4 -= 9;
        v8 = v4;
        std::vector<ggl::PolygonBase::CompressedMeshMesh>::__destroy_vector::operator()[abi:nn200100](&v8);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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

void std::vector<geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__init_with_size[abi:nn200100]<geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*,geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>(a4);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

void non-virtual thunk toggl::PolygonBase::CompressedMeshMesh::~CompressedMeshMesh(ggl::PolygonBase::CompressedMeshMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::PolygonBase::CompressedMeshMesh::~CompressedMeshMesh(ggl::PolygonBase::CompressedMeshMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<ggl::PolygonBase::CompressedMeshMesh>>(unint64_t a1)
{
  if (a1 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::VenueFloorGroup>>(unint64_t a1)
{
  if (a1 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2A4D548;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

void geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4D548;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4D548;

  return a1;
}

void processMaterialEmissiveParameters(uint64_t a1, uint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v7 = *(a1 + 14324);
  md::MaterialResourceStore::getMaterial(&v134, a2, *a3);
  v8 = v134;
  (*(*v134 + 1008))(&v131, v134, v7);
  if (v133)
  {
    LOBYTE(v128) = 0;
    v130 = 0;
LABEL_4:
    v124 = v131;
    _S8 = v132;
    goto LABEL_5;
  }

  (*(*v8 + 200))(&v128, v8, v7);
  if (v133)
  {
    goto LABEL_4;
  }

  if (v130 == 1)
  {
    v124 = v128;
    _S8 = v129;
  }

  else
  {
    v124 = 0;
    _S8 = 0;
  }

LABEL_5:
  v10 = md::getStorage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>((a1 + 4008), *a4);
  if (!v10)
  {
    *&v125 = a3[1];
    v137[0] = v125;
    v11 = md::VKMRenderResourcesStore::addKey<md::StyleEmissiveColorCacheKey>(a1, &v125, v137);
    *a4 = v11;
    v10 = md::getStorage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>((a1 + 4008), v11);
  }

  *(v10 + 8) = v124;
  v12 = (v10 + 8);
  *(v10 + 16) = _S8;
  *v10 = a3[1];
  v13 = std::__hash_table<std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,std::__unordered_map_hasher<md::StyleEmissiveColorCacheKey,std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,md::StyleEmissiveColorCacheKeyHasher,std::equal_to<md::StyleEmissiveColorCacheKey>,true>,std::__unordered_map_equal<md::StyleEmissiveColorCacheKey,std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,std::equal_to<md::StyleEmissiveColorCacheKey>,md::StyleEmissiveColorCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>>>::find<md::StyleEmissiveColorCacheKey>((a1 + 3928), v10);
  if (v13)
  {
    v14 = v13[5];
    if (v14)
    {
      if (a4[1] != v14)
      {
        v15 = *(*(*(a1 + 3584) + 8 * (v13[5] >> 6)) + 16 * (v13[5] & 0x3F) + 8);
        v16 = *(*(a1 + 3632) + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v15 & 0x3F);
        ++*(v16 + 8);
        md::updateRetainedCounter((a1 + 3576), a4[1]);
      }

      goto LABEL_160;
    }
  }

  v125 = 0uLL;
  v126 = 0;
  v136 = 0;
  v17 = *(a1 + 3792);
  v18 = *(a1 + 3808);
  if (*(a1 + 3784) == v17)
  {
    v14 = ((*(a1 + 3816) - v18) >> 3) | 0x100000000;
    v137[0] = v14;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 3808, v137);
  }

  else
  {
    v14 = *(v18 + 8 * *(v17 - 8));
    *(a1 + 3792) = v17 - 8;
  }

  v137[0] = v14;
  v19 = v14 >> 6;
  v20 = *(a1 + 3592);
  v21 = *(a1 + 3584);
  if (v19 >= (v20 - v21) >> 3)
  {
    v22 = v19 + 1;
    v23 = v19 + 1 - ((v20 - v21) >> 3);
    v24 = *(a1 + 3600);
    if (v23 > (v24 - v20) >> 3)
    {
      v25 = v24 - v21;
      if (v25 >> 2 > v22)
      {
        v22 = v25 >> 2;
      }

      if (v25 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v22;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v26);
    }

    bzero(*(a1 + 3592), 8 * v23);
    *(a1 + 3592) = v20 + 8 * v23;
    v21 = *(a1 + 3584);
  }

  v27 = *(v21 + 8 * v19);
  if (!v27)
  {
    operator new();
  }

  v28 = (v27 + 16 * (v14 & 0x3F));
  if (*v28 == -1 && v28[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 3608, v137);
    v30 = ((*(a1 + 3616) - *(a1 + 3608)) >> 3) - 1;
    *v28 = HIDWORD(v14);
    v28[1] = v30;
    v31 = v30 & 0x3F;
    v32 = (*(*(a1 + 3632) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((a1 + 3632), v30)) + 24 * v31);
    *v32 = vdupq_n_s64(1uLL);
    v32[1].i16[0] = 1;
    v33 = v30 >> 6;
    v34 = *(a1 + 3688);
    v35 = *(a1 + 3680);
    v123 = v30 >> 6;
    v122 = v31;
    if (v30 >> 6 >= (v34 - v35) >> 3)
    {
      v36 = v33 + 1;
      v37 = v33 + 1 - ((v34 - v35) >> 3);
      v38 = *(a1 + 3696);
      v120 = v34 - v35;
      if (v37 > (v38 - v34) >> 3)
      {
        v39 = v38 - v35;
        v40 = (v38 - v35) >> 2;
        if (v40 <= v36)
        {
          v40 = v33 + 1;
        }

        if (v39 >= 0x7FFFFFFFFFFFFFF8)
        {
          v41 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v41 = v40;
        }

        if (!(v41 >> 61))
        {
          operator new();
        }

        goto LABEL_163;
      }

      v42 = 0;
      v43 = (v37 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v44 = vdupq_n_s64(v43);
      do
      {
        v45 = vmovn_s64(vcgeq_u64(v44, vorrq_s8(vdupq_n_s64(v42), xmmword_1B33B0560)));
        if (v45.i8[0])
        {
          *(v34 + 8 * v42) = 0;
        }

        if (v45.i8[4])
        {
          *(v34 + 8 * v42 + 8) = 0;
        }

        v42 += 2;
      }

      while (v43 - ((v37 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v42);
      *(a1 + 3688) = v34 + 8 * v37;
      v46 = *(a1 + 3712);
      v47 = *(a1 + 3704);
      v48 = (v46 - v47) >> 4;
      if (v48 <= v33)
      {
        v49 = v36 - v48;
        v50 = *(a1 + 3720);
        if (v49 > (v50 - v46) >> 4)
        {
          v51 = v50 - v47;
          v52 = v51 >> 3;
          if (v51 >> 3 <= v36)
          {
            v52 = v36;
          }

          if (v51 >= 0x7FFFFFFFFFFFFFF0)
          {
            v53 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v53 = v52;
          }

          if (!(v53 >> 60))
          {
            operator new();
          }

          goto LABEL_163;
        }

        bzero(*(a1 + 3712), 16 * v49);
        *(a1 + 3712) = v46 + 16 * v49;
        v33 = v123;
      }

      else if (v36 < v48)
      {
        *(a1 + 3712) = v47 + 16 * v36;
      }

      v35 = *(a1 + 3680);
      v31 = v122;
      if (v120 < *(a1 + 3688) - v35)
      {
        operator new();
      }
    }

    v54 = *(v35 + 8 * v33) + 24 * v31;
    *v54 = v125;
    *(v54 + 16) = v126;
    *(&v125 + 1) = 0;
    v126 = 0;
    v55 = *(a1 + 3736);
    v56 = *(a1 + 3728);
    if (v33 < (v55 - v56) >> 3)
    {
LABEL_91:
      *(*(v56 + 8 * v33) + 8 * v31) = v136;
      goto LABEL_92;
    }

    v57 = v33 + 1;
    v58 = v33 + 1 - ((v55 - v56) >> 3);
    v59 = *(a1 + 3744);
    v121 = v55 - v56;
    if (v58 > (v59 - v55) >> 3)
    {
      v60 = v59 - v56;
      v61 = (v59 - v56) >> 2;
      if (v61 <= v57)
      {
        v61 = v33 + 1;
      }

      if (v60 >= 0x7FFFFFFFFFFFFFF8)
      {
        v62 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v62 = v61;
      }

      if (!(v62 >> 61))
      {
        operator new();
      }

      goto LABEL_163;
    }

    v63 = 0;
    v64 = (v58 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v65 = vdupq_n_s64(v64);
    do
    {
      v66 = vmovn_s64(vcgeq_u64(v65, vorrq_s8(vdupq_n_s64(v63), xmmword_1B33B0560)));
      if (v66.i8[0])
      {
        *(v55 + 8 * v63) = 0;
      }

      if (v66.i8[4])
      {
        *(v55 + 8 * v63 + 8) = 0;
      }

      v63 += 2;
    }

    while (v64 - ((v58 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v63);
    *(a1 + 3736) = v55 + 8 * v58;
    v67 = *(a1 + 3760);
    v68 = *(a1 + 3752);
    v69 = (v67 - v68) >> 4;
    if (v69 > v33)
    {
      if (v57 < v69)
      {
        *(a1 + 3760) = v68 + 16 * v57;
      }

      goto LABEL_89;
    }

    v70 = v57 - v69;
    v71 = *(a1 + 3768);
    if (v70 <= (v71 - v67) >> 4)
    {
      bzero(*(a1 + 3760), 16 * v70);
      *(a1 + 3760) = v67 + 16 * v70;
      v33 = v123;
LABEL_89:
      v56 = *(a1 + 3728);
      v31 = v122;
      if (v121 < *(a1 + 3736) - v56)
      {
        operator new();
      }

      goto LABEL_91;
    }

    v72 = v71 - v68;
    v73 = v72 >> 3;
    if (v72 >> 3 <= v57)
    {
      v73 = v57;
    }

    if (v72 >= 0x7FFFFFFFFFFFFFF0)
    {
      v74 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v74 = v73;
    }

    if (!(v74 >> 60))
    {
      operator new();
    }

LABEL_163:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_92:
  v75 = geo::Color<float,3,(geo::ColorSpace)0>::hash(v12);
  v76 = v75 - 0x61C8864680B583EBLL;
  v77 = *(a1 + 3936);
  if (!*&v77)
  {
    goto LABEL_113;
  }

  v78 = vcnt_s8(v77);
  v78.i16[0] = vaddlv_u8(v78);
  if (v78.u32[0] > 1uLL)
  {
    v79 = v75 - 0x61C8864680B583EBLL;
    if (v76 >= *&v77)
    {
      v79 = v76 % *&v77;
    }
  }

  else
  {
    v79 = (*&v77 - 1) & v76;
  }

  v80 = *(*(a1 + 3928) + 8 * v79);
  if (!v80 || (v81 = *v80) == 0)
  {
LABEL_113:
    operator new();
  }

  while (1)
  {
    v82 = v81[1];
    if (v82 == v76)
    {
      break;
    }

    if (v78.u32[0] > 1uLL)
    {
      if (v82 >= *&v77)
      {
        v82 %= *&v77;
      }
    }

    else
    {
      v82 &= *&v77 - 1;
    }

    if (v82 != v79)
    {
      goto LABEL_113;
    }

LABEL_112:
    v81 = *v81;
    if (!v81)
    {
      goto LABEL_113;
    }
  }

  if (v81[3] != *v12 || *(v81 + 8) != *(v10 + 16))
  {
    goto LABEL_112;
  }

  v81[5] = v14;
  v84 = *(a1 + 3976);
  if (!*&v84)
  {
    goto LABEL_131;
  }

  v85 = vcnt_s8(v84);
  v85.i16[0] = vaddlv_u8(v85);
  if (v85.u32[0] > 1uLL)
  {
    v86 = v14;
    if (v14 >= *&v84)
    {
      v86 = v14 % *&v84;
    }
  }

  else
  {
    v86 = (*&v84 - 1) & v14;
  }

  v87 = *(*(a1 + 3968) + 8 * v86);
  if (!v87 || (v88 = *v87) == 0)
  {
LABEL_131:
    operator new();
  }

  while (2)
  {
    v89 = v88[1];
    if (v89 != v14)
    {
      if (v85.u32[0] > 1uLL)
      {
        if (v89 >= *&v84)
        {
          v89 %= *&v84;
        }
      }

      else
      {
        v89 &= *&v84 - 1;
      }

      if (v89 != v86)
      {
        goto LABEL_131;
      }

      goto LABEL_130;
    }

    if (v88[2] != v14)
    {
LABEL_130:
      v88 = *v88;
      if (!v88)
      {
        goto LABEL_131;
      }

      continue;
    }

    break;
  }

  v90 = 0;
  v88[3] = *v10;
  do
  {
    *(v88 + v90 + 32) = *(v12 + v90);
    v90 += 4;
  }

  while (v90 != 12);
  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v126);
  }

  v91 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find((a1 + 3576), v14);
  if (v91 == *(a1 + 3616))
  {
    v92 = 0;
    goto LABEL_159;
  }

  v93 = v91;
  v94 = *(a1 + 3608);
  v95 = *(a1 + 3880);
  if (*(a1 + 3872) == v95)
  {
    v96 = *(a1 + 3920);
    if (!v96)
    {
      v119 = std::__throw_bad_function_call[abi:nn200100]();
      operator delete(v88);
      if (v135)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v135);
      }

      _Unwind_Resume(v119);
    }

    v92 = (*(*v96 + 48))(v96);
  }

  else
  {
    v92 = *(v95 - 8);
    *(a1 + 3880) = v95 - 8;
  }

  v97 = 0x9DDFEA08EB382D69 * ((8 * (v92 & 0x1FFFFFFF) + 8) ^ HIDWORD(v92));
  v98 = 0x9DDFEA08EB382D69 * (HIDWORD(v92) ^ (v97 >> 47) ^ v97);
  v99 = 0x9DDFEA08EB382D69 * (v98 ^ (v98 >> 47));
  v100 = *(a1 + 3840);
  if (!*&v100)
  {
    goto LABEL_158;
  }

  v101 = vcnt_s8(v100);
  v101.i16[0] = vaddlv_u8(v101);
  if (v101.u32[0] > 1uLL)
  {
    v102 = 0x9DDFEA08EB382D69 * (v98 ^ (v98 >> 47));
    if (v99 >= *&v100)
    {
      v102 = v99 % *&v100;
    }
  }

  else
  {
    v102 = v99 & (*&v100 - 1);
  }

  v103 = *(*(a1 + 3832) + 8 * v102);
  if (!v103 || (v104 = *v103) == 0)
  {
LABEL_158:
    operator new();
  }

  while (2)
  {
    v105 = v104[1];
    if (v105 != v99)
    {
      if (v101.u32[0] > 1uLL)
      {
        if (v105 >= *&v100)
        {
          v105 %= *&v100;
        }
      }

      else
      {
        v105 &= *&v100 - 1;
      }

      if (v105 != v102)
      {
        goto LABEL_158;
      }

      goto LABEL_157;
    }

    if (v104[2] != v92)
    {
LABEL_157:
      v104 = *v104;
      if (!v104)
      {
        goto LABEL_158;
      }

      continue;
    }

    break;
  }

  v106 = (((v93 - v94) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
  v107 = *(*(a1 + 3632) + v106);
  v108 = ((v93 - v94) >> 3) & 0x3F;
  v109 = *(*(a1 + 3680) + v106);
  v110 = *(*(a1 + 3728) + v106);
  *(v109 + 24 * v108) = v92;
  ++*(v107 + 24 * v108);
  *(v110 + 8 * v108) = v92;
LABEL_159:
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v125, v92);
  _S1 = v124;
  __asm { FCVT            H0, S1 }

  _S1 = HIDWORD(v124);
  __asm
  {
    FCVT            H1, S1
    FCVT            H2, S8
  }

  v118 = v127;
  *v127 = _H0;
  v118[1] = _S1;
  v118[2] = _H2;
  md::updateRetainedCounter((a1 + 3576), a4[1]);
  ggl::BufferMemory::~BufferMemory(&v125);
LABEL_160:
  a4[1] = v14;
  if (v135)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v135);
  }
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UniqueStyleEmissiveDataKeyHandle>(ecs2::Entity,md::ls::UniqueStyleEmissiveDataKeyHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueStyleEmissiveDataKeyHandle>(a2);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UniqueStyleEmissiveDataKeyHandle>(ecs2::Entity,md::ls::UniqueStyleEmissiveDataKeyHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1E300;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<ecs2::RemoveComponent::RemoveComponent<md::ls::UniqueStyleEmissiveDataKeyHandle>(ecs2::Entity,std::type_identity<md::ls::UniqueStyleEmissiveDataKeyHandle>)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::RemoveComponent::RemoveComponent<md::ls::UniqueStyleEmissiveDataKeyHandle>(ecs2::Entity,std::type_identity<md::ls::UniqueStyleEmissiveDataKeyHandle>)::{lambda(ecs2::BasicRegistry<void> &)#1}>,void ()(ecs2::BasicRegistry<void> &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A1E208;
  *(a2 + 8) = *(result + 8);
  return result;
}

void ggl::PolylineOverlayRibbon::FillPipelineState::~FillPipelineState(ggl::PolylineOverlayRibbon::FillPipelineState *this)
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

void ggl::PolylineOverlayRibbon::FillPipelineSetup::typedReflection(ggl::PolylineOverlayRibbon::FillPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::PolylineOverlayRibbon::DefaultVbo>::typedReflection();
    ggl::PolylineOverlayRibbon::FillPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::PolylineOverlayRibbon::DefaultVbo>::typedReflection(void)::r;
    *algn_1EB841FA8 = &ggl::PolylineOverlayRibbon::pipelineDataFillPipelineDeviceStructs(void)::ref;
    qword_1EB841FB0 = 0;
    {
      ggl::PolylineOverlayRibbon::pipelineDataFillPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      unk_1EB841F30 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1EB841F38 = ggl::PolylineOverlayRibbon::Style::reflection(void)::reflection;
    }

    qword_1EB841FB8 = &ggl::PolylineOverlayRibbon::pipelineDataFillPipelineConstantStructs(void)::ref;
    unk_1EB841FC0 = xmmword_1B33B07A0;
  }
}

void ggl::PolylineOverlayRibbon::FillPipelineSetup::~FillPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::PolylineOverlayRibbon::AlphaPipelineState::~AlphaPipelineState(ggl::PolylineOverlayRibbon::AlphaPipelineState *this)
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

void ggl::PolylineOverlayRibbon::AlphaPipelineSetup::typedReflection(ggl::PolylineOverlayRibbon::AlphaPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::PolylineOverlayRibbon::DefaultVbo>::typedReflection();
    ggl::PolylineOverlayRibbon::AlphaPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::PolylineOverlayRibbon::DefaultVbo>::typedReflection(void)::r;
    *algn_1EB841F78 = &ggl::PolylineOverlayRibbon::pipelineDataAlphaPipelineDeviceStructs(void)::ref;
    qword_1EB841F80 = 0;
    {
      ggl::PolylineOverlayRibbon::pipelineDataAlphaPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      unk_1EB841F10 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1EB841F18 = ggl::PolylineOverlayRibbon::Style::reflection(void)::reflection;
    }

    qword_1EB841F88 = &ggl::PolylineOverlayRibbon::pipelineDataAlphaPipelineConstantStructs(void)::ref;
    *algn_1EB841F90 = xmmword_1B33B07A0;
  }
}

void ggl::PolylineOverlayRibbon::AlphaPipelineSetup::~AlphaPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::PolylineOverlayRibbon::AlphaFillPipelineState::~AlphaFillPipelineState(ggl::PolylineOverlayRibbon::AlphaFillPipelineState *this)
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

void ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup::typedReflection(ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::PolylineOverlayRibbon::DefaultVbo>::typedReflection();
    ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::PolylineOverlayRibbon::DefaultVbo>::typedReflection(void)::r;
    *algn_1EB841F48 = &ggl::PolylineOverlayRibbon::pipelineDataAlphaFillPipelineDeviceStructs(void)::ref;
    qword_1EB841F50 = 0;
    {
      ggl::PolylineOverlayRibbon::pipelineDataAlphaFillPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      unk_1EB841EF0 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1EB841EF8 = ggl::PolylineOverlayRibbon::Style::reflection(void)::reflection;
    }

    qword_1EB841F58 = &ggl::PolylineOverlayRibbon::pipelineDataAlphaFillPipelineConstantStructs(void)::ref;
    unk_1EB841F60 = xmmword_1B33B07A0;
  }
}

void ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup::~AlphaFillPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::TransitJunction::tangentsForLinks(uint64_t a1, void *a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5, _BYTE *a6)
{
  *a6 = 0;
  if (*(*a2 + 40) == a1)
  {
    v10 = a2[7];
    if (*(v10 + 93) == 1)
    {
      v11 = *(a3 + 56);
      if (v11[11].i8[5] == 1 && *(v10 + 16) == *&v11[2])
      {
        *a4 = vneg_f32(*v11);
        a5->i32[0] = *v10;
        a5->i32[1] = *(v10 + 4);
        goto LABEL_16;
      }

      v12 = *(a3 + 64);
      if (*(v12 - 3) == 1 && *(v10 + 16) == *(v12 - 40))
      {
        a4->i32[0] = *(v12 - 56);
        a4->i32[1] = *(v12 - 52);
        a5->i32[0] = *v10;
        v9 = *(v10 + 4);
        goto LABEL_18;
      }
    }

    return 0;
  }

  v6 = a2[8];
  if (*(v6 - 3) != 1)
  {
    return 0;
  }

  v7 = *(a3 + 64);
  if (*(v7 - 3) == 1 && *(v6 - 40) == *(v7 - 40))
  {
    a4->i32[0] = *(v6 - 56);
    a4->i32[1] = *(v6 - 52);
    *a5 = vneg_f32(*(v7 - 56));
LABEL_16:
    result = 1;
    *a6 = 1;
    return result;
  }

  v8 = *(a3 + 56);
  if (*(v8 + 93) != 1 || *(v6 - 40) != *(v8 + 16))
  {
    return 0;
  }

  a4->i32[0] = *(v6 - 56);
  a4->i32[1] = *(v6 - 52);
  a5->i32[0] = *v8;
  v9 = *(v8 + 4);
LABEL_18:
  a5->i32[1] = v9;
  return 1;
}

uint64_t md::TransitJunction::TransitJunction(uint64_t a1, void *a2, _DWORD *a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a1 + 32;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a1 + 56;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 79) = 0;
  *(a1 + 120) = 1065353216;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 1065353216;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 1065353216;
  *(a1 + 208) = 0;
  if (*a3)
  {
    v4 = a3[1];
    if (a2[191] > v4)
    {
      v5 = (a2[190] + 16 * v4);
      v6 = v5[1];
      v7 = a2[169];
      if (geo::codec::VectorTile::transitLinkCount(v7, a2[170]) > v6)
      {
        v12 = 0;
        v8 = geo::codec::transitLinkPoints(v7 + 184 * v6, v5[2], &v12);
        v9 = v5[3];
        if (v12 > v9)
        {
          v10 = &v8->__vftable + v9;
          *(a1 + 16) = *v10;
          *(a1 + 20) = *(v10 + 1);
          *(a1 + 82) = 1;
        }
      }
    }
  }

  return a1;
}

uint64_t md::TransitJunction::addLink(uint64_t this, md::TransitLink *a2)
{
  v2 = *(this + 8);
  v3 = *(*a2 + 48);
  if ((v3 == v2) != (*(*a2 + 40) == v2))
  {
    v4 = v3 == v2;
    v5 = 56;
    if (v4)
    {
      v5 = 64;
    }

    v6 = 24;
    v7 = -32;
    if (!v4)
    {
      v7 = 24;
      v6 = 48;
    }

    *(*(a2 + v5) + v7) = this;
    v8 = *(this + v6 + 8);
    if (!v8)
    {
LABEL_12:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v9 = v8;
        v10 = v8[4];
        if (v10 <= a2)
        {
          break;
        }

        v8 = *v9;
        if (!*v9)
        {
          goto LABEL_12;
        }
      }

      if (v10 >= a2)
      {
        break;
      }

      v8 = v9[1];
      if (!v8)
      {
        goto LABEL_12;
      }
    }
  }

  return this;
}

void *std::__hash_table<std::__hash_value_type<std::pair<md::TransitLink const*,md::TransitLink const*>,gm::Matrix<float,2,1>>,std::__unordered_map_hasher<std::pair<md::TransitLink const*,md::TransitLink const*>,std::__hash_value_type<std::pair<md::TransitLink const*,md::TransitLink const*>,gm::Matrix<float,2,1>>,md::TransitJunction::LinkPairHash,std::equal_to<std::pair<md::TransitLink const*,md::TransitLink const*>>,true>,std::__unordered_map_equal<std::pair<md::TransitLink const*,md::TransitLink const*>,std::__hash_value_type<std::pair<md::TransitLink const*,md::TransitLink const*>,gm::Matrix<float,2,1>>,std::equal_to<std::pair<md::TransitLink const*,md::TransitLink const*>>,md::TransitJunction::LinkPairHash,true>,std::allocator<std::__hash_value_type<std::pair<md::TransitLink const*,md::TransitLink const*>,gm::Matrix<float,2,1>>>>::__emplace_unique_key_args<std::pair<md::TransitLink const*,md::TransitLink const*>,std::piecewise_construct_t const&,std::tuple<std::pair<md::TransitLink const*,md::TransitLink const*>&&>,std::tuple<>>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 ^ a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = a3 ^ a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != a2 || v8[3] != a3)
  {
    goto LABEL_21;
  }

  return v8;
}

char *std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_0 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkInfo **>>(char *result, char *a2, unint64_t a3, char *a4, uint64_t a5)
{
  if (a3 < 2)
  {
    return result;
  }

  v6 = result;
  if (a3 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *result;
    if ((v7[32] & 1) != 0 || (v8[32] & 1) == 0 && *(*v7 + 88) - *(*v7 + 80) > *(*v8 + 88) - *(*v8 + 80))
    {
      *result = v7;
      *(a2 - 1) = v8;
    }

    return result;
  }

  if (a3 <= 128)
  {
    if (result == a2)
    {
      return result;
    }

    v10 = result + 8;
    if (result + 8 == a2)
    {
      return result;
    }

    v11 = 0;
    v12 = result;
    while (1)
    {
      v13 = v12;
      v12 = v10;
      v14 = *v10;
      v15 = *v13;
      v16 = v14[32];
      if ((v16 & 1) == 0 && ((v15[32] & 1) != 0 || *(*v14 + 88) - *(*v14 + 80) <= *(*v15 + 88) - *(*v15 + 80)))
      {
        goto LABEL_20;
      }

      *v12 = v15;
      if (v13 == result)
      {
LABEL_16:
        v13 = result;
        goto LABEL_17;
      }

      v17 = v11;
      while (1)
      {
        v18 = *&result[v17 - 8];
        if ((v16 & 1) == 0)
        {
          break;
        }

LABEL_15:
        v13 -= 8;
        *&result[v17] = v18;
        v17 -= 8;
        if (!v17)
        {
          goto LABEL_16;
        }
      }

      if ((v18[32] & 1) == 0)
      {
        break;
      }

      v13 = &result[v17];
LABEL_17:
      *v13 = v14;
LABEL_20:
      v10 = v12 + 8;
      v11 += 8;
      if (v12 + 8 == a2)
      {
        return result;
      }
    }

    if (*(*v14 + 88) - *(*v14 + 80) <= *(*v18 + 88) - *(*v18 + 80))
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v20 = a4;
  v21 = a3 >> 1;
  v22 = &result[8 * (a3 >> 1)];
  v23 = a3 >> 1;
  if (a3 <= a5)
  {
    std::__stable_sort_move<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_0 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkInfo **>>(result, v22, v23, a4);
    v24 = &v20[8 * v21];
    result = std::__stable_sort_move<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_0 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkInfo **>>(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v24);
    v25 = &v20[8 * a3];
    v26 = v24;
    while (v26 != v25)
    {
      v27 = *v26;
      if ((*(*v26 + 32) & 1) != 0 || (v28 = *v20, (*(*v20 + 32) & 1) == 0) && *(*v27 + 88) - *(*v27 + 80) > *(*v28 + 88) - *(*v28 + 80))
      {
        *v6 = v27;
        v26 += 8;
      }

      else
      {
        *v6 = v28;
        v20 += 8;
      }

      v6 += 8;
      if (v20 == v24)
      {
        while (v26 != v25)
        {
          v30 = *v26;
          v26 += 8;
          *v6 = v30;
          v6 += 8;
        }

        return result;
      }
    }

    while (v20 != v24)
    {
      v29 = *v20;
      v20 += 8;
      *v6 = v29;
      v6 += 8;
    }
  }

  else
  {
    std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_0 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkInfo **>>(result, v22, v23, a4, a5);
    std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_0 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkInfo **>>(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v20, a5);

    return std::__inplace_merge<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_0 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkInfo **>>(v6, &v6[8 * (a3 >> 1)], a2, a3 >> 1, a3 - (a3 >> 1), v20, a5);
  }

  return result;
}

void **std::vector<md::TransitJunction::generateLinkNormals(void)::LinkInfo,std::allocator<md::TransitJunction::generateLinkNormals(void)::LinkInfo>>::~vector[abi:nn200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 4);
        if (v5)
        {
          *(v3 - 3) = v5;
          operator delete(v5);
        }

        v3 -= 40;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

double std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_1 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkPath *>>(float *a1, float *a2, unint64_t a3, __n128 *a4, uint64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    v7 = a1;
    if (a3 == 2)
    {
      v8 = a2 - 4;
      v9 = *(*(a2 - 2) + 32);
      a6.n128_f32[0] = *(a2 - 2);
      if (v9 == *(*a1 + 32))
      {
        v9 = a6.n128_f32[0] > a1[2];
      }

      if (v9)
      {
        a6 = *a1;
        v40 = *a1;
        v10 = *(a2 - 2);
        *a1 = *v8;
        *(a1 + 2) = v10;
        *v8 = v40;
        *(a2 - 2) = *(&v40 + 2);
      }
    }

    else if (a3 > 128)
    {
      v25 = a4;
      v26 = a3 >> 1;
      v27 = &a1[4 * (a3 >> 1)];
      v28 = a3 >> 1;
      if (a3 <= a5)
      {
        v30.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_1 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkPath *>>(a1, v27, v28, a4, a6);
        v31 = &v25[4 * v26];
        a6.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_1 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkPath *>>(&v7[4 * (a3 >> 1)], a2, a3 - (a3 >> 1), v31, v30);
        v32 = &v25[4 * a3];
        v33 = v31;
        while (v33 != v32)
        {
          v34 = *(v33->n128_u64[0] + 32);
          a6.n128_u32[0] = v33->n128_u32[2];
          if (v34 == *(*v25 + 32))
          {
            v34 = a6.n128_f32[0] > v25[2];
          }

          if (v34)
          {
            v35 = v33->n128_u64[0];
            v7[2] = v33->n128_f32[2];
            *v7 = v35;
            ++v33;
          }

          else
          {
            v36 = *v25;
            v7[2] = v25[2];
            *v7 = v36;
            v25 += 4;
          }

          v7 += 4;
          if (v25 == v31)
          {
            while (v33 != v32)
            {
              v38 = v33->n128_u64[0];
              v7[2] = v33->n128_f32[2];
              *v7 = v38;
              v7 += 4;
              ++v33;
            }

            return a6.n128_f64[0];
          }
        }

        while (v25 != v31)
        {
          v37 = *v25;
          v7[2] = v25[2];
          *v7 = v37;
          v7 += 4;
          v25 += 4;
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_1 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkPath *>>(a1, v27, v28, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_1 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkPath *>>(&v7[4 * (a3 >> 1)], a2, a3 - (a3 >> 1), v25, a5);

        a6.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_1 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkPath *>>(v7, &v7[4 * (a3 >> 1)], a2, a3 >> 1, a3 - (a3 >> 1), v25, a5, v29).n128_u64[0];
      }
    }

    else if (a1 != a2)
    {
      v12 = a1 + 4;
      if (a1 + 4 != a2)
      {
        v13 = 0;
        v14 = a1;
        do
        {
          v15 = *v14;
          a6.n128_f32[0] = v14[6];
          v16 = v14[2];
          v14 = v12;
          v17 = *v12;
          if (*(v17 + 32) == *(v15 + 32))
          {
            v18 = a6.n128_f32[0] > v16;
          }

          else
          {
            v18 = *(v17 + 32);
          }

          if (v18)
          {
            v19 = v13;
            while (1)
            {
              v20 = a1 + v19;
              *(v20 + 2) = *(a1 + v19);
              *(v20 + 6) = *(a1 + v19 + 8);
              if (!v19)
              {
                break;
              }

              v21 = *(*(v20 - 2) + 32);
              v22 = a6.n128_f32[0] > *(v20 - 2);
              if (*(v17 + 32) != v21)
              {
                v22 = *(v17 + 32);
              }

              v19 -= 16;
              if ((v22 & 1) == 0)
              {
                v23 = a1 + v19 + 16;
                goto LABEL_23;
              }
            }

            v23 = a1;
LABEL_23:
            *v23 = v17;
            *(v23 + 8) = a6.n128_u32[0];
          }

          v12 = v14 + 4;
          v13 += 16;
        }

        while (v14 + 4 != a2);
      }
    }
  }

  return a6.n128_f64[0];
}

void *std::__hash_table<std::__hash_value_type<md::TransitLineSegment const*,gm::Matrix<float,2,1>>,std::__unordered_map_hasher<md::TransitLineSegment const*,std::__hash_value_type<md::TransitLineSegment const*,gm::Matrix<float,2,1>>,std::hash<md::TransitLineSegment const*>,std::equal_to<md::TransitLineSegment const*>,true>,std::__unordered_map_equal<md::TransitLineSegment const*,std::__hash_value_type<md::TransitLineSegment const*,gm::Matrix<float,2,1>>,std::equal_to<md::TransitLineSegment const*>,std::hash<md::TransitLineSegment const*>,true>,std::allocator<std::__hash_value_type<md::TransitLineSegment const*,gm::Matrix<float,2,1>>>>::__emplace_unique_key_args<md::TransitLineSegment const*,std::piecewise_construct_t const&,std::tuple<md::TransitLineSegment const*&&>,std::tuple<>>(void *a1, unint64_t a2)
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

double std::__stable_sort_move<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_1 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkPath *>>(float *a1, float *a2, unint64_t a3, __n128 *a4, __n128 a5)
{
  if (a3)
  {
    v5 = a4;
    v8 = a1;
    if (a3 == 2)
    {
      v9 = (a2 - 4);
      v10 = *(*(a2 - 2) + 32);
      if (v10 == *(*a1 + 32))
      {
        v10 = *(a2 - 2) > a1[2];
      }

      if (v10)
      {
        *a4 = *v9;
        a5 = *a1;
      }

      else
      {
        *a4 = *a1;
        a5 = *v9;
      }

      a4[1] = a5;
    }

    else if (a3 == 1)
    {
      a5 = *a1;
      *a4 = *a1;
    }

    else if (a3 > 8)
    {
      v21 = &a1[4 * (a3 >> 1)];
      std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_1 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkPath *>>(a1, v21, a3 >> 1, a4, a3 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_1 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkPath *>>(&v8[4 * (a3 >> 1)], a2, a3 - (a3 >> 1), &v5[a3 >> 1], a3 - (a3 >> 1));
      v22 = &v8[4 * (a3 >> 1)];
      while (v22 != a2)
      {
        v23 = *(*v22 + 32);
        if (v23 == *(*v8 + 32))
        {
          v23 = v22[2] > v8[2];
        }

        if (v23)
        {
          v24 = *v22;
          v22 += 4;
          a5 = v24;
        }

        else
        {
          v25 = *v8;
          v8 += 4;
          a5 = v25;
        }

        *v5++ = a5;
        if (v8 == v21)
        {
          while (v22 != a2)
          {
            v27 = *v22;
            v22 += 4;
            a5.n128_u64[0] = v27.n128_u64[0];
            *v5++ = v27;
          }

          return a5.n128_f64[0];
        }
      }

      while (v8 != v21)
      {
        v26 = *v8;
        v8 += 4;
        a5.n128_u64[0] = v26.n128_u64[0];
        *v5++ = v26;
      }
    }

    else if (a1 != a2)
    {
      a5 = *a1;
      *a4 = *a1;
      v11 = a1 + 4;
      if (a1 + 4 != a2)
      {
        v12 = 0;
        v13 = a4;
        do
        {
          v14 = v11;
          v15 = v13 + 4;
          v16 = *(*v11 + 32);
          if (v16 == *(*v13 + 32))
          {
            v16 = v8[6] > v13[2];
          }

          if (v16)
          {
            a5 = *v13;
            *v15 = *v13;
            v17 = a4;
            if (v13 != a4)
            {
              v18 = v12;
              while (1)
              {
                v17 = (a4 + v18);
                a5.n128_f32[0] = v8[6];
                if (!(*(*v14 + 32) == *(*(a4[-1].n128_u64 + v18) + 32) ? a5.n128_f32[0] > *(&a4->n128_f32[-2] + v18) : *(*v14 + 32)))
                {
                  break;
                }

                v17->n128_u64[0] = *(a4[-1].n128_u64 + v18);
                v17->n128_u32[2] = *(&a4->n128_u32[-2] + v18);
                v18 -= 16;
                if (!v18)
                {
                  v17 = a4;
                  break;
                }
              }
            }

            v20 = *v14;
            v17->n128_f32[2] = v14[2];
            v17->n128_u64[0] = v20;
          }

          else
          {
            a5 = *v14;
            *v15 = *v14;
          }

          v11 = v14 + 4;
          v12 += 16;
          v13 = v15;
          v8 = v14;
        }

        while (v14 + 4 != a2);
      }
    }
  }

  return a5.n128_f64[0];
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_1 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkPath *>>(float *a1, float *a2, float *a3, uint64_t a4, uint64_t a5, float *a6, uint64_t a7, __n128 result)
{
  if (a5)
  {
    v9 = a5;
    while (v9 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      result.n128_f32[0] = a2[2];
      while (!(*(*a2 + 32) == *(*a1 + 32) ? result.n128_f32[0] > a1[2] : *(*a2 + 32)))
      {
        a1 += 4;
        if (!--a4)
        {
          return result;
        }
      }

      if (a4 >= v9)
      {
        if (a4 == 1)
        {
          result = *a1;
          v75 = *a1;
          v67 = *a2;
          a1[2] = a2[2];
          *a1 = v67;
          *a2 = v75;
          a2[2] = *(&v75 + 2);
          return result;
        }

        v21 = a4 / 2;
        v15 = &a1[4 * (a4 / 2)];
        v14 = a2;
        if (a2 != a3)
        {
          v22 = (a3 - a2) >> 4;
          v14 = a2;
          do
          {
            v23 = v22 >> 1;
            v24 = &v14[4 * (v22 >> 1)];
            v25 = *(*v24 + 32);
            if (v25 == *(*v15 + 32))
            {
              LOBYTE(v25) = v24[2] > v15[2];
            }

            v26 = v24 + 4;
            v22 += ~(v22 >> 1);
            if (v25)
            {
              v14 = v26;
            }

            else
            {
              v22 = v23;
            }
          }

          while (v22);
        }

        v13 = (v14 - a2) >> 4;
      }

      else
      {
        v13 = v9 / 2;
        v14 = &a2[4 * (v9 / 2)];
        v15 = a2;
        if (a2 != a1)
        {
          v16 = (a2 - a1) >> 4;
          v15 = a1;
          do
          {
            v17 = v16 >> 1;
            v18 = &v15[4 * (v16 >> 1)];
            if (*(*v14 + 32) == *(*v18 + 32))
            {
              v19 = v14[2] > v18[2];
            }

            else
            {
              v19 = *(*v14 + 32);
            }

            v20 = v18 + 4;
            v16 += ~(v16 >> 1);
            if (v19)
            {
              v16 = v17;
            }

            else
            {
              v15 = v20;
            }
          }

          while (v16);
        }

        v21 = (v15 - a1) >> 4;
      }

      v27 = v14;
      v28 = a2 - v15;
      if (a2 != v15)
      {
        v27 = v15;
        if (a2 != v14)
        {
          if (v15 + 4 == a2)
          {
            v72 = *v15;
            v29 = v14 - a2;
            v68 = a6;
            v70 = a3;
            v30 = v21;
            memmove(v15, a2, v14 - a2 - 4);
            v21 = v30;
            a6 = v68;
            a3 = v70;
            v27 = (v15 + v29);
            *v27 = v72;
            v27[2] = *(&v72 + 2);
          }

          else if (a2 + 4 == v14)
          {
            v27 = v15 + 4;
            v73 = *(v14 - 1);
            if (v14 - 4 != v15)
            {
              v69 = a6;
              v71 = a3;
              v31 = v21;
              memmove(v15 + 4, v15, (v14 - 4) - v15 - 4);
              v21 = v31;
              a6 = v69;
              a3 = v71;
            }

            v15[2] = *(&v73 + 2);
            *v15 = v73;
          }

          else
          {
            v32 = v28 >> 4;
            v33 = v14 - a2;
            if (v28 >> 4 == (v14 - a2) >> 4)
            {
              v34 = v15 + 4;
              v35 = a2 + 4;
              do
              {
                v74 = *(v34 - 1);
                v36 = *(v35 - 2);
                *(v34 - 2) = *(v35 - 2);
                *(v34 - 2) = v36;
                *(v35 - 2) = v74;
                *(v35 - 2) = *(&v74 + 2);
                if (v34 == a2)
                {
                  break;
                }

                v34 += 4;
                v55 = v35 == v14;
                v35 += 4;
              }

              while (!v55);
              v27 = a2;
            }

            else
            {
              v37 = v33 >> 4;
              v38 = v28 >> 4;
              do
              {
                v39 = v38;
                v38 = v37;
                v37 = v39 % v37;
              }

              while (v37);
              v40 = &v15[4 * v38];
              do
              {
                v41 = *(v40 - 1);
                v40 -= 4;
                v42 = (v40 + v28);
                v43 = v40;
                do
                {
                  v44 = v42;
                  v45 = *v42;
                  v43[2] = v44[2];
                  *v43 = v45;
                  v42 = &v44[4 * v32];
                  if (v32 >= (v14 - v44) >> 4)
                  {
                    v42 = &v15[4 * (v32 - ((v14 - v44) >> 4))];
                  }

                  v43 = v44;
                }

                while (v42 != v40);
                v44[2] = *(&v41 + 2);
                *v44 = v41;
              }

              while (v40 != v15);
              v27 = (v15 + v33);
            }
          }
        }
      }

      a4 -= v21;
      v9 -= v13;
      if (v21 + v13 >= a4 + v9)
      {
        v49 = v14;
        v50 = v21;
        v48 = a6;
        std::__inplace_merge<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_1 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkPath *>>(v27, v49, a3, a4, v9);
        a2 = v15;
        v9 = v13;
        a4 = v50;
        a3 = v27;
      }

      else
      {
        v46 = a1;
        v47 = a3;
        v48 = a6;
        std::__inplace_merge<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_1 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkPath *>>(v46, v15, v27, v21, v13);
        a3 = v47;
        a1 = v27;
        a2 = v14;
      }

      a6 = v48;
      if (!v9)
      {
        return result;
      }
    }

    if (a4 <= v9)
    {
      if (a2 != a1)
      {
        v61 = a6;
        v62 = a1;
        do
        {
          v63 = *v62;
          v62 += 4;
          result.n128_u32[1] = DWORD1(v63);
          *v61 = v63;
          v61 += 4;
        }

        while (v62 != a2);
        while (a2 != a3)
        {
          v64 = *(*a2 + 32);
          result.n128_f32[0] = a2[2];
          if (v64 == *(*a6 + 32))
          {
            v64 = result.n128_f32[0] > a6[2];
          }

          if (v64)
          {
            v65 = *a2;
            a1[2] = a2[2];
            *a1 = v65;
            a2 += 4;
          }

          else
          {
            v66 = *a6;
            a1[2] = a6[2];
            *a1 = v66;
            a6 += 4;
          }

          a1 += 4;
          if (a6 == v61)
          {
            return result;
          }
        }

        memmove(a1, a6, v61 - a6 - 4);
      }
    }

    else if (a2 != a3)
    {
      v51 = a6;
      v52 = a2;
      do
      {
        v53 = *v52;
        v52 += 4;
        result.n128_u64[0] = v53;
        *v51 = v53;
        v51 += 4;
      }

      while (v52 != a3);
      while (a2 != a1)
      {
        v54 = *(*(v51 - 2) + 32);
        result.n128_f32[0] = *(v51 - 2);
        if (v54 == *(*(a2 - 2) + 32))
        {
          LOBYTE(v54) = result.n128_f32[0] > *(a2 - 2);
        }

        v55 = (v54 & 1) == 0;
        if (v54)
        {
          v56 = a2 - 4;
        }

        else
        {
          v56 = v51 - 4;
        }

        v57 = *(v56 + 2);
        *(a3 - 2) = *v56;
        a3 -= 4;
        if (v55)
        {
          v51 -= 4;
        }

        else
        {
          a2 -= 4;
        }

        *(a3 + 2) = v57;
        if (v51 == a6)
        {
          return result;
        }
      }

      if (v51 != a6)
      {
        v58 = 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v59 = *(v51 - 2);
          v51 -= 4;
          v60 = &a3[v58];
          v60[2] = v51[2];
          *v60 = v59;
          v58 -= 4;
        }

        while (v51 != a6);
      }
    }
  }

  return result;
}